; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    db $30, $c7                                   ; $4000: $30 $c7
    jp z, Jump_030_7d88                           ; $4002: $ca $88 $7d

    dec a                                         ; $4005: $3d
    jp nc, Jump_000_308e                          ; $4006: $d2 $8e $30

    ld c, a                                       ; $4009: $4f
    sbc c                                         ; $400a: $99
    rst $10                                       ; $400b: $d7
    or h                                          ; $400c: $b4
    dec e                                         ; $400d: $1d
    db $e4                                        ; $400e: $e4
    db $f4                                        ; $400f: $f4
    cp $8e                                        ; $4010: $fe $8e
    ld [hl], c                                    ; $4012: $71
    ld h, e                                       ; $4013: $63
    inc d                                         ; $4014: $14
    dec l                                         ; $4015: $2d
    ld b, a                                       ; $4016: $47
    cp h                                          ; $4017: $bc
    di                                            ; $4018: $f3
    ld a, [hl+]                                   ; $4019: $2a
    ei                                            ; $401a: $fb
    dec sp                                        ; $401b: $3b
    jp $c591                                      ; $401c: $c3 $91 $c5


    and [hl]                                      ; $401f: $a6
    ld d, $f5                                     ; $4020: $16 $f5
    rst $18                                       ; $4022: $df
    and l                                         ; $4023: $a5
    ld d, d                                       ; $4024: $52
    di                                            ; $4025: $f3
    ld [hl], a                                    ; $4026: $77
    add [hl]                                      ; $4027: $86
    pop af                                        ; $4028: $f1
    db $eb                                        ; $4029: $eb
    ld e, l                                       ; $402a: $5d
    rst $20                                       ; $402b: $e7
    or [hl]                                       ; $402c: $b6
    rst $00                                       ; $402d: $c7
    sbc h                                         ; $402e: $9c
    and a                                         ; $402f: $a7
    rst $38                                       ; $4030: $ff
    ld e, b                                       ; $4031: $58
    xor e                                         ; $4032: $ab
    rst $38                                       ; $4033: $ff
    cp [hl]                                       ; $4034: $be
    and d                                         ; $4035: $a2
    dec b                                         ; $4036: $05
    ld e, c                                       ; $4037: $59
    dec [hl]                                      ; $4038: $35
    adc l                                         ; $4039: $8d
    and e                                         ; $403a: $a3
    cp $ce                                        ; $403b: $fe $ce
    ld a, d                                       ; $403d: $7a
    ret nz                                        ; $403e: $c0

    adc e                                         ; $403f: $8b
    ld e, d                                       ; $4040: $5a
    ld b, a                                       ; $4041: $47
    adc d                                         ; $4042: $8a
    add hl, hl                                    ; $4043: $29
    ld hl, sp-$69                                 ; $4044: $f8 $97
    push af                                       ; $4046: $f5
    db $fc                                        ; $4047: $fc
    dec hl                                        ; $4048: $2b
    ld d, l                                       ; $4049: $55
    db $ec                                        ; $404a: $ec
    ld e, a                                       ; $404b: $5f
    ld l, h                                       ; $404c: $6c
    or l                                          ; $404d: $b5
    ld b, a                                       ; $404e: $47
    jp nz, $994f                                  ; $404f: $c2 $4f $99

    rst $28                                       ; $4052: $ef
    inc h                                         ; $4053: $24
    ld d, [hl]                                    ; $4054: $56
    ld de, $9fb1                                  ; $4055: $11 $b1 $9f
    scf                                           ; $4058: $37
    ld l, d                                       ; $4059: $6a
    ld bc, $dc27                                  ; $405a: $01 $27 $dc
    ld e, [hl]                                    ; $405d: $5e
    di                                            ; $405e: $f3
    ld a, [bc]                                    ; $405f: $0a
    rst $00                                       ; $4060: $c7
    xor a                                         ; $4061: $af

jr_030_4062:
    sbc l                                         ; $4062: $9d
    ld e, d                                       ; $4063: $5a
    adc c                                         ; $4064: $89
    ret c                                         ; $4065: $d8

    rst $20                                       ; $4066: $e7
    push de                                       ; $4067: $d5
    ld e, h                                       ; $4068: $5c
    rst $20                                       ; $4069: $e7
    or [hl]                                       ; $406a: $b6
    and a                                         ; $406b: $a7
    inc a                                         ; $406c: $3c
    xor $c8                                       ; $406d: $ee $c8
    ld [bc], a                                    ; $406f: $02
    xor l                                         ; $4070: $ad
    ld h, e                                       ; $4071: $63
    add c                                         ; $4072: $81
    xor d                                         ; $4073: $aa
    and c                                         ; $4074: $a1
    rst $30                                       ; $4075: $f7
    ld e, e                                       ; $4076: $5b
    and a                                         ; $4077: $a7
    cp h                                          ; $4078: $bc
    ld h, d                                       ; $4079: $62
    sbc a                                         ; $407a: $9f
    xor a                                         ; $407b: $af
    db $d3                                        ; $407c: $d3
    ei                                            ; $407d: $fb
    ld e, a                                       ; $407e: $5f
    ld b, $2d                                     ; $407f: $06 $2d
    rst $00                                       ; $4081: $c7
    jp z, $b79b                                   ; $4082: $ca $9b $b7

    adc [hl]                                      ; $4085: $8e
    rrca                                          ; $4086: $0f
    call c, Call_000_05b1                         ; $4087: $dc $b1 $05
    add a                                         ; $408a: $87
    ld a, a                                       ; $408b: $7f
    xor $2f                                       ; $408c: $ee $2f
    ld d, [hl]                                    ; $408e: $56
    xor $c7                                       ; $408f: $ee $c7
    ld a, l                                       ; $4091: $7d
    ld b, $ff                                     ; $4092: $06 $ff
    add l                                         ; $4094: $85
    xor c                                         ; $4095: $a9
    and d                                         ; $4096: $a2
    ld d, $a7                                     ; $4097: $16 $a7
    dec d                                         ; $4099: $15
    rst $00                                       ; $409a: $c7
    ld l, e                                       ; $409b: $6b
    ld b, l                                       ; $409c: $45
    dec sp                                        ; $409d: $3b
    ld a, [$8295]                                 ; $409e: $fa $95 $82
    sbc a                                         ; $40a1: $9f
    dec b                                         ; $40a2: $05
    ld l, d                                       ; $40a3: $6a
    ld bc, $3c27                                  ; $40a4: $01 $27 $3c
    rst $20                                       ; $40a7: $e7
    dec sp                                        ; $40a8: $3b
    sub l                                         ; $40a9: $95
    ld e, $e7                                     ; $40aa: $1e $e7
    and $7c                                       ; $40ac: $e6 $7c
    ld h, a                                       ; $40ae: $67
    jr nz, jr_030_4062                            ; $40af: $20 $b1

    push hl                                       ; $40b1: $e5
    pop de                                        ; $40b2: $d1
    ld [bc], a                                    ; $40b3: $02
    ld e, c                                       ; $40b4: $59
    add sp, -$29                                  ; $40b5: $e8 $d7
    xor l                                         ; $40b7: $ad
    dec b                                         ; $40b8: $05
    dec e                                         ; $40b9: $1d
    ret nc                                        ; $40ba: $d0

    dec l                                         ; $40bb: $2d
    and l                                         ; $40bc: $a5
    ld d, d                                       ; $40bd: $52
    ld l, h                                       ; $40be: $6c
    dec e                                         ; $40bf: $1d
    dec bc                                        ; $40c0: $0b
    db $fc                                        ; $40c1: $fc
    ld [hl], e                                    ; $40c2: $73
    ld b, l                                       ; $40c3: $45
    call nc, $4702                                ; $40c4: $d4 $02 $47
    ret z                                         ; $40c7: $c8

    add hl, bc                                    ; $40c8: $09
    or l                                          ; $40c9: $b5
    inc l                                         ; $40ca: $2c
    ld a, a                                       ; $40cb: $7f
    rla                                           ; $40cc: $17
    dec de                                        ; $40cd: $1b
    call nc, $9d02                                ; $40ce: $d4 $02 $9d
    ret c                                         ; $40d1: $d8

    add $6f                                       ; $40d2: $c6 $6f
    ld e, d                                       ; $40d4: $5a
    daa                                           ; $40d5: $27
    ld [hl], $f8                                  ; $40d6: $36 $f8
    cp c                                          ; $40d8: $b9
    ld a, [hl+]                                   ; $40d9: $2a
    and l                                         ; $40da: $a5
    dec b                                         ; $40db: $05

jr_030_40dc:
    rst $00                                       ; $40dc: $c7
    db $fd                                        ; $40dd: $fd
    db $eb                                        ; $40de: $eb
    db $fd                                        ; $40df: $fd
    rrca                                          ; $40e0: $0f
    dec l                                         ; $40e1: $2d
    ld l, e                                       ; $40e2: $6b
    ld bc, $7547                                  ; $40e3: $01 $47 $75
    cp [hl]                                       ; $40e6: $be
    ld e, l                                       ; $40e7: $5d
    ld b, b                                       ; $40e8: $40
    ld a, [c]                                     ; $40e9: $f2
    add hl, de                                    ; $40ea: $19
    sub c                                         ; $40eb: $91
    ld h, l                                       ; $40ec: $65
    ld b, b                                       ; $40ed: $40
    dec l                                         ; $40ee: $2d

jr_030_40ef:
    db $db                                        ; $40ef: $db
    add hl, sp                                    ; $40f0: $39
    add a                                         ; $40f1: $87
    rst $28                                       ; $40f2: $ef
    ld b, [hl]                                    ; $40f3: $46
    ret nz                                        ; $40f4: $c0

    pop af                                        ; $40f5: $f1
    or [hl]                                       ; $40f6: $b6

jr_030_40f7:
    ld [hl], d                                    ; $40f7: $72
    rst $00                                       ; $40f8: $c7
    sbc a                                         ; $40f9: $9f
    ld l, $a0                                     ; $40fa: $2e $a0
    ld a, a                                       ; $40fc: $7f
    ld l, c                                       ; $40fd: $69
    ld e, h                                       ; $40fe: $5c
    or c                                          ; $40ff: $b1
    add [hl]                                      ; $4100: $86
    ld l, l                                       ; $4101: $6d
    and c                                         ; $4102: $a1
    jr jr_030_40dc                                ; $4103: $18 $d7

    adc d                                         ; $4105: $8a
    xor l                                         ; $4106: $ad
    ret nz                                        ; $4107: $c0

    rst $10                                       ; $4108: $d7
    ld [bc], a                                    ; $4109: $02
    ld a, h                                       ; $410a: $7c
    push bc                                       ; $410b: $c5
    sub [hl]                                      ; $410c: $96
    or [hl]                                       ; $410d: $b6
    sub h                                         ; $410e: $94
    db $e3                                        ; $410f: $e3
    ld h, l                                       ; $4110: $65
    add h                                         ; $4111: $84
    rst $28                                       ; $4112: $ef
    adc a                                         ; $4113: $8f
    dec hl                                        ; $4114: $2b
    sub $3c                                       ; $4115: $d6 $3c
    jp nz, Jump_000_23f7                          ; $4117: $c2 $f7 $23

    ld l, a                                       ; $411a: $6f
    ld bc, $39db                                  ; $411b: $01 $db $39
    daa                                           ; $411e: $27
    ld l, b                                       ; $411f: $68
    ld c, l                                       ; $4120: $4d
    add c                                         ; $4121: $81
    jr jr_030_40ef                                ; $4122: $18 $cb

    db $ed                                        ; $4124: $ed
    di                                            ; $4125: $f3
    ld [hl], c                                    ; $4126: $71
    push bc                                       ; $4127: $c5
    xor h                                         ; $4128: $ac
    ld e, h                                       ; $4129: $5c
    ld l, h                                       ; $412a: $6c
    xor h                                         ; $412b: $ac
    jr nc, @+$4a                                  ; $412c: $30 $48

    ld sp, $eb0e                                  ; $412e: $31 $0e $eb
    ldh a, [rOCPS]                                ; $4131: $f0 $6a
    db $f4                                        ; $4133: $f4
    ld [hl], a                                    ; $4134: $77
    jr c, jr_030_4182                             ; $4135: $38 $4b

    ld a, c                                       ; $4137: $79
    dec bc                                        ; $4138: $0b
    db $db                                        ; $4139: $db
    add hl, sp                                    ; $413a: $39
    add a                                         ; $413b: $87
    cpl                                           ; $413c: $2f
    ld l, l                                       ; $413d: $6d
    ld c, b                                       ; $413e: $48
    dec bc                                        ; $413f: $0b
    inc bc                                        ; $4140: $03
    sub d                                         ; $4141: $92
    xor a                                         ; $4142: $af
    ld l, b                                       ; $4143: $68
    ld l, h                                       ; $4144: $6c
    xor e                                         ; $4145: $ab
    ld h, h                                       ; $4146: $64
    jr nc, jr_030_40f7                            ; $4147: $30 $ae

    sbc l                                         ; $4149: $9d
    ld h, b                                       ; $414a: $60
    xor h                                         ; $414b: $ac
    rlca                                          ; $414c: $07
    ld b, h                                       ; $414d: $44
    sbc d                                         ; $414e: $9a
    cp $ae                                        ; $414f: $fe $ae
    rst $30                                       ; $4151: $f7
    db $d3                                        ; $4152: $d3
    cp d                                          ; $4153: $ba
    ld [$ffdf], sp                                ; $4154: $08 $df $ff
    or $69                                        ; $4157: $f6 $69
    ldh a, [$c7]                                  ; $4159: $f0 $c7
    ld [$6492], a                                 ; $415b: $ea $92 $64
    jr nc, jr_030_41de                            ; $415e: $30 $7e

    or a                                          ; $4160: $b7
    rst $38                                       ; $4161: $ff
    sub c                                         ; $4162: $91
    sub c                                         ; $4163: $91
    add a                                         ; $4164: $87
    and c                                         ; $4165: $a1
    dec hl                                        ; $4166: $2b
    ld l, a                                       ; $4167: $6f
    ld bc, $39db                                  ; $4168: $01 $db $39
    add a                                         ; $416b: $87
    adc a                                         ; $416c: $8f
    rst $18                                       ; $416d: $df
    xor [hl]                                      ; $416e: $ae
    rlca                                          ; $416f: $07
    adc h                                         ; $4170: $8c
    sbc h                                         ; $4171: $9c
    ld d, [hl]                                    ; $4172: $56
    xor $10                                       ; $4173: $ee $10
    add $d2                                       ; $4175: $c6 $d2
    cp b                                          ; $4177: $b8
    sub [hl]                                      ; $4178: $96
    ld [hl], d                                    ; $4179: $72
    ei                                            ; $417a: $fb
    rla                                           ; $417b: $17
    dec de                                        ; $417c: $1b
    db $d3                                        ; $417d: $d3
    push hl                                       ; $417e: $e5
    cp c                                          ; $417f: $b9
    ld h, d                                       ; $4180: $62
    sub [hl]                                      ; $4181: $96

jr_030_4182:
    ld bc, $cc23                                  ; $4182: $01 $23 $cc
    add b                                         ; $4185: $80
    ld h, d                                       ; $4186: $62
    ld a, [$ca6b]                                 ; $4187: $fa $6b $ca
    ei                                            ; $418a: $fb
    inc l                                         ; $418b: $2c
    reti                                          ; $418c: $d9


    and a                                         ; $418d: $a7
    add l                                         ; $418e: $85
    adc l                                         ; $418f: $8d
    cp d                                          ; $4190: $ba
    ld h, $8d                                     ; $4191: $26 $8d
    db $db                                        ; $4193: $db
    adc a                                         ; $4194: $8f
    pop bc                                        ; $4195: $c1
    ld e, a                                       ; $4196: $5f
    ret z                                         ; $4197: $c8

    ld h, b                                       ; $4198: $60
    db $fc                                        ; $4199: $fc
    ld l, $83                                     ; $419a: $2e $83
    cp h                                          ; $419c: $bc
    dec b                                         ; $419d: $05
    db $db                                        ; $419e: $db
    add hl, sp                                    ; $419f: $39
    rst $00                                       ; $41a0: $c7
    ld a, l                                       ; $41a1: $7d
    ld b, [hl]                                    ; $41a2: $46
    sbc a                                         ; $41a3: $9f
    inc b                                         ; $41a4: $04
    ld a, $0e                                     ; $41a5: $3e $0e
    cp e                                          ; $41a7: $bb
    ld l, [hl]                                    ; $41a8: $6e
    and l                                         ; $41a9: $a5
    ld l, [hl]                                    ; $41aa: $6e
    jp z, $8bb5                                   ; $41ab: $ca $b5 $8b

    ld l, l                                       ; $41ae: $6d
    ret nz                                        ; $41af: $c0

    db $fd                                        ; $41b0: $fd
    db $fd                                        ; $41b1: $fd
    push de                                       ; $41b2: $d5
    add hl, de                                    ; $41b3: $19
    dec a                                         ; $41b4: $3d
    ret nz                                        ; $41b5: $c0

    ld d, d                                       ; $41b6: $52
    adc h                                         ; $41b7: $8c
    and l                                         ; $41b8: $a5
    add hl, de                                    ; $41b9: $19
    ret nc                                        ; $41ba: $d0

    xor e                                         ; $41bb: $ab
    adc h                                         ; $41bc: $8c
    jr nc, jr_030_41c2                            ; $41bd: $30 $03

    jp z, $db5b                                   ; $41bf: $ca $5b $db

jr_030_41c2:
    add hl, sp                                    ; $41c2: $39
    rst $00                                       ; $41c3: $c7
    ld a, l                                       ; $41c4: $7d
    ld b, [hl]                                    ; $41c5: $46
    sbc a                                         ; $41c6: $9f
    inc b                                         ; $41c7: $04
    ld a, $ae                                     ; $41c8: $3e $ae
    dec d                                         ; $41ca: $15
    ld e, e                                       ; $41cb: $5b
    add e                                         ; $41cc: $83
    sub l                                         ; $41cd: $95
    ld a, $e1                                     ; $41ce: $3e $e1
    rst $10                                       ; $41d0: $d7
    ld [c], a                                     ; $41d1: $e2
    ld hl, $dbeb                                  ; $41d2: $21 $eb $db
    and a                                         ; $41d5: $a7
    dec d                                         ; $41d6: $15
    dec de                                        ; $41d7: $1b
    res 6, c                                      ; $41d8: $cb $b1
    ld l, c                                       ; $41da: $69
    sub h                                         ; $41db: $94
    or a                                          ; $41dc: $b7
    db $db                                        ; $41dd: $db

jr_030_41de:
    add hl, sp                                    ; $41de: $39
    ld e, c                                       ; $41df: $59
    or a                                          ; $41e0: $b7
    ld d, d                                       ; $41e1: $52
    scf                                           ; $41e2: $37
    push hl                                       ; $41e3: $e5
    ld a, [de]                                    ; $41e4: $1a
    ld a, [hl]                                    ; $41e5: $7e
    ld b, [hl]                                    ; $41e6: $46
    sbc a                                         ; $41e7: $9f
    inc b                                         ; $41e8: $04
    ld a, $ae                                     ; $41e9: $3e $ae
    dec d                                         ; $41eb: $15
    ld e, e                                       ; $41ec: $5b
    di                                            ; $41ed: $f3
    xor d                                         ; $41ee: $aa
    jp z, $d6b8                                   ; $41ef: $ca $b8 $d6

    cp h                                          ; $41f2: $bc
    xor d                                         ; $41f3: $aa
    ld [hl-], a                                   ; $41f4: $32
    ld l, [hl]                                    ; $41f5: $6e
    sbc a                                         ; $41f6: $9f
    or h                                          ; $41f7: $b4
    ld h, e                                       ; $41f8: $63
    db $fc                                        ; $41f9: $fc
    add $7a                                       ; $41fa: $c6 $7a
    add sp, -$36                                  ; $41fc: $e8 $ca
    ld e, e                                       ; $41fe: $5b
    db $db                                        ; $41ff: $db
    add hl, sp                                    ; $4200: $39
    add a                                         ; $4201: $87
    rst $28                                       ; $4202: $ef
    ld a, [c]                                     ; $4203: $f2
    db $db                                        ; $4204: $db
    ld l, l                                       ; $4205: $6d
    ld e, h                                       ; $4206: $5c
    ei                                            ; $4207: $fb
    xor a                                         ; $4208: $af
    ld c, d                                       ; $4209: $4a
    cp c                                          ; $420a: $b9
    and b                                         ; $420b: $a0
    di                                            ; $420c: $f3
    ld a, [de]                                    ; $420d: $1a
    ld [hl], $16                                  ; $420e: $36 $16
    ld [hl], d                                    ; $4210: $72
    push bc                                       ; $4211: $c5
    ld hl, sp-$23                                 ; $4212: $f8 $dd
    xor d                                         ; $4214: $aa
    rlca                                          ; $4215: $07
    sbc [hl]                                      ; $4216: $9e
    or a                                          ; $4217: $b7
    db $db                                        ; $4218: $db
    add hl, sp                                    ; $4219: $39
    daa                                           ; $421a: $27
    ret c                                         ; $421b: $d8

    ld [c], a                                     ; $421c: $e2
    ld sp, hl                                     ; $421d: $f9
    add l                                         ; $421e: $85
    ld [hl], l                                    ; $421f: $75
    ld e, l                                       ; $4220: $5d
    or e                                          ; $4221: $b3
    ld a, [de]                                    ; $4222: $1a
    ei                                            ; $4223: $fb
    inc [hl]                                      ; $4224: $34
    db $fc                                        ; $4225: $fc
    adc h                                         ; $4226: $8c
    ld a, $dd                                     ; $4227: $3e $dd
    ld d, [hl]                                    ; $4229: $56
    ld l, h                                       ; $422a: $6c
    call $ee03                                    ; $422b: $cd $03 $ee
    ld a, [de]                                    ; $422e: $1a
    rst $10                                       ; $422f: $d7
    ld l, $b6                                     ; $4230: $2e $b6
    ld a, [hl+]                                   ; $4232: $2a
    db $fc                                        ; $4233: $fc
    ld [hl+], a                                   ; $4234: $22
    ld d, d                                       ; $4235: $52
    sbc $02                                       ; $4236: $de $02
    db $db                                        ; $4238: $db
    add hl, sp                                    ; $4239: $39
    add a                                         ; $423a: $87
    adc a                                         ; $423b: $8f
    rst $18                                       ; $423c: $df
    xor [hl]                                      ; $423d: $ae
    rlca                                          ; $423e: $07
    adc h                                         ; $423f: $8c
    sbc h                                         ; $4240: $9c
    ld d, [hl]                                    ; $4241: $56
    inc d                                         ; $4242: $14
    ld l, e                                       ; $4243: $6b
    db $fc                                        ; $4244: $fc
    dec [hl]                                      ; $4245: $35
    adc [hl]                                      ; $4246: $8e
    scf                                           ; $4247: $37
    cp d                                          ; $4248: $ba
    push bc                                       ; $4249: $c5
    ld l, $70                                     ; $424a: $2e $70
    inc hl                                        ; $424c: $23
    ld h, h                                       ; $424d: $64
    inc d                                         ; $424e: $14
    cp e                                          ; $424f: $bb
    sbc $27                                       ; $4250: $de $27
    rst $10                                       ; $4252: $d7
    adc d                                         ; $4253: $8a
    ld h, d                                       ; $4254: $62
    dec c                                         ; $4255: $0d
    inc b                                         ; $4256: $04
    ld b, c                                       ; $4257: $41
    ld d, c                                       ; $4258: $51
    adc h                                         ; $4259: $8c
    ld l, e                                       ; $425a: $6b
    ld b, a                                       ; $425b: $47
    ld b, b                                       ; $425c: $40
    ld [$a0a5], a                                 ; $425d: $ea $a5 $a0
    and h                                         ; $4260: $a4
    ld [hl+], a                                   ; $4261: $22
    ld l, a                                       ; $4262: $6f
    ld bc, $39db                                  ; $4263: $01 $db $39
    ld e, c                                       ; $4266: $59
    or a                                          ; $4267: $b7
    ld d, d                                       ; $4268: $52
    scf                                           ; $4269: $37
    push hl                                       ; $426a: $e5
    ld e, d                                       ; $426b: $5a
    di                                            ; $426c: $f3
    ret nz                                        ; $426d: $c0

    ld h, a                                       ; $426e: $67
    call z, $1f43                                 ; $426f: $cc $43 $1f
    pop bc                                        ; $4272: $c1
    ld l, l                                       ; $4273: $6d
    ld b, l                                       ; $4274: $45
    dec bc                                        ; $4275: $0b
    ld a, c                                       ; $4276: $79
    and e                                         ; $4277: $a3
    ld c, a                                       ; $4278: $4f
    db $e3                                        ; $4279: $e3
    ld e, d                                       ; $427a: $5a
    dec h                                         ; $427b: $25
    rra                                           ; $427c: $1f
    rst $10                                       ; $427d: $d7
    or d                                          ; $427e: $b2
    db $fc                                        ; $427f: $fc
    ld d, l                                       ; $4280: $55
    ld a, [c]                                     ; $4281: $f2
    cp h                                          ; $4282: $bc
    dec b                                         ; $4283: $05
    db $db                                        ; $4284: $db
    add hl, sp                                    ; $4285: $39
    add a                                         ; $4286: $87
    cpl                                           ; $4287: $2f
    db $fd                                        ; $4288: $fd
    ld a, $bf                                     ; $4289: $3e $bf
    xor l                                         ; $428b: $ad
    ld l, b                                       ; $428c: $68
    ld e, c                                       ; $428d: $59
    xor a                                         ; $428e: $af
    ld b, d                                       ; $428f: $42
    cp d                                          ; $4290: $ba
    adc l                                         ; $4291: $8d
    rst $18                                       ; $4292: $df
    adc a                                         ; $4293: $8f
    ld [hl+], a                                   ; $4294: $22
    ld [hl], $66                                  ; $4295: $36 $66
    ld b, b                                       ; $4297: $40
    db $e3                                        ; $4298: $e3
    adc d                                         ; $4299: $8a
    dec e                                         ; $429a: $1d
    push af                                       ; $429b: $f5
    cpl                                           ; $429c: $2f
    or [hl]                                       ; $429d: $b6
    ld a, l                                       ; $429e: $7d
    ld d, d                                       ; $429f: $52
    and l                                         ; $42a0: $a5
    ld c, a                                       ; $42a1: $4f
    sub c                                         ; $42a2: $91
    or a                                          ; $42a3: $b7
    db $db                                        ; $42a4: $db
    add hl, sp                                    ; $42a5: $39
    add a                                         ; $42a6: $87
    rrca                                          ; $42a7: $0f
    ccf                                           ; $42a8: $3f
    and e                                         ; $42a9: $a3
    ld c, a                                       ; $42aa: $4f
    or a                                          ; $42ab: $b7
    ld [hl], c                                    ; $42ac: $71
    push bc                                       ; $42ad: $c5
    db $f4                                        ; $42ae: $f4
    cpl                                           ; $42af: $2f
    or [hl]                                       ; $42b0: $b6
    ld a, l                                       ; $42b1: $7d
    ld d, d                                       ; $42b2: $52
    and l                                         ; $42b3: $a5
    ld c, a                                       ; $42b4: $4f
    ld sp, $3f7e                                  ; $42b5: $31 $7e $3f
    cp h                                          ; $42b8: $bc
    sub h                                         ; $42b9: $94
    dec de                                        ; $42ba: $1b
    rl l                                          ; $42bb: $cb $15
    and c                                         ; $42bd: $a1
    cp h                                          ; $42be: $bc
    dec b                                         ; $42bf: $05
    db $db                                        ; $42c0: $db
    add hl, sp                                    ; $42c1: $39
    add a                                         ; $42c2: $87
    inc bc                                        ; $42c3: $03
    add hl, bc                                    ; $42c4: $09
    ld a, h                                       ; $42c5: $7c
    ld e, h                                       ; $42c6: $5c
    cp e                                          ; $42c7: $bb
    ld h, a                                       ; $42c8: $67
    cp l                                          ; $42c9: $bd
    xor d                                         ; $42ca: $aa
    jp nc, $e9a7                                  ; $42cb: $d2 $a7 $e9

    rst $00                                       ; $42ce: $c7
    di                                            ; $42cf: $f3
    ld c, e                                       ; $42d0: $4b
    ld b, l                                       ; $42d1: $45
    ld a, $e6                                     ; $42d2: $3e $e6
    sub c                                         ; $42d4: $91
    ld l, e                                       ; $42d5: $6b
    ld l, c                                       ; $42d6: $69
    ld a, a                                       ; $42d7: $7f
    sub l                                         ; $42d8: $95
    or c                                          ; $42d9: $b1
    ld [hl], h                                    ; $42da: $74
    rst $08                                       ; $42db: $cf
    ld e, e                                       ; $42dc: $5b
    db $db                                        ; $42dd: $db
    add hl, sp                                    ; $42de: $39
    add a                                         ; $42df: $87
    cpl                                           ; $42e0: $2f
    db $fd                                        ; $42e1: $fd
    ld a, $bf                                     ; $42e2: $3e $bf
    xor l                                         ; $42e4: $ad
    ret c                                         ; $42e5: $d8

    ld c, [hl]                                    ; $42e6: $4e
    ld a, l                                       ; $42e7: $7d
    rla                                           ; $42e8: $17
    sbc $e8                                       ; $42e9: $de $e8
    or [hl]                                       ; $42eb: $b6
    and $81                                       ; $42ec: $e6 $81
    xor a                                         ; $42ee: $af
    ret c                                         ; $42ef: $d8

    ld a, [hl+]                                   ; $42f0: $2a
    inc c                                         ; $42f1: $0c
    call $ae60                                    ; $42f2: $cd $60 $ae
    inc d                                         ; $42f5: $14
    ret nc                                        ; $42f6: $d0

    cp b                                          ; $42f7: $b8
    ld h, d                                       ; $42f8: $62
    inc c                                         ; $42f9: $0c
    ld a, [bc]                                    ; $42fa: $0a
    ld c, e                                       ; $42fb: $4b
    ld d, c                                       ; $42fc: $51
    inc l                                         ; $42fd: $2c
    sbc [hl]                                      ; $42fe: $9e
    ld e, a                                       ; $42ff: $5f
    ld e, b                                       ; $4300: $58
    rst $10                                       ; $4301: $d7
    dec d                                         ; $4302: $15
    ld a, c                                       ; $4303: $79
    dec bc                                        ; $4304: $0b
    db $db                                        ; $4305: $db
    add hl, sp                                    ; $4306: $39
    ld e, c                                       ; $4307: $59
    or a                                          ; $4308: $b7
    ld d, d                                       ; $4309: $52
    scf                                           ; $430a: $37
    push hl                                       ; $430b: $e5
    ld e, d                                       ; $430c: $5a
    ld h, l                                       ; $430d: $65
    ld de, $b976                                  ; $430e: $11 $76 $b9
    ret nz                                        ; $4311: $c0

    rst $00                                       ; $4312: $c7
    dec [hl]                                      ; $4313: $35
    sub $cd                                       ; $4314: $d6 $cd
    ld a, $45                                     ; $4316: $3e $45

jr_030_4318:
    cp [hl]                                       ; $4318: $be
    jp $7047                                      ; $4319: $c3 $47 $70


    ld e, e                                       ; $431c: $5b
    pop de                                        ; $431d: $d1
    ld e, b                                       ; $431e: $58
    scf                                           ; $431f: $37
    ei                                            ; $4320: $fb
    or h                                          ; $4321: $b4
    ld h, e                                       ; $4322: $63
    push af                                       ; $4323: $f5
    ld e, c                                       ; $4324: $59
    jr jr_030_435b                                ; $4325: $18 $34

    xor [hl]                                      ; $4327: $ae
    dec e                                         ; $4328: $1d
    ld h, c                                       ; $4329: $61
    cp $e9                                        ; $432a: $fe $e9
    db $fd                                        ; $432c: $fd
    ld a, d                                       ; $432d: $7a
    ld b, l                                       ; $432e: $45
    push af                                       ; $432f: $f5
    adc [hl]                                      ; $4330: $8e
    dec [hl]                                      ; $4331: $35
    and b                                         ; $4332: $a0
    cp h                                          ; $4333: $bc
    dec b                                         ; $4334: $05
    db $db                                        ; $4335: $db
    add hl, sp                                    ; $4336: $39
    dec e                                         ; $4337: $1d
    ld e, l                                       ; $4338: $5d
    dec d                                         ; $4339: $15
    sub $75                                       ; $433a: $d6 $75
    xor l                                         ; $433c: $ad

jr_030_433d:
    sub c                                         ; $433d: $91
    rst $00                                       ; $433e: $c7
    ei                                            ; $433f: $fb
    ld e, a                                       ; $4340: $5f
    xor e                                         ; $4341: $ab
    inc sp                                        ; $4342: $33
    ld [hl], d                                    ; $4343: $72
    ld h, e                                       ; $4344: $63
    db $e4                                        ; $4345: $e4
    ld hl, $b95f                                  ; $4346: $21 $5f $b9
    rra                                           ; $4349: $1f
    ld c, [hl]                                    ; $434a: $4e
    push bc                                       ; $434b: $c5
    ld a, $61                                     ; $434c: $3e $61
    ld b, $b4                                     ; $434e: $06 $b4
    nop                                           ; $4350: $00
    rra                                           ; $4351: $1f
    db $fc                                        ; $4352: $fc
    and l                                         ; $4353: $a5
    xor h                                         ; $4354: $ac
    jr jr_030_433d                                ; $4355: $18 $e6

    dec l                                         ; $4357: $2d
    db $db                                        ; $4358: $db
    add hl, sp                                    ; $4359: $39
    dec e                                         ; $435a: $1d

jr_030_435b:
    adc h                                         ; $435b: $8c
    add l                                         ; $435c: $85
    rla                                           ; $435d: $17
    ld [$62ef], a                                 ; $435e: $ea $ef $62
    db $e3                                        ; $4361: $e3
    ld a, a                                       ; $4362: $7f
    jr jr_030_4318                                ; $4363: $18 $b3

    ld a, [de]                                    ; $4365: $1a
    ei                                            ; $4366: $fb
    inc [hl]                                      ; $4367: $34
    ld a, [hl]                                    ; $4368: $7e
    cp e                                          ; $4369: $bb
    ld e, $30                                     ; $436a: $1e $30
    ld [hl], d                                    ; $436c: $72
    ld e, d                                       ; $436d: $5a
    cp c                                          ; $436e: $b9
    ld b, e                                       ; $436f: $43
    jr jr_030_43bd                                ; $4370: $18 $4b

    db $e3                                        ; $4372: $e3
    adc d                                         ; $4373: $8a
    dec a                                         ; $4374: $3d
    ld b, c                                       ; $4375: $41
    ld a, [hl-]                                   ; $4376: $3a
    add $b5                                       ; $4377: $c6 $b5
    ld c, e                                       ; $4379: $4b
    sbc a                                         ; $437a: $9f
    ld h, [hl]                                    ; $437b: $66
    ccf                                           ; $437c: $3f
    and [hl]                                      ; $437d: $a6
    adc $4d                                       ; $437e: $ce $4d
    ld a, c                                       ; $4380: $79
    add c                                         ; $4381: $81
    jp hl                                         ; $4382: $e9


    ret z                                         ; $4383: $c8

    ld e, e                                       ; $4384: $5b
    db $db                                        ; $4385: $db
    add hl, sp                                    ; $4386: $39
    add a                                         ; $4387: $87
    cpl                                           ; $4388: $2f
    db $fd                                        ; $4389: $fd
    ld a, $bf                                     ; $438a: $3e $bf
    xor l                                         ; $438c: $ad
    ret c                                         ; $438d: $d8

    ld c, [hl]                                    ; $438e: $4e
    ld a, l                                       ; $438f: $7d
    rla                                           ; $4390: $17
    sbc $e8                                       ; $4391: $de $e8
    ld [hl], $ae                                  ; $4393: $36 $ae
    ret c                                         ; $4395: $d8

    xor c                                         ; $4396: $a9
    rst $08                                       ; $4397: $cf
    cpl                                           ; $4398: $2f
    xor h                                         ; $4399: $ac
    db $eb                                        ; $439a: $eb
    adc d                                         ; $439b: $8a
    jp hl                                         ; $439c: $e9


    rst $28                                       ; $439d: $ef
    ret z                                         ; $439e: $c8

    dec de                                        ; $439f: $1b
    cp c                                          ; $43a0: $b9
    ld [hl+], a                                   ; $43a1: $22
    sub h                                         ; $43a2: $94
    or a                                          ; $43a3: $b7
    db $db                                        ; $43a4: $db
    add hl, sp                                    ; $43a5: $39
    daa                                           ; $43a6: $27
    db $fd                                        ; $43a7: $fd
    dec d                                         ; $43a8: $15
    ret nz                                        ; $43a9: $c0

    add hl, de                                    ; $43aa: $19
    sub c                                         ; $43ab: $91
    ld h, e                                       ; $43ac: $63
    ld a, [bc]                                    ; $43ad: $0a
    or h                                          ; $43ae: $b4
    ld [hl], d                                    ; $43af: $72
    rst $00                                       ; $43b0: $c7
    rst $08                                       ; $43b1: $cf
    add sp, $13                                   ; $43b2: $e8 $13
    cp [hl]                                       ; $43b4: $be
    ccf                                           ; $43b5: $3f
    xor [hl]                                      ; $43b6: $ae
    db $fd                                        ; $43b7: $fd
    ld d, a                                       ; $43b8: $57
    and l                                         ; $43b9: $a5
    ld e, h                                       ; $43ba: $5c
    ret nc                                        ; $43bb: $d0

    ld a, c                                       ; $43bc: $79

jr_030_43bd:
    sub l                                         ; $43bd: $95
    sub l                                         ; $43be: $95
    ld e, e                                       ; $43bf: $5b
    ld a, [de]                                    ; $43c0: $1a
    cpl                                           ; $43c1: $2f
    push bc                                       ; $43c2: $c5
    ld b, h                                       ; $43c3: $44
    adc e                                         ; $43c4: $8b
    rst $20                                       ; $43c5: $e7
    add h                                         ; $43c6: $84
    and l                                         ; $43c7: $a5
    ld l, $4b                                     ; $43c8: $2e $4b
    sub c                                         ; $43ca: $91
    or a                                          ; $43cb: $b7
    db $db                                        ; $43cc: $db
    add hl, sp                                    ; $43cd: $39
    ld b, a                                       ; $43ce: $47
    xor d                                         ; $43cf: $aa
    jp nz, $f17a                                  ; $43d0: $c2 $7a $f1

    inc b                                         ; $43d3: $04
    ld a, $0e                                     ; $43d4: $3e $0e
    di                                            ; $43d6: $f3
    add a                                         ; $43d7: $87
    dec sp                                        ; $43d8: $3b
    call c, $0d89                                 ; $43d9: $dc $89 $0d
    sbc [hl]                                      ; $43dc: $9e
    rst $28                                       ; $43dd: $ef
    call nc, Call_030_76e6                        ; $43de: $d4 $e6 $76
    and c                                         ; $43e1: $a1
    dec d                                         ; $43e2: $15
    inc c                                         ; $43e3: $0c
    jp nc, Jump_030_57f4                          ; $43e4: $d2 $f4 $57

    add hl, de                                    ; $43e7: $19
    dec bc                                        ; $43e8: $0b
    or l                                          ; $43e9: $b5
    rst $38                                       ; $43ea: $ff
    ret nc                                        ; $43eb: $d0

    dec [hl]                                      ; $43ec: $35
    pop de                                        ; $43ed: $d1
    db $f4                                        ; $43ee: $f4
    cp a                                          ; $43ef: $bf
    ld a, [hl+]                                   ; $43f0: $2a
    call nc, $d6b8                                ; $43f1: $d4 $b8 $d6
    ld b, c                                       ; $43f4: $41
    ld e, [hl]                                    ; $43f5: $5e
    ldh a, [$e7]                                  ; $43f6: $f0 $e7
    dec l                                         ; $43f8: $2d
    db $db                                        ; $43f9: $db
    add hl, sp                                    ; $43fa: $39
    add a                                         ; $43fb: $87
    cpl                                           ; $43fc: $2f
    ld l, l                                       ; $43fd: $6d
    ld c, b                                       ; $43fe: $48
    add e                                         ; $43ff: $83
    cp a                                          ; $4400: $bf
    cp b                                          ; $4401: $b8
    ld h, l                                       ; $4402: $65
    ccf                                           ; $4403: $3f
    ldh a, [$d5]                                  ; $4404: $f0 $d5
    reti                                          ; $4406: $d9


    pop hl                                        ; $4407: $e1
    rst $20                                       ; $4408: $e7
    sbc a                                         ; $4409: $9f
    ld l, e                                       ; $440a: $6b
    add hl, hl                                    ; $440b: $29
    ei                                            ; $440c: $fb
    ld l, e                                       ; $440d: $6b
    ld e, $f8                                     ; $440e: $1e $f8
    adc h                                         ; $4410: $8c
    ld a, c                                       ; $4411: $79
    add sp, -$45                                  ; $4412: $e8 $bb
    db $ec                                        ; $4414: $ec
    ld h, d                                       ; $4415: $62
    rst $18                                       ; $4416: $df
    add $15                                       ; $4417: $c6 $15
    adc e                                         ; $4419: $8b
    add [hl]                                      ; $441a: $86
    adc l                                         ; $441b: $8d
    cp a                                          ; $441c: $bf
    di                                            ; $441d: $f3
    cp b                                          ; $441e: $b8
    db $fd                                        ; $441f: $fd
    ld e, b                                       ; $4420: $58
    cp h                                          ; $4421: $bc
    cp a                                          ; $4422: $bf
    and $91                                       ; $4423: $e6 $91
    or c                                          ; $4425: $b1
    db $e4                                        ; $4426: $e4
    ld a, c                                       ; $4427: $79
    dec bc                                        ; $4428: $0b
    db $db                                        ; $4429: $db
    add hl, sp                                    ; $442a: $39
    ld e, c                                       ; $442b: $59
    or a                                          ; $442c: $b7
    ld d, d                                       ; $442d: $52
    scf                                           ; $442e: $37
    push hl                                       ; $442f: $e5
    ld e, d                                       ; $4430: $5a
    di                                            ; $4431: $f3
    ret nz                                        ; $4432: $c0

    rla                                           ; $4433: $17

jr_030_4434:
    ld a, [de]                                    ; $4434: $1a
    and e                                         ; $4435: $a3
    adc $f2                                       ; $4436: $ce $f2
    dec [hl]                                      ; $4438: $35
    rrca                                          ; $4439: $0f
    ld a, h                                       ; $443a: $7c
    ldh a, [$e7]                                  ; $443b: $f0 $e7
    xor b                                         ; $443d: $a8
    ccf                                           ; $443e: $3f
    pop de                                        ; $443f: $d1
    sbc d                                         ; $4440: $9a
    rlca                                          ; $4441: $07
    cp [hl]                                       ; $4442: $be
    jp z, $a380                                   ; $4443: $ca $80 $a3

    ld l, e                                       ; $4446: $6b
    db $fc                                        ; $4447: $fc
    adc [hl]                                      ; $4448: $8e
    rst $38                                       ; $4449: $ff
    cp a                                          ; $444a: $bf
    ld c, e                                       ; $444b: $4b
    sbc a                                         ; $444c: $9f
    ld h, d                                       ; $444d: $62
    adc l                                         ; $444e: $8d
    ld b, l                                       ; $444f: $45
    ret c                                         ; $4450: $d8

    and a                                         ; $4451: $a7
    ret z                                         ; $4452: $c8

    ld e, e                                       ; $4453: $5b
    add a                                         ; $4454: $87
    inc bc                                        ; $4455: $03
    add hl, bc                                    ; $4456: $09
    ld a, h                                       ; $4457: $7c
    ld e, h                                       ; $4458: $5c
    or c                                          ; $4459: $b1
    xor h                                         ; $445a: $ac

jr_030_445b:
    rst $30                                       ; $445b: $f7
    ld c, c                                       ; $445c: $49
    ld sp, $58ae                                  ; $445d: $31 $ae $58
    sub [hl]                                      ; $4460: $96
    ccf                                           ; $4461: $3f
    ld [hl+], a                                   ; $4462: $22
    push bc                                       ; $4463: $c5
    jr c, @+$2e                                   ; $4464: $38 $2c

    res 5, l                                      ; $4466: $cb $ad
    ld sp, $c9e0                                  ; $4468: $31 $e0 $c9
    dec d                                         ; $446b: $15
    ld h, h                                       ; $446c: $64
    ld e, h                                       ; $446d: $5c

jr_030_446e:
    or c                                          ; $446e: $b1
    and $81                                       ; $446f: $e6 $81
    ld c, a                                       ; $4471: $4f
    ccf                                           ; $4472: $3f
    ld l, l                                       ; $4473: $6d
    sbc a                                         ; $4474: $9f
    ld h, d                                       ; $4475: $62
    ld b, $d9                                     ; $4476: $06 $d9
    rrca                                          ; $4478: $0f
    sbc h                                         ; $4479: $9c
    rst $18                                       ; $447a: $df
    reti                                          ; $447b: $d9


    add b                                         ; $447c: $80
    jp $724f                                      ; $447d: $c3 $4f $72


    adc [hl]                                      ; $4480: $8e
    inc d                                         ; $4481: $14
    cp e                                          ; $4482: $bb
    call z, $2587                                 ; $4483: $cc $87 $25
    sub $f8                                       ; $4486: $d6 $f8
    ld h, e                                       ; $4488: $63
    ld e, [hl]                                    ; $4489: $5e
    ld b, $f4                                     ; $448a: $06 $f4
    ld l, c                                       ; $448c: $69
    ld e, h                                       ; $448d: $5c
    ld sp, $55e6                                  ; $448e: $31 $e6 $55
    jr jr_030_4434                                ; $4491: $18 $a1

    ld c, d                                       ; $4493: $4a
    sbc a                                         ; $4494: $9f
    ld [hl+], a                                   ; $4495: $22
    ld l, a                                       ; $4496: $6f
    ld bc, $39db                                  ; $4497: $01 $db $39
    and a                                         ; $449a: $a7
    dec de                                        ; $449b: $1b
    cp $0c                                        ; $449c: $fe $0c
    ld [$5c7c], sp                                ; $449e: $08 $7c $5c
    dec hl                                        ; $44a1: $2b
    or [hl]                                       ; $44a2: $b6
    db $eb                                        ; $44a3: $eb
    ld d, l                                       ; $44a4: $55
    call $908d                                    ; $44a5: $cd $8d $90
    ldh a, [$fd]                                  ; $44a8: $f0 $fd
    ld d, l                                       ; $44aa: $55
    rst $28                                       ; $44ab: $ef
    ld [hl], e                                    ; $44ac: $73
    or h                                          ; $44ad: $b4
    and d                                         ; $44ae: $a2
    ld [hl], c                                    ; $44af: $71
    push bc                                       ; $44b0: $c5
    jr c, jr_030_445b                             ; $44b1: $38 $a8

    call nz, $16b8                                ; $44b3: $c4 $b8 $16
    rst $08                                       ; $44b6: $cf
    cpl                                           ; $44b7: $2f
    sub h                                         ; $44b8: $94
    rst $00                                       ; $44b9: $c7
    db $f4                                        ; $44ba: $f4
    rst $10                                       ; $44bb: $d7
    ld d, a                                       ; $44bc: $57
    cp a                                          ; $44bd: $bf
    db $fd                                        ; $44be: $fd
    db $f4                                        ; $44bf: $f4
    sbc c                                         ; $44c0: $99
    or a                                          ; $44c1: $b7
    db $db                                        ; $44c2: $db
    add hl, sp                                    ; $44c3: $39
    ld e, c                                       ; $44c4: $59
    or a                                          ; $44c5: $b7
    ld d, d                                       ; $44c6: $52
    scf                                           ; $44c7: $37
    push hl                                       ; $44c8: $e5
    ld e, d                                       ; $44c9: $5a
    ld h, l                                       ; $44ca: $65
    inc l                                         ; $44cb: $2c
    cp h                                          ; $44cc: $bc
    ld d, b                                       ; $44cd: $50
    ld a, a                                       ; $44ce: $7f
    or $b1                                        ; $44cf: $f6 $b1
    ld [hl-], a                                   ; $44d1: $32
    ld [de], a                                    ; $44d2: $12
    ld hl, sp-$54                                 ; $44d3: $f8 $ac
    add $3e                                       ; $44d5: $c6 $3e
    dec l                                         ; $44d7: $2d
    push hl                                       ; $44d8: $e5
    db $10                                        ; $44d9: $10
    add hl, de                                    ; $44da: $19
    ld d, b                                       ; $44db: $50
    and l                                         ; $44dc: $a5
    ld c, a                                       ; $44dd: $4f
    db $e3                                        ; $44de: $e3
    jr jr_030_446e                                ; $44df: $18 $8d

    add hl, sp                                    ; $44e1: $39
    ld c, h                                       ; $44e2: $4c
    ld a, a                                       ; $44e3: $7f
    call c, $d87e                                 ; $44e4: $dc $7e $d8
    and a                                         ; $44e7: $a7
    dec d                                         ; $44e8: $15
    adc l                                         ; $44e9: $8d
    db $ec                                        ; $44ea: $ec
    or e                                          ; $44eb: $b3
    ld e, [hl]                                    ; $44ec: $5e
    sbc $02                                       ; $44ed: $de $02
    db $db                                        ; $44ef: $db
    add hl, sp                                    ; $44f0: $39
    sbc l                                         ; $44f1: $9d
    ld b, b                                       ; $44f2: $40
    ldh [$d3], a                                  ; $44f3: $e0 $d3
    ld e, a                                       ; $44f5: $5f
    call c, Call_000_351c                         ; $44f6: $dc $1c $35
    xor [hl]                                      ; $44f9: $ae
    or c                                          ; $44fa: $b1
    ld e, [hl]                                    ; $44fb: $5e
    ld c, d                                       ; $44fc: $4a
    dec b                                         ; $44fd: $05
    ld a, a                                       ; $44fe: $7f
    db $e4                                        ; $44ff: $e4
    dec l                                         ; $4500: $2d
    db $db                                        ; $4501: $db
    add hl, sp                                    ; $4502: $39
    daa                                           ; $4503: $27
    sbc $6d                                       ; $4504: $de $6d
    adc l                                         ; $4506: $8d
    push bc                                       ; $4507: $c5
    db $fc                                        ; $4508: $fc
    ld b, $11                                     ; $4509: $06 $11
    cp b                                          ; $450b: $b8
    ld a, [hl-]                                   ; $450c: $3a
    ld l, e                                       ; $450d: $6b
    db $e4                                        ; $450e: $e4
    ld bc, $e5c6                                  ; $450f: $01 $c6 $e5
    dec hl                                        ; $4512: $2b
    ld e, d                                       ; $4513: $5a
    add l                                         ; $4514: $85
    rra                                           ; $4515: $1f
    add e                                         ; $4516: $83
    ld [$c6ba], a                                 ; $4517: $ea $ba $c6
    or l                                          ; $451a: $b5
    ld h, d                                       ; $451b: $62
    db $eb                                        ; $451c: $eb

Call_030_451d:
    ld h, b                                       ; $451d: $60
    inc l                                         ; $451e: $2c
    call nc, $c6b8                                ; $451f: $d4 $b8 $c6
    ld l, a                                       ; $4522: $6f
    db $e4                                        ; $4523: $e4
    add b                                         ; $4524: $80
    xor [hl]                                      ; $4525: $ae
    add hl, de                                    ; $4526: $19
    and e                                         ; $4527: $a3
    ld l, e                                       ; $4528: $6b
    db $fc                                        ; $4529: $fc
    pop bc                                        ; $452a: $c1
    dec h                                         ; $452b: $25
    ldh a, [$15]                                  ; $452c: $f0 $15
    push bc                                       ; $452e: $c5
    jp nc, Jump_030_69e6                          ; $452f: $d2 $e6 $69

    db $e3                                        ; $4532: $e3
    and d                                         ; $4533: $a2
    ret z                                         ; $4534: $c8

    ld e, e                                       ; $4535: $5b
    ld e, c                                       ; $4536: $59
    or a                                          ; $4537: $b7
    ld d, d                                       ; $4538: $52
    scf                                           ; $4539: $37
    push hl                                       ; $453a: $e5
    ld e, d                                       ; $453b: $5a
    ld h, e                                       ; $453c: $63
    ld a, [hl]                                    ; $453d: $7e
    ld l, c                                       ; $453e: $69
    add hl, de                                    ; $453f: $19
    cp b                                          ; $4540: $b8
    ld h, e                                       ; $4541: $63
    reti                                          ; $4542: $d9


    rst $10                                       ; $4543: $d7
    ld [hl-], a                                   ; $4544: $32
    add b                                         ; $4545: $80
    ld b, h                                       ; $4546: $44
    add [hl]                                      ; $4547: $86
    or h                                          ; $4548: $b4
    ld l, h                                       ; $4549: $6c
    xor e                                         ; $454a: $ab
    inc c                                         ; $454b: $0c
    ld h, e                                       ; $454c: $63
    ld h, c                                       ; $454d: $61
    xor e                                         ; $454e: $ab
    inc c                                         ; $454f: $0c
    db $e3                                        ; $4550: $e3
    db $fd                                        ; $4551: $fd

Jump_030_4552:
    ld h, l                                       ; $4552: $65
    ld b, e                                       ; $4553: $43
    ld h, h                                       ; $4554: $64
    ldh [$6e], a                                  ; $4555: $e0 $6e
    or b                                          ; $4557: $b0
    db $ec                                        ; $4558: $ec
    rlca                                          ; $4559: $07
    cp [hl]                                       ; $455a: $be
    rst $10                                       ; $455b: $d7
    db $fd                                        ; $455c: $fd
    ldh [$2f], a                                  ; $455d: $e0 $2f
    sbc [hl]                                      ; $455f: $9e
    inc de                                        ; $4560: $13
    sub [hl]                                      ; $4561: $96
    cp d                                          ; $4562: $ba
    inc l                                         ; $4563: $2c
    dec l                                         ; $4564: $2d
    dec c                                         ; $4565: $0d
    inc [hl]                                      ; $4566: $34
    rst $10                                       ; $4567: $d7
    ld h, a                                       ; $4568: $67
    ld e, [hl]                                    ; $4569: $5e
    call $b92d                                    ; $456a: $cd $2d $b9
    add $1f                                       ; $456d: $c6 $1f
    di                                            ; $456f: $f3
    ld [hl-], a                                   ; $4570: $32
    ld h, b                                       ; $4571: $60
    sbc a                                         ; $4572: $9f
    ld d, [hl]                                    ; $4573: $56
    xor $b7                                       ; $4574: $ee $b7
    rr a                                          ; $4576: $cb $1f
    inc d                                         ; $4578: $14
    ld d, l                                       ; $4579: $55
    ld a, [$0e34]                                 ; $457a: $fa $34 $0e
    and e                                         ; $457d: $a3
    add a                                         ; $457e: $87
    sub h                                         ; $457f: $94
    or a                                          ; $4580: $b7
    db $db                                        ; $4581: $db
    add hl, sp                                    ; $4582: $39
    add a                                         ; $4583: $87
    ld h, e                                       ; $4584: $63
    ld h, l                                       ; $4585: $65
    ld c, b                                       ; $4586: $48
    inc hl                                        ; $4587: $23
    sub l                                         ; $4588: $95
    and d                                         ; $4589: $a2
    ld c, d                                       ; $458a: $4a
    sbc a                                         ; $458b: $9f
    ld d, [hl]                                    ; $458c: $56
    cp l                                          ; $458d: $bd
    ld c, a                                       ; $458e: $4f
    ld a, [c]                                     ; $458f: $f2
    dec b                                         ; $4590: $05
    ld hl, sp-$76                                 ; $4591: $f8 $8a
    sub [hl]                                      ; $4593: $96
    ld [$62e1], a                                 ; $4594: $ea $e1 $62
    res 2, a                                      ; $4597: $cb $97
    add c                                         ; $4599: $81
    cp e                                          ; $459a: $bb
    ld c, d                                       ; $459b: $4a
    pop de                                        ; $459c: $d1
    ld b, d                                       ; $459d: $42
    db $e3                                        ; $459e: $e3
    or a                                          ; $459f: $b7
    sub h                                         ; $45a0: $94
    ccf                                           ; $45a1: $3f
    ret nz                                        ; $45a2: $c0

    ld d, d                                       ; $45a3: $52
    ld l, h                                       ; $45a4: $6c
    call $5f03                                    ; $45a5: $cd $03 $5f
    call $f7aa                                    ; $45a8: $cd $aa $f7
    ld c, c                                       ; $45ab: $49
    cp [hl]                                       ; $45ac: $be
    ld a, [hl]                                    ; $45ad: $7e
    rrca                                          ; $45ae: $0f
    ld e, b                                       ; $45af: $58
    ld a, [$e461]                                 ; $45b0: $fa $61 $e4

jr_030_45b3:
    dec l                                         ; $45b3: $2d
    db $db                                        ; $45b4: $db
    add hl, sp                                    ; $45b5: $39
    add a                                         ; $45b6: $87
    cpl                                           ; $45b7: $2f
    inc c                                         ; $45b8: $0c
    sbc b                                         ; $45b9: $98
    db $db                                        ; $45ba: $db
    cp b                                          ; $45bb: $b8
    or $5f                                        ; $45bc: $f6 $5f
    sub l                                         ; $45be: $95
    ld [hl], d                                    ; $45bf: $72
    ld b, c                                       ; $45c0: $41
    rst $20                                       ; $45c1: $e7
    ld [hl], l                                    ; $45c2: $75
    ld a, b                                       ; $45c3: $78
    add l                                         ; $45c4: $85
    ld b, e                                       ; $45c5: $43
    xor h                                         ; $45c6: $ac
    ld l, b                                       ; $45c7: $68
    reti                                          ; $45c8: $d9


    rrca                                          ; $45c9: $0f
    ld a, h                                       ; $45ca: $7c
    xor a                                         ; $45cb: $af
    ei                                            ; $45cc: $fb
    pop bc                                        ; $45cd: $c1
    rra                                           ; $45ce: $1f
    ld [hl], a                                    ; $45cf: $77
    ld h, e                                       ; $45d0: $63
    cp l                                          ; $45d1: $bd
    cp a                                          ; $45d2: $bf
    ret nc                                        ; $45d3: $d0

    ld a, [de]                                    ; $45d4: $1a
    cp a                                          ; $45d5: $bf
    ld e, l                                       ; $45d6: $5d
    ret c                                         ; $45d7: $d8

    jr nz, jr_030_45b3                            ; $45d8: $20 $d9

    ld [bc], a                                    ; $45da: $02
    ld a, h                                       ; $45db: $7c

jr_030_45dc:
    ldh a, [$b5]                                  ; $45dc: $f0 $b5
    and [hl]                                      ; $45de: $a6
    jr jr_030_462c                                ; $45df: $18 $4b

    ld l, e                                       ; $45e1: $6b
    and b                                         ; $45e2: $a0
    inc d                                         ; $45e3: $14
    jr z, jr_030_45dc                             ; $45e4: $28 $f6

    ld l, c                                       ; $45e6: $69
    ld e, h                                       ; $45e7: $5c
    ld c, e                                       ; $45e8: $4b
    add hl, de                                    ; $45e9: $19
    or d                                          ; $45ea: $b2
    cp [hl]                                       ; $45eb: $be
    ret nz                                        ; $45ec: $c0

    inc hl                                        ; $45ed: $23
    ld l, a                                       ; $45ee: $6f
    ld bc, $39db                                  ; $45ef: $01 $db $39
    add a                                         ; $45f2: $87
    cpl                                           ; $45f3: $2f
    ld l, l                                       ; $45f4: $6d
    ld c, b                                       ; $45f5: $48
    cp e                                          ; $45f6: $bb
    xor h                                         ; $45f7: $ac
    ld l, d                                       ; $45f8: $6a
    adc h                                         ; $45f9: $8c
    push af                                       ; $45fa: $f5
    or l                                          ; $45fb: $b5
    and $81                                       ; $45fc: $e6 $81
    xor a                                         ; $45fe: $af
    adc b                                         ; $45ff: $88
    sub c                                         ; $4600: $91
    xor a                                         ; $4601: $af
    call c, Call_030_646f                         ; $4602: $dc $6f $64
    inc [hl]                                      ; $4605: $34
    xor [hl]                                      ; $4606: $ae
    add l                                         ; $4607: $85
    ld l, $17                                     ; $4608: $2e $17
    call $f8d2                                    ; $460a: $cd $d2 $f8
    rst $00                                       ; $460d: $c7
    dec [hl]                                      ; $460e: $35
    cp a                                          ; $460f: $bf
    ld sp, $22b7                                  ; $4610: $31 $b7 $22
    sbc a                                         ; $4613: $9f
    ld b, c                                       ; $4614: $41
    rst $20                                       ; $4615: $e7
    ld [hl], l                                    ; $4616: $75
    ld a, b                                       ; $4617: $78
    add l                                         ; $4618: $85
    ld b, e                                       ; $4619: $43
    inc l                                         ; $461a: $2c
    inc bc                                        ; $461b: $03
    ld e, d                                       ; $461c: $5a
    ld d, c                                       ; $461d: $51
    xor h                                         ; $461e: $ac
    ld [hl-], a                                   ; $461f: $32
    ld d, $5e                                     ; $4620: $16 $5e
    xor b                                         ; $4622: $a8
    rra                                           ; $4623: $1f
    ld d, e                                       ; $4624: $53
    ld h, a                                       ; $4625: $67
    inc c                                         ; $4626: $0c
    jp nc, $bca7                                  ; $4627: $d2 $a7 $bc

    dec b                                         ; $462a: $05
    db $db                                        ; $462b: $db

jr_030_462c:
    add hl, sp                                    ; $462c: $39
    rst $00                                       ; $462d: $c7
    ld a, l                                       ; $462e: $7d
    ld b, [hl]                                    ; $462f: $46
    sbc a                                         ; $4630: $9f

Call_030_4631:
    inc b                                         ; $4631: $04
    ld a, $0e                                     ; $4632: $3e $0e
    dec sp                                        ; $4634: $3b
    push af                                       ; $4635: $f5
    ld [hl], d                                    ; $4636: $72
    and b                                         ; $4637: $a0
    rla                                           ; $4638: $17
    rst $10                                       ; $4639: $d7
    ld l, e                                       ; $463a: $6b
    sub h                                         ; $463b: $94

jr_030_463c:
    or a                                          ; $463c: $b7
    db $db                                        ; $463d: $db
    add hl, sp                                    ; $463e: $39
    and a                                         ; $463f: $a7
    ld [hl], $b7                                  ; $4640: $36 $b7
    dec bc                                        ; $4642: $0b
    xor l                                         ; $4643: $ad
    ld h, b                                       ; $4644: $60
    sub b                                         ; $4645: $90
    add $15                                       ; $4646: $c6 $15
    dec hl                                        ; $4648: $2b
    ld a, b                                       ; $4649: $78
    dec a                                         ; $464a: $3d
    rst $38                                       ; $464b: $ff
    adc d                                         ; $464c: $8a
    ld a, h                                       ; $464d: $7c
    add a                                         ; $464e: $87
    xor a                                         ; $464f: $af
    call c, Call_000_239f                         ; $4650: $dc $9f $23
    dec bc                                        ; $4653: $0b
    cp a                                          ; $4654: $bf
    add $b5                                       ; $4655: $c6 $b5
    ld h, d                                       ; $4657: $62
    cp e                                          ; $4658: $bb
    db $fc                                        ; $4659: $fc
    ld h, [hl]                                    ; $465a: $66
    add h                                         ; $465b: $84
    rst $28                                       ; $465c: $ef
    adc a                                         ; $465d: $8f
    ld l, e                                       ; $465e: $6b
    ld a, [hl]                                    ; $465f: $7e
    dec bc                                        ; $4660: $0b
    add hl, sp                                    ; $4661: $39
    and e                                         ; $4662: $a3
    jr jr_030_463c                                ; $4663: $18 $d7

    ld a, [bc]                                    ; $4665: $0a
    ld e, [hl]                                    ; $4666: $5e
    rst $08                                       ; $4667: $cf
    cp a                                          ; $4668: $bf
    ld [hl+], a                                   ; $4669: $22
    ld l, a                                       ; $466a: $6f
    ld bc, $39db                                  ; $466b: $01 $db $39
    and a                                         ; $466e: $a7
    ld a, [bc]                                    ; $466f: $0a
    jp z, Jump_030_632a                           ; $4670: $ca $2a $63

    pop hl                                        ; $4673: $e1
    add l                                         ; $4674: $85
    ld a, [$acbb]                                 ; $4675: $fa $bb $ac
    or c                                          ; $4678: $b1
    ld d, h                                       ; $4679: $54
    pop de                                        ; $467a: $d1
    cp b                                          ; $467b: $b8
    ld d, $e0                                     ; $467c: $16 $e0
    inc c                                         ; $467e: $0c
    ld [hl-], a                                   ; $467f: $32
    xor [hl]                                      ; $4680: $ae
    push de                                       ; $4681: $d5
    add hl, de                                    ; $4682: $19
    ld a, h                                       ; $4683: $7c
    call $2c88                                    ; $4684: $cd $88 $2c
    inc bc                                        ; $4687: $03
    ld a, [de]                                    ; $4688: $1a
    rst $10                                       ; $4689: $d7
    ld l, d                                       ; $468a: $6a
    ld b, h                                       ; $468b: $44
    jr jr_030_4707                                ; $468c: $18 $79

    dec bc                                        ; $468e: $0b
    db $db                                        ; $468f: $db
    add hl, sp                                    ; $4690: $39
    ld e, c                                       ; $4691: $59
    or a                                          ; $4692: $b7
    ld d, d                                       ; $4693: $52
    scf                                           ; $4694: $37
    push hl                                       ; $4695: $e5
    jp c, Jump_030_56c5                           ; $4696: $da $c5 $56

    ld a, d                                       ; $4699: $7a
    inc e                                         ; $469a: $1c
    halt                                          ; $469b: $76
    db $e4                                        ; $469c: $e4
    xor l                                         ; $469d: $ad
    ld sp, $5527                                  ; $469e: $31 $27 $55
    ld a, [$ae34]                                 ; $46a1: $fa $34 $ae
    dec d                                         ; $46a4: $15
    ld e, e                                       ; $46a5: $5b
    ld [hl], $04                                  ; $46a6: $36 $04
    pop hl                                        ; $46a8: $e1
    and l                                         ; $46a9: $a5
    ld d, l                                       ; $46aa: $55
    add $c2                                       ; $46ab: $c6 $c2
    inc c                                         ; $46ad: $0c
    jr z, jr_030_471f                             ; $46ae: $28 $6f

    ld bc, $39db                                  ; $46b0: $01 $db $39
    dec e                                         ; $46b3: $1d
    ld e, $38                                     ; $46b4: $1e $38
    ret nc                                        ; $46b6: $d0

    db $f4                                        ; $46b7: $f4
    and a                                         ; $46b8: $a7
    ld [$b1ab], sp                                ; $46b9: $08 $ab $b1
    ld c, a                                       ; $46bc: $4f
    db $e3                                        ; $46bd: $e3
    ld e, d                                       ; $46be: $5a
    jr jr_030_46f1                                ; $46bf: $18 $30

    ld a, [c]                                     ; $46c1: $f2
    pop bc                                        ; $46c2: $c1
    sbc a                                         ; $46c3: $9f
    ld a, [hl]                                    ; $46c4: $7e

Jump_030_46c5:
    jp c, $ad3e                                   ; $46c5: $da $3e $ad

    ld a, d                                       ; $46c8: $7a
    add l                                         ; $46c9: $85
    jp Jump_000_1df8                              ; $46ca: $c3 $f8 $1d


    cp $3a                                        ; $46cd: $fe $3a
    ret c                                         ; $46cf: $d8

    daa                                           ; $46d0: $27
    cp h                                          ; $46d1: $bc
    sbc [hl]                                      ; $46d2: $9e
    dec hl                                        ; $46d3: $2b
    ld l, a                                       ; $46d4: $6f
    ld bc, $39db                                  ; $46d5: $01 $db $39
    dec e                                         ; $46d8: $1d
    pop af                                        ; $46d9: $f1
    db $fd                                        ; $46da: $fd
    adc a                                         ; $46db: $8f
    ld a, [c]                                     ; $46dc: $f2
    ld [hl], c                                    ; $46dd: $71
    xor l                                         ; $46de: $ad
    ret c                                         ; $46df: $d8

    ld hl, sp+$2d                                 ; $46e0: $f8 $2d
    xor l                                         ; $46e2: $ad
    rra                                           ; $46e3: $1f
    ld a, [de]                                    ; $46e4: $1a
    ld d, a                                       ; $46e5: $57
    adc h                                         ; $46e6: $8c
    ei                                            ; $46e7: $fb
    ld b, e                                       ; $46e8: $43
    adc d                                         ; $46e9: $8a
    ld [hl], c                                    ; $46ea: $71
    push bc                                       ; $46eb: $c5
    ld e, b                                       ; $46ec: $58
    cpl                                           ; $46ed: $2f
    and l                                         ; $46ee: $a5
    add d                                         ; $46ef: $82
    ccf                                           ; $46f0: $3f

jr_030_46f1:
    ld a, [c]                                     ; $46f1: $f2
    ld d, $db                                     ; $46f2: $16 $db
    add hl, sp                                    ; $46f4: $39
    and a                                         ; $46f5: $a7
    ld a, $bf                                     ; $46f6: $3e $bf
    ld d, b                                       ; $46f8: $50
    cp [hl]                                       ; $46f9: $be
    db $eb                                        ; $46fa: $eb
    ld d, [hl]                                    ; $46fb: $56
    ld [$5ca6], a                                 ; $46fc: $ea $a6 $5c
    rlc b                                         ; $46ff: $cb $00
    ld l, $0d                                     ; $4701: $2e $0d
    inc [hl]                                      ; $4703: $34
    ld d, l                                       ; $4704: $55
    adc l                                         ; $4705: $8d
    ld h, e                                       ; $4706: $63

jr_030_4707:
    cp h                                          ; $4707: $bc
    rst $38                                       ; $4708: $ff
    ld l, a                                       ; $4709: $6f
    ld l, e                                       ; $470a: $6b
    call z, Call_000_1457                         ; $470b: $cc $57 $14
    db $eb                                        ; $470e: $eb
    ldh a, [$0a]                                  ; $470f: $f0 $0a
    add a                                         ; $4711: $87
    ld e, b                                       ; $4712: $58
    di                                            ; $4713: $f3
    ret nz                                        ; $4714: $c0

    rla                                           ; $4715: $17
    adc d                                         ; $4716: $8a
    db $dd                                        ; $4717: $dd
    ld l, $47                                     ; $4718: $2e $47
    adc d                                         ; $471a: $8a
    cp h                                          ; $471b: $bc
    dec b                                         ; $471c: $05
    db $db                                        ; $471d: $db
    add hl, sp                                    ; $471e: $39

jr_030_471f:
    and a                                         ; $471f: $a7
    ld [hl], $b7                                  ; $4720: $36 $b7
    dec bc                                        ; $4722: $0b
    xor l                                         ; $4723: $ad
    ld h, b                                       ; $4724: $60
    sub b                                         ; $4725: $90
    add $15                                       ; $4726: $c6 $15
    ld a, e                                       ; $4728: $7b

jr_030_4729:
    jr jr_030_475d                                ; $4729: $18 $32

    add sp, -$44                                  ; $472b: $e8 $bc
    jp z, $9858                                   ; $472d: $ca $58 $98

    ld bc, $be45                                  ; $4730: $01 $45 $be
    jp Jump_030_5c87                              ; $4733: $c3 $87 $5c


    sbc a                                         ; $4736: $9f
    jr nc, @-$71                                  ; $4737: $30 $8d

    or a                                          ; $4739: $b7
    dec d                                         ; $473a: $15
    ld e, e                                       ; $473b: $5b
    jr nz, jr_030_4729                            ; $473c: $20 $eb

    ld h, e                                       ; $473e: $63
    ld a, [de]                                    ; $473f: $1a
    cpl                                           ; $4740: $2f
    inc hl                                        ; $4741: $23
    ld a, h                                       ; $4742: $7c
    ld a, a                                       ; $4743: $7f
    inc e                                         ; $4744: $1c
    ld b, [hl]                                    ; $4745: $46
    adc [hl]                                      ; $4746: $8e
    and l                                         ; $4747: $a5
    ld l, b                                       ; $4748: $68
    push de                                       ; $4749: $d5
    res 0, b                                      ; $474a: $cb $80
    ret nz                                        ; $474c: $c0

    di                                            ; $474d: $f3
    ld d, $db                                     ; $474e: $16 $db
    add hl, sp                                    ; $4750: $39
    add a                                         ; $4751: $87
    inc bc                                        ; $4752: $03
    add hl, bc                                    ; $4753: $09
    ld a, h                                       ; $4754: $7c
    xor [hl]                                      ; $4755: $ae
    db $eb                                        ; $4756: $eb
    db $fd                                        ; $4757: $fd
    rrca                                          ; $4758: $0f
    db $e3                                        ; $4759: $e3
    jp c, Jump_030_74fd                           ; $475a: $da $fd $74

jr_030_475d:
    call nc, Call_030_6344                        ; $475d: $d4 $44 $63
    ld e, e                                       ; $4760: $5b
    ld a, [bc]                                    ; $4761: $0a
    ret                                           ; $4762: $c9


    ld l, b                                       ; $4763: $68
    ld e, h                                       ; $4764: $5c
    ld sp, $58fb                                  ; $4765: $31 $fb $58
    add hl, de                                    ; $4768: $19
    ld [hl], h                                    ; $4769: $74
    ld e, [hl]                                    ; $476a: $5e
    jp c, Jump_030_593e                           ; $476b: $da $3e $59

    db $10                                        ; $476e: $10
    ld h, [hl]                                    ; $476f: $66
    ld b, b                                       ; $4770: $40
    ld [hl], c                                    ; $4771: $71
    rst $08                                       ; $4772: $cf
    ld e, e                                       ; $4773: $5b
    db $db                                        ; $4774: $db
    add hl, sp                                    ; $4775: $39
    dec e                                         ; $4776: $1d
    db $fd                                        ; $4777: $fd
    ld d, $fa                                     ; $4778: $16 $fa
    ld h, h                                       ; $477a: $64
    db $e4                                        ; $477b: $e4
    ld a, b                                       ; $477c: $78
    ld l, c                                       ; $477d: $69
    ld e, h                                       ; $477e: $5c
    cp e                                          ; $477f: $bb
    sbc a                                         ; $4780: $9f
    ld [hl], b                                    ; $4781: $70
    ld h, a                                       ; $4782: $67
    dec bc                                        ; $4783: $0b
    ld e, h                                       ; $4784: $5c
    db $d3                                        ; $4785: $d3
    adc a                                         ; $4786: $8f
    rst $20                                       ; $4787: $e7
    sub a                                         ; $4788: $97

Call_030_4789:
    adc d                                         ; $4789: $8a
    ld a, l                                       ; $478a: $7d
    jp nc, $017d                                  ; $478b: $d2 $7d $01

    cp [hl]                                       ; $478e: $be
    ld d, e                                       ; $478f: $53
    ld a, [c]                                     ; $4790: $f2
    ld d, e                                       ; $4791: $53
    di                                            ; $4792: $f3
    ld d, e                                       ; $4793: $53
    di                                            ; $4794: $f3
    and e                                         ; $4795: $a3
    di                                            ; $4796: $f3
    push af                                       ; $4797: $f5
    ld [hl], d                                    ; $4798: $72
    adc d                                         ; $4799: $8a
    ld [hl], c                                    ; $479a: $71
    ld a, h                                       ; $479b: $7c
    dec sp                                        ; $479c: $3b
    push af                                       ; $479d: $f5
    ld sp, hl                                     ; $479e: $f9
    add l                                         ; $479f: $85
    ld [hl], l                                    ; $47a0: $75
    ld e, l                                       ; $47a1: $5d
    dec sp                                        ; $47a2: $3b
    push de                                       ; $47a3: $d5
    ld a, [hl]                                    ; $47a4: $7e
    db $ec                                        ; $47a5: $ec
    ld l, b                                       ; $47a6: $68
    inc l                                         ; $47a7: $2c
    cp l                                          ; $47a8: $bd
    and $2d                                       ; $47a9: $e6 $2d
    db $db                                        ; $47ab: $db
    add hl, sp                                    ; $47ac: $39
    ld e, c                                       ; $47ad: $59
    or a                                          ; $47ae: $b7

jr_030_47af:
    ld d, d                                       ; $47af: $52
    scf                                           ; $47b0: $37
    push hl                                       ; $47b1: $e5
    ld a, [de]                                    ; $47b2: $1a
    or c                                          ; $47b3: $b1
    ld l, a                                       ; $47b4: $6f
    rst $08                                       ; $47b5: $cf
    pop af                                        ; $47b6: $f1
    ld b, d                                       ; $47b7: $42
    db $fd                                        ; $47b8: $fd
    ld [hl], c                                    ; $47b9: $71
    xor l                                         ; $47ba: $ad
    ret c                                         ; $47bb: $d8

    ld a, [hl+]                                   ; $47bc: $2a
    ld h, e                                       ; $47bd: $63
    and c                                         ; $47be: $a1
    ld a, [c]                                     ; $47bf: $f2
    ld d, $db                                     ; $47c0: $16 $db
    add hl, sp                                    ; $47c2: $39
    and a                                         ; $47c3: $a7
    ld a, $bf                                     ; $47c4: $3e $bf
    or b                                          ; $47c6: $b0
    xor [hl]                                      ; $47c7: $ae
    ld l, e                                       ; $47c8: $6b
    ld d, [hl]                                    ; $47c9: $56
    ld h, e                                       ; $47ca: $63
    sbc a                                         ; $47cb: $9f
    add [hl]                                      ; $47cc: $86
    sbc a                                         ; $47cd: $9f
    pop de                                        ; $47ce: $d1
    and a                                         ; $47cf: $a7
    db $db                                        ; $47d0: $db
    adc d                                         ; $47d1: $8a

jr_030_47d2:
    halt                                          ; $47d2: $76
    ld [bc], a                                    ; $47d3: $02
    ld a, h                                       ; $47d4: $7c
    adc e                                         ; $47d5: $8b
    db $eb                                        ; $47d6: $eb
    dec [hl]                                      ; $47d7: $35
    jp z, $db5b                                   ; $47d8: $ca $5b $db

    add hl, sp                                    ; $47db: $39
    and a                                         ; $47dc: $a7
    cp a                                          ; $47dd: $bf
    ld a, [de]                                    ; $47de: $1a
    ei                                            ; $47df: $fb
    and h                                         ; $47e0: $a4
    ld e, l                                       ; $47e1: $5d
    or a                                          ; $47e2: $b7
    ld d, d                                       ; $47e3: $52
    scf                                           ; $47e4: $37
    push hl                                       ; $47e5: $e5
    ld c, d                                       ; $47e6: $4a
    adc $80                                       ; $47e7: $ce $80
    inc b                                         ; $47e9: $04
    ld a, $ae                                     ; $47ea: $3e $ae
    db $dd                                        ; $47ec: $dd
    ld c, a                                       ; $47ed: $4f
    db $10                                        ; $47ee: $10
    inc hl                                        ; $47ef: $23
    ld e, a                                       ; $47f0: $5f
    pop de                                        ; $47f1: $d1
    sbc b                                         ; $47f2: $98
    add a                                         ; $47f3: $87
    ld b, l                                       ; $47f4: $45
    db $e3                                        ; $47f5: $e3
    or b                                          ; $47f6: $b0
    inc [hl]                                      ; $47f7: $34
    db $10                                        ; $47f8: $10
    ld hl, sp+$3d                                 ; $47f9: $f8 $3d
    ld l, a                                       ; $47fb: $6f
    ld bc, $39db                                  ; $47fc: $01 $db $39
    ld b, a                                       ; $47ff: $47
    adc d                                         ; $4800: $8a
    pop bc                                        ; $4801: $c1
    ccf                                           ; $4802: $3f
    xor [hl]                                      ; $4803: $ae
    jr jr_030_47af                                ; $4804: $18 $a9

    ld l, d                                       ; $4806: $6a
    ld h, d                                       ; $4807: $62
    or $2f                                        ; $4808: $f6 $2f
    call nc, $e48f                                ; $480a: $d4 $8f $e4
    jr jr_030_47d2                                ; $480d: $18 $c3

    sbc a                                         ; $480f: $9f
    ld bc, $8f81                                  ; $4810: $01 $81 $8f
    ld l, e                                       ; $4813: $6b
    ld e, c                                       ; $4814: $59
    ld d, [hl]                                    ; $4815: $56
    ld l, $b6                                     ; $4816: $2e $b6
    push bc                                       ; $4818: $c5
    jp z, $18f3                                   ; $4819: $ca $f3 $18

jr_030_481c:
    cp a                                          ; $481c: $bf
    jp $aed7                                      ; $481d: $c3 $d7 $ae


    ld d, a                                       ; $4820: $57
    dec [hl]                                      ; $4821: $35
    scf                                           ; $4822: $37
    ld b, d                                       ; $4823: $42
    jp nz, $c7f7                                  ; $4824: $c2 $f7 $c7

    rst $28                                       ; $4827: $ef
    ld b, $2c                                     ; $4828: $06 $2c
    ld [hl], b                                    ; $482a: $70
    ld b, l                                       ; $482b: $45
    sbc $02                                       ; $482c: $de $02
    db $db                                        ; $482e: $db
    add hl, sp                                    ; $482f: $39
    and a                                         ; $4830: $a7
    ld [hl], $b7                                  ; $4831: $36 $b7
    dec bc                                        ; $4833: $0b
    xor l                                         ; $4834: $ad
    ld h, b                                       ; $4835: $60
    sub b                                         ; $4836: $90
    add $15                                       ; $4837: $c6 $15
    db $eb                                        ; $4839: $eb
    ldh a, [$0a]                                  ; $483a: $f0 $0a
    add a                                         ; $483c: $87
    sbc b                                         ; $483d: $98
    ld l, b                                       ; $483e: $68
    ld b, $24                                     ; $483f: $06 $24
    ldh a, [$71]                                  ; $4841: $f0 $71
    db $ed                                        ; $4843: $ed
    cp a                                          ; $4844: $bf
    ld a, [hl+]                                   ; $4845: $2a
    push hl                                       ; $4846: $e5
    add d                                         ; $4847: $82
    adc $2b                                       ; $4848: $ce $2b
    ret z                                         ; $484a: $c8

    cp b                                          ; $484b: $b8
    ld h, d                                       ; $484c: $62
    db $fc                                        ; $484d: $fc
    ld a, l                                       ; $484e: $7d
    jp c, $04fd                                   ; $484f: $da $fd $04

    push bc                                       ; $4852: $c5
    ld a, [hl-]                                   ; $4853: $3a
    cp h                                          ; $4854: $bc
    jp nz, $9621                                  ; $4855: $c2 $21 $96

    ld bc, $7fdc                                  ; $4858: $01 $dc $7f
    db $10                                        ; $485b: $10
    ld h, e                                       ; $485c: $63
    ld e, $ea                                     ; $485d: $1e $ea
    db $d3                                        ; $485f: $d3
    dec a                                         ; $4860: $3d
    ld l, a                                       ; $4861: $6f
    ld bc, $39db                                  ; $4862: $01 $db $39
    rst $00                                       ; $4865: $c7
    ld a, l                                       ; $4866: $7d
    ld b, [hl]                                    ; $4867: $46
    sbc a                                         ; $4868: $9f
    inc b                                         ; $4869: $04
    ld a, $ae                                     ; $486a: $3e $ae
    dec d                                         ; $486c: $15
    db $db                                        ; $486d: $db
    ld de, $4aaf                                  ; $486e: $11 $af $4a
    ld e, c                                       ; $4871: $59
    ld [$2841], a                                 ; $4872: $ea $41 $28
    ld l, a                                       ; $4875: $6f
    ld bc, $39db                                  ; $4876: $01 $db $39
    daa                                           ; $4879: $27
    ld l, b                                       ; $487a: $68
    ld c, l                                       ; $487b: $4d
    add c                                         ; $487c: $81
    ret c                                         ; $487d: $d8

    ld [hl], l                                    ; $487e: $75
    dec hl                                        ; $487f: $2b
    ld [hl], l                                    ; $4880: $75
    ld d, e                                       ; $4881: $53
    xor [hl]                                      ; $4882: $ae
    ld d, l                                       ; $4883: $55
    add $c2                                       ; $4884: $c6 $c2
    dec bc                                        ; $4886: $0b
    push af                                       ; $4887: $f5
    rst $00                                       ; $4888: $c7
    dec [hl]                                      ; $4889: $35
    ld a, d                                       ; $488a: $7a
    db $10                                        ; $488b: $10
    dec hl                                        ; $488c: $2b
    adc d                                         ; $488d: $8a
    sub c                                         ; $488e: $91
    xor d                                         ; $488f: $aa
    ld h, $f2                                     ; $4890: $26 $f2
    dec e                                         ; $4892: $1d
    ld l, l                                       ; $4893: $6d
    jr jr_030_481c                                ; $4894: $18 $86

    or h                                          ; $4896: $b4
    add $9c                                       ; $4897: $c6 $9c
    ld d, b                                       ; $4899: $50
    db $e3                                        ; $489a: $e3
    ld e, d                                       ; $489b: $5a
    or c                                          ; $489c: $b1
    ld e, l                                       ; $489d: $5d
    rrca                                          ; $489e: $0f
    ld a, h                                       ; $489f: $7c
    inc e                                         ; $48a0: $1c
    halt                                          ; $48a1: $76
    jp z, $1dc3                                   ; $48a2: $ca $c3 $1d

    xor $c4                                       ; $48a5: $ee $c4
    ld b, $cf                                     ; $48a7: $06 $cf
    ld e, e                                       ; $48a9: $5b
    db $db                                        ; $48aa: $db
    add hl, sp                                    ; $48ab: $39
    and a                                         ; $48ac: $a7
    jr z, @-$64                                   ; $48ad: $28 $9a

    rst $30                                       ; $48af: $f7
    jp Jump_030_4552                              ; $48b0: $c3 $52 $45


    db $e3                                        ; $48b3: $e3
    or b                                          ; $48b4: $b0
    xor h                                         ; $48b5: $ac
    rst $30                                       ; $48b6: $f7
    ld b, e                                       ; $48b7: $43
    ld e, b                                       ; $48b8: $58
    add $15                                       ; $48b9: $c6 $15
    db $eb                                        ; $48bb: $eb
    ld h, b                                       ; $48bc: $60
    inc l                                         ; $48bd: $2c
    cp h                                          ; $48be: $bc
    ld d, b                                       ; $48bf: $50
    ccf                                           ; $48c0: $3f
    add $b5                                       ; $48c1: $c6 $b5
    cp [hl]                                       ; $48c3: $be
    ld a, [$abef]                                 ; $48c4: $fa $ef $ab
    rst $28                                       ; $48c7: $ef
    push de                                       ; $48c8: $d5
    ld e, c                                       ; $48c9: $59
    ld e, a                                       ; $48ca: $5f
    db $fd                                        ; $48cb: $fd
    rra                                           ; $48cc: $1f
    ld a, b                                       ; $48cd: $78
    ld b, b                                       ; $48ce: $40
    sbc $02                                       ; $48cf: $de $02
    db $db                                        ; $48d1: $db
    add hl, sp                                    ; $48d2: $39
    dec e                                         ; $48d3: $1d
    ldh a, [$63]                                  ; $48d4: $f0 $63
    sub b                                         ; $48d6: $90
    ld l, e                                       ; $48d7: $6b
    ld e, h                                       ; $48d8: $5c
    dec hl                                        ; $48d9: $2b
    or [hl]                                       ; $48da: $b6
    ld c, $c6                                     ; $48db: $0e $c6
    ld b, d                                       ; $48dd: $42
    adc l                                         ; $48de: $8d
    cp h                                          ; $48df: $bc
    ld l, [hl]                                    ; $48e0: $6e
    xor h                                         ; $48e1: $ac
    ld a, c                                       ; $48e2: $79
    dec c                                         ; $48e3: $0d
    inc d                                         ; $48e4: $14
    ld b, e                                       ; $48e5: $43
    ld d, a                                       ; $48e6: $57
    ld [hl], d                                    ; $48e7: $72
    rst $38                                       ; $48e8: $ff
    ld d, l                                       ; $48e9: $55
    push de                                       ; $48ea: $d5
    ld l, l                                       ; $48eb: $6d
    ld a, [$ebeb]                                 ; $48ec: $fa $eb $eb
    ret nz                                        ; $48ef: $c0

    cp [hl]                                       ; $48f0: $be
    ld a, [$5bca]                                 ; $48f1: $fa $ca $5b
    db $db                                        ; $48f4: $db
    add hl, sp                                    ; $48f5: $39
    ld e, c                                       ; $48f6: $59
    ld l, h                                       ; $48f7: $6c
    and l                                         ; $48f8: $a5
    rst $00                                       ; $48f9: $c7
    ld h, c                                       ; $48fa: $61
    ld e, c                                       ; $48fb: $59
    rst $28                                       ; $48fc: $ef
    add a                                         ; $48fd: $87
    or b                                          ; $48fe: $b0
    adc h                                         ; $48ff: $8c
    dec hl                                        ; $4900: $2b
    halt                                          ; $4901: $76
    ld [$0bf3], a                                 ; $4902: $ea $f3 $0b
    push hl                                       ; $4905: $e5
    ld sp, $f5ae                                  ; $4906: $31 $ae $f5
    push de                                       ; $4909: $d5
    ld l, a                                       ; $490a: $6f
    cp a                                          ; $490b: $bf
    rlca                                          ; $490c: $07
    xor [hl]                                      ; $490d: $ae
    adc $fa                                       ; $490e: $ce $fa
    ld [$bfb7], a                                 ; $4910: $ea $b7 $bf
    ld a, $f3                                     ; $4913: $3e $f3
    ld d, $db                                     ; $4915: $16 $db
    add hl, sp                                    ; $4917: $39
    ld e, c                                       ; $4918: $59
    or a                                          ; $4919: $b7
    ld d, d                                       ; $491a: $52
    scf                                           ; $491b: $37
    push hl                                       ; $491c: $e5
    ld e, d                                       ; $491d: $5a
    di                                            ; $491e: $f3
    ret nz                                        ; $491f: $c0

    ld h, a                                       ; $4920: $67
    call z, Call_030_5f43                         ; $4921: $cc $43 $5f
    jp z, $6088                                   ; $4924: $ca $88 $60

    ldh a, [rBGP]                                 ; $4927: $f0 $47
    cp $4a                                        ; $4929: $fe $4a
    add hl, de                                    ; $492b: $19
    ret                                           ; $492c: $c9


    db $fd                                        ; $492d: $fd
    add hl, sp                                    ; $492e: $39
    add [hl]                                      ; $492f: $86
    ld a, l                                       ; $4930: $7d
    jp c, $e825                                   ; $4931: $da $25 $e8

    cp h                                          ; $4934: $bc
    inc c                                         ; $4935: $0c
    ldh [rOBP0], a                                ; $4936: $e0 $48
    sbc a                                         ; $4938: $9f
    inc c                                         ; $4939: $0c
    push af                                       ; $493a: $f5
    ld l, c                                       ; $493b: $69
    ld e, h                                       ; $493c: $5c
    inc hl                                        ; $493d: $23
    scf                                           ; $493e: $37
    ld b, [hl]                                    ; $493f: $46
    ld e, $f2                                     ; $4940: $1e $f2
    dec d                                         ; $4942: $15
    sbc e                                         ; $4943: $9b
    inc hl                                        ; $4944: $23
    add e                                         ; $4945: $83
    ld [hl], l                                    ; $4946: $75
    ld e, l                                       ; $4947: $5d
    dec sp                                        ; $4948: $3b
    add hl, bc                                    ; $4949: $09
    ld d, b                                       ; $494a: $50
    ld a, c                                       ; $494b: $79
    dec bc                                        ; $494c: $0b
    db $db                                        ; $494d: $db
    add hl, sp                                    ; $494e: $39
    dec e                                         ; $494f: $1d
    ld e, l                                       ; $4950: $5d
    dec d                                         ; $4951: $15
    sub $75                                       ; $4952: $d6 $75
    dec l                                         ; $4954: $2d
    sbc [hl]                                      ; $4955: $9e
    ld e, a                                       ; $4956: $5f
    ld e, b                                       ; $4957: $58
    rst $10                                       ; $4958: $d7
    or l                                          ; $4959: $b5
    ld a, [hl-]                                   ; $495a: $3a
    db $e3                                        ; $495b: $e3
    ld h, d                                       ; $495c: $62
    db $f4                                        ; $495d: $f4
    pop de                                        ; $495e: $d1
    rst $10                                       ; $495f: $d7
    ld bc, $063f                                  ; $4960: $01 $3f $06
    cp c                                          ; $4963: $b9
    add $b5                                       ; $4964: $c6 $b5
    ld h, d                                       ; $4966: $62
    db $eb                                        ; $4967: $eb
    ld h, b                                       ; $4968: $60
    inc l                                         ; $4969: $2c
    ld d, h                                       ; $496a: $54
    sbc $02                                       ; $496b: $de $02
    db $db                                        ; $496d: $db
    add hl, sp                                    ; $496e: $39
    ld e, c                                       ; $496f: $59
    or a                                          ; $4970: $b7
    ld d, d                                       ; $4971: $52
    scf                                           ; $4972: $37
    push hl                                       ; $4973: $e5
    ld e, d                                       ; $4974: $5a
    di                                            ; $4975: $f3
    ret nz                                        ; $4976: $c0

    rla                                           ; $4977: $17
    adc d                                         ; $4978: $8a
    db $dd                                        ; $4979: $dd
    ld [$62b8], sp                                ; $497a: $08 $b8 $62
    ld bc, $a2be                                  ; $497d: $01 $be $a2
    jr @-$05                                      ; $4980: $18 $f9

    dec hl                                        ; $4982: $2b
    dec h                                         ; $4983: $25
    ld a, [c]                                     ; $4984: $f2
    dec e                                         ; $4985: $1d
    cp [hl]                                       ; $4986: $be
    dec de                                        ; $4987: $1b
    db $dd                                        ; $4988: $dd
    ld d, [hl]                                    ; $4989: $56
    ld e, c                                       ; $498a: $59
    add h                                         ; $498b: $84
    ld e, l                                       ; $498c: $5d
    ld a, [hl]                                    ; $498d: $7e
    sbc e                                         ; $498e: $9b
    cp $1a                                        ; $498f: $fe $1a
    rst $10                                       ; $4991: $d7
    or a                                          ; $4992: $b7
    ld c, a                                       ; $4993: $4f
    db $e3                                        ; $4994: $e3
    adc d                                         ; $4995: $8a
    ld e, l                                       ; $4996: $5d
    cp $32                                        ; $4997: $fe $32
    add b                                         ; $4999: $80
    sub c                                         ; $499a: $91
    or a                                          ; $499b: $b7
    db $db                                        ; $499c: $db
    add hl, sp                                    ; $499d: $39
    ld e, c                                       ; $499e: $59
    ld l, h                                       ; $499f: $6c
    xor e                                         ; $49a0: $ab
    ld a, [de]                                    ; $49a1: $1a
    ld a, h                                       ; $49a2: $7c
    ld a, a                                       ; $49a3: $7f
    db $fc                                        ; $49a4: $fc
    ld a, [hl]                                    ; $49a5: $7e
    cp e                                          ; $49a6: $bb
    ret c                                         ; $49a7: $d8

    cp d                                          ; $49a8: $ba
    ld h, d                                       ; $49a9: $62
    sub l                                         ; $49aa: $95
    or c                                          ; $49ab: $b1
    jr nc, jr_030_49b1                            ; $49ac: $30 $03

    adc d                                         ; $49ae: $8a
    ld [hl], c                                    ; $49af: $71
    xor l                                         ; $49b0: $ad

jr_030_49b1:
    xor a                                         ; $49b1: $af
    cp $fa                                        ; $49b2: $fe $fa
    db $ec                                        ; $49b4: $ec
    ld a, a                                       ; $49b5: $7f
    ld [hl], l                                    ; $49b6: $75
    sub $57                                       ; $49b7: $d6 $57
    ld a, a                                       ; $49b9: $7f
    rlca                                          ; $49ba: $07
    ld e, $98                                     ; $49bb: $1e $98
    or a                                          ; $49bd: $b7
    db $db                                        ; $49be: $db
    add hl, sp                                    ; $49bf: $39
    daa                                           ; $49c0: $27
    ld l, b                                       ; $49c1: $68
    inc l                                         ; $49c2: $2c
    di                                            ; $49c3: $f3
    ld e, $df                                     ; $49c4: $1e $df
    ld e, a                                       ; $49c6: $5f
    ld b, $70                                     ; $49c7: $06 $70
    or [hl]                                       ; $49c9: $b6
    nop                                           ; $49ca: $00
    ld h, a                                       ; $49cb: $67
    ld l, [hl]                                    ; $49cc: $6e
    rla                                           ; $49cd: $17
    db $e4                                        ; $49ce: $e4

Jump_030_49cf:
    dec l                                         ; $49cf: $2d
    db $db                                        ; $49d0: $db
    add hl, sp                                    ; $49d1: $39
    add a                                         ; $49d2: $87
    xor a                                         ; $49d3: $af
    or d                                          ; $49d4: $b2
    rst $08                                       ; $49d5: $cf
    cp d                                          ; $49d6: $ba
    dec c                                         ; $49d7: $0d
    cp [hl]                                       ; $49d8: $be
    sub $49                                       ; $49d9: $d6 $49
    sbc a                                         ; $49db: $9f
    db $ec                                        ; $49dc: $ec
    add d                                         ; $49dd: $82
    ld h, d                                       ; $49de: $62
    ld h, e                                       ; $49df: $63
    ld l, [hl]                                    ; $49e0: $6e
    rst $38                                       ; $49e1: $ff
    or $05                                        ; $49e2: $f6 $05
    and c                                         ; $49e4: $a1
    adc c                                         ; $49e5: $89
    ld h, [hl]                                    ; $49e6: $66
    dec bc                                        ; $49e7: $0b
    ld [hl], b                                    ; $49e8: $70
    and $76                                       ; $49e9: $e6 $76
    ld b, c                                       ; $49eb: $41
    ld [hl], d                                    ; $49ec: $72
    sub l                                         ; $49ed: $95
    ld h, c                                       ; $49ee: $61
    ld c, h                                       ; $49ef: $4c
    ld b, c                                       ; $49f0: $41
    ld [hl], e                                    ; $49f1: $73
    dec b                                         ; $49f2: $05
    db $dd                                        ; $49f3: $dd
    add $e0                                       ; $49f4: $c6 $e0
    dec hl                                        ; $49f6: $2b
    and d                                         ; $49f7: $a2
    cp h                                          ; $49f8: $bc
    dec b                                         ; $49f9: $05
    db $db                                        ; $49fa: $db
    add hl, sp                                    ; $49fb: $39
    and a                                         ; $49fc: $a7
    ld a, $bf                                     ; $49fd: $3e $bf
    or b                                          ; $49ff: $b0
    xor [hl]                                      ; $4a00: $ae
    ld l, e                                       ; $4a01: $6b
    xor c                                         ; $4a02: $a9
    rla                                           ; $4a03: $17
    ld bc, $689a                                  ; $4a04: $01 $9a $68
    xor c                                         ; $4a07: $a9
    rst $20                                       ; $4a08: $e7
    xor h                                         ; $4a09: $ac
    xor a                                         ; $4a0a: $af
    push de                                       ; $4a0b: $d5
    ld e, c                                       ; $4a0c: $59
    cp c                                          ; $4a0d: $b9
    ccf                                           ; $4a0e: $3f
    ld b, a                                       ; $4a0f: $47
    ld d, $7e                                     ; $4a10: $16 $7e
    adc l                                         ; $4a12: $8d
    rst $18                                       ; $4a13: $df
    pop hl                                        ; $4a14: $e1
    ld l, e                                       ; $4a15: $6b
    rla                                           ; $4a16: $17
    cp b                                          ; $4a17: $b8
    halt                                          ; $4a18: $76
    cp l                                          ; $4a19: $bd
    ld c, a                                       ; $4a1a: $4f
    xor [hl]                                      ; $4a1b: $ae
    dec d                                         ; $4a1c: $15
    dec de                                        ; $4a1d: $1b
    ld h, e                                       ; $4a1e: $63
    adc [hl]                                      ; $4a1f: $8e
    sub a                                         ; $4a20: $97
    ld c, d                                       ; $4a21: $4a
    pop de                                        ; $4a22: $d1
    jr c, jr_030_49b1                             ; $4a23: $38 $8c

    cp e                                          ; $4a25: $bb
    or c                                          ; $4a26: $b1
    sbc $cf                                       ; $4a27: $de $cf
    ld e, e                                       ; $4a29: $5b
    db $db                                        ; $4a2a: $db
    add hl, sp                                    ; $4a2b: $39
    ld b, a                                       ; $4a2c: $47
    ld a, [hl-]                                   ; $4a2d: $3a
    jr nz, jr_030_4a87                            ; $4a2e: $20 $57

    add h                                         ; $4a30: $84
    add [hl]                                      ; $4a31: $86
    ld e, [hl]                                    ; $4a32: $5e
    db $ec                                        ; $4a33: $ec
    ld [hl], e                                    ; $4a34: $73
    jp $acd0                                      ; $4a35: $c3 $d0 $ac


    add $3e                                       ; $4a38: $c6 $3e
    adc l                                         ; $4a3a: $8d
    rst $18                                       ; $4a3b: $df
    xor [hl]                                      ; $4a3c: $ae
    rlca                                          ; $4a3d: $07
    adc h                                         ; $4a3e: $8c
    sbc h                                         ; $4a3f: $9c
    ld d, [hl]                                    ; $4a40: $56
    inc d                                         ; $4a41: $14
    ld l, e                                       ; $4a42: $6b
    db $fc                                        ; $4a43: $fc
    dec [hl]                                      ; $4a44: $35
    adc [hl]                                      ; $4a45: $8e
    scf                                           ; $4a46: $37
    cp d                                          ; $4a47: $ba
    push bc                                       ; $4a48: $c5
    cp b                                          ; $4a49: $b8
    ld d, [hl]                                    ; $4a4a: $56
    ld l, h                                       ; $4a4b: $6c
    cp $e2                                        ; $4a4c: $fe $e2
    and [hl]                                      ; $4a4e: $a6
    ld [hl], c                                    ; $4a4f: $71
    xor l                                         ; $4a50: $ad
    ret nz                                        ; $4a51: $c0

    ld d, a                                       ; $4a52: $57
    sbc $02                                       ; $4a53: $de $02
    db $db                                        ; $4a55: $db
    add hl, sp                                    ; $4a56: $39
    dec e                                         ; $4a57: $1d
    pop af                                        ; $4a58: $f1
    db $fd                                        ; $4a59: $fd
    adc a                                         ; $4a5a: $8f
    ld a, [c]                                     ; $4a5b: $f2
    ld [hl], c                                    ; $4a5c: $71
    xor l                                         ; $4a5d: $ad
    ret c                                         ; $4a5e: $d8

    ld d, d                                       ; $4a5f: $52
    adc a                                         ; $4a60: $8f
    db $ec                                        ; $4a61: $ec
    ld h, e                                       ; $4a62: $63
    ld b, $34                                     ; $4a63: $06 $34
    pop de                                        ; $4a65: $d1
    xor [hl]                                      ; $4a66: $ae
    ld d, a                                       ; $4a67: $57
    adc d                                         ; $4a68: $8a
    ld l, $c2                                     ; $4a69: $2e $c2
    rst $30                                       ; $4a6b: $f7
    cp a                                          ; $4a6c: $bf
    ret nz                                        ; $4a6d: $c0

    rst $00                                       ; $4a6e: $c7
    or l                                          ; $4a6f: $b5
    rst $38                                       ; $4a70: $ff
    xor d                                         ; $4a71: $aa
    sub h                                         ; $4a72: $94
    dec bc                                        ; $4a73: $0b
    ld b, d                                       ; $4a74: $42
    or c                                          ; $4a75: $b1
    ld [hl], h                                    ; $4a76: $74
    ld de, $ac78                                  ; $4a77: $11 $78 $ac
    ld [hl-], a                                   ; $4a7a: $32
    ld d, $66                                     ; $4a7b: $16 $66
    ld b, b                                       ; $4a7d: $40
    sub c                                         ; $4a7e: $91
    or a                                          ; $4a7f: $b7
    db $db                                        ; $4a80: $db
    add hl, sp                                    ; $4a81: $39
    dec e                                         ; $4a82: $1d
    ld e, l                                       ; $4a83: $5d
    dec d                                         ; $4a84: $15
    sub $75                                       ; $4a85: $d6 $75

jr_030_4a87:
    adc l                                         ; $4a87: $8d
    pop bc                                        ; $4a88: $c1
    adc e                                         ; $4a89: $8b
    or b                                          ; $4a8a: $b0
    jp nc, $f7ae                                  ; $4a8b: $d2 $ae $f7

    ccf                                           ; $4a8e: $3f
    ld l, b                                       ; $4a8f: $68
    ld e, h                                       ; $4a90: $5c
    dec hl                                        ; $4a91: $2b
    ld [hl], $c6                                  ; $4a92: $36 $c6
    inc e                                         ; $4a94: $1c
    cpl                                           ; $4a95: $2f
    sub l                                         ; $4a96: $95
    and d                                         ; $4a97: $a2
    ld [hl], c                                    ; $4a98: $71
    jr jr_030_4b12                                ; $4a99: $18 $77

    ld h, e                                       ; $4a9b: $63
    cp l                                          ; $4a9c: $bd
    sbc a                                         ; $4a9d: $9f
    or a                                          ; $4a9e: $b7
    db $db                                        ; $4a9f: $db
    add hl, sp                                    ; $4aa0: $39
    ld b, a                                       ; $4aa1: $47
    cp a                                          ; $4aa2: $bf
    rst $08                                       ; $4aa3: $cf

jr_030_4aa4:
    adc l                                         ; $4aa4: $8d
    inc b                                         ; $4aa5: $04
    ld a, $ae                                     ; $4aa6: $3e $ae
    sub l                                         ; $4aa8: $95
    dec sp                                        ; $4aa9: $3b
    cp e                                          ; $4aaa: $bb
    cp e                                          ; $4aab: $bb
    ld b, $c9                                     ; $4aac: $06 $c9
    jp z, Jump_000_354e                           ; $4aae: $ca $4e $35

    db $fc                                        ; $4ab1: $fc
    ld d, h                                       ; $4ab2: $54
    xor a                                         ; $4ab3: $af
    inc bc                                        ; $4ab4: $03
    ld a, h                                       ; $4ab5: $7c
    sub $5b                                       ; $4ab6: $d6 $5b
    di                                            ; $4ab8: $f3
    ret nz                                        ; $4ab9: $c0

    ld b, a                                       ; $4aba: $47
    ld l, [hl]                                    ; $4abb: $6e
    ld c, b                                       ; $4abc: $48
    xor d                                         ; $4abd: $aa
    db $f4                                        ; $4abe: $f4
    add hl, hl                                    ; $4abf: $29
    ld h, $5a                                     ; $4ac0: $26 $5a
    xor d                                         ; $4ac2: $aa
    jr z, jr_030_4ac7                             ; $4ac3: $28 $02

    ld e, h                                       ; $4ac5: $5c
    or c                                          ; $4ac6: $b1

jr_030_4ac7:
    jp z, $9858                                   ; $4ac7: $ca $58 $98

    ld bc, $de45                                  ; $4aca: $01 $45 $de
    ld [bc], a                                    ; $4acd: $02
    db $db                                        ; $4ace: $db
    add hl, sp                                    ; $4acf: $39
    dec e                                         ; $4ad0: $1d
    ld e, l                                       ; $4ad1: $5d
    dec d                                         ; $4ad2: $15
    jp z, $cf17                                   ; $4ad3: $ca $17 $cf

    cpl                                           ; $4ad6: $2f
    sub h                                         ; $4ad7: $94
    xor a                                         ; $4ad8: $af
    adc $ba                                       ; $4ad9: $ce $ba
    ld h, $d7                                     ; $4adb: $26 $d7
    jp nz, $f590                                  ; $4add: $c2 $90 $f5

    ld l, a                                       ; $4ae0: $6f
    xor e                                         ; $4ae1: $ab
    or e                                          ; $4ae2: $b3
    ld [$ad39], a                                 ; $4ae3: $ea $39 $ad
    ld sp, $fc1f                                  ; $4ae6: $31 $1f $fc
    db $dd                                        ; $4ae9: $dd
    ret z                                         ; $4aea: $c8

    ld e, a                                       ; $4aeb: $5f
    push de                                       ; $4aec: $d5
    sbc b                                         ; $4aed: $98
    di                                            ; $4aee: $f3
    pop af                                        ; $4aef: $f1
    ei                                            ; $4af0: $fb
    pop hl                                        ; $4af1: $e1
    ld l, c                                       ; $4af2: $69
    rst $00                                       ; $4af3: $c7
    inc c                                         ; $4af4: $0c

Jump_030_4af5:
    jr z, jr_030_4b66                             ; $4af5: $28 $6f

    ld bc, $39db                                  ; $4af7: $01 $db $39
    dec e                                         ; $4afa: $1d
    ld e, l                                       ; $4afb: $5d
    dec d                                         ; $4afc: $15
    sub $75                                       ; $4afd: $d6 $75
    call $891c                                    ; $4aff: $cd $1c $89
    ld e, l                                       ; $4b02: $5d
    reti                                          ; $4b03: $d9


    cp a                                          ; $4b04: $bf
    ld d, b                                       ; $4b05: $50
    rst $38                                       ; $4b06: $ff
    ld l, e                                       ; $4b07: $6b
    ld [hl], l                                    ; $4b08: $75
    sub $f8                                       ; $4b09: $d6 $f8
    inc bc                                        ; $4b0b: $03
    ld b, [hl]                                    ; $4b0c: $46
    cp [hl]                                       ; $4b0d: $be
    and d                                         ; $4b0e: $a2
    ld e, b                                       ; $4b0f: $58
    db $e3                                        ; $4b10: $e3
    xor a                                         ; $4b11: $af

jr_030_4b12:
    ld [hl], c                                    ; $4b12: $71
    cp h                                          ; $4b13: $bc
    pop de                                        ; $4b14: $d1
    dec l                                         ; $4b15: $2d
    ld d, [hl]                                    ; $4b16: $56
    add hl, de                                    ; $4b17: $19
    dec bc                                        ; $4b18: $0b
    inc sp                                        ; $4b19: $33
    and b                                         ; $4b1a: $a0
    jr jr_030_4aa4                                ; $4b1b: $18 $87

    ld e, l                                       ; $4b1d: $5d
    ld l, h                                       ; $4b1e: $6c
    ld c, h                                       ; $4b1f: $4c
    and a                                         ; $4b20: $a7
    ld e, l                                       ; $4b21: $5d
    dec bc                                        ; $4b22: $0b
    dec [hl]                                      ; $4b23: $35
    sub h                                         ; $4b24: $94
    or a                                          ; $4b25: $b7
    db $db                                        ; $4b26: $db
    add hl, sp                                    ; $4b27: $39
    ld e, c                                       ; $4b28: $59
    xor a                                         ; $4b29: $af
    ld e, [hl]                                    ; $4b2a: $5e
    ld a, [$6e7d]                                 ; $4b2b: $fa $7d $6e
    inc h                                         ; $4b2e: $24
    ldh a, [$71]                                  ; $4b2f: $f0 $71
    xor l                                         ; $4b31: $ad
    db $e3                                        ; $4b32: $e3
    inc bc                                        ; $4b33: $03
    ld e, [hl]                                    ; $4b34: $5e
    call z, $be79                                 ; $4b35: $cc $79 $be
    jp $dfc7                                      ; $4b38: $c3 $c7 $df


    rst $38                                       ; $4b3b: $ff
    or a                                          ; $4b3c: $b7
    push bc                                       ; $4b3d: $c5
    ei                                            ; $4b3e: $fb
    ei                                            ; $4b3f: $fb
    xor a                                         ; $4b40: $af
    ld e, d                                       ; $4b41: $5a
    sbc l                                         ; $4b42: $9d
    sub l                                         ; $4b43: $95
    dec sp                                        ; $4b44: $3b
    ld a, h                                       ; $4b45: $7c
    adc l                                         ; $4b46: $8d
    dec hl                                        ; $4b47: $2b
    sub [hl]                                      ; $4b48: $96
    ld bc, $d723                                  ; $4b49: $01 $23 $d7
    ld a, [hl+]                                   ; $4b4c: $2a
    jp Jump_000_3f78                              ; $4b4d: $c3 $78 $3f


    ld a, [c]                                     ; $4b50: $f2
    ld d, $db                                     ; $4b51: $16 $db
    add hl, sp                                    ; $4b53: $39
    ld e, c                                       ; $4b54: $59
    or a                                          ; $4b55: $b7
    ld d, d                                       ; $4b56: $52
    scf                                           ; $4b57: $37
    push hl                                       ; $4b58: $e5
    sbc d                                         ; $4b59: $9a
    ld bc, $7c09                                  ; $4b5a: $01 $09 $7c
    ld e, h                                       ; $4b5d: $5c
    dec hl                                        ; $4b5e: $2b
    ret z                                         ; $4b5f: $c8

    cp b                                          ; $4b60: $b8
    ld h, d                                       ; $4b61: $62
    db $fc                                        ; $4b62: $fc
    xor [hl]                                      ; $4b63: $ae
    ld a, a                                       ; $4b64: $7f
    or c                                          ; $4b65: $b1

jr_030_4b66:
    db $ed                                        ; $4b66: $ed
    sub e                                         ; $4b67: $93
    ld a, [hl+]                                   ; $4b68: $2a
    ld a, l                                       ; $4b69: $7d
    adc d                                         ; $4b6a: $8a
    cp h                                          ; $4b6b: $bc
    dec b                                         ; $4b6c: $05
    db $db                                        ; $4b6d: $db
    add hl, sp                                    ; $4b6e: $39
    ld e, c                                       ; $4b6f: $59
    xor a                                         ; $4b70: $af
    ld e, [hl]                                    ; $4b71: $5e
    ld a, [$6e7d]                                 ; $4b72: $fa $7d $6e
    inc h                                         ; $4b75: $24
    ldh a, [$71]                                  ; $4b76: $f0 $71
    xor l                                         ; $4b78: $ad
    db $e3                                        ; $4b79: $e3
    inc bc                                        ; $4b7a: $03
    ld e, [hl]                                    ; $4b7b: $5e
    call z, $be79                                 ; $4b7c: $cc $79 $be
    jp $dfc7                                      ; $4b7f: $c3 $c7 $df


    rst $38                                       ; $4b82: $ff
    or a                                          ; $4b83: $b7
    push bc                                       ; $4b84: $c5
    ei                                            ; $4b85: $fb
    ei                                            ; $4b86: $fb
    xor a                                         ; $4b87: $af
    ld e, d                                       ; $4b88: $5a
    sbc l                                         ; $4b89: $9d
    sub l                                         ; $4b8a: $95
    dec sp                                        ; $4b8b: $3b
    ld a, h                                       ; $4b8c: $7c
    adc l                                         ; $4b8d: $8d
    dec hl                                        ; $4b8e: $2b
    sub [hl]                                      ; $4b8f: $96
    ld bc, $d723                                  ; $4b90: $01 $23 $d7
    ld a, [hl+]                                   ; $4b93: $2a
    jp Jump_000_3f78                              ; $4b94: $c3 $78 $3f


    ld a, [c]                                     ; $4b97: $f2
    ld d, $db                                     ; $4b98: $16 $db
    add hl, sp                                    ; $4b9a: $39
    and a                                         ; $4b9b: $a7
    ld a, $bf                                     ; $4b9c: $3e $bf
    or b                                          ; $4b9e: $b0
    xor [hl]                                      ; $4b9f: $ae
    ld l, e                                       ; $4ba0: $6b
    push hl                                       ; $4ba1: $e5
    add $d2                                       ; $4ba2: $c6 $d2
    rst $20                                       ; $4ba4: $e7
    add [hl]                                      ; $4ba5: $86
    xor [hl]                                      ; $4ba6: $ae
    ld e, c                                       ; $4ba7: $59
    adc l                                         ; $4ba8: $8d
    ld a, l                                       ; $4ba9: $7d
    ld e, d                                       ; $4baa: $5a
    ld a, [$7579]                                 ; $4bab: $fa $79 $75
    dec de                                        ; $4bae: $1b
    rst $10                                       ; $4baf: $d7
    or d                                          ; $4bb0: $b2
    dec b                                         ; $4bb1: $05
    ld e, a                                       ; $4bb2: $5f
    or c                                          ; $4bb3: $b1
    ld a, b                                       ; $4bb4: $78
    ld a, [hl]                                    ; $4bb5: $7e
    and c                                         ; $4bb6: $a1
    inc a                                         ; $4bb7: $3c
    and [hl]                                      ; $4bb8: $a6
    cp a                                          ; $4bb9: $bf
    db $e3                                        ; $4bba: $e3
    cp h                                          ; $4bbb: $bc
    ret c                                         ; $4bbc: $d8

    rst $20                                       ; $4bbd: $e7
    jp z, $db5b                                   ; $4bbe: $ca $5b $db

    add hl, sp                                    ; $4bc1: $39
    ld e, c                                       ; $4bc2: $59
    xor a                                         ; $4bc3: $af
    ld e, [hl]                                    ; $4bc4: $5e
    ld a, [$6e7d]                                 ; $4bc5: $fa $7d $6e
    db $e4                                        ; $4bc8: $e4
    ld a, b                                       ; $4bc9: $78
    ld l, c                                       ; $4bca: $69
    ld e, h                                       ; $4bcb: $5c
    db $eb                                        ; $4bcc: $eb
    ld hl, sp-$80                                 ; $4bcd: $f8 $80
    rla                                           ; $4bcf: $17
    ld [hl], e                                    ; $4bd0: $73
    sbc [hl]                                      ; $4bd1: $9e
    rst $28                                       ; $4bd2: $ef
    ldh a, [$f1]                                  ; $4bd3: $f0 $f1
    rst $30                                       ; $4bd5: $f7
    rst $38                                       ; $4bd6: $ff
    ld l, l                                       ; $4bd7: $6d
    pop af                                        ; $4bd8: $f1
    cp $fe                                        ; $4bd9: $fe $fe
    xor e                                         ; $4bdb: $ab
    ld d, [hl]                                    ; $4bdc: $56
    ld h, a                                       ; $4bdd: $67
    push hl                                       ; $4bde: $e5
    ld c, $5f                                     ; $4bdf: $0e $5f
    db $e3                                        ; $4be1: $e3
    adc d                                         ; $4be2: $8a
    ld h, l                                       ; $4be3: $65
    ret nz                                        ; $4be4: $c0

    ret z                                         ; $4be5: $c8

    or l                                          ; $4be6: $b5
    jp z, $de30                                   ; $4be7: $ca $30 $de

    adc a                                         ; $4bea: $8f
    cp h                                          ; $4beb: $bc
    dec b                                         ; $4bec: $05
    db $db                                        ; $4bed: $db
    add hl, sp                                    ; $4bee: $39
    ld e, c                                       ; $4bef: $59
    xor a                                         ; $4bf0: $af
    ld e, [hl]                                    ; $4bf1: $5e
    ld a, [$6e7d]                                 ; $4bf2: $fa $7d $6e
    inc h                                         ; $4bf5: $24
    ldh a, [$71]                                  ; $4bf6: $f0 $71
    xor l                                         ; $4bf8: $ad
    db $e3                                        ; $4bf9: $e3
    inc bc                                        ; $4bfa: $03
    ld e, [hl]                                    ; $4bfb: $5e
    call z, $be79                                 ; $4bfc: $cc $79 $be
    jp $dfc7                                      ; $4bff: $c3 $c7 $df


    rst $38                                       ; $4c02: $ff
    or a                                          ; $4c03: $b7
    push bc                                       ; $4c04: $c5
    ei                                            ; $4c05: $fb
    ei                                            ; $4c06: $fb
    xor a                                         ; $4c07: $af
    ld e, d                                       ; $4c08: $5a
    sbc l                                         ; $4c09: $9d
    sub l                                         ; $4c0a: $95
    dec sp                                        ; $4c0b: $3b
    ld a, h                                       ; $4c0c: $7c
    adc l                                         ; $4c0d: $8d
    dec hl                                        ; $4c0e: $2b
    sub [hl]                                      ; $4c0f: $96
    ld bc, $d723                                  ; $4c10: $01 $23 $d7
    ld a, [hl+]                                   ; $4c13: $2a
    jp Jump_000_3f78                              ; $4c14: $c3 $78 $3f


    ld a, [c]                                     ; $4c17: $f2
    ld d, $db                                     ; $4c18: $16 $db
    add hl, sp                                    ; $4c1a: $39
    add a                                         ; $4c1b: $87

jr_030_4c1c:
    cpl                                           ; $4c1c: $2f
    db $fd                                        ; $4c1d: $fd
    ld a, $bf                                     ; $4c1e: $3e $bf
    xor l                                         ; $4c20: $ad
    ld l, b                                       ; $4c21: $68
    inc c                                         ; $4c22: $0c
    sub [hl]                                      ; $4c23: $96
    ld h, d                                       ; $4c24: $62
    inc l                                         ; $4c25: $2c
    adc l                                         ; $4c26: $8d
    ld l, e                                       ; $4c27: $6b
    dec e                                         ; $4c28: $1d
    db $fd                                        ; $4c29: $fd
    ld d, [hl]                                    ; $4c2a: $56
    rst $08                                       ; $4c2b: $cf
    and b                                         ; $4c2c: $a0
    ld e, [hl]                                    ; $4c2d: $5e
    ld sp, $79e7                                  ; $4c2e: $31 $e7 $79
    dec bc                                        ; $4c31: $0b
    db $db                                        ; $4c32: $db
    add hl, sp                                    ; $4c33: $39
    dec e                                         ; $4c34: $1d
    ld e, l                                       ; $4c35: $5d
    dec d                                         ; $4c36: $15
    sub $75                                       ; $4c37: $d6 $75
    xor l                                         ; $4c39: $ad
    pop af                                        ; $4c3a: $f1
    rst $10                                       ; $4c3b: $d7
    jr c, jr_030_4c1c                             ; $4c3c: $38 $de

    ret z                                         ; $4c3e: $c8

    ret nc                                        ; $4c3f: $d0

    dec [hl]                                      ; $4c40: $35
    ld c, $cb                                     ; $4c41: $0e $cb
    ld h, d                                       ; $4c43: $62
    dec de                                        ; $4c44: $1b
    ld [hl], b                                    ; $4c45: $70
    ld a, a                                       ; $4c46: $7f
    ld a, a                                       ; $4c47: $7f
    ld b, a                                       ; $4c48: $47
    jr jr_030_4c6e                                ; $4c49: $18 $23

    ldh a, [$bc]                                  ; $4c4b: $f0 $bc
    dec b                                         ; $4c4d: $05
    db $db                                        ; $4c4e: $db
    add hl, sp                                    ; $4c4f: $39
    ld b, a                                       ; $4c50: $47
    and d                                         ; $4c51: $a2
    db $eb                                        ; $4c52: $eb
    ld [hl+], a                                   ; $4c53: $22
    add c                                         ; $4c54: $81
    adc a                                         ; $4c55: $8f
    ld l, e                                       ; $4c56: $6b
    dec e                                         ; $4c57: $1d
    rra                                           ; $4c58: $1f
    ldh a, [$62]                                  ; $4c59: $f0 $62
    adc $f3                                       ; $4c5b: $ce $f3
    dec e                                         ; $4c5d: $1d
    ld e, [hl]                                    ; $4c5e: $5e
    pop hl                                        ; $4c5f: $e1
    cp b                                          ; $4c60: $b8
    halt                                          ; $4c61: $76
    ld [hl+], a                                   ; $4c62: $22
    ld e, [hl]                                    ; $4c63: $5e
    xor a                                         ; $4c64: $af
    ld e, b                                       ; $4c65: $58
    db $ec                                        ; $4c66: $ec
    add sp, $62                                   ; $4c67: $e8 $62
    sub l                                         ; $4c69: $95
    ld c, d                                       ; $4c6a: $4a
    ld [hl], d                                    ; $4c6b: $72
    ld hl, sp+$19                                 ; $4c6c: $f8 $19

jr_030_4c6e:
    ld a, l                                       ; $4c6e: $7d
    ld [de], a                                    ; $4c6f: $12
    ld hl, sp-$48                                 ; $4c70: $f8 $b8
    ld d, [hl]                                    ; $4c72: $56

jr_030_4c73:
    ld l, h                                       ; $4c73: $6c
    dec e                                         ; $4c74: $1d
    ld d, c                                       ; $4c75: $51
    xor $5a                                       ; $4c76: $ee $5a
    jp $f2c6                                      ; $4c78: $c3 $c6 $f2


    ld [c], a                                     ; $4c7b: $e2
    dec [hl]                                      ; $4c7c: $35
    ld l, h                                       ; $4c7d: $6c
    dec hl                                        ; $4c7e: $2b
    jp z, $db5b                                   ; $4c7f: $ca $5b $db

    add hl, sp                                    ; $4c82: $39
    push af                                       ; $4c83: $f5
    rra                                           ; $4c84: $1f
    ld [$5c7c], sp                                ; $4c85: $08 $7c $5c
    ld c, e                                       ; $4c88: $4b
    ld e, c                                       ; $4c89: $59
    add h                                         ; $4c8a: $84
    add $ed                                       ; $4c8b: $c6 $ed
    rst $00                                       ; $4c8d: $c7
    adc d                                         ; $4c8e: $8a
    halt                                          ; $4c8f: $76
    db $dd                                        ; $4c90: $dd
    ld c, d                                       ; $4c91: $4a
    db $dd                                        ; $4c92: $dd
    sub h                                         ; $4c93: $94
    ld l, e                                       ; $4c94: $6b
    inc l                                         ; $4c95: $2c
    ld a, a                                       ; $4c96: $7f
    ret nc                                        ; $4c97: $d0

    ld l, b                                       ; $4c98: $68
    and a                                         ; $4c99: $a7
    ld a, $bf                                     ; $4c9a: $3e $bf
    or b                                          ; $4c9c: $b0
    xor [hl]                                      ; $4c9d: $ae
    db $eb                                        ; $4c9e: $eb
    ld e, $3b                                     ; $4c9f: $1e $3b
    jp nz, $cf3e                                  ; $4ca1: $c2 $3e $cf

    ld e, e                                       ; $4ca4: $5b
    db $db                                        ; $4ca5: $db
    add hl, sp                                    ; $4ca6: $39
    ld e, c                                       ; $4ca7: $59
    xor a                                         ; $4ca8: $af
    ld l, d                                       ; $4ca9: $6a
    ld e, [hl]                                    ; $4caa: $5e
    jr nz, jr_030_4cb6                            ; $4cab: $20 $09

    ld a, h                                       ; $4cad: $7c
    ld e, h                                       ; $4cae: $5c
    dec hl                                        ; $4caf: $2b
    or [hl]                                       ; $4cb0: $b6
    ld d, e                                       ; $4cb1: $53
    ld bc, $d349                                  ; $4cb2: $01 $49 $d3
    cp a                                          ; $4cb5: $bf

jr_030_4cb6:
    ret c                                         ; $4cb6: $d8

    or $e9                                        ; $4cb7: $f6 $e9
    and [hl]                                      ; $4cb9: $a6
    db $e4                                        ; $4cba: $e4
    sbc [hl]                                      ; $4cbb: $9e
    add b                                         ; $4cbc: $80
    ld [hl], c                                    ; $4cbd: $71
    dec c                                         ; $4cbe: $0d
    cp a                                          ; $4cbf: $bf
    ld e, l                                       ; $4cc0: $5d
    ld l, h                                       ; $4cc1: $6c
    ld sp, $2537                                  ; $4cc2: $31 $37 $25
    ld [hl], a                                    ; $4cc5: $77
    cp l                                          ; $4cc6: $bd
    xor d                                         ; $4cc7: $aa
    ld [hl], c                                    ; $4cc8: $71
    ld a, l                                       ; $4cc9: $7d
    ei                                            ; $4cca: $fb
    inc [hl]                                      ; $4ccb: $34
    ld hl, sp+$23                                 ; $4ccc: $f8 $23
    ld c, b                                       ; $4cce: $48
    reti                                          ; $4ccf: $d9


    call nc, Call_000_29b9                        ; $4cd0: $d4 $b9 $29
    cpl                                           ; $4cd3: $2f
    jr nc, jr_030_4c73                            ; $4cd4: $30 $9d

    or a                                          ; $4cd6: $b7
    db $db                                        ; $4cd7: $db
    add hl, sp                                    ; $4cd8: $39
    push af                                       ; $4cd9: $f5
    rra                                           ; $4cda: $1f
    ld [$5c7c], sp                                ; $4cdb: $08 $7c $5c
    ld c, e                                       ; $4cde: $4b
    pop hl                                        ; $4cdf: $e1
    rst $00                                       ; $4ce0: $c7
    rlca                                          ; $4ce1: $07
    db $e3                                        ; $4ce2: $e3
    or $63                                        ; $4ce3: $f6 $63
    ld b, l                                       ; $4ce5: $45
    cp e                                          ; $4ce6: $bb
    ld l, [hl]                                    ; $4ce7: $6e
    and l                                         ; $4ce8: $a5
    ld l, [hl]                                    ; $4ce9: $6e
    jp z, $9635                                   ; $4cea: $ca $35 $96

    ccf                                           ; $4ced: $3f
    ld l, b                                       ; $4cee: $68
    or h                                          ; $4cef: $b4
    ld d, e                                       ; $4cf0: $53
    sbc a                                         ; $4cf1: $9f
    ld e, a                                       ; $4cf2: $5f
    ld e, b                                       ; $4cf3: $58
    rst $10                                       ; $4cf4: $d7
    ld [hl], l                                    ; $4cf5: $75
    adc a                                         ; $4cf6: $8f
    dec e                                         ; $4cf7: $1d
    ld h, c                                       ; $4cf8: $61
    sbc a                                         ; $4cf9: $9f
    rst $20                                       ; $4cfa: $e7
    dec l                                         ; $4cfb: $2d
    db $db                                        ; $4cfc: $db
    add hl, sp                                    ; $4cfd: $39
    push af                                       ; $4cfe: $f5
    rra                                           ; $4cff: $1f
    ld [$5c7c], sp                                ; $4d00: $08 $7c $5c
    dec hl                                        ; $4d03: $2b
    ld b, b                                       ; $4d04: $40
    db $ec                                        ; $4d05: $ec
    ld [hl], c                                    ; $4d06: $71
    ei                                            ; $4d07: $fb
    or c                                          ; $4d08: $b1
    and d                                         ; $4d09: $a2
    ld e, l                                       ; $4d0a: $5d
    or a                                          ; $4d0b: $b7
    ld d, d                                       ; $4d0c: $52
    scf                                           ; $4d0d: $37
    push hl                                       ; $4d0e: $e5
    ld a, [de]                                    ; $4d0f: $1a
    rr a                                          ; $4d10: $cb $1f
    inc [hl]                                      ; $4d12: $34
    jp c, $cfa9                                   ; $4d13: $da $a9 $cf

    cpl                                           ; $4d16: $2f
    xor h                                         ; $4d17: $ac
    db $eb                                        ; $4d18: $eb
    cp d                                          ; $4d19: $ba
    rst $00                                       ; $4d1a: $c7
    adc [hl]                                      ; $4d1b: $8e
    or b                                          ; $4d1c: $b0
    rst $08                                       ; $4d1d: $cf
    di                                            ; $4d1e: $f3
    ld d, $db                                     ; $4d1f: $16 $db
    add hl, sp                                    ; $4d21: $39
    rst $00                                       ; $4d22: $c7
    nop                                           ; $4d23: $00
    sub d                                         ; $4d24: $92
    add hl, sp                                    ; $4d25: $39
    ld b, $69                                     ; $4d26: $06 $69
    pop af                                        ; $4d28: $f1
    jp z, $b71b                                   ; $4d29: $ca $1b $b7

    rra                                           ; $4d2c: $1f
    dec hl                                        ; $4d2d: $2b
    jp c, $2b75                                   ; $4d2e: $da $75 $2b

    ld [hl], l                                    ; $4d31: $75
    ld d, e                                       ; $4d32: $53
    xor [hl]                                      ; $4d33: $ae
    or c                                          ; $4d34: $b1
    db $fc                                        ; $4d35: $fc
    ld b, c                                       ; $4d36: $41
    and e                                         ; $4d37: $a3
    sbc l                                         ; $4d38: $9d
    ld a, [$c2fc]                                 ; $4d39: $fa $fc $c2
    cp d                                          ; $4d3c: $ba
    xor [hl]                                      ; $4d3d: $ae
    ld a, e                                       ; $4d3e: $7b
    db $ec                                        ; $4d3f: $ec
    ld [$3cfb], sp                                ; $4d40: $08 $fb $3c
    ld l, a                                       ; $4d43: $6f
    ld bc, $39db                                  ; $4d44: $01 $db $39
    ld e, c                                       ; $4d47: $59
    ld l, h                                       ; $4d48: $6c
    ei                                            ; $4d49: $fb
    inc h                                         ; $4d4a: $24
    ldh a, [$71]                                  ; $4d4b: $f0 $71
    ei                                            ; $4d4d: $fb
    or c                                          ; $4d4e: $b1
    and d                                         ; $4d4f: $a2
    ld e, l                                       ; $4d50: $5d
    or a                                          ; $4d51: $b7
    ld d, d                                       ; $4d52: $52
    scf                                           ; $4d53: $37
    push hl                                       ; $4d54: $e5
    ld a, [de]                                    ; $4d55: $1a
    rr a                                          ; $4d56: $cb $1f
    inc [hl]                                      ; $4d58: $34
    jp c, $cfa9                                   ; $4d59: $da $a9 $cf

    cpl                                           ; $4d5c: $2f
    xor h                                         ; $4d5d: $ac
    db $eb                                        ; $4d5e: $eb
    cp d                                          ; $4d5f: $ba
    rst $00                                       ; $4d60: $c7
    adc [hl]                                      ; $4d61: $8e
    or b                                          ; $4d62: $b0
    rst $08                                       ; $4d63: $cf
    di                                            ; $4d64: $f3
    ld d, $db                                     ; $4d65: $16 $db
    add hl, sp                                    ; $4d67: $39
    sbc l                                         ; $4d68: $9d
    ld d, b                                       ; $4d69: $50
    sbc a                                         ; $4d6a: $9f
    ld d, [hl]                                    ; $4d6b: $56
    ld l, h                                       ; $4d6c: $6c
    add hl, hl                                    ; $4d6d: $29
    inc hl                                        ; $4d6e: $23
    sub d                                         ; $4d6f: $92
    and e                                         ; $4d70: $a3
    add $ed                                       ; $4d71: $c6 $ed

Jump_030_4d73:
    rst $00                                       ; $4d73: $c7
    adc d                                         ; $4d74: $8a
    halt                                          ; $4d75: $76
    db $dd                                        ; $4d76: $dd
    ld c, d                                       ; $4d77: $4a
    db $dd                                        ; $4d78: $dd
    sub h                                         ; $4d79: $94
    ld l, e                                       ; $4d7a: $6b
    inc l                                         ; $4d7b: $2c
    ld a, a                                       ; $4d7c: $7f
    ret nc                                        ; $4d7d: $d0

    ld l, b                                       ; $4d7e: $68
    and a                                         ; $4d7f: $a7
    ld a, $bf                                     ; $4d80: $3e $bf
    or b                                          ; $4d82: $b0
    xor [hl]                                      ; $4d83: $ae
    db $eb                                        ; $4d84: $eb
    ld e, $3b                                     ; $4d85: $1e $3b
    jp nz, $cf3e                                  ; $4d87: $c2 $3e $cf

    ld e, e                                       ; $4d8a: $5b
    db $db                                        ; $4d8b: $db
    add hl, sp                                    ; $4d8c: $39
    and a                                         ; $4d8d: $a7
    ld a, $bf                                     ; $4d8e: $3e $bf
    or b                                          ; $4d90: $b0
    xor [hl]                                      ; $4d91: $ae
    ld l, e                                       ; $4d92: $6b

jr_030_4d93:
    rla                                           ; $4d93: $17
    db $db                                        ; $4d94: $db
    ld a, $09                                     ; $4d95: $3e $09
    ld b, d                                       ; $4d97: $42
    inc hl                                        ; $4d98: $23
    xor a                                         ; $4d99: $af
    dec de                                        ; $4d9a: $1b
    cp e                                          ; $4d9b: $bb
    ld l, [hl]                                    ; $4d9c: $6e
    and l                                         ; $4d9d: $a5
    ld l, [hl]                                    ; $4d9e: $6e
    jp z, $b795                                   ; $4d9f: $ca $95 $b7

    db $db                                        ; $4da2: $db
    add hl, sp                                    ; $4da3: $39
    sbc l                                         ; $4da4: $9d
    db $fc                                        ; $4da5: $fc
    ld d, l                                       ; $4da6: $55
    xor c                                         ; $4da7: $a9
    rst $30                                       ; $4da8: $f7
    or l                                          ; $4da9: $b5
    ld a, b                                       ; $4daa: $78
    push hl                                       ; $4dab: $e5
    adc l                                         ; $4dac: $8d
    db $db                                        ; $4dad: $db

Call_030_4dae:
    adc a                                         ; $4dae: $8f
    dec d                                         ; $4daf: $15
    db $ed                                        ; $4db0: $ed
    cp d                                          ; $4db1: $ba
    sub l                                         ; $4db2: $95
    cp d                                          ; $4db3: $ba
    add hl, hl                                    ; $4db4: $29
    rst $10                                       ; $4db5: $d7
    ld e, b                                       ; $4db6: $58
    cp $a0                                        ; $4db7: $fe $a0
    pop de                                        ; $4db9: $d1
    ld c, [hl]                                    ; $4dba: $4e
    ld a, l                                       ; $4dbb: $7d
    ld a, [hl]                                    ; $4dbc: $7e
    ld h, c                                       ; $4dbd: $61
    ld e, l                                       ; $4dbe: $5d
    rst $10                                       ; $4dbf: $d7
    dec a                                         ; $4dc0: $3d
    halt                                          ; $4dc1: $76
    add h                                         ; $4dc2: $84
    ld a, l                                       ; $4dc3: $7d
    sbc [hl]                                      ; $4dc4: $9e
    or a                                          ; $4dc5: $b7
    db $db                                        ; $4dc6: $db
    add hl, sp                                    ; $4dc7: $39
    and a                                         ; $4dc8: $a7
    db $e3                                        ; $4dc9: $e3
    dec hl                                        ; $4dca: $2b
    rst $28                                       ; $4dcb: $ef
    ld e, a                                       ; $4dcc: $5f
    ld a, [hl+]                                   ; $4dcd: $2a
    dec b                                         ; $4dce: $05
    add e                                         ; $4dcf: $83
    inc [hl]                                      ; $4dd0: $34
    ld l, [hl]                                    ; $4dd1: $6e
    ccf                                           ; $4dd2: $3f
    ld d, [hl]                                    ; $4dd3: $56
    or h                                          ; $4dd4: $b4
    db $eb                                        ; $4dd5: $eb
    ld d, [hl]                                    ; $4dd6: $56
    ld [$5ca6], a                                 ; $4dd7: $ea $a6 $5c
    ld h, e                                       ; $4dda: $63
    ld sp, hl                                     ; $4ddb: $f9
    add e                                         ; $4ddc: $83
    ld b, [hl]                                    ; $4ddd: $46
    dec sp                                        ; $4dde: $3b
    push af                                       ; $4ddf: $f5
    ld sp, hl                                     ; $4de0: $f9
    add l                                         ; $4de1: $85
    ld [hl], l                                    ; $4de2: $75
    ld e, l                                       ; $4de3: $5d
    rst $30                                       ; $4de4: $f7
    ret c                                         ; $4de5: $d8

    ld de, $79f6                                  ; $4de6: $11 $f6 $79
    sbc $02                                       ; $4de9: $de $02
    db $db                                        ; $4deb: $db
    add hl, sp                                    ; $4dec: $39
    ld e, c                                       ; $4ded: $59
    or a                                          ; $4dee: $b7
    ld d, d                                       ; $4def: $52
    scf                                           ; $4df0: $37
    push hl                                       ; $4df1: $e5
    ld e, d                                       ; $4df2: $5a
    di                                            ; $4df3: $f3
    ret nz                                        ; $4df4: $c0

    ld h, a                                       ; $4df5: $67
    call z, $1f43                                 ; $4df6: $cc $43 $1f
    cp a                                          ; $4df9: $bf
    ld sp, $af2a                                  ; $4dfa: $31 $2a $af
    ld l, c                                       ; $4dfd: $69
    ld l, [hl]                                    ; $4dfe: $6e
    dec hl                                        ; $4dff: $2b
    jp c, $98e9                                   ; $4e00: $da $e9 $98

    ld e, $bf                                     ; $4e03: $1e $bf
    ccf                                           ; $4e05: $3f
    rst $08                                       ; $4e06: $cf
    ld e, e                                       ; $4e07: $5b
    db $db                                        ; $4e08: $db
    add hl, sp                                    ; $4e09: $39
    dec e                                         ; $4e0a: $1d
    add h                                         ; $4e0b: $84
    and l                                         ; $4e0c: $a5
    ld [$297c], sp                                ; $4e0d: $08 $7c $29
    jr nz, jr_030_4d93                            ; $4e10: $20 $81

    adc a                                         ; $4e12: $8f
    jp $eb02                                      ; $4e13: $c3 $02 $eb


    ld e, [hl]                                    ; $4e16: $5e
    ld b, l                                       ; $4e17: $45
    db $e3                                        ; $4e18: $e3
    adc d                                         ; $4e19: $8a
    ld d, l                                       ; $4e1a: $55
    ld b, [hl]                                    ; $4e1b: $46
    rla                                           ; $4e1c: $17
    dec sp                                        ; $4e1d: $3b
    add $b5                                       ; $4e1e: $c6 $b5
    sub e                                         ; $4e20: $93
    ld bc, $4739                                  ; $4e21: $01 $39 $47
    cp d                                          ; $4e24: $ba
    ret c                                         ; $4e25: $d8

    ld a, c                                       ; $4e26: $79
    dec bc                                        ; $4e27: $0b
    db $db                                        ; $4e28: $db
    add hl, sp                                    ; $4e29: $39
    ld e, c                                       ; $4e2a: $59
    sub $20                                       ; $4e2b: $d6 $20
    add hl, de                                    ; $4e2d: $19
    ld a, [hl]                                    ; $4e2e: $7e
    adc l                                         ; $4e2f: $8d
    ld l, e                                       ; $4e30: $6b
    push bc                                       ; $4e31: $c5
    ld d, $82                                     ; $4e32: $16 $82
    and d                                         ; $4e34: $a2
    db $dd                                        ; $4e35: $dd
    ld [hl-], a                                   ; $4e36: $32
    add b                                         ; $4e37: $80
    adc l                                         ; $4e38: $8d
    sub [hl]                                      ; $4e39: $96
    cp [hl]                                       ; $4e3a: $be
    ld d, l                                       ; $4e3b: $55
    ld hl, sp-$0f                                 ; $4e3c: $f8 $f1
    ld l, e                                       ; $4e3e: $6b
    rst $18                                       ; $4e3f: $df
    ld [$b7df], sp                                ; $4e40: $08 $df $b7
    and d                                         ; $4e43: $a2
    ld [hl], c                                    ; $4e44: $71
    db $ed                                        ; $4e45: $ed
    ld h, h                                       ; $4e46: $64
    ld b, b                                       ; $4e47: $40
    adc $91                                       ; $4e48: $ce $91
    ld l, $76                                     ; $4e4a: $2e $76
    ld [hl], d                                    ; $4e4c: $72
    ld b, l                                       ; $4e4d: $45
    or c                                          ; $4e4e: $b1
    ld h, e                                       ; $4e4f: $63
    call Call_030_541b                            ; $4e50: $cd $1b $54
    ld c, h                                       ; $4e53: $4c
    ld a, a                                       ; $4e54: $7f
    jp hl                                         ; $4e55: $e9


    ld d, a                                       ; $4e56: $57
    ld d, b                                       ; $4e57: $50
    ld a, c                                       ; $4e58: $79
    dec bc                                        ; $4e59: $0b
    db $db                                        ; $4e5a: $db
    add hl, sp                                    ; $4e5b: $39
    and a                                         ; $4e5c: $a7
    ld a, [bc]                                    ; $4e5d: $0a
    jp z, $53cc                                   ; $4e5e: $ca $cc $53

    ld c, b                                       ; $4e61: $48
    xor [hl]                                      ; $4e62: $ae
    ld [hl], c                                    ; $4e63: $71
    db $ed                                        ; $4e64: $ed
    ld h, h                                       ; $4e65: $64
    ld b, b                                       ; $4e66: $40
    adc $91                                       ; $4e67: $ce $91
    ld l, $f6                                     ; $4e69: $2e $f6
    xor h                                         ; $4e6b: $ac
    add $3e                                       ; $4e6c: $c6 $3e
    adc l                                         ; $4e6e: $8d
    db $fc                                        ; $4e6f: $fc
    ld bc, $5b73                                  ; $4e70: $01 $73 $5b
    or c                                          ; $4e73: $b1
    ld d, l                                       ; $4e74: $55
    rst $08                                       ; $4e75: $cf
    ld l, c                                       ; $4e76: $69
    ld b, $bb                                     ; $4e77: $06 $bb
    ld e, $78                                     ; $4e79: $1e $78
    adc h                                         ; $4e7b: $8c
    rst $18                                       ; $4e7c: $df
    pop hl                                        ; $4e7d: $e1
    xor a                                         ; $4e7e: $af
    ld [hl-], a                                   ; $4e7f: $32
    cp d                                          ; $4e80: $ba
    ret c                                         ; $4e81: $d8

    ld a, c                                       ; $4e82: $79
    dec bc                                        ; $4e83: $0b
    db $db                                        ; $4e84: $db
    add hl, sp                                    ; $4e85: $39
    ld b, a                                       ; $4e86: $47
    cp a                                          ; $4e87: $bf
    rst $08                                       ; $4e88: $cf
    adc l                                         ; $4e89: $8d
    inc b                                         ; $4e8a: $04
    ld a, $ae                                     ; $4e8b: $3e $ae
    dec d                                         ; $4e8d: $15
    ld e, e                                       ; $4e8e: $5b
    cp h                                          ; $4e8f: $bc
    dec bc                                        ; $4e90: $0b
    ld l, a                                       ; $4e91: $6f
    ld [hl], h                                    ; $4e92: $74
    dec de                                        ; $4e93: $1b
    rst $10                                       ; $4e94: $d7
    ld d, d                                       ; $4e95: $52
    ld d, [hl]                                    ; $4e96: $56
    inc c                                         ; $4e97: $0c
    ld h, e                                       ; $4e98: $63
    ld e, h                                       ; $4e99: $5c
    cp e                                          ; $4e9a: $bb
    ld e, $78                                     ; $4e9b: $1e $78
    ld l, b                                       ; $4e9d: $68
    daa                                           ; $4e9e: $27
    ld h, d                                       ; $4e9f: $62
    sub l                                         ; $4ea0: $95
    add d                                         ; $4ea1: $82
    ret z                                         ; $4ea2: $c8

    ld e, e                                       ; $4ea3: $5b
    db $db                                        ; $4ea4: $db
    add hl, sp                                    ; $4ea5: $39
    dec e                                         ; $4ea6: $1d
    db $fd                                        ; $4ea7: $fd
    ld d, $c8                                     ; $4ea8: $16 $c8
    push af                                       ; $4eaa: $f5
    ld l, c                                       ; $4eab: $69
    ld e, h                                       ; $4eac: $5c
    dec hl                                        ; $4ead: $2b
    or [hl]                                       ; $4eae: $b6
    inc de                                        ; $4eaf: $13
    sub b                                         ; $4eb0: $90
    dec b                                         ; $4eb1: $05
    jp c, $9f71                                   ; $4eb2: $da $71 $9f

    db $e4                                        ; $4eb5: $e4
    rst $18                                       ; $4eb6: $df
    ld [$b7df], sp                                ; $4eb7: $08 $df $b7
    and d                                         ; $4eba: $a2
    ld [hl], c                                    ; $4ebb: $71
    db $ed                                        ; $4ebc: $ed
    ld h, h                                       ; $4ebd: $64
    ld b, b                                       ; $4ebe: $40
    adc $91                                       ; $4ebf: $ce $91
    ld l, $f6                                     ; $4ec1: $2e $f6
    ld c, $af                                     ; $4ec3: $0e $af
    adc h                                         ; $4ec5: $8c
    inc b                                         ; $4ec6: $04
    sbc [hl]                                      ; $4ec7: $9e
    or a                                          ; $4ec8: $b7
    db $db                                        ; $4ec9: $db
    add hl, sp                                    ; $4eca: $39
    dec e                                         ; $4ecb: $1d
    ld e, l                                       ; $4ecc: $5d
    dec d                                         ; $4ecd: $15
    sub $75                                       ; $4ece: $d6 $75
    dec l                                         ; $4ed0: $2d
    sbc [hl]                                      ; $4ed1: $9e
    ld e, a                                       ; $4ed2: $5f
    ld e, b                                       ; $4ed3: $58
    rst $10                                       ; $4ed4: $d7
    or l                                          ; $4ed5: $b5
    ld a, [hl-]                                   ; $4ed6: $3a
    inc sp                                        ; $4ed7: $33
    ld c, a                                       ; $4ed8: $4f
    ld hl, $7cb9                                  ; $4ed9: $21 $b9 $7c
    ldh a, [$57]                                  ; $4edc: $f0 $57
    add hl, de                                    ; $4ede: $19
    ld e, l                                       ; $4edf: $5d
    db $ec                                        ; $4ee0: $ec

Jump_030_4ee1:
    ld [hl], c                                    ; $4ee1: $71
    db $ed                                        ; $4ee2: $ed

Call_030_4ee3:
    ld h, h                                       ; $4ee3: $64
    ld b, b                                       ; $4ee4: $40
    adc $91                                       ; $4ee5: $ce $91
    ld l, $76                                     ; $4ee7: $2e $76
    sbc $02                                       ; $4ee9: $de $02
    db $db                                        ; $4eeb: $db
    add hl, sp                                    ; $4eec: $39
    ld b, a                                       ; $4eed: $47
    sbc $08                                       ; $4eee: $de $08
    push af                                       ; $4ef0: $f5
    ld l, c                                       ; $4ef1: $69
    ld b, l                                       ; $4ef2: $45
    ld [hl], e                                    ; $4ef3: $73
    ld e, l                                       ; $4ef4: $5d
    rst $08                                       ; $4ef5: $cf
    ld sp, hl                                     ; $4ef6: $f9
    cp b                                          ; $4ef7: $b8
    ld d, [hl]                                    ; $4ef8: $56
    ld l, h                                       ; $4ef9: $6c
    adc l                                         ; $4efa: $8d
    ld h, e                                       ; $4efb: $63
    ld l, b                                       ; $4efc: $68
    push bc                                       ; $4efd: $c5
    sub $14                                       ; $4efe: $d6 $14
    adc b                                         ; $4f00: $88
    cp c                                          ; $4f01: $b9
    dec [hl]                                      ; $4f02: $35
    ret z                                         ; $4f03: $c8

    dec [hl]                                      ; $4f04: $35
    ld c, $3b                                     ; $4f05: $0e $3b
    dec e                                         ; $4f07: $1d
    db $d3                                        ; $4f08: $d3
    db $e3                                        ; $4f09: $e3
    rst $30                                       ; $4f0a: $f7
    rst $20                                       ; $4f0b: $e7
    db $d3                                        ; $4f0c: $d3
    rra                                           ; $4f0d: $1f
    ld sp, hl                                     ; $4f0e: $f9
    jp $e858                                      ; $4f0f: $c3 $58 $e8


    ld a, d                                       ; $4f12: $7a
    sbc a                                         ; $4f13: $9f
    dec hl                                        ; $4f14: $2b
    ld h, $1a                                     ; $4f15: $26 $1a
    ld d, a                                       ; $4f17: $57
    add l                                         ; $4f18: $85
    jp z, $db5b                                   ; $4f19: $ca $5b $db

    add hl, sp                                    ; $4f1c: $39
    add a                                         ; $4f1d: $87
    ld e, a                                       ; $4f1e: $5f
    inc b                                         ; $4f1f: $04
    ld a, [hl+]                                   ; $4f20: $2a
    ld l, e                                       ; $4f21: $6b
    db $fc                                        ; $4f22: $fc
    ld d, $c8                                     ; $4f23: $16 $c8
    push af                                       ; $4f25: $f5
    ld l, c                                       ; $4f26: $69
    ld e, h                                       ; $4f27: $5c

jr_030_4f28:
    dec hl                                        ; $4f28: $2b
    rst $30                                       ; $4f29: $f7
    ld e, e                                       ; $4f2a: $5b
    ld b, $b0                                     ; $4f2b: $06 $b0
    pop de                                        ; $4f2d: $d1
    cp b                                          ; $4f2e: $b8
    halt                                          ; $4f2f: $76
    ld [hl-], a                                   ; $4f30: $32
    jr nz, @-$17                                  ; $4f31: $20 $e7

    ld c, b                                       ; $4f33: $48
    rla                                           ; $4f34: $17
    ld a, e                                       ; $4f35: $7b
    ld e, h                                       ; $4f36: $5c
    dec sp                                        ; $4f37: $3b
    add $ed                                       ; $4f38: $c6 $ed
    ld [hl], e                                    ; $4f3a: $73
    push de                                       ; $4f3b: $d5
    dec sp                                        ; $4f3c: $3b
    jp nz, $c645                                  ; $4f3d: $c2 $45 $c6

    ld a, [$5bca]                                 ; $4f40: $fa $ca $5b

Call_030_4f43:
    db $db                                        ; $4f43: $db
    add hl, sp                                    ; $4f44: $39

jr_030_4f45:
    dec e                                         ; $4f45: $1d
    ld e, l                                       ; $4f46: $5d
    dec d                                         ; $4f47: $15
    jp z, $f977                                   ; $4f48: $ca $77 $f9

    call $e048                                    ; $4f4b: $cd $48 $e0
    cp e                                          ; $4f4e: $bb
    sbc $ff                                       ; $4f4f: $de $ff
    jr nc, jr_030_4f61                            ; $4f51: $30 $0e

    dec sp                                        ; $4f53: $3b
    jp nz, $0b02                                  ; $4f54: $c2 $02 $0b

    ld e, [hl]                                    ; $4f57: $5e
    ld a, c                                       ; $4f58: $79
    dec bc                                        ; $4f59: $0b
    db $db                                        ; $4f5a: $db
    add hl, sp                                    ; $4f5b: $39
    and a                                         ; $4f5c: $a7
    xor d                                         ; $4f5d: $aa
    ld c, d                                       ; $4f5e: $4a
    dec d                                         ; $4f5f: $15
    xor l                                         ; $4f60: $ad

jr_030_4f61:
    ld l, e                                       ; $4f61: $6b
    ld [hl], d                                    ; $4f62: $72
    xor l                                         ; $4f63: $ad
    ld l, b                                       ; $4f64: $68
    ld hl, $ab28                                  ; $4f65: $21 $28 $ab
    adc h                                         ; $4f68: $8c
    add l                                         ; $4f69: $85
    rla                                           ; $4f6a: $17
    ld [$ceaf], a                                 ; $4f6b: $ea $af $ce
    adc h                                         ; $4f6e: $8c
    ld a, c                                       ; $4f6f: $79
    add sp, -$0d                                  ; $4f70: $e8 $f3
    dec de                                        ; $4f72: $1b
    ld b, h                                       ; $4f73: $44
    ldh [$ea], a                                  ; $4f74: $e0 $ea
    xor h                                         ; $4f76: $ac
    pop af                                        ; $4f77: $f1
    rst $00                                       ; $4f78: $c7
    ld bc, $835d                                  ; $4f79: $01 $5d $83
    cp a                                          ; $4f7c: $bf
    adc [hl]                                      ; $4f7d: $8e
    ld b, [hl]                                    ; $4f7e: $46
    cp $3e                                        ; $4f7f: $fe $3e
    call nz, $3758                                ; $4f81: $c4 $58 $37
    ei                                            ; $4f84: $fb
    sub h                                         ; $4f85: $94
    or a                                          ; $4f86: $b7
    db $db                                        ; $4f87: $db
    add hl, sp                                    ; $4f88: $39
    dec e                                         ; $4f89: $1d
    adc h                                         ; $4f8a: $8c
    add l                                         ; $4f8b: $85
    rla                                           ; $4f8c: $17
    ld [$bc8f], a                                 ; $4f8d: $ea $8f $bc
    ld l, [hl]                                    ; $4f90: $6e
    db $ec                                        ; $4f91: $ec
    add hl, sp                                    ; $4f92: $39
    or d                                          ; $4f93: $b2
    ldh a, [$5b]                                  ; $4f94: $f0 $5b
    reti                                          ; $4f96: $d9


    ld [hl], l                                    ; $4f97: $75
    dec hl                                        ; $4f98: $2b
    ld [hl], l                                    ; $4f99: $75
    ld d, e                                       ; $4f9a: $53
    xor [hl]                                      ; $4f9b: $ae
    dec [hl]                                      ; $4f9c: $35
    rrca                                          ; $4f9d: $0f
    ld a, h                                       ; $4f9e: $7c
    push bc                                       ; $4f9f: $c5
    ld d, [hl]                                    ; $4fa0: $56
    db $dd                                        ; $4fa1: $dd
    jr c, jr_030_4f28                             ; $4fa2: $38 $84

    sub [hl]                                      ; $4fa4: $96
    add c                                         ; $4fa5: $81
    dec sp                                        ; $4fa6: $3b
    sub [hl]                                      ; $4fa7: $96
    dec [hl]                                      ; $4fa8: $35
    rst $08                                       ; $4fa9: $cf
    ret                                           ; $4faa: $c9


    sub b                                         ; $4fab: $90
    halt                                          ; $4fac: $76
    cp l                                          ; $4fad: $bd
    xor d                                         ; $4fae: $aa
    jp nc, $b62e                                  ; $4faf: $d2 $2e $b6

    dec [hl]                                      ; $4fb2: $35
    ld [hl-], a                                   ; $4fb3: $32
    ret z                                         ; $4fb4: $c8

    ld e, e                                       ; $4fb5: $5b
    db $db                                        ; $4fb6: $db

Jump_030_4fb7:
    add hl, sp                                    ; $4fb7: $39
    ld b, a                                       ; $4fb8: $47
    dec d                                         ; $4fb9: $15
    ld sp, $1f02                                  ; $4fba: $31 $02 $1f
    rst $10                                       ; $4fbd: $d7
    ld l, $b6                                     ; $4fbe: $2e $b6
    jr jr_030_4f45                                ; $4fc0: $18 $83

    adc $33                                       ; $4fc2: $ce $33
    inc l                                         ; $4fc4: $2c
    or a                                          ; $4fc5: $b7
    ret z                                         ; $4fc6: $c8

    ld e, e                                       ; $4fc7: $5b
    db $db                                        ; $4fc8: $db
    add hl, sp                                    ; $4fc9: $39
    and a                                         ; $4fca: $a7
    ld a, $bf                                     ; $4fcb: $3e $bf
    or b                                          ; $4fcd: $b0
    xor [hl]                                      ; $4fce: $ae
    ld l, e                                       ; $4fcf: $6b
    inc l                                         ; $4fd0: $2c
    rst $10                                       ; $4fd1: $d7
    sub l                                         ; $4fd2: $95
    ld bc, $3be5                                  ; $4fd3: $01 $e5 $3b
    dec e                                         ; $4fd6: $1d
    add hl, de                                    ; $4fd7: $19
    ld b, e                                       ; $4fd8: $43
    ld e, d                                       ; $4fd9: $5a
    add b                                         ; $4fda: $80
    xor a                                         ; $4fdb: $af
    call c, $2dbb                                 ; $4fdc: $dc $bb $2d
    ld a, [de]                                    ; $4fdf: $1a
    cp a                                          ; $4fe0: $bf
    rra                                           ; $4fe1: $1f
    ld l, $93                                     ; $4fe2: $2e $93
    push hl                                       ; $4fe4: $e5
    db $eb                                        ; $4fe5: $eb
    db $e4                                        ; $4fe6: $e4
    ld [hl], l                                    ; $4fe7: $75
    ld h, e                                       ; $4fe8: $63
    db $fc                                        ; $4fe9: $fc
    pop bc                                        ; $4fea: $c1
    ld c, l                                       ; $4feb: $4d
    ld l, e                                       ; $4fec: $6b
    ld e, $f8                                     ; $4fed: $1e $f8
    ret z                                         ; $4fef: $c8

    db $ed                                        ; $4ff0: $ed
    ld b, a                                       ; $4ff1: $47
    ld a, [$2579]                                 ; $4ff2: $fa $79 $25
    ld e, a                                       ; $4ff5: $5f
    ld d, c                                       ; $4ff6: $51
    xor h                                         ; $4ff7: $ac
    ld [hl-], a                                   ; $4ff8: $32
    rst $00                                       ; $4ff9: $c7
    rra                                           ; $4ffa: $1f
    db $d3                                        ; $4ffb: $d3
    rst $18                                       ; $4ffc: $df
    push af                                       ; $4ffd: $f5
    ld l, $f6                                     ; $4ffe: $2e $f6
    ei                                            ; $5000: $fb
    sub c                                         ; $5001: $91
    or a                                          ; $5002: $b7
    db $db                                        ; $5003: $db
    add hl, sp                                    ; $5004: $39
    ld e, c                                       ; $5005: $59
    or a                                          ; $5006: $b7
    ld d, d                                       ; $5007: $52
    scf                                           ; $5008: $37
    push hl                                       ; $5009: $e5
    ld e, d                                       ; $500a: $5a
    di                                            ; $500b: $f3
    ret nz                                        ; $500c: $c0

    rst $10                                       ; $500d: $d7
    dec [hl]                                      ; $500e: $35
    cp c                                          ; $500f: $b9
    ld b, [hl]                                    ; $5010: $46
    xor a                                         ; $5011: $af
    ld c, d                                       ; $5012: $4a
    db $dd                                        ; $5013: $dd
    inc [hl]                                      ; $5014: $34
    xor e                                         ; $5015: $ab
    ld e, $b8                                     ; $5016: $1e $b8
    jr nz, jr_030_504e                            ; $5018: $20 $34

    ld a, [hl]                                    ; $501a: $7e
    add a                                         ; $501b: $87
    ccf                                           ; $501c: $3f

jr_030_501d:
    ld [hl], d                                    ; $501d: $72

jr_030_501e:
    and h                                         ; $501e: $a4
    rst $30                                       ; $501f: $f7
    daa                                           ; $5020: $27
    ld e, d                                       ; $5021: $5a
    ld l, b                                       ; $5022: $68
    db $e4                                        ; $5023: $e4
    or $23                                        ; $5024: $f6 $23
    db $fd                                        ; $5026: $fd
    cp h                                          ; $5027: $bc
    or d                                          ; $5028: $b2
    jp hl                                         ; $5029: $e9


    rst $28                                       ; $502a: $ef
    ld [hl], d                                    ; $502b: $72
    ld sp, $5222                                  ; $502c: $31 $22 $52
    sbc $02                                       ; $502f: $de $02
    db $db                                        ; $5031: $db
    add hl, sp                                    ; $5032: $39
    ld e, c                                       ; $5033: $59
    ld a, [hl]                                    ; $5034: $7e
    inc sp                                        ; $5035: $33
    ld [hl], d                                    ; $5036: $72
    cp h                                          ; $5037: $bc
    inc [hl]                                      ; $5038: $34
    xor [hl]                                      ; $5039: $ae
    ret c                                         ; $503a: $d8

    sub c                                         ; $503b: $91
    ld l, [hl]                                    ; $503c: $6e
    xor h                                         ; $503d: $ac
    sbc e                                         ; $503e: $9b
    ld h, d                                       ; $503f: $62
    and a                                         ; $5040: $a7
    add d                                         ; $5041: $82
    scf                                           ; $5042: $37
    adc [hl]                                      ; $5043: $8e
    and c                                         ; $5044: $a1
    jr jr_030_501e                                ; $5045: $18 $d7

    adc [hl]                                      ; $5047: $8e
    sub b                                         ; $5048: $90
    inc de                                        ; $5049: $13
    ld l, d                                       ; $504a: $6a
    ld e, c                                       ; $504b: $59
    cp $2e                                        ; $504c: $fe $2e

jr_030_504e:
    ld [hl], $28                                  ; $504e: $36 $28
    ld l, a                                       ; $5050: $6f
    ld bc, $39db                                  ; $5051: $01 $db $39
    add a                                         ; $5054: $87
    ld c, a                                       ; $5055: $4f
    or b                                          ; $5056: $b0
    ld d, b                                       ; $5057: $50
    ld b, e                                       ; $5058: $43
    ld c, e                                       ; $5059: $4b
    ld h, e                                       ; $505a: $63
    adc c                                         ; $505b: $89
    adc c                                         ; $505c: $89
    ld d, [hl]                                    ; $505d: $56
    inc d                                         ; $505e: $14
    or e                                          ; $505f: $b3
    pop de                                        ; $5060: $d1
    add e                                         ; $5061: $83
    jr jr_030_501d                                ; $5062: $18 $b9

    db $fd                                        ; $5064: $fd
    ld c, b                                       ; $5065: $48
    ccf                                           ; $5066: $3f
    xor a                                         ; $5067: $af
    ld l, [hl]                                    ; $5068: $6e
    ld sp, $b1fd                                  ; $5069: $31 $fd $b1
    ld l, a                                       ; $506c: $6f
    adc [hl]                                      ; $506d: $8e
    ld de, $47ef                                  ; $506e: $11 $ef $47
    sbc $02                                       ; $5071: $de $02
    db $db                                        ; $5073: $db
    add hl, sp                                    ; $5074: $39
    sbc l                                         ; $5075: $9d
    ld h, b                                       ; $5076: $60
    rst $38                                       ; $5077: $ff
    ld l, [hl]                                    ; $5078: $6e
    or c                                          ; $5079: $b1
    add $62                                       ; $507a: $c6 $62
    ld a, [$73d7]                                 ; $507c: $fa $d7 $73
    adc l                                         ; $507f: $8d
    db $fc                                        ; $5080: $fc
    ld bc, $db73                                  ; $5081: $01 $73 $db
    dec h                                         ; $5084: $25
    ld [hl+], a                                   ; $5085: $22
    db $ed                                        ; $5086: $ed
    ld [hl-], a                                   ; $5087: $32
    daa                                           ; $5088: $27
    push hl                                       ; $5089: $e5
    dec l                                         ; $508a: $2d
    sbc l                                         ; $508b: $9d
    ld h, b                                       ; $508c: $60
    rst $38                                       ; $508d: $ff
    ld l, [hl]                                    ; $508e: $6e
    or c                                          ; $508f: $b1
    add $62                                       ; $5090: $c6 $62
    ld e, h                                       ; $5092: $5c
    cp e                                          ; $5093: $bb
    call z, Call_030_7949                         ; $5094: $cc $49 $79
    dec bc                                        ; $5097: $0b
    ld b, a                                       ; $5098: $47
    ld [hl], l                                    ; $5099: $75
    cp [hl]                                       ; $509a: $be
    ld e, l                                       ; $509b: $5d
    ld b, b                                       ; $509c: $40
    ld a, [c]                                     ; $509d: $f2
    sub l                                         ; $509e: $95
    cp e                                          ; $509f: $bb
    ld de, $0659                                  ; $50a0: $11 $59 $06
    inc [hl]                                      ; $50a3: $34
    xor [hl]                                      ; $50a4: $ae
    ld e, l                                       ; $50a5: $5d
    ld [hl+], a                                   ; $50a6: $22
    jp nc, $732e                                  ; $50a7: $d2 $2e $73

    ld d, d                                       ; $50aa: $52
    sbc $02                                       ; $50ab: $de $02
    add a                                         ; $50ad: $87
    sub a                                         ; $50ae: $97
    adc e                                         ; $50af: $8b
    adc l                                         ; $50b0: $8d
    dec d                                         ; $50b1: $15
    xor d                                         ; $50b2: $aa
    dec b                                         ; $50b3: $05
    ld b, a                                       ; $50b4: $47
    db $fd                                        ; $50b5: $fd
    adc e                                         ; $50b6: $8b
    ld l, l                                       ; $50b7: $6d
    sbc a                                         ; $50b8: $9f
    ld d, h                                       ; $50b9: $54
    jp hl                                         ; $50ba: $e9


    ld d, e                                       ; $50bb: $53
    or h                                          ; $50bc: $b4
    dec e                                         ; $50bd: $1d
    xor h                                         ; $50be: $ac
    call c, Call_030_5e38                         ; $50bf: $dc $38 $5e
    add h                                         ; $50c2: $84
    rst $28                                       ; $50c3: $ef
    or a                                          ; $50c4: $b7
    dec e                                         ; $50c5: $1d
    db $fd                                        ; $50c6: $fd
    sub c                                         ; $50c7: $91
    ld l, $c2                                     ; $50c8: $2e $c2
    rst $30                                       ; $50ca: $f7
    ld e, e                                       ; $50cb: $5b
    ld b, a                                       ; $50cc: $47
    ld [hl+], a                                   ; $50cd: $22
    add e                                         ; $50ce: $83
    rst $18                                       ; $50cf: $df
    ld [$6fdf], sp                                ; $50d0: $08 $df $6f
    ld bc, $dcc7                                  ; $50d3: $01 $c7 $dc
    cp $cd                                        ; $50d6: $fe $cd
    xor l                                         ; $50d8: $ad
    ld h, b                                       ; $50d9: $60
    sub b                                         ; $50da: $90
    ld e, d                                       ; $50db: $5a

jr_030_50dc:
    rst $00                                       ; $50dc: $c7
    ret nz                                        ; $50dd: $c0

    call $de31                                    ; $50de: $cd $31 $de
    ld l, a                                       ; $50e1: $6f
    ld bc, $1f1d                                  ; $50e2: $01 $1d $1f
    ldh a, [$62]                                  ; $50e5: $f0 $62
    adc $5b                                       ; $50e7: $ce $5b
    dec e                                         ; $50e9: $1d
    jr nz, jr_030_50dc                            ; $50ea: $20 $f0

    ld b, d                                       ; $50ec: $42
    db $fd                                        ; $50ed: $fd
    ld d, $27                                     ; $50ee: $16 $27
    inc bc                                        ; $50f0: $03
    ld [hl], d                                    ; $50f1: $72
    adc [hl]                                      ; $50f2: $8e
    ld [hl], h                                    ; $50f3: $74
    or c                                          ; $50f4: $b1
    ld e, e                                       ; $50f5: $5b
    dec e                                         ; $50f6: $1d
    ld l, [hl]                                    ; $50f7: $6e
    ld h, h                                       ; $50f8: $64
    push de                                       ; $50f9: $d5
    di                                            ; $50fa: $f3
    add [hl]                                      ; $50fb: $86
    db $fd                                        ; $50fc: $fd
    ld b, d                                       ; $50fd: $42
    dec l                                         ; $50fe: $2d
    ld b, a                                       ; $50ff: $47
    sbc l                                         ; $5100: $9d
    reti                                          ; $5101: $d9


    or c                                          ; $5102: $b1
    dec b                                         ; $5103: $05
    dec e                                         ; $5104: $1d
    sbc [hl]                                      ; $5105: $9e
    ld a, a                                       ; $5106: $7f
    inc l                                         ; $5107: $2c
    ld b, l                                       ; $5108: $45
    pop de                                        ; $5109: $d1
    ld [bc], a                                    ; $510a: $02
    rst $00                                       ; $510b: $c7
    sbc d                                         ; $510c: $9a
    ld a, e                                       ; $510d: $7b
    call $e46c                                    ; $510e: $cd $6c $e4
    rrca                                          ; $5111: $0f
    sbc b                                         ; $5112: $98
    db $db                                        ; $5113: $db
    ld c, $6e                                     ; $5114: $0e $6e
    ld bc, $1b47                                  ; $5116: $01 $47 $1b
    cp d                                          ; $5119: $ba
    halt                                          ; $511a: $76
    adc c                                         ; $511b: $89
    ld h, [hl]                                    ; $511c: $66
    rla                                           ; $511d: $17
    db $db                                        ; $511e: $db
    xor b                                         ; $511f: $a8
    or $d0                                        ; $5120: $f6 $d0
    ld d, $db                                     ; $5122: $16 $db
    halt                                          ; $5124: $76

jr_030_5125:
    ld [de], a                                    ; $5125: $12
    ld h, b                                       ; $5126: $60
    dec bc                                        ; $5127: $0b
    db $db                                        ; $5128: $db
    halt                                          ; $5129: $76
    ld [c], a                                     ; $512a: $e2
    ei                                            ; $512b: $fb
    dec l                                         ; $512c: $2d
    ld e, c                                       ; $512d: $59
    ld [hl+], a                                   ; $512e: $22
    jp nc, $e79a                                  ; $512f: $d2 $9a $e7

    and h                                         ; $5132: $a4
    add hl, hl                                    ; $5133: $29
    ld l, b                                       ; $5134: $68
    add hl, hl                                    ; $5135: $29
    call nc, $231f                                ; $5136: $d4 $1f $23
    rst $30                                       ; $5139: $f7
    rlca                                          ; $513a: $07
    ld e, b                                       ; $513b: $58
    jp z, $b54d                                   ; $513c: $ca $4d $b5

    adc c                                         ; $513f: $89
    dec l                                         ; $5140: $2d
    daa                                           ; $5141: $27
    jr z, @+$78                                   ; $5142: $28 $76

    or c                                          ; $5144: $b1
    xor l                                         ; $5145: $ad
    ld c, d                                       ; $5146: $4a
    cp c                                          ; $5147: $b9
    ld h, d                                       ; $5148: $62
    jp hl                                         ; $5149: $e9


    rst $20                                       ; $514a: $e7
    and h                                         ; $514b: $a4
    jr jr_030_5125                                ; $514c: $18 $d7

    adc [hl]                                      ; $514e: $8e
    ld [hl], c                                    ; $514f: $71
    db $fc                                        ; $5150: $fc
    xor h                                         ; $5151: $ac
    ld b, a                                       ; $5152: $47
    inc d                                         ; $5153: $14
    adc e                                         ; $5154: $8b
    rst $30                                       ; $5155: $f7
    ld l, c                                       ; $5156: $69
    db $e4                                        ; $5157: $e4

Jump_030_5158:
    ld [hl], l                                    ; $5158: $75
    ld h, e                                       ; $5159: $63
    rst $30                                       ; $515a: $f7
    db $f4                                        ; $515b: $f4
    ld [hl], e                                    ; $515c: $73
    ld d, d                                       ; $515d: $52
    call c, Call_000_136b                         ; $515e: $dc $6b $13
    ld e, e                                       ; $5161: $5b
    daa                                           ; $5162: $27
    inc bc                                        ; $5163: $03
    ld l, $0c                                     ; $5164: $2e $0c
    ld l, c                                       ; $5166: $69
    sub a                                         ; $5167: $97
    sub [hl]                                      ; $5168: $96
    ld bc, $235c                                  ; $5169: $01 $5c $23
    and b                                         ; $516c: $a0
    add l                                         ; $516d: $85
    ld b, [hl]                                    ; $516e: $46
    cp $80                                        ; $516f: $fe $80
    sub c                                         ; $5171: $91
    adc a                                         ; $5172: $8f
    db $db                                        ; $5173: $db
    adc a                                         ; $5174: $8f
    ld e, l                                       ; $5175: $5d
    ld [hl+], a                                   ; $5176: $22
    jp nc, $b62e                                  ; $5177: $d2 $2e $b6

    ld d, l                                       ; $517a: $55
    add hl, hl                                    ; $517b: $29
    rst $10                                       ; $517c: $d7
    jp nc, Jump_030_49cf                          ; $517d: $d2 $cf $49

    or l                                          ; $5180: $b5
    add a                                         ; $5181: $87
    xor $d4                                       ; $5182: $ee $d4
    ld e, $5c                                     ; $5184: $1e $5c
    sub l                                         ; $5186: $95
    ld a, $ad                                     ; $5187: $3e $ad
    or c                                          ; $5189: $b1
    jr @+$3f                                      ; $518a: $18 $3d

    call z, $9d5b                                 ; $518c: $cc $5b $9d
    db $ec                                        ; $518f: $ec
    db $d3                                        ; $5190: $d3
    cp b                                          ; $5191: $b8
    sub $3c                                       ; $5192: $d6 $3c
    daa                                           ; $5194: $27
    push bc                                       ; $5195: $c5
    jp nc, $eaf2                                  ; $5196: $d2 $f2 $ea

    and [hl]                                      ; $5199: $a6
    xor b                                         ; $519a: $a8
    ld c, l                                       ; $519b: $4d
    ld l, h                                       ; $519c: $6c
    ld bc, $d827                                  ; $519d: $01 $27 $d8
    ld b, d                                       ; $51a0: $42
    ld d, b                                       ; $51a1: $50
    or h                                          ; $51a2: $b4
    adc e                                         ; $51a3: $8b
    ld l, l                                       ; $51a4: $6d
    ld d, l                                       ; $51a5: $55
    jp z, $f4b5                                   ; $51a6: $ca $b5 $f4

    ld [hl], e                                    ; $51a9: $73
    jp nc, $f75e                                  ; $51aa: $d2 $5e $f7

    inc hl                                        ; $51ad: $23
    ld e, b                                       ; $51ae: $58
    inc hl                                        ; $51af: $23
    add sp, $3c                                   ; $51b0: $e8 $3c
    dec hl                                        ; $51b2: $2b
    ld b, l                                       ; $51b3: $45
    ld a, $05                                     ; $51b4: $3e $05
    xor l                                         ; $51b6: $ad
    ret c                                         ; $51b7: $d8

    ld [$bff5], sp                                ; $51b8: $08 $f5 $bf
    ld a, [c]                                     ; $51bb: $f2
    ld d, $9d                                     ; $51bc: $16 $9d
    ld h, b                                       ; $51be: $60
    sub a                                         ; $51bf: $97
    ccf                                           ; $51c0: $3f
    adc h                                         ; $51c1: $8c
    ld h, l                                       ; $51c2: $65
    ld b, b                                       ; $51c3: $40
    inc hl                                        ; $51c4: $23
    jr jr_030_522a                                ; $51c5: $18 $63

    ld sp, $4773                                  ; $51c7: $31 $73 $47
    ld b, [hl]                                    ; $51ca: $46
    cp [hl]                                       ; $51cb: $be
    ld a, [hl-]                                   ; $51cc: $3a
    inc hl                                        ; $51cd: $23
    db $db                                        ; $51ce: $db
    push bc                                       ; $51cf: $c5
    or [hl]                                       ; $51d0: $b6
    ld a, [hl+]                                   ; $51d1: $2a
    push hl                                       ; $51d2: $e5
    ld e, d                                       ; $51d3: $5a
    ld a, [$a939]                                 ; $51d4: $fa $39 $a9
    or $d0                                        ; $51d7: $f6 $d0
    ld d, $a7                                     ; $51d9: $16 $a7
    ld a, l                                       ; $51db: $7d
    call $5c80                                    ; $51dc: $cd $80 $5c
    ld l, e                                       ; $51df: $6b
    sbc [hl]                                      ; $51e0: $9e
    sub e                                         ; $51e1: $93
    sub [hl]                                      ; $51e2: $96
    sub [hl]                                      ; $51e3: $96
    ld d, a                                       ; $51e4: $57
    scf                                           ; $51e5: $37
    push de                                       ; $51e6: $d5
    ld h, $b6                                     ; $51e7: $26 $b6
    add a                                         ; $51e9: $87

Call_030_51ea:
    inc sp                                        ; $51ea: $33
    cp d                                          ; $51eb: $ba
    ld b, [hl]                                    ; $51ec: $46
    rrca                                          ; $51ed: $0f
    ld c, b                                       ; $51ee: $48
    or c                                          ; $51ef: $b1
    ld c, e                                       ; $51f0: $4b
    or c                                          ; $51f1: $b1
    and $39                                       ; $51f2: $e6 $39
    add hl, hl                                    ; $51f4: $29
    sub [hl]                                      ; $51f5: $96
    sub [hl]                                      ; $51f6: $96
    ld d, a                                       ; $51f7: $57
    scf                                           ; $51f8: $37
    ld b, l                                       ; $51f9: $45
    ld [hl], d                                    ; $51fa: $72
    inc b                                         ; $51fb: $04
    ld h, e                                       ; $51fc: $63
    ld e, $c6                                     ; $51fd: $1e $c6
    ld [hl-], a                                   ; $51ff: $32
    and b                                         ; $5200: $a0
    sub c                                         ; $5201: $91
    db $ed                                        ; $5202: $ed
    ld h, d                                       ; $5203: $62
    ld e, e                                       ; $5204: $5b
    sub l                                         ; $5205: $95
    ld [hl], d                                    ; $5206: $72
    dec l                                         ; $5207: $2d
    db $fd                                        ; $5208: $fd
    sbc h                                         ; $5209: $9c
    inc [hl]                                      ; $520a: $34
    dec b                                         ; $520b: $05
    dec l                                         ; $520c: $2d
    add l                                         ; $520d: $85
    ld a, [$fc6b]                                 ; $520e: $fa $6b $fc
    pop de                                        ; $5211: $d1
    adc l                                         ; $5212: $8d
    ld [hl], l                                    ; $5213: $75
    ld d, e                                       ; $5214: $53
    sbc $02                                       ; $5215: $de $02
    ld e, c                                       ; $5217: $59
    ld [hl+], a                                   ; $5218: $22
    jp nc, $e79a                                  ; $5219: $d2 $9a $e7

    and h                                         ; $521c: $a4
    add hl, hl                                    ; $521d: $29
    ld l, b                                       ; $521e: $68

Call_030_521f:
    adc h                                         ; $521f: $8c
    dec de                                        ; $5220: $1b
    ld d, [hl]                                    ; $5221: $56
    ld a, [$14b4]                                 ; $5222: $fa $b4 $14
    ld [$2d2f], a                                 ; $5225: $ea $2f $2d
    xor a                                         ; $5228: $af
    ld l, [hl]                                    ; $5229: $6e

jr_030_522a:
    jp z, $9d5b                                   ; $522a: $ca $5b $9d

    ld h, b                                       ; $522d: $60
    db $fc                                        ; $522e: $fc
    halt                                          ; $522f: $76
    dec a                                         ; $5230: $3d
    ld h, b                                       ; $5231: $60
    ld e, h                                       ; $5232: $5c
    or c                                          ; $5233: $b1
    inc c                                         ; $5234: $0c
    ld l, b                                       ; $5235: $68
    sub a                                         ; $5236: $97
    adc b                                         ; $5237: $88
    or h                                          ; $5238: $b4
    and $39                                       ; $5239: $e6 $39
    ld l, c                                       ; $523b: $69
    ld a, [bc]                                    ; $523c: $0a
    ld e, d                                       ; $523d: $5a
    ld a, [bc]                                    ; $523e: $0a
    push af                                       ; $523f: $f5
    rst $00                                       ; $5240: $c7
    ret z                                         ; $5241: $c8

    db $fd                                        ; $5242: $fd
    ld bc, $7296                                  ; $5243: $01 $96 $72
    ld d, e                                       ; $5246: $53
    sbc $02                                       ; $5247: $de $02
    dec e                                         ; $5249: $1d
    cp d                                          ; $524a: $ba
    xor [hl]                                      ; $524b: $ae
    or h                                          ; $524c: $b4
    ld h, e                                       ; $524d: $63
    adc l                                         ; $524e: $8d
    push hl                                       ; $524f: $e5
    ret z                                         ; $5250: $c8

    rst $30                                       ; $5251: $f7
    or l                                          ; $5252: $b5
    and $81                                       ; $5253: $e6 $81
    cp e                                          ; $5255: $bb
    ld hl, $b1ad                                  ; $5256: $21 $ad $b1
    ret c                                         ; $5259: $d8

    inc bc                                        ; $525a: $03
    add $d1                                       ; $525b: $c6 $d1
    ld [hl], a                                    ; $525d: $77
    adc c                                         ; $525e: $89
    ld c, b                                       ; $525f: $48
    ld l, e                                       ; $5260: $6b
    sbc [hl]                                      ; $5261: $9e
    sub e                                         ; $5262: $93
    ld a, [c]                                     ; $5263: $f2
    ld d, $c7                                     ; $5264: $16 $c7
    sub l                                         ; $5266: $95
    dec [hl]                                      ; $5267: $35
    ld [bc], a                                    ; $5268: $02
    ld e, d                                       ; $5269: $5a
    call Call_030_798c                            ; $526a: $cd $8c $79
    add sp, -$05                                  ; $526d: $e8 $fb
    ld [hl], a                                    ; $526f: $77
    xor h                                         ; $5270: $ac
    sbc d                                         ; $5271: $9a
    rst $20                                       ; $5272: $e7
    and h                                         ; $5273: $a4
    ld h, l                                       ; $5274: $65
    ldh [$e1], a                                  ; $5275: $e0 $e1
    cp b                                          ; $5277: $b8
    call c, $aeb1                                 ; $5278: $dc $b1 $ae
    ld l, e                                       ; $527b: $6b
    sub a                                         ; $527c: $97
    adc b                                         ; $527d: $88
    or h                                          ; $527e: $b4
    and $39                                       ; $527f: $e6 $39
    xor c                                         ; $5281: $a9
    ld [hl], $71                                  ; $5282: $36 $71
    and a                                         ; $5284: $a7
    ld a, [de]                                    ; $5285: $1a
    and h                                         ; $5286: $a4
    ld b, a                                       ; $5287: $47
    rrca                                          ; $5288: $0f
    di                                            ; $5289: $f3
    ld d, $c7                                     ; $528a: $16 $c7
    sub l                                         ; $528c: $95
    push de                                       ; $528d: $d5
    call z, $f646                                 ; $528e: $cc $46 $f6
    ld l, c                                       ; $5291: $69
    ld e, h                                       ; $5292: $5c
    ld l, e                                       ; $5293: $6b
    sbc [hl]                                      ; $5294: $9e
    sub e                                         ; $5295: $93
    ld h, d                                       ; $5296: $62
    ld l, c                                       ; $5297: $69
    ld a, c                                       ; $5298: $79
    ld [hl], l                                    ; $5299: $75
    ld d, e                                       ; $529a: $53
    ld c, h                                       ; $529b: $4c
    or h                                          ; $529c: $b4
    ret nz                                        ; $529d: $c0

    dec [hl]                                      ; $529e: $35
    add d                                         ; $529f: $82
    ld [hl], c                                    ; $52a0: $71
    db $ed                                        ; $52a1: $ed
    ld a, [hl+]                                   ; $52a2: $2a
    or a                                          ; $52a3: $b7
    ret z                                         ; $52a4: $c8

    ld e, e                                       ; $52a5: $5b
    sbc l                                         ; $52a6: $9d
    ld h, b                                       ; $52a7: $60
    ld e, a                                       ; $52a8: $5f
    ld l, e                                       ; $52a9: $6b
    inc b                                         ; $52aa: $04
    sbc l                                         ; $52ab: $9d
    and a                                         ; $52ac: $a7
    ld c, a                                       ; $52ad: $4f
    ld l, $1f                                     ; $52ae: $2e $1f
    or a                                          ; $52b0: $b7
    rra                                           ; $52b1: $1f
    add e                                         ; $52b2: $83
    xor a                                         ; $52b3: $af
    add hl, de                                    ; $52b4: $19
    sub b                                         ; $52b5: $90
    ld l, e                                       ; $52b6: $6b
    rla                                           ; $52b7: $17
    db $db                                        ; $52b8: $db
    xor d                                         ; $52b9: $aa
    sub h                                         ; $52ba: $94
    ld l, e                                       ; $52bb: $6b
    jp hl                                         ; $52bc: $e9


    rst $20                                       ; $52bd: $e7
    and h                                         ; $52be: $a4
    ld h, l                                       ; $52bf: $65
    ld b, b                                       ; $52c0: $40
    dec hl                                        ; $52c1: $2b
    ld [hl], $42                                  ; $52c2: $36 $42
    db $fd                                        ; $52c4: $fd
    xor a                                         ; $52c5: $af
    cp h                                          ; $52c6: $bc
    dec b                                         ; $52c7: $05
    and a                                         ; $52c8: $a7
    jp z, $a90d                                   ; $52c9: $ca $0d $a9

    sbc $a5                                       ; $52cc: $de $a5
    dec d                                         ; $52ce: $15
    db $db                                        ; $52cf: $db
    push bc                                       ; $52d0: $c5
    or [hl]                                       ; $52d1: $b6
    ld a, [hl+]                                   ; $52d2: $2a
    push hl                                       ; $52d3: $e5
    ld e, d                                       ; $52d4: $5a
    ld a, [$6939]                                 ; $52d5: $fa $39 $69
    ld e, h                                       ; $52d8: $5c
    dec sp                                        ; $52d9: $3b
    sub $dc                                       ; $52da: $d6 $dc
    ld l, e                                       ; $52dc: $6b
    sub $f1                                       ; $52dd: $d6 $f1
    ld de, $6bc9                                  ; $52df: $11 $c9 $6b
    rrca                                          ; $52e2: $0f
    db $dd                                        ; $52e3: $dd
    adc [hl]                                      ; $52e4: $8e
    ld h, d                                       ; $52e5: $62
    cpl                                           ; $52e6: $2f
    add l                                         ; $52e7: $85
    ld a, [$effb]                                 ; $52e8: $fa $fb $ef
    rst $20                                       ; $52eb: $e7
    dec l                                         ; $52ec: $2d
    sbc l                                         ; $52ed: $9d
    ld h, b                                       ; $52ee: $60
    ld e, a                                       ; $52ef: $5f
    ld l, e                                       ; $52f0: $6b
    inc b                                         ; $52f1: $04
    sbc l                                         ; $52f2: $9d
    rst $10                                       ; $52f3: $d7
    ld e, b                                       ; $52f4: $58
    xor h                                         ; $52f5: $ac
    ld h, [hl]                                    ; $52f6: $66
    ld a, [$f2e4]                                 ; $52f7: $fa $e4 $f2
    db $e4                                        ; $52fa: $e4
    ld a, [hl+]                                   ; $52fb: $2a
    jp $c198                                      ; $52fc: $c3 $98 $c1


    xor d                                         ; $52ff: $aa
    add a                                         ; $5300: $87
    ccf                                           ; $5301: $3f
    ld b, [hl]                                    ; $5302: $46
    or b                                          ; $5303: $b0
    xor a                                         ; $5304: $af
    pop af                                        ; $5305: $f1
    add a                                         ; $5306: $87
    or c                                          ; $5307: $b1
    add $62                                       ; $5308: $c6 $62
    ld a, [$e78b]                                 ; $530a: $fa $8b $e7
    add h                                         ; $530d: $84
    ld e, [hl]                                    ; $530e: $5e
    sbc e                                         ; $530f: $9b
    ret c                                         ; $5310: $d8

    ld [bc], a                                    ; $5311: $02
    daa                                           ; $5312: $27
    add e                                         ; $5313: $83
    ld c, d                                       ; $5314: $4a
    pop de                                        ; $5315: $d1
    ld [bc], a                                    ; $5316: $02
    cp h                                          ; $5317: $bc
    ld [hl], c                                    ; $5318: $71
    inc c                                         ; $5319: $0c
    push hl                                       ; $531a: $e5
    ld a, c                                       ; $531b: $79
    cp [hl]                                       ; $531c: $be
    ld h, d                                       ; $531d: $62
    ld l, e                                       ; $531e: $6b
    sbc [hl]                                      ; $531f: $9e
    sub e                                         ; $5320: $93
    and [hl]                                      ; $5321: $a6
    and b                                         ; $5322: $a0
    ld sp, $7f72                                  ; $5323: $31 $72 $7f
    add b                                         ; $5326: $80
    and l                                         ; $5327: $a5
    call c, $b794                                 ; $5328: $dc $94 $b7
    ld b, a                                       ; $532b: $47
    db $fd                                        ; $532c: $fd
    db $eb                                        ; $532d: $eb
    cp c                                          ; $532e: $b9
    ld b, $5f                                     ; $532f: $06 $5f
    cp e                                          ; $5331: $bb
    ret c                                         ; $5332: $d8

    ld d, [hl]                                    ; $5333: $56
    and l                                         ; $5334: $a5
    ld e, h                                       ; $5335: $5c
    ld c, e                                       ; $5336: $4b
    ccf                                           ; $5337: $3f
    daa                                           ; $5338: $27
    dec l                                         ; $5339: $2d
    dec l                                         ; $533a: $2d
    xor a                                         ; $533b: $af
    ld l, [hl]                                    ; $533c: $6e
    jp z, Jump_030_595b                           ; $533d: $ca $5b $59

    ld [hl+], a                                   ; $5340: $22
    jp nc, $e79a                                  ; $5341: $d2 $9a $e7

    and h                                         ; $5344: $a4
    add hl, hl                                    ; $5345: $29
    ld l, b                                       ; $5346: $68
    add hl, hl                                    ; $5347: $29
    call nc, $231f                                ; $5348: $d4 $1f $23
    rst $30                                       ; $534b: $f7
    rlca                                          ; $534c: $07
    ld e, b                                       ; $534d: $58
    jp z, $b54d                                   ; $534e: $ca $4d $b5

    adc c                                         ; $5351: $89
    dec l                                         ; $5352: $2d
    ld e, c                                       ; $5353: $59
    db $ec                                        ; $5354: $ec
    add a                                         ; $5355: $87
    add c                                         ; $5356: $81
    ld sp, $0c52                                  ; $5357: $31 $52 $0c
    ccf                                           ; $535a: $3f
    bit 5, a                                      ; $535b: $cb $6f
    inc e                                         ; $535d: $1c
    push af                                       ; $535e: $f5
    add hl, hl                                    ; $535f: $29
    ld h, $9a                                     ; $5360: $26 $9a
    dec [hl]                                      ; $5362: $35
    dec c                                         ; $5363: $0d
    and b                                         ; $5364: $a0
    ld d, $e0                                     ; $5365: $16 $e0
    dec sp                                        ; $5367: $3b
    sub l                                         ; $5368: $95
    call z, Call_030_6f29                         ; $5369: $cc $29 $6f
    ld bc, $016b                                  ; $536c: $01 $6b $01
    ld l, e                                       ; $536f: $6b
    ld bc, $95c7                                  ; $5370: $01 $c7 $95
    ld a, l                                       ; $5373: $7d
    dec l                                         ; $5374: $2d
    or h                                          ; $5375: $b4
    add $22                                       ; $5376: $c6 $22
    inc [hl]                                      ; $5378: $34
    ld b, a                                       ; $5379: $47
    db $fd                                        ; $537a: $fd
    ld a, h                                       ; $537b: $7c
    sbc l                                         ; $537c: $9d
    ld h, b                                       ; $537d: $60
    ld d, $6b                                     ; $537e: $16 $6b
    db $e4                                        ; $5380: $e4
    inc e                                         ; $5381: $1c
    ld b, [hl]                                    ; $5382: $46
    adc d                                         ; $5383: $8a
    pop hl                                        ; $5384: $e1
    ld h, a                                       ; $5385: $67
    ld sp, hl                                     ; $5386: $f9
    adc l                                         ; $5387: $8d
    and e                                         ; $5388: $a3
    ld a, $45                                     ; $5389: $3e $45
    sbc $02                                       ; $538b: $de $02
    and a                                         ; $538d: $a7
    ld b, d                                       ; $538e: $42
    inc hl                                        ; $538f: $23
    xor a                                         ; $5390: $af
    ld c, l                                       ; $5391: $4d
    ld e, h                                       ; $5392: $5c
    daa                                           ; $5393: $27
    sbc b                                         ; $5394: $98
    push bc                                       ; $5395: $c5
    ld l, $bf                                     ; $5396: $2e $bf
    db $dd                                        ; $5398: $dd
    halt                                          ; $5399: $76
    ld [hl], b                                    ; $539a: $70
    dec bc                                        ; $539b: $0b
    daa                                           ; $539c: $27
    ld a, $60                                     ; $539d: $3e $60
    ld d, h                                       ; $539f: $54
    adc d                                         ; $53a0: $8a
    sub $98                                       ; $53a1: $d6 $98
    inc de                                        ; $53a3: $13
    xor d                                         ; $53a4: $aa
    dec b                                         ; $53a5: $05
    ld e, c                                       ; $53a6: $59
    ld l, h                                       ; $53a7: $6c
    ld [hl], e                                    ; $53a8: $73
    sub [hl]                                      ; $53a9: $96
    ld a, h                                       ; $53aa: $7c
    adc l                                         ; $53ab: $8d
    add hl, sp                                    ; $53ac: $39
    and c                                         ; $53ad: $a1
    ld e, d                                       ; $53ae: $5a
    ld e, c                                       ; $53af: $59
    db $ec                                        ; $53b0: $ec
    add a                                         ; $53b1: $87
    sbc l                                         ; $53b2: $9d
    ld d, a                                       ; $53b3: $57
    db $ec                                        ; $53b4: $ec
    or e                                          ; $53b5: $b3
    ld b, b                                       ; $53b6: $40
    dec l                                         ; $53b7: $2d

jr_030_53b8:
    dec e                                         ; $53b8: $1d
    call Call_000_1509                            ; $53b9: $cd $09 $15
    ld c, e                                       ; $53bc: $4b
    cp l                                          ; $53bd: $bd
    rrca                                          ; $53be: $0f
    pop de                                        ; $53bf: $d1
    ld [bc], a                                    ; $53c0: $02
    sbc l                                         ; $53c1: $9d
    ld h, b                                       ; $53c2: $60
    rst $38                                       ; $53c3: $ff
    xor [hl]                                      ; $53c4: $ae
    ccf                                           ; $53c5: $3f
    adc e                                         ; $53c6: $8b
    dec [hl]                                      ; $53c7: $35
    ld d, $b3                                     ; $53c8: $16 $b3
    ld [$3f9d], sp                                ; $53ca: $08 $9d $3f
    ld a, [hl]                                    ; $53cd: $7e
    ccf                                           ; $53ce: $3f
    ld d, [hl]                                    ; $53cf: $56
    ld e, [hl]                                    ; $53d0: $5e
    pop hl                                        ; $53d1: $e1
    ei                                            ; $53d2: $fb
    xor d                                         ; $53d3: $aa
    dec a                                         ; $53d4: $3d
    ld [hl], h                                    ; $53d5: $74
    ld b, a                                       ; $53d6: $47
    sub l                                         ; $53d7: $95
    and d                                         ; $53d8: $a2
    push bc                                       ; $53d9: $c5
    dec e                                         ; $53da: $1d
    dec hl                                        ; $53db: $2b
    ld h, e                                       ; $53dc: $63
    pop hl                                        ; $53dd: $e1
    rst $10                                       ; $53de: $d7
    ld [hl-], a                                   ; $53df: $32
    ld [hl], b                                    ; $53e0: $70
    ld d, a                                       ; $53e1: $57
    add hl, hl                                    ; $53e2: $29
    ld e, d                                       ; $53e3: $5a
    jr jr_030_53b8                                ; $53e4: $18 $d2

    add sp, $01                                   ; $53e6: $e8 $01
    push hl                                       ; $53e8: $e5
    dec l                                         ; $53e9: $2d
    dec e                                         ; $53ea: $1d
    dec l                                         ; $53eb: $2d
    halt                                          ; $53ec: $76
    and e                                         ; $53ed: $a3
    rst $30                                       ; $53ee: $f7
    cp a                                          ; $53ef: $bf
    ld a, l                                       ; $53f0: $7d
    ld e, d                                       ; $53f1: $5a
    ld b, $b4                                     ; $53f2: $06 $b4
    ld b, [hl]                                    ; $53f4: $46
    ld e, $ef                                     ; $53f5: $1e $ef
    ld a, a                                       ; $53f7: $7f
    db $ed                                        ; $53f8: $ed
    ld l, e                                       ; $53f9: $6b
    push bc                                       ; $53fa: $c5
    ld d, $d0                                     ; $53fb: $16 $d0
    inc [hl]                                      ; $53fd: $34
    rst $08                                       ; $53fe: $cf
    ld c, c                                       ; $53ff: $49
    ld a, c                                       ; $5400: $79
    dec bc                                        ; $5401: $0b
    ld e, c                                       ; $5402: $59

jr_030_5403:
    xor a                                         ; $5403: $af
    xor d                                         ; $5404: $aa
    db $f4                                        ; $5405: $f4
    add hl, hl                                    ; $5406: $29
    rst $08                                       ; $5407: $cf
    di                                            ; $5408: $f3
    ld e, l                                       ; $5409: $5d
    xor a                                         ; $540a: $af
    xor d                                         ; $540b: $aa
    db $f4                                        ; $540c: $f4
    ld l, c                                       ; $540d: $69
    rst $28                                       ; $540e: $ef
    ld d, e                                       ; $540f: $53
    dec a                                         ; $5410: $3d
    inc l                                         ; $5411: $2c
    or c                                          ; $5412: $b1
    ld b, $c6                                     ; $5413: $06 $c6
    pop de                                        ; $5415: $d1
    or l                                          ; $5416: $b5
    ld e, $6d                                     ; $5417: $1e $6d
    ld e, h                                       ; $5419: $5c
    xor e                                         ; $541a: $ab

Call_030_541b:
    ld e, $e6                                     ; $541b: $1e $e6
    ld a, c                                       ; $541d: $79
    sbc $02                                       ; $541e: $de $02
    push af                                       ; $5420: $f5
    or l                                          ; $5421: $b5
    rr a                                          ; $5422: $cb $1f
    add $32                                       ; $5424: $c6 $32
    ld [hl], b                                    ; $5426: $70
    ld d, a                                       ; $5427: $57
    add hl, hl                                    ; $5428: $29
    jp c, Jump_000_107f                           ; $5429: $da $7f $10

    or e                                          ; $542c: $b3
    jp hl                                         ; $542d: $e9


    sub e                                         ; $542e: $93
    ld a, $87                                     ; $542f: $3e $87
    ret z                                         ; $5431: $c8

    di                                            ; $5432: $f3
    cp h                                          ; $5433: $bc
    dec b                                         ; $5434: $05
    add a                                         ; $5435: $87
    inc sp                                        ; $5436: $33
    ld a, [hl-]                                   ; $5437: $3a
    cp a                                          ; $5438: $bf
    ld e, $f3                                     ; $5439: $1e $f3
    jr nz, jr_030_5403                            ; $543b: $20 $c6

    ret nz                                        ; $543d: $c0

    adc [hl]                                      ; $543e: $8e
    sub l                                         ; $543f: $95
    ld d, a                                       ; $5440: $57
    ld hl, sp-$42                                 ; $5441: $f8 $be
    halt                                          ; $5443: $76
    adc h                                         ; $5444: $8c
    db $db                                        ; $5445: $db
    ld h, a                                       ; $5446: $67
    ret                                           ; $5447: $c9


    ld l, e                                       ; $5448: $6b
    rrca                                          ; $5449: $0f
    ld l, l                                       ; $544a: $6d
    ld bc, $35f5                                  ; $544b: $01 $f5 $35
    ld b, $f5                                     ; $544e: $06 $f5
    ld h, e                                       ; $5450: $63
    ld e, h                                       ; $5451: $5c
    dec hl                                        ; $5452: $2b
    ld [hl], $e6                                  ; $5453: $36 $e6
    and c                                         ; $5455: $a1
    xor a                                         ; $5456: $af
    ld [hl-], a                                   ; $5457: $32
    adc h                                         ; $5458: $8c
    ld h, l                                       ; $5459: $65
    ld l, e                                       ; $545a: $6b
    ld e, a                                       ; $545b: $5f
    dec bc                                        ; $545c: $0b
    jp Jump_030_6358                              ; $545d: $c3 $58 $63


    or c                                          ; $5460: $b1
    rst $10                                       ; $5461: $d7
    db $fd                                        ; $5462: $fd
    ld d, h                                       ; $5463: $54
    adc d                                         ; $5464: $8a
    and [hl]                                      ; $5465: $a6
    and b                                         ; $5466: $a0
    ld e, c                                       ; $5467: $59
    add hl, hl                                    ; $5468: $29
    scf                                           ; $5469: $37
    push hl                                       ; $546a: $e5
    dec l                                         ; $546b: $2d
    ld b, a                                       ; $546c: $47
    or c                                          ; $546d: $b1
    sub a                                         ; $546e: $97
    ld b, d                                       ; $546f: $42
    db $fd                                        ; $5470: $fd
    db $e4                                        ; $5471: $e4
    xor h                                         ; $5472: $ac
    inc d                                         ; $5473: $14
    sbc l                                         ; $5474: $9d
    cp a                                          ; $5475: $bf
    ld h, d                                       ; $5476: $62
    cp e                                          ; $5477: $bb
    ret c                                         ; $5478: $d8

    ld a, [c]                                     ; $5479: $f2
    adc e                                         ; $547a: $8b

jr_030_547b:
    dec l                                         ; $547b: $2d
    rst $08                                       ; $547c: $cf
    rst $10                                       ; $547d: $d7
    jp hl                                         ; $547e: $e9


    ld bc, $68ad                                  ; $547f: $01 $ad $68
    push de                                       ; $5482: $d5
    ei                                            ; $5483: $fb
    ld e, h                                       ; $5484: $5c
    db $e3                                        ; $5485: $e3
    rrca                                          ; $5486: $0f
    ld l, c                                       ; $5487: $69
    and c                                         ; $5488: $a1
    cp c                                          ; $5489: $b9
    ret z                                         ; $548a: $c8

    rra                                           ; $548b: $1f
    jr nc, @-$0c                                  ; $548c: $30 $f2

    dec [hl]                                      ; $548e: $35
    rrca                                          ; $548f: $0f
    ld a, h                                       ; $5490: $7c
    push bc                                       ; $5491: $c5
    sub [hl]                                      ; $5492: $96
    xor $9a                                       ; $5493: $ee $9a
    inc [hl]                                      ; $5495: $34
    xor [hl]                                      ; $5496: $ae
    dec e                                         ; $5497: $1d
    ld l, e                                       ; $5498: $6b
    and l                                         ; $5499: $a5
    cp h                                          ; $549a: $bc
    di                                            ; $549b: $f3
    and h                                         ; $549c: $a4
    sbc a                                         ; $549d: $9f
    or a                                          ; $549e: $b7
    add a                                         ; $549f: $87
    or e                                          ; $54a0: $b3
    sub e                                         ; $54a1: $93
    ld a, e                                       ; $54a2: $7b
    ld a, a                                       ; $54a3: $7f
    adc d                                         ; $54a4: $8a
    jr nc, jr_030_547b                            ; $54a5: $30 $d4

    cp b                                          ; $54a7: $b8
    sub [hl]                                      ; $54a8: $96
    add $22                                       ; $54a9: $c6 $22
    sbc a                                         ; $54ab: $9f
    cp $f8                                        ; $54ac: $fe $f8
    add e                                         ; $54ae: $83
    ld c, e                                       ; $54af: $4b
    or l                                          ; $54b0: $b5
    add a                                         ; $54b1: $87
    xor [hl]                                      ; $54b2: $ae
    and e                                         ; $54b3: $a3
    push bc                                       ; $54b4: $c5
    ld [hl-], a                                   ; $54b5: $32
    and b                                         ; $54b6: $a0
    jr nz, jr_030_5535                            ; $54b7: $20 $7c

    ccf                                           ; $54b9: $3f
    rst $18                                       ; $54ba: $df
    add hl, hl                                    ; $54bb: $29
    ld a, [bc]                                    ; $54bc: $0a
    jp nc, $c3f9                                  ; $54bd: $d2 $f9 $c3

    dec bc                                        ; $54c0: $0b
    rst $10                                       ; $54c1: $d7
    inc a                                         ; $54c2: $3c
    ldh a, [$15]                                  ; $54c3: $f0 $15
    dec l                                         ; $54c5: $2d
    ld h, l                                       ; $54c6: $65
    ccf                                           ; $54c7: $3f
    inc bc                                        ; $54c8: $03
    and d                                         ; $54c9: $a2
    cp h                                          ; $54ca: $bc
    dec b                                         ; $54cb: $05
    push af                                       ; $54cc: $f5
    dec [hl]                                      ; $54cd: $35
    sub [hl]                                      ; $54ce: $96
    add hl, sp                                    ; $54cf: $39
    rst $10                                       ; $54d0: $d7
    ld l, $11                                     ; $54d1: $2e $11
    ld l, c                                       ; $54d3: $69
    call $d273                                    ; $54d4: $cd $73 $d2
    or d                                          ; $54d7: $b2
    ld hl, $7032                                  ; $54d8: $21 $32 $70

jr_030_54db:
    xor a                                         ; $54db: $af
    or e                                          ; $54dc: $b3
    ld c, e                                       ; $54dd: $4b
    res 0, b                                      ; $54de: $cb $80
    ld d, [hl]                                    ; $54e0: $56
    or h                                          ; $54e1: $b4
    sub h                                         ; $54e2: $94
    db $fd                                        ; $54e3: $fd
    inc c                                         ; $54e4: $0c
    adc b                                         ; $54e5: $88
    halt                                          ; $54e6: $76
    cp l                                          ; $54e7: $bd
    xor d                                         ; $54e8: $aa
    jp nc, $94bf                                  ; $54e9: $d2 $bf $94

    xor a                                         ; $54ec: $af
    and e                                         ; $54ed: $a3
    inc a                                         ; $54ee: $3c
    sbc $ff                                       ; $54ef: $de $ff
    jp c, $f8d7                                   ; $54f1: $da $d7 $f8

    ld b, e                                       ; $54f4: $43
    ld e, d                                       ; $54f5: $5a
    ld d, e                                       ; $54f6: $53
    jr nz, jr_030_550f                            ; $54f7: $20 $16

    rst $30                                       ; $54f9: $f7
    db $db                                        ; $54fa: $db
    push bc                                       ; $54fb: $c5
    or [hl]                                       ; $54fc: $b6
    and [hl]                                      ; $54fd: $a6
    sub c                                         ; $54fe: $91
    rst $20                                       ; $54ff: $e7
    dec l                                         ; $5500: $2d
    rst $00                                       ; $5501: $c7
    sub l                                         ; $5502: $95
    db $fd                                        ; $5503: $fd
    ld a, e                                       ; $5504: $7b
    call $8e6c                                    ; $5505: $cd $6c $8e
    ld a, [$0bc3]                                 ; $5508: $fa $c3 $0b
    sub e                                         ; $550b: $93
    dec sp                                        ; $550c: $3b
    sub $dc                                       ; $550d: $d6 $dc

jr_030_550f:
    ld l, e                                       ; $550f: $6b
    ld a, [c]                                     ; $5510: $f2
    ld h, l                                       ; $5511: $65
    db $dd                                        ; $5512: $dd
    dec d                                         ; $5513: $15
    inc [hl]                                      ; $5514: $34
    db $fd                                        ; $5515: $fd
    and l                                         ; $5516: $a5
    inc l                                         ; $5517: $2c
    sub [hl]                                      ; $5518: $96
    add c                                         ; $5519: $81
    ei                                            ; $551a: $fb
    ei                                            ; $551b: $fb
    adc e                                         ; $551c: $8b
    cp e                                          ; $551d: $bb
    ld d, l                                       ; $551e: $55
    db $10                                        ; $551f: $10
    xor d                                         ; $5520: $aa
    ld c, l                                       ; $5521: $4d
    ld l, h                                       ; $5522: $6c
    ld bc, $609d                                  ; $5523: $01 $9d $60
    ld e, a                                       ; $5526: $5f
    ld h, e                                       ; $5527: $63
    inc l                                         ; $5528: $2c
    sub $58                                       ; $5529: $d6 $58
    db $ec                                        ; $552b: $ec
    ld a, d                                       ; $552c: $7a
    ld d, l                                       ; $552d: $55
    and l                                         ; $552e: $a5
    ld a, a                                       ; $552f: $7f
    ret                                           ; $5530: $c9


    ld d, a                                       ; $5531: $57
    ld h, a                                       ; $5532: $67
    ld h, c                                       ; $5533: $61
    dec b                                         ; $5534: $05

jr_030_5535:
    ld a, l                                       ; $5535: $7d
    push de                                       ; $5536: $d5
    ei                                            ; $5537: $fb
    bit 7, [hl]                                   ; $5538: $cb $7e
    dec b                                         ; $553a: $05
    rst $10                                       ; $553b: $d7
    adc b                                         ; $553c: $88
    sub b                                         ; $553d: $90
    halt                                          ; $553e: $76
    reti                                          ; $553f: $d9


    push bc                                       ; $5540: $c5
    ld a, [hl]                                    ; $5541: $7e
    or h                                          ; $5542: $b4
    inc d                                         ; $5543: $14
    ld [$f1af], a                                 ; $5544: $ea $af $f1
    rst $10                                       ; $5547: $d7
    cp b                                          ; $5548: $b8
    ld a, [c]                                     ; $5549: $f2
    sbc l                                         ; $554a: $9d
    and d                                         ; $554b: $a2
    jr nz, jr_030_54db                            ; $554c: $20 $8d

    cp a                                          ; $554e: $bf
    ld a, a                                       ; $554f: $7f
    dec c                                         ; $5550: $0d
    cpl                                           ; $5551: $2f
    ld c, h                                       ; $5552: $4c
    ld l, $5b                                     ; $5553: $2e $5b
    ld h, e                                       ; $5555: $63
    inc c                                         ; $5556: $0c
    ld h, e                                       ; $5557: $63
    ld e, a                                       ; $5558: $5f
    ld b, h                                       ; $5559: $44
    xor a                                         ; $555a: $af
    ld b, [hl]                                    ; $555b: $46
    ld a, $6b                                     ; $555c: $3e $6b
    cp h                                          ; $555e: $bc
    ld l, [hl]                                    ; $555f: $6e
    db $e4                                        ; $5560: $e4
    dec l                                         ; $5561: $2d
    daa                                           ; $5562: $27
    db $fd                                        ; $5563: $fd
    db $fd                                        ; $5564: $fd
    cp e                                          ; $5565: $bb
    ld a, $b9                                     ; $5566: $3e $b9
    sub $58                                       ; $5568: $d6 $58
    db $e4                                        ; $556a: $e4
    dec sp                                        ; $556b: $3b
    pop bc                                        ; $556c: $c1
    add $6f                                       ; $556d: $c6 $6f
    rst $10                                       ; $556f: $d7
    ld [hl], e                                    ; $5570: $73
    inc hl                                        ; $5571: $23
    ld a, h                                       ; $5572: $7c
    ld a, a                                       ; $5573: $7f
    rst $38                                       ; $5574: $ff
    xor [hl]                                      ; $5575: $ae
    and b                                         ; $5576: $a0
    dec [hl]                                      ; $5577: $35
    ld d, $23                                     ; $5578: $16 $23
    ld a, c                                       ; $557a: $79
    add l                                         ; $557b: $85
    rst $38                                       ; $557c: $ff
    and [hl]                                      ; $557d: $a6
    cp h                                          ; $557e: $bc
    dec b                                         ; $557f: $05
    push af                                       ; $5580: $f5
    or l                                          ; $5581: $b5
    xor a                                         ; $5582: $af
    dec [hl]                                      ; $5583: $35
    add d                                         ; $5584: $82
    adc $6b                                       ; $5585: $ce $6b
    inc l                                         ; $5587: $2c
    ld b, [hl]                                    ; $5588: $46
    ld e, d                                       ; $5589: $5a
    ld sp, $908c                                  ; $558a: $31 $8c $90
    adc a                                         ; $558d: $8f
    or h                                          ; $558e: $b4
    add $5f                                       ; $558f: $c6 $5f
    and l                                         ; $5591: $a5
    cpl                                           ; $5592: $2f
    rra                                           ; $5593: $1f
    rla                                           ; $5594: $17
    ei                                            ; $5595: $fb
    ld a, c                                       ; $5596: $79
    xor h                                         ; $5597: $ac
    adc $2e                                       ; $5598: $ce $2e
    ld de, $6c69                                  ; $559a: $11 $69 $6c
    add c                                         ; $559d: $81
    dec hl                                        ; $559e: $2b
    cp c                                          ; $559f: $b9
    ld h, e                                       ; $55a0: $63
    call Call_000_26bd                            ; $55a1: $cd $bd $26
    ld l, a                                       ; $55a4: $6f
    ld bc, $609d                                  ; $55a5: $01 $9d $60
    ld d, $63                                     ; $55a8: $16 $63
    ld h, b                                       ; $55aa: $60
    rst $00                                       ; $55ab: $c7
    jp z, Jump_030_7c2b                           ; $55ac: $ca $2b $7c

    ld e, a                                       ; $55af: $5f
    or l                                          ; $55b0: $b5
    add a                                         ; $55b1: $87
    or [hl]                                       ; $55b2: $b6
    push af                                       ; $55b3: $f5
    or l                                          ; $55b4: $b5
    rr a                                          ; $55b5: $cb $1f
    add $32                                       ; $55b7: $c6 $32
    and b                                         ; $55b9: $a0
    ld h, l                                       ; $55ba: $65
    ld l, e                                       ; $55bb: $6b
    push hl                                       ; $55bc: $e5
    ld l, [hl]                                    ; $55bd: $6e
    jr c, jr_030_55c6                             ; $55be: $38 $06

    or h                                          ; $55c0: $b4
    add $eb                                       ; $55c1: $c6 $eb
    add $38                                       ; $55c3: $c6 $38
    xor h                                         ; $55c5: $ac

jr_030_55c6:
    add hl, hl                                    ; $55c6: $29
    halt                                          ; $55c7: $76
    sbc c                                         ; $55c8: $99
    di                                            ; $55c9: $f3
    push de                                       ; $55ca: $d5
    ld e, c                                       ; $55cb: $59
    jp z, $618a                                   ; $55cc: $ca $8a $61

    db $e4                                        ; $55cf: $e4
    dec l                                         ; $55d0: $2d
    ld b, a                                       ; $55d1: $47
    sub l                                         ; $55d2: $95
    and d                                         ; $55d3: $a2
    reti                                          ; $55d4: $d9


    and d                                         ; $55d5: $a2
    rlca                                          ; $55d6: $07
    ld d, a                                       ; $55d7: $57
    and l                                         ; $55d8: $a5
    ld c, a                                       ; $55d9: $4f
    ld c, e                                       ; $55da: $4b
    ccf                                           ; $55db: $3f
    ld [hl], b                                    ; $55dc: $70
    cp a                                          ; $55dd: $bf
    dec l                                         ; $55de: $2d
    sbc $df                                       ; $55df: $de $df
    rst $10                                       ; $55e1: $d7
    ld sp, hl                                     ; $55e2: $f9
    db $e3                                        ; $55e3: $e3
    or $63                                        ; $55e4: $f6 $63
    ldh a, [$97]                                  ; $55e6: $f0 $97
    ld a, d                                       ; $55e8: $7a
    sub b                                         ; $55e9: $90
    ld bc, $c9fc                                  ; $55ea: $01 $fc $c9
    ld d, l                                       ; $55ed: $55
    add [hl]                                      ; $55ee: $86
    or c                                          ; $55ef: $b1
    and d                                         ; $55f0: $a2
    cp c                                          ; $55f1: $b9
    add d                                         ; $55f2: $82
    inc [hl]                                      ; $55f3: $34
    xor [hl]                                      ; $55f4: $ae
    add l                                         ; $55f5: $85
    xor l                                         ; $55f6: $ad
    sub c                                         ; $55f7: $91
    rst $00                                       ; $55f8: $c7
    ei                                            ; $55f9: $fb
    ld e, a                                       ; $55fa: $5f
    ret                                           ; $55fb: $c9


    ld h, l                                       ; $55fc: $65
    rst $18                                       ; $55fd: $df
    push af                                       ; $55fe: $f5
    rla                                           ; $55ff: $17
    add [hl]                                      ; $5600: $86
    ld sp, $fd47                                  ; $5601: $31 $47 $fd
    cp h                                          ; $5604: $bc
    dec b                                         ; $5605: $05
    ld b, a                                       ; $5606: $47
    sub l                                         ; $5607: $95
    and d                                         ; $5608: $a2
    push bc                                       ; $5609: $c5
    ld e, l                                       ; $560a: $5d
    ld b, c                                       ; $560b: $41
    ld l, e                                       ; $560c: $6b
    inc b                                         ; $560d: $04
    ld d, h                                       ; $560e: $54
    xor a                                         ; $560f: $af
    ld l, e                                       ; $5610: $6b
    ld [hl], d                                    ; $5611: $72
    xor l                                         ; $5612: $ad
    sub c                                         ; $5613: $91
    ld [hl], e                                    ; $5614: $73
    ret nc                                        ; $5615: $d0

    adc h                                         ; $5616: $8c
    pop de                                        ; $5617: $d1
    or l                                          ; $5618: $b5
    and d                                         ; $5619: $a2
    ld e, l                                       ; $561a: $5d
    ld l, [hl]                                    ; $561b: $6e
    adc l                                         ; $561c: $8d
    ld bc, $d71f                                  ; $561d: $01 $1f $d7
    ld c, [hl]                                    ; $5620: $4e
    inc d                                         ; $5621: $14
    add e                                         ; $5622: $83
    and l                                         ; $5623: $a5
    jr z, jr_030_5695                             ; $5624: $28 $6f

    ld bc, $9547                                  ; $5626: $01 $47 $95
    and d                                         ; $5629: $a2
    add hl, hl                                    ; $562a: $29
    ld l, b                                       ; $562b: $68
    call c, $ac7e                                 ; $562c: $dc $7e $ac
    jr z, @+$48                                   ; $562f: $28 $46

    rrca                                          ; $5631: $0f
    adc e                                         ; $5632: $8b
    adc b                                         ; $5633: $88
    inc d                                         ; $5634: $14
    db $e3                                        ; $5635: $e3
    adc d                                         ; $5636: $8a
    and l                                         ; $5637: $a5
    or c                                          ; $5638: $b1
    inc d                                         ; $5639: $14
    push bc                                       ; $563a: $c5
    inc c                                         ; $563b: $0c
    sub $b8                                       ; $563c: $d6 $b8
    ld a, [hl+]                                   ; $563e: $2a
    sub h                                         ; $563f: $94
    rst $28                                       ; $5640: $ef
    ld b, [hl]                                    ; $5641: $46
    add $d2                                       ; $5642: $c6 $d2
    ld b, h                                       ; $5644: $44
    ld d, e                                       ; $5645: $53
    add hl, hl                                    ; $5646: $29
    ld e, d                                       ; $5647: $5a
    ld d, e                                       ; $5648: $53
    inc b                                         ; $5649: $04
    xor [hl]                                      ; $564a: $ae
    pop de                                        ; $564b: $d1
    inc bc                                        ; $564c: $03
    jp c, Jump_030_65a5                           ; $564d: $da $a5 $65

    ldh [$ae], a                                  ; $5650: $e0 $ae
    ld d, d                                       ; $5652: $52
    or h                                          ; $5653: $b4
    ld b, [hl]                                    ; $5654: $46
    ld b, b                                       ; $5655: $40
    ret                                           ; $5656: $c9


    or c                                          ; $5657: $b1
    cp h                                          ; $5658: $bc
    bit 1, e                                      ; $5659: $cb $4b
    xor e                                         ; $565b: $ab
    inc sp                                        ; $565c: $33
    ld a, d                                       ; $565d: $7a
    ld e, b                                       ; $565e: $58
    sbc e                                         ; $565f: $9b
    ret c                                         ; $5660: $d8

    ld [bc], a                                    ; $5661: $02
    daa                                           ; $5662: $27
    or c                                          ; $5663: $b1
    rst $30                                       ; $5664: $f7
    rst $18                                       ; $5665: $df
    xor a                                         ; $5666: $af
    ld c, l                                       ; $5667: $4d
    ld e, h                                       ; $5668: $5c
    sub [hl]                                      ; $5669: $96
    or $ef                                        ; $566a: $f6 $ef
    scf                                           ; $566c: $37
    ld [hl-], a                                   ; $566d: $32
    and h                                         ; $566e: $a4
    dec [hl]                                      ; $566f: $35
    ld d, $ab                                     ; $5670: $16 $ab
    sbc $1f                                       ; $5672: $de $1f
    ld a, [hl]                                    ; $5674: $7e
    jp nc, Jump_030_7c27                          ; $5675: $d2 $27 $7c

    ccf                                           ; $5678: $3f
    ld l, a                                       ; $5679: $6f
    ld bc, $3e27                                  ; $567a: $01 $27 $3e
    adc b                                         ; $567d: $88
    dec d                                         ; $567e: $15
    ret nz                                        ; $567f: $c0

    dec [hl]                                      ; $5680: $35
    and $45                                       ; $5681: $e6 $45
    cp $7e                                        ; $5683: $fe $7e
    inc l                                         ; $5685: $2c

jr_030_5686:
    inc bc                                        ; $5686: $03
    or $f9                                        ; $5687: $f6 $f9
    ld d, h                                       ; $5689: $54
    adc d                                         ; $568a: $8a
    and $62                                       ; $568b: $e6 $62
    ld d, b                                       ; $568d: $50
    sbc a                                         ; $568e: $9f
    cp e                                          ; $568f: $bb
    push hl                                       ; $5690: $e5
    dec l                                         ; $5691: $2d
    sbc l                                         ; $5692: $9d
    ld e, $d0                                     ; $5693: $1e $d0

jr_030_5695:
    adc d                                         ; $5695: $8a
    ld d, [hl]                                    ; $5696: $56
    cp l                                          ; $5697: $bd
    rst $08                                       ; $5698: $cf
    dec [hl]                                      ; $5699: $35
    ld l, [hl]                                    ; $569a: $6e
    ccf                                           ; $569b: $3f
    ld d, [hl]                                    ; $569c: $56
    ld l, h                                       ; $569d: $6c
    rst $00                                       ; $569e: $c7
    cp b                                          ; $569f: $b8
    ld a, l                                       ; $56a0: $7d
    xor [hl]                                      ; $56a1: $ae
    sbc l                                         ; $56a2: $9d
    ld l, d                                       ; $56a3: $6a
    and l                                         ; $56a4: $a5
    jr z, jr_030_5686                             ; $56a5: $28 $df

    ret                                           ; $56a7: $c9


    and b                                         ; $56a8: $a0
    dec d                                         ; $56a9: $15
    ld e, e                                       ; $56aa: $5b
    cp d                                          ; $56ab: $ba
    ld l, e                                       ; $56ac: $6b
    jp nc, Jump_030_76b8                          ; $56ad: $d2 $b8 $76

    xor h                                         ; $56b0: $ac
    sub l                                         ; $56b1: $95
    ld a, [c]                                     ; $56b2: $f2
    adc $93                                       ; $56b3: $ce $93
    cp $ae                                        ; $56b5: $fe $ae
    ld d, a                                       ; $56b7: $57
    ld d, l                                       ; $56b8: $55
    ld a, [$6a97]                                 ; $56b9: $fa $97 $6a
    inc de                                        ; $56bc: $13
    ld e, e                                       ; $56bd: $5b
    rst $00                                       ; $56be: $c7
    sub l                                         ; $56bf: $95
    push de                                       ; $56c0: $d5

jr_030_56c1:
    call z, Call_030_7f06                         ; $56c1: $cc $06 $7f
    ld d, h                                       ; $56c4: $54

Jump_030_56c5:
    adc a                                         ; $56c5: $8f
    ld [$bf91], a                                 ; $56c6: $ea $91 $bf
    ld d, d                                       ; $56c9: $52
    ld h, [hl]                                    ; $56ca: $66
    or b                                          ; $56cb: $b0
    add $55                                       ; $56cc: $c6 $55
    and c                                         ; $56ce: $a1
    ld a, h                                       ; $56cf: $7c
    scf                                           ; $56d0: $37
    ld [hl-], a                                   ; $56d1: $32
    sub [hl]                                      ; $56d2: $96
    ld a, [c]                                     ; $56d3: $f2
    inc a                                         ; $56d4: $3c
    ld e, a                                       ; $56d5: $5f
    cp d                                          ; $56d6: $ba
    ld e, [hl]                                    ; $56d7: $5e
    cp d                                          ; $56d8: $ba
    ld e, [hl]                                    ; $56d9: $5e
    jp c, $9680                                   ; $56da: $da $80 $96

    ld bc, $798d                                  ; $56dd: $01 $8d $79
    db $10                                        ; $56e0: $10
    dec hl                                        ; $56e1: $2b
    ld e, d                                       ; $56e2: $5a
    ret c                                         ; $56e3: $d8

    push bc                                       ; $56e4: $c5
    ld b, [hl]                                    ; $56e5: $46
    sbc l                                         ; $56e6: $9d
    sbc a                                         ; $56e7: $9f
    or a                                          ; $56e8: $b7
    daa                                           ; $56e9: $27
    add e                                         ; $56ea: $83
    ld b, [hl]                                    ; $56eb: $46
    rrca                                          ; $56ec: $0f
    ld h, d                                       ; $56ed: $62
    ld b, l                                       ; $56ee: $45
    or c                                          ; $56ef: $b1
    add $6f                                       ; $56f0: $c6 $6f
    ld l, c                                       ; $56f2: $69
    ld d, c                                       ; $56f3: $51
    call z, $aaad                                 ; $56f4: $cc $ad $aa
    ei                                            ; $56f7: $fb
    push af                                       ; $56f8: $f5
    ld l, c                                       ; $56f9: $69
    ld e, b                                       ; $56fa: $58
    ld d, l                                       ; $56fb: $55
    scf                                           ; $56fc: $37
    adc [hl]                                      ; $56fd: $8e
    ld b, [hl]                                    ; $56fe: $46
    xor d                                         ; $56ff: $aa
    db $f4                                        ; $5700: $f4
    ld l, c                                       ; $5701: $69
    ld b, l                                       ; $5702: $45
    or c                                          ; $5703: $b1
    ld e, e                                       ; $5704: $5b
    xor c                                         ; $5705: $a9
    sra b                                         ; $5706: $cb $28
    add $ed                                       ; $5708: $c6 $ed
    rst $00                                       ; $570a: $c7
    adc d                                         ; $570b: $8a
    ld h, d                                       ; $570c: $62
    db $fc                                        ; $570d: $fc
    add hl, sp                                    ; $570e: $39
    dec a                                         ; $570f: $3d
    db $f4                                        ; $5710: $f4
    xor b                                         ; $5711: $a8
    ld c, l                                       ; $5712: $4d
    ld l, h                                       ; $5713: $6c
    ld bc, $2827                                  ; $5714: $01 $27 $28
    sub $b8                                       ; $5717: $d6 $b8
    ld a, [hl+]                                   ; $5719: $2a
    xor h                                         ; $571a: $ac
    db $eb                                        ; $571b: $eb
    sbc d                                         ; $571c: $9a
    db $fd                                        ; $571d: $fd
    ld a, a                                       ; $571e: $7f
    ld d, e                                       ; $571f: $53
    ld [hl], d                                    ; $5720: $72
    xor [hl]                                      ; $5721: $ae
    jr nz, jr_030_56c1                            ; $5722: $20 $9d

    ccf                                           ; $5724: $3f
    db $fd                                        ; $5725: $fd
    ld d, b                                       ; $5726: $50
    sub l                                         ; $5727: $95
    ld a, [hl+]                                   ; $5728: $2a
    sbc d                                         ; $5729: $9a
    ld l, b                                       ; $572a: $68
    ld bc, $e8c8                                  ; $572b: $01 $c8 $e8
    db $fc                                        ; $572e: $fc
    ld a, d                                       ; $572f: $7a
    push de                                       ; $5730: $d5
    jp $c4da                                      ; $5731: $c3 $da $c4


    ld d, $59                                     ; $5734: $16 $59
    xor a                                         ; $5736: $af
    xor d                                         ; $5737: $aa
    db $f4                                        ; $5738: $f4
    ld l, c                                       ; $5739: $69
    sub a                                         ; $573a: $97
    ld b, [hl]                                    ; $573b: $46
    cp $4a                                        ; $573c: $fe $4a
    sbc c                                         ; $573e: $99
    push de                                       ; $573f: $d5
    and e                                         ; $5740: $a3
    ld a, d                                       ; $5741: $7a
    ld e, b                                       ; $5742: $58
    sub $c0                                       ; $5743: $d6 $c0
    db $f4                                        ; $5745: $f4
    ret                                           ; $5746: $c9


    push hl                                       ; $5747: $e5
    or l                                          ; $5748: $b5
    add a                                         ; $5749: $87
    or [hl]                                       ; $574a: $b6
    ld e, c                                       ; $574b: $59
    ld [hl], a                                    ; $574c: $77
    dec b                                         ; $574d: $05
    xor l                                         ; $574e: $ad
    ld de, $bd50                                  ; $574f: $11 $50 $bd
    xor [hl]                                      ; $5752: $ae
    ret                                           ; $5753: $c9


    or l                                          ; $5754: $b5
    adc [hl]                                      ; $5755: $8e
    ld [de], a                                    ; $5756: $12
    and e                                         ; $5757: $a3
    ld e, b                                       ; $5758: $58
    ld b, $70                                     ; $5759: $06 $70
    ld [hl], $e6                                  ; $575b: $36 $e6
    ld b, c                                       ; $575d: $41
    add c                                         ; $575e: $81
    and l                                         ; $575f: $a5
    dec c                                         ; $5760: $0d
    ld e, l                                       ; $5761: $5d
    add e                                         ; $5762: $83
    xor a                                         ; $5763: $af
    and l                                         ; $5764: $a5
    call $e52f                                    ; $5765: $cd $2f $e5
    dec l                                         ; $5768: $2d
    add a                                         ; $5769: $87
    inc de                                        ; $576a: $13
    jp hl                                         ; $576b: $e9


    di                                            ; $576c: $f3
    ld c, b                                       ; $576d: $48
    xor $58                                       ; $576e: $ee $58
    ld a, c                                       ; $5770: $79
    add l                                         ; $5771: $85
    rst $28                                       ; $5772: $ef
    ld l, e                                       ; $5773: $6b
    ld e, a                                       ; $5774: $5f

Call_030_5775:
    dec bc                                        ; $5775: $0b
    ld b, e                                       ; $5776: $43
    ld e, d                                       ; $5777: $5a
    ld h, e                                       ; $5778: $63
    or c                                          ; $5779: $b1
    inc c                                         ; $577a: $0c
    call c, $acb1                                 ; $577b: $dc $b1 $ac
    ld h, [hl]                                    ; $577e: $66
    ld [hl], $f8                                  ; $577f: $36 $f8
    inc hl                                        ; $5781: $23
    ld a, a                                       ; $5782: $7f
    and l                                         ; $5783: $a5
    call nc, $6e26                                ; $5784: $d4 $26 $6e
    daa                                           ; $5787: $27
    db $fd                                        ; $5788: $fd
    pop af                                        ; $5789: $f1
    add a                                         ; $578a: $87
    or h                                          ; $578b: $b4
    ld [hl], d                                    ; $578c: $72
    scf                                           ; $578d: $37
    ld b, [hl]                                    ; $578e: $46
    ld c, [hl]                                    ; $578f: $4e
    add sp, -$4b                                  ; $5790: $e8 $b5
    adc c                                         ; $5792: $89
    dec l                                         ; $5793: $2d
    daa                                           ; $5794: $27
    jp $415d                                      ; $5795: $c3 $5d $41


    push af                                       ; $5798: $f5
    ld l, $2d                                     ; $5799: $2e $2d
    inc bc                                        ; $579b: $03
    ld [hl], a                                    ; $579c: $77
    inc l                                         ; $579d: $2c
    ld c, e                                       ; $579e: $4b
    dec de                                        ; $579f: $1b
    jp nc, $9d4a                                  ; $57a0: $d2 $4a $9d

    ld a, d                                       ; $57a3: $7a
    ld l, h                                       ; $57a4: $6c
    inc bc                                        ; $57a5: $03
    ld c, d                                       ; $57a6: $4a
    xor $94                                       ; $57a7: $ee $94
    rst $00                                       ; $57a9: $c7
    ld [bc], a                                    ; $57aa: $02
    push de                                       ; $57ab: $d5
    ld e, $da                                     ; $57ac: $1e $da
    ld [bc], a                                    ; $57ae: $02
    daa                                           ; $57af: $27
    db $fd                                        ; $57b0: $fd
    push bc                                       ; $57b1: $c5
    ld e, l                                       ; $57b2: $5d
    ld a, a                                       ; $57b3: $7f
    rst $28                                       ; $57b4: $ef
    cp d                                          ; $57b5: $ba
    and b                                         ; $57b6: $a0
    sub c                                         ; $57b7: $91
    db $db                                        ; $57b8: $db
    sbc d                                         ; $57b9: $9a
    ld [bc], a                                    ; $57ba: $02
    ld sp, $e732                                  ; $57bb: $31 $32 $e7
    ld sp, hl                                     ; $57be: $f9

jr_030_57bf:
    adc [hl]                                      ; $57bf: $8e
    dec hl                                        ; $57c0: $2b
    ld c, e                                       ; $57c1: $4b
    dec de                                        ; $57c2: $1b
    ret nc                                        ; $57c3: $d0

    ld hl, sp-$23                                 ; $57c4: $f8 $dd
    ld d, d                                       ; $57c6: $52
    rst $08                                       ; $57c7: $cf
    ld sp, hl                                     ; $57c8: $f9
    ret z                                         ; $57c9: $c8

    rra                                           ; $57ca: $1f
    jr nc, jr_030_57bf                            ; $57cb: $30 $f2

    dec e                                         ; $57cd: $1d
    dec hl                                        ; $57ce: $2b
    xor a                                         ; $57cf: $af
    ldh a, [$7d]                                  ; $57d0: $f0 $7d
    push de                                       ; $57d2: $d5
    ld h, $b6                                     ; $57d3: $26 $b6
    sbc l                                         ; $57d5: $9d
    ld h, b                                       ; $57d6: $60
    ld e, a                                       ; $57d7: $5f
    dec bc                                        ; $57d8: $0b
    db $fd                                        ; $57d9: $fd
    sbc b                                         ; $57da: $98
    and e                                         ; $57db: $a3
    ld a, [hl]                                    ; $57dc: $7e
    db $ed                                        ; $57dd: $ed
    and c                                         ; $57de: $a1
    dec l                                         ; $57df: $2d
    and a                                         ; $57e0: $a7
    ld h, d                                       ; $57e1: $62
    ld [hl], d                                    ; $57e2: $72
    rst $28                                       ; $57e3: $ef
    adc a                                         ; $57e4: $8f
    and e                                         ; $57e5: $a3
    dec de                                        ; $57e6: $1b
    jp nc, Jump_030_62b8                          ; $57e7: $d2 $b8 $62

    inc c                                         ; $57ea: $0c
    ld a, [bc]                                    ; $57eb: $0a
    ld c, e                                       ; $57ec: $4b
    ld d, c                                       ; $57ed: $51
    db $ec                                        ; $57ee: $ec
    ld h, d                                       ; $57ef: $62
    dec de                                        ; $57f0: $1b
    ld b, h                                       ; $57f1: $44
    adc b                                         ; $57f2: $88
    ld c, b                                       ; $57f3: $48

Jump_030_57f4:
    ld sp, $b8d1                                  ; $57f4: $31 $d1 $b8
    ld h, d                                       ; $57f7: $62
    db $f4                                        ; $57f8: $f4
    or b                                          ; $57f9: $b0
    adc b                                         ; $57fa: $88
    ld c, b                                       ; $57fb: $48
    or c                                          ; $57fc: $b1
    add $62                                       ; $57fd: $c6 $62
    adc l                                         ; $57ff: $8d
    cp a                                          ; $5800: $bf
    add $15                                       ; $5801: $c6 $15
    ld sp, hl                                     ; $5803: $f9
    ld c, [hl]                                    ; $5804: $4e
    ld a, [$d053]                                 ; $5805: $fa $53 $d0
    ld a, [de]                                    ; $5808: $1a
    ld bc, $ebd5                                  ; $5809: $01 $d5 $eb
    sbc d                                         ; $580c: $9a
    ld e, h                                       ; $580d: $5c
    xor e                                         ; $580e: $ab
    or e                                          ; $580f: $b3
    xor e                                         ; $5810: $ab
    dec sp                                        ; $5811: $3b
    cp d                                          ; $5812: $ba
    adc l                                         ; $5813: $8d
    ld l, e                                       ; $5814: $6b
    and a                                         ; $5815: $a7
    jp z, Jump_030_7d1b                           ; $5816: $ca $1b $7d

    ld [hl-], a                                   ; $5819: $32
    rst $20                                       ; $581a: $e7
    ld a, c                                       ; $581b: $79
    dec bc                                        ; $581c: $0b
    and a                                         ; $581d: $a7
    cp h                                          ; $581e: $bc
    sbc a                                         ; $581f: $9f
    rst $20                                       ; $5820: $e7
    ld sp, hl                                     ; $5821: $f9
    ld e, h                                       ; $5822: $5c
    inc l                                         ; $5823: $2c
    ld [hl], e                                    ; $5824: $73
    xor [hl]                                      ; $5825: $ae
    jp c, $16c4                                   ; $5826: $da $c4 $16

    daa                                           ; $5829: $27
    ld [hl], l                                    ; $582a: $75
    ccf                                           ; $582b: $3f
    add $ea                                       ; $582c: $c6 $ea
    ld d, c                                       ; $582e: $51
    dec a                                         ; $582f: $3d
    inc l                                         ; $5830: $2c
    or l                                          ; $5831: $b5
    add a                                         ; $5832: $87
    or [hl]                                       ; $5833: $b6
    rst $00                                       ; $5834: $c7
    ld hl, $6d62                                  ; $5835: $21 $62 $6d
    ld h, d                                       ; $5838: $62
    ld h, d                                       ; $5839: $62
    ld h, d                                       ; $583a: $62
    dec bc                                        ; $583b: $0b
    daa                                           ; $583c: $27
    jp $415d                                      ; $583d: $c3 $5d $41


    push af                                       ; $5840: $f5
    ld l, $2d                                     ; $5841: $2e $2d
    inc bc                                        ; $5843: $03
    jp c, $bf75                                   ; $5844: $da $75 $bf

    sub c                                         ; $5847: $91
    ld hl, $1ed5                                  ; $5848: $21 $d5 $1e
    jp c, $c702                                   ; $584b: $da $02 $c7

    jp z, Jump_030_7c2b                           ; $584e: $ca $2b $7c

    ld e, a                                       ; $5851: $5f
    or l                                          ; $5852: $b5
    adc c                                         ; $5853: $89
    dec sp                                        ; $5854: $3b
    ld b, c                                       ; $5855: $41
    inc hl                                        ; $5856: $23
    ld a, a                                       ; $5857: $7f
    and l                                         ; $5858: $a5
    xor h                                         ; $5859: $ac
    call c, $466d                                 ; $585a: $dc $6d $46
    db $e4                                        ; $585d: $e4
    sub $dc                                       ; $585e: $d6 $dc
    ld d, h                                       ; $5860: $54
    sbc e                                         ; $5861: $9b
    ret c                                         ; $5862: $d8

    ld [bc], a                                    ; $5863: $02
    rst $00                                       ; $5864: $c7
    sbc d                                         ; $5865: $9a
    ld a, e                                       ; $5866: $7b
    ld c, l                                       ; $5867: $4d
    ld [hl], d                                    ; $5868: $72
    inc b                                         ; $5869: $04
    db $e3                                        ; $586a: $e3
    rrca                                          ; $586b: $0f
    ld h, e                                       ; $586c: $63
    push bc                                       ; $586d: $c5
    ld d, $06                                     ; $586e: $16 $06
    adc h                                         ; $5870: $8c
    cp h                                          ; $5871: $bc
    ld [hl], $b1                                  ; $5872: $36 $b1
    dec b                                         ; $5874: $05

jr_030_5875:
    push af                                       ; $5875: $f5
    ld hl, $ab48                                  ; $5876: $21 $48 $ab
    inc sp                                        ; $5879: $33
    ld d, d                                       ; $587a: $52
    push de                                       ; $587b: $d5
    ld b, h                                       ; $587c: $44
    ld l, l                                       ; $587d: $6d
    ld [c], a                                     ; $587e: $e2
    adc [hl]                                      ; $587f: $8e
    dec d                                         ; $5880: $15
    cp b                                          ; $5881: $b8
    jr nz, jr_030_58d8                            ; $5882: $20 $54

    jp hl                                         ; $5884: $e9


    ld d, e                                       ; $5885: $53
    ld [hl], d                                    ; $5886: $72
    reti                                          ; $5887: $d9


    ld [hl], a                                    ; $5888: $77
    jp $d7c1                                      ; $5889: $c3 $c1 $d7


    sbc d                                         ; $588c: $9a
    ld b, a                                       ; $588d: $47
    ld hl, sp-$02                                 ; $588e: $f8 $fe
    adc $43                                       ; $5890: $ce $43
    ld d, $4b                                     ; $5892: $16 $4b
    rst $38                                       ; $5894: $ff
    inc a                                         ; $5895: $3c
    dec d                                         ; $5896: $15
    sbc [hl]                                      ; $5897: $9e
    xor a                                         ; $5898: $af
    add e                                         ; $5899: $83
    ld h, c                                       ; $589a: $61
    db $ec                                        ; $589b: $ec
    ld e, b                                       ; $589c: $58
    ld a, c                                       ; $589d: $79
    add l                                         ; $589e: $85
    rst $28                                       ; $589f: $ef
    ld l, e                                       ; $58a0: $6b
    ld a, [bc]                                    ; $58a1: $0a
    ld a, [de]                                    ; $58a2: $1a
    dec a                                         ; $58a3: $3d
    ret z                                         ; $58a4: $c8

    ld a, [hl]                                    ; $58a5: $7e
    ldh [$31], a                                  ; $58a6: $e0 $31
    ld l, $6e                                     ; $58a8: $2e $6e
    ccf                                           ; $58aa: $3f
    ld a, [c]                                     ; $58ab: $f2
    ld [hl], l                                    ; $58ac: $75
    add d                                         ; $58ad: $82
    pop af                                        ; $58ae: $f1
    add a                                         ; $58af: $87
    ld sp, $c54b                                  ; $58b0: $31 $4b $c5
    dec hl                                        ; $58b3: $2b
    ld d, b                                       ; $58b4: $50
    jp hl                                         ; $58b5: $e9


    db $d3                                        ; $58b6: $d3
    adc d                                         ; $58b7: $8a
    dec l                                         ; $58b8: $2d
    inc c                                         ; $58b9: $0c
    jr jr_030_5935                                ; $58ba: $18 $79

    ld l, l                                       ; $58bc: $6d
    ld h, d                                       ; $58bd: $62
    dec bc                                        ; $58be: $0b
    push af                                       ; $58bf: $f5
    ld hl, $ab48                                  ; $58c0: $21 $48 $ab
    inc sp                                        ; $58c3: $33
    ld d, d                                       ; $58c4: $52
    push de                                       ; $58c5: $d5
    ld b, h                                       ; $58c6: $44
    ld l, l                                       ; $58c7: $6d
    ld [c], a                                     ; $58c8: $e2
    adc [hl]                                      ; $58c9: $8e
    dec d                                         ; $58ca: $15
    cp b                                          ; $58cb: $b8
    jr nz, @+$56                                  ; $58cc: $20 $54

    jp hl                                         ; $58ce: $e9


    ld d, e                                       ; $58cf: $53
    ld [hl], d                                    ; $58d0: $72
    reti                                          ; $58d1: $d9


    ld [hl], a                                    ; $58d2: $77
    jp Jump_030_5fe9                              ; $58d3: $c3 $e9 $5f


    rst $08                                       ; $58d6: $cf
    dec [hl]                                      ; $58d7: $35

jr_030_58d8:
    ld hl, sp+$5a                                 ; $58d8: $f8 $5a
    di                                            ; $58da: $f3
    ld [$dfdf], sp                                ; $58db: $08 $df $df
    ld a, c                                       ; $58de: $79
    ret z                                         ; $58df: $c8

    ld h, d                                       ; $58e0: $62
    jp hl                                         ; $58e1: $e9


    sbc a                                         ; $58e2: $9f
    and a                                         ; $58e3: $a7
    jp nz, $75f3                                  ; $58e4: $c2 $f3 $75

    jr nc, jr_030_5875                            ; $58e7: $30 $8c

    ld h, c                                       ; $58e9: $61
    ld e, c                                       ; $58ea: $59
    jp c, $d680                                   ; $58eb: $da $80 $d6

    add sp, -$79                                  ; $58ee: $e8 $87
    ld a, h                                       ; $58f0: $7c
    ld [hl], l                                    ; $58f1: $75
    ld d, $06                                     ; $58f2: $16 $06
    adc h                                         ; $58f4: $8c
    ld a, h                                       ; $58f5: $7c
    rst $00                                       ; $58f6: $c7
    jp z, Jump_030_7c2b                           ; $58f7: $ca $2b $7c

    ld e, a                                       ; $58fa: $5f
    or l                                          ; $58fb: $b5
    adc c                                         ; $58fc: $89
    dec l                                         ; $58fd: $2d
    rst $00                                       ; $58fe: $c7
    jp z, Jump_030_7c2b                           ; $58ff: $ca $2b $7c

    ld e, a                                       ; $5902: $5f
    or l                                          ; $5903: $b5
    adc c                                         ; $5904: $89
    db $eb                                        ; $5905: $eb
    db $f4                                        ; $5906: $f4
    add b                                         ; $5907: $80
    add $d8                                       ; $5908: $c6 $d8
    ld d, d                                       ; $590a: $52
    xor b                                         ; $590b: $a8
    ld e, a                                       ; $590c: $5f
    ld a, e                                       ; $590d: $7b
    ld l, b                                       ; $590e: $68
    dec bc                                        ; $590f: $0b
    daa                                           ; $5910: $27
    ld bc, $79e6                                  ; $5911: $01 $e6 $79
    ld a, $fd                                     ; $5914: $3e $fd
    inc [hl]                                      ; $5916: $34
    cp $65                                        ; $5917: $fe $65
    ld l, e                                       ; $5919: $6b
    sub a                                         ; $591a: $97
    ccf                                           ; $591b: $3f
    adc h                                         ; $591c: $8c
    inc a                                         ; $591d: $3c
    rst $08                                       ; $591e: $cf
    ld e, e                                       ; $591f: $5b
    daa                                           ; $5920: $27
    jp $415d                                      ; $5921: $c3 $5d $41


    push af                                       ; $5924: $f5
    ld l, $2d                                     ; $5925: $2e $2d
    inc bc                                        ; $5927: $03
    cp b                                          ; $5928: $b8
    cp b                                          ; $5929: $b8
    dec hl                                        ; $592a: $2b
    ld l, b                                       ; $592b: $68
    adc l                                         ; $592c: $8d
    ld b, l                                       ; $592d: $45
    call c, Call_000_3cf2                         ; $592e: $dc $f2 $3c
    rst $18                                       ; $5931: $df
    inc bc                                        ; $5932: $03
    ld h, b                                       ; $5933: $60
    daa                                           ; $5934: $27

jr_030_5935:
    rst $30                                       ; $5935: $f7
    cp $14                                        ; $5936: $fe $14
    inc [hl]                                      ; $5938: $34
    ld l, [hl]                                    ; $5939: $6e
    ccf                                           ; $593a: $3f
    ld d, [hl]                                    ; $593b: $56
    inc d                                         ; $593c: $14
    and e                                         ; $593d: $a3

Jump_030_593e:
    add a                                         ; $593e: $87
    ld b, l                                       ; $593f: $45
    ld b, h                                       ; $5940: $44
    adc d                                         ; $5941: $8a
    ld [hl], c                                    ; $5942: $71
    push bc                                       ; $5943: $c5
    jp nc, $8a58                                  ; $5944: $d2 $58 $8a

    ld [hl+], a                                   ; $5947: $22
    ld l, a                                       ; $5948: $6f
    ld bc, $3fa7                                  ; $5949: $01 $a7 $3f
    adc b                                         ; $594c: $88
    ld [hl], l                                    ; $594d: $75
    ld c, l                                       ; $594e: $4d
    adc d                                         ; $594f: $8a
    ld e, c                                       ; $5950: $59
    add hl, hl                                    ; $5951: $29
    or a                                          ; $5952: $b7
    ld e, b                                       ; $5953: $58
    sbc l                                         ; $5954: $9d
    dec d                                         ; $5955: $15
    ld e, e                                       ; $5956: $5b
    di                                            ; $5957: $f3
    ret nz                                        ; $5958: $c0

    inc bc                                        ; $5959: $03
    sub b                                         ; $595a: $90

Jump_030_595b:
    inc [hl]                                      ; $595b: $34
    ld c, $23                                     ; $595c: $0e $23
    ld a, a                                       ; $595e: $7f
    and l                                         ; $595f: $a5
    adc h                                         ; $5960: $8c
    ld e, $c4                                     ; $5961: $1e $c4
    adc d                                         ; $5963: $8a
    ld h, d                                       ; $5964: $62
    db $e4                                        ; $5965: $e4
    rrca                                          ; $5966: $0f
    and e                                         ; $5967: $a3
    or $d0                                        ; $5968: $f6 $d0

jr_030_596a:
    sbc l                                         ; $596a: $9d
    cp $20                                        ; $596b: $fe $20
    ld h, [hl]                                    ; $596d: $66
    adc h                                         ; $596e: $8c
    adc $1f                                       ; $596f: $ce $1f
    rst $10                                       ; $5971: $d7
    adc d                                         ; $5972: $8a
    db $ed                                        ; $5973: $ed
    ld h, d                                       ; $5974: $62
    db $db                                        ; $5975: $db
    cp a                                          ; $5976: $bf
    inc [hl]                                      ; $5977: $34
    ld a, [hl]                                    ; $5978: $7e
    rst $28                                       ; $5979: $ef
    sbc d                                         ; $597a: $9a
    ld e, h                                       ; $597b: $5c
    db $d3                                        ; $597c: $d3
    rra                                           ; $597d: $1f
    add e                                         ; $597e: $83
    xor d                                         ; $597f: $aa
    ld c, l                                       ; $5980: $4d
    ld l, h                                       ; $5981: $6c
    ld bc, $7759                                  ; $5982: $01 $59 $77
    dec b                                         ; $5985: $05
    xor l                                         ; $5986: $ad
    ld a, d                                       ; $5987: $7a
    cp b                                          ; $5988: $b8
    inc c                                         ; $5989: $0c
    ldh [$0c], a                                  ; $598a: $e0 $0c
    rst $10                                       ; $598c: $d7
    inc a                                         ; $598d: $3c
    ldh a, [rP1]                                  ; $598e: $f0 $00
    ld h, h                                       ; $5990: $64
    ld [hl], b                                    ; $5991: $70
    ld b, l                                       ; $5992: $45
    inc hl                                        ; $5993: $23
    ld a, a                                       ; $5994: $7f
    and l                                         ; $5995: $a5
    db $e4                                        ; $5996: $e4
    ld e, e                                       ; $5997: $5b
    ld a, l                                       ; $5998: $7d
    db $ed                                        ; $5999: $ed
    ld a, [c]                                     ; $599a: $f2
    ld d, a                                       ; $599b: $57
    ld h, e                                       ; $599c: $63
    jr jr_030_596a                                ; $599d: $18 $cb

    add b                                         ; $599f: $80
    sub [hl]                                      ; $59a0: $96
    xor l                                         ; $59a1: $ad
    dec [hl]                                      ; $59a2: $35
    rrca                                          ; $59a3: $0f
    call c, Call_030_630d                         ; $59a4: $dc $0d $63
    push de                                       ; $59a7: $d5
    ld e, l                                       ; $59a8: $5d
    ld a, a                                       ; $59a9: $7f
    add h                                         ; $59aa: $84
    ld l, $1f                                     ; $59ab: $2e $1f
    dec a                                         ; $59ad: $3d
    jr nz, jr_030_59dd                            ; $59ae: $20 $2d

    inc b                                         ; $59b0: $04
    ld b, l                                       ; $59b1: $45
    ret                                           ; $59b2: $c9


    ld h, l                                       ; $59b3: $65
    rst $18                                       ; $59b4: $df
    dec c                                         ; $59b5: $0d
    ld d, a                                       ; $59b6: $57
    ld h, b                                       ; $59b7: $60
    add hl, hl                                    ; $59b8: $29
    add hl, de                                    ; $59b9: $19
    ld e, h                                       ; $59ba: $5c
    rrca                                          ; $59bb: $0f
    sbc d                                         ; $59bc: $9a
    ld [hl], c                                    ; $59bd: $71
    db $ed                                        ; $59be: $ed
    ld h, d                                       ; $59bf: $62
    cp a                                          ; $59c0: $bf
    ld d, b                                       ; $59c1: $50

jr_030_59c2:
    inc l                                         ; $59c2: $2c
    ret nz                                        ; $59c3: $c0

    daa                                           ; $59c4: $27
    add sp, -$64                                  ; $59c5: $e8 $9c
    rst $28                                       ; $59c7: $ef
    ld d, h                                       ; $59c8: $54
    call c, $ef29                                 ; $59c9: $dc $29 $ef
    ld c, a                                       ; $59cc: $4f
    or h                                          ; $59cd: $b4
    ld h, e                                       ; $59ce: $63
    call Call_030_66bd                            ; $59cf: $cd $bd $66
    ld e, a                                       ; $59d2: $5f
    xor e                                         ; $59d3: $ab
    xor $c6                                       ; $59d4: $ee $c6
    jr jr_030_59c2                                ; $59d6: $18 $ea

    db $d3                                        ; $59d8: $d3
    ld a, [de]                                    ; $59d9: $1a
    adc e                                         ; $59da: $8b
    sub c                                         ; $59db: $91
    ccf                                           ; $59dc: $3f

jr_030_59dd:
    ld h, b                                       ; $59dd: $60
    ld l, [hl]                                    ; $59de: $6e
    ld c, d                                       ; $59df: $4a
    ld l, $5b                                     ; $59e0: $2e $5b
    dec bc                                        ; $59e2: $0b
    cp c                                          ; $59e3: $b9
    ld h, c                                       ; $59e4: $61
    xor h                                         ; $59e5: $ac
    ld a, d                                       ; $59e6: $7a
    ld c, [hl]                                    ; $59e7: $4e
    jp z, Jump_030_595b                           ; $59e8: $ca $5b $59

    ld [hl], a                                    ; $59eb: $77
    dec b                                         ; $59ec: $05
    adc l                                         ; $59ed: $8d
    cp a                                          ; $59ee: $bf
    ld a, a                                       ; $59ef: $7f
    adc l                                         ; $59f0: $8d
    ld a, c                                       ; $59f1: $79
    db $10                                        ; $59f2: $10
    dec hl                                        ; $59f3: $2b
    ld [hl], $57                                  ; $59f4: $36 $57
    inc [hl]                                      ; $59f6: $34
    rst $28                                       ; $59f7: $ef
    add a                                         ; $59f8: $87
    and l                                         ; $59f9: $a5
    adc d                                         ; $59fa: $8a
    ld l, d                                       ; $59fb: $6a
    inc de                                        ; $59fc: $13
    ld d, a                                       ; $59fd: $57
    ld e, a                                       ; $59fe: $5f
    db $e3                                        ; $59ff: $e3
    scf                                           ; $5a00: $37
    ld c, $18                                     ; $5a01: $0e $18
    db $eb                                        ; $5a03: $eb
    ld l, a                                       ; $5a04: $6f
    call $4fc3                                    ; $5a05: $cd $c3 $4f
    ld sp, $1dae                                  ; $5a08: $31 $ae $1d
    db $e3                                        ; $5a0b: $e3
    dec [hl]                                      ; $5a0c: $35
    jp hl                                         ; $5a0d: $e9


Call_030_5a0e:
    db $f4                                        ; $5a0e: $f4
    ei                                            ; $5a0f: $fb
    db $fc                                        ; $5a10: $fc
    ld a, c                                       ; $5a11: $79
    cp [hl]                                       ; $5a12: $be
    ld d, e                                       ; $5a13: $53
    sub h                                         ; $5a14: $94
    db $fd                                        ; $5a15: $fd
    sub b                                         ; $5a16: $90
    push af                                       ; $5a17: $f5
    ld [hl], l                                    ; $5a18: $75
    cp $98                                        ; $5a19: $fe $98
    rla                                           ; $5a1b: $17
    db $e3                                        ; $5a1c: $e3
    rst $08                                       ; $5a1d: $cf
    jp hl                                         ; $5a1e: $e9


    and c                                         ; $5a1f: $a1
    ld b, a                                       ; $5a20: $47
    sbc $02                                       ; $5a21: $de $02
    daa                                           ; $5a23: $27
    add e                                         ; $5a24: $83
    ld a, l                                       ; $5a25: $7d
    ld e, d                                       ; $5a26: $5a
    sbc l                                         ; $5a27: $9d
    ld sp, $620f                                  ; $5a28: $31 $0f $62
    ld e, h                                       ; $5a2b: $5c
    ret nc                                        ; $5a2c: $d0

    add hl, sp                                    ; $5a2d: $39
    cp c                                          ; $5a2e: $b9
    ld b, [hl]                                    ; $5a2f: $46
    jr nc, jr_030_5ab0                            ; $5a30: $30 $7e

    cp a                                          ; $5a32: $bf
    sub l                                         ; $5a33: $95
    cp d                                          ; $5a34: $ba
    adc h                                         ; $5a35: $8c
    ld h, d                                       ; $5a36: $62
    ld e, h                                       ; $5a37: $5c
    ld l, e                                       ; $5a38: $6b
    ld e, h                                       ; $5a39: $5c
    dec d                                         ; $5a3a: $15
    sub $75                                       ; $5a3b: $d6 $75
    call $bffe                                    ; $5a3d: $cd $fe $bf
    ld l, c                                       ; $5a40: $69
    ld b, $6e                                     ; $5a41: $06 $6e
    xor b                                         ; $5a43: $a8
    ld c, a                                       ; $5a44: $4f
    cp e                                          ; $5a45: $bb
    pop de                                        ; $5a46: $d1
    ld l, l                                       ; $5a47: $6d
    sub a                                         ; $5a48: $97
    dec [hl]                                      ; $5a49: $35
    sub [hl]                                      ; $5a4a: $96
    ld a, [hl+]                                   ; $5a4b: $2a
    adc d                                         ; $5a4c: $8a
    ld [hl], c                                    ; $5a4d: $71
    adc l                                         ; $5a4e: $8d
    ld sp, $97fc                                  ; $5a4f: $31 $fc $97
    ld l, e                                       ; $5a52: $6b
    ldh a, [rBGP]                                 ; $5a53: $f0 $47
    cp $4a                                        ; $5a55: $fe $4a
    add hl, de                                    ; $5a57: $19
    ld d, a                                       ; $5a58: $57
    xor h                                         ; $5a59: $ac
    ld a, d                                       ; $5a5a: $7a
    sbc a                                         ; $5a5b: $9f
    adc h                                         ; $5a5c: $8c
    push af                                       ; $5a5d: $f5
    dec d                                         ; $5a5e: $15
    inc sp                                        ; $5a5f: $33
    ld c, $85                                     ; $5a60: $0e $85
    inc d                                         ; $5a62: $14
    ld sp, hl                                     ; $5a63: $f9
    ld c, [hl]                                    ; $5a64: $4e
    ld a, a                                       ; $5a65: $7f
    db $10                                        ; $5a66: $10
    ld [hl], e                                    ; $5a67: $73
    ld l, e                                       ; $5a68: $6b
    sbc d                                         ; $5a69: $9a
    rst $20                                       ; $5a6a: $e7
    and h                                         ; $5a6b: $a4
    di                                            ; $5a6c: $f3
    ld [hl], a                                    ; $5a6d: $77
    or c                                          ; $5a6e: $b1
    db $ed                                        ; $5a6f: $ed
    add d                                         ; $5a70: $82
    cp a                                          ; $5a71: $bf
    cp $d6                                        ; $5a72: $fe $d6
    inc a                                         ; $5a74: $3c
    db $fc                                        ; $5a75: $fc
    inc d                                         ; $5a76: $14
    xor e                                         ; $5a77: $ab
    or e                                          ; $5a78: $b3
    ld h, e                                       ; $5a79: $63
    cp h                                          ; $5a7a: $bc
    ld h, $9d                                     ; $5a7b: $26 $9d
    ld a, [hl]                                    ; $5a7d: $7e
    sbc a                                         ; $5a7e: $9f
    ccf                                           ; $5a7f: $3f
    rst $08                                       ; $5a80: $cf
    or a                                          ; $5a81: $b7
    db $d3                                        ; $5a82: $d3
    rra                                           ; $5a83: $1f
    call nz, Call_000_079a                        ; $5a84: $c4 $9a $07
    adc h                                         ; $5a87: $8c
    adc $1f                                       ; $5a88: $ce $1f
    di                                            ; $5a8a: $f3
    jr nz, @-$18                                  ; $5a8b: $20 $e6

    ld [hl+], a                                   ; $5a8d: $22
    ld [hl], h                                    ; $5a8e: $74
    ld a, c                                       ; $5a8f: $79
    sbc $02                                       ; $5a90: $de $02
    ld e, c                                       ; $5a92: $59
    rst $30                                       ; $5a93: $f7
    dec de                                        ; $5a94: $1b
    add hl, de                                    ; $5a95: $19
    jp nc, $a6a2                                  ; $5a96: $d2 $a2 $a6

    ld l, d                                       ; $5a99: $6a
    ld l, h                                       ; $5a9a: $6c
    ld e, h                                       ; $5a9b: $5c
    inc hl                                        ; $5a9c: $23
    ld e, e                                       ; $5a9d: $5b
    ld h, e                                       ; $5a9e: $63
    ld c, [hl]                                    ; $5a9f: $4e
    db $e3                                        ; $5aa0: $e3
    jp c, Jump_000_107f                           ; $5aa1: $da $7f $10

    inc sp                                        ; $5aa4: $33
    and $a1                                       ; $5aa5: $e6 $a1
    rst $28                                       ; $5aa7: $ef
    add $20                                       ; $5aa8: $c6 $20
    db $dd                                        ; $5aaa: $dd
    add $15                                       ; $5aab: $c6 $15
    db $d3                                        ; $5aad: $d3
    rst $38                                       ; $5aae: $ff
    add b                                         ; $5aaf: $80

jr_030_5ab0:
    sub c                                         ; $5ab0: $91
    or a                                          ; $5ab1: $b7
    daa                                           ; $5ab2: $27
    ld bc, $5726                                  ; $5ab3: $01 $26 $57
    add hl, de                                    ; $5ab6: $19
    add $98                                       ; $5ab7: $c6 $98
    rlca                                          ; $5ab9: $07
    or c                                          ; $5aba: $b1
    ld [$8c6e], a                                 ; $5abb: $ea $6e $8c
    adc $5f                                       ; $5abe: $ce $5f
    jr jr_030_5af2                                ; $5ac0: $18 $30

    or a                                          ; $5ac2: $b7
    dec d                                         ; $5ac3: $15
    dec de                                        ; $5ac4: $1b
    add e                                         ; $5ac5: $83
    ld c, d                                       ; $5ac6: $4a
    xor [hl]                                      ; $5ac7: $ae
    ld [$d2ba], a                                 ; $5ac8: $ea $ba $d2
    xor h                                         ; $5acb: $ac
    pop af                                        ; $5acc: $f1
    cp d                                          ; $5acd: $ba
    or c                                          ; $5ace: $b1
    ld c, e                                       ; $5acf: $4b
    res 0, b                                      ; $5ad0: $cb $80
    sub [hl]                                      ; $5ad2: $96
    ld a, l                                       ; $5ad3: $7d
    scf                                           ; $5ad4: $37
    ld e, h                                       ; $5ad5: $5c
    jp c, $f290                                   ; $5ad6: $da $90 $f2

    ld d, $47                                     ; $5ad9: $16 $47
    ld e, l                                       ; $5adb: $5d
    rrca                                          ; $5adc: $0f
    ld c, b                                       ; $5add: $48
    rst $20                                       ; $5ade: $e7
    daa                                           ; $5adf: $27
    rst $30                                       ; $5ae0: $f7
    cp $b8                                        ; $5ae1: $fe $b8
    jr jr_030_5b1c                                ; $5ae3: $18 $37

    and h                                         ; $5ae5: $a4
    ld [hl], l                                    ; $5ae6: $75
    ld c, l                                       ; $5ae7: $4d
    xor [hl]                                      ; $5ae8: $ae
    ld e, c                                       ; $5ae9: $59
    add l                                         ; $5aea: $85
    ld sp, $42d1                                  ; $5aeb: $31 $d1 $42
    adc e                                         ; $5aee: $8b
    rlca                                          ; $5aef: $07
    and h                                         ; $5af0: $a4
    adc a                                         ; $5af1: $8f

jr_030_5af2:
    sbc [hl]                                      ; $5af2: $9e
    rst $28                                       ; $5af3: $ef
    ld [hl], h                                    ; $5af4: $74
    jp $b97f                                      ; $5af5: $c3 $7f $b9


    ld b, $7f                                     ; $5af8: $06 $7f

Jump_030_5afa:
    db $e4                                        ; $5afa: $e4
    xor a                                         ; $5afb: $af
    sub h                                         ; $5afc: $94
    add hl, hl                                    ; $5afd: $29
    ld l, b                                       ; $5afe: $68
    ld b, l                                       ; $5aff: $45
    ld h, e                                       ; $5b00: $63
    jp hl                                         ; $5b01: $e9


    cp e                                          ; $5b02: $bb
    add $b5                                       ; $5b03: $c6 $b5
    adc e                                         ; $5b05: $8b
    db $fd                                        ; $5b06: $fd
    ld b, d                                       ; $5b07: $42
    or c                                          ; $5b08: $b1
    inc c                                         ; $5b09: $0c
    ldh [$2e], a                                  ; $5b0a: $e0 $2e
    cp a                                          ; $5b0c: $bf
    ld l, c                                       ; $5b0d: $69
    ld e, h                                       ; $5b0e: $5c
    or c                                          ; $5b0f: $b1
    add d                                         ; $5b10: $82
    ld a, [$b791]                                 ; $5b11: $fa $91 $b7
    daa                                           ; $5b14: $27
    ld bc, $6726                                  ; $5b15: $01 $26 $67
    dec d                                         ; $5b18: $15
    ld b, [hl]                                    ; $5b19: $46
    ld l, l                                       ; $5b1a: $6d
    ld h, d                                       ; $5b1b: $62

jr_030_5b1c:
    dec bc                                        ; $5b1c: $0b
    ld b, a                                       ; $5b1d: $47
    cp e                                          ; $5b1e: $bb
    db $fd                                        ; $5b1f: $fd
    adc e                                         ; $5b20: $8b
    xor l                                         ; $5b21: $ad
    ld c, d                                       ; $5b22: $4a
    sbc a                                         ; $5b23: $9f
    sub d                                         ; $5b24: $92
    ld a, e                                       ; $5b25: $7b
    ld a, a                                       ; $5b26: $7f
    ld b, $6e                                     ; $5b27: $06 $6e
    ld c, b                                       ; $5b29: $48
    db $e3                                        ; $5b2a: $e3
    dec a                                         ; $5b2b: $3d
    call z, $8798                                 ; $5b2c: $cc $98 $87
    cp [hl]                                       ; $5b2f: $be
    and [hl]                                      ; $5b30: $a6
    ld b, b                                       ; $5b31: $40
    adc h                                         ; $5b32: $8c
    ld l, e                                       ; $5b33: $6b
    call $4fc3                                    ; $5b34: $cd $c3 $4f
    or c                                          ; $5b37: $b1
    and $81                                       ; $5b38: $e6 $81
    xor a                                         ; $5b3a: $af
    ld b, a                                       ; $5b3b: $47
    bit 3, e                                      ; $5b3c: $cb $5b
    ld b, a                                       ; $5b3e: $47
    ld e, l                                       ; $5b3f: $5d
    rrca                                          ; $5b40: $0f
    ld c, b                                       ; $5b41: $48
    rst $20                                       ; $5b42: $e7

Jump_030_5b43:
    daa                                           ; $5b43: $27
    sub a                                         ; $5b44: $97
    ld a, l                                       ; $5b45: $7d
    scf                                           ; $5b46: $37
    inc e                                         ; $5b47: $1c
    ld a, h                                       ; $5b48: $7c
    dec c                                         ; $5b49: $0d
    ld sp, hl                                     ; $5b4a: $f9
    ld c, l                                       ; $5b4b: $4d
    ret                                           ; $5b4c: $c9


    cp l                                          ; $5b4d: $bd
    ccf                                           ; $5b4e: $3f
    ld l, $c6                                     ; $5b4f: $2e $c6
    dec c                                         ; $5b51: $0d
    ld l, c                                       ; $5b52: $69
    ld e, h                                       ; $5b53: $5c
    sub l                                         ; $5b54: $95
    ld a, l                                       ; $5b55: $7d
    ld l, $5f                                     ; $5b56: $2e $5f
    sbc l                                         ; $5b58: $9d
    dec e                                         ; $5b59: $1d
    ld l, e                                       ; $5b5a: $6b
    inc l                                         ; $5b5b: $2c
    ld b, a                                       ; $5b5c: $47
    sbc [hl]                                      ; $5b5d: $9e
    cpl                                           ; $5b5e: $2f
    db $eb                                        ; $5b5f: $eb
    xor [hl]                                      ; $5b60: $ae
    and b                                         ; $5b61: $a0
    dec d                                         ; $5b62: $15
    ret nz                                        ; $5b63: $c0

    dec d                                         ; $5b64: $15
    adc l                                         ; $5b65: $8d
    ld h, l                                       ; $5b66: $65
    adc $55                                       ; $5b67: $ce $55
    rst $28                                       ; $5b69: $ef
    ld h, d                                       ; $5b6a: $62
    ld e, e                                       ; $5b6b: $5b
    add h                                         ; $5b6c: $84
    ld h, $1a                                     ; $5b6d: $26 $1a
    sub [hl]                                      ; $5b6f: $96
    ld e, l                                       ; $5b70: $5d
    rst $28                                       ; $5b71: $ef
    ld a, a                                       ; $5b72: $7f
    db $eb                                        ; $5b73: $eb
    sub [hl]                                      ; $5b74: $96
    ld d, [hl]                                    ; $5b75: $56
    inc d                                         ; $5b76: $14
    or e                                          ; $5b77: $b3
    adc a                                         ; $5b78: $8f
    sub l                                         ; $5b79: $95
    ld b, c                                       ; $5b7a: $41
    rst $20                                       ; $5b7b: $e7
    ld a, h                                       ; $5b7c: $7c
    rst $00                                       ; $5b7d: $c7
    sub l                                         ; $5b7e: $95
    add l                                         ; $5b7f: $85
    ld hl, $11ad                                  ; $5b80: $21 $ad $11
    ld d, b                                       ; $5b83: $50
    cp l                                          ; $5b84: $bd
    xor [hl]                                      ; $5b85: $ae
    ret                                           ; $5b86: $c9


    or l                                          ; $5b87: $b5
    inc c                                         ; $5b88: $0c
    xor b                                         ; $5b89: $a8
    ld h, h                                       ; $5b8a: $64
    ld b, b                                       ; $5b8b: $40
    cp e                                          ; $5b8c: $bb
    ret c                                         ; $5b8d: $d8

    cpl                                           ; $5b8e: $2f
    or h                                          ; $5b8f: $b4
    nop                                           ; $5b90: $00
    rst $18                                       ; $5b91: $df
    and l                                         ; $5b92: $a5
    ld e, l                                       ; $5b93: $5d
    ld l, h                                       ; $5b94: $6c
    call nc, $9d5f                                ; $5b95: $d4 $5f $9d
    sub c                                         ; $5b98: $91
    ccf                                           ; $5b99: $3f
    adc h                                         ; $5b9a: $8c
    ld d, c                                       ; $5b9b: $51
    rst $10                                       ; $5b9c: $d7
    and h                                         ; $5b9d: $a4
    ret z                                         ; $5b9e: $c8

    ld e, e                                       ; $5b9f: $5b
    push af                                       ; $5ba0: $f5
    or l                                          ; $5ba1: $b5
    ld a, a                                       ; $5ba2: $7f
    xor a                                         ; $5ba3: $af
    sbc c                                         ; $5ba4: $99
    ld sp, $b186                                  ; $5ba5: $31 $86 $b1
    add $62                                       ; $5ba8: $c6 $62
    adc l                                         ; $5baa: $8d
    ld a, [hl]                                    ; $5bab: $7e
    call c, $9df2                                 ; $5bac: $dc $f2 $9d
    ld a, d                                       ; $5baf: $7a
    rst $00                                       ; $5bb0: $c7
    or d                                          ; $5bb1: $b2
    xor a                                         ; $5bb2: $af
    dec d                                         ; $5bb3: $15
    dec l                                         ; $5bb4: $2d
    inc c                                         ; $5bb5: $0c
    ld l, c                                       ; $5bb6: $69
    adc l                                         ; $5bb7: $8d
    ld b, l                                       ; $5bb8: $45
    ld [hl], d                                    ; $5bb9: $72
    reti                                          ; $5bba: $d9


    ld e, d                                       ; $5bbb: $5a
    ld h, e                                       ; $5bbc: $63
    adc [hl]                                      ; $5bbd: $8e
    ld e, d                                       ; $5bbe: $5a
    ld b, $ee                                     ; $5bbf: $06 $ee
    ld e, b                                       ; $5bc1: $58
    ld b, [hl]                                    ; $5bc2: $46
    cp $80                                        ; $5bc3: $fe $80
    sub c                                         ; $5bc5: $91
    ld e, e                                       ; $5bc6: $5b
    cp [hl]                                       ; $5bc7: $be

Jump_030_5bc8:
    sub e                                         ; $5bc8: $93
    cp $6a                                        ; $5bc9: $fe $6a
    add $58                                       ; $5bcb: $c6 $58
    sbc $02                                       ; $5bcd: $de $02
    and a                                         ; $5bcf: $a7
    ld e, d                                       ; $5bd0: $5a
    pop de                                        ; $5bd1: $d1
    ld d, d                                       ; $5bd2: $52
    ld a, [bc]                                    ; $5bd3: $0a
    jp nz, $9457                                  ; $5bd4: $c2 $57 $94

    ld e, h                                       ; $5bd7: $5c
    and l                                         ; $5bd8: $a5
    ld d, l                                       ; $5bd9: $55
    rst $08                                       ; $5bda: $cf
    cp c                                          ; $5bdb: $b9
    ld l, e                                       ; $5bdc: $6b
    reti                                          ; $5bdd: $d9


    db $10                                        ; $5bde: $10
    add hl, de                                    ; $5bdf: $19
    cp b                                          ; $5be0: $b8
    dec de                                        ; $5be1: $1b
    inc l                                         ; $5be2: $2c
    db $ec                                        ; $5be3: $ec
    or e                                          ; $5be4: $b3
    ld a, [c]                                     ; $5be5: $f2
    ld h, l                                       ; $5be6: $65
    cp l                                          ; $5be7: $bd
    xor d                                         ; $5be8: $aa
    jp nc, Jump_000_31a7                          ; $5be9: $d2 $a7 $31

    rrca                                          ; $5bec: $0f
    adc d                                         ; $5bed: $8a
    adc $af                                       ; $5bee: $ce $af
    rst $00                                       ; $5bf0: $c7
    inc a                                         ; $5bf1: $3c
    adc b                                         ; $5bf2: $88
    dec b                                         ; $5bf3: $05
    jr c, jr_030_5c19                             ; $5bf4: $38 $23

    inc l                                         ; $5bf6: $2c
    ld b, l                                       ; $5bf7: $45
    ld a, $f2                                     ; $5bf8: $3e $f2
    add a                                         ; $5bfa: $87
    ld sp, $9aea                                  ; $5bfb: $31 $ea $9a
    inc d                                         ; $5bfe: $14
    db $d3                                        ; $5bff: $d3
    ld e, a                                       ; $5c00: $5f
    push de                                       ; $5c01: $d5
    ld [hl], l                                    ; $5c02: $75
    and l                                         ; $5c03: $a5
    sub c                                         ; $5c04: $91
    xor d                                         ; $5c05: $aa
    ld h, $6a                                     ; $5c06: $26 $6a
    rrca                                          ; $5c08: $0f
    ld l, l                                       ; $5c09: $6d
    ld bc, $7547                                  ; $5c0a: $01 $47 $75
    cp [hl]                                       ; $5c0d: $be
    jr nz, jr_030_5c84                            ; $5c0e: $20 $74

    ld a, [hl]                                    ; $5c10: $7e
    cp l                                          ; $5c11: $bd
    ld [$7261], a                                 ; $5c12: $ea $61 $72
    db $f4                                        ; $5c15: $f4
    add b                                         ; $5c16: $80
    add $d8                                       ; $5c17: $c6 $d8

jr_030_5c19:
    ld d, d                                       ; $5c19: $52
    xor b                                         ; $5c1a: $a8
    ld e, a                                       ; $5c1b: $5f
    ld a, e                                       ; $5c1c: $7b
    add sp, $4e                                   ; $5c1d: $e8 $4e
    ld a, a                                       ; $5c1f: $7f
    db $10                                        ; $5c20: $10
    ld c, e                                       ; $5c21: $4b
    dec a                                         ; $5c22: $3d
    inc h                                         ; $5c23: $24
    sbc l                                         ; $5c24: $9d
    sbc a                                         ; $5c25: $9f
    or a                                          ; $5c26: $b7
    and a                                         ; $5c27: $a7
    ccf                                           ; $5c28: $3f
    adc b                                         ; $5c29: $88
    ld d, l                                       ; $5c2a: $55
    ld [hl], a                                    ; $5c2b: $77
    ld b, l                                       ; $5c2c: $45
    add e                                         ; $5c2d: $83
    rst $28                                       ; $5c2e: $ef
    ld a, a                                       ; $5c2f: $7f
    sbc l                                         ; $5c30: $9d
    sbc a                                         ; $5c31: $9f
    ld e, h                                       ; $5c32: $5c
    rst $00                                       ; $5c33: $c7
    ld b, a                                       ; $5c34: $47
    inc h                                         ; $5c35: $24
    xor a                                         ; $5c36: $af
    dec a                                         ; $5c37: $3d
    ld [hl], h                                    ; $5c38: $74
    and a                                         ; $5c39: $a7
    ccf                                           ; $5c3a: $3f
    adc b                                         ; $5c3b: $88
    ld [hl], c                                    ; $5c3c: $71
    ld sp, $3a8e                                  ; $5c3d: $31 $8e $3a
    ld a, a                                       ; $5c40: $7f
    adc l                                         ; $5c41: $8d
    add b                                         ; $5c42: $80
    ld [$4d75], a                                 ; $5c43: $ea $75 $4d
    xor [hl]                                      ; $5c46: $ae
    ld sp, $620f                                  ; $5c47: $31 $0f $62
    rst $28                                       ; $5c4a: $ef
    cp d                                          ; $5c4b: $ba
    and b                                         ; $5c4c: $a0
    sub c                                         ; $5c4d: $91
    adc a                                         ; $5c4e: $8f
    ld l, e                                       ; $5c4f: $6b
    call z, $dd8b                                 ; $5c50: $cc $8b $dd
    ld [$62b8], sp                                ; $5c53: $08 $b8 $62
    ld b, $2b                                     ; $5c56: $06 $2b
    jr z, jr_030_5c72                             ; $5c58: $28 $18

    rst $10                                       ; $5c5a: $d7
    sbc b                                         ; $5c5b: $98
    rlca                                          ; $5c5c: $07
    or c                                          ; $5c5d: $b1
    xor d                                         ; $5c5e: $aa
    db $eb                                        ; $5c5f: $eb
    ld [hl+], a                                   ; $5c60: $22
    rra                                           ; $5c61: $1f
    rst $10                                       ; $5c62: $d7
    ld l, $2d                                     ; $5c63: $2e $2d
    inc bc                                        ; $5c65: $03
    cp b                                          ; $5c66: $b8
    xor a                                         ; $5c67: $af
    ld sp, $620f                                  ; $5c68: $31 $0f $62
    ld l, $96                                     ; $5c6b: $2e $96

Call_030_5c6d:
    add hl, sp                                    ; $5c6d: $39
    rst $10                                       ; $5c6e: $d7
    ld a, [de]                                    ; $5c6f: $1a
    adc e                                         ; $5c70: $8b
    cp h                                          ; $5c71: $bc

jr_030_5c72:
    dec b                                         ; $5c72: $05
    sbc l                                         ; $5c73: $9d
    db $fc                                        ; $5c74: $fc
    ld h, c                                       ; $5c75: $61
    adc h                                         ; $5c76: $8c
    cp d                                          ; $5c77: $ba
    ld h, $45                                     ; $5c78: $26 $45
    db $ed                                        ; $5c7a: $ed
    and c                                         ; $5c7b: $a1
    dec sp                                        ; $5c7c: $3b
    xor [hl]                                      ; $5c7d: $ae
    call z, Call_000_08a6                         ; $5c7e: $cc $a6 $08
    xor e                                         ; $5c81: $ab
    cp c                                          ; $5c82: $b9
    adc l                                         ; $5c83: $8d

jr_030_5c84:
    ld l, e                                       ; $5c84: $6b
    adc l                                         ; $5c85: $8d
    ld b, l                                       ; $5c86: $45

Jump_030_5c87:
    ret z                                         ; $5c87: $c8

    rst $00                                       ; $5c88: $c7
    push bc                                       ; $5c89: $c5
    ret c                                         ; $5c8a: $d8

    and a                                         ; $5c8b: $a7
    dec d                                         ; $5c8c: $15
    db $ed                                        ; $5c8d: $ed
    ld h, d                                       ; $5c8e: $62
    and e                                         ; $5c8f: $a3
    cp $ea                                        ; $5c90: $fe $ea
    adc h                                         ; $5c92: $8c
    db $fc                                        ; $5c93: $fc
    ld h, c                                       ; $5c94: $61
    adc h                                         ; $5c95: $8c
    cp d                                          ; $5c96: $ba
    ld h, $c5                                     ; $5c97: $26 $c5
    adc d                                         ; $5c99: $8a
    ld d, $0f                                     ; $5c9a: $16 $0f
    ld a, l                                       ; $5c9c: $7d
    ld e, h                                       ; $5c9d: $5c
    dec sp                                        ; $5c9e: $3b
    sub $4a                                       ; $5c9f: $d6 $4a
    ld a, c                                       ; $5ca1: $79
    rst $20                                       ; $5ca2: $e7
    ld c, c                                       ; $5ca3: $49
    cp a                                          ; $5ca4: $bf
    ld [hl], $71                                  ; $5ca5: $36 $71
    ld b, a                                       ; $5ca7: $47
    pop de                                        ; $5ca8: $d1
    or d                                          ; $5ca9: $b2
    or l                                          ; $5caa: $b5
    add $1c                                       ; $5cab: $c6 $1c
    or l                                          ; $5cad: $b5
    inc c                                         ; $5cae: $0c
    ld l, b                                       ; $5caf: $68
    rst $10                                       ; $5cb0: $d7

Jump_030_5cb1:
    ld e, l                                       ; $5cb1: $5d
    ld b, c                                       ; $5cb2: $41
    dec hl                                        ; $5cb3: $2b
    add b                                         ; $5cb4: $80
    rlc b                                         ; $5cb5: $cb $00
    adc $56                                       ; $5cb7: $ce $56
    inc c                                         ; $5cb9: $0c
    inc hl                                        ; $5cba: $23
    ld l, [hl]                                    ; $5cbb: $6e
    db $d3                                        ; $5cbc: $d3
    daa                                           ; $5cbd: $27
    sub a                                         ; $5cbe: $97
    xor a                                         ; $5cbf: $af
    ld l, b                                       ; $5cc0: $68
    db $e4                                        ; $5cc1: $e4
    xor a                                         ; $5cc2: $af
    sub h                                         ; $5cc3: $94
    dec [hl]                                      ; $5cc4: $35
    rrca                                          ; $5cc5: $0f
    ld a, h                                       ; $5cc6: $7c
    ld l, c                                       ; $5cc7: $69
    ld b, e                                       ; $5cc8: $43
    rst $10                                       ; $5cc9: $d7
    jr c, @+$34                                   ; $5cca: $38 $32

    ld a, [c]                                     ; $5ccc: $f2
    ret nz                                        ; $5ccd: $c0

    rst $30                                       ; $5cce: $f7
    ld l, e                                       ; $5ccf: $6b
    inc de                                        ; $5cd0: $13
    ld [hl], a                                    ; $5cd1: $77
    jp nc, Jump_030_631f                          ; $5cd2: $d2 $1f $63

    cp e                                          ; $5cd5: $bb
    ret c                                         ; $5cd6: $d8

    ld a, [hl-]                                   ; $5cd7: $3a
    ld a, a                                       ; $5cd8: $7f
    rst $00                                       ; $5cd9: $c7
    ld a, [de]                                    ; $5cda: $1a
    res 2, c                                      ; $5cdb: $cb $91
    rst $10                                       ; $5cdd: $d7
    ld h, $b6                                     ; $5cde: $26 $b6
    ld b, a                                       ; $5ce0: $47
    cp h                                          ; $5ce1: $bc
    sbc a                                         ; $5ce2: $9f
    db $fd                                        ; $5ce3: $fd
    ret nz                                        ; $5ce4: $c0

    ld l, e                                       ; $5ce5: $6b
    inc de                                        ; $5ce6: $13
    ld d, a                                       ; $5ce7: $57
    ld e, a                                       ; $5ce8: $5f
    ei                                            ; $5ce9: $fb
    ld a, [de]                                    ; $5cea: $1a
    di                                            ; $5ceb: $f3
    jr nz, jr_030_5d54                            ; $5cec: $20 $66

    ld b, h                                       ; $5cee: $44
    ld a, [$30dc]                                 ; $5cef: $fa $dc $30
    sub $58                                       ; $5cf2: $d6 $58
    call z, $fb20                                 ; $5cf4: $cc $20 $fb
    add c                                         ; $5cf7: $81
    di                                            ; $5cf8: $f3
    dec sp                                        ; $5cf9: $3b
    dec de                                        ; $5cfa: $1b
    jr nc, jr_030_5d6c                            ; $5cfb: $30 $6f

    ld bc, $3ca7                                  ; $5cfd: $01 $a7 $3c
    ld d, $68                                     ; $5d00: $16 $68
    ld [hl], $45                                  ; $5d02: $36 $45
    ld e, b                                       ; $5d04: $58
    call Call_030_5c6d                            ; $5d05: $cd $6d $5c
    ld l, e                                       ; $5d08: $6b
    inc l                                         ; $5d09: $2c
    ld b, d                                       ; $5d0a: $42
    ld a, $2e                                     ; $5d0b: $3e $2e
    add $3e                                       ; $5d0d: $c6 $3e
    xor l                                         ; $5d0f: $ad
    ld l, b                                       ; $5d10: $68
    rla                                           ; $5d11: $17
    dec de                                        ; $5d12: $1b

jr_030_5d13:
    push af                                       ; $5d13: $f5
    ld d, a                                       ; $5d14: $57
    ld h, a                                       ; $5d15: $67
    db $e4                                        ; $5d16: $e4
    rrca                                          ; $5d17: $0f
    ld h, e                                       ; $5d18: $63
    call nc, Call_000_2935                        ; $5d19: $d4 $35 $29
    add $ed                                       ; $5d1c: $c6 $ed
    rst $00                                       ; $5d1e: $c7
    adc d                                         ; $5d1f: $8a
    halt                                          ; $5d20: $76
    dec a                                         ; $5d21: $3d
    jr z, jr_030_5d33                             ; $5d22: $28 $0f

    ld a, l                                       ; $5d24: $7d
    ld hl, sp+$49                                 ; $5d25: $f8 $49
    adc $91                                       ; $5d27: $ce $91
    ld h, $1a                                     ; $5d29: $26 $1a
    sub [hl]                                      ; $5d2b: $96
    reti                                          ; $5d2c: $d9


    ld l, [hl]                                    ; $5d2d: $6e
    ld [hl], h                                    ; $5d2e: $74
    ld e, e                                       ; $5d2f: $5b
    push af                                       ; $5d30: $f5
    sbc h                                         ; $5d31: $9c
    ld b, e                                       ; $5d32: $43

jr_030_5d33:
    cp [hl]                                       ; $5d33: $be
    sub e                                         ; $5d34: $93
    cp $1a                                        ; $5d35: $fe $1a
    db $fd                                        ; $5d37: $fd
    ret nc                                        ; $5d38: $d0

    ld [hl-], a                                   ; $5d39: $32
    ld [hl], b                                    ; $5d3a: $70
    rst $00                                       ; $5d3b: $c7
    ld [hl-], a                                   ; $5d3c: $32
    ld b, l                                       ; $5d3d: $45
    ld e, b                                       ; $5d3e: $58
    adc l                                         ; $5d3f: $8d
    ld hl, $6b8d                                  ; $5d40: $21 $8d $6b
    call z, $f22b                                 ; $5d43: $cc $2b $f2
    ld e, l                                       ; $5d46: $5d
    ld e, d                                       ; $5d47: $5a
    ld b, $ee                                     ; $5d48: $06 $ee
    ld e, b                                       ; $5d4a: $58
    add $32                                       ; $5d4b: $c6 $32
    rst $20                                       ; $5d4d: $e7
    add [hl]                                      ; $5d4e: $86
    sub h                                         ; $5d4f: $94
    or a                                          ; $5d50: $b7
    ld e, c                                       ; $5d51: $59
    xor a                                         ; $5d52: $af
    xor d                                         ; $5d53: $aa

jr_030_5d54:
    db $f4                                        ; $5d54: $f4
    ld l, c                                       ; $5d55: $69
    rst $10                                       ; $5d56: $d7
    ei                                            ; $5d57: $fb
    rst $18                                       ; $5d58: $df
    jr nc, jr_030_5d9d                            ; $5d59: $30 $42

    rst $20                                       ; $5d5b: $e7
    rst $10                                       ; $5d5c: $d7
    ld h, e                                       ; $5d5d: $63
    ld e, $c4                                     ; $5d5e: $1e $c4
    ld a, [hl-]                                   ; $5d60: $3a
    dec a                                         ; $5d61: $3d
    ld c, b                                       ; $5d62: $48
    and a                                         ; $5d63: $a7
    ld h, c                                       ; $5d64: $61
    push de                                       ; $5d65: $d5
    ei                                            ; $5d66: $fb
    cp e                                          ; $5d67: $bb
    ret c                                         ; $5d68: $d8

    xor b                                         ; $5d69: $a8
    cp a                                          ; $5d6a: $bf
    ld a, [hl-]                                   ; $5d6b: $3a

jr_030_5d6c:
    inc hl                                        ; $5d6c: $23
    ld a, a                                       ; $5d6d: $7f
    jr jr_030_5d13                                ; $5d6e: $18 $a3

    xor [hl]                                      ; $5d70: $ae
    ld c, c                                       ; $5d71: $49
    ld d, c                                       ; $5d72: $51
    ld a, e                                       ; $5d73: $7b
    add sp, -$16                                  ; $5d74: $e8 $ea
    ld l, e                                       ; $5d76: $6b
    push hl                                       ; $5d77: $e5
    ld l, [hl]                                    ; $5d78: $6e
    jr c, @-$43                                   ; $5d79: $38 $bb

    ret c                                         ; $5d7b: $d8

    and d                                         ; $5d7c: $a2
    db $db                                        ; $5d7d: $db
    ld [$fe0c], a                                 ; $5d7e: $ea $0c $fe
    xor h                                         ; $5d81: $ac
    jp nz, Jump_030_5cb1                          ; $5d82: $c2 $b1 $5c

    rst $10                                       ; $5d85: $d7
    jp z, $fedd                                   ; $5d86: $ca $dd $fe

    cp a                                          ; $5d89: $bf
    ld l, c                                       ; $5d8a: $69
    ld e, h                                       ; $5d8b: $5c
    cp $b1                                        ; $5d8c: $fe $b1
    xor [hl]                                      ; $5d8e: $ae
    ld l, e                                       ; $5d8f: $6b
    and d                                         ; $5d90: $a2
    ld h, l                                       ; $5d91: $65
    ld l, e                                       ; $5d92: $6b
    push hl                                       ; $5d93: $e5
    ld l, [hl]                                    ; $5d94: $6e
    cp b                                          ; $5d95: $b8
    add $bb                                       ; $5d96: $c6 $bb
    and [hl]                                      ; $5d98: $a6
    db $db                                        ; $5d99: $db
    ld [$48ec], a                                 ; $5d9a: $ea $ec $48

jr_030_5d9d:
    xor b                                         ; $5d9d: $a8
    ld d, d                                       ; $5d9e: $52
    ld b, l                                       ; $5d9f: $45
    db $fc                                        ; $5da0: $fc
    cp c                                          ; $5da1: $b9
    sub $3c                                       ; $5da2: $d6 $3c
    ldh a, [$b1]                                  ; $5da4: $f0 $b1
    call z, Call_030_7cb9                         ; $5da6: $cc $b9 $7c
    push bc                                       ; $5da9: $c5
    ld a, [c]                                     ; $5daa: $f2
    inc a                                         ; $5dab: $3c
    sbc a                                         ; $5dac: $9f
    add b                                         ; $5dad: $80
    sbc l                                         ; $5dae: $9d
    sbc h                                         ; $5daf: $9c
    ld a, [hl]                                    ; $5db0: $7e
    ld a, [de]                                    ; $5db1: $1a
    rst $38                                       ; $5db2: $ff
    inc b                                         ; $5db3: $04
    db $ec                                        ; $5db4: $ec
    add hl, sp                                    ; $5db5: $39
    ld [$2de7], a                                 ; $5db6: $ea $e7 $2d
    rst $00                                       ; $5db9: $c7
    sbc b                                         ; $5dba: $98
    ld [hl], e                                    ; $5dbb: $73
    ld sp, hl                                     ; $5dbc: $f9
    adc d                                         ; $5dbd: $8a
    dec l                                         ; $5dbe: $2d
    inc bc                                        ; $5dbf: $03
    rrca                                          ; $5dc0: $0f
    ld l, e                                       ; $5dc1: $6b
    rrca                                          ; $5dc2: $0f
    ld l, l                                       ; $5dc3: $6d
    ld bc, $5d47                                  ; $5dc4: $01 $47 $5d
    rrca                                          ; $5dc7: $0f
    ld c, b                                       ; $5dc8: $48
    rst $20                                       ; $5dc9: $e7
    rst $10                                       ; $5dca: $d7
    xor e                                         ; $5dcb: $ab
    ld e, $26                                     ; $5dcc: $1e $26
    rst $00                                       ; $5dce: $c7
    inc a                                         ; $5dcf: $3c
    adc b                                         ; $5dd0: $88
    ld sp, $620f                                  ; $5dd1: $31 $0f $62
    ld d, l                                       ; $5dd4: $55
    rst $10                                       ; $5dd5: $d7
    ld b, l                                       ; $5dd6: $45
    rst $20                                       ; $5dd7: $e7
    adc a                                         ; $5dd8: $8f
    ld l, e                                       ; $5dd9: $6b
    rla                                           ; $5dda: $17
    ei                                            ; $5ddb: $fb
    add l                                         ; $5ddc: $85
    ld h, d                                       ; $5ddd: $62
    add hl, de                                    ; $5dde: $19
    ret nz                                        ; $5ddf: $c0

    ld a, l                                       ; $5de0: $7d
    adc l                                         ; $5de1: $8d
    ld a, c                                       ; $5de2: $79
    db $10                                        ; $5de3: $10
    ld [hl], e                                    ; $5de4: $73
    or c                                          ; $5de5: $b1
    call z, Call_000_3eb9                         ; $5de6: $cc $b9 $3e
    xor l                                         ; $5de9: $ad
    or c                                          ; $5dea: $b1
    ret z                                         ; $5deb: $c8

    ld [hl], a                                    ; $5dec: $77
    ld [de], a                                    ; $5ded: $12
    and h                                         ; $5dee: $a4
    ld a, [bc]                                    ; $5def: $0a
    ld [$5dfc], a                                 ; $5df0: $ea $fc $5d
    jp c, Jump_030_46c5                           ; $5df3: $da $c5 $46

    db $fd                                        ; $5df6: $fd
    adc c                                         ; $5df7: $89
    halt                                          ; $5df8: $76
    ld l, c                                       ; $5df9: $69
    add hl, de                                    ; $5dfa: $19
    cp b                                          ; $5dfb: $b8
    ld h, e                                       ; $5dfc: $63
    add hl, de                                    ; $5dfd: $19
    res 3, h                                      ; $5dfe: $cb $9c
    dec hl                                        ; $5e00: $2b
    cp c                                          ; $5e01: $b9
    db $eb                                        ; $5e02: $eb
    xor [hl]                                      ; $5e03: $ae
    and b                                         ; $5e04: $a0
    pop bc                                        ; $5e05: $c1
    rst $10                                       ; $5e06: $d7
    inc l                                         ; $5e07: $2c
    sbc l                                         ; $5e08: $9d
    ld [hl], $74                                  ; $5e09: $36 $74
    ld c, l                                       ; $5e0b: $4d
    sbc a                                         ; $5e0c: $9f
    ld e, h                                       ; $5e0d: $5c
    dec sp                                        ; $5e0e: $3b
    ld [de], a                                    ; $5e0f: $12
    xor d                                         ; $5e10: $aa
    ld d, h                                       ; $5e11: $54
    ld de, $ae7f                                  ; $5e12: $11 $7f $ae
    adc c                                         ; $5e15: $89
    halt                                          ; $5e16: $76
    ld [hl+], a                                   ; $5e17: $22
    ld e, [hl]                                    ; $5e18: $5e
    xor a                                         ; $5e19: $af
    ld e, b                                       ; $5e1a: $58
    db $ec                                        ; $5e1b: $ec
    add sp, $62                                   ; $5e1c: $e8 $62
    sub l                                         ; $5e1e: $95
    ld c, d                                       ; $5e1f: $4a
    sbc $02                                       ; $5e20: $de $02
    add a                                         ; $5e22: $87
    sub a                                         ; $5e23: $97
    rst $20                                       ; $5e24: $e7
    ld sp, $ab2c                                  ; $5e25: $31 $2c $ab
    sbc c                                         ; $5e28: $99
    dec c                                         ; $5e29: $0d
    cp $2e                                        ; $5e2a: $fe $2e
    add hl, sp                                    ; $5e2c: $39
    add hl, de                                    ; $5e2d: $19
    cp $9d                                        ; $5e2e: $fe $9d
    adc b                                         ; $5e30: $88

Jump_030_5e31:
    rst $10                                       ; $5e31: $d7
    dec hl                                        ; $5e32: $2b
    ld d, $3b                                     ; $5e33: $16 $3b
    cp d                                          ; $5e35: $ba
    ld e, b                                       ; $5e36: $58
    and l                                         ; $5e37: $a5

Call_030_5e38:
    ld [hl-], a                                   ; $5e38: $32
    ld l, [hl]                                    ; $5e39: $6e
    ccf                                           ; $5e3a: $3f
    ld d, [hl]                                    ; $5e3b: $56
    or h                                          ; $5e3c: $b4
    db $eb                                        ; $5e3d: $eb
    ld b, c                                       ; $5e3e: $41
    ld d, e                                       ; $5e3f: $53
    ld a, e                                       ; $5e40: $7b
    ld l, b                                       ; $5e41: $68
    dec bc                                        ; $5e42: $0b
    push af                                       ; $5e43: $f5
    or l                                          ; $5e44: $b5
    xor a                                         ; $5e45: $af
    ld [hl], c                                    ; $5e46: $71
    ld [hl], h                                    ; $5e47: $74
    jp Jump_000_0535                              ; $5e48: $c3 $35 $05


    ld h, d                                       ; $5e4b: $62
    adc [hl]                                      ; $5e4c: $8e
    ld a, [$89b5]                                 ; $5e4d: $fa $b5 $89
    dec l                                         ; $5e50: $2d
    daa                                           ; $5e51: $27
    db $fd                                        ; $5e52: $fd
    ld a, l                                       ; $5e53: $7d
    adc l                                         ; $5e54: $8d
    ccf                                           ; $5e55: $3f

jr_030_5e56:
    and h                                         ; $5e56: $a4
    dec [hl]                                      ; $5e57: $35

jr_030_5e58:
    ld d, $6b                                     ; $5e58: $16 $6b
    db $e4                                        ; $5e5a: $e4
    call c, $ae35                                 ; $5e5b: $dc $35 $ae
    sub c                                         ; $5e5e: $91
    xor d                                         ; $5e5f: $aa
    ld h, $92                                     ; $5e60: $26 $92
    dec sp                                        ; $5e62: $3b
    sub $dc                                       ; $5e63: $d6 $dc
    ld l, e                                       ; $5e65: $6b
    sub d                                         ; $5e66: $92
    jp $b4b2                                      ; $5e67: $c3 $b2 $b4


    ld bc, $45cd                                  ; $5e6a: $01 $cd $45
    cp $80                                        ; $5e6d: $fe $80
    sub c                                         ; $5e6f: $91
    rst $28                                       ; $5e70: $ef
    ld e, b                                       ; $5e71: $58
    ld a, c                                       ; $5e72: $79
    add l                                         ; $5e73: $85
    rst $28                                       ; $5e74: $ef
    dec hl                                        ; $5e75: $2b
    rst $18                                       ; $5e76: $df
    ld c, c                                       ; $5e77: $49
    ld a, a                                       ; $5e78: $7f
    ld h, c                                       ; $5e79: $61
    ld c, b                                       ; $5e7a: $48
    set 0, b                                      ; $5e7b: $cb $c0
    ld e, l                                       ; $5e7d: $5d
    and l                                         ; $5e7e: $a5
    ld l, b                                       ; $5e7f: $68

Call_030_5e80:
    and c                                         ; $5e80: $a1
    sub c                                         ; $5e81: $91
    ccf                                           ; $5e82: $3f
    ld h, b                                       ; $5e83: $60
    inc [hl]                                      ; $5e84: $34
    add e                                         ; $5e85: $83
    dec [hl]                                      ; $5e86: $35
    xor [hl]                                      ; $5e87: $ae
    ld a, [bc]                                    ; $5e88: $0a
    push hl                                       ; $5e89: $e5
    cp e                                          ; $5e8a: $bb
    sub c                                         ; $5e8b: $91
    or c                                          ; $5e8c: $b1
    ld d, h                                       ; $5e8d: $54
    sbc e                                         ; $5e8e: $9b
    ret c                                         ; $5e8f: $d8

    ld [bc], a                                    ; $5e90: $02
    dec e                                         ; $5e91: $1d
    ld a, [c]                                     ; $5e92: $f2
    sbc l                                         ; $5e93: $9d

jr_030_5e94:
    ld [bc], a                                    ; $5e94: $02
    ld h, c                                       ; $5e95: $61
    adc $c7                                       ; $5e96: $ce $c7
    inc a                                         ; $5e98: $3c
    adc b                                         ; $5e99: $88
    reti                                          ; $5e9a: $d9


    ret z                                         ; $5e9b: $c8

    rra                                           ; $5e9c: $1f
    jr nc, jr_030_5e56                            ; $5e9d: $30 $b7

    jr jr_030_5e58                                ; $5e9f: $18 $b7

    rra                                           ; $5ea1: $1f
    dec hl                                        ; $5ea2: $2b
    ld [hl], $7a                                  ; $5ea3: $36 $7a
    ldh [$e3], a                                  ; $5ea5: $e0 $e3
    ld [hl], a                                    ; $5ea7: $77
    dec bc                                        ; $5ea8: $0b
    ld a, [c]                                     ; $5ea9: $f2
    rst $30                                       ; $5eaa: $f7
    ld e, a                                       ; $5eab: $5f
    add l                                         ; $5eac: $85
    xor d                                         ; $5ead: $aa
    ld c, l                                       ; $5eae: $4d
    ld l, h                                       ; $5eaf: $6c
    ld bc, $9ac7                                  ; $5eb0: $01 $c7 $9a
    ld a, e                                       ; $5eb3: $7b
    ld c, l                                       ; $5eb4: $4d
    ld l, l                                       ; $5eb5: $6d
    ld [c], a                                     ; $5eb6: $e2
    ld [$0ddf], a                                 ; $5eb7: $ea $df $0d
    and a                                         ; $5eba: $a7
    ld [$b9ab], sp                                ; $5ebb: $08 $ab $b9
    adc l                                         ; $5ebe: $8d
    ld l, e                                       ; $5ebf: $6b
    and h                                         ; $5ec0: $a4
    dec [hl]                                      ; $5ec1: $35
    ld a, [hl]                                    ; $5ec2: $7e
    ld h, e                                       ; $5ec3: $63
    db $f4                                        ; $5ec4: $f4
    pop de                                        ; $5ec5: $d1
    sub e                                         ; $5ec6: $93
    db $eb                                        ; $5ec7: $eb
    ld h, b                                       ; $5ec8: $60
    ld b, l                                       ; $5ec9: $45
    jp hl                                         ; $5eca: $e9


    ld d, a                                       ; $5ecb: $57
    inc sp                                        ; $5ecc: $33
    or a                                          ; $5ecd: $b7
    db $eb                                        ; $5ece: $eb
    ld a, l                                       ; $5ecf: $7d
    jp nc, $a032                                  ; $5ed0: $d2 $32 $a0

    ld de, $62cc                                  ; $5ed3: $11 $cc $62
    ldh a, [$c7]                                  ; $5ed6: $f0 $c7
    db $dd                                        ; $5ed8: $dd
    ld e, b                                       ; $5ed9: $58
    ld a, c                                       ; $5eda: $79
    sbc [hl]                                      ; $5edb: $9e
    or a                                          ; $5edc: $b7
    ld e, c                                       ; $5edd: $59
    ld l, h                                       ; $5ede: $6c
    and b                                         ; $5edf: $a0
    jp c, $16c4                                   ; $5ee0: $da $c4 $16

    and a                                         ; $5ee3: $a7
    ccf                                           ; $5ee4: $3f
    adc b                                         ; $5ee5: $88
    add hl, de                                    ; $5ee6: $19

jr_030_5ee7:
    and e                                         ; $5ee7: $a3
    di                                            ; $5ee8: $f3
    rst $20                                       ; $5ee9: $e7
    halt                                          ; $5eea: $76
    cp l                                          ; $5eeb: $bd
    ld c, a                                       ; $5eec: $4f
    or a                                          ; $5eed: $b7
    pop bc                                        ; $5eee: $c1
    rst $10                                       ; $5eef: $d7
    ret c                                         ; $5ef0: $d8

    jr jr_030_5ee7                                ; $5ef1: $18 $f4

    ret nc                                        ; $5ef3: $d0

    or l                                          ; $5ef4: $b5
    ld a, [hl-]                                   ; $5ef5: $3a
    dec sp                                        ; $5ef6: $3b
    jp nc, $f58d                                  ; $5ef7: $d2 $8d $f5

    ld d, $e0                                     ; $5efa: $16 $e0
    add e                                         ; $5efc: $83
    ccf                                           ; $5efd: $3f
    xor $c6                                       ; $5efe: $ee $c6
    ld a, d                                       ; $5f00: $7a
    ld a, a                                       ; $5f01: $7f
    call $5f03                                    ; $5f02: $cd $03 $5f
    pop de                                        ; $5f05: $d1

Call_030_5f06:
    ld [$3e5d], sp                                ; $5f06: $08 $5d $3e
    or $f3                                        ; $5f09: $f6 $f3
    jr jr_030_5e94                                ; $5f0b: $18 $87

    dec d                                         ; $5f0d: $15
    and h                                         ; $5f0e: $a4
    adc c                                         ; $5f0f: $89
    ld d, [hl]                                    ; $5f10: $56
    nop                                           ; $5f11: $00
    ld h, a                                       ; $5f12: $67
    ld b, h                                       ; $5f13: $44
    add sp, -$0e                                  ; $5f14: $e8 $f2
    ld [hl], c                                    ; $5f16: $71
    push bc                                       ; $5f17: $c5
    db $f4                                        ; $5f18: $f4
    ccf                                           ; $5f19: $3f
    ld h, b                                       ; $5f1a: $60
    db $e4                                        ; $5f1b: $e4
    xor e                                         ; $5f1c: $ab
    xor a                                         ; $5f1d: $af
    sub l                                         ; $5f1e: $95
    cp e                                          ; $5f1f: $bb
    pop hl                                        ; $5f20: $e1
    ld hl, sp+$2d                                 ; $5f21: $f8 $2d
    cp e                                          ; $5f23: $bb
    adc $8c                                       ; $5f24: $ce $8c
    ret z                                         ; $5f26: $c8

    xor l                                         ; $5f27: $ad
    cp c                                          ; $5f28: $b9
    push hl                                       ; $5f29: $e5
    dec sp                                        ; $5f2a: $3b
    ld d, c                                       ; $5f2b: $51
    inc c                                         ; $5f2c: $0c
    sub [hl]                                      ; $5f2d: $96
    and d                                         ; $5f2e: $a2
    push de                                       ; $5f2f: $d5
    call z, $3976                                 ; $5f30: $cc $76 $39
    xor h                                         ; $5f33: $ac
    nop                                           ; $5f34: $00
    adc $20                                       ; $5f35: $ce $20
    ld [bc], a                                    ; $5f37: $02
    daa                                           ; $5f38: $27
    ld e, d                                       ; $5f39: $5a
    call c, $b415                                 ; $5f3a: $dc $15 $b4
    dec de                                        ; $5f3d: $1b
    res 1, d                                      ; $5f3e: $cb $8a
    ld a, [hl+]                                   ; $5f40: $2a
    ld a, l                                       ; $5f41: $7d
    ld e, d                                       ; $5f42: $5a

Call_030_5f43:
Jump_030_5f43:
    ld de, $cb73                                  ; $5f43: $11 $73 $cb
    ld e, e                                       ; $5f46: $5b
    dec e                                         ; $5f47: $1d
    inc c                                         ; $5f48: $0c
    inc hl                                        ; $5f49: $23
    rst $08                                       ; $5f4a: $cf
    di                                            ; $5f4b: $f3
    ld d, $a7                                     ; $5f4c: $16 $a7
    ccf                                           ; $5f4e: $3f
    adc b                                         ; $5f4f: $88
    add hl, de                                    ; $5f50: $19
    and e                                         ; $5f51: $a3
    di                                            ; $5f52: $f3
    rlca                                          ; $5f53: $07
    ld e, a                                       ; $5f54: $5f
    ld [hl], e                                    ; $5f55: $73
    sub c                                         ; $5f56: $91
    ld a, $68                                     ; $5f57: $3e $68
    db $f4                                        ; $5f59: $f4
    jr nz, jr_030_5fb2                            ; $5f5a: $20 $56

    inc d                                         ; $5f5c: $14
    inc hl                                        ; $5f5d: $23
    ld a, a                                       ; $5f5e: $7f
    jr jr_030_5f74                                ; $5f5f: $18 $13

    xor l                                         ; $5f61: $ad
    cp a                                          ; $5f62: $bf
    ld a, $d7                                     ; $5f63: $3e $d7
    inc a                                         ; $5f65: $3c
    db $fc                                        ; $5f66: $fc
    inc d                                         ; $5f67: $14
    dec bc                                        ; $5f68: $0b
    ld sp, hl                                     ; $5f69: $f9
    ei                                            ; $5f6a: $fb
    inc [hl]                                      ; $5f6b: $34
    ld a, [hl]                                    ; $5f6c: $7e
    db $e3                                        ; $5f6d: $e3
    add b                                         ; $5f6e: $80
    inc d                                         ; $5f6f: $14
    db $e3                                        ; $5f70: $e3

jr_030_5f71:
    jp c, Jump_030_5e31                           ; $5f71: $da $31 $5e

jr_030_5f74:
    sub e                                         ; $5f74: $93
    ld c, [hl]                                    ; $5f75: $4e
    cp a                                          ; $5f76: $bf
    rst $08                                       ; $5f77: $cf
    sbc a                                         ; $5f78: $9f
    rst $20                                       ; $5f79: $e7
    ld a, c                                       ; $5f7a: $79
    cp [hl]                                       ; $5f7b: $be
    cp $fa                                        ; $5f7c: $fe $fa
    ld e, h                                       ; $5f7e: $5c
    di                                            ; $5f7f: $f3
    ldh a, [rHDMA3]                               ; $5f80: $f0 $53
    db $ec                                        ; $5f82: $ec
    ld h, d                                       ; $5f83: $62
    db $db                                        ; $5f84: $db
    dec b                                         ; $5f85: $05
    cp a                                          ; $5f86: $bf
    ld [hl], $b1                                  ; $5f87: $36 $b1
    dec b                                         ; $5f89: $05
    db $fd                                        ; $5f8a: $fd
    push af                                       ; $5f8b: $f5
    cp c                                          ; $5f8c: $b9
    adc e                                         ; $5f8d: $8b
    ld l, l                                       ; $5f8e: $6d
    rla                                           ; $5f8f: $17
    db $fc                                        ; $5f90: $fc
    jp c, $16c4                                   ; $5f91: $da $c4 $16

    and a                                         ; $5f94: $a7
    ccf                                           ; $5f95: $3f
    ld [hl], d                                    ; $5f96: $72
    call $fa45                                    ; $5f97: $cd $45 $fa
    and b                                         ; $5f9a: $a0
    ld e, l                                       ; $5f9b: $5d
    xor a                                         ; $5f9c: $af
    xor d                                         ; $5f9d: $aa
    db $f4                                        ; $5f9e: $f4
    cpl                                           ; $5f9f: $2f
    xor l                                         ; $5fa0: $ad
    adc $de                                       ; $5fa1: $ce $de
    ccf                                           ; $5fa3: $3f
    ld e, a                                       ; $5fa4: $5f
    ld h, e                                       ; $5fa5: $63
    dec bc                                        ; $5fa6: $0b
    ld e, h                                       ; $5fa7: $5c
    ld sp, $caae                                  ; $5fa8: $31 $ae $ca
    ldh a, [$2f]                                  ; $5fab: $f0 $2f
    ld e, $7a                                     ; $5fad: $1e $7a
    cp [hl]                                       ; $5faf: $be
    db $d3                                        ; $5fb0: $d3
    rra                                           ; $5fb1: $1f

jr_030_5fb2:
    call nz, $e45c                                ; $5fb2: $c4 $5c $e4
    rrca                                          ; $5fb5: $0f
    jr jr_030_5f71                                ; $5fb6: $18 $b9

    adc $5f                                       ; $5fb8: $ce $5f
    add a                                         ; $5fba: $87
    ld a, h                                       ; $5fbb: $7c
    and a                                         ; $5fbc: $a7
    ld b, b                                       ; $5fbd: $40
    sbc b                                         ; $5fbe: $98
    di                                            ; $5fbf: $f3
    push de                                       ; $5fc0: $d5
    ld e, c                                       ; $5fc1: $59
    cp c                                          ; $5fc2: $b9
    db $eb                                        ; $5fc3: $eb
    sub e                                         ; $5fc4: $93
    rst $18                                       ; $5fc5: $df
    or h                                          ; $5fc6: $b4
    add $f1                                       ; $5fc7: $c6 $f1
    ld e, a                                       ; $5fc9: $5f
    ret c                                         ; $5fca: $d8

    ld e, b                                       ; $5fcb: $58
    ld d, c                                       ; $5fcc: $51
    cp [hl]                                       ; $5fcd: $be
    ld c, $86                                     ; $5fce: $0e $86
    sbc a                                         ; $5fd0: $9f
    db $f4                                        ; $5fd1: $f4
    db $ed                                        ; $5fd2: $ed
    ld d, e                                       ; $5fd3: $53
    ld [hl], d                                    ; $5fd4: $72
    ld l, $7a                                     ; $5fd5: $2e $7a
    ldh [$5f], a                                  ; $5fd7: $e0 $5f
    rst $20                                       ; $5fd9: $e7
    adc a                                         ; $5fda: $8f
    ld e, $c4                                     ; $5fdb: $1e $c4
    inc c                                         ; $5fdd: $0c
    ld d, [hl]                                    ; $5fde: $56
    sub b                                         ; $5fdf: $90
    ld a, [c]                                     ; $5fe0: $f2
    push de                                       ; $5fe1: $d5
    or a                                          ; $5fe2: $b7
    jp z, $c630                                   ; $5fe3: $ca $30 $c6

    dec d                                         ; $5fe6: $15
    cp e                                          ; $5fe7: $bb
    sub l                                         ; $5fe8: $95

Jump_030_5fe9:
    cp d                                          ; $5fe9: $ba
    adc h                                         ; $5fea: $8c
    ld h, d                                       ; $5feb: $62
    ld e, h                                       ; $5fec: $5c
    dec sp                                        ; $5fed: $3b
    add $6b                                       ; $5fee: $c6 $6b
    jp nc, $f7e9                                  ; $5ff0: $d2 $e9 $f7

    ld sp, hl                                     ; $5ff3: $f9
    di                                            ; $5ff4: $f3
    ld a, l                                       ; $5ff5: $7d
    xor l                                         ; $5ff6: $ad
    cp d                                          ; $5ff7: $ba
    cp a                                          ; $5ff8: $bf
    ld c, a                                       ; $5ff9: $4f
    ld c, e                                       ; $5ffa: $4b
    dec de                                        ; $5ffb: $1b
    jp nc, $c80c                                  ; $5ffc: $d2 $0c $c8

    ld a, $8d                                     ; $5fff: $3e $8d
    db $fd                                        ; $6001: $fd
    ld a, $29                                     ; $6002: $3e $29
    ld l, a                                       ; $6004: $6f
    ld bc, $7759                                  ; $6005: $01 $59 $77
    dec b                                         ; $6008: $05
    xor l                                         ; $6009: $ad
    ret c                                         ; $600a: $d8

    ld a, [de]                                    ; $600b: $1a
    ld [hl], h                                    ; $600c: $74
    dec l                                         ; $600d: $2d
    ei                                            ; $600e: $fb
    add c                                         ; $600f: $81
    rst $38                                       ; $6010: $ff
    sbc e                                         ; $6011: $9b
    add $35                                       ; $6012: $c6 $35
    ld a, d                                       ; $6014: $7a
    ld b, b                                       ; $6015: $40
    ld e, d                                       ; $6016: $5a
    ld h, l                                       ; $6017: $65
    ld h, e                                       ; $6018: $63
    ld d, b                                       ; $6019: $50
    ld sp, hl                                     ; $601a: $f9
    ld a, [hl-]                                   ; $601b: $3a
    dec a                                         ; $601c: $3d
    and b                                         ; $601d: $a0
    dec d                                         ; $601e: $15
    xor l                                         ; $601f: $ad
    ld a, d                                       ; $6020: $7a
    sbc a                                         ; $6021: $9f
    ld l, e                                       ; $6022: $6b
    ld h, c                                       ; $6023: $61
    ld c, b                                       ; $6024: $48
    set 0, b                                      ; $6025: $cb $c0
    db $fd                                        ; $6027: $fd

jr_030_6028:
    db $fd                                        ; $6028: $fd
    reti                                          ; $6029: $d9


    ld a, [de]                                    ; $602a: $1a
    add hl, sp                                    ; $602b: $39
    add a                                         ; $602c: $87
    push af                                       ; $602d: $f5
    push de                                       ; $602e: $d5
    ld e, a                                       ; $602f: $5f
    sbc a                                         ; $6030: $9f
    ld l, e                                       ; $6031: $6b
    ld e, $7e                                     ; $6032: $1e $7e
    adc d                                         ; $6034: $8a
    dec [hl]                                      ; $6035: $35
    rrca                                          ; $6036: $0f
    ld a, h                                       ; $6037: $7c
    rst $00                                       ; $6038: $c7
    ld a, b                                       ; $6039: $78
    ld c, l                                       ; $603a: $4d
    ld a, [hl-]                                   ; $603b: $3a
    db $fd                                        ; $603c: $fd
    ld a, $7f                                     ; $603d: $3e $7f
    sbc [hl]                                      ; $603f: $9e
    or a                                          ; $6040: $b7

jr_030_6041:
    dec e                                         ; $6041: $1d
    cp d                                          ; $6042: $ba
    xor [hl]                                      ; $6043: $ae
    or h                                          ; $6044: $b4
    and d                                         ; $6045: $a2
    ld e, b                                       ; $6046: $58
    rst $00                                       ; $6047: $c7
    rlca                                          ; $6048: $07
    jp hl                                         ; $6049: $e9


    ld a, b                                       ; $604a: $78
    sub b                                         ; $604b: $90
    ld c, [hl]                                    ; $604c: $4e
    rla                                           ; $604d: $17
    ld c, l                                       ; $604e: $4d
    or h                                          ; $604f: $b4
    and d                                         ; $6050: $a2
    ret c                                         ; $6051: $d8

    xor c                                         ; $6052: $a9
    ld [hl], d                                    ; $6053: $72
    ld l, [hl]                                    ; $6054: $6e
    ret z                                         ; $6055: $c8

    ld a, [hl+]                                   ; $6056: $2a
    ld e, d                                       ; $6057: $5a
    cp h                                          ; $6058: $bc
    ld c, a                                       ; $6059: $4f
    ld c, e                                       ; $605a: $4b
    ld [hl], a                                    ; $605b: $77
    ld a, c                                       ; $605c: $79
    or c                                          ; $605d: $b1
    ld l, a                                       ; $605e: $6f
    ld sp, $7463                                  ; $605f: $31 $63 $74
    db $ed                                        ; $6062: $ed
    ccf                                           ; $6063: $3f
    adc b                                         ; $6064: $88
    ld a, h                                       ; $6065: $7c
    rst $00                                       ; $6066: $c7
    sub l                                         ; $6067: $95
    ld e, b                                       ; $6068: $58
    and e                                         ; $6069: $a3
    rra                                           ; $606a: $1f
    add [hl]                                      ; $606b: $86
    ld a, [$0cb4]                                 ; $606c: $fa $b4 $0c
    call c, $dfdf                                 ; $606f: $dc $df $df
    adc l                                         ; $6072: $8d
    inc c                                         ; $6073: $0c
    ld l, c                                       ; $6074: $69
    ld b, l                                       ; $6075: $45
    or c                                          ; $6076: $b1
    db $10                                        ; $6077: $10
    sub h                                         ; $6078: $94
    ld e, b                                       ; $6079: $58
    sbc l                                         ; $607a: $9d
    dec [hl]                                      ; $607b: $35
    rrca                                          ; $607c: $0f
    sbc b                                         ; $607d: $98
    add a                                         ; $607e: $87
    cp [hl]                                       ; $607f: $be
    sub h                                         ; $6080: $94
    ld de, $56b9                                  ; $6081: $11 $b9 $56
    inc d                                         ; $6084: $14
    dec sp                                        ; $6085: $3b
    ld d, l                                       ; $6086: $55
    sbc $e8                                       ; $6087: $de $e8
    sub e                                         ; $6089: $93
    add hl, sp                                    ; $608a: $39
    ld e, a                                       ; $608b: $5f
    di                                            ; $608c: $f3
    ret nz                                        ; $608d: $c0

    ld d, a                                       ; $608e: $57
    ld l, h                                       ; $608f: $6c
    rst $10                                       ; $6090: $d7
    add e                                         ; $6091: $83
    ld b, [hl]                                    ; $6092: $46
    db $e3                                        ; $6093: $e3
    adc d                                         ; $6094: $8a
    sbc l                                         ; $6095: $9d
    inc c                                         ; $6096: $0c
    ld b, [hl]                                    ; $6097: $46
    xor [hl]                                      ; $6098: $ae
    ld [hl], l                                    ; $6099: $75
    jr nc, jr_030_6028                            ; $609a: $30 $8c

    rst $30                                       ; $609c: $f7
    inc hl                                        ; $609d: $23
    rst $18                                       ; $609e: $df
    ld c, c                                       ; $609f: $49
    ld a, a                                       ; $60a0: $7f
    and c                                         ; $60a1: $a1
    cp c                                          ; $60a2: $b9
    ret z                                         ; $60a3: $c8

    rra                                           ; $60a4: $1f
    jr nc, jr_030_6041                            ; $60a5: $30 $9a

    cp $52                                        ; $60a7: $fe $52
    ld d, $79                                     ; $60a9: $16 $79
    dec bc                                        ; $60ab: $0b
    daa                                           ; $60ac: $27
    cp [hl]                                       ; $60ad: $be
    sbc a                                         ; $60ae: $9f
    call c, $3f7f                                 ; $60af: $dc $7f $3f
    cp c                                          ; $60b2: $b9
    ld l, h                                       ; $60b3: $6c
    adc l                                         ; $60b4: $8d
    ld a, c                                       ; $60b5: $79
    db $10                                        ; $60b6: $10
    db $d3                                        ; $60b7: $d3
    ld e, a                                       ; $60b8: $5f
    ld b, b                                       ; $60b9: $40
    db $d3                                        ; $60ba: $d3
    inc d                                         ; $60bb: $14
    ld d, h                                       ; $60bc: $54
    sbc [hl]                                      ; $60bd: $9e
    rst $20                                       ; $60be: $e7
    dec l                                         ; $60bf: $2d
    daa                                           ; $60c0: $27
    db $fd                                        ; $60c1: $fd
    ld [hl], c                                    ; $60c2: $71
    ld [hl], h                                    ; $60c3: $74
    ld b, e                                       ; $60c4: $43
    jp c, $80c9                                   ; $60c5: $da $c9 $80

    xor $2a                                       ; $60c8: $ee $2a
    dec h                                         ; $60ca: $25
    ld l, a                                       ; $60cb: $6f
    ld bc, $aa1d                                  ; $60cc: $01 $1d $aa

Jump_030_60cf:
    ld a, [hl+]                                   ; $60cf: $2a
    cp c                                          ; $60d0: $b9
    xor d                                         ; $60d1: $aa
    ld c, d                                       ; $60d2: $4a
    adc [hl]                                      ; $60d3: $8e
    push hl                                       ; $60d4: $e5
    ld a, c                                       ; $60d5: $79
    dec bc                                        ; $60d6: $0b
    sbc l                                         ; $60d7: $9d
    cp h                                          ; $60d8: $bc
    ld l, [hl]                                    ; $60d9: $6e
    inc l                                         ; $60da: $2c
    add l                                         ; $60db: $85
    ld a, [$9e79]                                 ; $60dc: $fa $79 $9e
    adc a                                         ; $60df: $8f
    rst $18                                       ; $60e0: $df
    db $ed                                        ; $60e1: $ed
    cp d                                          ; $60e2: $ba
    sbc [hl]                                      ; $60e3: $9e
    di                                            ; $60e4: $f3
    inc a                                         ; $60e5: $3c
    rst $08                                       ; $60e6: $cf
    sub a                                         ; $60e7: $97
    xor l                                         ; $60e8: $ad
    ld sp, $3186                                  ; $60e9: $31 $86 $31
    and $41                                       ; $60ec: $e6 $41
    adc h                                         ; $60ee: $8c
    and e                                         ; $60ef: $a3
    dec hl                                        ; $60f0: $2b
    rst $08                                       ; $60f1: $cf
    di                                            ; $60f2: $f3
    ld d, $1d                                     ; $60f3: $16 $1d
    inc hl                                        ; $60f5: $23
    jr z, @-$2f                                   ; $60f6: $28 $cf

    di                                            ; $60f8: $f3
    dec e                                         ; $60f9: $1d
    dec hl                                        ; $60fa: $2b
    xor a                                         ; $60fb: $af
    ldh a, [$7d]                                  ; $60fc: $f0 $7d
    push hl                                       ; $60fe: $e5
    ld a, c                                       ; $60ff: $79
    cp [hl]                                       ; $6100: $be
    ld l, h                                       ; $6101: $6c
    adc l                                         ; $6102: $8d
    ld b, c                                       ; $6103: $41
    db $fd                                        ; $6104: $fd
    jr @-$3f                                      ; $6105: $18 $bf

    db $eb                                        ; $6107: $eb
    sub e                                         ; $6108: $93
    ld a, $77                                     ; $6109: $3e $77
    db $ed                                        ; $610b: $ed
    ld h, h                                       ; $610c: $64
    ld b, b                                       ; $610d: $40
    ld [hl], a                                    ; $610e: $77
    sub l                                         ; $610f: $95
    or d                                          ; $6110: $b2
    add $bc                                       ; $6111: $c6 $bc
    ret z                                         ; $6113: $c8

    ld d, a                                       ; $6114: $57
    ld h, a                                       ; $6115: $67
    add hl, de                                    ; $6116: $19
    ld d, b                                       ; $6117: $50
    ret                                           ; $6118: $c9


    ret nz                                        ; $6119: $c0

    dec e                                         ; $611a: $1d
    ld a, [hl]                                    ; $611b: $7e
    cp [hl]                                       ; $611c: $be
    db $e3                                        ; $611d: $e3
    jp z, Jump_000_318c                           ; $611e: $ca $8c $31

    and h                                         ; $6121: $a4
    sub l                                         ; $6122: $95
    cp e                                          ; $6123: $bb
    and c                                         ; $6124: $a1
    adc a                                         ; $6125: $8f
    db $e4                                        ; $6126: $e4
    cp $1c                                        ; $6127: $fe $1c
    db $e3                                        ; $6129: $e3
    sub [hl]                                      ; $612a: $96
    or a                                          ; $612b: $b7
    ld e, c                                       ; $612c: $59
    rst $30                                       ; $612d: $f7
    dec de                                        ; $612e: $1b
    add hl, de                                    ; $612f: $19
    jp nc, $07a2                                  ; $6130: $d2 $a2 $07

    ld d, a                                       ; $6133: $57
    and l                                         ; $6134: $a5
    ld c, a                                       ; $6135: $4f
    db $d3                                        ; $6136: $d3
    cp a                                          ; $6137: $bf
    sbc [hl]                                      ; $6138: $9e
    ld l, e                                       ; $6139: $6b
    and a                                         ; $613a: $a7
    inc a                                         ; $613b: $3c
    ld d, $a8                                     ; $613c: $16 $a8
    ld [hl], $b1                                  ; $613e: $36 $b1
    dec b                                         ; $6140: $05
    push af                                       ; $6141: $f5
    or l                                          ; $6142: $b5
    rr a                                          ; $6143: $cb $1f
    add $32                                       ; $6145: $c6 $32
    ld [hl], b                                    ; $6147: $70
    rst $00                                       ; $6148: $c7
    ld [hl-], a                                   ; $6149: $32
    add $c6                                       ; $614a: $c6 $c6
    pop de                                        ; $614c: $d1
    or l                                          ; $614d: $b5
    ld a, [hl-]                                   ; $614e: $3a
    dec sp                                        ; $614f: $3b
    push hl                                       ; $6150: $e5
    or c                                          ; $6151: $b1
    ld b, b                                       ; $6152: $40
    cp e                                          ; $6153: $bb
    ld e, [hl]                                    ; $6154: $5e
    ld d, l                                       ; $6155: $55
    jp hl                                         ; $6156: $e9


    db $d3                                        ; $6157: $d3
    ld [c], a                                     ; $6158: $e2
    xor [hl]                                      ; $6159: $ae
    xor d                                         ; $615a: $aa
    ld sp, $8f97                                  ; $615b: $31 $97 $8f
    ld l, e                                       ; $615e: $6b
    push bc                                       ; $615f: $c5
    sub $11                                       ; $6160: $d6 $11
    push hl                                       ; $6162: $e5
    xor [hl]                                      ; $6163: $ae
    jp c, $16c4                                   ; $6164: $da $c4 $16

    rst $00                                       ; $6167: $c7
    sub l                                         ; $6168: $95
    and l                                         ; $6169: $a5
    dec c                                         ; $616a: $0d
    ld l, b                                       ; $616b: $68
    add hl, de                                    ; $616c: $19
    cp b                                          ; $616d: $b8
    cp a                                          ; $616e: $bf
    ccf                                           ; $616f: $3f
    and $a1                                       ; $6170: $e6 $a1
    halt                                          ; $6172: $76
    inc h                                         ; $6173: $24
    ld d, h                                       ; $6174: $54
    xor c                                         ; $6175: $a9
    ld [hl+], a                                   ; $6176: $22
    cp $5c                                        ; $6177: $fe $5c
    ld sp, hl                                     ; $6179: $f9
    ld c, [hl]                                    ; $617a: $4e
    ld a, [$7033]                                 ; $617b: $fa $33 $70
    ld b, e                                       ; $617e: $43
    ld a, [de]                                    ; $617f: $1a
    rst $28                                       ; $6180: $ef
    ld h, c                                       ; $6181: $61
    ld b, l                                       ; $6182: $45
    ld c, e                                       ; $6183: $4b
    dec de                                        ; $6184: $1b
    cp d                                          ; $6185: $ba
    add $d5                                       ; $6186: $c6 $d5
    nop                                           ; $6188: $00
    add $ca                                       ; $6189: $c6 $ca
    ei                                            ; $618b: $fb
    inc l                                         ; $618c: $2c
    ld d, d                                       ; $618d: $52
    push de                                       ; $618e: $d5
    ld b, h                                       ; $618f: $44
    sbc $02                                       ; $6190: $de $02
    dec e                                         ; $6192: $1d
    inc c                                         ; $6193: $0c
    ld h, e                                       ; $6194: $63
    rst $28                                       ; $6195: $ef
    rst $28                                       ; $6196: $ef
    rst $18                                       ; $6197: $df
    ld l, l                                       ; $6198: $6d
    ld b, $17                                     ; $6199: $06 $17
    ld a, h                                       ; $619b: $7c
    xor l                                         ; $619c: $ad
    ld [hl], c                                    ; $619d: $71
    ld bc, $daa3                                  ; $619e: $01 $a3 $da
    call nz, Call_030_451d                        ; $61a1: $c4 $1d $45
    ld a, e                                       ; $61a4: $7b
    ld a, a                                       ; $61a5: $7f
    rst $38                                       ; $61a6: $ff
    xor [hl]                                      ; $61a7: $ae
    and b                                         ; $61a8: $a0
    ld d, l                                       ; $61a9: $55
    ld e, l                                       ; $61aa: $5d
    ld d, a                                       ; $61ab: $57
    ld e, d                                       ; $61ac: $5a
    ld h, e                                       ; $61ad: $63
    or c                                          ; $61ae: $b1
    ld c, e                                       ; $61af: $4b
    ccf                                           ; $61b0: $3f
    ld l, [hl]                                    ; $61b1: $6e
    or c                                          ; $61b2: $b1
    db $eb                                        ; $61b3: $eb
    db $fd                                        ; $61b4: $fd
    ld l, a                                       ; $61b5: $6f
    db $dd                                        ; $61b6: $dd
    sub d                                         ; $61b7: $92
    ld l, e                                       ; $61b8: $6b
    push hl                                       ; $61b9: $e5
    xor [hl]                                      ; $61ba: $ae
    adc $18                                       ; $61bb: $ce $18
    and h                                         ; $61bd: $a4
    ld a, a                                       ; $61be: $7f
    ld l, c                                       ; $61bf: $69
    ld e, h                                       ; $61c0: $5c
    dec hl                                        ; $61c1: $2b
    or [hl]                                       ; $61c2: $b6
    adc [hl]                                      ; $61c3: $8e
    jr z, jr_030_623d                             ; $61c4: $28 $77

    ld c, l                                       ; $61c6: $4d
    inc [hl]                                      ; $61c7: $34
    xor [hl]                                      ; $61c8: $ae
    ld [hl], l                                    ; $61c9: $75
    ld a, d                                       ; $61ca: $7a
    sub b                                         ; $61cb: $90
    ld c, [hl]                                    ; $61cc: $4e
    ld b, e                                       ; $61cd: $43
    sbc $02                                       ; $61ce: $de $02
    and a                                         ; $61d0: $a7
    ld [bc], a                                    ; $61d1: $02
    ld [hl-], a                                   ; $61d2: $32
    ld a, [hl-]                                   ; $61d3: $3a
    cp a                                          ; $61d4: $bf
    ld e, [hl]                                    ; $61d5: $5e
    push af                                       ; $61d6: $f5
    jr nc, @+$61                                  ; $61d7: $30 $5f

    ld a, l                                       ; $61d9: $7d
    xor l                                         ; $61da: $ad
    ld sp, $2d47                                  ; $61db: $31 $47 $2d
    inc bc                                        ; $61de: $03
    ld a, [de]                                    ; $61df: $1a
    di                                            ; $61e0: $f3
    jr nz, jr_030_6239                            ; $61e1: $20 $56

    inc sp                                        ; $61e3: $33
    cp a                                          ; $61e4: $bf
    and l                                         ; $61e5: $a5
    set 5, l                                      ; $61e6: $cb $ed
    ld h, d                                       ; $61e8: $62
    and e                                         ; $61e9: $a3
    db $eb                                        ; $61ea: $eb
    db $fc                                        ; $61eb: $fc
    push de                                       ; $61ec: $d5
    add hl, de                                    ; $61ed: $19
    rla                                           ; $61ee: $17
    ld [hl], h                                    ; $61ef: $74
    ld e, [hl]                                    ; $61f0: $5e

jr_030_61f1:
    ld a, [$cc61]                                 ; $61f1: $fa $61 $cc
    jr jr_030_61f1                                ; $61f4: $18 $fb

    inc [hl]                                      ; $61f6: $34
    xor [hl]                                      ; $61f7: $ae
    ld sp, $8af8                                  ; $61f8: $31 $f8 $8a
    ld a, h                                       ; $61fb: $7c
    ld b, l                                       ; $61fc: $45
    ld sp, $cbaf                                  ; $61fd: $31 $af $cb
    ld a, [hl+]                                   ; $6200: $2a
    xor d                                         ; $6201: $aa
    db $f4                                        ; $6202: $f4
    add hl, hl                                    ; $6203: $29
    add $b5                                       ; $6204: $c6 $b5
    ld [hl], d                                    ; $6206: $72
    cp a                                          ; $6207: $bf
    ld e, l                                       ; $6208: $5d
    xor a                                         ; $6209: $af
    xor b                                         ; $620a: $a8
    ld [hl], $b1                                  ; $620b: $36 $b1
    dec b                                         ; $620d: $05
    daa                                           ; $620e: $27
    add e                                         ; $620f: $83
    jp z, $abf8                                   ; $6210: $ca $f8 $ab

    ld a, [hl+]                                   ; $6213: $2a
    ld h, e                                       ; $6214: $63
    ld l, c                                       ; $6215: $69
    add hl, de                                    ; $6216: $19
    ret nc                                        ; $6217: $d0

    adc d                                         ; $6218: $8a
    ld h, d                                       ; $6219: $62
    or $2f                                        ; $621a: $f6 $2f
    call nc, $8aff                                ; $621c: $d4 $ff $8a
    dec [hl]                                      ; $621f: $35
    ldh a, [$91]                                  ; $6220: $f0 $91
    ldh a, [$fd]                                  ; $6222: $f0 $fd
    sbc b                                         ; $6224: $98
    and c                                         ; $6225: $a1
    ld a, $ed                                     ; $6226: $3e $ed
    ld b, [hl]                                    ; $6228: $46
    or a                                          ; $6229: $b7
    pop hl                                        ; $622a: $e1
    daa                                           ; $622b: $27
    add hl, sp                                    ; $622c: $39
    ld b, a                                       ; $622d: $47
    ld d, d                                       ; $622e: $52
    db $e4                                        ; $622f: $e4
    xor e                                         ; $6230: $ab
    ld a, a                                       ; $6231: $7f
    scf                                           ; $6232: $37
    inc e                                         ; $6233: $1c
    dec a                                         ; $6234: $3d
    ret z                                         ; $6235: $c8

    ld a, [hl]                                    ; $6236: $7e
    ldh [$b1], a                                  ; $6237: $e0 $b1

jr_030_6239:
    and d                                         ; $6239: $a2
    ret c                                         ; $623a: $d8

    push bc                                       ; $623b: $c5
    or [hl]                                       ; $623c: $b6

jr_030_623d:
    ld l, [hl]                                    ; $623d: $6e
    cp a                                          ; $623e: $bf
    ld h, d                                       ; $623f: $62
    call c, $ac7e                                 ; $6240: $dc $7e $ac
    ld a, d                                       ; $6243: $7a
    ld a, a                                       ; $6244: $7f
    add hl, hl                                    ; $6245: $29
    ld [hl], b                                    ; $6246: $70
    add hl, de                                    ; $6247: $19
    db $e4                                        ; $6248: $e4
    dec l                                         ; $6249: $2d
    ld b, a                                       ; $624a: $47
    or c                                          ; $624b: $b1
    sub a                                         ; $624c: $97
    ld b, d                                       ; $624d: $42
    db $fd                                        ; $624e: $fd
    db $e4                                        ; $624f: $e4
    adc d                                         ; $6250: $8a
    halt                                          ; $6251: $76
    db $dd                                        ; $6252: $dd
    ld c, d                                       ; $6253: $4a
    db $dd                                        ; $6254: $dd
    sub h                                         ; $6255: $94
    ld l, e                                       ; $6256: $6b
    rst $00                                       ; $6257: $c7
    sbc d                                         ; $6258: $9a
    ld a, e                                       ; $6259: $7b
    call Call_000_3e3a                            ; $625a: $cd $3a $3e
    ld [hl+], a                                   ; $625d: $22
    ld sp, hl                                     ; $625e: $f9
    ld l, h                                       ; $625f: $6c
    ld l, c                                       ; $6260: $69
    db $fc                                        ; $6261: $fc
    cp b                                          ; $6262: $b8
    add $7c                                       ; $6263: $c6 $7c
    adc h                                         ; $6265: $8c
    ld a, $7a                                     ; $6266: $3e $7a
    cp [hl]                                       ; $6268: $be
    jp $f489                                      ; $6269: $c3 $89 $f4


    cp c                                          ; $626c: $b9
    adc $1f                                       ; $626d: $ce $1f
    ld e, [hl]                                    ; $626f: $5e
    sbc b                                         ; $6270: $98
    call c, $c6b1                                 ; $6271: $dc $b1 $c6
    ld [hl], d                                    ; $6274: $72
    db $e4                                        ; $6275: $e4
    ld h, e                                       ; $6276: $63
    ld l, h                                       ; $6277: $6c
    adc h                                         ; $6278: $8c
    ld a, $7a                                     ; $6279: $3e $7a
    cp [hl]                                       ; $627b: $be
    and e                                         ; $627c: $a3
    ld l, b                                       ; $627d: $68
    ld e, a                                       ; $627e: $5f

jr_030_627f:
    ld h, e                                       ; $627f: $63
    ld e, $c4                                     ; $6280: $1e $c4
    jp nz, $d180                                  ; $6282: $c2 $80 $d1

    ld sp, hl                                     ; $6285: $f9
    ld l, e                                       ; $6286: $6b
    inc l                                         ; $6287: $2c
    sub d                                         ; $6288: $92

Jump_030_6289:
    dec hl                                        ; $6289: $2b
    or [hl]                                       ; $628a: $b6
    ld b, $3e                                     ; $628b: $06 $3e
    ld [de], a                                    ; $628d: $12
    cp [hl]                                       ; $628e: $be
    cp a                                          ; $628f: $bf
    sub b                                         ; $6290: $90
    db $db                                        ; $6291: $db
    db $f4                                        ; $6292: $f4
    xor a                                         ; $6293: $af
    rst $20                                       ; $6294: $e7
    ld e, d                                       ; $6295: $5a
    add e                                         ; $6296: $83
    xor [hl]                                      ; $6297: $ae
    cp h                                          ; $6298: $bc
    dec b                                         ; $6299: $05
    ld b, a                                       ; $629a: $47
    call c, $a1e3                                 ; $629b: $dc $e3 $a1
    rst $20                                       ; $629e: $e7
    db $eb                                        ; $629f: $eb
    add sp, $5d                                   ; $62a0: $e8 $5d
    ld d, e                                       ; $62a2: $53
    xor h                                         ; $62a3: $ac
    ld a, c                                       ; $62a4: $79
    ldh [$83], a                                  ; $62a5: $e0 $83
    xor a                                         ; $62a7: $af
    dec [hl]                                      ; $62a8: $35
    ld [hl+], a                                   ; $62a9: $22
    inc h                                         ; $62aa: $24
    xor l                                         ; $62ab: $ad
    pop af                                        ; $62ac: $f1
    ld d, a                                       ; $62ad: $57
    jp hl                                         ; $62ae: $e9


    dec de                                        ; $62af: $1b
    rst $10                                       ; $62b0: $d7
    cp b                                          ; $62b1: $b8
    db $fd                                        ; $62b2: $fd
    ld e, b                                       ; $62b3: $58
    or c                                          ; $62b4: $b1
    and l                                         ; $62b5: $a5
    sbc a                                         ; $62b6: $9f
    ld [hl], a                                    ; $62b7: $77

Jump_030_62b8:
    ld c, l                                       ; $62b8: $4d
    or l                                          ; $62b9: $b5
    add a                                         ; $62ba: $87
    or [hl]                                       ; $62bb: $b6
    dec e                                         ; $62bc: $1d
    ld e, $2e                                     ; $62bd: $1e $2e
    ld e, e                                       ; $62bf: $5b
    ei                                            ; $62c0: $fb
    ld [hl], a                                    ; $62c1: $77
    ld a, l                                       ; $62c2: $7d
    ld [hl], d                                    ; $62c3: $72
    xor l                                         ; $62c4: $ad

jr_030_62c5:
    or c                                          ; $62c5: $b1
    jr jr_030_627f                                ; $62c6: $18 $b7

    rra                                           ; $62c8: $1f
    cp e                                          ; $62c9: $bb
    ld b, h                                       ; $62ca: $44
    and h                                         ; $62cb: $a4
    and l                                         ; $62cc: $a5
    sbc a                                         ; $62cd: $9f
    ld [hl], a                                    ; $62ce: $77
    ld c, l                                       ; $62cf: $4d
    or l                                          ; $62d0: $b5
    adc c                                         ; $62d1: $89
    dec l                                         ; $62d2: $2d
    ld b, a                                       ; $62d3: $47
    and b                                         ; $62d4: $a0
    cp $5e                                        ; $62d5: $fe $5e
    xor d                                         ; $62d7: $aa
    jr nz, jr_030_62c5                            ; $62d8: $20 $eb

    sub [hl]                                      ; $62da: $96
    ld e, h                                       ; $62db: $5c
    ldh [$08], a                                  ; $62dc: $e0 $08
    add $08                                       ; $62de: $c6 $08
    ld a, [hl-]                                   ; $62e0: $3a
    rst $08                                       ; $62e1: $cf
    dec d                                         ; $62e2: $15
    inc h                                         ; $62e3: $24
    ld e, a                                       ; $62e4: $5f
    sbc l                                         ; $62e5: $9d
    ld [hl], l                                    ; $62e6: $75
    ld a, h                                       ; $62e7: $7c
    ret nz                                        ; $62e8: $c0

    adc e                                         ; $62e9: $8b
    add hl, sp                                    ; $62ea: $39

jr_030_62eb:
    xor a                                         ; $62eb: $af
    ld c, l                                       ; $62ec: $4d
    call c, $114e                                 ; $62ed: $dc $4e $11
    res 3, h                                      ; $62f0: $cb $9c
    dec hl                                        ; $62f2: $2b
    ld e, a                                       ; $62f3: $5f
    sub [hl]                                      ; $62f4: $96
    adc b                                         ; $62f5: $88
    or h                                          ; $62f6: $b4
    adc e                                         ; $62f7: $8b
    db $fd                                        ; $62f8: $fd
    ld b, d                                       ; $62f9: $42
    inc sp                                        ; $62fa: $33
    ld h, a                                       ; $62fb: $67
    jp hl                                         ; $62fc: $e9


    db $d3                                        ; $62fd: $d3
    ld c, l                                       ; $62fe: $4d
    dec bc                                        ; $62ff: $0b
    ldh a, [$15]                                  ; $6300: $f0 $15
    dec l                                         ; $6302: $2d
    ld e, [hl]                                    ; $6303: $5e
    ld c, c                                       ; $6304: $49
    xor $ba                                       ; $6305: $ee $ba
    dec hl                                        ; $6307: $2b
    ld l, b                                       ; $6308: $68
    inc e                                         ; $6309: $1c
    ld d, $f6                                     ; $630a: $16 $f6
    ld e, c                                       ; $630c: $59

Call_030_630d:
    db $e3                                        ; $630d: $e3
    ld e, d                                       ; $630e: $5a
    pop bc                                        ; $630f: $c1
    db $eb                                        ; $6310: $eb
    ld sp, hl                                     ; $6311: $f9
    ld d, a                                       ; $6312: $57
    cp [hl]                                       ; $6313: $be
    db $d3                                        ; $6314: $d3
    cp [hl]                                       ; $6315: $be
    ld d, [hl]                                    ; $6316: $56
    ldh a, [$7a]                                  ; $6317: $f0 $7a
    cp $35                                        ; $6319: $fe $35
    db $db                                        ; $631b: $db
    adc l                                         ; $631c: $8d
    ld l, [hl]                                    ; $631d: $6e
    ld h, e                                       ; $631e: $63

Jump_030_631f:
    cp c                                          ; $631f: $b9
    ld sp, $f4aa                                  ; $6320: $31 $aa $f4
    ld l, c                                       ; $6323: $69

jr_030_6324:
    xor c                                         ; $6324: $a9
    and d                                         ; $6325: $a2
    adc b                                         ; $6326: $88
    sbc e                                         ; $6327: $9b
    ld a, [c]                                     ; $6328: $f2
    dec e                                         ; $6329: $1d

Jump_030_632a:
    ld d, a                                       ; $632a: $57
    sub [hl]                                      ; $632b: $96
    ld [hl], $a0                                  ; $632c: $36 $a0
    ld h, l                                       ; $632e: $65
    ldh [$fe], a                                  ; $632f: $e0 $fe
    cp $5c                                        ; $6331: $fe $5c
    db $e4                                        ; $6333: $e4
    rrca                                          ; $6334: $0f
    jr jr_030_6324                                ; $6335: $18 $ed

    ld [de], a                                    ; $6337: $12
    sub c                                         ; $6338: $91
    sub $18                                       ; $6339: $d6 $18
    jr nc, jr_030_62eb                            ; $633b: $30 $ae

    and l                                         ; $633d: $a5
    cp d                                          ; $633e: $ba
    ld h, $e5                                     ; $633f: $26 $e5
    dec l                                         ; $6341: $2d
    ld b, a                                       ; $6342: $47
    pop de                                        ; $6343: $d1

Call_030_6344:
    ld [hl-], a                                   ; $6344: $32
    and b                                         ; $6345: $a0
    add l                                         ; $6346: $85
    sub $58                                       ; $6347: $d6 $58
    add h                                         ; $6349: $84
    call c, Call_030_51ea                         ; $634a: $dc $ea $51
    dec a                                         ; $634d: $3d
    inc l                                         ; $634e: $2c
    dec bc                                        ; $634f: $0b
    ld e, h                                       ; $6350: $5c
    or c                                          ; $6351: $b1
    ld e, l                                       ; $6352: $5d
    db $ec                                        ; $6353: $ec
    rla                                           ; $6354: $17
    ld e, d                                       ; $6355: $5a
    ld b, $70                                     ; $6356: $06 $70

Jump_030_6358:
    or [hl]                                       ; $6358: $b6
    ld d, h                                       ; $6359: $54
    ld d, c                                       ; $635a: $51
    call nz, $c56d                                ; $635b: $c4 $6d $c5
    ld d, [hl]                                    ; $635e: $56
    ldh a, [$7a]                                  ; $635f: $f0 $7a
    cp $b5                                        ; $6361: $fe $b5
    rst $38                                       ; $6363: $ff
    jr nz, @+$48                                  ; $6364: $20 $46

    cp $80                                        ; $6366: $fe $80
    pop de                                        ; $6368: $d1
    adc h                                         ; $6369: $8c
    or c                                          ; $636a: $b1
    ld c, a                                       ; $636b: $4f
    or l                                          ; $636c: $b5
    add a                                         ; $636d: $87
    or [hl]                                       ; $636e: $b6
    sbc l                                         ; $636f: $9d
    db $ec                                        ; $6370: $ec
    db $d3                                        ; $6371: $d3
    ld [hl-], a                                   ; $6372: $32
    and b                                         ; $6373: $a0
    ld de, $e42c                                  ; $6374: $11 $2c $e4
    ld d, $33                                     ; $6377: $16 $33
    ld b, [hl]                                    ; $6379: $46
    rst $10                                       ; $637a: $d7
    xor d                                         ; $637b: $aa
    add a                                         ; $637c: $87
    inc de                                        ; $637d: $13
    dec l                                         ; $637e: $2d
    set 3, a                                      ; $637f: $cb $df
    ld [hl], l                                    ; $6381: $75
    ld l, $07                                     ; $6382: $2e $07
    ld c, a                                       ; $6384: $4f
    adc $51                                       ; $6385: $ce $51
    ld a, a                                       ; $6387: $7f
    ld e, h                                       ; $6388: $5c
    cp e                                          ; $6389: $bb
    or h                                          ; $638a: $b4
    inc c                                         ; $638b: $0c
    ldh [rSCY], a                                 ; $638c: $e0 $42
    inc hl                                        ; $638e: $23
    ld a, a                                       ; $638f: $7f
    ret nz                                        ; $6390: $c0

    ld l, b                                       ; $6391: $68
    call c, $ac7e                                 ; $6392: $dc $7e $ac
    ret c                                         ; $6395: $d8

    jp nc, $bbcf                                  ; $6396: $d2 $cf $bb

    and [hl]                                      ; $6399: $a6
    ld a, l                                       ; $639a: $7d
    adc l                                         ; $639b: $8d
    or h                                          ; $639c: $b4
    or h                                          ; $639d: $b4
    call c, $b5c6                                 ; $639e: $dc $c6 $b5
    jp z, $be4a                                   ; $63a1: $ca $4a $be

    ld d, e                                       ; $63a4: $53
    inc d                                         ; $63a5: $14
    and h                                         ; $63a6: $a4
    di                                            ; $63a7: $f3
    rla                                           ; $63a8: $17
    ldh [$2b], a                                  ; $63a9: $e0 $2b
    jp c, Jump_030_56c5                           ; $63ab: $da $c5 $56

    add l                                         ; $63ae: $85
    ccf                                           ; $63af: $3f
    rst $18                                       ; $63b0: $df
    jp hl                                         ; $63b1: $e9


    rrca                                          ; $63b2: $0f
    ld h, d                                       ; $63b3: $62
    ld d, [hl]                                    ; $63b4: $56
    adc d                                         ; $63b5: $8a
    adc $1f                                       ; $63b6: $ce $1f
    di                                            ; $63b8: $f3
    jr nz, jr_030_63d1                            ; $63b9: $20 $16

    or a                                          ; $63bb: $b7
    add $5c                                       ; $63bc: $c6 $5c
    ld a, $fd                                     ; $63be: $3e $fd
    ld [hl], c                                    ; $63c0: $71
    ld b, c                                       ; $63c1: $41
    rst $20                                       ; $63c2: $e7
    or c                                          ; $63c3: $b1
    db $fc                                        ; $63c4: $fc
    ld b, c                                       ; $63c5: $41
    and e                                         ; $63c6: $a3
    ret z                                         ; $63c7: $c8

    ld e, e                                       ; $63c8: $5b
    and a                                         ; $63c9: $a7
    ld [c], a                                     ; $63ca: $e2
    or d                                          ; $63cb: $b2
    dec [hl]                                      ; $63cc: $35
    cp $30                                        ; $63cd: $fe $30
    and [hl]                                      ; $63cf: $a6
    ld c, a                                       ; $63d0: $4f

jr_030_63d1:
    ld l, $5f                                     ; $63d1: $2e $5f
    xor c                                         ; $63d3: $a9
    ld d, e                                       ; $63d4: $53
    adc a                                         ; $63d5: $8f
    adc e                                         ; $63d6: $8b
    db $db                                        ; $63d7: $db
    adc a                                         ; $63d8: $8f
    db $e4                                        ; $63d9: $e4
    or d                                          ; $63da: $b2
    dec [hl]                                      ; $63db: $35
    ld b, [hl]                                    ; $63dc: $46
    ret nc                                        ; $63dd: $d0

    ld a, c                                       ; $63de: $79

jr_030_63df:
    ld e, c                                       ; $63df: $59
    cp $ae                                        ; $63e0: $fe $ae
    ld [hl], e                                    ; $63e2: $73
    add hl, sp                                    ; $63e3: $39
    ld a, b                                       ; $63e4: $78
    sbc $02                                       ; $63e5: $de $02
    ld e, c                                       ; $63e7: $59
    xor a                                         ; $63e8: $af
    xor d                                         ; $63e9: $aa
    inc [hl]                                      ; $63ea: $34
    add d                                         ; $63eb: $82
    ld sp, $ce82                                  ; $63ec: $31 $82 $ce
    ld sp, hl                                     ; $63ef: $f9
    ld c, $2f                                     ; $63f0: $0e $2f
    rst $08                                       ; $63f2: $cf
    inc hl                                        ; $63f3: $23
    cp c                                          ; $63f4: $b9
    ld h, e                                       ; $63f5: $63
    call Call_000_26bd                            ; $63f6: $cd $bd $26
    cp c                                          ; $63f9: $b9
    ld h, e                                       ; $63fa: $63

Call_030_63fb:
    push hl                                       ; $63fb: $e5
    dec d                                         ; $63fc: $15
    cp [hl]                                       ; $63fd: $be
    xor a                                         ; $63fe: $af
    adc c                                         ; $63ff: $89
    ld d, [hl]                                    ; $6400: $56
    dec a                                         ; $6401: $3d
    call c, Call_030_63fb                         ; $6402: $dc $fb $63
    ld l, h                                       ; $6405: $6c
    db $fc                                        ; $6406: $fc
    ld c, $7f                                     ; $6407: $0e $7f
    ld d, a                                       ; $6409: $57
    ld [hl], a                                    ; $640a: $77
    ld [hl], h                                    ; $640b: $74
    set 2, a                                      ; $640c: $cb $d7
    jp hl                                         ; $640e: $e9


    pop hl                                        ; $640f: $e1
    ld a, [hl-]                                   ; $6410: $3a
    ld e, b                                       ; $6411: $58
    ld d, c                                       ; $6412: $51
    ld a, [$24d5]                                 ; $6413: $fa $d5 $24
    ld b, a                                       ; $6416: $47
    jr nc, jr_030_63df                            ; $6417: $30 $c6

    ld h, d                                       ; $6419: $62
    add $e8                                       ; $641a: $c6 $e8
    jp c, Jump_030_6289                           ; $641c: $da $89 $62

    or b                                          ; $641f: $b0
    inc d                                         ; $6420: $14
    ld c, l                                       ; $6421: $4d
    or h                                          ; $6422: $b4
    inc l                                         ; $6423: $2c
    ld a, a                                       ; $6424: $7f
    rst $10                                       ; $6425: $d7
    cp c                                          ; $6426: $b9
    inc e                                         ; $6427: $1c
    inc a                                         ; $6428: $3c
    rst $18                                       ; $6429: $df
    xor c                                         ; $642a: $a9
    cp b                                          ; $642b: $b8
    inc c                                         ; $642c: $0c

jr_030_642d:
    xor b                                         ; $642d: $a8
    ld h, h                                       ; $642e: $64
    ldh [$0e], a                                  ; $642f: $e0 $0e
    ld a, a                                       ; $6431: $7f
    ld [hl], $ae                                  ; $6432: $36 $ae
    sbc b                                         ; $6434: $98
    cp $07                                        ; $6435: $fe $07
    adc h                                         ; $6437: $8c
    db $e4                                        ; $6438: $e4
    db $f4                                        ; $6439: $f4
    sbc c                                         ; $643a: $99
    ld d, a                                       ; $643b: $57
    and e                                         ; $643c: $a3
    di                                            ; $643d: $f3
    rst $00                                       ; $643e: $c7
    dec d                                         ; $643f: $15
    cp e                                          ; $6440: $bb
    ld de, $4bfe                                  ; $6441: $11 $fe $4b
    and l                                         ; $6444: $a5
    jr z, jr_030_642d                             ; $6445: $28 $e6

    rrca                                          ; $6447: $0f
    ld e, b                                       ; $6448: $58
    adc d                                         ; $6449: $8a
    add hl, de                                    ; $644a: $19
    and e                                         ; $644b: $a3
    ld l, e                                       ; $644c: $6b
    call z, $d723                                 ; $644d: $cc $23 $d7
    ld d, d                                       ; $6450: $52
    add $02                                       ; $6451: $c6 $02
    ld de, $9569                                  ; $6453: $11 $69 $95
    or c                                          ; $6456: $b1
    jr nc, jr_030_645c                            ; $6457: $30 $03

    jp z, $475b                                   ; $6459: $ca $5b $47

jr_030_645c:
    ld b, l                                       ; $645c: $45
    jr jr_030_64c9                                ; $645d: $18 $6a

    call z, Call_030_4f43                         ; $645f: $cc $43 $4f
    xor $58                                       ; $6462: $ee $58
    ld [hl], e                                    ; $6464: $73
    xor a                                         ; $6465: $af
    ld c, c                                       ; $6466: $49
    xor [hl]                                      ; $6467: $ae
    ld [hl-], a                                   ; $6468: $32
    adc h                                         ; $6469: $8c
    and l                                         ; $646a: $a5
    dec c                                         ; $646b: $0d
    ld h, e                                       ; $646c: $63
    ld b, [hl]                                    ; $646d: $46

Jump_030_646e:
    and h                                         ; $646e: $a4

Call_030_646f:
    ld c, a                                       ; $646f: $4f
    ld hl, sp+$7e                                 ; $6470: $f8 $7e
    ld [hl], d                                    ; $6472: $72
    push bc                                       ; $6473: $c5
    sub [hl]                                      ; $6474: $96
    ld a, [hl]                                    ; $6475: $7e
    sbc $35                                       ; $6476: $de $35
    ld c, l                                       ; $6478: $4d
    ld b, c                                       ; $6479: $41
    db $e3                                        ; $647a: $e3
    or $59                                        ; $647b: $f6 $59
    ld [hl], d                                    ; $647d: $72
    ld b, c                                       ; $647e: $41
    jr z, jr_030_64f0                             ; $647f: $28 $6f

    ld bc, $0327                                  ; $6481: $01 $27 $03
    ld c, [hl]                                    ; $6484: $4e
    ld b, c                                       ; $6485: $41
    dec hl                                        ; $6486: $2b
    ld [hl], l                                    ; $6487: $75
    ld l, d                                       ; $6488: $6a
    rrca                                          ; $6489: $0f
    db $dd                                        ; $648a: $dd
    ld c, c                                       ; $648b: $49
    db $ec                                        ; $648c: $ec
    db $e4                                        ; $648d: $e4
    xor [hl]                                      ; $648e: $ae
    cp e                                          ; $648f: $bb
    add d                                         ; $6490: $82
    ld b, [hl]                                    ; $6491: $46
    rrca                                          ; $6492: $0f
    di                                            ; $6493: $f3
    ld d, $a7                                     ; $6494: $16 $a7
    ld e, d                                       ; $6496: $5a
    ld bc, $9d5a                                  ; $6497: $01 $5a $9d
    pop de                                        ; $649a: $d1
    jp $8ee4                                      ; $649b: $c3 $e4 $8e


    dec [hl]                                      ; $649e: $35
    sub [hl]                                      ; $649f: $96
    inc hl                                        ; $64a0: $23
    rst $08                                       ; $64a1: $cf
    ld e, e                                       ; $64a2: $5b
    push af                                       ; $64a3: $f5
    dec [hl]                                      ; $64a4: $35
    jp nc, $bf1a                                  ; $64a5: $d2 $1a $bf

    add l                                         ; $64a8: $85
    ld a, $69                                     ; $64a9: $3e $69
    rst $00                                       ; $64ab: $c7
    sbc d                                         ; $64ac: $9a
    ld a, e                                       ; $64ad: $7b
    call Call_000_3e3a                            ; $64ae: $cd $3a $3e
    ld [hl+], a                                   ; $64b1: $22
    ld sp, hl                                     ; $64b2: $f9
    ld b, h                                       ; $64b3: $44
    dec sp                                        ; $64b4: $3b
    ld d, [hl]                                    ; $64b5: $56
    ld e, [hl]                                    ; $64b6: $5e
    pop hl                                        ; $64b7: $e1
    ei                                            ; $64b8: $fb
    jp c, Jump_030_6e31                           ; $64b9: $da $31 $6e

    sbc a                                         ; $64bc: $9f
    dec h                                         ; $64bd: $25
    rst $08                                       ; $64be: $cf
    ld [hl], a                                    ; $64bf: $77
    and h                                         ; $64c0: $a4
    ld h, d                                       ; $64c1: $62

jr_030_64c2:
    or a                                          ; $64c2: $b7
    ld d, d                                       ; $64c3: $52
    sub a                                         ; $64c4: $97
    ld d, c                                       ; $64c5: $51
    adc h                                         ; $64c6: $8c
    ld l, e                                       ; $64c7: $6b
    push hl                                       ; $64c8: $e5

jr_030_64c9:
    ld a, [hl]                                    ; $64c9: $7e
    cp e                                          ; $64ca: $bb
    ld e, [hl]                                    ; $64cb: $5e
    ld d, c                                       ; $64cc: $51
    cp [hl]                                       ; $64cd: $be
    db $d3                                        ; $64ce: $d3
    rra                                           ; $64cf: $1f
    ld e, [hl]                                    ; $64d0: $5e
    cp b                                          ; $64d1: $b8
    ld d, e                                       ; $64d2: $53
    sbc $b7                                       ; $64d3: $de $b7
    sbc a                                         ; $64d5: $9f
    call c, Call_030_5775                         ; $64d6: $dc $75 $57
    ret nc                                        ; $64d9: $d0

    ldh [$ef], a                                  ; $64da: $e0 $ef
    jp nc, Jump_000_0327                          ; $64dc: $d2 $27 $03

    ld d, a                                       ; $64df: $57
    sbc $02                                       ; $64e0: $de $02
    daa                                           ; $64e2: $27
    db $fd                                        ; $64e3: $fd
    add hl, de                                    ; $64e4: $19
    ld h, e                                       ; $64e5: $63
    ld c, b                                       ; $64e6: $48
    ld [hl], e                                    ; $64e7: $73
    ld d, l                                       ; $64e8: $55
    and $19                                       ; $64e9: $e6 $19
    cp b                                          ; $64eb: $b8
    push hl                                       ; $64ec: $e5
    dec l                                         ; $64ed: $2d

jr_030_64ee:
    rst $00                                       ; $64ee: $c7
    sub l                                         ; $64ef: $95

jr_030_64f0:
    push de                                       ; $64f0: $d5
    call z, Call_030_5f06                         ; $64f1: $cc $06 $5f
    dec hl                                        ; $64f4: $2b
    ld a, b                                       ; $64f5: $78
    dec a                                         ; $64f6: $3d
    rst $38                                       ; $64f7: $ff
    ld e, d                                       ; $64f8: $5a
    ld b, $70                                     ; $64f9: $06 $70
    or [hl]                                       ; $64fb: $b6
    dec de                                        ; $64fc: $1b
    db $dd                                        ; $64fd: $dd
    sub [hl]                                      ; $64fe: $96
    ld a, [hl+]                                   ; $64ff: $2a
    adc d                                         ; $6500: $8a
    cp b                                          ; $6501: $b8
    add hl, hl                                    ; $6502: $29
    add hl, sp                                    ; $6503: $39
    add d                                         ; $6504: $82
    ld e, c                                       ; $6505: $59
    adc h                                         ; $6506: $8c
    add c                                         ; $6507: $81
    ld h, l                                       ; $6508: $65
    ld b, b                                       ; $6509: $40
    dec h                                         ; $650a: $25
    inc bc                                        ; $650b: $03
    jp c, Jump_030_7ec5                           ; $650c: $da $c5 $7e

    and c                                         ; $650f: $a1
    pop af                                        ; $6510: $f1
    cp e                                          ; $6511: $bb
    db $fd                                        ; $6512: $fd
    rst $20                                       ; $6513: $e7
    sub l                                         ; $6514: $95
    sub l                                         ; $6515: $95
    jp c, Jump_030_5b43                           ; $6516: $da $43 $5b

    dec e                                         ; $6519: $1d
    call z, $0a63                                 ; $651a: $cc $63 $0a
    ld e, d                                       ; $651d: $5a
    ld c, d                                       ; $651e: $4a
    ld b, $d7                                     ; $651f: $06 $d7
    add e                                         ; $6521: $83
    ld h, [hl]                                    ; $6522: $66
    ld c, l                                       ; $6523: $4d
    add c                                         ; $6524: $81
    ld e, b                                       ; $6525: $58
    jp z, Jump_000_14b1                           ; $6526: $ca $b1 $14

    ei                                            ; $6529: $fb
    or h                                          ; $652a: $b4
    inc c                                         ; $652b: $0c
    ld l, b                                       ; $652c: $68
    db $fc                                        ; $652d: $fc
    adc $b6                                       ; $652e: $ce $b6
    inc d                                         ; $6530: $14
    ld [de], a                                    ; $6531: $12
    ld [hl], b                                    ; $6532: $70
    push hl                                       ; $6533: $e5
    dec l                                         ; $6534: $2d
    push af                                       ; $6535: $f5
    dec [hl]                                      ; $6536: $35
    jp nc, $2ab8                                  ; $6537: $d2 $b8 $2a

    ei                                            ; $653a: $fb
    call c, $1630                                 ; $653b: $dc $30 $16
    jr c, jr_030_64c2                             ; $653e: $38 $82

    add hl, de                                    ; $6540: $19
    ld h, e                                       ; $6541: $63
    jr jr_030_65a7                                ; $6542: $18 $63

    ld h, b                                       ; $6544: $60
    add hl, de                                    ; $6545: $19
    ld d, b                                       ; $6546: $50
    ret                                           ; $6547: $c9


    add b                                         ; $6548: $80
    halt                                          ; $6549: $76
    or c                                          ; $654a: $b1
    ld e, a                                       ; $654b: $5f
    ld l, b                                       ; $654c: $68
    adc l                                         ; $654d: $8d
    rst $10                                       ; $654e: $d7
    adc l                                         ; $654f: $8d
    pop af                                        ; $6550: $f1
    dec sp                                        ; $6551: $3b
    ld e, [hl]                                    ; $6552: $5e
    sbc b                                         ; $6553: $98
    or a                                          ; $6554: $b7
    daa                                           ; $6555: $27
    jr z, jr_030_64ee                             ; $6556: $28 $96

    ld a, [hl]                                    ; $6558: $7e
    sbc $35                                       ; $6559: $de $35
    push bc                                       ; $655b: $c5
    ld [c], a                                     ; $655c: $e2
    ld a, l                                       ; $655d: $7d
    ld e, d                                       ; $655e: $5a
    ld d, e                                       ; $655f: $53
    add h                                         ; $6560: $84
    ld e, a                                       ; $6561: $5f
    ld sp, $85ae                                  ; $6562: $31 $ae $85
    ld l, $17                                     ; $6565: $2e $17
    ld b, l                                       ; $6567: $45
    sbc $02                                       ; $6568: $de $02
    ld b, a                                       ; $656a: $47
    pop de                                        ; $656b: $d1
    add sp, -$1f                                  ; $656c: $e8 $e1
    ld [$1456], sp                                ; $656e: $08 $56 $14
    ld h, e                                       ; $6571: $63
    sbc c                                         ; $6572: $99
    ld [hl], e                                    ; $6573: $73
    push bc                                       ; $6574: $c5
    ld d, d                                       ; $6575: $52
    xor b                                         ; $6576: $a8
    sbc a                                         ; $6577: $9f
    or a                                          ; $6578: $b7
    and a                                         ; $6579: $a7
    ld e, d                                       ; $657a: $5a
    ld bc, $ee4a                                  ; $657b: $01 $4a $ee
    ld e, b                                       ; $657e: $58
    ld h, e                                       ; $657f: $63
    add hl, sp                                    ; $6580: $39
    ld a, [c]                                     ; $6581: $f2
    cp h                                          ; $6582: $bc
    dec b                                         ; $6583: $05
    and a                                         ; $6584: $a7
    ld e, d                                       ; $6585: $5a
    ld bc, $ee4a                                  ; $6586: $01 $4a $ee
    ld [$cafb], sp                                ; $6589: $08 $fb $ca
    sub a                                         ; $658c: $97
    push af                                       ; $658d: $f5
    xor d                                         ; $658e: $aa
    ld c, d                                       ; $658f: $4a
    set 2, [hl]                                   ; $6590: $cb $d6
    adc d                                         ; $6592: $8a
    add $55                                       ; $6593: $c6 $55
    reti                                          ; $6595: $d9


    rst $20                                       ; $6596: $e7
    add [hl]                                      ; $6597: $86
    or c                                          ; $6598: $b1
    ld a, [hl-]                                   ; $6599: $3a
    dec sp                                        ; $659a: $3b
    push hl                                       ; $659b: $e5
    ld a, l                                       ; $659c: $7d
    ei                                            ; $659d: $fb
    ret                                           ; $659e: $c9


    ld de, $62cc                                  ; $659f: $11 $cc $62
    inc c                                         ; $65a2: $0c
    inc l                                         ; $65a3: $2c
    inc bc                                        ; $65a4: $03

Jump_030_65a5:
    ld a, [hl+]                                   ; $65a5: $2a
    add hl, de                                    ; $65a6: $19

jr_030_65a7:
    ret nc                                        ; $65a7: $d0

    ld l, $f6                                     ; $65a8: $2e $f6
    dec bc                                        ; $65aa: $0b
    adc l                                         ; $65ab: $8d
    rst $18                                       ; $65ac: $df
    pop af                                        ; $65ad: $f1
    or e                                          ; $65ae: $b3
    dec l                                         ; $65af: $2d
    add l                                         ; $65b0: $85
    inc b                                         ; $65b1: $04
    ld a, [hl+]                                   ; $65b2: $2a
    cp e                                          ; $65b3: $bb
    inc d                                         ; $65b4: $14
    inc hl                                        ; $65b5: $23
    ld d, l                                       ; $65b6: $55
    ld c, l                                       ; $65b7: $4d
    call nc, $b0bb                                ; $65b8: $d4 $bb $b0
    or $d0                                        ; $65bb: $f6 $d0
    ld d, $1d                                     ; $65bd: $16 $1d
    call z, $0a63                                 ; $65bf: $cc $63 $0a
    ld e, d                                       ; $65c2: $5a
    ld c, d                                       ; $65c3: $4a
    ld b, $d7                                     ; $65c4: $06 $d7
    add e                                         ; $65c6: $83
    ld h, [hl]                                    ; $65c7: $66
    ld c, l                                       ; $65c8: $4d
    add c                                         ; $65c9: $81
    ld e, b                                       ; $65ca: $58
    jp z, Jump_000_14b1                           ; $65cb: $ca $b1 $14

    ei                                            ; $65ce: $fb
    or h                                          ; $65cf: $b4
    inc c                                         ; $65d0: $0c
    ld l, b                                       ; $65d1: $68
    db $fc                                        ; $65d2: $fc
    adc $b6                                       ; $65d3: $ce $b6
    inc d                                         ; $65d5: $14
    ld [de], a                                    ; $65d6: $12
    ld [hl], b                                    ; $65d7: $70
    push hl                                       ; $65d8: $e5
    dec l                                         ; $65d9: $2d
    daa                                           ; $65da: $27
    ld bc, $01ee                                  ; $65db: $01 $ee $01

jr_030_65de:
    ld h, $97                                     ; $65de: $26 $97
    xor l                                         ; $65e0: $ad
    add l                                         ; $65e1: $85
    ld h, c                                       ; $65e2: $61
    inc h                                         ; $65e3: $24
    rst $30                                       ; $65e4: $f7
    cp $2a                                        ; $65e5: $fe $2a
    xor l                                         ; $65e7: $ad

jr_030_65e8:
    call c, $fc6d                                 ; $65e8: $dc $6d $fc
    sub [hl]                                      ; $65eb: $96
    ld e, l                                       ; $65ec: $5d
    ld h, a                                       ; $65ed: $67
    inc e                                         ; $65ee: $1c
    add hl, hl                                    ; $65ef: $29
    rst $18                                       ; $65f0: $df
    ld [hl], c                                    ; $65f1: $71
    ld h, l                                       ; $65f2: $65
    ld l, c                                       ; $65f3: $69
    inc bc                                        ; $65f4: $03
    ld e, d                                       ; $65f5: $5a
    ld b, $ee                                     ; $65f6: $06 $ee
    rst $28                                       ; $65f8: $ef
    xor a                                         ; $65f9: $af
    ld h, [hl]                                    ; $65fa: $66
    add [hl]                                      ; $65fb: $86
    and l                                         ; $65fc: $a5
    jr z, jr_030_65de                             ; $65fd: $28 $df

    xor c                                         ; $65ff: $a9
    jr c, jr_030_65e8                             ; $6600: $38 $e6

    ld b, c                                       ; $6602: $41
    call z, $9955                                 ; $6603: $cc $55 $99
    ld h, a                                       ; $6606: $67
    ld b, b                                       ; $6607: $40
    rst $20                                       ; $6608: $e7
    cpl                                           ; $6609: $2f
    inc bc                                        ; $660a: $03
    ld a, [hl+]                                   ; $660b: $2a
    add hl, de                                    ; $660c: $19
    ret nc                                        ; $660d: $d0

    ld l, $f6                                     ; $660e: $2e $f6
    dec bc                                        ; $6610: $0b
    adc l                                         ; $6611: $8d
    ld e, $c4                                     ; $6612: $1e $c4
    adc d                                         ; $6614: $8a
    ld h, d                                       ; $6615: $62
    ld e, h                                       ; $6616: $5c
    ret nc                                        ; $6617: $d0

    add hl, sp                                    ; $6618: $39
    add hl, sp                                    ; $6619: $39
    adc [hl]                                      ; $661a: $8e
    and h                                         ; $661b: $a4
    xor b                                         ; $661c: $a8
    ld d, a                                       ; $661d: $57
    or h                                          ; $661e: $b4
    ld [$7261], a                                 ; $661f: $ea $61 $72
    db $fc                                        ; $6622: $fc
    ld l, [hl]                                    ; $6623: $6e
    rst $10                                       ; $6624: $d7
    push af                                       ; $6625: $f5

jr_030_6626:
    sbc h                                         ; $6626: $9c
    rst $10                                       ; $6627: $d7
    ld e, $da                                     ; $6628: $1e $da
    ld [bc], a                                    ; $662a: $02
    daa                                           ; $662b: $27
    jr z, jr_030_66a4                             ; $662c: $28 $76

    and e                                         ; $662e: $a3
    add a                                         ; $662f: $87
    ld b, l                                       ; $6630: $45
    or c                                          ; $6631: $b1
    add $6f                                       ; $6632: $c6 $6f
    inc e                                         ; $6634: $1c
    ld b, e                                       ; $6635: $43
    sbc a                                         ; $6636: $9f
    or $1f                                        ; $6637: $f6 $1f
    cp c                                          ; $6639: $b9
    ld d, $cf                                     ; $663a: $16 $cf
    add hl, hl                                    ; $663c: $29
    rst $18                                       ; $663d: $df
    adc c                                         ; $663e: $89
    rrca                                          ; $663f: $0f
    ld h, d                                       ; $6640: $62
    ld e, h                                       ; $6641: $5c
    call z, $b1fb                                 ; $6642: $cc $fb $b1
    ld [hl], d                                    ; $6645: $72
    or a                                          ; $6646: $b7
    db $eb                                        ; $6647: $eb
    ld d, d                                       ; $6648: $52
    ld b, e                                       ; $6649: $43
    ld a, [c]                                     ; $664a: $f2
    cp h                                          ; $664b: $bc
    dec b                                         ; $664c: $05
    daa                                           ; $664d: $27
    jr z, jr_030_6626                             ; $664e: $28 $d6

    ld hl, sp-$73                                 ; $6650: $f8 $8d
    db $e3                                        ; $6652: $e3
    ld b, l                                       ; $6653: $45
    ld hl, sp+$7e                                 ; $6654: $f8 $7e
    adc h                                         ; $6656: $8c
    dec hl                                        ; $6657: $2b
    halt                                          ; $6658: $76
    and e                                         ; $6659: $a3
    add a                                         ; $665a: $87
    ld b, l                                       ; $665b: $45
    or c                                          ; $665c: $b1
    xor a                                         ; $665d: $af
    push bc                                       ; $665e: $c5
    ei                                            ; $665f: $fb
    or h                                          ; $6660: $b4

jr_030_6661:
    add $62                                       ; $6661: $c6 $62
    db $f4                                        ; $6663: $f4
    jr nz, jr_030_6661                            ; $6664: $20 $fb

    add c                                         ; $6666: $81
    rst $00                                       ; $6667: $c7
    ld d, d                                       ; $6668: $52
    rst $28                                       ; $6669: $ef
    ld a, a                                       ; $666a: $7f
    ld b, l                                       ; $666b: $45
    sbc $02                                       ; $666c: $de $02
    daa                                           ; $666e: $27
    db $fd                                        ; $666f: $fd
    ld a, l                                       ; $6670: $7d
    adc l                                         ; $6671: $8d
    ld a, c                                       ; $6672: $79
    ld c, b                                       ; $6673: $48
    ld l, e                                       ; $6674: $6b
    inc l                                         ; $6675: $2c
    ld b, [hl]                                    ; $6676: $46
    ld e, [hl]                                    ; $6677: $5e
    scf                                           ; $6678: $37
    sub [hl]                                      ; $6679: $96
    ld b, d                                       ; $667a: $42
    db $fd                                        ; $667b: $fd
    sbc l                                         ; $667c: $9d
    xor b                                         ; $667d: $a8
    add [hl]                                      ; $667e: $86
    ldh [$2b], a                                  ; $667f: $e0 $2b
    cp c                                          ; $6681: $b9
    jp z, $8630                                   ; $6682: $ca $30 $86

    ld h, l                                       ; $6685: $65
    add hl, hl                                    ; $6686: $29
    rst $00                                       ; $6687: $c7
    ld d, d                                       ; $6688: $52
    or h                                          ; $6689: $b4
    and [hl]                                      ; $668a: $a6
    ld b, b                                       ; $668b: $40
    inc l                                         ; $668c: $2c
    inc bc                                        ; $668d: $03
    ld a, [de]                                    ; $668e: $1a
    cp a                                          ; $668f: $bf
    or e                                          ; $6690: $b3
    dec l                                         ; $6691: $2d
    add l                                         ; $6692: $85
    inc b                                         ; $6693: $04
    ld e, h                                       ; $6694: $5c
    ld a, c                                       ; $6695: $79
    dec bc                                        ; $6696: $0b
    daa                                           ; $6697: $27
    ld a, $88                                     ; $6698: $3e $88
    ld a, l                                       ; $669a: $7d
    adc l                                         ; $669b: $8d
    adc e                                         ; $669c: $8b
    ld a, c                                       ; $669d: $79
    ccf                                           ; $669e: $3f
    sub $58                                       ; $669f: $d6 $58
    call z, $cb90                                 ; $66a1: $cc $90 $cb

jr_030_66a4:
    ld [hl], a                                    ; $66a4: $77
    add hl, bc                                    ; $66a5: $09
    ld a, [hl-]                                   ; $66a6: $3a
    cpl                                           ; $66a7: $2f
    inc bc                                        ; $66a8: $03
    cp b                                          ; $66a9: $b8
    ld a, b                                       ; $66aa: $78
    sbc a                                         ; $66ab: $9f
    halt                                          ; $66ac: $76
    cp l                                          ; $66ad: $bd
    rst $08                                       ; $66ae: $cf
    xor l                                         ; $66af: $ad
    ld a, [$58b7]                                 ; $66b0: $fa $b7 $58
    ld h, e                                       ; $66b3: $63
    cp [hl]                                       ; $66b4: $be
    and d                                         ; $66b5: $a2
    ret c                                         ; $66b6: $d8

    adc l                                         ; $66b7: $8d
    ld e, $16                                     ; $66b8: $1e $16
    ld b, l                                       ; $66ba: $45
    sbc $02                                       ; $66bb: $de $02

Call_030_66bd:
    daa                                           ; $66bd: $27
    ld a, $88                                     ; $66be: $3e $88
    ld [hl], c                                    ; $66c0: $71
    ld sp, $c7ef                                  ; $66c1: $31 $ef $c7
    cp $83                                        ; $66c4: $fe $83
    ld e, b                                       ; $66c6: $58
    inc a                                         ; $66c7: $3c
    xor b                                         ; $66c8: $a8
    ld b, h                                       ; $66c9: $44
    db $e4                                        ; $66ca: $e4
    sbc d                                         ; $66cb: $9a
    ld b, c                                       ; $66cc: $41
    rst $20                                       ; $66cd: $e7
    ld sp, $bcaf                                  ; $66ce: $31 $af $bc
    ld c, a                                       ; $66d1: $4f
    or a                                          ; $66d2: $b7
    jr jr_030_672c                                ; $66d3: $18 $57

    db $ec                                        ; $66d5: $ec
    ld b, [hl]                                    ; $66d6: $46
    rrca                                          ; $66d7: $0f
    adc e                                         ; $66d8: $8b
    ld [hl+], a                                   ; $66d9: $22
    ld l, a                                       ; $66da: $6f
    ld bc, $d827                                  ; $66db: $01 $27 $d8
    jp nc, $bbcf                                  ; $66de: $d2 $cf $bb

    and [hl]                                      ; $66e1: $a6
    add hl, hl                                    ; $66e2: $29
    ld l, b                                       ; $66e3: $68
    ldh a, [$57]                                  ; $66e4: $f0 $57
    ld d, b                                       ; $66e6: $50
    or b                                          ; $66e7: $b0
    xor d                                         ; $66e8: $aa
    ld h, $e8                                     ; $66e9: $26 $e8

jr_030_66eb:
    and $28                                       ; $66eb: $e6 $28
    add sp, -$64                                  ; $66ed: $e8 $9c
    or a                                          ; $66ef: $b7
    and a                                         ; $66f0: $a7
    adc b                                         ; $66f1: $88
    ld h, l                                       ; $66f2: $65
    adc $75                                       ; $66f3: $ce $75
    ld a, [hl]                                    ; $66f5: $7e
    ld [hl], d                                    ; $66f6: $72
    rst $00                                       ; $66f7: $c7
    ld a, [de]                                    ; $66f8: $1a
    res 2, c                                      ; $66f9: $cb $91
    daa                                           ; $66fb: $27
    rst $00                                       ; $66fc: $c7
    dec d                                         ; $66fd: $15
    cp e                                          ; $66fe: $bb
    ld de, $4bfe                                  ; $66ff: $11 $fe $4b
    and l                                         ; $6702: $a5
    jr z, jr_030_66eb                             ; $6703: $28 $e6

    rrca                                          ; $6705: $0f
    ld e, b                                       ; $6706: $58
    adc d                                         ; $6707: $8a
    jp c, Jump_000_1dc4                           ; $6708: $da $c4 $1d

    ld d, a                                       ; $670b: $57
    ld h, d                                       ; $670c: $62
    rst $28                                       ; $670d: $ef
    db $d3                                        ; $670e: $d3
    cp b                                          ; $670f: $b8
    ld h, d                                       ; $6710: $62

Call_030_6711:
    ld a, [$301f]                                 ; $6711: $fa $1f $30
    ld a, [c]                                     ; $6714: $f2
    ld d, $a7                                     ; $6715: $16 $a7
    ccf                                           ; $6717: $3f
    adc b                                         ; $6718: $88
    ld [hl], c                                    ; $6719: $71
    ld b, c                                       ; $671a: $41
    rst $20                                       ; $671b: $e7
    db $e4                                        ; $671c: $e4
    adc h                                         ; $671d: $8c
    ld c, b                                       ; $671e: $48
    sbc a                                         ; $671f: $9f
    db $eb                                        ; $6720: $eb
    db $fc                                        ; $6721: $fc
    pop hl                                        ; $6722: $e1
    add l                                         ; $6723: $85
    ld a, c                                       ; $6724: $79
    dec bc                                        ; $6725: $0b
    push af                                       ; $6726: $f5
    rst $28                                       ; $6727: $ef
    adc d                                         ; $6728: $8a
    and [hl]                                      ; $6729: $a6
    xor [hl]                                      ; $672a: $ae
    ld l, e                                       ; $672b: $6b

jr_030_672c:
    add hl, de                                    ; $672c: $19
    ret nc                                        ; $672d: $d0

    ld a, [de]                                    ; $672e: $1a
    ld a, c                                       ; $672f: $79
    cp h                                          ; $6730: $bc
    rst $38                                       ; $6731: $ff
    or l                                          ; $6732: $b5
    ld a, a                                       ; $6733: $7f
    or a                                          ; $6734: $b7
    db $dd                                        ; $6735: $dd
    add sp, -$4a                                  ; $6736: $e8 $b6
    ld d, h                                       ; $6738: $54
    ld d, c                                       ; $6739: $51
    call nz, Call_000_36ad                        ; $673a: $c4 $ad $36
    or c                                          ; $673d: $b1
    dec b                                         ; $673e: $05
    and a                                         ; $673f: $a7
    ld a, [de]                                    ; $6740: $1a
    and h                                         ; $6741: $a4
    rla                                           ; $6742: $17
    cp b                                          ; $6743: $b8
    db $eb                                        ; $6744: $eb
    xor [hl]                                      ; $6745: $ae
    and b                                         ; $6746: $a0
    ld [hl], l                                    ; $6747: $75
    or b                                          ; $6748: $b0
    and d                                         ; $6749: $a2
    db $f4                                        ; $674a: $f4
    xor e                                         ; $674b: $ab
    ret                                           ; $674c: $c9


    di                                            ; $674d: $f3
    cp h                                          ; $674e: $bc
    dec b                                         ; $674f: $05
    daa                                           ; $6750: $27
    jp $415d                                      ; $6751: $c3 $5d $41


    push af                                       ; $6754: $f5
    ld l, $2d                                     ; $6755: $2e $2d
    inc bc                                        ; $6757: $03
    cp b                                          ; $6758: $b8
    cp b                                          ; $6759: $b8
    dec hl                                        ; $675a: $2b
    ld l, b                                       ; $675b: $68
    adc l                                         ; $675c: $8d
    ld b, l                                       ; $675d: $45
    call c, Call_000_0f6a                         ; $675e: $dc $6a $0f
    ld l, l                                       ; $6761: $6d
    ld bc, $ac1d                                  ; $6762: $01 $1d $ac
    jr z, @-$01                                   ; $6765: $28 $fd

    ld l, d                                       ; $6767: $6a
    ld d, [hl]                                    ; $6768: $56
    db $dd                                        ; $6769: $dd
    ld l, l                                       ; $676a: $6d
    ld b, [hl]                                    ; $676b: $46
    db $e4                                        ; $676c: $e4
    sub $dc                                       ; $676d: $d6 $dc
    sub $98                                       ; $676f: $d6 $98
    adc a                                         ; $6771: $8f
    rr l                                          ; $6772: $cb $1d
    db $eb                                        ; $6774: $eb
    cp d                                          ; $6775: $ba
    sub $3c                                       ; $6776: $d6 $3c
    ldh a, [rHDMA5]                               ; $6778: $f0 $55
    ld e, d                                       ; $677a: $5a
    jp c, $35d0                                   ; $677b: $da $d0 $35

    ld hl, sp+$5a                                 ; $677e: $f8 $5a
    jp c, $d2fc                                   ; $6780: $da $fc $d2

jr_030_6783:
    ld b, h                                       ; $6783: $44
    res 7, [hl]                                   ; $6784: $cb $be
    dec de                                        ; $6786: $1b
    xor [hl]                                      ; $6787: $ae
    or c                                          ; $6788: $b1
    adc a                                         ; $6789: $8f
    add hl, de                                    ; $678a: $19
    cp b                                          ; $678b: $b8
    push hl                                       ; $678c: $e5
    dec l                                         ; $678d: $2d
    daa                                           ; $678e: $27
    db $fd                                        ; $678f: $fd
    ld sp, $8bb6                                  ; $6790: $31 $b6 $8b
    ld l, l                                       ; $6793: $6d
    sbc a                                         ; $6794: $9f
    dec h                                         ; $6795: $25
    ld e, a                                       ; $6796: $5f
    ld d, c                                       ; $6797: $51
    adc h                                         ; $6798: $8c
    push hl                                       ; $6799: $e5
    rrca                                          ; $679a: $0f
    ld a, [de]                                    ; $679b: $1a
    ld b, l                                       ; $679c: $45
    cp [hl]                                       ; $679d: $be
    inc de                                        ; $679e: $13
    push bc                                       ; $679f: $c5
    ld h, b                                       ; $67a0: $60
    add hl, hl                                    ; $67a1: $29
    sbc d                                         ; $67a2: $9a
    ld l, b                                       ; $67a3: $68
    rst $00                                       ; $67a4: $c7
    jp z, Jump_030_7c2b                           ; $67a5: $ca $2b $7c

    ld e, a                                       ; $67a8: $5f
    ld h, e                                       ; $67a9: $63
    ld d, b                                       ; $67aa: $50
    rst $38                                       ; $67ab: $ff
    db $eb                                        ; $67ac: $eb
    db $d3                                        ; $67ad: $d3
    adc h                                         ; $67ae: $8c
    pop de                                        ; $67af: $d1
    or l                                          ; $67b0: $b5
    ld [$44e1], a                                 ; $67b1: $ea $e1 $44
    and e                                         ; $67b4: $a3
    add a                                         ; $67b5: $87
    dec sp                                        ; $67b6: $3b
    sub $dc                                       ; $67b7: $d6 $dc
    ld l, e                                       ; $67b9: $6b
    ld b, [hl]                                    ; $67ba: $46
    jr nc, jr_030_6783                            ; $67bb: $30 $c6

    ld h, d                                       ; $67bd: $62
    add $e8                                       ; $67be: $c6 $e8
    ld e, d                                       ; $67c0: $5a
    rlca                                          ; $67c1: $07
    dec hl                                        ; $67c2: $2b
    ld c, d                                       ; $67c3: $4a
    cp a                                          ; $67c4: $bf
    sbc d                                         ; $67c5: $9a
    adc c                                         ; $67c6: $89
    sub [hl]                                      ; $67c7: $96
    push hl                                       ; $67c8: $e5
    rst $28                                       ; $67c9: $ef
    ld a, [hl-]                                   ; $67ca: $3a
    sub a                                         ; $67cb: $97
    add e                                         ; $67cc: $83
    rst $20                                       ; $67cd: $e7
    db $eb                                        ; $67ce: $eb
    inc b                                         ; $67cf: $04
    inc sp                                        ; $67d0: $33
    ld [hl], b                                    ; $67d1: $70
    adc e                                         ; $67d2: $8b
    ld d, l                                       ; $67d3: $55
    rrca                                          ; $67d4: $0f
    ld a, a                                       ; $67d5: $7f
    xor h                                         ; $67d6: $ac
    ld de, $32f8                                  ; $67d7: $11 $f8 $32
    and b                                         ; $67da: $a0
    ld e, l                                       ; $67db: $5d
    and d                                         ; $67dc: $a2
    ld h, c                                       ; $67dd: $61
    sub l                                         ; $67de: $95
    cp d                                          ; $67df: $ba
    ld e, l                                       ; $67e0: $5d
    ld e, b                                       ; $67e1: $58
    sub h                                         ; $67e2: $94
    or a                                          ; $67e3: $b7
    and a                                         ; $67e4: $a7
    adc b                                         ; $67e5: $88
    ld h, l                                       ; $67e6: $65
    adc $75                                       ; $67e7: $ce $75
    ld a, [hl]                                    ; $67e9: $7e
    ld l, l                                       ; $67ea: $6d
    ld [c], a                                     ; $67eb: $e2
    ld c, [hl]                                    ; $67ec: $4e
    or b                                          ; $67ed: $b0
    dec d                                         ; $67ee: $15
    cp h                                          ; $67ef: $bc
    sbc [hl]                                      ; $67f0: $9e
    ld a, a                                       ; $67f1: $7f
    push hl                                       ; $67f2: $e5

jr_030_67f3:
    dec sp                                        ; $67f3: $3b
    xor d                                         ; $67f4: $aa
    inc d                                         ; $67f5: $14
    ld c, l                                       ; $67f6: $4d
    ld b, c                                       ; $67f7: $41
    xor e                                         ; $67f8: $ab
    sbc [hl]                                      ; $67f9: $9e
    sub e                                         ; $67fa: $93
    ld l, d                                       ; $67fb: $6a
    inc de                                        ; $67fc: $13
    ld e, e                                       ; $67fd: $5b
    add a                                         ; $67fe: $87
    sbc e                                         ; $67ff: $9b
    or c                                          ; $6800: $b1
    ld e, b                                       ; $6801: $58
    inc l                                         ; $6802: $2c
    ld [hl], $9b                                  ; $6803: $36 $9b
    call Call_030_4dae                            ; $6805: $cd $ae $4d
    ld l, h                                       ; $6808: $6c
    ld bc, $bd27                                  ; $6809: $01 $27 $bd
    rst $00                                       ; $680c: $c7
    ld c, [hl]                                    ; $680d: $4e
    xor [hl]                                      ; $680e: $ae
    or d                                          ; $680f: $b2
    ld d, c                                       ; $6810: $51
    rst $10                                       ; $6811: $d7
    and h                                         ; $6812: $a4
    inc a                                         ; $6813: $3c
    rst $08                                       ; $6814: $cf
    sub a                                         ; $6815: $97
    ld a, l                                       ; $6816: $7d
    scf                                           ; $6817: $37
    ld e, h                                       ; $6818: $5c
    ld h, l                                       ; $6819: $65
    dec h                                         ; $681a: $25
    rst $08                                       ; $681b: $cf
    di                                            ; $681c: $f3
    ld d, $27                                     ; $681d: $16 $27
    jp $415d                                      ; $681f: $c3 $5d $41


    push af                                       ; $6822: $f5
    ld l, $2d                                     ; $6823: $2e $2d
    inc bc                                        ; $6825: $03
    cp b                                          ; $6826: $b8
    cp b                                          ; $6827: $b8
    dec hl                                        ; $6828: $2b
    ld l, b                                       ; $6829: $68
    adc l                                         ; $682a: $8d
    ld b, l                                       ; $682b: $45
    call c, Call_000_0f6a                         ; $682c: $dc $6a $0f
    ld l, l                                       ; $682f: $6d
    ld bc, $95c7                                  ; $6830: $01 $c7 $95
    add hl, hl                                    ; $6833: $29
    ld l, b                                       ; $6834: $68
    adc l                                         ; $6835: $8d
    add hl, sp                                    ; $6836: $39
    ld h, c                                       ; $6837: $61
    cp [hl]                                       ; $6838: $be
    ld a, [$755a]                                 ; $6839: $fa $5a $75
    or a                                          ; $683c: $b7
    and [hl]                                      ; $683d: $a6
    ld d, c                                       ; $683e: $51
    add hl, hl                                    ; $683f: $29
    jp c, $e8d1                                   ; $6840: $da $d1 $e8

    ld a, [$2be7]                                 ; $6843: $fa $e7 $2b
    rst $18                                       ; $6846: $df
    ld [hl], c                                    ; $6847: $71
    ld h, l                                       ; $6848: $65
    ld l, c                                       ; $6849: $69
    inc bc                                        ; $684a: $03
    ld e, d                                       ; $684b: $5a
    ld b, $b4                                     ; $684c: $06 $b4
    ld l, h                                       ; $684e: $6c
    adc l                                         ; $684f: $8d
    inc [hl]                                      ; $6850: $34
    or a                                          ; $6851: $b7
    xor d                                         ; $6852: $aa
    xor $d7                                       ; $6853: $ee $d7
    ld [$58ec], a                                 ; $6855: $ea $ec $58
    ld h, e                                       ; $6858: $63
    add hl, sp                                    ; $6859: $39
    ld a, [c]                                     ; $685a: $f2
    cp h                                          ; $685b: $bc
    dec b                                         ; $685c: $05
    ld b, a                                       ; $685d: $47
    ld h, d                                       ; $685e: $62
    call nc, Call_000_1eab                        ; $685f: $d4 $ab $1e
    ld h, $47                                     ; $6862: $26 $47
    or b                                          ; $6864: $b0
    jr nc, jr_030_67f3                            ; $6865: $30 $8c

    ld e, l                                       ; $6867: $5d
    ld e, d                                       ; $6868: $5a
    ld b, $70                                     ; $6869: $06 $70
    ld [hl], $82                                  ; $686b: $36 $82
    db $db                                        ; $686d: $db
    adc d                                         ; $686e: $8a
    xor l                                         ; $686f: $ad
    ldh [$f5], a                                  ; $6870: $e0 $f5
    db $fc                                        ; $6872: $fc
    xor e                                         ; $6873: $ab
    or $d0                                        ; $6874: $f6 $d0
    ld d, $27                                     ; $6876: $16 $27
    add e                                         ; $6878: $83

jr_030_6879:
    ld c, d                                       ; $6879: $4a
    ld b, $ee                                     ; $687a: $06 $ee
    ldh a, [$97]                                  ; $687c: $f0 $97
    ld bc, $231c                                  ; $687e: $01 $1c $23
    and b                                         ; $6881: $a0
    push bc                                       ; $6882: $c5
    ei                                            ; $6883: $fb
    dec bc                                        ; $6884: $0b
    ei                                            ; $6885: $fb
    xor h                                         ; $6886: $ac
    ld a, h                                       ; $6887: $7c
    ld e, c                                       ; $6888: $59
    ld a, [hl+]                                   ; $6889: $2a
    add b                                         ; $688a: $80
    rlc b                                         ; $688b: $cb $00
    xor [hl]                                      ; $688d: $ae
    ld l, b                                       ; $688e: $68
    xor c                                         ; $688f: $a9
    add a                                         ; $6890: $87
    or h                                          ; $6891: $b4
    add $5f                                       ; $6892: $c6 $5f
    ld a, c                                       ; $6894: $79
    sbc a                                         ; $6895: $9f
    and l                                         ; $6896: $a5
    add l                                         ; $6897: $85
    adc l                                         ; $6898: $8d
    ld b, c                                       ; $6899: $41
    dec h                                         ; $689a: $25
    ld d, a                                       ; $689b: $57
    add hl, de                                    ; $689c: $19
    add $0c                                       ; $689d: $c6 $0c
    sub $38                                       ; $689f: $d6 $38
    halt                                          ; $68a1: $76
    ld e, $d7                                     ; $68a2: $1e $d7
    ld a, [hl+]                                   ; $68a4: $2a
    dec hl                                        ; $68a5: $2b
    scf                                           ; $68a6: $37
    adc [hl]                                      ; $68a7: $8e
    rla                                           ; $68a8: $17
    pop hl                                        ; $68a9: $e1
    ei                                            ; $68aa: $fb
    or c                                          ; $68ab: $b1
    dec de                                        ; $68ac: $1b
    ret                                           ; $68ad: $c9


    cp a                                          ; $68ae: $bf
    ld c, d                                       ; $68af: $4a
    ld d, c                                       ; $68b0: $51
    db $e4                                        ; $68b1: $e4
    db $eb                                        ; $68b2: $eb
    ld h, b                                       ; $68b3: $60
    jr jr_030_6879                                ; $68b4: $18 $c3

    ld [hl-], a                                   ; $68b6: $32
    add $96                                       ; $68b7: $c6 $96
    ld b, d                                       ; $68b9: $42
    ld a, l                                       ; $68ba: $7d
    ld [$968e], a                                 ; $68bb: $ea $8e $96
    ld a, d                                       ; $68be: $7a
    add sp, $5a                                   ; $68bf: $e8 $5a
    ld b, $54                                     ; $68c1: $06 $54
    ld [hl-], a                                   ; $68c3: $32
    and b                                         ; $68c4: $a0
    ld e, l                                       ; $68c5: $5d
    db $ec                                        ; $68c6: $ec
    rla                                           ; $68c7: $17
    ld e, d                                       ; $68c8: $5a
    ld b, $70                                     ; $68c9: $06 $70
    dec b                                         ; $68cb: $05
    ld [hl], b                                    ; $68cc: $70
    db $fc                                        ; $68cd: $fc
    db $fd                                        ; $68ce: $fd
    cpl                                           ; $68cf: $2f
    or a                                          ; $68d0: $b7
    ld sp, $35a8                                  ; $68d1: $31 $a8 $35

jr_030_68d4:
    rrca                                          ; $68d4: $0f
    ld a, h                                       ; $68d5: $7c
    db $f4                                        ; $68d6: $f4
    jr nz, jr_030_68d4                            ; $68d7: $20 $fb

    add c                                         ; $68d9: $81
    ld b, a                                       ; $68da: $47
    sbc $02                                       ; $68db: $de $02
    dec e                                         ; $68dd: $1d
    inc c                                         ; $68de: $0c
    ld h, e                                       ; $68df: $63
    add hl, hl                                    ; $68e0: $29
    call nc, $f45f                                ; $68e1: $d4 $5f $f4
    ldh [$c9], a                                  ; $68e4: $e0 $c9
    sub l                                         ; $68e6: $95
    ei                                            ; $68e7: $fb
    ld d, c                                       ; $68e8: $51
    dec b                                         ; $68e9: $05
    dec sp                                        ; $68ea: $3b
    and e                                         ; $68eb: $a3
    adc a                                         ; $68ec: $8f
    ld l, e                                       ; $68ed: $6b
    inc c                                         ; $68ee: $0c
    ld l, d                                       ; $68ef: $6a
    ld e, h                                       ; $68f0: $5c
    dec hl                                        ; $68f1: $2b
    or [hl]                                       ; $68f2: $b6
    adc [hl]                                      ; $68f3: $8e
    jr z, jr_030_696d                             ; $68f4: $28 $77

    xor l                                         ; $68f6: $ad
    ld h, c                                       ; $68f7: $61
    ld h, e                                       ; $68f8: $63
    ld a, c                                       ; $68f9: $79
    pop af                                        ; $68fa: $f1
    ld a, [de]                                    ; $68fb: $1a
    or [hl]                                       ; $68fc: $b6
    dec d                                         ; $68fd: $15
    push de                                       ; $68fe: $d5
    ld h, $ee                                     ; $68ff: $26 $ee
    ld h, h                                       ; $6901: $64
    ret nz                                        ; $6902: $c0

    dec [hl]                                      ; $6903: $35
    rrca                                          ; $6904: $0f
    call c, $690d                                 ; $6905: $dc $0d $69
    ld e, l                                       ; $6908: $5d
    sub e                                         ; $6909: $93
    ld l, e                                       ; $690a: $6b
    db $fc                                        ; $690b: $fc
    ld d, $8a                                     ; $690c: $16 $8a
    and $e6                                       ; $690e: $e6 $e6
    or a                                          ; $6910: $b7
    push de                                       ; $6911: $d5
    reti                                          ; $6912: $d9


    and l                                         ; $6913: $a5
    dec [hl]                                      ; $6914: $35
    rrca                                          ; $6915: $0f
    ccf                                           ; $6916: $3f
    push de                                       ; $6917: $d5
    ld e, $da                                     ; $6918: $1e $da
    ld [bc], a                                    ; $691a: $02
    ld e, c                                       ; $691b: $59
    ld a, [hl+]                                   ; $691c: $2a
    add b                                         ; $691d: $80
    rlc b                                         ; $691e: $cb $00
    adc [hl]                                      ; $6920: $8e
    ld de, $48d0                                  ; $6921: $11 $d0 $48
    inc hl                                        ; $6924: $23
    sub b                                         ; $6925: $90
    daa                                           ; $6926: $27
    rst $00                                       ; $6927: $c7
    rst $28                                       ; $6928: $ef
    sub $78                                       ; $6929: $d6 $78
    db $dd                                        ; $692b: $dd
    ld e, b                                       ; $692c: $58
    ld d, c                                       ; $692d: $51
    db $ec                                        ; $692e: $ec
    jp nc, Jump_000_0327                          ; $692f: $d2 $27 $03

    ld d, a                                       ; $6932: $57
    inc l                                         ; $6933: $2c
    inc bc                                        ; $6934: $03
    cp b                                          ; $6935: $b8
    ld [hl], d                                    ; $6936: $72
    ld a, a                                       ; $6937: $7f
    sbc a                                         ; $6938: $9f
    ld d, [hl]                                    ; $6939: $56
    ld h, b                                       ; $693a: $60
    call c, $ac7e                                 ; $693b: $dc $7e $ac
    jr z, jr_030_69b6                             ; $693e: $28 $76

    and e                                         ; $6940: $a3
    add a                                         ; $6941: $87
    ld b, l                                       ; $6942: $45
    sub c                                         ; $6943: $91
    cpl                                           ; $6944: $2f
    ld c, e                                       ; $6945: $4b
    dec b                                         ; $6946: $05
    ld [hl], b                                    ; $6947: $70
    add hl, de                                    ; $6948: $19
    ret nz                                        ; $6949: $c0

    push bc                                       ; $694a: $c5
    ld e, l                                       ; $694b: $5d
    ld b, c                                       ; $694c: $41
    or e                                          ; $694d: $b3
    db $eb                                        ; $694e: $eb
    ld a, [c]                                     ; $694f: $f2
    ld [hl], a                                    ; $6950: $77
    or c                                          ; $6951: $b1
    ld l, a                                       ; $6952: $6f
    dec bc                                        ; $6953: $0b
    ld e, h                                       ; $6954: $5c
    ld a, c                                       ; $6955: $79
    sbc a                                         ; $6956: $9f
    ld b, l                                       ; $6957: $45
    xor d                                         ; $6958: $aa
    sbc d                                         ; $6959: $9a
    ld e, b                                       ; $695a: $58
    sbc l                                         ; $695b: $9d
    dec d                                         ; $695c: $15
    dec de                                        ; $695d: $1b
    add e                                         ; $695e: $83
    sbc d                                         ; $695f: $9a
    and l                                         ; $6960: $a5
    pop af                                        ; $6961: $f1
    adc a                                         ; $6962: $8f
    ld l, e                                       ; $6963: $6b
    ld l, $f2                                     ; $6964: $2e $f2
    rlca                                          ; $6966: $07
    adc h                                         ; $6967: $8c
    ld a, h                                       ; $6968: $7c
    pop af                                        ; $6969: $f1
    cp $9a                                        ; $696a: $fe $9a
    rlca                                          ; $696c: $07

jr_030_696d:
    call z, $cf43                                 ; $696d: $cc $43 $cf
    ld e, e                                       ; $6970: $5b
    and a                                         ; $6971: $a7
    cp a                                          ; $6972: $bf
    jp nz, Jump_000_3d55                          ; $6973: $c2 $55 $3d

    and a                                         ; $6976: $a7
    jp c, $16c4                                   ; $6977: $da $c4 $16

    rst $00                                       ; $697a: $c7
    sbc d                                         ; $697b: $9a
    ld a, e                                       ; $697c: $7b
    ld c, l                                       ; $697d: $4d
    ld l, l                                       ; $697e: $6d
    ld [c], a                                     ; $697f: $e2
    ld a, [hl-]                                   ; $6980: $3a
    dec a                                         ; $6981: $3d
    and b                                         ; $6982: $a0
    ld sp, $14b6                                  ; $6983: $31 $b6 $14
    ld [$1ed7], a                                 ; $6986: $ea $d7 $1e
    jp c, Jump_000_2702                           ; $6989: $da $02 $27

    ld bc, $5726                                  ; $698c: $01 $26 $57
    add hl, de                                    ; $698f: $19
    add $8a                                       ; $6990: $c6 $8a
    xor l                                         ; $6992: $ad
    ldh [$f5], a                                  ; $6993: $e0 $f5
    db $fc                                        ; $6995: $fc
    ld l, e                                       ; $6996: $6b
    ld a, [bc]                                    ; $6997: $0a
    ld e, d                                       ; $6998: $5a
    xor c                                         ; $6999: $a9
    ld d, e                                       ; $699a: $53
    cpl                                           ; $699b: $2f
    ld h, l                                       ; $699c: $65
    sub c                                         ; $699d: $91
    ld e, h                                       ; $699e: $5c
    push af                                       ; $699f: $f5
    sbc h                                         ; $69a0: $9c
    sub h                                         ; $69a1: $94
    or a                                          ; $69a2: $b7
    push af                                       ; $69a3: $f5
    dec [hl]                                      ; $69a4: $35
    jp nc, $8032                                  ; $69a5: $d2 $32 $80

    ld b, h                                       ; $69a8: $44
    ld c, d                                       ; $69a9: $4a
    xor $58                                       ; $69aa: $ee $58
    ld [hl], e                                    ; $69ac: $73
    xor a                                         ; $69ad: $af
    ld c, c                                       ; $69ae: $49
    adc [hl]                                      ; $69af: $8e
    ld h, b                                       ; $69b0: $60
    adc d                                         ; $69b1: $8a
    jp hl                                         ; $69b2: $e9


    cpl                                           ; $69b3: $2f
    ld l, [hl]                                    ; $69b4: $6e
    rla                                           ; $69b5: $17

jr_030_69b6:
    jr c, @-$2c                                   ; $69b6: $38 $d2

    ld l, l                                       ; $69b8: $6d
    ld [hl], l                                    ; $69b9: $75
    sub $f8                                       ; $69ba: $d6 $f8
    dec l                                         ; $69bc: $2d
    db $f4                                        ; $69bd: $f4
    add hl, hl                                    ; $69be: $29
    rst $18                                       ; $69bf: $df
    ld d, c                                       ; $69c0: $51
    or h                                          ; $69c1: $b4
    or b                                          ; $69c2: $b0
    adc e                                         ; $69c3: $8b
    xor l                                         ; $69c4: $ad
    ld h, l                                       ; $69c5: $65
    ld b, b                                       ; $69c6: $40
    dec hl                                        ; $69c7: $2b
    adc d                                         ; $69c8: $8a
    db $dd                                        ; $69c9: $dd
    add sp, $61                                   ; $69ca: $e8 $61
    ld d, c                                       ; $69cc: $51
    inc l                                         ; $69cd: $2c
    inc [hl]                                      ; $69ce: $34
    ld a, [c]                                     ; $69cf: $f2
    ld d, a                                       ; $69d0: $57
    dec [hl]                                      ; $69d1: $35
    ld a, [$c6b4]                                 ; $69d2: $fa $b4 $c6
    inc a                                         ; $69d5: $3c
    db $fd                                        ; $69d6: $fd
    jr nc, @-$0c                                  ; $69d7: $30 $f2

    ld d, $27                                     ; $69d9: $16 $27
    db $fd                                        ; $69db: $fd
    cp c                                          ; $69dc: $b9
    ld a, $b9                                     ; $69dd: $3e $b9
    ld d, [hl]                                    ; $69df: $56
    add hl, de                                    ; $69e0: $19
    ld a, [hl]                                    ; $69e1: $7e
    jp nc, Jump_030_4fb7                          ; $69e2: $d2 $b7 $4f

    ld sp, hl                                     ; $69e5: $f9

Jump_030_69e6:
    ld c, [hl]                                    ; $69e6: $4e
    ld d, b                                       ; $69e7: $50
    call z, $5c80                                 ; $69e8: $cc $80 $5c
    ld sp, $90fe                                  ; $69eb: $31 $fe $90
    pop de                                        ; $69ee: $d1
    and a                                         ; $69ef: $a7
    pop af                                        ; $69f0: $f1
    ld e, e                                       ; $69f1: $5b
    halt                                          ; $69f2: $76
    sbc l                                         ; $69f3: $9d
    push de                                       ; $69f4: $d5
    xor h                                         ; $69f5: $ac
    ld l, e                                       ; $69f6: $6b
    ld [hl], d                                    ; $69f7: $72
    push hl                                       ; $69f8: $e5
    dec l                                         ; $69f9: $2d
    rst $00                                       ; $69fa: $c7
    ld a, [bc]                                    ; $69fb: $0a
    ld e, h                                       ; $69fc: $5c
    db $10                                        ; $69fd: $10
    xor d                                         ; $69fe: $aa
    db $f4                                        ; $69ff: $f4
    ld l, c                                       ; $6a00: $69
    add hl, de                                    ; $6a01: $19
    ret nc                                        ; $6a02: $d0

    adc [hl]                                      ; $6a03: $8e
    dec [hl]                                      ; $6a04: $35
    sub [hl]                                      ; $6a05: $96
    inc hl                                        ; $6a06: $23
    rra                                           ; $6a07: $1f
    db $dd                                        ; $6a08: $dd
    dec l                                         ; $6a09: $2d
    ld b, [hl]                                    ; $6a0a: $46
    cp $80                                        ; $6a0b: $fe $80
    cp c                                          ; $6a0d: $b9
    adc l                                         ; $6a0e: $8d
    db $db                                        ; $6a0f: $db
    adc a                                         ; $6a10: $8f
    dec d                                         ; $6a11: $15
    ld e, e                                       ; $6a12: $5b
    ld a, [$d779]                                 ; $6a13: $fa $79 $d7
    sub h                                         ; $6a16: $94
    xor a                                         ; $6a17: $af
    add e                                         ; $6a18: $83
    pop hl                                        ; $6a19: $e1
    daa                                           ; $6a1a: $27
    ld a, l                                       ; $6a1b: $7d
    ei                                            ; $6a1c: $fb
    sub h                                         ; $6a1d: $94
    inc e                                         ; $6a1e: $1c
    ld h, e                                       ; $6a1f: $63
    ld h, e                                       ; $6a20: $63
    sub b                                         ; $6a21: $90
    or h                                          ; $6a22: $b4
    ld a, [hl-]                                   ; $6a23: $3a
    dec sp                                        ; $6a24: $3b
    add $6b                                       ; $6a25: $c6 $6b
    jp nc, $f7e9                                  ; $6a27: $d2 $e9 $f7

    ld sp, hl                                     ; $6a2a: $f9
    di                                            ; $6a2b: $f3
    cp h                                          ; $6a2c: $bc
    dec b                                         ; $6a2d: $05
    dec e                                         ; $6a2e: $1d
    inc c                                         ; $6a2f: $0c
    ccf                                           ; $6a30: $3f
    jp hl                                         ; $6a31: $e9


    db $db                                        ; $6a32: $db
    and a                                         ; $6a33: $a7
    db $e4                                        ; $6a34: $e4
    sbc $1f                                       ; $6a35: $de $1f
    ld h, e                                       ; $6a37: $63
    dec bc                                        ; $6a38: $0b
    db $ed                                        ; $6a39: $ed
    ld a, d                                       ; $6a3a: $7a
    ld [hl], b                                    ; $6a3b: $70
    or c                                          ; $6a3c: $b1
    push hl                                       ; $6a3d: $e5
    ret                                           ; $6a3e: $c9


    ld [hl], l                                    ; $6a3f: $75
    ld a, h                                       ; $6a40: $7c
    ld b, h                                       ; $6a41: $44
    ld a, [c]                                     ; $6a42: $f2
    cp h                                          ; $6a43: $bc
    dec b                                         ; $6a44: $05
    daa                                           ; $6a45: $27
    ret c                                         ; $6a46: $d8

    ld e, h                                       ; $6a47: $5c
    and h                                         ; $6a48: $a4
    rrca                                          ; $6a49: $0f
    sbc d                                         ; $6a4a: $9a
    add d                                         ; $6a4b: $82
    ld b, [hl]                                    ; $6a4c: $46
    ld a, [c]                                     ; $6a4d: $f2
    ld a, [bc]                                    ; $6a4e: $0a
    rst $38                                       ; $6a4f: $ff
    ld c, l                                       ; $6a50: $4d
    ret                                           ; $6a51: $c9


    cp c                                          ; $6a52: $b9
    add sp, -$7f                                  ; $6a53: $e8 $81
    ld a, a                                       ; $6a55: $7f
    sbc l                                         ; $6a56: $9d
    ccf                                           ; $6a57: $3f
    xor h                                         ; $6a58: $ac
    xor d                                         ; $6a59: $aa
    dec de                                        ; $6a5a: $1b
    ld b, a                                       ; $6a5b: $47
    inc hl                                        ; $6a5c: $23
    ld d, l                                       ; $6a5d: $55
    ld a, [$3ab4]                                 ; $6a5e: $fa $b4 $3a
    dec sp                                        ; $6a61: $3b
    add $6b                                       ; $6a62: $c6 $6b
    jp nc, $f7e9                                  ; $6a64: $d2 $e9 $f7

    ld sp, hl                                     ; $6a67: $f9
    di                                            ; $6a68: $f3
    cp h                                          ; $6a69: $bc
    dec b                                         ; $6a6a: $05
    rst $00                                       ; $6a6b: $c7
    ld hl, sp-$3d                                 ; $6a6c: $f8 $c3
    ccf                                           ; $6a6e: $3f
    xor [hl]                                      ; $6a6f: $ae
    dec [hl]                                      ; $6a70: $35
    rst $08                                       ; $6a71: $cf
    xor a                                         ; $6a72: $af
    ld d, $c7                                     ; $6a73: $16 $c7
    sbc d                                         ; $6a75: $9a
    ld a, e                                       ; $6a76: $7b
    ld c, l                                       ; $6a77: $4d
    ld l, l                                       ; $6a78: $6d
    ld [c], a                                     ; $6a79: $e2
    ld c, [hl]                                    ; $6a7a: $4e
    add [hl]                                      ; $6a7b: $86
    cp e                                          ; $6a7c: $bb
    add d                                         ; $6a7d: $82
    ld [$5a5d], a                                 ; $6a7e: $ea $5d $5a
    ld b, $70                                     ; $6a81: $06 $70
    ld [hl], c                                    ; $6a83: $71
    ld d, a                                       ; $6a84: $57
    ret nc                                        ; $6a85: $d0

    ld a, [de]                                    ; $6a86: $1a
    adc e                                         ; $6a87: $8b
    cp b                                          ; $6a88: $b8
    push de                                       ; $6a89: $d5
    ld e, $da                                     ; $6a8a: $1e $da
    ld [bc], a                                    ; $6a8c: $02
    and a                                         ; $6a8d: $a7
    cp a                                          ; $6a8e: $bf
    jp nz, Jump_000_3d55                          ; $6a8f: $c2 $55 $3d

    and a                                         ; $6a92: $a7
    add l                                         ; $6a93: $85
    halt                                          ; $6a94: $76
    reti                                          ; $6a95: $d9


    push bc                                       ; $6a96: $c5
    sub $b8                                       ; $6a97: $d6 $b8
    db $fd                                        ; $6a99: $fd
    ld e, b                                       ; $6a9a: $58
    or c                                          ; $6a9b: $b1

jr_030_6a9c:
    and l                                         ; $6a9c: $a5
    sbc a                                         ; $6a9d: $9f
    ld [hl], a                                    ; $6a9e: $77
    ld c, l                                       ; $6a9f: $4d
    inc de                                        ; $6aa0: $13
    call $f488                                    ; $6aa1: $cd $88 $f4
    ld sp, hl                                     ; $6aa4: $f9
    sbc d                                         ; $6aa5: $9a
    rlca                                          ; $6aa6: $07
    cp [hl]                                       ; $6aa7: $be
    cp b                                          ; $6aa8: $b8
    xor e                                         ; $6aa9: $ab
    ld l, d                                       ; $6aaa: $6a
    call z, $e3e5                                 ; $6aab: $cc $e5 $e3
    ld e, d                                       ; $6aae: $5a
    or c                                          ; $6aaf: $b1
    ld [hl], l                                    ; $6ab0: $75
    ld b, h                                       ; $6ab1: $44
    cp c                                          ; $6ab2: $b9
    ld l, e                                       ; $6ab3: $6b
    dec c                                         ; $6ab4: $0d
    dec de                                        ; $6ab5: $1b
    res 1, e                                      ; $6ab6: $cb $8b
    rst $10                                       ; $6ab8: $d7
    or b                                          ; $6ab9: $b0
    xor l                                         ; $6aba: $ad
    jr z, jr_030_6a9c                             ; $6abb: $28 $df

    ld d, c                                       ; $6abd: $51
    or h                                          ; $6abe: $b4
    ld l, h                                       ; $6abf: $6c
    db $ed                                        ; $6ac0: $ed
    ld a, [c]                                     ; $6ac1: $f2
    add a                                         ; $6ac2: $87
    or c                                          ; $6ac3: $b1
    inc c                                         ; $6ac4: $0c
    ld l, b                                       ; $6ac5: $68
    and a                                         ; $6ac6: $a7
    inc a                                         ; $6ac7: $3c
    ld d, $68                                     ; $6ac8: $16 $68
    or [hl]                                       ; $6aca: $b6
    sub a                                         ; $6acb: $97
    ld a, [hl+]                                   ; $6acc: $2a
    ret z                                         ; $6acd: $c8

    cp d                                          ; $6ace: $ba
    db $ed                                        ; $6acf: $ed
    ld h, h                                       ; $6ad0: $64
    ld b, b                                       ; $6ad1: $40
    ld [hl], a                                    ; $6ad2: $77
    sub l                                         ; $6ad3: $95
    or d                                          ; $6ad4: $b2
    ld a, [hl-]                                   ; $6ad5: $3a
    dec hl                                        ; $6ad6: $2b
    ld [hl], a                                    ; $6ad7: $77
    ld b, e                                       ; $6ad8: $43
    ld l, $cf                                     ; $6ad9: $2e $cf
    ld e, e                                       ; $6adb: $5b
    daa                                           ; $6adc: $27
    ld l, d                                       ; $6add: $6a
    adc l                                         ; $6ade: $8d
    cp a                                          ; $6adf: $bf
    rst $38                                       ; $6ae0: $ff
    cp $a5                                        ; $6ae1: $fe $a5
    dec [hl]                                      ; $6ae3: $35
    ld d, $8b                                     ; $6ae4: $16 $8b
    rst $30                                       ; $6ae6: $f7
    rst $30                                       ; $6ae7: $f7
    ld e, a                                       ; $6ae8: $5f
    ld d, l                                       ; $6ae9: $55
    sbc e                                         ; $6aea: $9b
    ret c                                         ; $6aeb: $d8

    ld [bc], a                                    ; $6aec: $02
    ld b, a                                       ; $6aed: $47
    and e                                         ; $6aee: $a3
    db $eb                                        ; $6aef: $eb
    sbc a                                         ; $6af0: $9f
    xor a                                         ; $6af1: $af
    ld d, l                                       ; $6af2: $55
    ld [hl], a                                    ; $6af3: $77
    ld e, e                                       ; $6af4: $5b
    jr @+$32                                      ; $6af5: $18 $30

    or a                                          ; $6af7: $b7
    db $e4                                        ; $6af8: $e4
    ld a, [hl+]                                   ; $6af9: $2a
    jp Jump_030_5158                              ; $6afa: $c3 $58 $51


    call z, $5c80                                 ; $6afd: $cc $80 $5c
    or c                                          ; $6b00: $b1
    ld c, e                                       ; $6b01: $4b
    sbc a                                         ; $6b02: $9f
    inc c                                         ; $6b03: $0c
    ld e, h                                       ; $6b04: $5c
    or c                                          ; $6b05: $b1
    rr a                                          ; $6b06: $cb $1f
    ld [$32d3], a                                 ; $6b08: $ea $d3 $32
    and b                                         ; $6b0b: $a0
    sbc l                                         ; $6b0c: $9d
    cp $0a                                        ; $6b0d: $fe $0a
    ld d, a                                       ; $6b0f: $57
    push af                                       ; $6b10: $f5
    sbc h                                         ; $6b11: $9c
    add $d8                                       ; $6b12: $c6 $d8
    ld a, [hl+]                                   ; $6b14: $2a
    adc l                                         ; $6b15: $8d
    ld b, b                                       ; $6b16: $40
    sbc [hl]                                      ; $6b17: $9e
    inc e                                         ; $6b18: $1c
    sub [hl]                                      ; $6b19: $96
    ld e, b                                       ; $6b1a: $58
    cp c                                          ; $6b1b: $b9
    cp a                                          ; $6b1c: $bf
    ld c, a                                       ; $6b1d: $4f
    dec hl                                        ; $6b1e: $2b
    jr nc, @+$70                                  ; $6b1f: $30 $6e

    ccf                                           ; $6b21: $3f
    ld d, [hl]                                    ; $6b22: $56
    inc d                                         ; $6b23: $14
    cp e                                          ; $6b24: $bb
    pop de                                        ; $6b25: $d1
    jp $c8a2                                      ; $6b26: $c3 $a2 $c8


    ld e, e                                       ; $6b29: $5b
    rst $00                                       ; $6b2a: $c7
    sub l                                         ; $6b2b: $95
    db $fd                                        ; $6b2c: $fd
    rlca                                          ; $6b2d: $07
    ld sp, $7223                                  ; $6b2e: $31 $23 $72
    ld l, e                                       ; $6b31: $6b
    db $e4                                        ; $6b32: $e4
    ld [hl], $7a                                  ; $6b33: $36 $7a
    db $10                                        ; $6b35: $10
    dec bc                                        ; $6b36: $0b
    inc e                                         ; $6b37: $1c
    pop bc                                        ; $6b38: $c1
    xor [hl]                                      ; $6b39: $ae
    rst $30                                       ; $6b3a: $f7
    add hl, bc                                    ; $6b3b: $09
    ccf                                           ; $6b3c: $3f
    jr z, jr_030_6b95                             ; $6b3d: $28 $56

    ld h, a                                       ; $6b3f: $67
    inc e                                         ; $6b40: $1c
    ld e, l                                       ; $6b41: $5d
    adc e                                         ; $6b42: $8b
    rst $30                                       ; $6b43: $f7
    rst $30                                       ; $6b44: $f7
    ld e, a                                       ; $6b45: $5f
    ld d, l                                       ; $6b46: $55
    sbc e                                         ; $6b47: $9b
    ret c                                         ; $6b48: $d8

    ld [bc], a                                    ; $6b49: $02
    rst $00                                       ; $6b4a: $c7
    sbc d                                         ; $6b4b: $9a
    ld a, e                                       ; $6b4c: $7b
    ld c, l                                       ; $6b4d: $4d
    ld [hl], d                                    ; $6b4e: $72
    reti                                          ; $6b4f: $d9


    ld [hl], a                                    ; $6b50: $77
    jp $93e9                                      ; $6b51: $c3 $e9 $93


    ld a, $87                                     ; $6b54: $3e $87
    ld [hl], c                                    ; $6b56: $71
    ld [hl], h                                    ; $6b57: $74
    dec l                                         ; $6b58: $2d
    inc bc                                        ; $6b59: $03
    jp c, $afe9                                   ; $6b5a: $da $e9 $af

    ld [hl], b                                    ; $6b5d: $70
    ld d, l                                       ; $6b5e: $55
    rst $08                                       ; $6b5f: $cf
    ld l, c                                       ; $6b60: $69
    or [hl]                                       ; $6b61: $b6
    ld b, [hl]                                    ; $6b62: $46
    ldh [$e3], a                                  ; $6b63: $e0 $e3
    jp c, $5091                                   ; $6b65: $da $91 $50

    and l                                         ; $6b68: $a5
    adc d                                         ; $6b69: $8a
    ld hl, sp+$73                                 ; $6b6a: $f8 $73
    push hl                                       ; $6b6c: $e5
    db $eb                                        ; $6b6d: $eb
    ld h, h                                       ; $6b6e: $64
    sbc a                                         ; $6b6f: $9f
    sub [hl]                                      ; $6b70: $96
    add c                                         ; $6b71: $81
    dec sp                                        ; $6b72: $3b
    sub [hl]                                      ; $6b73: $96
    add hl, hl                                    ; $6b74: $29
    ld l, b                                       ; $6b75: $68
    ld a, b                                       ; $6b76: $78
    ld h, c                                       ; $6b77: $61
    ld [hl], d                                    ; $6b78: $72
    inc b                                         ; $6b79: $04
    dec bc                                        ; $6b7a: $0b
    cp c                                          ; $6b7b: $b9
    push bc                                       ; $6b7c: $c5
    db $f4                                        ; $6b7d: $f4
    rla                                           ; $6b7e: $17
    or a                                          ; $6b7f: $b7
    dec bc                                        ; $6b80: $0b
    inc e                                         ; $6b81: $1c
    jp hl                                         ; $6b82: $e9


    sub [hl]                                      ; $6b83: $96
    rst $28                                       ; $6b84: $ef
    adc b                                         ; $6b85: $88
    rst $30                                       ; $6b86: $f7
    sub e                                         ; $6b87: $93
    jp $b4b2                                      ; $6b88: $c3 $b2 $b4


    ld bc, $718d                                  ; $6b8b: $01 $8d $71
    jp $9f4a                                      ; $6b8e: $c3 $4a $9f


    sub [hl]                                      ; $6b91: $96
    add c                                         ; $6b92: $81
    ei                                            ; $6b93: $fb
    ei                                            ; $6b94: $fb

jr_030_6b95:
    inc sp                                        ; $6b95: $33
    inc l                                         ; $6b96: $2c
    ld b, l                                       ; $6b97: $45
    db $e3                                        ; $6b98: $e3
    rst $08                                       ; $6b99: $cf
    dec hl                                        ; $6b9a: $2b
    db $f4                                        ; $6b9b: $f4
    cp h                                          ; $6b9c: $bc
    dec b                                         ; $6b9d: $05
    dec e                                         ; $6b9e: $1d
    ld l, h                                       ; $6b9f: $6c
    sub a                                         ; $6ba0: $97
    dec [hl]                                      ; $6ba1: $35
    ld a, [de]                                    ; $6ba2: $1a
    cp a                                          ; $6ba3: $bf
    db $e3                                        ; $6ba4: $e3
    ld h, a                                       ; $6ba5: $67
    jr nc, jr_030_6bd8                            ; $6ba6: $30 $30

    add l                                         ; $6ba8: $85
    dec b                                         ; $6ba9: $05
    jp hl                                         ; $6baa: $e9


    sub [hl]                                      ; $6bab: $96
    rst $20                                       ; $6bac: $e7
    ld sp, hl                                     ; $6bad: $f9
    ld d, h                                       ; $6bae: $54
    adc d                                         ; $6baf: $8a
    and [hl]                                      ; $6bb0: $a6
    and b                                         ; $6bb1: $a0
    cp c                                          ; $6bb2: $b9
    jr jr_030_6c32                                ; $6bb3: $18 $7d

    ld d, b                                       ; $6bb5: $50
    ld l, l                                       ; $6bb6: $6d
    ld [c], a                                     ; $6bb7: $e2
    adc [hl]                                      ; $6bb8: $8e
    dec hl                                        ; $6bb9: $2b
    xor e                                         ; $6bba: $ab
    sbc c                                         ; $6bbb: $99
    dec c                                         ; $6bbc: $0d
    cp $aa                                        ; $6bbd: $fe $aa
    ld b, a                                       ; $6bbf: $47
    ld a, c                                       ; $6bc0: $79
    dec bc                                        ; $6bc1: $0b
    add a                                         ; $6bc2: $87
    jp $8b2e                                      ; $6bc3: $c3 $2e $8b


    cp l                                          ; $6bc6: $bd
    xor $f3                                       ; $6bc7: $ee $f3
    ld d, $a7                                     ; $6bc9: $16 $a7
    adc b                                         ; $6bcb: $88
    db $fc                                        ; $6bcc: $fc
    ld bc, $1da3                                  ; $6bcd: $01 $a3 $1d
    ld l, e                                       ; $6bd0: $6b
    inc l                                         ; $6bd1: $2c
    ld b, a                                       ; $6bd2: $47
    ld a, $6e                                     ; $6bd3: $3e $6e
    ccf                                           ; $6bd5: $3f
    ld d, [hl]                                    ; $6bd6: $56
    inc [hl]                                      ; $6bd7: $34

jr_030_6bd8:
    or [hl]                                       ; $6bd8: $b6
    sub l                                         ; $6bd9: $95
    ld [hl-], a                                   ; $6bda: $32
    xor [hl]                                      ; $6bdb: $ae
    ld h, l                                       ; $6bdc: $65
    or c                                          ; $6bdd: $b1
    ld [hl], l                                    ; $6bde: $75
    cp $8e                                        ; $6bdf: $fe $8e
    ld [hl], c                                    ; $6be1: $71
    db $fc                                        ; $6be2: $fc
    xor h                                         ; $6be3: $ac
    ld b, a                                       ; $6be4: $47
    inc d                                         ; $6be5: $14
    ld a, c                                       ; $6be6: $79
    dec bc                                        ; $6be7: $0b
    add a                                         ; $6be8: $87
    ld e, a                                       ; $6be9: $5f
    db $ec                                        ; $6bea: $ec
    cp d                                          ; $6beb: $ba
    and h                                         ; $6bec: $a4
    dec d                                         ; $6bed: $15
    push bc                                       ; $6bee: $c5
    jp nc, $fc0f                                  ; $6bef: $d2 $0f $fc

    inc hl                                        ; $6bf2: $23
    add c                                         ; $6bf3: $81
    dec hl                                        ; $6bf4: $2b
    ld a, [c]                                     ; $6bf5: $f2
    ld d, $1d                                     ; $6bf6: $16 $1d
    sbc $27                                       ; $6bf8: $de $27
    adc l                                         ; $6bfa: $8d
    db $db                                        ; $6bfb: $db
    adc a                                         ; $6bfc: $8f
    dec d                                         ; $6bfd: $15
    adc l                                         ; $6bfe: $8d
    call c, $e7f0                                 ; $6bff: $dc $f0 $e7
    dec l                                         ; $6c02: $2d
    sbc l                                         ; $6c03: $9d
    db $fc                                        ; $6c04: $fc
    ld bc, $9da3                                  ; $6c05: $01 $a3 $9d
    ld a, [c]                                     ; $6c08: $f2
    cp $b8                                        ; $6c09: $fe $b8
    db $fd                                        ; $6c0b: $fd
    ld e, b                                       ; $6c0c: $58
    pop de                                        ; $6c0d: $d1
    ret z                                         ; $6c0e: $c8

    dec c                                         ; $6c0f: $0d
    ld a, a                                       ; $6c10: $7f
    sbc $02                                       ; $6c11: $de $02
    sbc l                                         ; $6c13: $9d
    call c, Call_030_7918                         ; $6c14: $dc $18 $79
    ld l, b                                       ; $6c17: $68
    ld b, l                                       ; $6c18: $45
    dec hl                                        ; $6c19: $2b
    halt                                          ; $6c1a: $76
    push hl                                       ; $6c1b: $e5
    dec l                                         ; $6c1c: $2d
    and a                                         ; $6c1d: $a7
    db $db                                        ; $6c1e: $db
    ld [$e3ac], a                                 ; $6c1f: $ea $ac $e3
    inc bc                                        ; $6c22: $03
    ld e, [hl]                                    ; $6c23: $5e
    call z, $de79                                 ; $6c24: $cc $79 $de
    ld [bc], a                                    ; $6c27: $02
    ld b, a                                       ; $6c28: $47
    dec de                                        ; $6c29: $1b
    ld b, [hl]                                    ; $6c2a: $46
    dec a                                         ; $6c2b: $3d
    ld a, d                                       ; $6c2c: $7a
    cp b                                          ; $6c2d: $b8
    cp b                                          ; $6c2e: $b8
    dec d                                         ; $6c2f: $15
    ld e, l                                       ; $6c30: $5d
    add h                                         ; $6c31: $84

jr_030_6c32:
    rst $28                                       ; $6c32: $ef
    ld a, a                                       ; $6c33: $7f
    ld a, c                                       ; $6c34: $79
    sbc $02                                       ; $6c35: $de $02
    sbc l                                         ; $6c37: $9d
    db $fc                                        ; $6c38: $fc
    ld bc, $15a3                                  ; $6c39: $01 $a3 $15
    adc l                                         ; $6c3c: $8d
    ccf                                           ; $6c3d: $3f
    and a                                         ; $6c3e: $a7
    add a                                         ; $6c3f: $87
    sbc [hl]                                      ; $6c40: $9e
    or a                                          ; $6c41: $b7
    and a                                         ; $6c42: $a7
    db $db                                        ; $6c43: $db
    inc c                                         ; $6c44: $0c
    halt                                          ; $6c45: $76
    dec a                                         ; $6c46: $3d
    ldh a, [rNR23]                                ; $6c47: $f0 $18
    rst $10                                       ; $6c49: $d7
    sbc d                                         ; $6c4a: $9a
    ld b, a                                       ; $6c4b: $47
    ld hl, sp+$7e                                 ; $6c4c: $f8 $7e
    db $e4                                        ; $6c4e: $e4
    dec l                                         ; $6c4f: $2d
    sbc l                                         ; $6c50: $9d
    db $fc                                        ; $6c51: $fc
    ld bc, $15a3                                  ; $6c52: $01 $a3 $15

jr_030_6c55:
    push bc                                       ; $6c55: $c5
    ldh a, [$b3]                                  ; $6c56: $f0 $b3
    db $fc                                        ; $6c58: $fc
    add $51                                       ; $6c59: $c6 $51
    sbc a                                         ; $6c5b: $9f
    ld h, d                                       ; $6c5c: $62
    call $df03                                    ; $6c5d: $cd $03 $df
    add hl, hl                                    ; $6c60: $29
    adc a                                         ; $6c61: $8f
    dec b                                         ; $6c62: $05
    jp z, $6b5b                                   ; $6c63: $ca $5b $6b

    ld bc, $1387                                  ; $6c66: $01 $87 $13
    cp c                                          ; $6c69: $b9
    dec [hl]                                      ; $6c6a: $35
    ld e, d                                       ; $6c6b: $5a
    pop de                                        ; $6c6c: $d1
    adc d                                         ; $6c6d: $8a
    dec [hl]                                      ; $6c6e: $35
    ld hl, sp-$39                                 ; $6c6f: $f8 $c7
    ldh [$2b], a                                  ; $6c71: $e0 $2b
    and d                                         ; $6c73: $a2
    cp h                                          ; $6c74: $bc
    dec b                                         ; $6c75: $05
    sbc l                                         ; $6c76: $9d
    db $fc                                        ; $6c77: $fc
    ld bc, $f5a3                                  ; $6c78: $01 $a3 $f5
    ccf                                           ; $6c7b: $3f
    db $fc                                        ; $6c7c: $fc
    inc l                                         ; $6c7d: $2c
    cp a                                          ; $6c7e: $bf
    ld [hl], c                                    ; $6c7f: $71
    call nc, $58a7                                ; $6c80: $d4 $a7 $58
    di                                            ; $6c83: $f3
    ret nz                                        ; $6c84: $c0

    ld d, a                                       ; $6c85: $57
    ld l, h                                       ; $6c86: $6c
    xor c                                         ; $6c87: $a9
    ld b, a                                       ; $6c88: $47
    or $31                                        ; $6c89: $f6 $31
    inc bc                                        ; $6c8b: $03
    jp z, $9d5b                                   ; $6c8c: $ca $5b $9d

    db $fc                                        ; $6c8f: $fc
    ld bc, $f5a3                                  ; $6c90: $01 $a3 $f5
    ccf                                           ; $6c93: $3f
    db $fc                                        ; $6c94: $fc
    inc l                                         ; $6c95: $2c
    cp a                                          ; $6c96: $bf
    ld [hl], c                                    ; $6c97: $71
    call nc, $58a7                                ; $6c98: $d4 $a7 $58
    di                                            ; $6c9b: $f3
    ret nz                                        ; $6c9c: $c0

    ld d, a                                       ; $6c9d: $57
    ld l, h                                       ; $6c9e: $6c
    xor c                                         ; $6c9f: $a9
    ld b, a                                       ; $6ca0: $47
    or $31                                        ; $6ca1: $f6 $31
    inc bc                                        ; $6ca3: $03
    jp z, $6b5b                                   ; $6ca4: $ca $5b $6b

    ld bc, $016b                                  ; $6ca7: $01 $6b $01
    sbc l                                         ; $6caa: $9d
    db $fc                                        ; $6cab: $fc
    ld bc, $15a3                                  ; $6cac: $01 $a3 $15
    db $ed                                        ; $6caf: $ed
    ld a, d                                       ; $6cb0: $7a
    ldh [$31], a                                  ; $6cb1: $e0 $31
    xor [hl]                                      ; $6cb3: $ae
    pop af                                        ; $6cb4: $f1
    ld e, e                                       ; $6cb5: $5b
    ld e, d                                       ; $6cb6: $5a
    ccf                                           ; $6cb7: $3f
    or h                                          ; $6cb8: $b4
    db $eb                                        ; $6cb9: $eb
    ld a, l                                       ; $6cba: $7d
    ld [hl], d                                    ; $6cbb: $72
    xor l                                         ; $6cbc: $ad
    jr z, jr_030_6c55                             ; $6cbd: $28 $96

    ld a, [hl]                                    ; $6cbf: $7e
    ld a, [hl]                                    ; $6cc0: $7e
    add hl, hl                                    ; $6cc1: $29
    add $61                                       ; $6cc2: $c6 $61
    dec e                                         ; $6cc4: $1d
    xor h                                         ; $6cc5: $ac
    db $e4                                        ; $6cc6: $e4
    dec l                                         ; $6cc7: $2d
    rst $00                                       ; $6cc8: $c7
    ret nz                                        ; $6cc9: $c0

    call Call_030_4631                            ; $6cca: $cd $31 $46
    or [hl]                                       ; $6ccd: $b6
    jp z, $8dca                                   ; $6cce: $ca $ca $8d

    db $e3                                        ; $6cd1: $e3
    ld b, l                                       ; $6cd2: $45
    ld hl, sp+$7e                                 ; $6cd3: $f8 $7e
    sbc $02                                       ; $6cd5: $de $02
    ld l, e                                       ; $6cd7: $6b
    ld bc, $dca7                                  ; $6cd8: $01 $a7 $dc
    ld l, $68                                     ; $6cdb: $2e $68
    ld [$56ba], a                                 ; $6cdd: $ea $ba $56
    or h                                          ; $6ce0: $b4
    ld d, e                                       ; $6ce1: $53
    xor h                                         ; $6ce2: $ac
    ld d, c                                       ; $6ce3: $51
    and c                                         ; $6ce4: $a1
    rlca                                          ; $6ce5: $07
    sub h                                         ; $6ce6: $94
    or a                                          ; $6ce7: $b7
    ld l, e                                       ; $6ce8: $6b
    ld bc, $016b                                  ; $6ce9: $01 $6b $01
    and a                                         ; $6cec: $a7
    adc b                                         ; $6ced: $88
    ld e, $f8                                     ; $6cee: $1e $f8
    rst $10                                       ; $6cf0: $d7
    db $f4                                        ; $6cf1: $f4
    ld [hl], a                                    ; $6cf2: $77
    dec d                                         ; $6cf3: $15
    adc e                                         ; $6cf4: $8b
    ret nc                                        ; $6cf5: $d0

    ld hl, sp-$63                                 ; $6cf6: $f8 $9d
    adc l                                         ; $6cf8: $8d
    ld b, c                                       ; $6cf9: $41
    rrca                                          ; $6cfa: $0f
    ld e, l                                       ; $6cfb: $5d
    ld a, c                                       ; $6cfc: $79
    dec bc                                        ; $6cfd: $0b
    sbc l                                         ; $6cfe: $9d
    db $fc                                        ; $6cff: $fc
    ld bc, $15a3                                  ; $6d00: $01 $a3 $15
    db $db                                        ; $6d03: $db
    ld h, l                                       ; $6d04: $65
    ld c, [hl]                                    ; $6d05: $4e
    ld a, [de]                                    ; $6d06: $1a
    rst $10                                       ; $6d07: $d7
    or d                                          ; $6d08: $b2
    ret nc                                        ; $6d09: $d0

    xor a                                         ; $6d0a: $af
    ld e, e                                       ; $6d0b: $5b
    sbc $02                                       ; $6d0c: $de $02
    sbc l                                         ; $6d0e: $9d
    db $fc                                        ; $6d0f: $fc
    ld bc, $15a3                                  ; $6d10: $01 $a3 $15
    db $db                                        ; $6d13: $db
    ld h, l                                       ; $6d14: $65
    ld c, [hl]                                    ; $6d15: $4e
    ld a, [de]                                    ; $6d16: $1a
    rst $10                                       ; $6d17: $d7
    or d                                          ; $6d18: $b2
    ret nc                                        ; $6d19: $d0

    xor a                                         ; $6d1a: $af
    ld e, e                                       ; $6d1b: $5b
    sbc $02                                       ; $6d1c: $de $02
    ld l, e                                       ; $6d1e: $6b
    ld bc, $016b                                  ; $6d1f: $01 $6b $01
    ld l, e                                       ; $6d22: $6b
    ld bc, $88a7                                  ; $6d23: $01 $a7 $88
    ld e, $f8                                     ; $6d26: $1e $f8
    rst $10                                       ; $6d28: $d7

jr_030_6d29:
    db $f4                                        ; $6d29: $f4
    ld [hl], a                                    ; $6d2a: $77
    dec d                                         ; $6d2b: $15
    adc e                                         ; $6d2c: $8b
    ret nc                                        ; $6d2d: $d0

    ld hl, sp-$03                                 ; $6d2e: $f8 $fd
    ld e, b                                       ; $6d30: $58
    inc c                                         ; $6d31: $0c
    ld a, d                                       ; $6d32: $7a
    add sp, -$36                                  ; $6d33: $e8 $ca
    ld e, e                                       ; $6d35: $5b
    ld l, e                                       ; $6d36: $6b
    ld bc, $016b                                  ; $6d37: $01 $6b $01
    ld l, e                                       ; $6d3a: $6b
    ld bc, $016b                                  ; $6d3b: $01 $6b $01
    ld l, e                                       ; $6d3e: $6b
    ld bc, $016b                                  ; $6d3f: $01 $6b $01
    ld l, e                                       ; $6d42: $6b
    ld bc, $016b                                  ; $6d43: $01 $6b $01
    and a                                         ; $6d46: $a7
    add sp, $5f                                   ; $6d47: $e8 $5f
    rst $28                                       ; $6d49: $ef
    sub e                                         ; $6d4a: $93
    ld l, e                                       ; $6d4b: $6b
    ld b, a                                       ; $6d4c: $47
    cp d                                          ; $6d4d: $ba
    or c                                          ; $6d4e: $b1
    ld e, [hl]                                    ; $6d4f: $5e
    sbc $02                                       ; $6d50: $de $02
    and a                                         ; $6d52: $a7
    db $db                                        ; $6d53: $db
    cp b                                          ; $6d54: $b8
    db $fd                                        ; $6d55: $fd
    ld e, b                                       ; $6d56: $58
    or c                                          ; $6d57: $b1
    add l                                         ; $6d58: $85
    sub l                                         ; $6d59: $95
    and d                                         ; $6d5a: $a2
    ld [hl], c                                    ; $6d5b: $71
    push bc                                       ; $6d5c: $c5
    ret z                                         ; $6d5d: $c8

    ld e, a                                       ; $6d5e: $5f
    jp Jump_000_29be                              ; $6d5f: $c3 $be $29


    ld a, [c]                                     ; $6d62: $f2
    ld d, $a7                                     ; $6d63: $16 $a7
    adc b                                         ; $6d65: $88
    ld e, $f8                                     ; $6d66: $1e $f8
    rst $10                                       ; $6d68: $d7
    ld [$18ec], a                                 ; $6d69: $ea $ec $18
    xor a                                         ; $6d6c: $af
    ld c, c                                       ; $6d6d: $49
    and a                                         ; $6d6e: $a7
    rst $18                                       ; $6d6f: $df

jr_030_6d70:
    rst $20                                       ; $6d70: $e7
    rst $08                                       ; $6d71: $cf
    di                                            ; $6d72: $f3
    ld d, $6b                                     ; $6d73: $16 $6b
    ld bc, $016b                                  ; $6d75: $01 $6b $01
    ld l, e                                       ; $6d78: $6b
    ld bc, $016b                                  ; $6d79: $01 $6b $01
    ld l, e                                       ; $6d7c: $6b
    ld bc, $016b                                  ; $6d7d: $01 $6b $01
    ld l, e                                       ; $6d80: $6b
    ld bc, $016b                                  ; $6d81: $01 $6b $01
    ld l, e                                       ; $6d84: $6b
    ld bc, $016b                                  ; $6d85: $01 $6b $01
    and a                                         ; $6d88: $a7
    xor e                                         ; $6d89: $ab
    or e                                          ; $6d8a: $b3
    halt                                          ; $6d8b: $76
    xor h                                         ; $6d8c: $ac
    cp h                                          ; $6d8d: $bc
    jp nz, $95f7                                  ; $6d8e: $c2 $f7 $95

    or a                                          ; $6d91: $b7
    and a                                         ; $6d92: $a7
    ld a, [de]                                    ; $6d93: $1a
    jr nc, jr_030_6d70                            ; $6d94: $30 $da

    or c                                          ; $6d96: $b1
    ld a, [c]                                     ; $6d97: $f2
    ld a, [bc]                                    ; $6d98: $0a
    rst $18                                       ; $6d99: $df
    rst $10                                       ; $6d9a: $d7
    jr c, jr_030_6d29                             ; $6d9b: $38 $8c

    db $fc                                        ; $6d9d: $fc
    sub l                                         ; $6d9e: $95
    sub d                                         ; $6d9f: $92
    or a                                          ; $6da0: $b7
    and a                                         ; $6da1: $a7
    db $db                                        ; $6da2: $db
    ld [$d8ac], a                                 ; $6da3: $ea $ac $d8
    ld l, $4b                                     ; $6da6: $2e $4b
    reti                                          ; $6da8: $d9


    rst $10                                       ; $6da9: $d7
    cp b                                          ; $6daa: $b8
    halt                                          ; $6dab: $76
    xor h                                         ; $6dac: $ac
    or c                                          ; $6dad: $b1
    inc e                                         ; $6dae: $1c
    ld a, c                                       ; $6daf: $79
    sbc $02                                       ; $6db0: $de $02
    and a                                         ; $6db2: $a7
    db $db                                        ; $6db3: $db
    ld [$18ec], a                                 ; $6db4: $ea $ec $18
    xor a                                         ; $6db7: $af
    ld c, c                                       ; $6db8: $49
    and a                                         ; $6db9: $a7
    rst $18                                       ; $6dba: $df
    rst $20                                       ; $6dbb: $e7
    rst $08                                       ; $6dbc: $cf
    di                                            ; $6dbd: $f3
    ld d, $a7                                     ; $6dbe: $16 $a7
    xor b                                         ; $6dc0: $a8
    rst $00                                       ; $6dc1: $c7
    add a                                         ; $6dc2: $87
    or c                                          ; $6dc3: $b1
    and d                                         ; $6dc4: $a2
    ret c                                         ; $6dc5: $d8

    ld h, l                                       ; $6dc6: $65
    ld e, h                                       ; $6dc7: $5c
    ld b, $9d                                     ; $6dc8: $06 $9d
    rst $00                                       ; $6dca: $c7
    or l                                          ; $6dcb: $b5
    inc de                                        ; $6dcc: $13
    ld e, a                                       ; $6dcd: $5f
    ld d, a                                       ; $6dce: $57
    dec h                                         ; $6dcf: $25
    ld l, a                                       ; $6dd0: $6f
    ld bc, $7547                                  ; $6dd1: $01 $47 $75
    ld l, [hl]                                    ; $6dd4: $6e
    jp z, Jump_030_4d73                           ; $6dd5: $ca $73 $4d

    ld a, a                                       ; $6dd8: $7f
    scf                                           ; $6dd9: $37
    or d                                          ; $6dda: $b2
    ld c, a                                       ; $6ddb: $4f
    jp Jump_030_60cf                              ; $6ddc: $c3 $cf $60


    ld h, b                                       ; $6ddf: $60
    xor d                                         ; $6de0: $aa
    jr z, jr_030_6e52                             ; $6de1: $28 $6f

    ld bc, $016b                                  ; $6de3: $01 $6b $01
    ld b, a                                       ; $6de6: $47
    ld e, l                                       ; $6de7: $5d
    ld l, h                                       ; $6de8: $6c
    ld l, e                                       ; $6de9: $6b
    ld a, [de]                                    ; $6dea: $1a
    push de                                       ; $6deb: $d5
    and e                                         ; $6dec: $a3
    add a                                         ; $6ded: $87
    db $e3                                        ; $6dee: $e3
    ld e, d                                       ; $6def: $5a
    or c                                          ; $6df0: $b1
    and l                                         ; $6df1: $a5
    jr nc, jr_030_6e49                            ; $6df2: $30 $55

    ldh a, [rNR11]                                ; $6df4: $f0 $11
    cp e                                          ; $6df6: $bb
    ld l, [hl]                                    ; $6df7: $6e
    ld b, $94                                     ; $6df8: $06 $94
    or a                                          ; $6dfa: $b7
    ld l, e                                       ; $6dfb: $6b
    ld bc, $fc9d                                  ; $6dfc: $01 $9d $fc
    ld bc, $15a3                                  ; $6dff: $01 $a3 $15
    xor l                                         ; $6e02: $ad
    inc bc                                        ; $6e03: $03
    ld a, [$1f43]                                 ; $6e04: $fa $43 $1f
    add a                                         ; $6e07: $87
    sbc l                                         ; $6e08: $9d
    add d                                         ; $6e09: $82
    ld [hl], c                                    ; $6e0a: $71
    db $e3                                        ; $6e0b: $e3
    ld a, c                                       ; $6e0c: $79
    dec bc                                        ; $6e0d: $0b
    ld l, e                                       ; $6e0e: $6b
    ld bc, $1b47                                  ; $6e0f: $01 $47 $1b
    add $ae                                       ; $6e12: $c6 $ae
    rst $30                                       ; $6e14: $f7
    cp a                                          ; $6e15: $bf
    ld h, c                                       ; $6e16: $61
    add h                                         ; $6e17: $84
    db $fd                                        ; $6e18: $fd
    ld c, e                                       ; $6e19: $4b
    inc sp                                        ; $6e1a: $33
    ld b, [hl]                                    ; $6e1b: $46
    rst $10                                       ; $6e1c: $d7
    ld c, [hl]                                    ; $6e1d: $4e
    ld a, h                                       ; $6e1e: $7c
    sbc [hl]                                      ; $6e1f: $9e
    sub d                                         ; $6e20: $92
    ld d, e                                       ; $6e21: $53
    sbc $02                                       ; $6e22: $de $02
    ld l, e                                       ; $6e24: $6b
    ld bc, $fc9d                                  ; $6e25: $01 $9d $fc
    ld bc, $71a3                                  ; $6e28: $01 $a3 $71
    push bc                                       ; $6e2b: $c5
    sbc d                                         ; $6e2c: $9a
    rlca                                          ; $6e2d: $07
    ld b, l                                       ; $6e2e: $45
    inc d                                         ; $6e2f: $14
    ld l, e                                       ; $6e30: $6b

Jump_030_6e31:
    ld e, $f8                                     ; $6e31: $1e $f8
    ld c, [hl]                                    ; $6e33: $4e
    ld a, h                                       ; $6e34: $7c
    sbc [hl]                                      ; $6e35: $9e
    sub d                                         ; $6e36: $92
    ld d, e                                       ; $6e37: $53
    sbc $02                                       ; $6e38: $de $02
    add a                                         ; $6e3a: $87
    inc de                                        ; $6e3b: $13
    cp c                                          ; $6e3c: $b9
    dec [hl]                                      ; $6e3d: $35
    jp c, $cf89                                   ; $6e3e: $da $89 $cf

    ld d, e                                       ; $6e41: $53
    ld [hl], d                                    ; $6e42: $72
    jp z, $475b                                   ; $6e43: $ca $5b $47

    ld d, l                                       ; $6e46: $55
    ld d, l                                       ; $6e47: $55
    db $dd                                        ; $6e48: $dd

jr_030_6e49:
    xor a                                         ; $6e49: $af
    sbc l                                         ; $6e4a: $9d
    ld hl, sp+$3c                                 ; $6e4b: $f8 $3c
    dec h                                         ; $6e4d: $25
    and a                                         ; $6e4e: $a7
    push de                                       ; $6e4f: $d5
    ld e, c                                       ; $6e50: $59
    or c                                          ; $6e51: $b1

jr_030_6e52:
    pop de                                        ; $6e52: $d1
    inc bc                                        ; $6e53: $03
    rra                                           ; $6e54: $1f

jr_030_6e55:
    cp a                                          ; $6e55: $bf
    ld e, e                                       ; $6e56: $5b
    sub b                                         ; $6e57: $90
    cp a                                          ; $6e58: $bf
    rst $38                                       ; $6e59: $ff
    ld a, [hl+]                                   ; $6e5a: $2a
    ld d, h                                       ; $6e5b: $54
    sbc $02                                       ; $6e5c: $de $02
    ld b, a                                       ; $6e5e: $47
    dec de                                        ; $6e5f: $1b
    ld b, [hl]                                    ; $6e60: $46
    dec a                                         ; $6e61: $3d
    ld a, d                                       ; $6e62: $7a
    cp b                                          ; $6e63: $b8
    add $f5                                       ; $6e64: $c6 $f5
    cp c                                          ; $6e66: $b9
    ld l, e                                       ; $6e67: $6b
    adc l                                         ; $6e68: $8d
    ld sp, hl                                     ; $6e69: $f9
    ld c, [hl]                                    ; $6e6a: $4e
    add c                                         ; $6e6b: $81
    jr nc, jr_030_6e55                            ; $6e6c: $30 $e7

    ld a, c                                       ; $6e6e: $79
    dec bc                                        ; $6e6f: $0b
    sbc l                                         ; $6e70: $9d
    db $fc                                        ; $6e71: $fc
    ld bc, $15a3                                  ; $6e72: $01 $a3 $15
    ld e, e                                       ; $6e75: $5b
    pop bc                                        ; $6e76: $c1
    db $eb                                        ; $6e77: $eb
    ld sp, hl                                     ; $6e78: $f9
    rst $10                                       ; $6e79: $d7
    ld d, d                                       ; $6e7a: $52
    ld b, l                                       ; $6e7b: $45
    ld de, $e537                                  ; $6e7c: $11 $37 $e5
    dec l                                         ; $6e7f: $2d
    ld l, e                                       ; $6e80: $6b
    ld bc, $016b                                  ; $6e81: $01 $6b $01
    ld l, e                                       ; $6e84: $6b
    ld bc, $016b                                  ; $6e85: $01 $6b $01
    and a                                         ; $6e88: $a7
    db $db                                        ; $6e89: $db
    cp b                                          ; $6e8a: $b8
    db $fd                                        ; $6e8b: $fd
    ld e, b                                       ; $6e8c: $58
    pop de                                        ; $6e8d: $d1
    xor [hl]                                      ; $6e8e: $ae
    rlca                                          ; $6e8f: $07
    push hl                                       ; $6e90: $e5
    and c                                         ; $6e91: $a1
    rrca                                          ; $6e92: $0f
    ccf                                           ; $6e93: $3f
    ret                                           ; $6e94: $c9


    add hl, sp                                    ; $6e95: $39
    ld d, d                                       ; $6e96: $52
    sbc $02                                       ; $6e97: $de $02
    sbc l                                         ; $6e99: $9d
    inc e                                         ; $6e9a: $1c
    ld e, a                                       ; $6e9b: $5f
    push de                                       ; $6e9c: $d5
    or b                                          ; $6e9d: $b0
    dec [hl]                                      ; $6e9e: $35
    ld c, $3b                                     ; $6e9f: $0e $3b
    ld a, [de]                                    ; $6ea1: $1a
    adc e                                         ; $6ea2: $8b
    ld l, b                                       ; $6ea3: $68
    inc e                                         ; $6ea4: $1c
    halt                                          ; $6ea5: $76
    inc h                                         ; $6ea6: $24
    ld e, d                                       ; $6ea7: $5a
    xor d                                         ; $6ea8: $aa
    jr z, jr_030_6f1a                             ; $6ea9: $28 $6f

    ld bc, $fc9d                                  ; $6eab: $01 $9d $fc
    ld bc, $15a3                                  ; $6eae: $01 $a3 $15
    db $db                                        ; $6eb1: $db
    ld d, l                                       ; $6eb2: $55
    ld l, [hl]                                    ; $6eb3: $6e
    ld h, e                                       ; $6eb4: $63
    ld e, [hl]                                    ; $6eb5: $5e
    or c                                          ; $6eb6: $b1
    ld c, a                                       ; $6eb7: $4f
    jp z, $875b                                   ; $6eb8: $ca $5b $87

    and a                                         ; $6ebb: $a7
    db $d3                                        ; $6ebc: $d3
    cp $3e                                        ; $6ebd: $fe $3e
    ld l, c                                       ; $6ebf: $69
    ld b, l                                       ; $6ec0: $45
    or c                                          ; $6ec1: $b1
    inc [hl]                                      ; $6ec2: $34
    or d                                          ; $6ec3: $b2
    ret nz                                        ; $6ec4: $c0

    pop af                                        ; $6ec5: $f1
    dec hl                                        ; $6ec6: $2b
    add $ef                                       ; $6ec7: $c6 $ef
    or a                                          ; $6ec9: $b7
    adc e                                         ; $6eca: $8b
    xor l                                         ; $6ecb: $ad
    dec hl                                        ; $6ecc: $2b
    ld l, a                                       ; $6ecd: $6f
    ld bc, $dca7                                  ; $6ece: $01 $a7 $dc
    sbc d                                         ; $6ed1: $9a
    rst $30                                       ; $6ed2: $f7
    ld a, c                                       ; $6ed3: $79
    xor h                                         ; $6ed4: $ac
    adc $8a                                       ; $6ed5: $ce $8a
    adc l                                         ; $6ed7: $8d
    adc e                                         ; $6ed8: $8b
    pop bc                                        ; $6ed9: $c1
    cpl                                           ; $6eda: $2f
    ld [hl+], a                                   ; $6edb: $22
    adc l                                         ; $6edc: $8d
    ld l, e                                       ; $6edd: $6b
    push de                                       ; $6ede: $d5
    xor l                                         ; $6edf: $ad
    ret c                                         ; $6ee0: $d8

    ld h, a                                       ; $6ee1: $67
    ld l, c                                       ; $6ee2: $69
    ld e, h                                       ; $6ee3: $5c
    ld l, e                                       ; $6ee4: $6b
    ld e, $e1                                     ; $6ee5: $1e $e1
    ei                                            ; $6ee7: $fb
    sub c                                         ; $6ee8: $91
    or a                                          ; $6ee9: $b7
    and a                                         ; $6eea: $a7
    call c, $f79a                                 ; $6eeb: $dc $9a $f7
    ld a, c                                       ; $6eee: $79
    xor h                                         ; $6eef: $ac
    adc $8a                                       ; $6ef0: $ce $8a
    adc l                                         ; $6ef2: $8d
    adc e                                         ; $6ef3: $8b
    pop bc                                        ; $6ef4: $c1
    cpl                                           ; $6ef5: $2f
    ld [hl+], a                                   ; $6ef6: $22
    adc l                                         ; $6ef7: $8d
    ld l, e                                       ; $6ef8: $6b
    push de                                       ; $6ef9: $d5
    xor l                                         ; $6efa: $ad
    ret c                                         ; $6efb: $d8

    ld h, a                                       ; $6efc: $67
    ld l, c                                       ; $6efd: $69
    ld e, h                                       ; $6efe: $5c
    ld l, e                                       ; $6eff: $6b
    ld e, $e1                                     ; $6f00: $1e $e1
    ei                                            ; $6f02: $fb
    sub c                                         ; $6f03: $91
    or a                                          ; $6f04: $b7
    sbc l                                         ; $6f05: $9d
    db $fc                                        ; $6f06: $fc
    ld bc, $15a3                                  ; $6f07: $01 $a3 $15
    ld e, e                                       ; $6f0a: $5b
    ld b, a                                       ; $6f0b: $47
    sub h                                         ; $6f0c: $94
    cp e                                          ; $6f0d: $bb
    sub $b0                                       ; $6f0e: $d6 $b0
    or c                                          ; $6f10: $b1
    cp h                                          ; $6f11: $bc
    ld a, b                                       ; $6f12: $78

jr_030_6f13:
    dec c                                         ; $6f13: $0d
    db $db                                        ; $6f14: $db
    adc d                                         ; $6f15: $8a
    ld a, [c]                                     ; $6f16: $f2
    ld d, $a7                                     ; $6f17: $16 $a7
    db $db                                        ; $6f19: $db

jr_030_6f1a:
    cp b                                          ; $6f1a: $b8
    db $fd                                        ; $6f1b: $fd
    ld e, b                                       ; $6f1c: $58
    or c                                          ; $6f1d: $b1
    dec e                                         ; $6f1e: $1d
    db $e3                                        ; $6f1f: $e3
    or $b9                                        ; $6f20: $f6 $b9
    halt                                          ; $6f22: $76
    xor d                                         ; $6f23: $aa
    sub l                                         ; $6f24: $95
    and d                                         ; $6f25: $a2
    cp h                                          ; $6f26: $bc
    dec b                                         ; $6f27: $05
    sbc l                                         ; $6f28: $9d

Call_030_6f29:
    db $fc                                        ; $6f29: $fc
    ld bc, $15a3                                  ; $6f2a: $01 $a3 $15
    db $db                                        ; $6f2d: $db
    ld h, l                                       ; $6f2e: $65
    ld c, [hl]                                    ; $6f2f: $4e
    ld a, [de]                                    ; $6f30: $1a
    rst $10                                       ; $6f31: $d7
    ld [c], a                                     ; $6f32: $e2
    ld sp, hl                                     ; $6f33: $f9
    add l                                         ; $6f34: $85
    ld a, [c]                                     ; $6f35: $f2
    ld [hl], c                                    ; $6f36: $71
    db $ed                                        ; $6f37: $ed
    ld e, b                                       ; $6f38: $58
    ld [hl], e                                    ; $6f39: $73
    xor a                                         ; $6f3a: $af
    ret                                           ; $6f3b: $c9


    ld e, e                                       ; $6f3c: $5b
    sbc l                                         ; $6f3d: $9d
    db $fc                                        ; $6f3e: $fc
    ld bc, $1da3                                  ; $6f3f: $01 $a3 $1d
    ld l, e                                       ; $6f42: $6b
    inc l                                         ; $6f43: $2c
    ld b, a                                       ; $6f44: $47
    ld a, $6e                                     ; $6f45: $3e $6e
    ccf                                           ; $6f47: $3f
    ld d, [hl]                                    ; $6f48: $56
    ld l, h                                       ; $6f49: $6c
    rla                                           ; $6f4a: $17
    db $db                                        ; $6f4b: $db
    xor d                                         ; $6f4c: $aa
    sub h                                         ; $6f4d: $94
    ld l, e                                       ; $6f4e: $6b
    jp hl                                         ; $6f4f: $e9


    rst $20                                       ; $6f50: $e7
    and h                                         ; $6f51: $a4
    cp h                                          ; $6f52: $bc
    dec b                                         ; $6f53: $05
    sbc l                                         ; $6f54: $9d
    db $fc                                        ; $6f55: $fc
    ld bc, $15a3                                  ; $6f56: $01 $a3 $15
    xor l                                         ; $6f59: $ad
    ld a, d                                       ; $6f5a: $7a
    inc [hl]                                      ; $6f5b: $34
    xor [hl]                                      ; $6f5c: $ae
    dec [hl]                                      ; $6f5d: $35
    ld d, $a1                                     ; $6f5e: $16 $a1
    ld [hl], c                                    ; $6f60: $71
    db $ed                                        ; $6f61: $ed
    jr jr_030_6f13                                ; $6f62: $18 $af

    ld c, c                                       ; $6f64: $49
    and a                                         ; $6f65: $a7
    rst $18                                       ; $6f66: $df
    rst $20                                       ; $6f67: $e7
    rst $08                                       ; $6f68: $cf
    di                                            ; $6f69: $f3
    ld d, $9d                                     ; $6f6a: $16 $9d
    db $fc                                        ; $6f6c: $fc
    ld bc, $15a3                                  ; $6f6d: $01 $a3 $15
    db $ed                                        ; $6f70: $ed
    ld a, d                                       ; $6f71: $7a
    ldh [$b1], a                                  ; $6f72: $e0 $b1
    nop                                           ; $6f74: $00
    ld h, h                                       ; $6f75: $64
    db $ec                                        ; $6f76: $ec
    ld d, e                                       ; $6f77: $53
    sbc $02                                       ; $6f78: $de $02
    and a                                         ; $6f7a: $a7
    ld e, b                                       ; $6f7b: $58
    ld d, l                                       ; $6f7c: $55
    rst $30                                       ; $6f7d: $f7
    ld l, e                                       ; $6f7e: $6b
    ld b, l                                       ; $6f7f: $45
    dec hl                                        ; $6f80: $2b
    ret z                                         ; $6f81: $c8

    cp b                                          ; $6f82: $b8
    add $15                                       ; $6f83: $c6 $15
    xor e                                         ; $6f85: $ab
    xor h                                         ; $6f86: $ac
    call c, Call_030_5e38                         ; $6f87: $dc $38 $5e
    add h                                         ; $6f8a: $84
    rst $28                                       ; $6f8b: $ef
    ld b, a                                       ; $6f8c: $47
    sbc $02                                       ; $6f8d: $de $02
    ld l, e                                       ; $6f8f: $6b
    ld bc, $dca7                                  ; $6f90: $01 $a7 $dc
    ld l, $68                                     ; $6f93: $2e $68
    ld [$56ba], a                                 ; $6f95: $ea $ba $56
    inc d                                         ; $6f98: $14
    ld [hl], e                                    ; $6f99: $73
    ld e, l                                       ; $6f9a: $5d
    ld [hl+], a                                   ; $6f9b: $22
    ld d, d                                       ; $6f9c: $52
    adc h                                         ; $6f9d: $8c
    ld l, e                                       ; $6f9e: $6b
    call Call_030_7c23                            ; $6f9f: $cd $23 $7c
    ccf                                           ; $6fa2: $3f
    halt                                          ; $6fa3: $76
    or c                                          ; $6fa4: $b1
    ld [hl], l                                    ; $6fa5: $75
    cp $4e                                        ; $6fa6: $fe $4e
    ld a, c                                       ; $6fa8: $79
    inc l                                         ; $6fa9: $2c
    ld d, b                                       ; $6faa: $50
    sbc $02                                       ; $6fab: $de $02
    and a                                         ; $6fad: $a7
    ld a, $8f                                     ; $6fae: $3e $8f
    ld [hl], c                                    ; $6fb0: $71
    xor l                                         ; $6fb1: $ad
    ret c                                         ; $6fb2: $d8

    jp nz, $d14a                                  ; $6fb3: $c2 $4a $d1

    cp b                                          ; $6fb6: $b8
    ld h, d                                       ; $6fb7: $62
    db $e4                                        ; $6fb8: $e4
    xor a                                         ; $6fb9: $af
    ld h, c                                       ; $6fba: $61
    rst $18                                       ; $6fbb: $df
    inc d                                         ; $6fbc: $14
    ld a, c                                       ; $6fbd: $79
    dec bc                                        ; $6fbe: $0b
    sbc l                                         ; $6fbf: $9d
    db $fc                                        ; $6fc0: $fc
    ld bc, $15a3                                  ; $6fc1: $01 $a3 $15
    xor l                                         ; $6fc4: $ad
    or c                                          ; $6fc5: $b1
    inc c                                         ; $6fc6: $0c
    adc b                                         ; $6fc7: $88
    halt                                          ; $6fc8: $76
    reti                                          ; $6fc9: $d9


    push bc                                       ; $6fca: $c5
    cp [hl]                                       ; $6fcb: $be
    push hl                                       ; $6fcc: $e5
    dec l                                         ; $6fcd: $2d
    add a                                         ; $6fce: $87
    ld e, a                                       ; $6fcf: $5f
    db $ec                                        ; $6fd0: $ec
    cp d                                          ; $6fd1: $ba
    and h                                         ; $6fd2: $a4
    pop bc                                        ; $6fd3: $c1
    rst $10                                       ; $6fd4: $d7
    ld d, d                                       ; $6fd5: $52
    add $02                                       ; $6fd6: $c6 $02
    ld de, $9569                                  ; $6fd8: $11 $69 $95
    or c                                          ; $6fdb: $b1
    jr nc, @+$05                                  ; $6fdc: $30 $03

    ld l, d                                       ; $6fde: $6a
    ld bc, $88a7                                  ; $6fdf: $01 $a7 $88
    ld e, $f8                                     ; $6fe2: $1e $f8
    rst $10                                       ; $6fe4: $d7
    ld [$18ec], a                                 ; $6fe5: $ea $ec $18
    xor a                                         ; $6fe8: $af
    ld c, c                                       ; $6fe9: $49
    and a                                         ; $6fea: $a7
    rst $18                                       ; $6feb: $df
    rst $20                                       ; $6fec: $e7
    rst $08                                       ; $6fed: $cf
    di                                            ; $6fee: $f3
    ld d, $47                                     ; $6fef: $16 $47
    ld sp, $da48                                  ; $6ff1: $31 $48 $da
    adc c                                         ; $6ff4: $89
    ld h, d                                       ; $6ff5: $62
    or b                                          ; $6ff6: $b0
    inc d                                         ; $6ff7: $14
    push hl                                       ; $6ff8: $e5
    dec l                                         ; $6ff9: $2d
    ld e, c                                       ; $6ffa: $59
    ld l, h                                       ; $6ffb: $6c
    ld sp, hl                                     ; $6ffc: $f9
    push bc                                       ; $6ffd: $c5
    sub $8e                                       ; $6ffe: $d6 $8e
    add h                                         ; $7000: $84
    ld a, [hl+]                                   ; $7001: $2a
    ld d, l                                       ; $7002: $55
    call nz, $2b9f                                ; $7003: $c4 $9f $2b
    ld l, a                                       ; $7006: $6f
    ld bc, $88a7                                  ; $7007: $01 $a7 $88
    ld e, $f8                                     ; $700a: $1e $f8
    rst $10                                       ; $700c: $d7
    cp b                                          ; $700d: $b8
    db $fd                                        ; $700e: $fd
    ld e, b                                       ; $700f: $58
    or c                                          ; $7010: $b1
    add l                                         ; $7011: $85
    sub l                                         ; $7012: $95
    and d                                         ; $7013: $a2
    ld [hl], c                                    ; $7014: $71
    push bc                                       ; $7015: $c5
    ret z                                         ; $7016: $c8

jr_030_7017:
    ld e, a                                       ; $7017: $5f
    jp Jump_000_29be                              ; $7018: $c3 $be $29


    ld a, [c]                                     ; $701b: $f2
    ld d, $9d                                     ; $701c: $16 $9d
    db $fc                                        ; $701e: $fc
    ld bc, $15a3                                  ; $701f: $01 $a3 $15
    db $db                                        ; $7022: $db
    ld h, l                                       ; $7023: $65
    ld c, [hl]                                    ; $7024: $4e
    ld a, [de]                                    ; $7025: $1a
    rst $10                                       ; $7026: $d7

jr_030_7027:
    or d                                          ; $7027: $b2
    ret nc                                        ; $7028: $d0

    xor a                                         ; $7029: $af
    ld e, e                                       ; $702a: $5b
    sbc $02                                       ; $702b: $de $02
    ld e, c                                       ; $702d: $59
    ld l, h                                       ; $702e: $6c
    ld d, l                                       ; $702f: $55
    ld hl, sp-$39                                 ; $7030: $f8 $c7
    or l                                          ; $7032: $b5
    ld c, [hl]                                    ; $7033: $4e

jr_030_7034:
    ld l, [hl]                                    ; $7034: $6e
    adc h                                         ; $7035: $8c
    inc a                                         ; $7036: $3c
    call nc, $4702                                ; $7037: $d4 $02 $47
    inc a                                         ; $703a: $3c
    jr nz, @-$32                                  ; $703b: $20 $cc

    add b                                         ; $703d: $80
    add $b5                                       ; $703e: $c6 $b5
    adc e                                         ; $7040: $8b
    ld l, l                                       ; $7041: $6d
    ret nz                                        ; $7042: $c0

    db $fd                                        ; $7043: $fd
    db $fd                                        ; $7044: $fd
    ld l, b                                       ; $7045: $68
    ld bc, $3c47                                  ; $7046: $01 $47 $3c
    jr nz, jr_030_7017                            ; $7049: $20 $cc

    add b                                         ; $704b: $80
    add $b5                                       ; $704c: $c6 $b5
    ld [hl], d                                    ; $704e: $72
    or a                                          ; $704f: $b7
    and $11                                       ; $7050: $e6 $11
    dec de                                        ; $7052: $1b
    cpl                                           ; $7053: $2f
    ld b, e                                       ; $7054: $43
    ld d, a                                       ; $7055: $57
    dec bc                                        ; $7056: $0b
    ld b, a                                       ; $7057: $47

jr_030_7058:
    inc a                                         ; $7058: $3c
    jr nz, jr_030_7027                            ; $7059: $20 $cc

    add b                                         ; $705b: $80
    add $35                                       ; $705c: $c6 $35
    ld [hl], $a6                                  ; $705e: $36 $a6
    ld e, $74                                     ; $7060: $1e $74
    ld l, [hl]                                    ; $7062: $6e
    ld bc, $3c47                                  ; $7063: $01 $47 $3c
    jr nz, jr_030_7034                            ; $7066: $20 $cc

    add b                                         ; $7068: $80
    add $b5                                       ; $7069: $c6 $b5
    sub h                                         ; $706b: $94
    or c                                          ; $706c: $b1
    ld b, b                                       ; $706d: $40
    ld b, h                                       ; $706e: $44
    adc d                                         ; $706f: $8a
    ld d, l                                       ; $7070: $55
    add $c2                                       ; $7071: $c6 $c2
    inc c                                         ; $7073: $0c
    jr z, jr_030_70d0                             ; $7074: $28 $5a

    daa                                           ; $7076: $27
    ld h, b                                       ; $7077: $60
    jp z, $1d0d                                   ; $7078: $ca $0d $1d

    push de                                       ; $707b: $d5
    ld [bc], a                                    ; $707c: $02
    ld b, a                                       ; $707d: $47
    inc a                                         ; $707e: $3c
    jr nz, @-$32                                  ; $707f: $20 $cc

    add b                                         ; $7081: $80
    add $35                                       ; $7082: $c6 $35
    ld a, a                                       ; $7084: $7f
    add hl, hl                                    ; $7085: $29
    ld b, l                                       ; $7086: $45
    dec bc                                        ; $7087: $0b
    ld b, a                                       ; $7088: $47
    inc a                                         ; $7089: $3c
    jr nz, jr_030_7058                            ; $708a: $20 $cc

    add b                                         ; $708c: $80
    add $b5                                       ; $708d: $c6 $b5
    or h                                          ; $708f: $b4
    and e                                         ; $7090: $a3
    ld a, l                                       ; $7091: $7d
    adc [hl]                                      ; $7092: $8e
    and c                                         ; $7093: $a1
    ld l, b                                       ; $7094: $68
    ld bc, $7d47                                  ; $7095: $01 $47 $7d
    ld a, [c]                                     ; $7098: $f2
    sbc e                                         ; $7099: $9b
    add $b5                                       ; $709a: $c6 $b5
    ld h, e                                       ; $709c: $63
    inc e                                         ; $709d: $1c
    ccf                                           ; $709e: $3f
    db $eb                                        ; $709f: $eb
    ld de, $0b45                                  ; $70a0: $11 $45 $0b
    and a                                         ; $70a3: $a7
    ld a, $20                                     ; $70a4: $3e $20
    cp c                                          ; $70a6: $b9
    dec de                                        ; $70a7: $1b
    cp $f5                                        ; $70a8: $fe $f5
    dec [hl]                                      ; $70aa: $35
    xor [hl]                                      ; $70ab: $ae
    dec e                                         ; $70ac: $1d
    db $e3                                        ; $70ad: $e3
    ld hl, sp+$59                                 ; $70ae: $f8 $59
    adc a                                         ; $70b0: $8f
    jr z, jr_030_710d                             ; $70b1: $28 $5a

    sbc l                                         ; $70b3: $9d
    call c, Call_030_7918                         ; $70b4: $dc $18 $79
    call c, $0e34                                 ; $70b7: $dc $34 $0e
    dec hl                                        ; $70ba: $2b
    halt                                          ; $70bb: $76
    push hl                                       ; $70bc: $e5
    dec l                                         ; $70bd: $2d
    ld e, c                                       ; $70be: $59
    halt                                          ; $70bf: $76
    or c                                          ; $70c0: $b1
    rra                                           ; $70c1: $1f
    xor l                                         ; $70c2: $ad
    xor a                                         ; $70c3: $af
    ld [hl], c                                    ; $70c4: $71
    xor l                                         ; $70c5: $ad
    db $e3                                        ; $70c6: $e3
    inc bc                                        ; $70c7: $03
    ld e, [hl]                                    ; $70c8: $5e
    call z, $0b79                                 ; $70c9: $cc $79 $0b
    ld e, c                                       ; $70cc: $59
    halt                                          ; $70cd: $76
    or c                                          ; $70ce: $b1
    rra                                           ; $70cf: $1f

jr_030_70d0:
    xor l                                         ; $70d0: $ad
    rst $28                                       ; $70d1: $ef
    ld [hl], c                                    ; $70d2: $71
    xor l                                         ; $70d3: $ad
    db $e3                                        ; $70d4: $e3
    inc bc                                        ; $70d5: $03
    ld e, [hl]                                    ; $70d6: $5e
    call z, $0b79                                 ; $70d7: $cc $79 $0b
    ld e, c                                       ; $70da: $59
    halt                                          ; $70db: $76
    or c                                          ; $70dc: $b1
    rra                                           ; $70dd: $1f
    xor l                                         ; $70de: $ad
    sbc a                                         ; $70df: $9f
    ld [hl], c                                    ; $70e0: $71
    xor l                                         ; $70e1: $ad
    db $e3                                        ; $70e2: $e3
    inc bc                                        ; $70e3: $03
    ld e, [hl]                                    ; $70e4: $5e
    call z, $0b79                                 ; $70e5: $cc $79 $0b
    dec e                                         ; $70e8: $1d
    rra                                           ; $70e9: $1f
    ldh a, [$62]                                  ; $70ea: $f0 $62
    adc $77                                       ; $70ec: $ce $77
    ld d, h                                       ; $70ee: $54
    rst $20                                       ; $70ef: $e7
    add $15                                       ; $70f0: $c6 $15
    pop de                                        ; $70f2: $d1
    ld [bc], a                                    ; $70f3: $02
    and a                                         ; $70f4: $a7
    ld e, d                                       ; $70f5: $5a
    add hl, hl                                    ; $70f6: $29
    ld a, [de]                                    ; $70f7: $1a
    rst $10                                       ; $70f8: $d7
    ld c, [hl]                                    ; $70f9: $4e
    add c                                         ; $70fa: $81
    xor a                                         ; $70fb: $af
    ld l, b                                       ; $70fc: $68
    ld bc, $5aa7                                  ; $70fd: $01 $a7 $5a
    add hl, hl                                    ; $7100: $29
    ld a, [de]                                    ; $7101: $1a

jr_030_7102:
    cp a                                          ; $7102: $bf
    sbc e                                         ; $7103: $9b
    inc hl                                        ; $7104: $23
    or c                                          ; $7105: $b1
    dec hl                                        ; $7106: $2b
    ei                                            ; $7107: $fb
    rla                                           ; $7108: $17
    xor d                                         ; $7109: $aa
    dec b                                         ; $710a: $05
    rst $00                                       ; $710b: $c7
    ld e, b                                       ; $710c: $58

jr_030_710d:
    sub c                                         ; $710d: $91
    and e                                         ; $710e: $a3
    add $15                                       ; $710f: $c6 $15
    inc sp                                        ; $7111: $33
    xor a                                         ; $7112: $af
    ret nz                                        ; $7113: $c0

    dec d                                         ; $7114: $15
    dec l                                         ; $7115: $2d
    and a                                         ; $7116: $a7
    ld e, d                                       ; $7117: $5a
    add hl, hl                                    ; $7118: $29
    ld a, [de]                                    ; $7119: $1a
    cp a                                          ; $711a: $bf
    ld e, e                                       ; $711b: $5b
    sub b                                         ; $711c: $90
    cp a                                          ; $711d: $bf
    rst $38                                       ; $711e: $ff
    ld a, [hl+]                                   ; $711f: $2a
    ld d, h                                       ; $7120: $54
    dec bc                                        ; $7121: $0b
    and a                                         ; $7122: $a7
    ld e, d                                       ; $7123: $5a
    add hl, hl                                    ; $7124: $29
    ld a, [de]                                    ; $7125: $1a
    ld d, a                                       ; $7126: $57
    xor h                                         ; $7127: $ac
    ld a, c                                       ; $7128: $79
    inc d                                         ; $7129: $14
    db $e3                                        ; $712a: $e3
    jp c, $b6c5                                   ; $712b: $da $c5 $b6

    ld a, [hl+]                                   ; $712e: $2a
    push hl                                       ; $712f: $e5
    ld l, d                                       ; $7130: $6a
    ld bc, $3c47                                  ; $7131: $01 $47 $3c
    jr nz, jr_030_7102                            ; $7134: $20 $cc

    add b                                         ; $7136: $80
    add $b5                                       ; $7137: $c6 $b5
    sub h                                         ; $7139: $94
    dec d                                         ; $713a: $15
    jp $0168                                      ; $713b: $c3 $68 $01


    and a                                         ; $713e: $a7
    ld e, d                                       ; $713f: $5a
    add hl, hl                                    ; $7140: $29
    ld a, [de]                                    ; $7141: $1a
    cp a                                          ; $7142: $bf
    db $eb                                        ; $7143: $eb
    ld e, a                                       ; $7144: $5f
    ld l, h                                       ; $7145: $6c
    ei                                            ; $7146: $fb
    and h                                         ; $7147: $a4
    ld c, d                                       ; $7148: $4a
    sbc a                                         ; $7149: $9f
    and d                                         ; $714a: $a2
    dec b                                         ; $714b: $05
    and a                                         ; $714c: $a7
    ld e, d                                       ; $714d: $5a
    add hl, hl                                    ; $714e: $29
    ld a, [de]                                    ; $714f: $1a
    rst $10                                       ; $7150: $d7
    ld hl, sp+$2d                                 ; $7151: $f8 $2d
    xor l                                         ; $7153: $ad
    rra                                           ; $7154: $1f
    jp c, Jump_000_3ef5                           ; $7155: $da $f5 $3e

    cp c                                          ; $7158: $b9
    ld d, [hl]                                    ; $7159: $56
    inc d                                         ; $715a: $14
    ld c, e                                       ; $715b: $4b
    ccf                                           ; $715c: $3f
    cp a                                          ; $715d: $bf
    inc d                                         ; $715e: $14
    db $e3                                        ; $715f: $e3
    or b                                          ; $7160: $b0
    ld c, $56                                     ; $7161: $0e $56
    ld e, d                                       ; $7163: $5a
    dec e                                         ; $7164: $1d
    ret nc                                        ; $7165: $d0

    rra                                           ; $7166: $1f
    ld a, [$ec38]                                 ; $7167: $fa $38 $ec
    inc d                                         ; $716a: $14
    adc h                                         ; $716b: $8c
    dec de                                        ; $716c: $1b
    rst $08                                       ; $716d: $cf
    ld e, e                                       ; $716e: $5b
    ld b, a                                       ; $716f: $47
    ccf                                           ; $7170: $3f
    rst $28                                       ; $7171: $ef
    sbc d                                         ; $7172: $9a
    add [hl]                                      ; $7173: $86
    sbc a                                         ; $7174: $9f
    db $e4                                        ; $7175: $e4
    inc e                                         ; $7176: $1c
    ld c, c                                       ; $7177: $49
    db $eb                                        ; $7178: $eb
    xor e                                         ; $7179: $ab
    dec b                                         ; $717a: $05
    ld b, a                                       ; $717b: $47
    ccf                                           ; $717c: $3f
    rst $28                                       ; $717d: $ef
    sbc d                                         ; $717e: $9a
    add [hl]                                      ; $717f: $86
    sbc a                                         ; $7180: $9f
    db $e4                                        ; $7181: $e4
    inc e                                         ; $7182: $1c
    ld c, c                                       ; $7183: $49
    db $eb                                        ; $7184: $eb
    cp e                                          ; $7185: $bb
    dec b                                         ; $7186: $05
    ld b, a                                       ; $7187: $47
    ccf                                           ; $7188: $3f
    rst $28                                       ; $7189: $ef
    sbc d                                         ; $718a: $9a
    add [hl]                                      ; $718b: $86
    sbc a                                         ; $718c: $9f
    db $e4                                        ; $718d: $e4
    inc e                                         ; $718e: $1c
    ld c, c                                       ; $718f: $49
    db $eb                                        ; $7190: $eb
    and a                                         ; $7191: $a7
    dec b                                         ; $7192: $05
    ld b, a                                       ; $7193: $47
    ccf                                           ; $7194: $3f
    rst $28                                       ; $7195: $ef
    sbc d                                         ; $7196: $9a
    add [hl]                                      ; $7197: $86
    sbc a                                         ; $7198: $9f
    db $e4                                        ; $7199: $e4
    inc e                                         ; $719a: $1c
    ld c, c                                       ; $719b: $49
    db $eb                                        ; $719c: $eb
    or a                                          ; $719d: $b7
    dec b                                         ; $719e: $05

jr_030_719f:
    ld b, a                                       ; $719f: $47
    ccf                                           ; $71a0: $3f
    rst $28                                       ; $71a1: $ef
    sbc d                                         ; $71a2: $9a
    add [hl]                                      ; $71a3: $86
    sbc a                                         ; $71a4: $9f
    db $e4                                        ; $71a5: $e4
    inc e                                         ; $71a6: $1c
    ld c, c                                       ; $71a7: $49
    db $eb                                        ; $71a8: $eb
    xor a                                         ; $71a9: $af
    dec b                                         ; $71aa: $05
    ld b, a                                       ; $71ab: $47
    ccf                                           ; $71ac: $3f
    rst $28                                       ; $71ad: $ef
    sbc d                                         ; $71ae: $9a
    add [hl]                                      ; $71af: $86
    sbc a                                         ; $71b0: $9f
    db $e4                                        ; $71b1: $e4
    inc e                                         ; $71b2: $1c
    ld c, c                                       ; $71b3: $49
    db $eb                                        ; $71b4: $eb
    cp a                                          ; $71b5: $bf
    dec b                                         ; $71b6: $05
    ld b, a                                       ; $71b7: $47
    jp z, $ca3f                                   ; $71b8: $ca $3f $ca

    ld [hl], a                                    ; $71bb: $77
    reti                                          ; $71bc: $d9


    push bc                                       ; $71bd: $c5
    ld a, [hl]                                    ; $71be: $7e
    or h                                          ; $71bf: $b4
    cp [hl]                                       ; $71c0: $be
    ld e, d                                       ; $71c1: $5a
    ld b, a                                       ; $71c2: $47
    jp z, $ca3f                                   ; $71c3: $ca $3f $ca

    ld [hl], a                                    ; $71c6: $77
    reti                                          ; $71c7: $d9


    push bc                                       ; $71c8: $c5
    ld a, [hl]                                    ; $71c9: $7e
    or h                                          ; $71ca: $b4
    cp [hl]                                       ; $71cb: $be
    ld e, e                                       ; $71cc: $5b
    ld b, a                                       ; $71cd: $47
    jp z, $ca3f                                   ; $71ce: $ca $3f $ca

    ld [hl], a                                    ; $71d1: $77
    reti                                          ; $71d2: $d9


    push bc                                       ; $71d3: $c5
    ld a, [hl]                                    ; $71d4: $7e
    or h                                          ; $71d5: $b4
    ld a, [hl]                                    ; $71d6: $7e
    ld e, d                                       ; $71d7: $5a
    ld b, a                                       ; $71d8: $47
    jp z, $ca3f                                   ; $71d9: $ca $3f $ca

    ld [hl], a                                    ; $71dc: $77
    reti                                          ; $71dd: $d9


    push bc                                       ; $71de: $c5
    ld a, [hl]                                    ; $71df: $7e
    or h                                          ; $71e0: $b4
    ld a, [hl]                                    ; $71e1: $7e
    ld e, e                                       ; $71e2: $5b
    ld b, a                                       ; $71e3: $47
    jp z, $ca3f                                   ; $71e4: $ca $3f $ca

    ld [hl], a                                    ; $71e7: $77
    reti                                          ; $71e8: $d9


    push bc                                       ; $71e9: $c5
    ld a, [hl]                                    ; $71ea: $7e
    or h                                          ; $71eb: $b4
    cp $5a                                        ; $71ec: $fe $5a
    ld b, a                                       ; $71ee: $47
    jp z, $ca3f                                   ; $71ef: $ca $3f $ca

    ld [hl], a                                    ; $71f2: $77
    reti                                          ; $71f3: $d9


    push bc                                       ; $71f4: $c5
    ld a, [hl]                                    ; $71f5: $7e
    or h                                          ; $71f6: $b4
    cp $5b                                        ; $71f7: $fe $5b
    ld b, a                                       ; $71f9: $47
    add b                                         ; $71fa: $80
    bit 4, b                                      ; $71fb: $cb $60
    ld e, h                                       ; $71fd: $5c
    dec sp                                        ; $71fe: $3b
    cp d                                          ; $71ff: $ba
    jr nz, jr_030_719f                            ; $7200: $20 $9d

    add a                                         ; $7202: $87
    rst $10                                       ; $7203: $d7
    cp c                                          ; $7204: $b9
    dec l                                         ; $7205: $2d
    and a                                         ; $7206: $a7
    ld e, d                                       ; $7207: $5a
    add hl, hl                                    ; $7208: $29
    ld a, [de]                                    ; $7209: $1a
    add e                                         ; $720a: $83
    ld e, h                                       ; $720b: $5c
    dec l                                         ; $720c: $2d
    and a                                         ; $720d: $a7
    ld e, d                                       ; $720e: $5a
    add hl, hl                                    ; $720f: $29
    ld a, [de]                                    ; $7210: $1a
    add e                                         ; $7211: $83
    ld e, h                                       ; $7212: $5c
    dec l                                         ; $7213: $2d
    ld e, c                                       ; $7214: $59
    rrca                                          ; $7215: $0f
    jp z, $1f43                                   ; $7216: $ca $43 $1f

    ld a, [hl]                                    ; $7219: $7e
    sub d                                         ; $721a: $92
    ld [hl], e                                    ; $721b: $73
    and h                                         ; $721c: $a4
    ld d, $a7                                     ; $721d: $16 $a7
    jp z, $2d5d                                   ; $721f: $ca $5d $2d

    sbc l                                         ; $7222: $9d
    ld e, $16                                     ; $7223: $1e $16
    ld de, $c629                                  ; $7225: $11 $29 $c6
    dec d                                         ; $7228: $15
    ld c, e                                       ; $7229: $4b
    ld h, e                                       ; $722a: $63
    add hl, hl                                    ; $722b: $29
    adc d                                         ; $722c: $8a
    ld d, $9d                                     ; $722d: $16 $9d
    db $e4                                        ; $722f: $e4
    ld l, [hl]                                    ; $7230: $6e
    ld hl, sp-$39                                 ; $7231: $f8 $c7
    or l                                          ; $7233: $b5
    adc [hl]                                      ; $7234: $8e
    rrca                                          ; $7235: $0f
    ld a, b                                       ; $7236: $78
    ld sp, $ebe7                                  ; $7237: $31 $e7 $eb
    xor e                                         ; $723a: $ab
    dec b                                         ; $723b: $05
    rst $00                                       ; $723c: $c7
    ld a, l                                       ; $723d: $7d
    cp d                                          ; $723e: $ba
    add hl, sp                                    ; $723f: $39
    ld a, [bc]                                    ; $7240: $0a
    ld a, h                                       ; $7241: $7c
    ld e, h                                       ; $7242: $5c
    dec hl                                        ; $7243: $2b
    or [hl]                                       ; $7244: $b6
    bit 2, d                                      ; $7245: $cb $52
    or $35                                        ; $7247: $f6 $35
    xor [hl]                                      ; $7249: $ae
    dec e                                         ; $724a: $1d
    ld l, e                                       ; $724b: $6b
    inc l                                         ; $724c: $2c
    ld b, a                                       ; $724d: $47
    sbc $02                                       ; $724e: $de $02
    ld e, c                                       ; $7250: $59
    rrca                                          ; $7251: $0f
    jp z, $df43                                   ; $7252: $ca $43 $df

    adc l                                         ; $7255: $8d
    adc h                                         ; $7256: $8c
    and l                                         ; $7257: $a5
    push af                                       ; $7258: $f5
    push de                                       ; $7259: $d5
    ld [bc], a                                    ; $725a: $02
    ld e, c                                       ; $725b: $59
    rrca                                          ; $725c: $0f
    jp z, $df43                                   ; $725d: $ca $43 $df

    adc l                                         ; $7260: $8d
    adc h                                         ; $7261: $8c
    and l                                         ; $7262: $a5
    push af                                       ; $7263: $f5
    db $dd                                        ; $7264: $dd
    ld [bc], a                                    ; $7265: $02
    ld e, c                                       ; $7266: $59
    rrca                                          ; $7267: $0f
    jp z, $df43                                   ; $7268: $ca $43 $df

    adc l                                         ; $726b: $8d
    adc h                                         ; $726c: $8c

jr_030_726d:
    and l                                         ; $726d: $a5
    push af                                       ; $726e: $f5
    db $d3                                        ; $726f: $d3
    ld [bc], a                                    ; $7270: $02
    ld e, c                                       ; $7271: $59
    rrca                                          ; $7272: $0f
    jp z, $df43                                   ; $7273: $ca $43 $df

    adc l                                         ; $7276: $8d
    adc h                                         ; $7277: $8c
    and l                                         ; $7278: $a5
    push af                                       ; $7279: $f5
    db $db                                        ; $727a: $db
    ld [bc], a                                    ; $727b: $02
    ld e, c                                       ; $727c: $59
    rrca                                          ; $727d: $0f
    jp z, $df43                                   ; $727e: $ca $43 $df

    adc l                                         ; $7281: $8d
    adc h                                         ; $7282: $8c
    and l                                         ; $7283: $a5
    push af                                       ; $7284: $f5
    rst $10                                       ; $7285: $d7
    ld [bc], a                                    ; $7286: $02
    ld e, c                                       ; $7287: $59
    rrca                                          ; $7288: $0f
    jp z, $df43                                   ; $7289: $ca $43 $df

    adc l                                         ; $728c: $8d
    adc h                                         ; $728d: $8c
    and l                                         ; $728e: $a5
    push af                                       ; $728f: $f5
    rst $18                                       ; $7290: $df
    ld [bc], a                                    ; $7291: $02
    ld e, c                                       ; $7292: $59
    rrca                                          ; $7293: $0f
    jp z, $df43                                   ; $7294: $ca $43 $df

    adc l                                         ; $7297: $8d
    adc h                                         ; $7298: $8c
    and l                                         ; $7299: $a5
    dec e                                         ; $729a: $1d
    ret nc                                        ; $729b: $d0

    ld [bc], a                                    ; $729c: $02
    ld b, a                                       ; $729d: $47
    inc a                                         ; $729e: $3c
    jr nz, jr_030_726d                            ; $729f: $20 $cc

    add b                                         ; $72a1: $80
    add $61                                       ; $72a2: $c6 $61
    inc l                                         ; $72a4: $2c
    cp b                                          ; $72a5: $b8
    add hl, sp                                    ; $72a6: $39
    ld b, [hl]                                    ; $72a7: $46
    ld [$05bc], sp                                ; $72a8: $08 $bc $05
    and a                                         ; $72ab: $a7
    ld e, d                                       ; $72ac: $5a
    add hl, hl                                    ; $72ad: $29
    ld a, [de]                                    ; $72ae: $1a
    cp a                                          ; $72af: $bf
    or e                                          ; $72b0: $b3
    ld sp, $a1e8                                  ; $72b1: $31 $e8 $a1
    ld l, e                                       ; $72b4: $6b
    ld e, h                                       ; $72b5: $5c
    dec hl                                        ; $72b6: $2b
    or [hl]                                       ; $72b7: $b6
    jp z, $a858                                   ; $72b8: $ca $58 $a8

    ld d, $59                                     ; $72bb: $16 $59
    ld l, h                                       ; $72bd: $6c
    xor e                                         ; $72be: $ab
    ld d, d                                       ; $72bf: $52
    xor [hl]                                      ; $72c0: $ae
    pop af                                        ; $72c1: $f1
    dec sp                                        ; $72c2: $3b
    cp $34                                        ; $72c3: $fe $34
    ld a, d                                       ; $72c5: $7a
    dec h                                         ; $72c6: $25
    ld b, a                                       ; $72c7: $47
    or l                                          ; $72c8: $b5
    ld b, a                                       ; $72c9: $47
    ld h, b                                       ; $72ca: $60
    xor d                                         ; $72cb: $aa
    ldh [rNR44], a                                ; $72cc: $e0 $23
    halt                                          ; $72ce: $76
    db $dd                                        ; $72cf: $dd
    inc c                                         ; $72d0: $0c
    ld l, b                                       ; $72d1: $68
    ld a, l                                       ; $72d2: $7d
    or l                                          ; $72d3: $b5
    ld b, a                                       ; $72d4: $47
    ld h, b                                       ; $72d5: $60
    xor d                                         ; $72d6: $aa
    ldh [rNR44], a                                ; $72d7: $e0 $23
    halt                                          ; $72d9: $76
    db $dd                                        ; $72da: $dd
    inc c                                         ; $72db: $0c
    ld l, b                                       ; $72dc: $68
    ld a, l                                       ; $72dd: $7d
    or a                                          ; $72de: $b7
    ld b, a                                       ; $72df: $47
    add b                                         ; $72e0: $80
    bit 4, b                                      ; $72e1: $cb $60
    ld e, h                                       ; $72e3: $5c
    db $eb                                        ; $72e4: $eb
    ld [hl], b                                    ; $72e5: $70
    db $ed                                        ; $72e6: $ed
    sbc b                                         ; $72e7: $98
    rst $30                                       ; $72e8: $f7
    adc l                                         ; $72e9: $8d
    ld h, l                                       ; $72ea: $65
    and l                                         ; $72eb: $a5
    or h                                          ; $72ec: $b4
    and a                                         ; $72ed: $a7
    ld e, d                                       ; $72ee: $5a
    add hl, hl                                    ; $72ef: $29
    ld a, [de]                                    ; $72f0: $1a
    cp a                                          ; $72f1: $bf
    rra                                           ; $72f2: $1f
    ld b, l                                       ; $72f3: $45
    ret nz                                        ; $72f4: $c0

    dec [hl]                                      ; $72f5: $35
    xor [hl]                                      ; $72f6: $ae
    ld e, b                                       ; $72f7: $58
    add a                                         ; $72f8: $87
    ld d, a                                       ; $72f9: $57
    jr c, jr_030_7340                             ; $72fa: $38 $44

    dec bc                                        ; $72fc: $0b
    ld b, a                                       ; $72fd: $47
    add b                                         ; $72fe: $80
    bit 4, b                                      ; $72ff: $cb $60
    ld e, h                                       ; $7301: $5c
    db $eb                                        ; $7302: $eb
    ld hl, sp-$56                                 ; $7303: $f8 $aa
    or h                                          ; $7305: $b4
    dec hl                                        ; $7306: $2b
    ret c                                         ; $7307: $d8

    dec l                                         ; $7308: $2d
    and a                                         ; $7309: $a7
    ld e, d                                       ; $730a: $5a
    add hl, hl                                    ; $730b: $29
    ld a, [de]                                    ; $730c: $1a
    rst $10                                       ; $730d: $d7
    sbc d                                         ; $730e: $9a
    ld b, a                                       ; $730f: $47
    ld hl, sp+$7e                                 ; $7310: $f8 $7e
    or h                                          ; $7312: $b4
    ld b, a                                       ; $7313: $47
    add b                                         ; $7314: $80

jr_030_7315:
    bit 4, b                                      ; $7315: $cb $60
    ld e, h                                       ; $7317: $5c
    dec sp                                        ; $7318: $3b
    add hl, de                                    ; $7319: $19
    ret nc                                        ; $731a: $d0

    ld e, l                                       ; $731b: $5d
    and l                                         ; $731c: $a5
    or h                                          ; $731d: $b4
    ld b, a                                       ; $731e: $47
    add b                                         ; $731f: $80
    bit 4, b                                      ; $7320: $cb $60
    ld e, h                                       ; $7322: $5c
    dec sp                                        ; $7323: $3b
    push hl                                       ; $7324: $e5
    or c                                          ; $7325: $b1
    ld b, b                                       ; $7326: $40
    dec l                                         ; $7327: $2d
    ld b, a                                       ; $7328: $47
    add b                                         ; $7329: $80
    bit 4, b                                      ; $732a: $cb $60
    ld e, h                                       ; $732c: $5c
    bit 4, d                                      ; $732d: $cb $62
    ccf                                           ; $732f: $3f
    ld [hl], b                                    ; $7330: $70
    ld h, e                                       ; $7331: $63
    call nc, $4702                                ; $7332: $d4 $02 $47
    sbc $52                                       ; $7335: $de $52
    and $6e                                       ; $7337: $e6 $6e
    pop de                                        ; $7339: $d1
    ld [bc], a                                    ; $733a: $02
    and a                                         ; $733b: $a7
    ld e, d                                       ; $733c: $5a
    add hl, hl                                    ; $733d: $29
    ld a, [de]                                    ; $733e: $1a
    rst $10                                       ; $733f: $d7

jr_030_7340:
    xor d                                         ; $7340: $aa
    dec de                                        ; $7341: $1b
    ld e, c                                       ; $7342: $59
    push af                                       ; $7343: $f5
    cp h                                          ; $7344: $bc
    ld h, c                                       ; $7345: $61
    cp a                                          ; $7346: $bf
    ld d, b                                       ; $7347: $50
    dec bc                                        ; $7348: $0b
    and a                                         ; $7349: $a7
    ld e, d                                       ; $734a: $5a
    add hl, hl                                    ; $734b: $29
    ld a, [de]                                    ; $734c: $1a
    ld d, a                                       ; $734d: $57
    adc h                                         ; $734e: $8c
    db $fc                                        ; $734f: $fc
    dec [hl]                                      ; $7350: $35
    db $ec                                        ; $7351: $ec
    sbc e                                         ; $7352: $9b
    and d                                         ; $7353: $a2
    dec b                                         ; $7354: $05
    and a                                         ; $7355: $a7
    ld a, $20                                     ; $7356: $3e $20
    cp c                                          ; $7358: $b9
    dec de                                        ; $7359: $1b

jr_030_735a:
    cp $f5                                        ; $735a: $fe $f5
    dec a                                         ; $735c: $3d
    xor [hl]                                      ; $735d: $ae
    dec e                                         ; $735e: $1d
    db $e3                                        ; $735f: $e3
    ld hl, sp+$59                                 ; $7360: $f8 $59
    adc a                                         ; $7362: $8f
    jr z, jr_030_73bf                             ; $7363: $28 $5a

    and a                                         ; $7365: $a7
    ccf                                           ; $7366: $3f
    call nc, Call_030_5a0e                        ; $7367: $d4 $0e $5a
    ccf                                           ; $736a: $3f
    ld a, l                                       ; $736b: $7d
    db $f4                                        ; $736c: $f4
    db $db                                        ; $736d: $db
    ld [bc], a                                    ; $736e: $02
    and a                                         ; $736f: $a7
    jr nz, jr_030_7315                            ; $7370: $20 $a3

    ld [hl], c                                    ; $7372: $71
    ld e, b                                       ; $7373: $58
    or c                                          ; $7374: $b1
    xor e                                         ; $7375: $ab
    dec b                                         ; $7376: $05
    rst $00                                       ; $7377: $c7
    ld e, d                                       ; $7378: $5a
    add hl, hl                                    ; $7379: $29
    db $e3                                        ; $737a: $e3
    ld [hl], a                                    ; $737b: $77
    ld a, l                                       ; $737c: $7d
    ld a, [c]                                     ; $737d: $f2
    sbc e                                         ; $737e: $9b
    add $b5                                       ; $737f: $c6 $b5
    adc [hl]                                      ; $7381: $8e
    rrca                                          ; $7382: $0f
    ld a, b                                       ; $7383: $78
    ld sp, $2de7                                  ; $7384: $31 $e7 $2d
    ld b, a                                       ; $7387: $47
    ld a, $a7                                     ; $7388: $3e $a7
    add a                                         ; $738a: $87
    ld a, $ae                                     ; $738b: $3e $ae
    jr jr_030_735a                                ; $738d: $18 $cb

    cp h                                          ; $738f: $bc
    rst $00                                       ; $7390: $c7
    rst $30                                       ; $7391: $f7
    ld h, e                                       ; $7392: $63
    rst $00                                       ; $7393: $c7
    ld a, b                                       ; $7394: $78
    ld c, l                                       ; $7395: $4d
    ld a, [hl-]                                   ; $7396: $3a
    db $fd                                        ; $7397: $fd
    ld a, $7f                                     ; $7398: $3e $7f
    sbc $02                                       ; $739a: $de $02
    and a                                         ; $739c: $a7
    ld e, d                                       ; $739d: $5a
    add hl, hl                                    ; $739e: $29
    jp c, $aaf5                                   ; $739f: $da $f5 $aa

    ld a, [bc]                                    ; $73a2: $0a
    cp [hl]                                       ; $73a3: $be
    add $15                                       ; $73a4: $c6 $15
    dec sp                                        ; $73a6: $3b
    add $6b                                       ; $73a7: $c6 $6b
    jp nc, $f7e9                                  ; $73a9: $d2 $e9 $f7

    ld sp, hl                                     ; $73ac: $f9
    di                                            ; $73ad: $f3
    ld d, $1d                                     ; $73ae: $16 $1d
    adc e                                         ; $73b0: $8b
    ld e, l                                       ; $73b1: $5d
    and $7c                                       ; $73b2: $e6 $7c
    ld [hl], l                                    ; $73b4: $75
    sub [hl]                                      ; $73b5: $96
    or d                                          ; $73b6: $b2
    ld h, d                                       ; $73b7: $62
    jr jr_030_73e7                                ; $73b8: $18 $2d

    ld b, a                                       ; $73ba: $47
    add b                                         ; $73bb: $80
    bit 4, b                                      ; $73bc: $cb $60
    ld e, h                                       ; $73be: $5c

jr_030_73bf:
    dec sp                                        ; $73bf: $3b
    dec b                                         ; $73c0: $05
    jp nz, $b79c                                  ; $73c1: $c2 $9c $b7

    rst $00                                       ; $73c4: $c7
    cp b                                          ; $73c5: $b8
    ld a, l                                       ; $73c6: $7d
    xor [hl]                                      ; $73c7: $ae
    sbc l                                         ; $73c8: $9d
    ld l, d                                       ; $73c9: $6a
    and l                                         ; $73ca: $a5
    ld l, b                                       ; $73cb: $68
    ld e, h                                       ; $73cc: $5c
    db $eb                                        ; $73cd: $eb
    ld hl, sp-$80                                 ; $73ce: $f8 $80
    rla                                           ; $73d0: $17
    ld [hl], e                                    ; $73d1: $73
    sbc $02                                       ; $73d2: $de $02
    and a                                         ; $73d4: $a7
    ld e, d                                       ; $73d5: $5a
    add hl, hl                                    ; $73d6: $29
    ld a, [de]                                    ; $73d7: $1a
    ld d, a                                       ; $73d8: $57
    xor h                                         ; $73d9: $ac
    pop af                                        ; $73da: $f1
    sub a                                         ; $73db: $97
    ld d, [hl]                                    ; $73dc: $56
    add h                                         ; $73dd: $84
    ret nz                                        ; $73de: $c0

    and e                                         ; $73df: $a3
    dec b                                         ; $73e0: $05
    and a                                         ; $73e1: $a7
    ld e, d                                       ; $73e2: $5a
    add hl, hl                                    ; $73e3: $29
    ld a, [de]                                    ; $73e4: $1a
    ld d, a                                       ; $73e5: $57
    xor h                                         ; $73e6: $ac

jr_030_73e7:
    ld a, c                                       ; $73e7: $79
    ld c, [hl]                                    ; $73e8: $4e
    ld l, [hl]                                    ; $73e9: $6e
    ld c, b                                       ; $73ea: $48
    pop de                                        ; $73eb: $d1
    ld [bc], a                                    ; $73ec: $02
    ld e, c                                       ; $73ed: $59
    halt                                          ; $73ee: $76
    or c                                          ; $73ef: $b1
    rra                                           ; $73f0: $1f
    push bc                                       ; $73f1: $c5
    ld l, [hl]                                    ; $73f2: $6e
    ld h, h                                       ; $73f3: $64
    inc l                                         ; $73f4: $2c
    xor l                                         ; $73f5: $ad
    rst $08                                       ; $73f6: $cf
    ld d, $1d                                     ; $73f7: $16 $1d
    rra                                           ; $73f9: $1f
    pop hl                                        ; $73fa: $e1
    ei                                            ; $73fb: $fb
    db $eb                                        ; $73fc: $eb
    cp e                                          ; $73fd: $bb
    dec b                                         ; $73fe: $05
    ld e, c                                       ; $73ff: $59
    ld l, h                                       ; $7400: $6c
    xor e                                         ; $7401: $ab
    ld d, d                                       ; $7402: $52
    xor [hl]                                      ; $7403: $ae
    and l                                         ; $7404: $a5
    sbc a                                         ; $7405: $9f
    sub e                                         ; $7406: $93
    halt                                          ; $7407: $76
    or c                                          ; $7408: $b1
    ld [hl], l                                    ; $7409: $75
    cp $8e                                        ; $740a: $fe $8e
    ld [hl], c                                    ; $740c: $71
    db $fc                                        ; $740d: $fc
    xor h                                         ; $740e: $ac
    ld b, a                                       ; $740f: $47
    inc d                                         ; $7410: $14
    dec l                                         ; $7411: $2d
    ld e, c                                       ; $7412: $59
    rrca                                          ; $7413: $0f
    jp z, $1f43                                   ; $7414: $ca $43 $1f

    cp a                                          ; $7417: $bf
    ld e, e                                       ; $7418: $5b
    sub b                                         ; $7419: $90
    cp a                                          ; $741a: $bf
    rst $38                                       ; $741b: $ff
    ld a, [hl+]                                   ; $741c: $2a
    ld d, h                                       ; $741d: $54
    dec bc                                        ; $741e: $0b
    sbc l                                         ; $741f: $9d
    db $e4                                        ; $7420: $e4
    ld l, [hl]                                    ; $7421: $6e
    ld hl, sp-$39                                 ; $7422: $f8 $c7
    or l                                          ; $7424: $b5
    adc [hl]                                      ; $7425: $8e
    rrca                                          ; $7426: $0f
    ld a, b                                       ; $7427: $78
    ld sp, $ebe7                                  ; $7428: $31 $e7 $eb
    cp e                                          ; $742b: $bb
    dec b                                         ; $742c: $05
    sbc l                                         ; $742d: $9d
    db $e4                                        ; $742e: $e4
    ld l, [hl]                                    ; $742f: $6e
    ld hl, sp-$39                                 ; $7430: $f8 $c7
    or l                                          ; $7432: $b5
    adc [hl]                                      ; $7433: $8e
    rrca                                          ; $7434: $0f
    ld a, b                                       ; $7435: $78
    ld sp, $ebe7                                  ; $7436: $31 $e7 $eb
    and a                                         ; $7439: $a7
    dec b                                         ; $743a: $05
    sbc l                                         ; $743b: $9d
    db $e4                                        ; $743c: $e4
    ld l, [hl]                                    ; $743d: $6e
    ld hl, sp-$39                                 ; $743e: $f8 $c7
    or l                                          ; $7440: $b5
    adc [hl]                                      ; $7441: $8e
    rrca                                          ; $7442: $0f
    ld a, b                                       ; $7443: $78
    ld sp, $ebe7                                  ; $7444: $31 $e7 $eb
    or a                                          ; $7447: $b7
    dec b                                         ; $7448: $05
    ld b, a                                       ; $7449: $47
    ld [hl], l                                    ; $744a: $75
    and [hl]                                      ; $744b: $a6
    sbc e                                         ; $744c: $9b
    and e                                         ; $744d: $a3
    ret nz                                        ; $744e: $c0

    rst $00                                       ; $744f: $c7
    or l                                          ; $7450: $b5
    ld h, d                                       ; $7451: $62
    cp e                                          ; $7452: $bb
    inc l                                         ; $7453: $2c
    ld h, l                                       ; $7454: $65
    ld e, a                                       ; $7455: $5f
    db $e3                                        ; $7456: $e3
    jp c, $c6b1                                   ; $7457: $da $b1 $c6

    ld [hl], d                                    ; $745a: $72
    db $e4                                        ; $745b: $e4
    dec l                                         ; $745c: $2d
    ld e, c                                       ; $745d: $59
    dec b                                         ; $745e: $05
    ld d, d                                       ; $745f: $52
    db $e3                                        ; $7460: $e3
    jp c, Jump_030_4af5                           ; $7461: $da $f5 $4a

    pop de                                        ; $7464: $d1
    ld b, l                                       ; $7465: $45
    ld hl, sp-$02                                 ; $7466: $f8 $fe
    rla                                           ; $7468: $17
    ld a, b                                       ; $7469: $78
    adc h                                         ; $746a: $8c
    ld l, e                                       ; $746b: $6b

jr_030_746c:
    sub a                                         ; $746c: $97
    add hl, sp                                    ; $746d: $39
    add hl, hl                                    ; $746e: $29
    ld e, d                                       ; $746f: $5a
    rst $00                                       ; $7470: $c7
    cp b                                          ; $7471: $b8
    ld a, l                                       ; $7472: $7d
    xor [hl]                                      ; $7473: $ae
    sbc l                                         ; $7474: $9d
    ld l, d                                       ; $7475: $6a
    and l                                         ; $7476: $a5
    ld l, b                                       ; $7477: $68
    push af                                       ; $7478: $f5
    add $20                                       ; $7479: $c6 $20
    ld d, a                                       ; $747b: $57
    dec bc                                        ; $747c: $0b

jr_030_747d:
    ld e, c                                       ; $747d: $59
    ld l, h                                       ; $747e: $6c
    xor e                                         ; $747f: $ab
    ld d, d                                       ; $7480: $52
    xor [hl]                                      ; $7481: $ae
    add l                                         ; $7482: $85
    ld l, $af                                     ; $7483: $2e $af
    ld c, e                                       ; $7485: $4b
    ld e, d                                       ; $7486: $5a
    add a                                         ; $7487: $87
    ld d, a                                       ; $7488: $57
    jr c, jr_030_74cf                             ; $7489: $38 $44

    dec bc                                        ; $748b: $0b
    dec e                                         ; $748c: $1d
    xor l                                         ; $748d: $ad
    ld de, $51c9                                  ; $748e: $11 $c9 $51
    dec l                                         ; $7491: $2d
    sbc l                                         ; $7492: $9d
    ld e, $16                                     ; $7493: $1e $16
    ld de, $c629                                  ; $7495: $11 $29 $c6
    dec d                                         ; $7498: $15
    ld h, e                                       ; $7499: $63
    sbc c                                         ; $749a: $99
    rst $30                                       ; $749b: $f7
    ld hl, sp+$7e                                 ; $749c: $f8 $7e
    or h                                          ; $749e: $b4
    and a                                         ; $749f: $a7
    ld e, d                                       ; $74a0: $5a
    add hl, hl                                    ; $74a1: $29
    ld a, [de]                                    ; $74a2: $1a
    rst $10                                       ; $74a3: $d7
    ld a, [hl+]                                   ; $74a4: $2a
    ld [$80cc], sp                                ; $74a5: $08 $cc $80
    ld d, [hl]                                    ; $74a8: $56
    cp l                                          ; $74a9: $bd
    jp nz, $2d41                                  ; $74aa: $c2 $41 $2d

    and a                                         ; $74ad: $a7
    ld e, d                                       ; $74ae: $5a
    add hl, hl                                    ; $74af: $29
    ld a, [de]                                    ; $74b0: $1a
    cp a                                          ; $74b1: $bf
    sbc e                                         ; $74b2: $9b
    db $d3                                        ; $74b3: $d3
    xor d                                         ; $74b4: $aa
    ld d, a                                       ; $74b5: $57
    jr c, jr_030_746c                             ; $74b6: $38 $b4

    ld e, c                                       ; $74b8: $59
    ld l, h                                       ; $74b9: $6c
    xor e                                         ; $74ba: $ab
    ld d, d                                       ; $74bb: $52
    xor [hl]                                      ; $74bc: $ae
    and l                                         ; $74bd: $a5
    sbc a                                         ; $74be: $9f
    sub e                                         ; $74bf: $93
    add $15                                       ; $74c0: $c6 $15
    cp e                                          ; $74c2: $bb
    call z, $d149                                 ; $74c3: $cc $49 $d1
    ld [bc], a                                    ; $74c6: $02
    ld e, c                                       ; $74c7: $59
    rrca                                          ; $74c8: $0f
    jp z, Jump_030_5f43                           ; $74c9: $ca $43 $5f

    add sp, $72                                   ; $74cc: $e8 $72
    pop de                                        ; $74ce: $d1

jr_030_74cf:
    jr c, jr_030_747d                             ; $74cf: $38 $ac

    rst $38                                       ; $74d1: $ff
    cp d                                          ; $74d2: $ba
    sub l                                         ; $74d3: $95
    halt                                          ; $74d4: $76
    inc hl                                        ; $74d5: $23
    ld h, e                                       ; $74d6: $63
    xor c                                         ; $74d7: $a9
    dec b                                         ; $74d8: $05
    ld b, a                                       ; $74d9: $47
    add b                                         ; $74da: $80
    bit 4, b                                      ; $74db: $cb $60
    ld e, h                                       ; $74dd: $5c
    dec sp                                        ; $74de: $3b
    ld [bc], a                                    ; $74df: $02
    rst $38                                       ; $74e0: $ff
    adc a                                         ; $74e1: $8f
    ld d, $a7                                     ; $74e2: $16 $a7
    ld e, d                                       ; $74e4: $5a
    add hl, hl                                    ; $74e5: $29
    ld a, [de]                                    ; $74e6: $1a
    add e                                         ; $74e7: $83
    ld e, h                                       ; $74e8: $5c
    dec l                                         ; $74e9: $2d
    ld e, c                                       ; $74ea: $59
    and $a4                                       ; $74eb: $e6 $a4
    ld e, l                                       ; $74ed: $5d
    push hl                                       ; $74ee: $e5
    ld [hl], $e6                                  ; $74ef: $36 $e6
    dec d                                         ; $74f1: $15
    ei                                            ; $74f2: $fb
    and h                                         ; $74f3: $a4
    ld d, $c7                                     ; $74f4: $16 $c7
    cp b                                          ; $74f6: $b8
    ld a, l                                       ; $74f7: $7d
    xor [hl]                                      ; $74f8: $ae
    sbc l                                         ; $74f9: $9d
    ld l, d                                       ; $74fa: $6a
    and l                                         ; $74fb: $a5
    ld l, b                                       ; $74fc: $68

Jump_030_74fd:
    push af                                       ; $74fd: $f5
    sub $d1                                       ; $74fe: $d6 $d1

jr_030_7500:
    sbc h                                         ; $7500: $9c
    ld d, b                                       ; $7501: $50
    inc hl                                        ; $7502: $23
    ld a, c                                       ; $7503: $79
    add l                                         ; $7504: $85
    rst $38                                       ; $7505: $ff
    and [hl]                                      ; $7506: $a6
    ld d, $a7                                     ; $7507: $16 $a7
    ld a, $f8                                     ; $7509: $3e $f8
    cp h                                          ; $750b: $bc
    adc a                                         ; $750c: $8f
    ld c, $10                                     ; $750d: $0e $10
    ld a, b                                       ; $750f: $78
    dec e                                         ; $7510: $1d
    cp h                                          ; $7511: $bc
    jp Jump_030_5afa                              ; $7512: $c3 $fa $5a


    dec bc                                        ; $7515: $0b
    sbc l                                         ; $7516: $9d
    ld h, b                                       ; $7517: $60
    adc d                                         ; $7518: $8a

jr_030_7519:
    dec b                                         ; $7519: $05
    ld hl, sp-$76                                 ; $751a: $f8 $8a
    sub [hl]                                      ; $751c: $96
    push bc                                       ; $751d: $c5
    ld d, [hl]                                    ; $751e: $56
    add l                                         ; $751f: $85
    ld a, a                                       ; $7520: $7f
    ld e, h                                       ; $7521: $5c
    db $eb                                        ; $7522: $eb
    db $e4                                        ; $7523: $e4

jr_030_7524:
    add $c8                                       ; $7524: $c6 $c8
    ld b, e                                       ; $7526: $43
    ld a, c                                       ; $7527: $79
    dec bc                                        ; $7528: $0b
    sbc l                                         ; $7529: $9d
    ld h, b                                       ; $752a: $60
    adc d                                         ; $752b: $8a
    ld [hl], c                                    ; $752c: $71
    ei                                            ; $752d: $fb
    or c                                          ; $752e: $b1
    ld h, d                                       ; $752f: $62
    ld c, e                                       ; $7530: $4b
    dec a                                         ; $7531: $3d
    jr nz, jr_030_7500                            ; $7532: $20 $cc

    add b                                         ; $7534: $80
    halt                                          ; $7535: $76
    jr c, jr_030_7524                             ; $7536: $38 $ec

    adc b                                         ; $7538: $88
    rst $30                                       ; $7539: $f7
    sub a                                         ; $753a: $97
    push bc                                       ; $753b: $c5
    ld [hl], $e0                                  ; $753c: $36 $e0
    cp $7e                                        ; $753e: $fe $7e
    sbc $02                                       ; $7540: $de $02
    sbc l                                         ; $7542: $9d
    ld h, b                                       ; $7543: $60
    adc d                                         ; $7544: $8a
    ld [hl], c                                    ; $7545: $71
    ei                                            ; $7546: $fb
    or c                                          ; $7547: $b1
    ld h, d                                       ; $7548: $62
    ld c, e                                       ; $7549: $4b
    dec a                                         ; $754a: $3d
    jr nz, jr_030_7519                            ; $754b: $20 $cc

    add b                                         ; $754d: $80
    add $b5                                       ; $754e: $c6 $b5
    ld [hl], d                                    ; $7550: $72
    or a                                          ; $7551: $b7
    and $11                                       ; $7552: $e6 $11
    dec de                                        ; $7554: $1b
    cpl                                           ; $7555: $2f
    ld b, e                                       ; $7556: $43
    ld d, a                                       ; $7557: $57
    sbc $02                                       ; $7558: $de $02
    sbc l                                         ; $755a: $9d
    ld h, b                                       ; $755b: $60
    adc d                                         ; $755c: $8a
    add hl, de                                    ; $755d: $19
    db $ec                                        ; $755e: $ec
    sub h                                         ; $755f: $94
    ld d, a                                       ; $7560: $57
    ld h, e                                       ; $7561: $63
    ld d, b                                       ; $7562: $50
    ld l, c                                       ; $7563: $69
    inc e                                         ; $7564: $1c
    halt                                          ; $7565: $76
    inc l                                         ; $7566: $2c
    and [hl]                                      ; $7567: $a6
    ld e, $e4                                     ; $7568: $1e $e4
    dec l                                         ; $756a: $2d
    sbc l                                         ; $756b: $9d
    ld h, b                                       ; $756c: $60
    adc d                                         ; $756d: $8a
    ld h, l                                       ; $756e: $65
    or c                                          ; $756f: $b1
    ld [hl], l                                    ; $7570: $75
    cp $4e                                        ; $7571: $fe $4e
    ld a, [hl+]                                   ; $7573: $2a
    dec b                                         ; $7574: $05
    add hl, de                                    ; $7575: $19
    ei                                            ; $7576: $fb
    ld e, h                                       ; $7577: $5c
    sbc [hl]                                      ; $7578: $9e
    ld e, h                                       ; $7579: $5c
    ld [$6101], a                                 ; $757a: $ea $01 $61
    ld b, $34                                     ; $757d: $06 $34
    xor [hl]                                      ; $757f: $ae
    and l                                         ; $7580: $a5
    adc h                                         ; $7581: $8c
    dec b                                         ; $7582: $05
    ld [hl+], a                                   ; $7583: $22
    ld d, d                                       ; $7584: $52
    xor h                                         ; $7585: $ac
    ld [hl-], a                                   ; $7586: $32
    ld d, $66                                     ; $7587: $16 $66
    ld b, b                                       ; $7589: $40
    sub c                                         ; $758a: $91
    or a                                          ; $758b: $b7
    sbc l                                         ; $758c: $9d
    ld h, b                                       ; $758d: $60
    adc d                                         ; $758e: $8a
    ld [hl], c                                    ; $758f: $71
    ei                                            ; $7590: $fb
    or c                                          ; $7591: $b1
    ld h, d                                       ; $7592: $62
    dec hl                                        ; $7593: $2b
    sbc b                                         ; $7594: $98
    ld [hl], d                                    ; $7595: $72

jr_030_7596:
    ld b, e                                       ; $7596: $43
    ld b, a                                       ; $7597: $47
    db $ed                                        ; $7598: $ed
    add sp, $22                                   ; $7599: $e8 $22
    ldh a, [$9a]                                  ; $759b: $f0 $9a
    adc c                                         ; $759d: $89
    halt                                          ; $759e: $76
    call nz, $ca23                                ; $759f: $c4 $23 $ca
    ld e, e                                       ; $75a2: $5b
    sbc l                                         ; $75a3: $9d
    ld h, b                                       ; $75a4: $60
    adc d                                         ; $75a5: $8a
    ld e, l                                       ; $75a6: $5d
    ld l, h                                       ; $75a7: $6c
    sbc l                                         ; $75a8: $9d
    cp a                                          ; $75a9: $bf
    ld c, $c6                                     ; $75aa: $0e $c6
    xor l                                         ; $75ac: $ad
    db $d2, $8e, $01                              ; $75ad: $d2 $8e $01

    ld l, h                                       ; $75b0: $6c
    ret nz                                        ; $75b1: $c0

    sub l                                         ; $75b2: $95
    ld e, h                                       ; $75b3: $5c
    ld [$6101], a                                 ; $75b4: $ea $01 $61
    ld b, $34                                     ; $75b7: $06 $34
    xor [hl]                                      ; $75b9: $ae
    ld sp, hl                                     ; $75ba: $f9
    ld c, e                                       ; $75bb: $4b
    add hl, hl                                    ; $75bc: $29
    ld a, [c]                                     ; $75bd: $f2
    ld d, $9d                                     ; $75be: $16 $9d
    ld h, b                                       ; $75c0: $60
    adc d                                         ; $75c1: $8a
    ld [hl], c                                    ; $75c2: $71
    ei                                            ; $75c3: $fb
    or c                                          ; $75c4: $b1
    ld h, d                                       ; $75c5: $62
    ld c, e                                       ; $75c6: $4b
    dec a                                         ; $75c7: $3d
    jr nz, jr_030_7596                            ; $75c8: $20 $cc

    add b                                         ; $75ca: $80
    add $b5                                       ; $75cb: $c6 $b5
    and e                                         ; $75cd: $a3
    dec e                                         ; $75ce: $1d
    db $ed                                        ; $75cf: $ed
    ld [hl], e                                    ; $75d0: $73
    inc c                                         ; $75d1: $0c
    push bc                                       ; $75d2: $c5
    ld a, [hl+]                                   ; $75d3: $2a
    ld h, e                                       ; $75d4: $63
    ld h, c                                       ; $75d5: $61
    ld b, $14                                     ; $75d6: $06 $14
    dec sp                                        ; $75d8: $3b
    ld [c], a                                     ; $75d9: $e2
    db $fd                                        ; $75da: $fd
    sub h                                         ; $75db: $94
    xor [hl]                                      ; $75dc: $ae
    cp h                                          ; $75dd: $bc
    dec b                                         ; $75de: $05
    sbc l                                         ; $75df: $9d
    ld h, b                                       ; $75e0: $60
    adc d                                         ; $75e1: $8a
    ld e, l                                       ; $75e2: $5d
    ld l, h                                       ; $75e3: $6c
    sbc l                                         ; $75e4: $9d
    cp a                                          ; $75e5: $bf
    ld h, e                                       ; $75e6: $63
    inc e                                         ; $75e7: $1c
    ccf                                           ; $75e8: $3f
    db $eb                                        ; $75e9: $eb
    ld de, $7245                                  ; $75ea: $11 $45 $72
    push bc                                       ; $75ed: $c5
    sub [hl]                                      ; $75ee: $96
    or d                                          ; $75ef: $b2
    sbc a                                         ; $75f0: $9f
    ld bc, $2b8d                                  ; $75f1: $01 $8d $2b
    ld d, $cf                                     ; $75f4: $16 $cf
    cpl                                           ; $75f6: $2f
    sub h                                         ; $75f7: $94
    ld b, a                                       ; $75f8: $47
    sbc $02                                       ; $75f9: $de $02
    sbc l                                         ; $75fb: $9d
    ld h, b                                       ; $75fc: $60
    adc d                                         ; $75fd: $8a
    ld [hl], c                                    ; $75fe: $71
    ei                                            ; $75ff: $fb
    ld sp, $8bf8                                  ; $7600: $31 $f8 $8b
    rlca                                          ; $7603: $07
    inc h                                         ; $7604: $24
    ld [hl], a                                    ; $7605: $77
    jp $ae3f                                      ; $7606: $c3 $3f $ae


    dec e                                         ; $7609: $1d
    db $e3                                        ; $760a: $e3
    ld hl, sp+$59                                 ; $760b: $f8 $59
    adc a                                         ; $760d: $8f
    jr z, @-$0c                                   ; $760e: $28 $f2

    ld d, $9d                                     ; $7610: $16 $9d
    ld h, b                                       ; $7612: $60
    db $e4                                        ; $7613: $e4
    add $c8                                       ; $7614: $c6 $c8
    ld b, e                                       ; $7616: $43
    or c                                          ; $7617: $b1
    and d                                         ; $7618: $a2
    dec d                                         ; $7619: $15
    cp e                                          ; $761a: $bb
    ld a, [c]                                     ; $761b: $f2
    ld d, $9d                                     ; $761c: $16 $9d
    ld h, b                                       ; $761e: $60
    adc d                                         ; $761f: $8a
    ld [hl], c                                    ; $7620: $71
    ei                                            ; $7621: $fb
    ld sp, $bbf8                                  ; $7622: $31 $f8 $bb
    db $ec                                        ; $7625: $ec
    ld h, d                                       ; $7626: $62
    ccf                                           ; $7627: $3f
    jp z, $9d5b                                   ; $7628: $ca $5b $9d

    ld h, b                                       ; $762b: $60
    adc d                                         ; $762c: $8a
    ld [hl], c                                    ; $762d: $71
    ei                                            ; $762e: $fb
    ld sp, $bbf8                                  ; $762f: $31 $f8 $bb
    db $ec                                        ; $7632: $ec
    ld h, d                                       ; $7633: $62
    ccf                                           ; $7634: $3f
    jp z, $9d5b                                   ; $7635: $ca $5b $9d

    ld h, b                                       ; $7638: $60
    adc d                                         ; $7639: $8a
    ld [hl], c                                    ; $763a: $71
    ei                                            ; $763b: $fb
    ld sp, $bbf8                                  ; $763c: $31 $f8 $bb
    db $ec                                        ; $763f: $ec
    ld h, d                                       ; $7640: $62
    ccf                                           ; $7641: $3f
    jp z, $9d5b                                   ; $7642: $ca $5b $9d

    ld h, b                                       ; $7645: $60
    adc d                                         ; $7646: $8a
    ld [hl], c                                    ; $7647: $71
    ei                                            ; $7648: $fb
    or c                                          ; $7649: $b1
    and d                                         ; $764a: $a2
    ld [hl], l                                    ; $764b: $75
    ld a, h                                       ; $764c: $7c
    ret nz                                        ; $764d: $c0

    adc e                                         ; $764e: $8b
    add hl, sp                                    ; $764f: $39
    rst $18                                       ; $7650: $df
    ld d, c                                       ; $7651: $51
    sbc l                                         ; $7652: $9d
    dec de                                        ; $7653: $1b
    ld d, a                                       ; $7654: $57
    ld b, h                                       ; $7655: $44
    sbc $02                                       ; $7656: $de $02
    sbc l                                         ; $7658: $9d
    ld h, b                                       ; $7659: $60
    adc d                                         ; $765a: $8a
    ld [hl], c                                    ; $765b: $71
    ei                                            ; $765c: $fb
    or c                                          ; $765d: $b1
    ld h, d                                       ; $765e: $62
    dec bc                                        ; $765f: $0b
    dec hl                                        ; $7660: $2b
    ld b, l                                       ; $7661: $45
    db $e3                                        ; $7662: $e3
    jp c, $f029                                   ; $7663: $da $29 $f0

    dec d                                         ; $7666: $15
    ld a, c                                       ; $7667: $79
    dec bc                                        ; $7668: $0b
    sbc l                                         ; $7669: $9d
    ld h, b                                       ; $766a: $60
    adc d                                         ; $766b: $8a
    ld [hl], c                                    ; $766c: $71
    ei                                            ; $766d: $fb
    or c                                          ; $766e: $b1
    ld h, d                                       ; $766f: $62
    dec bc                                        ; $7670: $0b
    dec hl                                        ; $7671: $2b
    ld b, l                                       ; $7672: $45
    db $e3                                        ; $7673: $e3
    ld [hl], a                                    ; $7674: $77
    ld [hl], e                                    ; $7675: $73
    inc h                                         ; $7676: $24
    halt                                          ; $7677: $76
    ld h, l                                       ; $7678: $65
    rst $38                                       ; $7679: $ff
    ld b, d                                       ; $767a: $42
    push hl                                       ; $767b: $e5
    dec l                                         ; $767c: $2d
    sbc l                                         ; $767d: $9d
    ld h, b                                       ; $767e: $60
    adc d                                         ; $767f: $8a
    ld [hl], c                                    ; $7680: $71
    ei                                            ; $7681: $fb
    or c                                          ; $7682: $b1
    ld h, d                                       ; $7683: $62
    ld h, e                                       ; $7684: $63
    ld e, c                                       ; $7685: $59
    sub c                                         ; $7686: $91
    and e                                         ; $7687: $a3
    add $15                                       ; $7688: $c6 $15
    inc sp                                        ; $768a: $33
    xor a                                         ; $768b: $af
    ret nz                                        ; $768c: $c0

    dec d                                         ; $768d: $15
    ld a, c                                       ; $768e: $79
    dec bc                                        ; $768f: $0b
    sbc l                                         ; $7690: $9d

jr_030_7691:
    ld h, b                                       ; $7691: $60
    adc d                                         ; $7692: $8a
    ld [hl], c                                    ; $7693: $71
    ei                                            ; $7694: $fb
    or c                                          ; $7695: $b1
    ld h, d                                       ; $7696: $62
    dec bc                                        ; $7697: $0b
    dec hl                                        ; $7698: $2b
    ld b, l                                       ; $7699: $45
    db $e3                                        ; $769a: $e3
    ld [hl], a                                    ; $769b: $77
    dec bc                                        ; $769c: $0b
    ld a, [c]                                     ; $769d: $f2
    rst $30                                       ; $769e: $f7
    ld e, a                                       ; $769f: $5f
    add l                                         ; $76a0: $85
    jp z, $9d5b                                   ; $76a1: $ca $5b $9d

    ld h, b                                       ; $76a4: $60
    adc d                                         ; $76a5: $8a
    ld [hl], c                                    ; $76a6: $71
    ei                                            ; $76a7: $fb
    or c                                          ; $76a8: $b1
    ld h, d                                       ; $76a9: $62
    dec bc                                        ; $76aa: $0b
    dec hl                                        ; $76ab: $2b
    ld b, l                                       ; $76ac: $45
    db $e3                                        ; $76ad: $e3
    adc d                                         ; $76ae: $8a
    dec [hl]                                      ; $76af: $35
    adc a                                         ; $76b0: $8f
    ld h, d                                       ; $76b1: $62
    ld e, h                                       ; $76b2: $5c
    cp e                                          ; $76b3: $bb
    ret c                                         ; $76b4: $d8

    ld d, [hl]                                    ; $76b5: $56
    and l                                         ; $76b6: $a5
    ld e, h                                       ; $76b7: $5c

Jump_030_76b8:
    ld a, c                                       ; $76b8: $79
    dec bc                                        ; $76b9: $0b
    sbc l                                         ; $76ba: $9d
    ld h, b                                       ; $76bb: $60
    adc d                                         ; $76bc: $8a
    ld [hl], c                                    ; $76bd: $71
    ei                                            ; $76be: $fb
    or c                                          ; $76bf: $b1
    ld h, d                                       ; $76c0: $62
    ld c, e                                       ; $76c1: $4b
    dec a                                         ; $76c2: $3d
    jr nz, jr_030_7691                            ; $76c3: $20 $cc

    add b                                         ; $76c5: $80
    add $b5                                       ; $76c6: $c6 $b5
    sub h                                         ; $76c8: $94
    dec d                                         ; $76c9: $15
    jp Jump_030_5bc8                              ; $76ca: $c3 $c8 $5b


    sbc l                                         ; $76cd: $9d
    ld h, b                                       ; $76ce: $60
    adc d                                         ; $76cf: $8a
    ld [hl], c                                    ; $76d0: $71
    ei                                            ; $76d1: $fb
    or c                                          ; $76d2: $b1
    ld h, d                                       ; $76d3: $62
    dec bc                                        ; $76d4: $0b
    dec hl                                        ; $76d5: $2b
    ld b, l                                       ; $76d6: $45
    db $e3                                        ; $76d7: $e3
    ld [hl], a                                    ; $76d8: $77
    db $fd                                        ; $76d9: $fd
    adc e                                         ; $76da: $8b
    ld l, l                                       ; $76db: $6d
    sbc a                                         ; $76dc: $9f
    ld d, h                                       ; $76dd: $54
    jp hl                                         ; $76de: $e9


    ld d, e                                       ; $76df: $53
    db $e4                                        ; $76e0: $e4
    dec l                                         ; $76e1: $2d
    sbc l                                         ; $76e2: $9d
    ld h, b                                       ; $76e3: $60
    adc d                                         ; $76e4: $8a
    ld [hl], c                                    ; $76e5: $71

Call_030_76e6:
    ei                                            ; $76e6: $fb
    or c                                          ; $76e7: $b1
    ld h, d                                       ; $76e8: $62
    dec bc                                        ; $76e9: $0b
    dec hl                                        ; $76ea: $2b
    ld b, l                                       ; $76eb: $45
    db $e3                                        ; $76ec: $e3
    ld a, [de]                                    ; $76ed: $1a
    cp a                                          ; $76ee: $bf
    and l                                         ; $76ef: $a5
    push af                                       ; $76f0: $f5
    ld b, e                                       ; $76f1: $43
    cp e                                          ; $76f2: $bb
    sbc $27                                       ; $76f3: $de $27
    rst $10                                       ; $76f5: $d7
    adc d                                         ; $76f6: $8a
    ld h, d                                       ; $76f7: $62
    jp hl                                         ; $76f8: $e9


    rst $20                                       ; $76f9: $e7
    sub a                                         ; $76fa: $97
    ld h, d                                       ; $76fb: $62
    inc e                                         ; $76fc: $1c
    sub $c1                                       ; $76fd: $d6 $c1
    ld c, d                                       ; $76ff: $4a
    sbc $02                                       ; $7700: $de $02
    sbc l                                         ; $7702: $9d
    ld h, b                                       ; $7703: $60
    ld d, $23                                     ; $7704: $16 $23
    ld a, a                                       ; $7706: $7f
    ret nz                                        ; $7707: $c0

    call c, $b456                                 ; $7708: $dc $56 $b4
    ld c, $e8                                     ; $770b: $0e $e8
    rrca                                          ; $770d: $0f
    ld a, l                                       ; $770e: $7d
    inc e                                         ; $770f: $1c
    halt                                          ; $7710: $76
    ld a, [bc]                                    ; $7711: $0a
    add $8d                                       ; $7712: $c6 $8d
    rst $20                                       ; $7714: $e7
    dec l                                         ; $7715: $2d
    sbc l                                         ; $7716: $9d
    ld h, b                                       ; $7717: $60
    adc d                                         ; $7718: $8a
    ld [hl], c                                    ; $7719: $71
    ei                                            ; $771a: $fb
    or c                                          ; $771b: $b1
    ld h, d                                       ; $771c: $62
    db $eb                                        ; $771d: $eb
    xor e                                         ; $771e: $ab
    xor [hl]                                      ; $771f: $ae
    ld l, e                                       ; $7720: $6b
    adc l                                         ; $7721: $8d
    add hl, sp                                    ; $7722: $39
    and c                                         ; $7723: $a1
    add $b5                                       ; $7724: $c6 $b5
    ld h, d                                       ; $7726: $62
    dec sp                                        ; $7727: $3b
    ld a, [$d779]                                 ; $7728: $fa $79 $d7
    inc [hl]                                      ; $772b: $34
    db $fc                                        ; $772c: $fc
    inc h                                         ; $772d: $24
    rst $20                                       ; $772e: $e7
    ld c, b                                       ; $772f: $48
    jp z, $9d5b                                   ; $7730: $ca $5b $9d

    ld h, b                                       ; $7733: $60
    adc d                                         ; $7734: $8a
    ld [hl], c                                    ; $7735: $71
    ei                                            ; $7736: $fb
    or c                                          ; $7737: $b1
    ld h, d                                       ; $7738: $62
    db $eb                                        ; $7739: $eb
    cp e                                          ; $773a: $bb
    ld l, [hl]                                    ; $773b: $6e
    and l                                         ; $773c: $a5
    dec [hl]                                      ; $773d: $35
    and $84                                       ; $773e: $e6 $84
    ld a, [de]                                    ; $7740: $1a
    rst $10                                       ; $7741: $d7
    adc d                                         ; $7742: $8a
    db $ed                                        ; $7743: $ed
    add sp, -$19                                  ; $7744: $e8 $e7
    ld e, l                                       ; $7746: $5d
    db $d3                                        ; $7747: $d3
    ldh a, [$93]                                  ; $7748: $f0 $93
    sbc h                                         ; $774a: $9c
    inc hl                                        ; $774b: $23
    add hl, hl                                    ; $774c: $29
    ld l, a                                       ; $774d: $6f
    ld bc, $609d                                  ; $774e: $01 $9d $60
    adc d                                         ; $7751: $8a
    ld [hl], c                                    ; $7752: $71
    ei                                            ; $7753: $fb
    or c                                          ; $7754: $b1
    ld h, d                                       ; $7755: $62
    db $eb                                        ; $7756: $eb
    and a                                         ; $7757: $a7
    ld l, [hl]                                    ; $7758: $6e
    and l                                         ; $7759: $a5
    dec [hl]                                      ; $775a: $35
    and $84                                       ; $775b: $e6 $84
    ld a, [de]                                    ; $775d: $1a
    rst $10                                       ; $775e: $d7
    adc d                                         ; $775f: $8a
    db $ed                                        ; $7760: $ed
    add sp, -$19                                  ; $7761: $e8 $e7
    ld e, l                                       ; $7763: $5d
    db $d3                                        ; $7764: $d3
    ldh a, [$93]                                  ; $7765: $f0 $93
    sbc h                                         ; $7767: $9c
    inc hl                                        ; $7768: $23
    add hl, hl                                    ; $7769: $29
    ld l, a                                       ; $776a: $6f
    ld bc, $609d                                  ; $776b: $01 $9d $60
    adc d                                         ; $776e: $8a
    ld [hl], c                                    ; $776f: $71
    ei                                            ; $7770: $fb
    or c                                          ; $7771: $b1
    ld h, d                                       ; $7772: $62
    db $eb                                        ; $7773: $eb
    or a                                          ; $7774: $b7
    ld l, [hl]                                    ; $7775: $6e
    and l                                         ; $7776: $a5
    dec [hl]                                      ; $7777: $35
    and $84                                       ; $7778: $e6 $84
    ld a, [de]                                    ; $777a: $1a
    rst $10                                       ; $777b: $d7
    adc d                                         ; $777c: $8a
    db $ed                                        ; $777d: $ed
    add sp, -$19                                  ; $777e: $e8 $e7
    ld e, l                                       ; $7780: $5d
    db $d3                                        ; $7781: $d3
    ldh a, [$93]                                  ; $7782: $f0 $93
    sbc h                                         ; $7784: $9c
    inc hl                                        ; $7785: $23
    add hl, hl                                    ; $7786: $29
    ld l, a                                       ; $7787: $6f
    ld bc, $609d                                  ; $7788: $01 $9d $60
    adc d                                         ; $778b: $8a
    ld [hl], c                                    ; $778c: $71
    ei                                            ; $778d: $fb
    or c                                          ; $778e: $b1
    ld h, d                                       ; $778f: $62
    db $eb                                        ; $7790: $eb
    xor a                                         ; $7791: $af
    ld l, [hl]                                    ; $7792: $6e
    and l                                         ; $7793: $a5
    dec [hl]                                      ; $7794: $35
    and $84                                       ; $7795: $e6 $84
    ld a, [de]                                    ; $7797: $1a
    rst $10                                       ; $7798: $d7
    adc d                                         ; $7799: $8a
    db $ed                                        ; $779a: $ed
    add sp, -$19                                  ; $779b: $e8 $e7
    ld e, l                                       ; $779d: $5d
    db $d3                                        ; $779e: $d3
    ldh a, [$93]                                  ; $779f: $f0 $93
    sbc h                                         ; $77a1: $9c
    inc hl                                        ; $77a2: $23
    add hl, hl                                    ; $77a3: $29
    ld l, a                                       ; $77a4: $6f
    ld bc, $609d                                  ; $77a5: $01 $9d $60
    adc d                                         ; $77a8: $8a
    ld [hl], c                                    ; $77a9: $71
    ei                                            ; $77aa: $fb
    or c                                          ; $77ab: $b1
    ld h, d                                       ; $77ac: $62
    db $eb                                        ; $77ad: $eb
    cp a                                          ; $77ae: $bf
    ld l, [hl]                                    ; $77af: $6e
    and l                                         ; $77b0: $a5
    dec [hl]                                      ; $77b1: $35
    and $84                                       ; $77b2: $e6 $84
    ld a, [de]                                    ; $77b4: $1a
    rst $10                                       ; $77b5: $d7
    adc d                                         ; $77b6: $8a
    db $ed                                        ; $77b7: $ed
    add sp, -$19                                  ; $77b8: $e8 $e7
    ld e, l                                       ; $77ba: $5d
    db $d3                                        ; $77bb: $d3
    ldh a, [$93]                                  ; $77bc: $f0 $93
    sbc h                                         ; $77be: $9c
    inc hl                                        ; $77bf: $23
    add hl, hl                                    ; $77c0: $29
    ld l, a                                       ; $77c1: $6f
    ld bc, $609d                                  ; $77c2: $01 $9d $60
    adc d                                         ; $77c5: $8a
    ld [hl], c                                    ; $77c6: $71
    ei                                            ; $77c7: $fb
    ld sp, $bbf8                                  ; $77c8: $31 $f8 $bb
    db $ec                                        ; $77cb: $ec
    ld h, d                                       ; $77cc: $62
    ccf                                           ; $77cd: $3f
    jp z, $9d5b                                   ; $77ce: $ca $5b $9d

    ld h, b                                       ; $77d1: $60
    adc d                                         ; $77d2: $8a
    ld [hl], c                                    ; $77d3: $71
    ei                                            ; $77d4: $fb
    ld sp, $bbf8                                  ; $77d5: $31 $f8 $bb
    db $ec                                        ; $77d8: $ec
    ld h, d                                       ; $77d9: $62
    ccf                                           ; $77da: $3f
    jp z, $9d5b                                   ; $77db: $ca $5b $9d

    ld h, b                                       ; $77de: $60
    adc d                                         ; $77df: $8a
    ld [hl], c                                    ; $77e0: $71
    ei                                            ; $77e1: $fb
    ld sp, $bbf8                                  ; $77e2: $31 $f8 $bb
    db $ec                                        ; $77e5: $ec
    ld h, d                                       ; $77e6: $62
    ccf                                           ; $77e7: $3f
    jp z, $9d5b                                   ; $77e8: $ca $5b $9d

    ld h, b                                       ; $77eb: $60
    adc d                                         ; $77ec: $8a
    ld [hl], c                                    ; $77ed: $71
    ei                                            ; $77ee: $fb
    ld sp, $bbf8                                  ; $77ef: $31 $f8 $bb
    db $ec                                        ; $77f2: $ec
    ld h, d                                       ; $77f3: $62
    ccf                                           ; $77f4: $3f
    jp z, $9d5b                                   ; $77f5: $ca $5b $9d

    ld h, b                                       ; $77f8: $60
    adc d                                         ; $77f9: $8a
    ld [hl], c                                    ; $77fa: $71
    ei                                            ; $77fb: $fb
    ld sp, $bbf8                                  ; $77fc: $31 $f8 $bb
    db $ec                                        ; $77ff: $ec
    ld h, d                                       ; $7800: $62
    ccf                                           ; $7801: $3f
    jp z, $9d5b                                   ; $7802: $ca $5b $9d

    ld h, b                                       ; $7805: $60
    adc d                                         ; $7806: $8a
    ld [hl], c                                    ; $7807: $71
    ei                                            ; $7808: $fb
    ld sp, $bbf8                                  ; $7809: $31 $f8 $bb
    db $ec                                        ; $780c: $ec
    ld h, d                                       ; $780d: $62
    ccf                                           ; $780e: $3f
    jp z, $9d5b                                   ; $780f: $ca $5b $9d

    ld h, b                                       ; $7812: $60
    adc d                                         ; $7813: $8a
    ld [hl], c                                    ; $7814: $71
    ei                                            ; $7815: $fb
    or c                                          ; $7816: $b1
    and d                                         ; $7817: $a2
    and l                                         ; $7818: $a5
    ret nz                                        ; $7819: $c0

    ld h, l                                       ; $781a: $65
    jr nc, @+$10                                  ; $781b: $30 $0e

    ld l, e                                       ; $781d: $6b
    db $fc                                        ; $781e: $fc
    and l                                         ; $781f: $a5
    dec d                                         ; $7820: $15
    ld hl, $1df0                                  ; $7821: $21 $f0 $1d
    ld e, l                                       ; $7824: $5d
    sub b                                         ; $7825: $90
    adc $c3                                       ; $7826: $ce $c3
    db $eb                                        ; $7828: $eb
    call c, $05bc                                 ; $7829: $dc $bc $05
    sbc l                                         ; $782c: $9d
    ld h, b                                       ; $782d: $60
    adc d                                         ; $782e: $8a
    ld [hl], c                                    ; $782f: $71
    ei                                            ; $7830: $fb
    ld sp, $daf8                                  ; $7831: $31 $f8 $da
    ld d, l                                       ; $7834: $55
    inc l                                         ; $7835: $2c
    ld b, d                                       ; $7836: $42
    ld h, e                                       ; $7837: $63
    sub b                                         ; $7838: $90
    dec hl                                        ; $7839: $2b
    ld l, a                                       ; $783a: $6f
    ld bc, $609d                                  ; $783b: $01 $9d $60
    adc d                                         ; $783e: $8a
    ld [hl], c                                    ; $783f: $71
    ei                                            ; $7840: $fb
    ld sp, $daf8                                  ; $7841: $31 $f8 $da
    ld d, l                                       ; $7844: $55
    inc l                                         ; $7845: $2c
    ld b, d                                       ; $7846: $42
    ld h, e                                       ; $7847: $63
    sub b                                         ; $7848: $90
    dec hl                                        ; $7849: $2b
    ld l, a                                       ; $784a: $6f
    ld bc, $609d                                  ; $784b: $01 $9d $60
    adc d                                         ; $784e: $8a
    ld [hl], c                                    ; $784f: $71
    ei                                            ; $7850: $fb
    or c                                          ; $7851: $b1
    and d                                         ; $7852: $a2
    ld e, l                                       ; $7853: $5d
    rrca                                          ; $7854: $0f
    jp z, $1f43                                   ; $7855: $ca $43 $1f

    ld a, [hl]                                    ; $7858: $7e
    sub d                                         ; $7859: $92
    ld [hl], e                                    ; $785a: $73
    and h                                         ; $785b: $a4
    cp h                                          ; $785c: $bc
    dec b                                         ; $785d: $05
    sbc l                                         ; $785e: $9d
    ld h, b                                       ; $785f: $60
    adc d                                         ; $7860: $8a
    ld [hl], c                                    ; $7861: $71
    ei                                            ; $7862: $fb
    or c                                          ; $7863: $b1
    ld h, d                                       ; $7864: $62
    dec bc                                        ; $7865: $0b
    cp c                                          ; $7866: $b9
    dec hl                                        ; $7867: $2b
    ld l, a                                       ; $7868: $6f
    ld bc, $609d                                  ; $7869: $01 $9d $60
    adc d                                         ; $786c: $8a
    ld [hl], c                                    ; $786d: $71
    ei                                            ; $786e: $fb
    or c                                          ; $786f: $b1
    and d                                         ; $7870: $a2
    jr @+$3f                                      ; $7871: $18 $3d

    inc l                                         ; $7873: $2c
    ld [hl+], a                                   ; $7874: $22
    ld d, d                                       ; $7875: $52
    adc h                                         ; $7876: $8c
    dec hl                                        ; $7877: $2b
    sub [hl]                                      ; $7878: $96
    add $52                                       ; $7879: $c6 $52
    inc d                                         ; $787b: $14
    ld a, c                                       ; $787c: $79
    dec bc                                        ; $787d: $0b
    sbc l                                         ; $787e: $9d
    ld h, b                                       ; $787f: $60
    adc d                                         ; $7880: $8a
    push de                                       ; $7881: $d5
    ld e, c                                       ; $7882: $59
    cp c                                          ; $7883: $b9
    xor e                                         ; $7884: $ab
    inc sp                                        ; $7885: $33
    db $dd                                        ; $7886: $dd
    inc e                                         ; $7887: $1c
    dec b                                         ; $7888: $05
    ld a, $ae                                     ; $7889: $3e $ae
    ld [hl], l                                    ; $788b: $75
    ld a, h                                       ; $788c: $7c
    ret nz                                        ; $788d: $c0

    adc e                                         ; $788e: $8b
    add hl, sp                                    ; $788f: $39
    rst $08                                       ; $7890: $cf
    ld e, e                                       ; $7891: $5b
    sbc l                                         ; $7892: $9d
    ld h, b                                       ; $7893: $60
    adc d                                         ; $7894: $8a
    ld [hl], c                                    ; $7895: $71
    ei                                            ; $7896: $fb
    or c                                          ; $7897: $b1
    ld h, d                                       ; $7898: $62
    cp e                                          ; $7899: $bb
    inc l                                         ; $789a: $2c
    ld h, l                                       ; $789b: $65
    ld e, a                                       ; $789c: $5f
    db $e3                                        ; $789d: $e3
    jp c, $c6b1                                   ; $789e: $da $b1 $c6

    ld [hl], d                                    ; $78a1: $72
    db $e4                                        ; $78a2: $e4
    ld a, c                                       ; $78a3: $79
    dec bc                                        ; $78a4: $0b
    sbc l                                         ; $78a5: $9d
    ld h, b                                       ; $78a6: $60
    adc d                                         ; $78a7: $8a
    ld [hl], c                                    ; $78a8: $71
    ei                                            ; $78a9: $fb
    or c                                          ; $78aa: $b1
    and d                                         ; $78ab: $a2
    ld e, l                                       ; $78ac: $5d
    rrca                                          ; $78ad: $0f
    jp z, $1f43                                   ; $78ae: $ca $43 $1f

    add a                                         ; $78b1: $87
    push af                                       ; $78b2: $f5
    dec h                                         ; $78b3: $25
    rst $18                                       ; $78b4: $df
    adc l                                         ; $78b5: $8d
    adc h                                         ; $78b6: $8c
    and l                                         ; $78b7: $a5
    cp h                                          ; $78b8: $bc
    dec b                                         ; $78b9: $05
    sbc l                                         ; $78ba: $9d
    ld h, b                                       ; $78bb: $60
    adc d                                         ; $78bc: $8a
    ld [hl], c                                    ; $78bd: $71
    ei                                            ; $78be: $fb
    or c                                          ; $78bf: $b1
    and d                                         ; $78c0: $a2
    ld e, l                                       ; $78c1: $5d
    rrca                                          ; $78c2: $0f
    jp z, $1f43                                   ; $78c3: $ca $43 $1f

    add a                                         ; $78c6: $87
    push af                                       ; $78c7: $f5
    ld e, l                                       ; $78c8: $5d
    or a                                          ; $78c9: $b7
    jp nc, Jump_030_646e                          ; $78ca: $d2 $6e $64

    inc l                                         ; $78cd: $2c
    push hl                                       ; $78ce: $e5
    dec l                                         ; $78cf: $2d
    sbc l                                         ; $78d0: $9d
    ld h, b                                       ; $78d1: $60
    adc d                                         ; $78d2: $8a
    ld [hl], c                                    ; $78d3: $71
    ei                                            ; $78d4: $fb
    or c                                          ; $78d5: $b1
    and d                                         ; $78d6: $a2
    ld e, l                                       ; $78d7: $5d
    rrca                                          ; $78d8: $0f
    jp z, $1f43                                   ; $78d9: $ca $43 $1f

    add a                                         ; $78dc: $87
    push af                                       ; $78dd: $f5
    ld d, e                                       ; $78de: $53
    or a                                          ; $78df: $b7
    jp nc, Jump_030_646e                          ; $78e0: $d2 $6e $64

    inc l                                         ; $78e3: $2c
    push hl                                       ; $78e4: $e5
    dec l                                         ; $78e5: $2d
    sbc l                                         ; $78e6: $9d
    ld h, b                                       ; $78e7: $60
    adc d                                         ; $78e8: $8a
    ld [hl], c                                    ; $78e9: $71
    ei                                            ; $78ea: $fb
    or c                                          ; $78eb: $b1
    and d                                         ; $78ec: $a2
    ld e, l                                       ; $78ed: $5d
    rrca                                          ; $78ee: $0f
    jp z, $1f43                                   ; $78ef: $ca $43 $1f

    add a                                         ; $78f2: $87
    push af                                       ; $78f3: $f5
    ld e, e                                       ; $78f4: $5b
    or a                                          ; $78f5: $b7
    jp nc, Jump_030_646e                          ; $78f6: $d2 $6e $64

    inc l                                         ; $78f9: $2c
    push hl                                       ; $78fa: $e5
    dec l                                         ; $78fb: $2d
    sbc l                                         ; $78fc: $9d
    ld h, b                                       ; $78fd: $60
    adc d                                         ; $78fe: $8a
    ld [hl], c                                    ; $78ff: $71
    ei                                            ; $7900: $fb
    or c                                          ; $7901: $b1
    and d                                         ; $7902: $a2
    ld e, l                                       ; $7903: $5d
    rrca                                          ; $7904: $0f
    jp z, $1f43                                   ; $7905: $ca $43 $1f

    add a                                         ; $7908: $87
    push af                                       ; $7909: $f5
    ld d, a                                       ; $790a: $57
    or a                                          ; $790b: $b7
    jp nc, Jump_030_646e                          ; $790c: $d2 $6e $64

    inc l                                         ; $790f: $2c
    push hl                                       ; $7910: $e5
    dec l                                         ; $7911: $2d
    sbc l                                         ; $7912: $9d
    ld h, b                                       ; $7913: $60
    adc d                                         ; $7914: $8a

jr_030_7915:
    ld [hl], c                                    ; $7915: $71
    ei                                            ; $7916: $fb
    or c                                          ; $7917: $b1

Call_030_7918:
    and d                                         ; $7918: $a2
    ld e, l                                       ; $7919: $5d
    rrca                                          ; $791a: $0f
    jp z, $1f43                                   ; $791b: $ca $43 $1f

    add a                                         ; $791e: $87
    push af                                       ; $791f: $f5
    ld e, a                                       ; $7920: $5f
    or a                                          ; $7921: $b7
    jp nc, Jump_030_646e                          ; $7922: $d2 $6e $64

    inc l                                         ; $7925: $2c
    push hl                                       ; $7926: $e5
    dec l                                         ; $7927: $2d
    sbc l                                         ; $7928: $9d
    ld h, b                                       ; $7929: $60
    adc d                                         ; $792a: $8a
    ld [hl], c                                    ; $792b: $71
    ei                                            ; $792c: $fb
    or c                                          ; $792d: $b1
    and d                                         ; $792e: $a2
    ld e, l                                       ; $792f: $5d
    rrca                                          ; $7930: $0f
    jp z, $1f43                                   ; $7931: $ca $43 $1f

    add a                                         ; $7934: $87
    dec e                                         ; $7935: $1d
    ld d, b                                       ; $7936: $50
    or a                                          ; $7937: $b7
    jp nc, Jump_030_646e                          ; $7938: $d2 $6e $64

    inc l                                         ; $793b: $2c
    push hl                                       ; $793c: $e5
    dec l                                         ; $793d: $2d
    sbc l                                         ; $793e: $9d
    ld h, b                                       ; $793f: $60
    adc d                                         ; $7940: $8a
    ld [hl], c                                    ; $7941: $71
    ei                                            ; $7942: $fb
    or c                                          ; $7943: $b1
    ld h, d                                       ; $7944: $62
    ld c, e                                       ; $7945: $4b
    dec a                                         ; $7946: $3d
    jr nz, jr_030_7915                            ; $7947: $20 $cc

Call_030_7949:
    add b                                         ; $7949: $80
    add $61                                       ; $794a: $c6 $61
    inc l                                         ; $794c: $2c
    cp b                                          ; $794d: $b8
    add hl, sp                                    ; $794e: $39
    ld b, [hl]                                    ; $794f: $46
    ld [$6f3c], sp                                ; $7950: $08 $3c $6f
    ld bc, $609d                                  ; $7953: $01 $9d $60
    adc d                                         ; $7956: $8a
    ld [hl], c                                    ; $7957: $71
    ei                                            ; $7958: $fb
    or c                                          ; $7959: $b1
    ld h, d                                       ; $795a: $62
    dec bc                                        ; $795b: $0b
    dec hl                                        ; $795c: $2b
    ld b, l                                       ; $795d: $45
    db $e3                                        ; $795e: $e3
    ld [hl], a                                    ; $795f: $77
    ld [hl], $06                                  ; $7960: $36 $06
    dec a                                         ; $7962: $3d
    ld [hl], h                                    ; $7963: $74
    adc l                                         ; $7964: $8d
    ld l, e                                       ; $7965: $6b
    push bc                                       ; $7966: $c5
    ld d, [hl]                                    ; $7967: $56
    add hl, de                                    ; $7968: $19
    dec bc                                        ; $7969: $0b
    sub l                                         ; $796a: $95
    or a                                          ; $796b: $b7
    sbc l                                         ; $796c: $9d
    ld h, b                                       ; $796d: $60
    adc d                                         ; $796e: $8a
    ld [hl], c                                    ; $796f: $71
    ei                                            ; $7970: $fb
    or c                                          ; $7971: $b1
    ld h, d                                       ; $7972: $62
    cp e                                          ; $7973: $bb
    ret c                                         ; $7974: $d8

    ld d, [hl]                                    ; $7975: $56
    and l                                         ; $7976: $a5
    ld e, h                                       ; $7977: $5c
    db $e3                                        ; $7978: $e3
    ld e, d                                       ; $7979: $5a
    cp c                                          ; $797a: $b9
    db $e3                                        ; $797b: $e3
    ld c, a                                       ; $797c: $4f
    and e                                         ; $797d: $a3
    ld d, a                                       ; $797e: $57
    ld [hl], d                                    ; $797f: $72
    ld d, h                                       ; $7980: $54
    sbc $02                                       ; $7981: $de $02
    sbc l                                         ; $7983: $9d
    ld h, b                                       ; $7984: $60
    adc d                                         ; $7985: $8a
    ld [hl], c                                    ; $7986: $71
    ei                                            ; $7987: $fb
    or c                                          ; $7988: $b1
    ld h, d                                       ; $7989: $62
    ld c, e                                       ; $798a: $4b
    ld h, c                                       ; $798b: $61

Call_030_798c:
    xor d                                         ; $798c: $aa
    ldh [rNR44], a                                ; $798d: $e0 $23
    halt                                          ; $798f: $76
    db $dd                                        ; $7990: $dd
    inc c                                         ; $7991: $0c
    jr z, jr_030_7a03                             ; $7992: $28 $6f

jr_030_7994:
    ld bc, $609d                                  ; $7994: $01 $9d $60
    adc d                                         ; $7997: $8a
    ld [hl], c                                    ; $7998: $71
    ei                                            ; $7999: $fb
    or c                                          ; $799a: $b1
    ld h, d                                       ; $799b: $62
    ld c, e                                       ; $799c: $4b
    ld h, c                                       ; $799d: $61
    xor d                                         ; $799e: $aa
    ldh [rNR44], a                                ; $799f: $e0 $23
    halt                                          ; $79a1: $76
    db $dd                                        ; $79a2: $dd
    inc c                                         ; $79a3: $0c
    jr z, @+$71                                   ; $79a4: $28 $6f

    ld bc, $609d                                  ; $79a6: $01 $9d $60
    adc d                                         ; $79a9: $8a
    ld [hl], c                                    ; $79aa: $71
    ei                                            ; $79ab: $fb
    or c                                          ; $79ac: $b1
    and d                                         ; $79ad: $a2
    and l                                         ; $79ae: $a5
    ret nz                                        ; $79af: $c0

    ld h, l                                       ; $79b0: $65
    jr nc, jr_030_79c1                            ; $79b1: $30 $0e

    ld l, e                                       ; $79b3: $6b
    db $fc                                        ; $79b4: $fc
    and l                                         ; $79b5: $a5
    dec d                                         ; $79b6: $15
    ld hl, $75f0                                  ; $79b7: $21 $f0 $75
    cp b                                          ; $79ba: $b8
    adc [hl]                                      ; $79bb: $8e
    ld a, c                                       ; $79bc: $79
    rst $18                                       ; $79bd: $df
    ld e, b                                       ; $79be: $58
    ld d, [hl]                                    ; $79bf: $56
    ld c, d                                       ; $79c0: $4a

jr_030_79c1:
    sbc $02                                       ; $79c1: $de $02
    sbc l                                         ; $79c3: $9d
    ld h, b                                       ; $79c4: $60
    adc d                                         ; $79c5: $8a
    ld [hl], c                                    ; $79c6: $71
    ei                                            ; $79c7: $fb
    or c                                          ; $79c8: $b1
    ld h, d                                       ; $79c9: $62
    dec bc                                        ; $79ca: $0b
    dec hl                                        ; $79cb: $2b
    ld b, l                                       ; $79cc: $45
    db $e3                                        ; $79cd: $e3
    rst $30                                       ; $79ce: $f7
    and e                                         ; $79cf: $a3
    ld [$c6b8], sp                                ; $79d0: $08 $b8 $c6
    dec d                                         ; $79d3: $15
    db $eb                                        ; $79d4: $eb
    ldh a, [$0a]                                  ; $79d5: $f0 $0a
    add a                                         ; $79d7: $87
    ret z                                         ; $79d8: $c8

    ld e, e                                       ; $79d9: $5b
    sbc l                                         ; $79da: $9d
    ld h, b                                       ; $79db: $60
    adc d                                         ; $79dc: $8a
    ld [hl], c                                    ; $79dd: $71
    ei                                            ; $79de: $fb
    or c                                          ; $79df: $b1
    and d                                         ; $79e0: $a2
    and l                                         ; $79e1: $a5
    ret nz                                        ; $79e2: $c0

    ld h, l                                       ; $79e3: $65
    jr nc, jr_030_7994                            ; $79e4: $30 $ae

    ld [hl], l                                    ; $79e6: $75
    jr nc, jr_030_7a57                            ; $79e7: $30 $6e

    sub l                                         ; $79e9: $95
    sub $f1                                       ; $79ea: $d6 $f1
    ld d, l                                       ; $79ec: $55
    ld l, c                                       ; $79ed: $69
    ld d, a                                       ; $79ee: $57
    or b                                          ; $79ef: $b0
    di                                            ; $79f0: $f3
    ld d, $9d                                     ; $79f1: $16 $9d
    ld h, b                                       ; $79f3: $60
    adc d                                         ; $79f4: $8a
    ld [hl], c                                    ; $79f5: $71
    ei                                            ; $79f6: $fb
    or c                                          ; $79f7: $b1
    ld h, d                                       ; $79f8: $62
    dec bc                                        ; $79f9: $0b
    dec hl                                        ; $79fa: $2b
    ld b, l                                       ; $79fb: $45
    db $e3                                        ; $79fc: $e3
    ld e, d                                       ; $79fd: $5a
    di                                            ; $79fe: $f3
    ld [$8fdf], sp                                ; $79ff: $08 $df $8f
    cp h                                          ; $7a02: $bc

jr_030_7a03:
    dec b                                         ; $7a03: $05
    sbc l                                         ; $7a04: $9d
    ld h, b                                       ; $7a05: $60
    adc d                                         ; $7a06: $8a
    ld [hl], c                                    ; $7a07: $71
    ei                                            ; $7a08: $fb
    or c                                          ; $7a09: $b1
    and d                                         ; $7a0a: $a2
    and l                                         ; $7a0b: $a5
    ret nz                                        ; $7a0c: $c0

    ld h, l                                       ; $7a0d: $65
    jr nc, jr_030_7a1e                            ; $7a0e: $30 $0e

    ld l, e                                       ; $7a10: $6b
    db $fc                                        ; $7a11: $fc
    and l                                         ; $7a12: $a5
    dec d                                         ; $7a13: $15
    ld hl, $9df0                                  ; $7a14: $21 $f0 $9d
    inc c                                         ; $7a17: $0c
    add sp, -$52                                  ; $7a18: $e8 $ae
    ld d, d                                       ; $7a1a: $52
    ld a, [c]                                     ; $7a1b: $f2
    ld d, $9d                                     ; $7a1c: $16 $9d

jr_030_7a1e:
    ld h, b                                       ; $7a1e: $60
    adc d                                         ; $7a1f: $8a
    ld [hl], c                                    ; $7a20: $71
    ei                                            ; $7a21: $fb
    or c                                          ; $7a22: $b1
    and d                                         ; $7a23: $a2
    and l                                         ; $7a24: $a5
    ret nz                                        ; $7a25: $c0

    ld h, l                                       ; $7a26: $65
    jr nc, jr_030_7a37                            ; $7a27: $30 $0e

    ld l, e                                       ; $7a29: $6b
    db $fc                                        ; $7a2a: $fc
    and l                                         ; $7a2b: $a5
    dec d                                         ; $7a2c: $15
    ld hl, $9df0                                  ; $7a2d: $21 $f0 $9d
    ld a, [c]                                     ; $7a30: $f2
    ld e, b                                       ; $7a31: $58
    and b                                         ; $7a32: $a0
    cp h                                          ; $7a33: $bc
    dec b                                         ; $7a34: $05
    sbc l                                         ; $7a35: $9d
    ld h, b                                       ; $7a36: $60

jr_030_7a37:
    adc d                                         ; $7a37: $8a
    ld [hl], c                                    ; $7a38: $71
    ei                                            ; $7a39: $fb
    or c                                          ; $7a3a: $b1
    and d                                         ; $7a3b: $a2
    and l                                         ; $7a3c: $a5
    ret nz                                        ; $7a3d: $c0

    ld h, l                                       ; $7a3e: $65
    jr nc, jr_030_7a4f                            ; $7a3f: $30 $0e

    ld l, e                                       ; $7a41: $6b
    db $fc                                        ; $7a42: $fc
    and l                                         ; $7a43: $a5
    dec d                                         ; $7a44: $15
    ld hl, $65f0                                  ; $7a45: $21 $f0 $65
    or c                                          ; $7a48: $b1
    rra                                           ; $7a49: $1f
    cp b                                          ; $7a4a: $b8
    ld sp, $5bca                                  ; $7a4b: $31 $ca $5b
    sbc l                                         ; $7a4e: $9d

jr_030_7a4f:
    ld h, b                                       ; $7a4f: $60
    adc d                                         ; $7a50: $8a
    ld [hl], c                                    ; $7a51: $71
    ei                                            ; $7a52: $fb

jr_030_7a53:
    ld sp, $e3f8                                  ; $7a53: $31 $f8 $e3
    or a                                          ; $7a56: $b7

jr_030_7a57:
    sub h                                         ; $7a57: $94
    cp c                                          ; $7a58: $b9
    ld e, e                                       ; $7a59: $5b
    db $e4                                        ; $7a5a: $e4
    dec l                                         ; $7a5b: $2d
    sbc l                                         ; $7a5c: $9d
    ld h, b                                       ; $7a5d: $60
    adc d                                         ; $7a5e: $8a
    ld [hl], c                                    ; $7a5f: $71
    ei                                            ; $7a60: $fb
    or c                                          ; $7a61: $b1
    ld h, d                                       ; $7a62: $62
    dec bc                                        ; $7a63: $0b
    dec hl                                        ; $7a64: $2b

jr_030_7a65:
    ld b, l                                       ; $7a65: $45
    db $e3                                        ; $7a66: $e3
    ld e, d                                       ; $7a67: $5a
    ld [hl], l                                    ; $7a68: $75
    inc hl                                        ; $7a69: $23
    xor e                                         ; $7a6a: $ab
    sbc [hl]                                      ; $7a6b: $9e
    scf                                           ; $7a6c: $37
    db $ec                                        ; $7a6d: $ec
    rla                                           ; $7a6e: $17
    jp z, $9d5b                                   ; $7a6f: $ca $5b $9d

    ld h, b                                       ; $7a72: $60
    adc d                                         ; $7a73: $8a
    ld [hl], c                                    ; $7a74: $71
    ei                                            ; $7a75: $fb
    or c                                          ; $7a76: $b1
    ld h, d                                       ; $7a77: $62
    dec bc                                        ; $7a78: $0b
    dec hl                                        ; $7a79: $2b
    ld b, l                                       ; $7a7a: $45
    db $e3                                        ; $7a7b: $e3
    adc d                                         ; $7a7c: $8a
    sub c                                         ; $7a7d: $91
    cp a                                          ; $7a7e: $bf
    add [hl]                                      ; $7a7f: $86
    ld a, l                                       ; $7a80: $7d
    ld d, e                                       ; $7a81: $53
    db $e4                                        ; $7a82: $e4
    dec l                                         ; $7a83: $2d
    sbc l                                         ; $7a84: $9d
    ld h, b                                       ; $7a85: $60
    adc d                                         ; $7a86: $8a
    ld [hl], c                                    ; $7a87: $71
    ei                                            ; $7a88: $fb
    ld sp, $8bf8                                  ; $7a89: $31 $f8 $8b
    rlca                                          ; $7a8c: $07
    inc h                                         ; $7a8d: $24
    ld [hl], a                                    ; $7a8e: $77
    jp $ae3f                                      ; $7a8f: $c3 $3f $ae


    dec e                                         ; $7a92: $1d
    db $e3                                        ; $7a93: $e3
    ld hl, sp+$59                                 ; $7a94: $f8 $59
    adc a                                         ; $7a96: $8f
    jr z, @-$0c                                   ; $7a97: $28 $f2

    ld d, $9d                                     ; $7a99: $16 $9d
    ld h, b                                       ; $7a9b: $60
    adc d                                         ; $7a9c: $8a
    dec b                                         ; $7a9d: $05
    ld hl, sp-$76                                 ; $7a9e: $f8 $8a
    adc l                                         ; $7aa0: $8d
    ld a, c                                       ; $7aa1: $79
    xor b                                         ; $7aa2: $a8
    ld a, l                                       ; $7aa3: $7d
    ld b, c                                       ; $7aa4: $41
    ld a, d                                       ; $7aa5: $7a
    db $e4                                        ; $7aa6: $e4
    rrca                                          ; $7aa7: $0f
    ld h, e                                       ; $7aa8: $63
    add hl, de                                    ; $7aa9: $19
    jr nc, jr_030_7a53                            ; $7aaa: $30 $a7

    ret z                                         ; $7aac: $c8

    ld e, e                                       ; $7aad: $5b
    sbc l                                         ; $7aae: $9d
    ld h, b                                       ; $7aaf: $60
    adc d                                         ; $7ab0: $8a
    dec b                                         ; $7ab1: $05
    ld hl, sp-$76                                 ; $7ab2: $f8 $8a
    call $d191                                    ; $7ab4: $cd $91 $d1
    jr c, jr_030_7a65                             ; $7ab7: $38 $ac

    ret c                                         ; $7ab9: $d8

    sub l                                         ; $7aba: $95
    or a                                          ; $7abb: $b7
    sbc l                                         ; $7abc: $9d
    ld h, b                                       ; $7abd: $60
    adc d                                         ; $7abe: $8a
    ld [hl], c                                    ; $7abf: $71
    ei                                            ; $7ac0: $fb
    or c                                          ; $7ac1: $b1
    and d                                         ; $7ac2: $a2
    or c                                          ; $7ac3: $b1
    xor l                                         ; $7ac4: $ad
    sub h                                         ; $7ac5: $94
    pop af                                        ; $7ac6: $f1
    cp e                                          ; $7ac7: $bb
    ld a, $f9                                     ; $7ac8: $3e $f9
    ld c, l                                       ; $7aca: $4d
    db $e3                                        ; $7acb: $e3
    ld e, d                                       ; $7acc: $5a
    rst $00                                       ; $7acd: $c7
    rlca                                          ; $7ace: $07
    cp h                                          ; $7acf: $bc
    sbc b                                         ; $7ad0: $98
    di                                            ; $7ad1: $f3
    cp h                                          ; $7ad2: $bc
    dec b                                         ; $7ad3: $05
    sbc l                                         ; $7ad4: $9d
    ld h, b                                       ; $7ad5: $60
    adc d                                         ; $7ad6: $8a
    ld [hl], c                                    ; $7ad7: $71

jr_030_7ad8:
    ei                                            ; $7ad8: $fb
    or c                                          ; $7ad9: $b1
    and d                                         ; $7ada: $a2
    pop af                                        ; $7adb: $f1
    rst $20                                       ; $7adc: $e7
    db $f4                                        ; $7add: $f4
    ret nc                                        ; $7ade: $d0

    rst $00                                       ; $7adf: $c7
    dec d                                         ; $7ae0: $15
    ld h, e                                       ; $7ae1: $63
    sbc c                                         ; $7ae2: $99
    rst $30                                       ; $7ae3: $f7
    ld hl, sp+$7e                                 ; $7ae4: $f8 $7e
    adc h                                         ; $7ae6: $8c
    ld l, e                                       ; $7ae7: $6b
    rst $00                                       ; $7ae8: $c7
    ld a, b                                       ; $7ae9: $78
    ld c, l                                       ; $7aea: $4d
    ld a, [hl-]                                   ; $7aeb: $3a
    db $fd                                        ; $7aec: $fd
    ld a, $7f                                     ; $7aed: $3e $7f
    sbc [hl]                                      ; $7aef: $9e
    or a                                          ; $7af0: $b7
    sbc l                                         ; $7af1: $9d
    ld h, b                                       ; $7af2: $60
    adc d                                         ; $7af3: $8a
    ld [hl], c                                    ; $7af4: $71
    ei                                            ; $7af5: $fb
    or c                                          ; $7af6: $b1
    ld h, d                                       ; $7af7: $62
    dec bc                                        ; $7af8: $0b
    dec hl                                        ; $7af9: $2b
    ld b, l                                       ; $7afa: $45
    cp e                                          ; $7afb: $bb
    ld e, [hl]                                    ; $7afc: $5e
    ld d, l                                       ; $7afd: $55
    pop bc                                        ; $7afe: $c1
    rst $10                                       ; $7aff: $d7
    cp b                                          ; $7b00: $b8
    halt                                          ; $7b01: $76
    adc h                                         ; $7b02: $8c
    rst $10                                       ; $7b03: $d7
    and h                                         ; $7b04: $a4
    db $d3                                        ; $7b05: $d3
    rst $28                                       ; $7b06: $ef
    di                                            ; $7b07: $f3
    rst $20                                       ; $7b08: $e7
    ld a, c                                       ; $7b09: $79
    dec bc                                        ; $7b0a: $0b
    sbc l                                         ; $7b0b: $9d
    ld h, b                                       ; $7b0c: $60
    adc d                                         ; $7b0d: $8a
    ld [hl], c                                    ; $7b0e: $71
    ei                                            ; $7b0f: $fb
    ld sp, $6bf8                                  ; $7b10: $31 $f8 $6b
    adc d                                         ; $7b13: $8a
    ld e, l                                       ; $7b14: $5d
    and $7c                                       ; $7b15: $e6 $7c
    ld [hl], l                                    ; $7b17: $75
    sub [hl]                                      ; $7b18: $96
    or d                                          ; $7b19: $b2
    ld h, d                                       ; $7b1a: $62
    jr jr_030_7b96                                ; $7b1b: $18 $79

    dec bc                                        ; $7b1d: $0b
    sbc l                                         ; $7b1e: $9d
    ld h, b                                       ; $7b1f: $60
    adc d                                         ; $7b20: $8a
    ld [hl], c                                    ; $7b21: $71
    ei                                            ; $7b22: $fb
    or c                                          ; $7b23: $b1
    and d                                         ; $7b24: $a2
    and l                                         ; $7b25: $a5
    ret nz                                        ; $7b26: $c0

    ld h, l                                       ; $7b27: $65
    jr nc, jr_030_7ad8                            ; $7b28: $30 $ae

    sbc l                                         ; $7b2a: $9d
    ld [bc], a                                    ; $7b2b: $02
    ld h, c                                       ; $7b2c: $61
    adc $f3                                       ; $7b2d: $ce $f3
    ld d, $9d                                     ; $7b2f: $16 $9d
    ld h, b                                       ; $7b31: $60
    adc d                                         ; $7b32: $8a
    ld [hl], c                                    ; $7b33: $71
    ei                                            ; $7b34: $fb
    or c                                          ; $7b35: $b1
    ld h, d                                       ; $7b36: $62
    dec sp                                        ; $7b37: $3b
    add $ed                                       ; $7b38: $c6 $ed
    ld [hl], e                                    ; $7b3a: $73
    db $ed                                        ; $7b3b: $ed
    ld d, h                                       ; $7b3c: $54
    dec hl                                        ; $7b3d: $2b
    ld b, l                                       ; $7b3e: $45
    ld a, c                                       ; $7b3f: $79
    dec bc                                        ; $7b40: $0b
    sbc l                                         ; $7b41: $9d
    ld h, b                                       ; $7b42: $60
    adc d                                         ; $7b43: $8a
    ld [hl], c                                    ; $7b44: $71
    ei                                            ; $7b45: $fb
    or c                                          ; $7b46: $b1
    ld h, d                                       ; $7b47: $62
    dec bc                                        ; $7b48: $0b
    dec hl                                        ; $7b49: $2b
    ld b, l                                       ; $7b4a: $45
    db $e3                                        ; $7b4b: $e3
    adc d                                         ; $7b4c: $8a
    dec [hl]                                      ; $7b4d: $35
    cp $d2                                        ; $7b4e: $fe $d2
    adc d                                         ; $7b50: $8a
    db $10                                        ; $7b51: $10
    ld a, b                                       ; $7b52: $78
    db $e4                                        ; $7b53: $e4
    dec l                                         ; $7b54: $2d
    sbc l                                         ; $7b55: $9d
    ld h, b                                       ; $7b56: $60
    adc d                                         ; $7b57: $8a
    ld [hl], c                                    ; $7b58: $71
    ei                                            ; $7b59: $fb
    or c                                          ; $7b5a: $b1
    ld h, d                                       ; $7b5b: $62
    dec bc                                        ; $7b5c: $0b
    dec hl                                        ; $7b5d: $2b
    ld b, l                                       ; $7b5e: $45
    db $e3                                        ; $7b5f: $e3
    adc d                                         ; $7b60: $8a
    dec [hl]                                      ; $7b61: $35
    rst $08                                       ; $7b62: $cf
    ret                                           ; $7b63: $c9


    dec c                                         ; $7b64: $0d
    add hl, hl                                    ; $7b65: $29
    ld a, [c]                                     ; $7b66: $f2
    ld d, $9d                                     ; $7b67: $16 $9d
    ld h, b                                       ; $7b69: $60
    adc d                                         ; $7b6a: $8a
    ld [hl], c                                    ; $7b6b: $71
    ei                                            ; $7b6c: $fb
    or c                                          ; $7b6d: $b1
    and d                                         ; $7b6e: $a2
    ret c                                         ; $7b6f: $d8

    ld h, l                                       ; $7b70: $65
    rla                                           ; $7b71: $17
    ei                                            ; $7b72: $fb
    ld d, c                                       ; $7b73: $51
    db $e4                                        ; $7b74: $e4
    dec l                                         ; $7b75: $2d
    sbc l                                         ; $7b76: $9d
    ld h, b                                       ; $7b77: $60
    adc d                                         ; $7b78: $8a
    ld [hl], c                                    ; $7b79: $71
    ei                                            ; $7b7a: $fb
    or c                                          ; $7b7b: $b1
    ld h, d                                       ; $7b7c: $62
    dec bc                                        ; $7b7d: $0b
    dec hl                                        ; $7b7e: $2b
    ld b, l                                       ; $7b7f: $45
    db $e3                                        ; $7b80: $e3
    ld e, d                                       ; $7b81: $5a
    ld [hl], l                                    ; $7b82: $75
    dec hl                                        ; $7b83: $2b
    or $59                                        ; $7b84: $f6 $59
    ld a, [de]                                    ; $7b86: $1a
    rst $10                                       ; $7b87: $d7
    sbc d                                         ; $7b88: $9a
    ld b, a                                       ; $7b89: $47
    ld hl, sp+$7e                                 ; $7b8a: $f8 $7e
    db $e4                                        ; $7b8c: $e4
    dec l                                         ; $7b8d: $2d
    sbc l                                         ; $7b8e: $9d
    ld h, b                                       ; $7b8f: $60
    adc d                                         ; $7b90: $8a
    ld [hl], c                                    ; $7b91: $71
    ei                                            ; $7b92: $fb
    or c                                          ; $7b93: $b1
    ld h, d                                       ; $7b94: $62
    cp e                                          ; $7b95: $bb

jr_030_7b96:
    ret c                                         ; $7b96: $d8

    ld d, [hl]                                    ; $7b97: $56
    and l                                         ; $7b98: $a5
    ld e, h                                       ; $7b99: $5c
    ld c, e                                       ; $7b9a: $4b
    ccf                                           ; $7b9b: $3f
    daa                                           ; $7b9c: $27
    adc l                                         ; $7b9d: $8d
    ld l, e                                       ; $7b9e: $6b
    rst $00                                       ; $7b9f: $c7
    sbc d                                         ; $7ba0: $9a
    ld a, e                                       ; $7ba1: $7b
    ld c, l                                       ; $7ba2: $4d
    sbc $02                                       ; $7ba3: $de $02
    sbc l                                         ; $7ba5: $9d
    ld h, b                                       ; $7ba6: $60
    adc d                                         ; $7ba7: $8a
    ld [hl], c                                    ; $7ba8: $71
    ei                                            ; $7ba9: $fb
    or c                                          ; $7baa: $b1
    and d                                         ; $7bab: $a2
    ld e, l                                       ; $7bac: $5d
    rrca                                          ; $7bad: $0f
    jp z, $1f43                                   ; $7bae: $ca $43 $1f

    cp a                                          ; $7bb1: $bf
    ld e, e                                       ; $7bb2: $5b
    sub b                                         ; $7bb3: $90
    cp a                                          ; $7bb4: $bf
    rst $38                                       ; $7bb5: $ff
    ld a, [hl+]                                   ; $7bb6: $2a
    ld d, h                                       ; $7bb7: $54
    sbc $02                                       ; $7bb8: $de $02
    sbc l                                         ; $7bba: $9d
    ld h, b                                       ; $7bbb: $60
    adc d                                         ; $7bbc: $8a
    push de                                       ; $7bbd: $d5
    ld e, c                                       ; $7bbe: $59
    cp c                                          ; $7bbf: $b9
    xor e                                         ; $7bc0: $ab
    inc sp                                        ; $7bc1: $33
    db $dd                                        ; $7bc2: $dd
    inc e                                         ; $7bc3: $1c
    dec b                                         ; $7bc4: $05
    ld a, $ae                                     ; $7bc5: $3e $ae
    ld [hl], l                                    ; $7bc7: $75
    ld a, h                                       ; $7bc8: $7c
    ret nz                                        ; $7bc9: $c0

    adc e                                         ; $7bca: $8b
    add hl, sp                                    ; $7bcb: $39
    rst $08                                       ; $7bcc: $cf
    ld e, e                                       ; $7bcd: $5b
    sbc l                                         ; $7bce: $9d
    ld h, b                                       ; $7bcf: $60
    adc d                                         ; $7bd0: $8a
    push de                                       ; $7bd1: $d5
    ld e, c                                       ; $7bd2: $59
    cp c                                          ; $7bd3: $b9
    xor e                                         ; $7bd4: $ab
    inc sp                                        ; $7bd5: $33
    db $dd                                        ; $7bd6: $dd
    inc e                                         ; $7bd7: $1c
    dec b                                         ; $7bd8: $05
    ld a, $ae                                     ; $7bd9: $3e $ae
    ld [hl], l                                    ; $7bdb: $75
    ld a, h                                       ; $7bdc: $7c
    ret nz                                        ; $7bdd: $c0

    adc e                                         ; $7bde: $8b
    add hl, sp                                    ; $7bdf: $39
    rst $08                                       ; $7be0: $cf
    ld e, e                                       ; $7be1: $5b
    sbc l                                         ; $7be2: $9d
    ld h, b                                       ; $7be3: $60
    adc d                                         ; $7be4: $8a
    push de                                       ; $7be5: $d5
    ld e, c                                       ; $7be6: $59
    cp c                                          ; $7be7: $b9
    xor e                                         ; $7be8: $ab
    inc sp                                        ; $7be9: $33
    db $dd                                        ; $7bea: $dd
    inc e                                         ; $7beb: $1c
    dec b                                         ; $7bec: $05
    ld a, $ae                                     ; $7bed: $3e $ae
    ld [hl], l                                    ; $7bef: $75
    ld a, h                                       ; $7bf0: $7c
    ret nz                                        ; $7bf1: $c0

    adc e                                         ; $7bf2: $8b
    add hl, sp                                    ; $7bf3: $39
    rst $08                                       ; $7bf4: $cf
    ld e, e                                       ; $7bf5: $5b
    sbc l                                         ; $7bf6: $9d
    ld h, b                                       ; $7bf7: $60
    adc d                                         ; $7bf8: $8a
    push de                                       ; $7bf9: $d5
    ld e, c                                       ; $7bfa: $59
    cp c                                          ; $7bfb: $b9
    xor e                                         ; $7bfc: $ab
    inc sp                                        ; $7bfd: $33
    db $dd                                        ; $7bfe: $dd
    inc e                                         ; $7bff: $1c
    dec b                                         ; $7c00: $05
    ld a, $ae                                     ; $7c01: $3e $ae
    dec d                                         ; $7c03: $15
    db $db                                        ; $7c04: $db
    ld h, l                                       ; $7c05: $65
    add hl, hl                                    ; $7c06: $29
    ei                                            ; $7c07: $fb
    ld a, [de]                                    ; $7c08: $1a
    rst $10                                       ; $7c09: $d7
    adc [hl]                                      ; $7c0a: $8e
    dec [hl]                                      ; $7c0b: $35
    sub [hl]                                      ; $7c0c: $96
    inc hl                                        ; $7c0d: $23
    rst $08                                       ; $7c0e: $cf
    ld e, e                                       ; $7c0f: $5b
    sbc l                                         ; $7c10: $9d
    ld h, b                                       ; $7c11: $60
    adc d                                         ; $7c12: $8a
    ld [hl], c                                    ; $7c13: $71
    ei                                            ; $7c14: $fb
    or c                                          ; $7c15: $b1
    ld h, d                                       ; $7c16: $62
    dec bc                                        ; $7c17: $0b
    dec hl                                        ; $7c18: $2b
    ld b, l                                       ; $7c19: $45
    db $e3                                        ; $7c1a: $e3
    or b                                          ; $7c1b: $b0
    xor h                                         ; $7c1c: $ac
    ld [bc], a                                    ; $7c1d: $02
    xor c                                         ; $7c1e: $a9
    ld [hl], c                                    ; $7c1f: $71
    db $ed                                        ; $7c20: $ed
    ld a, d                                       ; $7c21: $7a
    and l                                         ; $7c22: $a5

Call_030_7c23:
    add sp, $22                                   ; $7c23: $e8 $22
    ld a, h                                       ; $7c25: $7c
    rst $38                                       ; $7c26: $ff

Jump_030_7c27:
    dec bc                                        ; $7c27: $0b
    inc a                                         ; $7c28: $3c
    add $b5                                       ; $7c29: $c6 $b5

Jump_030_7c2b:
    res 3, h                                      ; $7c2b: $cb $9c
    inc d                                         ; $7c2d: $14
    ld a, c                                       ; $7c2e: $79
    dec bc                                        ; $7c2f: $0b
    sbc l                                         ; $7c30: $9d
    ld h, b                                       ; $7c31: $60
    adc d                                         ; $7c32: $8a
    ld [hl], c                                    ; $7c33: $71
    ei                                            ; $7c34: $fb
    or c                                          ; $7c35: $b1
    ld h, d                                       ; $7c36: $62
    dec sp                                        ; $7c37: $3b
    add $ed                                       ; $7c38: $c6 $ed
    ld [hl], e                                    ; $7c3a: $73
    db $ed                                        ; $7c3b: $ed
    ld d, h                                       ; $7c3c: $54
    dec hl                                        ; $7c3d: $2b
    ld b, l                                       ; $7c3e: $45
    ld a, c                                       ; $7c3f: $79
    dec bc                                        ; $7c40: $0b
    sbc l                                         ; $7c41: $9d
    ld h, b                                       ; $7c42: $60
    adc d                                         ; $7c43: $8a
    ld [hl], c                                    ; $7c44: $71
    ei                                            ; $7c45: $fb
    or c                                          ; $7c46: $b1
    ld h, d                                       ; $7c47: $62
    dec bc                                        ; $7c48: $0b
    dec hl                                        ; $7c49: $2b
    ld b, l                                       ; $7c4a: $45
    dec bc                                        ; $7c4b: $0b
    ld e, l                                       ; $7c4c: $5d
    ld e, [hl]                                    ; $7c4d: $5e
    sub a                                         ; $7c4e: $97
    inc [hl]                                      ; $7c4f: $34
    xor [hl]                                      ; $7c50: $ae
    ld e, b                                       ; $7c51: $58
    add a                                         ; $7c52: $87
    ld d, a                                       ; $7c53: $57
    jr c, jr_030_7c9a                             ; $7c54: $38 $44

    sbc $02                                       ; $7c56: $de $02
    sbc l                                         ; $7c58: $9d
    ld h, b                                       ; $7c59: $60
    adc d                                         ; $7c5a: $8a
    ld [hl], c                                    ; $7c5b: $71
    ei                                            ; $7c5c: $fb
    or c                                          ; $7c5d: $b1
    ld h, d                                       ; $7c5e: $62
    dec bc                                        ; $7c5f: $0b
    dec hl                                        ; $7c60: $2b
    ld b, l                                       ; $7c61: $45
    db $e3                                        ; $7c62: $e3
    ld e, d                                       ; $7c63: $5a
    ld h, e                                       ; $7c64: $63
    adc l                                         ; $7c65: $8d
    ld c, b                                       ; $7c66: $48
    adc [hl]                                      ; $7c67: $8e
    jp z, $9d5b                                   ; $7c68: $ca $5b $9d

    ld h, b                                       ; $7c6b: $60
    adc d                                         ; $7c6c: $8a
    ld [hl], c                                    ; $7c6d: $71
    ei                                            ; $7c6e: $fb
    or c                                          ; $7c6f: $b1
    and d                                         ; $7c70: $a2
    jr jr_030_7cb0                                ; $7c71: $18 $3d

    inc l                                         ; $7c73: $2c
    ld [hl+], a                                   ; $7c74: $22
    ld d, d                                       ; $7c75: $52
    adc h                                         ; $7c76: $8c
    dec hl                                        ; $7c77: $2b
    add $32                                       ; $7c78: $c6 $32
    rst $28                                       ; $7c7a: $ef
    pop af                                        ; $7c7b: $f1
    db $fd                                        ; $7c7c: $fd
    ret z                                         ; $7c7d: $c8

    ld e, e                                       ; $7c7e: $5b
    sbc l                                         ; $7c7f: $9d
    ld h, b                                       ; $7c80: $60
    adc d                                         ; $7c81: $8a
    ld [hl], c                                    ; $7c82: $71
    ei                                            ; $7c83: $fb
    or c                                          ; $7c84: $b1
    ld h, d                                       ; $7c85: $62
    dec bc                                        ; $7c86: $0b
    dec hl                                        ; $7c87: $2b
    ld b, l                                       ; $7c88: $45
    db $e3                                        ; $7c89: $e3
    ld e, d                                       ; $7c8a: $5a
    dec b                                         ; $7c8b: $05
    add c                                         ; $7c8c: $81
    add hl, de                                    ; $7c8d: $19
    ret nc                                        ; $7c8e: $d0

    xor d                                         ; $7c8f: $aa
    ld d, a                                       ; $7c90: $57
    jr c, jr_030_7cbb                             ; $7c91: $38 $28

    ld l, a                                       ; $7c93: $6f
    ld bc, $609d                                  ; $7c94: $01 $9d $60
    adc d                                         ; $7c97: $8a
    ld [hl], c                                    ; $7c98: $71
    ei                                            ; $7c99: $fb

jr_030_7c9a:
    or c                                          ; $7c9a: $b1
    ld h, d                                       ; $7c9b: $62
    dec bc                                        ; $7c9c: $0b
    dec hl                                        ; $7c9d: $2b
    ld b, l                                       ; $7c9e: $45
    db $e3                                        ; $7c9f: $e3
    ld [hl], a                                    ; $7ca0: $77
    ld [hl], e                                    ; $7ca1: $73
    ld e, d                                       ; $7ca2: $5a
    push af                                       ; $7ca3: $f5
    ld a, [bc]                                    ; $7ca4: $0a
    add a                                         ; $7ca5: $87
    cp h                                          ; $7ca6: $bc
    dec b                                         ; $7ca7: $05
    sbc l                                         ; $7ca8: $9d
    ld h, b                                       ; $7ca9: $60
    adc d                                         ; $7caa: $8a
    ld [hl], c                                    ; $7cab: $71
    ei                                            ; $7cac: $fb
    or c                                          ; $7cad: $b1
    ld h, d                                       ; $7cae: $62
    cp e                                          ; $7caf: $bb

jr_030_7cb0:
    ret c                                         ; $7cb0: $d8

    ld d, [hl]                                    ; $7cb1: $56
    and l                                         ; $7cb2: $a5
    ld e, h                                       ; $7cb3: $5c
    ld c, e                                       ; $7cb4: $4b
    ccf                                           ; $7cb5: $3f
    daa                                           ; $7cb6: $27
    adc l                                         ; $7cb7: $8d
    dec hl                                        ; $7cb8: $2b

Call_030_7cb9:
    halt                                          ; $7cb9: $76
    sbc c                                         ; $7cba: $99

jr_030_7cbb:
    sub e                                         ; $7cbb: $93
    ld [hl+], a                                   ; $7cbc: $22
    ld l, a                                       ; $7cbd: $6f
    ld bc, $609d                                  ; $7cbe: $01 $9d $60
    adc d                                         ; $7cc1: $8a
    ld [hl], c                                    ; $7cc2: $71
    ei                                            ; $7cc3: $fb
    ld sp, $bbf8                                  ; $7cc4: $31 $f8 $bb
    ld e, $94                                     ; $7cc7: $1e $94
    add a                                         ; $7cc9: $87
    ld a, $fc                                     ; $7cca: $3e $fc
    inc h                                         ; $7ccc: $24
    rst $20                                       ; $7ccd: $e7
    ld c, b                                       ; $7cce: $48
    ld a, c                                       ; $7ccf: $79
    dec bc                                        ; $7cd0: $0b
    sbc l                                         ; $7cd1: $9d
    ld h, b                                       ; $7cd2: $60
    adc d                                         ; $7cd3: $8a
    ld [hl], c                                    ; $7cd4: $71
    ei                                            ; $7cd5: $fb
    or c                                          ; $7cd6: $b1
    and d                                         ; $7cd7: $a2
    and l                                         ; $7cd8: $a5
    ret nz                                        ; $7cd9: $c0

    ld h, l                                       ; $7cda: $65
    jr nc, jr_030_7ceb                            ; $7cdb: $30 $0e

    ld l, e                                       ; $7cdd: $6b
    db $fc                                        ; $7cde: $fc
    and l                                         ; $7cdf: $a5
    dec d                                         ; $7ce0: $15
    ld hl, $1df0                                  ; $7ce1: $21 $f0 $1d
    add c                                         ; $7ce4: $81
    rst $38                                       ; $7ce5: $ff
    ld b, a                                       ; $7ce6: $47
    sbc $02                                       ; $7ce7: $de $02
    sbc l                                         ; $7ce9: $9d
    ld h, b                                       ; $7cea: $60

jr_030_7ceb:
    adc d                                         ; $7ceb: $8a
    ld [hl], c                                    ; $7cec: $71
    ei                                            ; $7ced: $fb
    ld sp, $daf8                                  ; $7cee: $31 $f8 $da
    ld d, l                                       ; $7cf1: $55
    inc l                                         ; $7cf2: $2c
    ld b, d                                       ; $7cf3: $42
    ld h, e                                       ; $7cf4: $63
    sub b                                         ; $7cf5: $90
    dec hl                                        ; $7cf6: $2b
    ld l, a                                       ; $7cf7: $6f
    ld bc, $609d                                  ; $7cf8: $01 $9d $60
    adc d                                         ; $7cfb: $8a
    ld [hl], c                                    ; $7cfc: $71
    ei                                            ; $7cfd: $fb
    or c                                          ; $7cfe: $b1
    ld h, d                                       ; $7cff: $62
    dec bc                                        ; $7d00: $0b
    dec hl                                        ; $7d01: $2b
    ld b, l                                       ; $7d02: $45
    db $e3                                        ; $7d03: $e3
    adc d                                         ; $7d04: $8a
    ld e, l                                       ; $7d05: $5d
    push hl                                       ; $7d06: $e5
    ld d, $63                                     ; $7d07: $16 $63
    ld e, [hl]                                    ; $7d09: $5e
    or c                                          ; $7d0a: $b1
    ld c, a                                       ; $7d0b: $4f
    adc d                                         ; $7d0c: $8a
    cp h                                          ; $7d0d: $bc
    dec b                                         ; $7d0e: $05
    sbc l                                         ; $7d0f: $9d
    ld h, b                                       ; $7d10: $60
    adc d                                         ; $7d11: $8a
    ld [hl], c                                    ; $7d12: $71
    ei                                            ; $7d13: $fb
    or c                                          ; $7d14: $b1
    ld h, d                                       ; $7d15: $62
    dec sp                                        ; $7d16: $3b
    add $ed                                       ; $7d17: $c6 $ed
    ld [hl], e                                    ; $7d19: $73
    db $ed                                        ; $7d1a: $ed

Jump_030_7d1b:
    ld d, h                                       ; $7d1b: $54
    dec hl                                        ; $7d1c: $2b
    ld b, l                                       ; $7d1d: $45
    ld a, c                                       ; $7d1e: $79
    dec bc                                        ; $7d1f: $0b
    and a                                         ; $7d20: $a7
    ld a, l                                       ; $7d21: $7d
    xor l                                         ; $7d22: $ad
    ld sp, $d427                                  ; $7d23: $31 $27 $d4
    cp b                                          ; $7d26: $b8
    ld d, [hl]                                    ; $7d27: $56
    ld l, h                                       ; $7d28: $6c
    and h                                         ; $7d29: $a4
    adc e                                         ; $7d2a: $8b
    db $fd                                        ; $7d2b: $fd
    ld e, a                                       ; $7d2c: $5f
    ld a, c                                       ; $7d2d: $79
    inc l                                         ; $7d2e: $2c
    call nc, $ac12                                ; $7d2f: $d4 $12 $ac
    rst $28                                       ; $7d32: $ef
    ld a, $fb                                     ; $7d33: $3e $fb
    db $ec                                        ; $7d35: $ec
    ld l, e                                       ; $7d36: $6b
    add a                                         ; $7d37: $87
    ld d, a                                       ; $7d38: $57
    halt                                          ; $7d39: $76
    cp [hl]                                       ; $7d3a: $be
    halt                                          ; $7d3b: $76
    call nc, $3927                                ; $7d3c: $d4 $27 $39
    add hl, de                                    ; $7d3f: $19
    cp $4a                                        ; $7d40: $fe $4a
    sbc a                                         ; $7d42: $9f
    sub d                                         ; $7d43: $92
    dec sp                                        ; $7d44: $3b
    xor $5f                                       ; $7d45: $ee $5f
    ld sp, hl                                     ; $7d47: $f9
    adc $d9                                       ; $7d48: $ce $d9
    adc $39                                       ; $7d4a: $ce $39
    cp h                                          ; $7d4c: $bc
    or d                                          ; $7d4d: $b2
    di                                            ; $7d4e: $f3
    or l                                          ; $7d4f: $b5
    and e                                         ; $7d50: $a3
    ld a, $c9                                     ; $7d51: $3e $c9
    ret                                           ; $7d53: $c9


    ldh a, [$57]                                  ; $7d54: $f0 $57
    ld a, [$d134]                                 ; $7d56: $fa $34 $d1
    adc d                                         ; $7d59: $8a
    ld d, [hl]                                    ; $7d5a: $56
    ld e, $eb                                     ; $7d5b: $1e $eb
    db $ed                                        ; $7d5d: $ed
    ldh a, [$ca]                                  ; $7d5e: $f0 $ca
    adc $d7                                       ; $7d60: $ce $d7
    adc [hl]                                      ; $7d62: $8e
    ld a, [$2724]                                 ; $7d63: $fa $24 $27
    jp $e95f                                      ; $7d66: $c3 $5f $e9


    db $d3                                        ; $7d69: $d3
    ld a, [$31d8]                                 ; $7d6a: $fa $d8 $31
    adc [hl]                                      ; $7d6d: $8e
    dec c                                         ; $7d6e: $0d
    cp l                                          ; $7d6f: $bd
    adc a                                         ; $7d70: $8f
    and h                                         ; $7d71: $a4
    push bc                                       ; $7d72: $c5
    ei                                            ; $7d73: $fb
    inc [hl]                                      ; $7d74: $34
    xor [hl]                                      ; $7d75: $ae
    ld e, b                                       ; $7d76: $58
    ld h, l                                       ; $7d77: $65
    sbc [hl]                                      ; $7d78: $9e
    ld bc, $f8c5                                  ; $7d79: $01 $c5 $f8
    xor l                                         ; $7d7c: $ad
    ld a, c                                       ; $7d7d: $79
    ld [hl], c                                    ; $7d7e: $71
    ld d, e                                       ; $7d7f: $53
    adc h                                         ; $7d80: $8c
    rst $18                                       ; $7d81: $df
    rrca                                          ; $7d82: $0f
    xor a                                         ; $7d83: $af
    db $ec                                        ; $7d84: $ec
    ld a, h                                       ; $7d85: $7c
    db $ed                                        ; $7d86: $ed
    xor b                                         ; $7d87: $a8

Jump_030_7d88:
    ld c, a                                       ; $7d88: $4f
    ld [hl], d                                    ; $7d89: $72
    ld [hl-], a                                   ; $7d8a: $32
    db $fc                                        ; $7d8b: $fc
    sub l                                         ; $7d8c: $95
    ld a, $25                                     ; $7d8d: $3e $25
    ld [hl], a                                    ; $7d8f: $77
    call c, $f2bf                                 ; $7d90: $dc $bf $f2
    add hl, de                                    ; $7d93: $19
    ld [hl], h                                    ; $7d94: $74
    sbc $51                                       ; $7d95: $de $51
    ld h, h                                       ; $7d97: $64
    inc d                                         ; $7d98: $14
    push af                                       ; $7d99: $f5
    ld c, [hl]                                    ; $7d9a: $4e
    ei                                            ; $7d9b: $fb
    jr @+$15                                      ; $7d9c: $18 $13

    push af                                       ; $7d9e: $f5
    pop af                                        ; $7d9f: $f1
    ld h, b                                       ; $7da0: $60
    call c, $8c7e                                 ; $7da1: $dc $7e $8c
    rst $18                                       ; $7da4: $df
    dec c                                         ; $7da5: $0d
    ret z                                         ; $7da6: $c8

    dec d                                         ; $7da7: $15
    ld l, e                                       ; $7da8: $6b
    xor h                                         ; $7da9: $ac
    ld h, $f2                                     ; $7daa: $26 $f2
    sbc l                                         ; $7dac: $9d
    or e                                          ; $7dad: $b3
    sbc l                                         ; $7dae: $9d
    db $d3                                        ; $7daf: $d3
    ld bc, $e6a2                                  ; $7db0: $01 $a2 $e6
    call z, $0e1d                                 ; $7db3: $cc $1d $0e
    inc e                                         ; $7db6: $1c
    rst $18                                       ; $7db7: $df
    ld a, [hl-]                                   ; $7db8: $3a
    cp l                                          ; $7db9: $bd
    ld d, a                                       ; $7dba: $57
    ld h, d                                       ; $7dbb: $62
    pop af                                        ; $7dbc: $f1
    jr nz, jr_030_7e15                            ; $7dbd: $20 $56

    ldh a, [$d2]                                  ; $7dbf: $f0 $d2
    cp a                                          ; $7dc1: $bf
    inc [hl]                                      ; $7dc2: $34
    xor [hl]                                      ; $7dc3: $ae
    dec e                                         ; $7dc4: $1d
    ld l, l                                       ; $7dc5: $6d
    rla                                           ; $7dc6: $17
    dec a                                         ; $7dc7: $3d
    ld e, a                                       ; $7dc8: $5f
    ld a, a                                       ; $7dc9: $7f
    dec sp                                        ; $7dca: $3b
    ld h, a                                       ; $7dcb: $67
    dec sp                                        ; $7dcc: $3b
    rst $20                                       ; $7dcd: $e7
    add h                                         ; $7dce: $84
    db $e3                                        ; $7dcf: $e3
    or d                                          ; $7dd0: $b2
    adc [hl]                                      ; $7dd1: $8e
    ld a, [hl-]                                   ; $7dd2: $3a
    pop af                                        ; $7dd3: $f1
    call nc, $8ea3                                ; $7dd4: $d4 $a3 $8e
    call c, Call_030_6711                         ; $7dd7: $dc $11 $67
    db $ed                                        ; $7dda: $ed
    call nz, Call_030_4ee3                        ; $7ddb: $c4 $e3 $4e
    db $ec                                        ; $7dde: $ec
    ld [hl], h                                    ; $7ddf: $74
    call nc, Call_030_4789                        ; $7de0: $d4 $89 $47
    sbc [hl]                                      ; $7de3: $9e
    call nc, Call_000_0902                        ; $7de4: $d4 $02 $09
    sub $77                                       ; $7de7: $d6 $77
    sbc a                                         ; $7de9: $9f
    ld a, l                                       ; $7dea: $7d

jr_030_7deb:
    or $b5                                        ; $7deb: $f6 $b5
    and e                                         ; $7ded: $a3
    adc d                                         ; $7dee: $8a
    ld l, $f2                                     ; $7def: $2e $f2
    rst $30                                       ; $7df1: $f7
    pop af                                        ; $7df2: $f1
    jp c, Jump_030_4ee1                           ; $7df3: $da $e1 $4e

    or c                                          ; $7df6: $b1
    db $e3                                        ; $7df7: $e3
    cp $95                                        ; $7df8: $fe $95
    rst $28                                       ; $7dfa: $ef
    sbc h                                         ; $7dfb: $9c
    ld c, [hl]                                    ; $7dfc: $4e
    rrca                                          ; $7dfd: $0f
    ld h, d                                       ; $7dfe: $62
    call c, Call_030_521f                         ; $7dff: $dc $1f $52
    call z, $216f                                 ; $7e02: $cc $6f $21
    ld h, a                                       ; $7e05: $67
    ld l, [hl]                                    ; $7e06: $6e
    sub c                                         ; $7e07: $91
    or a                                          ; $7e08: $b7
    add a                                         ; $7e09: $87
    scf                                           ; $7e0a: $37
    dec c                                         ; $7e0b: $0d
    and b                                         ; $7e0c: $a0
    ld d, $e0                                     ; $7e0d: $16 $e0
    dec sp                                        ; $7e0f: $3b
    sub l                                         ; $7e10: $95
    call z, $05a9                                 ; $7e11: $cc $a9 $05
    daa                                           ; $7e14: $27

jr_030_7e15:
    ld [hl+], a                                   ; $7e15: $22
    sub e                                         ; $7e16: $93
    rra                                           ; $7e17: $1f
    ld a, h                                       ; $7e18: $7c
    ld e, b                                       ; $7e19: $58
    ld e, a                                       ; $7e1a: $5f
    ld l, e                                       ; $7e1b: $6b
    ld bc, $549d                                  ; $7e1c: $01 $9d $54
    dec [hl]                                      ; $7e1f: $35
    ld [hl], c                                    ; $7e20: $71
    ldh a, [$0e]                                  ; $7e21: $f0 $0e
    db $eb                                        ; $7e23: $eb
    db $eb                                        ; $7e24: $eb
    ldh [$c3], a                                  ; $7e25: $e0 $c3
    ld a, [$f83e]                                 ; $7e27: $fa $3e $f8
    or b                                          ; $7e2a: $b0
    ld a, [hl]                                    ; $7e2b: $7e
    sub $02                                       ; $7e2c: $d6 $02
    rst $00                                       ; $7e2e: $c7
    ld a, l                                       ; $7e2f: $7d
    jr nz, jr_030_7e5e                            ; $7e30: $20 $2c

    jr jr_030_7deb                                ; $7e32: $18 $b7

    sbc l                                         ; $7e34: $9d
    or e                                          ; $7e35: $b3
    sbc l                                         ; $7e36: $9d
    or e                                          ; $7e37: $b3
    sbc l                                         ; $7e38: $9d
    or e                                          ; $7e39: $b3
    or l                                          ; $7e3a: $b5
    ld b, a                                       ; $7e3b: $47
    ld b, l                                       ; $7e3c: $45
    ld h, e                                       ; $7e3d: $63
    sub a                                         ; $7e3e: $97
    ld b, $84                                     ; $7e3f: $06 $84
    dec b                                         ; $7e41: $05
    db $e3                                        ; $7e42: $e3
    sub [hl]                                      ; $7e43: $96
    rst $28                                       ; $7e44: $ef
    sbc h                                         ; $7e45: $9c
    and e                                         ; $7e46: $a3
    ld l, $b7                                     ; $7e47: $2e $b7
    sub b                                         ; $7e49: $90
    rst $10                                       ; $7e4a: $d7
    ld e, $da                                     ; $7e4b: $1e $da
    ld [bc], a                                    ; $7e4d: $02
    ld h, a                                       ; $7e4e: $67
    ld e, $7c                                     ; $7e4f: $1e $7c
    ld e, b                                       ; $7e51: $58
    ld e, a                                       ; $7e52: $5f
    dec sp                                        ; $7e53: $3b
    db $eb                                        ; $7e54: $eb
    ldh [$c3], a                                  ; $7e55: $e0 $c3
    ld a, [$0b5e]                                 ; $7e57: $fa $5e $0b
    ld e, c                                       ; $7e5a: $59
    jp c, $d2f5                                   ; $7e5b: $da $f5 $d2

jr_030_7e5e:
    ld l, c                                       ; $7e5e: $69
    rst $10                                       ; $7e5f: $d7
    inc d                                         ; $7e60: $14
    inc [hl]                                      ; $7e61: $34
    ld b, [hl]                                    ; $7e62: $46
    xor $0f                                       ; $7e63: $ee $0f
    or b                                          ; $7e65: $b0
    sub h                                         ; $7e66: $94
    ld e, e                                       ; $7e67: $5b
    ld l, l                                       ; $7e68: $6d
    ld h, d                                       ; $7e69: $62
    dec bc                                        ; $7e6a: $0b
    and a                                         ; $7e6b: $a7
    ld de, $0c16                                  ; $7e6c: $11 $16 $0c
    db $ed                                        ; $7e6f: $ed
    ldh [rNR21], a                                ; $7e70: $e0 $16
    ld a, l                                       ; $7e72: $7d
    push af                                       ; $7e73: $f5
    cp d                                          ; $7e74: $ba
    jp Jump_030_5afa                              ; $7e75: $c3 $fa $5a


    dec bc                                        ; $7e78: $0b
    ld a, l                                       ; $7e79: $7d
    rst $30                                       ; $7e7a: $f7
    cp d                                          ; $7e7b: $ba
    jp Jump_030_5afa                              ; $7e7c: $c3 $fa $5a


    dec bc                                        ; $7e7f: $0b
    db $fd                                        ; $7e80: $fd
    db $f4                                        ; $7e81: $f4
    cp d                                          ; $7e82: $ba
    jp Jump_030_5afa                              ; $7e83: $c3 $fa $5a


    dec bc                                        ; $7e86: $0b
    db $fd                                        ; $7e87: $fd
    or $ba                                        ; $7e88: $f6 $ba
    jp Jump_030_5afa                              ; $7e8a: $c3 $fa $5a


    dec bc                                        ; $7e8d: $0b
    dec e                                         ; $7e8e: $1d
    rra                                           ; $7e8f: $1f
    ld hl, sp-$2e                                 ; $7e90: $f8 $d2
    add [hl]                                      ; $7e92: $86
    xor [hl]                                      ; $7e93: $ae
    dec e                                         ; $7e94: $1d
    call c, $9d02                                 ; $7e95: $dc $02 $9d
    ld h, b                                       ; $7e98: $60
    rst $38                                       ; $7e99: $ff
    ld l, [hl]                                    ; $7e9a: $6e
    or c                                          ; $7e9b: $b1
    add $62                                       ; $7e9c: $c6 $62
    ld a, [$73d7]                                 ; $7e9e: $fa $d7 $73
    call $c69a                                    ; $7ea1: $cd $9a $c6
    ld sp, $8976                                  ; $7ea4: $31 $76 $89

jr_030_7ea7:
    ld c, b                                       ; $7ea7: $48
    ld [hl], e                                    ; $7ea8: $73
    ld e, l                                       ; $7ea9: $5d
    ld [hl+], a                                   ; $7eaa: $22
    ld d, d                                       ; $7eab: $52
    ld l, l                                       ; $7eac: $6d
    ld h, d                                       ; $7ead: $62
    dec bc                                        ; $7eae: $0b
    ld e, c                                       ; $7eaf: $59
    ld l, h                                       ; $7eb0: $6c
    inc bc                                        ; $7eb1: $03
    xor $ef                                       ; $7eb2: $ee $ef
    xor a                                         ; $7eb4: $af
    add hl, hl                                    ; $7eb5: $29
    ld l, b                                       ; $7eb6: $68
    xor c                                         ; $7eb7: $a9
    and d                                         ; $7eb8: $a2
    ld d, $59                                     ; $7eb9: $16 $59
    ld l, h                                       ; $7ebb: $6c
    inc bc                                        ; $7ebc: $03
    xor $ef                                       ; $7ebd: $ee $ef
    ld c, a                                       ; $7ebf: $4f
    ld a, a                                       ; $7ec0: $7f
    rla                                           ; $7ec1: $17
    jr nz, jr_030_7ea7                            ; $7ec2: $20 $e3

    ld l, d                                       ; $7ec4: $6a

Jump_030_7ec5:
    ld bc, $6c59                                  ; $7ec5: $01 $59 $6c
    inc bc                                        ; $7ec8: $03
    xor $ef                                       ; $7ec9: $ee $ef
    ld c, a                                       ; $7ecb: $4f
    ld a, a                                       ; $7ecc: $7f
    push bc                                       ; $7ecd: $c5
    sub b                                         ; $7ece: $90
    sbc $6f                                       ; $7ecf: $de $6f
    ld bc, $6c59                                  ; $7ed1: $01 $59 $6c
    inc bc                                        ; $7ed4: $03
    xor $ef                                       ; $7ed5: $ee $ef
    ld c, a                                       ; $7ed7: $4f
    ld a, a                                       ; $7ed8: $7f
    and $2c                                       ; $7ed9: $e6 $2c
    ld a, l                                       ; $7edb: $7d
    ld l, d                                       ; $7edc: $6a
    ld bc, $6c59                                  ; $7edd: $01 $59 $6c
    inc bc                                        ; $7ee0: $03
    xor $ef                                       ; $7ee1: $ee $ef
    xor a                                         ; $7ee3: $af
    adc $e8                                       ; $7ee4: $ce $e8
    ld bc, $6296                                  ; $7ee6: $01 $96 $62
    inc l                                         ; $7ee9: $2c
    call Call_030_5e80                            ; $7eea: $cd $80 $5e

jr_030_7eed:
    ld h, l                                       ; $7eed: $65
    add h                                         ; $7eee: $84
    add hl, de                                    ; $7eef: $19
    ld d, b                                       ; $7ef0: $50
    dec bc                                        ; $7ef1: $0b
    and a                                         ; $7ef2: $a7
    ret c                                         ; $7ef3: $d8

    add l                                         ; $7ef4: $85
    ld e, a                                       ; $7ef5: $5f
    db $e3                                        ; $7ef6: $e3
    ld [hl], a                                    ; $7ef7: $77
    adc e                                         ; $7ef8: $8b
    add [hl]                                      ; $7ef9: $86
    db $fd                                        ; $7efa: $fd
    ld a, b                                       ; $7efb: $78
    db $dd                                        ; $7efc: $dd
    and d                                         ; $7efd: $a2
    ld d, $27                                     ; $7efe: $16 $27
    ld e, d                                       ; $7f00: $5a
    and e                                         ; $7f01: $a3
    jp nc, Jump_000_2702                          ; $7f02: $d2 $02 $27

    add hl, sp                                    ; $7f05: $39

Call_030_7f06:
    and c                                         ; $7f06: $a1
    ld h, d                                       ; $7f07: $62
    ld [hl], c                                    ; $7f08: $71
    cp e                                          ; $7f09: $bb
    ret c                                         ; $7f0a: $d8

    scf                                           ; $7f0b: $37
    ld b, l                                       ; $7f0c: $45
    dec bc                                        ; $7f0d: $0b
    ld b, a                                       ; $7f0e: $47
    ld [c], a                                     ; $7f0f: $e2
    ld b, l                                       ; $7f10: $45
    ld d, [hl]                                    ; $7f11: $56
    xor c                                         ; $7f12: $a9
    dec b                                         ; $7f13: $05
    add a                                         ; $7f14: $87
    ld a, e                                       ; $7f15: $7b
    push af                                       ; $7f16: $f5
    jr nc, jr_030_7eed                            ; $7f17: $30 $d4

    ld [bc], a                                    ; $7f19: $02
    and a                                         ; $7f1a: $a7
    ret c                                         ; $7f1b: $d8

    add l                                         ; $7f1c: $85
    ld e, a                                       ; $7f1d: $5f
    db $e3                                        ; $7f1e: $e3
    ld e, d                                       ; $7f1f: $5a
    ld h, l                                       ; $7f20: $65
    sbc a                                         ; $7f21: $9f
    cp e                                          ; $7f22: $bb
    or c                                          ; $7f23: $b1
    sbc [hl]                                      ; $7f24: $9e
    xor e                                         ; $7f25: $ab
    dec b                                         ; $7f26: $05
    dec e                                         ; $7f27: $1d
    ld h, l                                       ; $7f28: $65
    jr nc, jr_030_7fa9                            ; $7f29: $30 $7e

    ld a, a                                       ; $7f2b: $7f
    dec c                                         ; $7f2c: $0d
    dec de                                        ; $7f2d: $1b
    add hl, sp                                    ; $7f2e: $39
    ld [$47b7], a                                 ; $7f2f: $ea $b7 $47
    dec [hl]                                      ; $7f32: $35
    ld hl, sp+$15                                 ; $7f33: $f8 $15
    db $e3                                        ; $7f35: $e3
    ld e, d                                       ; $7f36: $5a
    di                                            ; $7f37: $f3
    db $fc                                        ; $7f38: $fc
    xor d                                         ; $7f39: $aa
    ld [hl], a                                    ; $7f3a: $77
    ld l, e                                       ; $7f3b: $6b
    ldh a, [rOCPS]                                ; $7f3c: $f0 $6a
    ld bc, $1f1d                                  ; $7f3e: $01 $1d $1f
    ld [hl], b                                    ; $7f41: $70
    rst $10                                       ; $7f42: $d7
    cp b                                          ; $7f43: $b8
    sub $a0                                       ; $7f44: $d6 $a0
    add b                                         ; $7f46: $80
    ld [hl], c                                    ; $7f47: $71
    or l                                          ; $7f48: $b5
    ld h, a                                       ; $7f49: $67
    add hl, bc                                    ; $7f4a: $09
    ld a, [hl-]                                   ; $7f4b: $3a
    adc a                                         ; $7f4c: $8f
    ld l, e                                       ; $7f4d: $6b
    ld [hl], c                                    ; $7f4e: $71
    sbc c                                         ; $7f4f: $99
    ld e, e                                       ; $7f50: $5b
    ld [$16a6], a                                 ; $7f51: $ea $a6 $16
    ld e, c                                       ; $7f54: $59
    rst $08                                       ; $7f55: $cf
    cp a                                          ; $7f56: $bf
    add $b5                                       ; $7f57: $c6 $b5
    inc d                                         ; $7f59: $14
    ld e, [hl]                                    ; $7f5a: $5e
    rst $08                                       ; $7f5b: $cf
    cp a                                          ; $7f5c: $bf
    ld e, d                                       ; $7f5d: $5a
    ld e, c                                       ; $7f5e: $59
    cp $2e                                        ; $7f5f: $fe $2e
    or [hl]                                       ; $7f61: $b6
    jr z, @-$38                                   ; $7f62: $28 $c6

    or l                                          ; $7f64: $b5
    sub b                                         ; $7f65: $90
    scf                                           ; $7f66: $37
    ld a, [$02d4]                                 ; $7f67: $fa $d4 $02
    ld b, a                                       ; $7f6a: $47
    call c, Call_030_7fce                         ; $7f6b: $dc $ce $7f
    and $bc                                       ; $7f6e: $e6 $bc
    dec b                                         ; $7f70: $05
    ld e, c                                       ; $7f71: $59
    rst $08                                       ; $7f72: $cf
    cp a                                          ; $7f73: $bf
    add $b5                                       ; $7f74: $c6 $b5
    add d                                         ; $7f76: $82
    rst $10                                       ; $7f77: $d7
    di                                            ; $7f78: $f3
    xor a                                         ; $7f79: $af
    jp hl                                         ; $7f7a: $e9


    rst $08                                       ; $7f7b: $cf
    sbc h                                         ; $7f7c: $9c
    and l                                         ; $7f7d: $a5
    ld c, a                                       ; $7f7e: $4f
    dec l                                         ; $7f7f: $2d
    sbc l                                         ; $7f80: $9d
    ld b, b                                       ; $7f81: $40
    push af                                       ; $7f82: $f5
    jp z, $a683                                   ; $7f83: $ca $83 $a6

    dec b                                         ; $7f86: $05
    add a                                         ; $7f87: $87
    ld e, a                                       ; $7f88: $5f
    rst $28                                       ; $7f89: $ef
    inc hl                                        ; $7f8a: $23
    or l                                          ; $7f8b: $b5
    add a                                         ; $7f8c: $87
    ld a, a                                       ; $7f8d: $7f
    ld b, d                                       ; $7f8e: $42
    cp $48                                        ; $7f8f: $fe $48
    dec l                                         ; $7f91: $2d
    dec e                                         ; $7f92: $1d
    rra                                           ; $7f93: $1f
    pop hl                                        ; $7f94: $e1
    ei                                            ; $7f95: $fb
    dec sp                                        ; $7f96: $3b
    rrca                                          ; $7f97: $0f
    ld e, c                                       ; $7f98: $59
    inc l                                         ; $7f99: $2c
    db $fd                                        ; $7f9a: $fd
    di                                            ; $7f9b: $f3
    ld d, h                                       ; $7f9c: $54
    ld a, b                                       ; $7f9d: $78
    dec bc                                        ; $7f9e: $0b
    dec e                                         ; $7f9f: $1d
    rra                                           ; $7fa0: $1f
    pop hl                                        ; $7fa1: $e1
    ei                                            ; $7fa2: $fb
    dec sp                                        ; $7fa3: $3b
    rrca                                          ; $7fa4: $0f
    ld e, c                                       ; $7fa5: $59
    inc l                                         ; $7fa6: $2c
    db $fd                                        ; $7fa7: $fd
    di                                            ; $7fa8: $f3

jr_030_7fa9:
    ld d, h                                       ; $7fa9: $54
    ld hl, sp-$2c                                 ; $7faa: $f8 $d4
    sbc c                                         ; $7fac: $99
    call c, Call_000_1d5a                         ; $7fad: $dc $5a $1d
    rra                                           ; $7fb0: $1f
    pop hl                                        ; $7fb1: $e1
    ei                                            ; $7fb2: $fb
    dec sp                                        ; $7fb3: $3b
    dec e                                         ; $7fb4: $1d
    ret                                           ; $7fb5: $c9


    ld a, [hl+]                                   ; $7fb6: $2a
    db $ec                                        ; $7fb7: $ec
    call c, $1d02                                 ; $7fb8: $dc $02 $1d
    rra                                           ; $7fbb: $1f
    pop hl                                        ; $7fbc: $e1
    ei                                            ; $7fbd: $fb
    ld h, e                                       ; $7fbe: $63
    bit 2, e                                      ; $7fbf: $cb $53
    ld a, b                                       ; $7fc1: $78
    ld hl, $0b57                                  ; $7fc2: $21 $57 $0b
    dec e                                         ; $7fc5: $1d
    or c                                          ; $7fc6: $b1
    jp nc, $fc27                                  ; $7fc7: $d2 $27 $fc

    ld l, d                                       ; $7fca: $6a
    ld bc, $b11d                                  ; $7fcb: $01 $1d $b1

Call_030_7fce:
    jp nc, $fc27                                  ; $7fce: $d2 $27 $fc

    sbc d                                         ; $7fd1: $9a
    ld a, [hl-]                                   ; $7fd2: $3a
    sub e                                         ; $7fd3: $93
    ld e, e                                       ; $7fd4: $5b
    dec bc                                        ; $7fd5: $0b
    ld b, a                                       ; $7fd6: $47
    ld [hl], l                                    ; $7fd7: $75
    cp [hl]                                       ; $7fd8: $be
    ld e, l                                       ; $7fd9: $5d
    ld b, b                                       ; $7fda: $40
    ld a, [c]                                     ; $7fdb: $f2
    ld d, $59                                     ; $7fdc: $16 $59
    and $a4                                       ; $7fde: $e6 $a4
    ld a, l                                       ; $7fe0: $7d
    xor b                                         ; $7fe1: $a8
    ld l, [hl]                                    ; $7fe2: $6e
    cp $76                                        ; $7fe3: $fe $76
    ld e, b                                       ; $7fe5: $58
    ld e, a                                       ; $7fe6: $5f
    ld l, e                                       ; $7fe7: $6b
    ld bc, $ec59                                  ; $7fe8: $01 $59 $ec
    add a                                         ; $7feb: $87
    add c                                         ; $7fec: $81
    cp [hl]                                       ; $7fed: $be
    res 3, h                                      ; $7fee: $cb $9c
    call nc, Call_000_2702                        ; $7ff0: $d4 $02 $27
    sbc $58                                       ; $7ff3: $de $58
    rst $28                                       ; $7ff5: $ef
    ld b, d                                       ; $7ff6: $42
    ld a, c                                       ; $7ff7: $79
    dec bc                                        ; $7ff8: $0b
    daa                                           ; $7ff9: $27
    inc bc                                        ; $7ffa: $03
    ld [de], a                                    ; $7ffb: $12
    ret                                           ; $7ffc: $c9


    ld e, e                                       ; $7ffd: $5b
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
