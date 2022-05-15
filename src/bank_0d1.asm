; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d1", ROMX[$4000], BANK[$d1]

    pop de                                        ; $4000: $d1
    nop                                           ; $4001: $00
    ld bc, $00e2                                  ; $4002: $01 $e2 $00
    db $10                                        ; $4005: $10
    rst $38                                       ; $4006: $ff
    ld a, a                                       ; $4007: $7f
    ret nz                                        ; $4008: $c0

    ld [bc], a                                    ; $4009: $02
    nop                                           ; $400a: $00
    jp nz, $c07c                                  ; $400b: $c2 $7c $c0

    ld a, l                                       ; $400e: $7d
    nop                                           ; $400f: $00
    ret nz                                        ; $4010: $c0

    ld a, d                                       ; $4011: $7a
    add [hl]                                      ; $4012: $86
    ld [hl], h                                    ; $4013: $74
    adc b                                         ; $4014: $88
    ld a, b                                       ; $4015: $78
    nop                                           ; $4016: $00
    rst $38                                       ; $4017: $ff
    nop                                           ; $4018: $00
    ret nz                                        ; $4019: $c0

    ld b, b                                       ; $401a: $40
    ccf                                           ; $401b: $3f
    ld b, b                                       ; $401c: $40
    and l                                         ; $401d: $a5
    ld e, [hl]                                    ; $401e: $5e
    inc a                                         ; $401f: $3c
    ldh a, [rP1]                                  ; $4020: $f0 $00
    add e                                         ; $4022: $83
    add b                                         ; $4023: $80
    ld [bc], a                                    ; $4024: $02
    ld d, e                                       ; $4025: $53
    ld [hl], a                                    ; $4026: $77
    adc e                                         ; $4027: $8b
    nop                                           ; $4028: $00
    rst $38                                       ; $4029: $ff
    nop                                           ; $402a: $00
    ccf                                           ; $402b: $3f
    jr nz, jr_0d1_4075                            ; $402c: $20 $47

    add e                                         ; $402e: $83
    add hl, sp                                    ; $402f: $39
    ldh [$a0], a                                  ; $4030: $e0 $a0
    ld a, l                                       ; $4032: $7d
    nop                                           ; $4033: $00
    ld a, [de]                                    ; $4034: $1a
    inc c                                         ; $4035: $0c
    ld c, $0a                                     ; $4036: $0e $0a
    cpl                                           ; $4038: $2f
    ld b, a                                       ; $4039: $47
    nop                                           ; $403a: $00
    cp $10                                        ; $403b: $fe $10
    db $fc                                        ; $403d: $fc
    ld [bc], a                                    ; $403e: $02
    db $fc                                        ; $403f: $fc
    inc b                                         ; $4040: $04
    db $20, $82                                   ; $4041: $20 $82
    ld a, [hl]                                    ; $4043: $7e
    ld [bc], a                                    ; $4044: $02
    ld a, [hl]                                    ; $4045: $7e
    nop                                           ; $4046: $00
    add l                                         ; $4047: $85
    ld a, c                                       ; $4048: $79
    add b                                         ; $4049: $80
    ld a, l                                       ; $404a: $7d
    add c                                         ; $404b: $81
    ld a, l                                       ; $404c: $7d
    add b                                         ; $404d: $80
    ld a, h                                       ; $404e: $7c
    nop                                           ; $404f: $00
    db $fc                                        ; $4050: $fc
    dec b                                         ; $4051: $05
    ld sp, hl                                     ; $4052: $f9
    inc bc                                        ; $4053: $03
    ld hl, sp+$41                                 ; $4054: $f8 $41
    ld hl, sp+$42                                 ; $4056: $f8 $42
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    ld a, a                                       ; $405a: $7f
    ld a, $c1                                     ; $405b: $3e $c1
    sbc h                                         ; $405d: $9c
    ld a, a                                       ; $405e: $7f
    ld b, h                                       ; $405f: $44
    jr c, jr_0d1_4062                             ; $4060: $38 $00

jr_0d1_4062:
    cp e                                          ; $4062: $bb
    sub e                                         ; $4063: $93
    db $10                                        ; $4064: $10
    jp $0685                                      ; $4065: $c3 $85 $06


    jp $00d7                                      ; $4068: $c3 $d7 $00


    xor a                                         ; $406b: $af
    call z, Call_0d1_7596                         ; $406c: $cc $96 $75
    inc de                                        ; $406f: $13
    di                                            ; $4070: $f3
    ld b, d                                       ; $4071: $42
    ld [hl], b                                    ; $4072: $70
    nop                                           ; $4073: $00
    cp c                                          ; $4074: $b9

jr_0d1_4075:
    or b                                          ; $4075: $b0
    ld b, c                                       ; $4076: $41
    push bc                                       ; $4077: $c5
    ld a, [de]                                    ; $4078: $1a
    sbc b                                         ; $4079: $98
    ld e, d                                       ; $407a: $5a
    ld e, d                                       ; $407b: $5a
    ld [$7e7c], sp                                ; $407c: $08 $7c $7e
    ld a, h                                       ; $407f: $7c
    ld [bc], a                                    ; $4080: $02
    ld [bc], a                                    ; $4081: $02
    nop                                           ; $4082: $00
    ld b, d                                       ; $4083: $42
    cp h                                          ; $4084: $bc
    add d                                         ; $4085: $82
    nop                                           ; $4086: $00
    cp h                                          ; $4087: $bc
    ld [bc], a                                    ; $4088: $02
    cp h                                          ; $4089: $bc
    ld a, $bc                                     ; $408a: $3e $bc
    ld a, $f8                                     ; $408c: $3e $f8
    ld b, c                                       ; $408e: $41
    nop                                           ; $408f: $00
    db $fc                                        ; $4090: $fc
    ld b, b                                       ; $4091: $40
    cp l                                          ; $4092: $bd
    ld b, c                                       ; $4093: $41
    cp l                                          ; $4094: $bd
    ld b, b                                       ; $4095: $40
    cp a                                          ; $4096: $bf
    ld b, c                                       ; $4097: $41
    add b                                         ; $4098: $80
    ld [bc], a                                    ; $4099: $02
    nop                                           ; $409a: $00
    ret nz                                        ; $409b: $c0

    cp a                                          ; $409c: $bf
    ret nz                                        ; $409d: $c0

    db $db                                        ; $409e: $db
    nop                                           ; $409f: $00
    inc e                                         ; $40a0: $1c
    jr nc, jr_0d1_40a3                            ; $40a1: $30 $00

jr_0d1_40a3:
    ld b, a                                       ; $40a3: $47
    ret nc                                        ; $40a4: $d0

    ld l, h                                       ; $40a5: $6c
    xor e                                         ; $40a6: $ab
    rst $38                                       ; $40a7: $ff
    ld c, c                                       ; $40a8: $49
    nop                                           ; $40a9: $00
    db $fc                                        ; $40aa: $fc
    nop                                           ; $40ab: $00
    ld d, d                                       ; $40ac: $52
    ld c, h                                       ; $40ad: $4c
    ld e, h                                       ; $40ae: $5c
    ld b, b                                       ; $40af: $40
    sub l                                         ; $40b0: $95
    cp d                                          ; $40b1: $ba
    dec sp                                        ; $40b2: $3b
    ld a, h                                       ; $40b3: $7c
    nop                                           ; $40b4: $00
    or h                                          ; $40b5: $b4
    ld a, b                                       ; $40b6: $78
    ld h, h                                       ; $40b7: $64
    ld hl, sp-$04                                 ; $40b8: $f8 $fc
    ld sp, hl                                     ; $40ba: $f9
    ld [hl], h                                    ; $40bb: $74
    ld sp, hl                                     ; $40bc: $f9
    nop                                           ; $40bd: $00
    ld [hl], h                                    ; $40be: $74
    jp hl                                         ; $40bf: $e9


    db $e4                                        ; $40c0: $e4
    pop af                                        ; $40c1: $f1
    ld a, $82                                     ; $40c2: $3e $82
    ld a, $02                                     ; $40c4: $3e $02
    ld l, $fc                                     ; $40c6: $2e $fc
    add d                                         ; $40c8: $82
    add h                                         ; $40c9: $84
    nop                                           ; $40ca: $00
    add $88                                       ; $40cb: $c6 $88
    jr jr_0d1_4103                                ; $40cd: $18 $34

    ld [$1804], sp                                ; $40cf: $08 $04 $18
    cp [hl]                                       ; $40d2: $be
    nop                                           ; $40d3: $00
    ret nz                                        ; $40d4: $c0

    add b                                         ; $40d5: $80
    ld a, a                                       ; $40d6: $7f
    rst $38                                       ; $40d7: $ff
    nop                                           ; $40d8: $00
    ld hl, $1f9f                                  ; $40d9: $21 $9f $1f
    nop                                           ; $40dc: $00
    xor a                                         ; $40dd: $af
    di                                            ; $40de: $f3
    ld l, l                                       ; $40df: $6d
    sbc a                                         ; $40e0: $9f
    rra                                           ; $40e1: $1f
    ld hl, $4766                                  ; $40e2: $21 $66 $47
    nop                                           ; $40e5: $00
    jp hl                                         ; $40e6: $e9


    rst $38                                       ; $40e7: $ff
    nop                                           ; $40e8: $00
    nop                                           ; $40e9: $00
    nop                                           ; $40ea: $00
    call nz, $8ca9                                ; $40eb: $c4 $a9 $8c
    nop                                           ; $40ee: $00
    ld e, b                                       ; $40ef: $58
    dec h                                         ; $40f0: $25
    inc a                                         ; $40f1: $3c
    ld l, c                                       ; $40f2: $69
    ld a, b                                       ; $40f3: $78
    inc bc                                        ; $40f4: $03
    ld a, [c]                                     ; $40f5: $f2
    rrca                                          ; $40f6: $0f
    ld b, b                                       ; $40f7: $40
    ret                                           ; $40f8: $c9


    db $10                                        ; $40f9: $10
    ld [$fefc], sp                                ; $40fa: $08 $fc $fe
    ld a, h                                       ; $40fd: $7c
    ld [bc], a                                    ; $40fe: $02
    inc a                                         ; $40ff: $3c
    ld a, $00                                     ; $4100: $3e $00
    sbc h                                         ; $4102: $9c

jr_0d1_4103:
    ld e, $1e                                     ; $4103: $1e $1e
    add d                                         ; $4105: $82
    ld c, $42                                     ; $4106: $0e $42
    nop                                           ; $4108: $00
    cp $00                                        ; $4109: $fe $00
    cp $00                                        ; $410b: $fe $00
    nop                                           ; $410d: $00
    ld bc, $00d4                                  ; $410e: $01 $d4 $00
    nop                                           ; $4111: $00
    ld a, a                                       ; $4112: $7f
    rst $38                                       ; $4113: $ff
    ld a, a                                       ; $4114: $7f
    ret nz                                        ; $4115: $c0

    ld a, [hl]                                    ; $4116: $7e
    ret nz                                        ; $4117: $c0

    ld a, b                                       ; $4118: $78
    jp nz, $f800                                  ; $4119: $c2 $00 $f8

    add $f0                                       ; $411c: $c6 $f0
    push bc                                       ; $411e: $c5
    ld [hl], b                                    ; $411f: $70
    ret z                                         ; $4120: $c8

    ld h, b                                       ; $4121: $60
    ret                                           ; $4122: $c9


    nop                                           ; $4123: $00
    rst $38                                       ; $4124: $ff
    nop                                           ; $4125: $00
    rlca                                          ; $4126: $07
    sbc a                                         ; $4127: $9f
    inc c                                         ; $4128: $0c
    add hl, bc                                    ; $4129: $09
    inc b                                         ; $412a: $04
    ld [de], a                                    ; $412b: $12
    nop                                           ; $412c: $00
    dec hl                                        ; $412d: $2b
    db $ec                                        ; $412e: $ec
    ld b, l                                       ; $412f: $45
    ld e, a                                       ; $4130: $5f
    adc a                                         ; $4131: $8f
    adc e                                         ; $4132: $8b
    rst $08                                       ; $4133: $cf
    xor l                                         ; $4134: $ad
    nop                                           ; $4135: $00
    rst $38                                       ; $4136: $ff
    nop                                           ; $4137: $00
    jr nz, jr_0d1_4179                            ; $4138: $20 $3f

    ldh [$90], a                                  ; $413a: $e0 $90
    ldh a, [$e8]                                  ; $413c: $f0 $e8
    nop                                           ; $413e: $00
    dec bc                                        ; $413f: $0b
    ld hl, sp+$47                                 ; $4140: $f8 $47
    db $fc                                        ; $4142: $fc
    or d                                          ; $4143: $b2
    call c, Call_0d1_54aa                         ; $4144: $dc $aa $54
    ld [bc], a                                    ; $4147: $02
    cp $00                                        ; $4148: $fe $00
    ld [bc], a                                    ; $414a: $02
    db $fc                                        ; $414b: $fc
    db $fc                                        ; $414c: $fc
    ld [bc], a                                    ; $414d: $02
    ld [bc], a                                    ; $414e: $02
    db $10                                        ; $414f: $10
    cp $00                                        ; $4150: $fe $00
    db $fc                                        ; $4152: $fc
    xor d                                         ; $4153: $aa
    db $fc                                        ; $4154: $fc
    ld [bc], a                                    ; $4155: $02
    ld h, b                                       ; $4156: $60
    ret                                           ; $4157: $c9


    ld h, c                                       ; $4158: $61
    pop bc                                        ; $4159: $c1
    nop                                           ; $415a: $00
    ld l, b                                       ; $415b: $68
    pop bc                                        ; $415c: $c1
    ld l, c                                       ; $415d: $69
    jp $d73f                                      ; $415e: $c3 $3f $d7


    ld a, $c7                                     ; $4161: $3e $c7
    nop                                           ; $4163: $00
    ld a, h                                       ; $4164: $7c
    ret nz                                        ; $4165: $c0

    ld a, h                                       ; $4166: $7c
    pop bc                                        ; $4167: $c1
    sub e                                         ; $4168: $93
    ld h, c                                       ; $4169: $61
    dec bc                                        ; $416a: $0b
    ld a, [c]                                     ; $416b: $f2
    nop                                           ; $416c: $00
    ld h, b                                       ; $416d: $60
    push de                                       ; $416e: $d5
    ld hl, sp+$44                                 ; $416f: $f8 $44
    add d                                         ; $4171: $82
    pop bc                                        ; $4172: $c1
    add hl, hl                                    ; $4173: $29
    db $ec                                        ; $4174: $ec
    nop                                           ; $4175: $00
    cp [hl]                                       ; $4176: $be
    db $dd                                        ; $4177: $dd
    inc e                                         ; $4178: $1c

jr_0d1_4179:
    ld h, e                                       ; $4179: $63
    cp $28                                        ; $417a: $fe $28
    cp $01                                        ; $417c: $fe $01
    nop                                           ; $417e: $00
    ld a, [bc]                                    ; $417f: $0a
    add d                                         ; $4180: $82
    ld d, h                                       ; $4181: $54
    adc b                                         ; $4182: $88
    inc d                                         ; $4183: $14
    ret nz                                        ; $4184: $c0

    inc [hl]                                      ; $4185: $34
    ldh [rTMA], a                                 ; $4186: $e0 $06
    inc h                                         ; $4188: $24
    ret c                                         ; $4189: $d8

    inc c                                         ; $418a: $0c
    db $f4                                        ; $418b: $f4
    cp $39                                        ; $418c: $fe $39
    db $10                                        ; $418e: $10
    inc b                                         ; $418f: $04
    jr c, jr_0d1_420f                             ; $4190: $38 $7d

    ld a, [bc]                                    ; $4192: $0a
    pop bc                                        ; $4193: $c1
    ld a, h                                       ; $4194: $7c
    pop bc                                        ; $4195: $c1
    ld a, [hl]                                    ; $4196: $7e
    add d                                         ; $4197: $82
    nop                                           ; $4198: $00
    ld a, a                                       ; $4199: $7f
    ld [bc], a                                    ; $419a: $02
    jr nz, jr_0d1_41cd                            ; $419b: $20 $30

    nop                                           ; $419d: $00
    rrca                                          ; $419e: $0f
    rst $30                                       ; $419f: $f7
    ld e, $f4                                     ; $41a0: $1e $f4
    ld h, a                                       ; $41a2: $67
    ld [$410f], sp                                ; $41a3: $08 $0f $41
    nop                                           ; $41a6: $00
    ld a, $3e                                     ; $41a7: $3e $3e
    ld [hl+], a                                   ; $41a9: $22
    ld a, [hl]                                    ; $41aa: $7e
    ld bc, $030d                                  ; $41ab: $01 $0d $03
    ld a, [$1f00]                                 ; $41ae: $fa $00 $1f
    db $fc                                        ; $41b1: $fc
    ld c, $f0                                     ; $41b2: $0e $f0
    inc c                                         ; $41b4: $0c
    ldh a, [rOBP0]                                ; $41b5: $f0 $48
    ld [hl], b                                    ; $41b7: $70
    nop                                           ; $41b8: $00
    cp b                                          ; $41b9: $b8
    ldh a, [$78]                                  ; $41ba: $f0 $78
    ldh a, [$e0]                                  ; $41bc: $f0 $e0
    ldh [$f1], a                                  ; $41be: $e0 $f1
    ld [bc], a                                    ; $41c0: $02
    jr nz, @-$02                                  ; $41c1: $20 $fc

    sbc $40                                       ; $41c3: $de $40
    db $10                                        ; $41c5: $10

jr_0d1_41c6:
    inc bc                                        ; $41c6: $03
    db $fd                                        ; $41c7: $fd
    inc bc                                        ; $41c8: $03
    ld a, l                                       ; $41c9: $7d
    inc bc                                        ; $41ca: $03
    add hl, de                                    ; $41cb: $19
    dec a                                         ; $41cc: $3d

jr_0d1_41cd:
    ld b, e                                       ; $41cd: $43
    ld e, l                                       ; $41ce: $5d
    jr c, @+$2a                                   ; $41cf: $38 $28

    ld b, h                                       ; $41d1: $44
    ld [$7f80], sp                                ; $41d2: $08 $80 $7f
    cp [hl]                                       ; $41d5: $be
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    db $e4                                        ; $41d8: $e4
    rlca                                          ; $41d9: $07
    ret nz                                        ; $41da: $c0

    rrca                                          ; $41db: $0f
    adc b                                         ; $41dc: $88
    rlca                                          ; $41dd: $07
    daa                                           ; $41de: $27
    ld [hl], a                                    ; $41df: $77
    nop                                           ; $41e0: $00
    rra                                           ; $41e1: $1f
    ld b, b                                       ; $41e2: $40
    rra                                           ; $41e3: $1f
    rst $38                                       ; $41e4: $ff
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    ldh [rP1], a                                  ; $41e8: $e0 $00
    pop de                                        ; $41ea: $d1
    add b                                         ; $41eb: $80
    ld [c], a                                     ; $41ec: $e2
    ldh [$84], a                                  ; $41ed: $e0 $84
    ld h, b                                       ; $41ef: $60
    jr z, jr_0d1_41c6                             ; $41f0: $28 $d4

    db $10                                        ; $41f2: $10
    inc e                                         ; $41f3: $1c
    push de                                       ; $41f4: $d5
    dec e                                         ; $41f5: $1d
    db $10                                        ; $41f6: $10
    ld [$2d23], sp                                ; $41f7: $08 $23 $2d
    inc bc                                        ; $41fa: $03
    ld bc, $7a00                                  ; $41fb: $01 $00 $7a
    ld a, b                                       ; $41fe: $78
    adc $fc                                       ; $41ff: $ce $fc
    inc bc                                        ; $4201: $03
    ld a, c                                       ; $4202: $79
    inc bc                                        ; $4203: $03
    ld sp, hl                                     ; $4204: $f9
    nop                                           ; $4205: $00
    ld a, [hl]                                    ; $4206: $7e
    cp $fe                                        ; $4207: $fe $fe
    nop                                           ; $4209: $00
    nop                                           ; $420a: $00
    ld bc, $00df                                  ; $420b: $01 $df $00
    inc c                                         ; $420e: $0c

jr_0d1_420f:
    ld a, a                                       ; $420f: $7f
    rst $38                                       ; $4210: $ff
    ld a, a                                       ; $4211: $7f
    ret nz                                        ; $4212: $c0

    ld [bc], a                                    ; $4213: $02
    ld [$0005], sp                                ; $4214: $08 $05 $00
    ld a, [hl]                                    ; $4217: $7e
    jp Jump_000_3f00                              ; $4218: $c3 $00 $3f


    jp $ff3f                                      ; $421b: $c3 $3f $ff


    nop                                           ; $421e: $00
    ldh [$f0], a                                  ; $421f: $e0 $f0
    ld [hl+], a                                   ; $4221: $22
    nop                                           ; $4222: $00
    jp nz, $8f0f                                  ; $4223: $c2 $0f $8f

    jr c, jr_0d1_4228                             ; $4226: $38 $00

jr_0d1_4228:
    sub h                                         ; $4228: $94
    ld [hl], a                                    ; $4229: $77
    pop bc                                        ; $422a: $c1
    nop                                           ; $422b: $00
    ld bc, $aea2                                  ; $422c: $01 $a2 $ae
    rst $38                                       ; $422f: $ff
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    ld a, a                                       ; $4232: $7f
    stop                                          ; $4233: $10 $00
    rrca                                          ; $4235: $0f
    rst $20                                       ; $4236: $e7
    ldh [$ec], a                                  ; $4237: $e0 $ec
    ld [hl], b                                    ; $4239: $70
    xor $30                                       ; $423a: $ee $30
    add c                                         ; $423c: $81
    nop                                           ; $423d: $00
    sbc b                                         ; $423e: $98
    ld c, b                                       ; $423f: $48
    ld e, h                                       ; $4240: $5c
    cp $00                                        ; $4241: $fe $00
    ld [bc], a                                    ; $4243: $02
    db $fc                                        ; $4244: $fc
    db $fc                                        ; $4245: $fc

jr_0d1_4246:
    jr jr_0d1_4246                                ; $4246: $18 $fe

jr_0d1_4248:
    db $fc                                        ; $4248: $fc
    ld [bc], a                                    ; $4249: $02
    inc bc                                        ; $424a: $03
    nop                                           ; $424b: $00

jr_0d1_424c:
    ld [bc], a                                    ; $424c: $02
    nop                                           ; $424d: $00
    cp $fc                                        ; $424e: $fe $fc
    ccf                                           ; $4250: $3f
    ld b, d                                       ; $4251: $42
    rst $00                                       ; $4252: $c7
    ld [bc], a                                    ; $4253: $02

jr_0d1_4254:
    jr @-$3e                                      ; $4254: $18 $c0

    ld a, h                                       ; $4256: $7c
    ret nz                                        ; $4257: $c0

    ld a, [hl]                                    ; $4258: $7e
    ld [bc], a                                    ; $4259: $02
    ld [$0054], sp                                ; $425a: $08 $54 $00
    ld [$5c1a], sp                                ; $425d: $08 $1a $5c
    ld a, a                                       ; $4260: $7f
    nop                                           ; $4261: $00
    inc e                                         ; $4262: $1c
    rst $30                                       ; $4263: $f7
    ld [$1400], sp                                ; $4264: $08 $00 $14
    jr z, jr_0d1_424c                             ; $4267: $28 $e3

    rst $10                                       ; $4269: $d7
    rlc b                                         ; $426a: $cb $00
    rst $18                                       ; $426c: $df
    ld a, [de]                                    ; $426d: $1a
    nop                                           ; $426e: $00
    ld c, h                                       ; $426f: $4c
    ld e, l                                       ; $4270: $5d
    rlca                                          ; $4271: $07
    dec bc                                        ; $4272: $0b
    adc e                                         ; $4273: $8b
    and a                                         ; $4274: $a7
    ld b, a                                       ; $4275: $47
    ld l, h                                       ; $4276: $6c
    nop                                           ; $4277: $00
    ld [$8824], sp                                ; $4278: $08 $24 $88
    ld [hl], l                                    ; $427b: $75
    adc c                                         ; $427c: $89
    db $fd                                        ; $427d: $fd

jr_0d1_427e:
    add hl, bc                                    ; $427e: $09
    ld [bc], a                                    ; $427f: $02
    jr nz, jr_0d1_427e                            ; $4280: $20 $fc

    add d                                         ; $4282: $82
    ld [bc], a                                    ; $4283: $02
    nop                                           ; $4284: $00
    jp nz, $82fc                                  ; $4285: $c2 $fc $82

    cp h                                          ; $4288: $bc
    add d                                         ; $4289: $82
    jr z, jr_0d1_4248                             ; $428a: $28 $bc

    jp nz, RST_08                                 ; $428c: $c2 $08 $00

    ld a, [hl]                                    ; $428f: $7e
    add hl, sp                                    ; $4290: $39
    nop                                           ; $4291: $00
    jr c, jr_0d1_4254                             ; $4292: $38 $c0

    ld [hl-], a                                   ; $4294: $32
    nop                                           ; $4295: $00
    jp nz, $37c7                                  ; $4296: $c2 $c7 $37

    rst $00                                       ; $4299: $c7
    scf                                           ; $429a: $37
    pop bc                                        ; $429b: $c1
    ld [hl], d                                    ; $429c: $72
    ret nz                                        ; $429d: $c0

    nop                                           ; $429e: $00
    ld a, b                                       ; $429f: $78
    xor b                                         ; $42a0: $a8
    ld b, a                                       ; $42a1: $47
    ret nz                                        ; $42a2: $c0

    cp a                                          ; $42a3: $bf
    ld e, l                                       ; $42a4: $5d
    ld a, a                                       ; $42a5: $7f
    ld h, e                                       ; $42a6: $63
    nop                                           ; $42a7: $00
    ld e, l                                       ; $42a8: $5d
    rra                                           ; $42a9: $1f
    inc hl                                        ; $42aa: $23
    inc a                                         ; $42ab: $3c
    rra                                           ; $42ac: $1f
    inc c                                         ; $42ad: $0c
    sbc e                                         ; $42ae: $9b
    add e                                         ; $42af: $83
    nop                                           ; $42b0: $00
    ld c, h                                       ; $42b1: $4c
    ld hl, sp-$0b                                 ; $42b2: $f8 $f5
    ldh a, [rBCPD]                                ; $42b4: $f0 $69
    ldh a, [$f1]                                  ; $42b6: $f0 $f1
    ret nc                                        ; $42b8: $d0

    nop                                           ; $42b9: $00
    pop hl                                        ; $42ba: $e1
    ld [hl], c                                    ; $42bb: $71
    pop bc                                        ; $42bc: $c1
    di                                            ; $42bd: $f3
    add e                                         ; $42be: $83
    jp $0722                                      ; $42bf: $c3 $22 $07


    nop                                           ; $42c2: $00
    call nz, $fce2                                ; $42c3: $c4 $e2 $fc
    ld a, [c]                                     ; $42c6: $f2
    db $fc                                        ; $42c7: $fc
    cp d                                          ; $42c8: $ba
    cp h                                          ; $42c9: $bc
    ld a, [c]                                     ; $42ca: $f2
    nop                                           ; $42cb: $00
    db $f4                                        ; $42cc: $f4
    ld [c], a                                     ; $42cd: $e2
    db $e4                                        ; $42ce: $e4
    jp nz, $f2c4                                  ; $42cf: $c2 $c4 $f2

    db $fc                                        ; $42d2: $fc
    ld [c], a                                     ; $42d3: $e2
    ld b, b                                       ; $42d4: $40
    db $fc                                        ; $42d5: $fc
    cp l                                          ; $42d6: $bd
    ld [$f839], sp                                ; $42d7: $08 $39 $f8
    inc a                                         ; $42da: $3c
    db $fc                                        ; $42db: $fc

Jump_0d1_42dc:
    inc a                                         ; $42dc: $3c
    call c, Call_000_3f00                         ; $42dd: $dc $00 $3f
    db $fc                                        ; $42e0: $fc
    add b                                         ; $42e1: $80
    ld a, a                                       ; $42e2: $7f
    rst $38                                       ; $42e3: $ff
    nop                                           ; $42e4: $00
    inc bc                                        ; $42e5: $03
    call $0700                                    ; $42e6: $cd $00 $07
    adc e                                         ; $42e9: $8b
    rrca                                          ; $42ea: $0f
    daa                                           ; $42eb: $27
    nop                                           ; $42ec: $00
    ld [hl], b                                    ; $42ed: $70
    rst $18                                       ; $42ee: $df
    nop                                           ; $42ef: $00
    jr nz, jr_0d1_4322                            ; $42f0: $20 $30

    ret nc                                        ; $42f2: $d0

    cp h                                          ; $42f3: $bc
    nop                                           ; $42f4: $00
    nop                                           ; $42f5: $00
    add d                                         ; $42f6: $82
    dec bc                                        ; $42f7: $0b
    nop                                           ; $42f8: $00
    sub e                                         ; $42f9: $93
    nop                                           ; $42fa: $00
    add b                                         ; $42fb: $80
    pop bc                                        ; $42fc: $c1
    jr nz, jr_0d1_42ff                            ; $42fd: $20 $00

jr_0d1_42ff:
    ret c                                         ; $42ff: $d8

    nop                                           ; $4300: $00
    ld [hl+], a                                   ; $4301: $22
    inc a                                         ; $4302: $3c
    add c                                         ; $4303: $81
    db $10                                        ; $4304: $10
    ld [$fce2], sp                                ; $4305: $08 $e2 $fc
    ld a, [$12fc]                                 ; $4308: $fa $fc $12
    ld [hl], b                                    ; $430b: $70
    ld a, h                                       ; $430c: $7c
    nop                                           ; $430d: $00
    nop                                           ; $430e: $00
    call c, Call_0d1_7c02                         ; $430f: $dc $02 $7c
    nop                                           ; $4312: $00
    cp $fe                                        ; $4313: $fe $fe
    nop                                           ; $4315: $00
    nop                                           ; $4316: $00
    ld bc, $00ee                                  ; $4317: $01 $ee $00
    db $10                                        ; $431a: $10
    rst $38                                       ; $431b: $ff
    ld a, a                                       ; $431c: $7f
    ret nz                                        ; $431d: $c0

    ld [bc], a                                    ; $431e: $02
    ld [$817e], sp                                ; $431f: $08 $7e $81

jr_0d1_4322:
    ld a, h                                       ; $4322: $7c
    add e                                         ; $4323: $83
    nop                                           ; $4324: $00
    ld a, e                                       ; $4325: $7b
    add d                                         ; $4326: $82
    ld a, d                                       ; $4327: $7a
    add e                                         ; $4328: $83
    ld a, e                                       ; $4329: $7b
    rst $38                                       ; $432a: $ff
    nop                                           ; $432b: $00
    add b                                         ; $432c: $80
    nop                                           ; $432d: $00
    ret nz                                        ; $432e: $c0

    ld bc, $c13e                                  ; $432f: $01 $3e $c1
    add a                                         ; $4332: $87
    add c                                         ; $4333: $81
    cp e                                          ; $4334: $bb
    inc sp                                        ; $4335: $33
    nop                                           ; $4336: $00
    ld l, c                                       ; $4337: $69
    or d                                          ; $4338: $b2
    bit 6, e                                      ; $4339: $cb $73
    adc e                                         ; $433b: $8b
    nop                                           ; $433c: $00
    rst $38                                       ; $433d: $ff
    ld a, a                                       ; $433e: $7f
    nop                                           ; $433f: $00
    ld b, b                                       ; $4340: $40
    ret nz                                        ; $4341: $c0

    rst $18                                       ; $4342: $df
    ret z                                         ; $4343: $c8

    ld b, a                                       ; $4344: $47
    db $e4                                        ; $4345: $e4
    inc hl                                        ; $4346: $23
    ldh a, [rP1]                                  ; $4347: $f0 $00
    inc de                                        ; $4349: $13
    db $e3                                        ; $434a: $e3
    ld hl, sp+$19                                 ; $434b: $f8 $19
    db $fc                                        ; $434d: $fc
    cp $00                                        ; $434e: $fe $00
    ld [bc], a                                    ; $4350: $02
    jr @-$02                                      ; $4351: $18 $fc

    cp $fc                                        ; $4353: $fe $fc
    inc b                                         ; $4355: $04
    jr jr_0d1_4362                                ; $4356: $18 $0a

    ld [$f881], sp                                ; $4358: $08 $81 $f8
    adc c                                         ; $435b: $89
    nop                                           ; $435c: $00
    ld hl, sp+$0f                                 ; $435d: $f8 $0f
    ld sp, hl                                     ; $435f: $f9
    dec bc                                        ; $4360: $0b
    ld sp, hl                                     ; $4361: $f9

jr_0d1_4362:
    ld hl, sp+$79                                 ; $4362: $f8 $79
    ld hl, sp+$00                                 ; $4364: $f8 $00
    ld a, a                                       ; $4366: $7f
    ld b, e                                       ; $4367: $43
    ld hl, sp+$40                                 ; $4368: $f8 $40
    ld hl, sp+$18                                 ; $436a: $f8 $18
    ldh [rNR23], a                                ; $436c: $e0 $18
    ld bc, $a010                                  ; $436e: $01 $10 $a0
    ld b, b                                       ; $4371: $40
    call c, $1c60                                 ; $4372: $dc $60 $1c
    add sp, $27                                   ; $4375: $e8 $27
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    ld e, $7c                                     ; $4379: $1e $7c
    ld [bc], a                                    ; $437b: $02
    inc e                                         ; $437c: $1c
    dec d                                         ; $437d: $15
    inc e                                         ; $437e: $1c
    ld de, $001e                                  ; $437f: $11 $1e $00
    dec a                                         ; $4382: $3d
    inc a                                         ; $4383: $3c
    ld c, [hl]                                    ; $4384: $4e
    jr c, jr_0d1_43e3                             ; $4385: $38 $5c

    jr nc, jr_0d1_4401                            ; $4387: $30 $78

    inc de                                        ; $4389: $13
    ld [$6f60], sp                                ; $438a: $08 $60 $6f
    inc l                                         ; $438d: $2c
    nop                                           ; $438e: $00
    dec a                                         ; $438f: $3d
    nop                                           ; $4390: $00
    ld [bc], a                                    ; $4391: $02
    cp $fe                                        ; $4392: $fe $fe
    nop                                           ; $4394: $00
    ld [bc], a                                    ; $4395: $02
    ld a, [hl]                                    ; $4396: $7e
    add d                                         ; $4397: $82
    ld a, [hl]                                    ; $4398: $7e
    ld [bc], a                                    ; $4399: $02
    ld a, h                                       ; $439a: $7c
    ld a, [hl]                                    ; $439b: $7e
    ld a, h                                       ; $439c: $7c
    nop                                           ; $439d: $00
    ld [bc], a                                    ; $439e: $02
    cp a                                          ; $439f: $bf
    ld b, a                                       ; $43a0: $47
    cp c                                          ; $43a1: $b9
    ld b, b                                       ; $43a2: $40
    or h                                          ; $43a3: $b4
    ld b, l                                       ; $43a4: $45
    or h                                          ; $43a5: $b4
    nop                                           ; $43a6: $00
    ld b, l                                       ; $43a7: $45
    or a                                          ; $43a8: $b7
    ld b, [hl]                                    ; $43a9: $46
    cp a                                          ; $43aa: $bf
    ld c, a                                       ; $43ab: $4f
    cp e                                          ; $43ac: $bb
    ld b, e                                       ; $43ad: $43
    cp e                                          ; $43ae: $bb
    nop                                           ; $43af: $00
    ld b, e                                       ; $43b0: $43
    ld [c], a                                     ; $43b1: $e2
    call c, Call_000_39c5                         ; $43b2: $dc $c5 $39
    ld hl, sp-$1c                                 ; $43b5: $f8 $e4
    ldh a, [rP1]                                  ; $43b7: $f0 $00
    add sp, -$1e                                  ; $43b9: $e8 $e2
    ld [hl-], a                                   ; $43bb: $32
    ld de, $f1e1                                  ; $43bc: $11 $e1 $f1
    push bc                                       ; $43bf: $c5
    push de                                       ; $43c0: $d5
    nop                                           ; $43c1: $00
    jp hl                                         ; $43c2: $e9


    db $ed                                        ; $43c3: $ed
    ld l, d                                       ; $43c4: $6a
    ret c                                         ; $43c5: $d8

    rst $10                                       ; $43c6: $d7
    ld c, $11                                     ; $43c7: $0e $11
    ld e, $00                                     ; $43c9: $1e $00

jr_0d1_43cb:
    ld l, l                                       ; $43cb: $6d
    inc a                                         ; $43cc: $3c
    db $db                                        ; $43cd: $db
    jr nc, jr_0d1_43cb                            ; $43ce: $30 $fb

    rst $10                                       ; $43d0: $d7
    daa                                           ; $43d1: $27
    rst $28                                       ; $43d2: $ef
    nop                                           ; $43d3: $00
    adc $7c                                       ; $43d4: $ce $7c
    ld [bc], a                                    ; $43d6: $02
    ld a, h                                       ; $43d7: $7c
    ld b, d                                       ; $43d8: $42
    cp h                                          ; $43d9: $bc
    add d                                         ; $43da: $82
    db $fc                                        ; $43db: $fc
    nop                                           ; $43dc: $00
    ld [c], a                                     ; $43dd: $e2
    call c, $fcc2                                 ; $43de: $dc $c2 $fc
    ld a, [c]                                     ; $43e1: $f2
    ld [c], a                                     ; $43e2: $e2

jr_0d1_43e3:
    db $ec                                        ; $43e3: $ec
    ld [c], a                                     ; $43e4: $e2
    nop                                           ; $43e5: $00
    db $ec                                        ; $43e6: $ec
    scf                                           ; $43e7: $37
    rst $00                                       ; $43e8: $c7
    inc l                                         ; $43e9: $2c
    call z, $c71f                                 ; $43ea: $cc $1f $c7
    ccf                                           ; $43ed: $3f
    nop                                           ; $43ee: $00
    rst $08                                       ; $43ef: $cf
    ld a, $ce                                     ; $43f0: $3e $ce
    inc a                                         ; $43f2: $3c
    call c, Call_0d1_7f80                         ; $43f3: $dc $80 $7f
    rst $38                                       ; $43f6: $ff
    nop                                           ; $43f7: $00
    nop                                           ; $43f8: $00
    inc a                                         ; $43f9: $3c
    ld [c], a                                     ; $43fa: $e2
    inc a                                         ; $43fb: $3c
    and d                                         ; $43fc: $a2
    ld e, b                                       ; $43fd: $58
    ld h, h                                       ; $43fe: $64
    ld a, b                                       ; $43ff: $78
    nop                                           ; $4400: $00

jr_0d1_4401:
    ld b, b                                       ; $4401: $40
    ld [hl], b                                    ; $4402: $70
    ld c, b                                       ; $4403: $48
    ld [hl], b                                    ; $4404: $70
    ld b, b                                       ; $4405: $40
    rst $38                                       ; $4406: $ff
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    ld bc, $1f9e                                  ; $440b: $01 $9e $1f
    ld h, e                                       ; $440e: $63
    ld e, $25                                     ; $440f: $1e $25
    inc e                                         ; $4411: $1c
    inc b                                         ; $4412: $04
    ld [hl+], a                                   ; $4413: $22

Jump_0d1_4414:
    scf                                           ; $4414: $37
    ld c, a                                       ; $4415: $4f
    nop                                           ; $4416: $00
    ld [hl], b                                    ; $4417: $70
    db $10                                        ; $4418: $10
    ld [$ece2], sp                                ; $4419: $08 $e2 $ec
    nop                                           ; $441c: $00
    ld a, [c]                                     ; $441d: $f2
    db $f4                                        ; $441e: $f4
    ld a, [c]                                     ; $441f: $f2
    db $fc                                        ; $4420: $fc
    jp nz, $3ef0                                  ; $4421: $c2 $f0 $3e

    db $fc                                        ; $4424: $fc
    nop                                           ; $4425: $00
    ld a, $fc                                     ; $4426: $3e $fc
    nop                                           ; $4428: $00
    cp $fe                                        ; $4429: $fe $fe
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    ld bc, $00d6                                  ; $442d: $01 $d6 $00
    ld [$ff00], sp                                ; $4430: $08 $00 $ff
    rlca                                          ; $4433: $07
    ret nz                                        ; $4434: $c0

    ld [bc], a                                    ; $4435: $02
    ld [$c73f], sp                                ; $4436: $08 $3f $c7
    ccf                                           ; $4439: $3f
    nop                                           ; $443a: $00
    rst $00                                       ; $443b: $c7
    ld a, $f8                                     ; $443c: $3e $f8
    ld a, $c6                                     ; $443e: $3e $c6
    rst $38                                       ; $4440: $ff

jr_0d1_4441:
    nop                                           ; $4441: $00
    rrca                                          ; $4442: $0f
    nop                                           ; $4443: $00
    rra                                           ; $4444: $1f
    jr nc, jr_0d1_4456                            ; $4445: $30 $0f

    ld a, [hl]                                    ; $4447: $7e
    ld a, a                                       ; $4448: $7f
    ld a, [hl]                                    ; $4449: $7e
    ld b, b                                       ; $444a: $40
    ld b, c                                       ; $444b: $41
    nop                                           ; $444c: $00
    ld a, $5d                                     ; $444d: $3e $5d
    ld a, $3c                                     ; $444f: $3e $3c
    ld a, a                                       ; $4451: $7f
    nop                                           ; $4452: $00
    rst $38                                       ; $4453: $ff
    cp b                                          ; $4454: $b8
    nop                                           ; $4455: $00

jr_0d1_4456:
    add b                                         ; $4456: $80
    jr jr_0d1_4441                                ; $4457: $18 $e8

    nop                                           ; $4459: $00
    ld hl, sp+$03                                 ; $445a: $f8 $03
    ld [hl], b                                    ; $445c: $70
    add c                                         ; $445d: $81
    nop                                           ; $445e: $00
    sub b                                         ; $445f: $90
    ret nz                                        ; $4460: $c0

    sbc b                                         ; $4461: $98
    ret nz                                        ; $4462: $c0

    sub b                                         ; $4463: $90
    ld bc, $e1ff                                  ; $4464: $01 $ff $e1
    ld d, b                                       ; $4467: $50
    inc bc                                        ; $4468: $03
    ld [bc], a                                    ; $4469: $02
    ld [$021d], sp                                ; $446a: $08 $1d $02
    nop                                           ; $446d: $00
    ld [c], a                                     ; $446e: $e2
    db $fc                                        ; $446f: $fc
    sbc [hl]                                      ; $4470: $9e
    db $fc                                        ; $4471: $fc
    nop                                           ; $4472: $00
    ld a, $c4                                     ; $4473: $3e $c4
    inc a                                         ; $4475: $3c
    push bc                                       ; $4476: $c5
    inc a                                         ; $4477: $3c
    ld hl, sp+$3d                                 ; $4478: $f8 $3d
    ld sp, hl                                     ; $447a: $f9
    nop                                           ; $447b: $00
    ld a, h                                       ; $447c: $7c
    ret nz                                        ; $447d: $c0

    ld a, h                                       ; $447e: $7c

Call_0d1_447f:
    pop bc                                        ; $447f: $c1
    ld a, l                                       ; $4480: $7d
    pop bc                                        ; $4481: $c1
    ld a, h                                       ; $4482: $7c
    ret nz                                        ; $4483: $c0

    nop                                           ; $4484: $00
    ld [bc], a                                    ; $4485: $02
    ld h, e                                       ; $4486: $63
    cp a                                          ; $4487: $bf
    ld b, c                                       ; $4488: $41
    ld b, c                                       ; $4489: $41
    rst $38                                       ; $448a: $ff
    ld c, l                                       ; $448b: $4d
    rst $20                                       ; $448c: $e7
    nop                                           ; $448d: $00
    ld b, c                                       ; $448e: $41
    ld [c], a                                     ; $448f: $e2
    rst $38                                       ; $4490: $ff
    add b                                         ; $4491: $80
    pop hl                                        ; $4492: $e1
    ld e, [hl]                                    ; $4493: $5e
    ld [hl], b                                    ; $4494: $70
    ld c, a                                       ; $4495: $4f
    nop                                           ; $4496: $00
    ld e, d                                       ; $4497: $5a
    sbc d                                         ; $4498: $9a
    ld h, e                                       ; $4499: $63
    db $e3                                        ; $449a: $e3
    add b                                         ; $449b: $80
    call z, $c88c                                 ; $449c: $cc $8c $c8
    nop                                           ; $449f: $00
    ld c, b                                       ; $44a0: $48
    add h                                         ; $44a1: $84
    ld l, l                                       ; $44a2: $6d
    xor c                                         ; $44a3: $a9
    inc e                                         ; $44a4: $1c
    db $e4                                        ; $44a5: $e4
    call c, Call_000_02f8                         ; $44a6: $dc $f8 $02
    ld h, d                                       ; $44a9: $62
    ld a, h                                       ; $44aa: $7c
    ld [hl+], a                                   ; $44ab: $22
    ld a, h                                       ; $44ac: $7c
    ld a, h                                       ; $44ad: $7c
    ld e, $02                                     ; $44ae: $1e $02
    db $10                                        ; $44b0: $10
    ld h, d                                       ; $44b1: $62
    add hl, bc                                    ; $44b2: $09
    inc bc                                        ; $44b3: $03
    ld a, l                                       ; $44b4: $7d
    inc bc                                        ; $44b5: $03
    db $fd                                        ; $44b6: $fd
    inc [hl]                                      ; $44b7: $34
    nop                                           ; $44b8: $00
    pop bc                                        ; $44b9: $c1
    ld a, [hl]                                    ; $44ba: $7e
    inc a                                         ; $44bb: $3c
    nop                                           ; $44bc: $00
    jr nz, jr_0d1_44fb                            ; $44bd: $20 $3c

    ld hl, sp+$7e                                 ; $44bf: $f8 $7e
    ld [$c73f], sp                                ; $44c1: $08 $3f $c7
    rst $28                                       ; $44c4: $ef
    ld d, a                                       ; $44c5: $57
    rlca                                          ; $44c6: $07
    nop                                           ; $44c7: $00
    rst $28                                       ; $44c8: $ef
    jr c, jr_0d1_4502                             ; $44c9: $38 $37

    ldh [$1f], a                                  ; $44cb: $e0 $1f
    cp $01                                        ; $44cd: $fe $01
    ld a, h                                       ; $44cf: $7c
    nop                                           ; $44d0: $00
    add $30                                       ; $44d1: $c6 $30
    ld a, b                                       ; $44d3: $78
    add c                                         ; $44d4: $81
    inc bc                                        ; $44d5: $03
    ldh a, [$e0]                                  ; $44d6: $f0 $e0
    ldh a, [rP1]                                  ; $44d8: $f0 $00
    pop bc                                        ; $44da: $c1
    ldh [$83], a                                  ; $44db: $e0 $83
    ret nc                                        ; $44dd: $d0

    inc bc                                        ; $44de: $03
    ld c, b                                       ; $44df: $48
    or b                                          ; $44e0: $b0
    xor b                                         ; $44e1: $a8
    ld bc, $f070                                  ; $44e2: $01 $70 $f0
    ld l, b                                       ; $44e5: $68
    ldh a, [$e8]                                  ; $44e6: $f0 $e8
    ld [c], a                                     ; $44e8: $e2
    db $fc                                        ; $44e9: $fc
    ld [bc], a                                    ; $44ea: $02
    ld [$1e74], sp                                ; $44eb: $08 $74 $1e
    ld [bc], a                                    ; $44ee: $02
    db $10                                        ; $44ef: $10
    adc c                                         ; $44f0: $89
    ld [$00b8], sp                                ; $44f1: $08 $b8 $00
    ld hl, sp-$44                                 ; $44f4: $f8 $bc
    jr @+$3b                                      ; $44f6: $18 $39

    ld sp, hl                                     ; $44f8: $f9
    nop                                           ; $44f9: $00
    add b                                         ; $44fa: $80

jr_0d1_44fb:
    ld a, a                                       ; $44fb: $7f
    rst $38                                       ; $44fc: $ff
    nop                                           ; $44fd: $00
    jr c, jr_0d1_453f                             ; $44fe: $38 $3f

Call_0d1_4500:
    ldh a, [$3f]                                  ; $4500: $f0 $3f

jr_0d1_4502:
    nop                                           ; $4502: $00
    adc a                                         ; $4503: $8f
    rra                                           ; $4504: $1f
    add b                                         ; $4505: $80
    rrca                                          ; $4506: $0f
    ld b, h                                       ; $4507: $44
    rrca                                          ; $4508: $0f
    ldh [rP1], a                                  ; $4509: $e0 $00
    nop                                           ; $450b: $00
    rst $38                                       ; $450c: $ff
    nop                                           ; $450d: $00
    nop                                           ; $450e: $00
    nop                                           ; $450f: $00
    inc e                                         ; $4510: $1c
    db $ec                                        ; $4511: $ec
    ccf                                           ; $4512: $3f
    rst $00                                       ; $4513: $c7
    nop                                           ; $4514: $00
    db $e3                                        ; $4515: $e3
    inc de                                        ; $4516: $13
    rlca                                          ; $4517: $07
    rst $00                                       ; $4518: $c7
    inc e                                         ; $4519: $1c
    inc de                                        ; $451a: $13
    ret nz                                        ; $451b: $c0

    ccf                                           ; $451c: $3f

Jump_0d1_451d:
    ret nz                                        ; $451d: $c0

    db $10                                        ; $451e: $10
    ld [$08bb], sp                                ; $451f: $08 $bb $08
    inc a                                         ; $4522: $3c
    ld [hl+], a                                   ; $4523: $22
    sbc h                                         ; $4524: $9c
    add d                                         ; $4525: $82
    db $ec                                        ; $4526: $ec
    ld [c], a                                     ; $4527: $e2
    nop                                           ; $4528: $00
    ldh [$e2], a                                  ; $4529: $e0 $e2
    xor $fe                                       ; $452b: $ee $fe
    cp $00                                        ; $452d: $fe $00
    nop                                           ; $452f: $00
    ld bc, $00fb                                  ; $4530: $01 $fb $00
    nop                                           ; $4533: $00
    rst $38                                       ; $4534: $ff
    ld a, a                                       ; $4535: $7f
    ret nz                                        ; $4536: $c0

    ld c, [hl]                                    ; $4537: $4e
    ret nz                                        ; $4538: $c0

    ld e, h                                       ; $4539: $5c
    ret nz                                        ; $453a: $c0

    ld a, h                                       ; $453b: $7c
    nop                                           ; $453c: $00
    ret nz                                        ; $453d: $c0

    ld [hl], b                                    ; $453e: $70

jr_0d1_453f:
    ret nz                                        ; $453f: $c0

    ld b, a                                       ; $4540: $47
    add b                                         ; $4541: $80
    ld b, b                                       ; $4542: $40
    add [hl]                                      ; $4543: $86

jr_0d1_4544:
    ld b, d                                       ; $4544: $42
    nop                                           ; $4545: $00
    rst $38                                       ; $4546: $ff
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    ld a, a                                       ; $4549: $7f
    db $fc                                        ; $454a: $fc
    add e                                         ; $454b: $83
    ld a, a                                       ; $454c: $7f
    ld a, a                                       ; $454d: $7f

Call_0d1_454e:
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    nop                                           ; $4550: $00
    ld [hl], e                                    ; $4551: $73
    rra                                           ; $4552: $1f
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    ret nz                                        ; $4555: $c0

    sbc [hl]                                      ; $4556: $9e
    nop                                           ; $4557: $00
    rst $38                                       ; $4558: $ff
    nop                                           ; $4559: $00
    add b                                         ; $455a: $80
    adc a                                         ; $455b: $8f
    db $e3                                        ; $455c: $e3
    ldh a, [rNR32]                                ; $455d: $f0 $1c
    cp $00                                        ; $455f: $fe $00
    rra                                           ; $4561: $1f
    db $fc                                        ; $4562: $fc
    ld [bc], a                                    ; $4563: $02

jr_0d1_4564:
    ld c, $f0                                     ; $4564: $0e $f0
    ld h, e                                       ; $4566: $63
    inc e                                         ; $4567: $1c
    inc c                                         ; $4568: $0c
    nop                                           ; $4569: $00
    cp $00                                        ; $456a: $fe $00
    add d                                         ; $456c: $82
    cp h                                          ; $456d: $bc
    sbc h                                         ; $456e: $9c
    add d                                         ; $456f: $82
    inc e                                         ; $4570: $1c
    ld [bc], a                                    ; $4571: $02
    nop                                           ; $4572: $00
    call z, Call_0d1_740e                         ; $4573: $cc $0e $74
    ld b, $06                                     ; $4576: $06 $06
    or d                                          ; $4578: $b2
    ld b, $f2                                     ; $4579: $06 $f2
    nop                                           ; $457b: $00
    call z, $c941                                 ; $457c: $cc $41 $c9

jr_0d1_457f:
    ld b, e                                       ; $457f: $43
    adc l                                         ; $4580: $8d
    ld b, a                                       ; $4581: $47
    adc l                                         ; $4582: $8d
    ld c, a                                       ; $4583: $4f
    nop                                           ; $4584: $00
    add h                                         ; $4585: $84
    ld b, d                                       ; $4586: $42
    sub d                                         ; $4587: $92
    ld d, h                                       ; $4588: $54
    add $74                                       ; $4589: $c6 $74
    sub $70                                       ; $458b: $d6 $70
    nop                                           ; $458d: $00
    or b                                          ; $458e: $b0
    jr nc, jr_0d1_45d8                            ; $458f: $30 $47

    ld c, b                                       ; $4591: $48
    jr c, @+$0b                                   ; $4592: $38 $09

    ld c, $44                                     ; $4594: $0e $44
    nop                                           ; $4596: $00
    adc l                                         ; $4597: $8d
    pop af                                        ; $4598: $f1
    add c                                         ; $4599: $81
    db $fc                                        ; $459a: $fc
    ld a, h                                       ; $459b: $7c
    jr c, jr_0d1_45fe                             ; $459c: $38 $60

    ccf                                           ; $459e: $3f
    nop                                           ; $459f: $00
    add e                                         ; $45a0: $83
    ldh [$60], a                                  ; $45a1: $e0 $60
    ld a, h                                       ; $45a3: $7c
    cp h                                          ; $45a4: $bc
    ccf                                           ; $45a5: $3f
    ld e, b                                       ; $45a6: $58
    sbc b                                         ; $45a7: $98
    nop                                           ; $45a8: $00
    rla                                           ; $45a9: $17
    ld d, b                                       ; $45aa: $50
    jr nc, jr_0d1_4564                            ; $45ab: $30 $b7

    jp nz, $ca27                                  ; $45ad: $c2 $27 $ca

    dec hl                                        ; $45b0: $2b
    nop                                           ; $45b1: $00
    ld c, $02                                     ; $45b2: $0e $02
    ld c, $82                                     ; $45b4: $0e $82
    ld b, $62                                     ; $45b6: $06 $62
    ld [bc], a                                    ; $45b8: $02
    ld [hl-], a                                   ; $45b9: $32
    nop                                           ; $45ba: $00
    ld a, [bc]                                    ; $45bb: $0a
    jr jr_0d1_4544                                ; $45bc: $18 $86

    inc c                                         ; $45be: $0c
    ld b, $24                                     ; $45bf: $06 $24
    ld [bc], a                                    ; $45c1: $02
    ld [hl], b                                    ; $45c2: $70
    nop                                           ; $45c3: $00

jr_0d1_45c4:
    sbc [hl]                                      ; $45c4: $9e
    ld a, b                                       ; $45c5: $78
    cp [hl]                                       ; $45c6: $be
    ld e, b                                       ; $45c7: $58
    xor h                                         ; $45c8: $ac
    ld a, [hl]                                    ; $45c9: $7e
    xor h                                         ; $45ca: $ac
    halt                                          ; $45cb: $76
    nop                                           ; $45cc: $00
    or c                                          ; $45cd: $b1
    ld l, d                                       ; $45ce: $6a
    or d                                          ; $45cf: $b2
    ld d, c                                       ; $45d0: $51
    sub [hl]                                      ; $45d1: $96
    ld [hl], a                                    ; $45d2: $77
    adc a                                         ; $45d3: $8f
    ld h, d                                       ; $45d4: $62
    nop                                           ; $45d5: $00
    ld l, [hl]                                    ; $45d6: $6e
    rra                                           ; $45d7: $1f

jr_0d1_45d8:
    ld h, b                                       ; $45d8: $60
    rra                                           ; $45d9: $1f
    ld c, b                                       ; $45da: $48
    scf                                           ; $45db: $37
    ld l, d                                       ; $45dc: $6a
    ld e, c                                       ; $45dd: $59
    nop                                           ; $45de: $00
    jr c, jr_0d1_4640                             ; $45df: $38 $5f

    inc e                                         ; $45e1: $1c
    ld a, e                                       ; $45e2: $7b
    inc sp                                        ; $45e3: $33
    dec l                                         ; $45e4: $2d
    sub b                                         ; $45e5: $90
    rra                                           ; $45e6: $1f
    nop                                           ; $45e7: $00
    ret nz                                        ; $45e8: $c0

    xor $ce                                       ; $45e9: $ee $ce
    ld l, h                                       ; $45eb: $6c
    ld c, $7e                                     ; $45ec: $0e $7e
    sbc [hl]                                      ; $45ee: $9e
    ld h, b                                       ; $45ef: $60
    nop                                           ; $45f0: $00
    cp $0a                                        ; $45f1: $fe $0a
    inc c                                         ; $45f3: $0c
    db $e4                                        ; $45f4: $e4
    add hl, bc                                    ; $45f5: $09
    ld a, [de]                                    ; $45f6: $1a
    ld [hl], $d5                                  ; $45f7: $36 $d5
    nop                                           ; $45f9: $00
    ld [bc], a                                    ; $45fa: $02
    jr c, jr_0d1_457f                             ; $45fb: $38 $82

    sbc h                                         ; $45fd: $9c

jr_0d1_45fe:
    ld c, $ac                                     ; $45fe: $0e $ac
    ld h, $94                                     ; $4600: $26 $94
    nop                                           ; $4602: $00
    sbc d                                         ; $4603: $9a
    ld c, d                                       ; $4604: $4a
    ld c, [hl]                                    ; $4605: $4e
    ld l, $26                                     ; $4606: $2e $26
    cp [hl]                                       ; $4608: $be
    sub d                                         ; $4609: $92
    ld [hl], $00                                  ; $460a: $36 $00
    sbc d                                         ; $460c: $9a
    ret nz                                        ; $460d: $c0

    add e                                         ; $460e: $83
    ret nz                                        ; $460f: $c0

    adc e                                         ; $4610: $8b
    ret nz                                        ; $4611: $c0

    adc c                                         ; $4612: $89
    ret z                                         ; $4613: $c8

    nop                                           ; $4614: $00
    add l                                         ; $4615: $85
    ld b, h                                       ; $4616: $44
    and [hl]                                      ; $4617: $a6
    ld h, d                                       ; $4618: $62
    add b                                         ; $4619: $80
    ld a, a                                       ; $461a: $7f
    rst $38                                       ; $461b: $ff
    nop                                           ; $461c: $00
    nop                                           ; $461d: $00
    ld b, a                                       ; $461e: $47
    adc a                                         ; $461f: $8f
    ld b, b                                       ; $4620: $40
    daa                                           ; $4621: $27
    jr z, jr_0d1_45c4                             ; $4622: $28 $a0

    rla                                           ; $4624: $17
    ret nz                                        ; $4625: $c0

    ld [$80e3], sp                                ; $4626: $08 $e3 $80
    ldh a, [$cf]                                  ; $4629: $f0 $cf
    call z, RST_00                                ; $462b: $cc $00 $00
    pop bc                                        ; $462e: $c1
    add $00                                       ; $462f: $c6 $00
    ld bc, $69a0                                  ; $4631: $01 $a0 $69
    dec b                                         ; $4634: $05
    and b                                         ; $4635: $a0
    ld b, h                                       ; $4636: $44
    ret nz                                        ; $4637: $c0

    jr z, jr_0d1_465a                             ; $4638: $28 $20

    add e                                         ; $463a: $83
    ld c, d                                       ; $463b: $4a
    db $10                                        ; $463c: $10
    ld [$d81a], sp                                ; $463d: $08 $1a $d8

jr_0d1_4640:
    sub d                                         ; $4640: $92
    ld [hl], b                                    ; $4641: $70
    ld [hl], d                                    ; $4642: $72
    nop                                           ; $4643: $00
    cp b                                          ; $4644: $b8
    ld a, [hl-]                                   ; $4645: $3a
    call c, $2e1e                                 ; $4646: $dc $1e $2e
    ld b, $9e                                     ; $4649: $06 $9e
    nop                                           ; $464b: $00
    nop                                           ; $464c: $00
    cp $fe                                        ; $464d: $fe $fe
    nop                                           ; $464f: $00
    nop                                           ; $4650: $00
    ld bc, $00e3                                  ; $4651: $01 $e3 $00
    ld [$ff7f], sp                                ; $4654: $08 $7f $ff
    ld a, a                                       ; $4657: $7f
    ret nz                                        ; $4658: $c0

    ld [bc], a                                    ; $4659: $02

jr_0d1_465a:
    jr @+$80                                      ; $465a: $18 $7e

    ret nz                                        ; $465c: $c0

    ccf                                           ; $465d: $3f
    nop                                           ; $465e: $00
    jp $c33e                                      ; $465f: $c3 $3e $c3


    rst $38                                       ; $4662: $ff
    nop                                           ; $4663: $00
    inc b                                         ; $4664: $04
    db $fc                                        ; $4665: $fc
    ret nz                                        ; $4666: $c0

    nop                                           ; $4667: $00
    ld bc, $2f87                                  ; $4668: $01 $87 $2f
    ld c, a                                       ; $466b: $4f
    rra                                           ; $466c: $1f
    rst $08                                       ; $466d: $cf
    rrca                                          ; $466e: $0f
    ldh [rP1], a                                  ; $466f: $e0 $00
    dec c                                         ; $4671: $0d
    ld hl, sp+$58                                 ; $4672: $f8 $58
    nop                                           ; $4674: $00
    rst $38                                       ; $4675: $ff
    ccf                                           ; $4676: $3f
    nop                                           ; $4677: $00
    rrca                                          ; $4678: $0f
    nop                                           ; $4679: $00
    ret nz                                        ; $467a: $c0

    rst $20                                       ; $467b: $e7
    ldh a, [$f3]                                  ; $467c: $f0 $f3

Jump_0d1_467e:
    ld hl, sp-$07                                 ; $467e: $f8 $f9
    db $fc                                        ; $4680: $fc
    db $fd                                        ; $4681: $fd
    nop                                           ; $4682: $00
    db $fc                                        ; $4683: $fc
    ret nz                                        ; $4684: $c0

    jp nz, Jump_000_00fe                          ; $4685: $c2 $fe $00

    ld [bc], a                                    ; $4688: $02
    db $fc                                        ; $4689: $fc
    db $fc                                        ; $468a: $fc
    ld b, b                                       ; $468b: $40
    ld [bc], a                                    ; $468c: $02
    ld [bc], a                                    ; $468d: $02

jr_0d1_468e:
    jr nz, jr_0d1_468e                            ; $468e: $20 $fe

    db $fc                                        ; $4690: $fc
    ld [bc], a                                    ; $4691: $02
    ld a, l                                       ; $4692: $7d
    pop bc                                        ; $4693: $c1
    ld a, l                                       ; $4694: $7d
    inc b                                         ; $4695: $04
    pop bc                                        ; $4696: $c1
    ld a, h                                       ; $4697: $7c
    pop bc                                        ; $4698: $c1
    ld a, b                                       ; $4699: $78
    jp nz, $1002                                  ; $469a: $c2 $02 $10

    jp Jump_000_0078                              ; $469d: $c3 $78 $00


    jp nz, Jump_000_3033                          ; $46a0: $c2 $33 $30

    inc b                                         ; $46a3: $04
    ld b, b                                       ; $46a4: $40
    sub $9f                                       ; $46a5: $d6 $9f
    call $4d00                                    ; $46a7: $cd $00 $4d
    sbc h                                         ; $46aa: $9c
    dec bc                                        ; $46ab: $0b
    sbc a                                         ; $46ac: $9f
    xor a                                         ; $46ad: $af
    cpl                                           ; $46ae: $2f
    rla                                           ; $46af: $17
    ld d, $00                                     ; $46b0: $16 $00
    dec hl                                        ; $46b2: $2b
    rlca                                          ; $46b3: $07
    ld [hl], b                                    ; $46b4: $70
    ld hl, $9430                                  ; $46b5: $21 $30 $94
    call nc, Call_000_00d4                        ; $46b8: $d4 $d4 $00
    ld [hl], b                                    ; $46bb: $70
    db $10                                        ; $46bc: $10
    db $e4                                        ; $46bd: $e4
    ld hl, sp-$6e                                 ; $46be: $f8 $92
    inc bc                                        ; $46c0: $03
    jp nz, Jump_000_01d3                          ; $46c1: $c2 $d3 $01

    cp d                                          ; $46c4: $ba
    db $fc                                        ; $46c5: $fc
    add d                                         ; $46c6: $82
    ld a, h                                       ; $46c7: $7c
    ld [bc], a                                    ; $46c8: $02
    db $fc                                        ; $46c9: $fc
    ld a, $3c                                     ; $46ca: $3e $3c
    jr jr_0d1_46d6                                ; $46cc: $18 $08

    db $fc                                        ; $46ce: $fc
    add d                                         ; $46cf: $82
    db $fc                                        ; $46d0: $fc
    add d                                         ; $46d1: $82
    ld a, [hl-]                                   ; $46d2: $3a
    ld [$c531], sp                                ; $46d3: $08 $31 $c5

jr_0d1_46d6:
    inc sp                                        ; $46d6: $33
    nop                                           ; $46d7: $00
    jp $22ca                                      ; $46d8: $c3 $ca $22


    jp nc, $a007                                  ; $46db: $d2 $07 $a0

    ld [hl], e                                    ; $46de: $73
    sub b                                         ; $46df: $90
    nop                                           ; $46e0: $00
    ld [hl], b                                    ; $46e1: $70
    ld de, $081e                                  ; $46e2: $11 $1e $08
    rlca                                          ; $46e5: $07
    rlca                                          ; $46e6: $07
    dec hl                                        ; $46e7: $2b
    rlca                                          ; $46e8: $07
    nop                                           ; $46e9: $00
    ld hl, $4f7b                                  ; $46ea: $21 $7b $4f
    ld a, h                                       ; $46ed: $7c
    ld b, a                                       ; $46ee: $47
    sub e                                         ; $46ef: $93
    adc h                                         ; $46f0: $8c
    add sp, $00                                   ; $46f1: $e8 $00
    rst $00                                       ; $46f3: $c7
    ld sp, hl                                     ; $46f4: $f9
    ld bc, $f901                                  ; $46f5: $01 $01 $f9
    ei                                            ; $46f8: $fb
    inc bc                                        ; $46f9: $03
    ld de, $e100                                  ; $46fa: $11 $00 $e1
    ld a, [$f45c]                                 ; $46fd: $fa $5c $f4
    ld a, [c]                                     ; $4700: $f2
    and $60                                       ; $4701: $e6 $60
    call nz, Call_000_1c00                        ; $4703: $c4 $00 $1c
    ld a, [hl]                                    ; $4706: $7e
    ld [bc], a                                    ; $4707: $02
    ld a, $82                                     ; $4708: $3e $82
    add d                                         ; $470a: $82
    cp [hl]                                       ; $470b: $be
    jp nz, $9e00                                  ; $470c: $c2 $00 $9e

    ld b, d                                       ; $470f: $42
    ld e, $62                                     ; $4710: $1e $62
    ld c, $b2                                     ; $4712: $0e $b2
    inc e                                         ; $4714: $1c
    ld a, [$ec02]                                 ; $4715: $fa $02 $ec
    sub b                                         ; $4718: $90
    ld [hl], b                                    ; $4719: $70
    xor [hl]                                      ; $471a: $ae
    ld l, [hl]                                    ; $471b: $6e
    ld e, h                                       ; $471c: $5c
    cp h                                          ; $471d: $bc
    ld [$00fc], sp                                ; $471e: $08 $fc $00
    ccf                                           ; $4721: $3f
    cp $80                                        ; $4722: $fe $80
    ld a, a                                       ; $4724: $7f
    rst $38                                       ; $4725: $ff
    nop                                           ; $4726: $00
    ld h, a                                       ; $4727: $67
    ld h, b                                       ; $4728: $60
    nop                                           ; $4729: $00
    ld b, b                                       ; $472a: $40
    ret z                                         ; $472b: $c8

    sub l                                         ; $472c: $95
    ld e, b                                       ; $472d: $58
    adc $c7                                       ; $472e: $ce $c7
    dec de                                        ; $4730: $1b
    ld e, $00                                     ; $4731: $1e $00
    dec h                                         ; $4733: $25
    db $e4                                        ; $4734: $e4
    rst $38                                       ; $4735: $ff
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    ld b, h                                       ; $4739: $44
    adc h                                         ; $473a: $8c
    nop                                           ; $473b: $00
    jr z, jr_0d1_4762                             ; $473c: $28 $24

    inc l                                         ; $473e: $2c
    ld hl, $6380                                  ; $473f: $21 $80 $63
    add c                                         ; $4742: $81
    add $20                                       ; $4743: $c6 $20
    inc bc                                        ; $4745: $03
    adc h                                         ; $4746: $8c
    db $10                                        ; $4747: $10
    ld [$563a], sp                                ; $4748: $08 $3a $56
    ld a, [de]                                    ; $474b: $1a
    ld a, [hl-]                                   ; $474c: $3a
    call z, $c600                                 ; $474d: $cc $00 $c6

jr_0d1_4750:
    ldh a, [$32]                                  ; $4750: $f0 $32
    ldh [$c2], a                                  ; $4752: $e0 $c2
    ldh a, [$e2]                                  ; $4754: $f0 $e2
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    cp $fe                                        ; $4758: $fe $fe
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00
    ld bc, $00f2                                  ; $475c: $01 $f2 $00
    ld [$ff7f], sp                                ; $475f: $08 $7f $ff

jr_0d1_4762:
    ld a, a                                       ; $4762: $7f
    ret nz                                        ; $4763: $c0

    ld [bc], a                                    ; $4764: $02
    ld [$fe3f], sp                                ; $4765: $08 $3f $fe
    ld a, $00                                     ; $4768: $3e $00
    db $fc                                        ; $476a: $fc
    db $fc                                        ; $476b: $fc
    dec a                                         ; $476c: $3d
    ld sp, hl                                     ; $476d: $f9
    dec sp                                        ; $476e: $3b
    nop                                           ; $476f: $00
    rst $38                                       ; $4770: $ff
    rst $20                                       ; $4771: $e7
    nop                                           ; $4772: $00
    dec h                                         ; $4773: $25
    sub b                                         ; $4774: $90
    ret                                           ; $4775: $c9


    inc sp                                        ; $4776: $33
    adc b                                         ; $4777: $88
    ld h, b                                       ; $4778: $60
    rlca                                          ; $4779: $07
    ldh [rP1], a                                  ; $477a: $e0 $00
    ld b, e                                       ; $477c: $43
    dec l                                         ; $477d: $2d
    push bc                                       ; $477e: $c5
    ld l, [hl]                                    ; $477f: $6e
    xor b                                         ; $4780: $a8
    nop                                           ; $4781: $00
    rst $38                                       ; $4782: $ff
    rrca                                          ; $4783: $0f
    nop                                           ; $4784: $00
    ld [$f2f1], sp                                ; $4785: $08 $f1 $f2
    sbc h                                         ; $4788: $9c
    db $fd                                        ; $4789: $fd
    ld a, [hl]                                    ; $478a: $7e
    xor h                                         ; $478b: $ac
    scf                                           ; $478c: $37
    nop                                           ; $478d: $00
    jp c, Jump_0d1_681b                           ; $478e: $da $1b $68

    dec c                                         ; $4791: $0d
    inc d                                         ; $4792: $14
    nop                                           ; $4793: $00
    cp $fc                                        ; $4794: $fe $fc
    ld b, b                                       ; $4796: $40
    ld [bc], a                                    ; $4797: $02
    ld [bc], a                                    ; $4798: $02
    db $10                                        ; $4799: $10
    ld a, [hl]                                    ; $479a: $7e
    ld a, h                                       ; $479b: $7c
    ld a, $bc                                     ; $479c: $3e $bc
    ld e, $dc                                     ; $479e: $1e $dc
    nop                                           ; $47a0: $00
    ld c, $c3                                     ; $47a1: $0e $c3
    dec sp                                        ; $47a3: $3b
    jp $c637                                      ; $47a4: $c3 $37 $c6


    scf                                           ; $47a7: $37
    call nz, Call_000_2f00                        ; $47a8: $c4 $00 $2f
    ccf                                           ; $47ab: $3f
    db $d3                                        ; $47ac: $d3
    ccf                                           ; $47ad: $3f
    di                                            ; $47ae: $f3
    or a                                          ; $47af: $b7
    ld l, e                                       ; $47b0: $6b
    or a                                          ; $47b1: $b7
    nop                                           ; $47b2: $00
    ld l, a                                       ; $47b3: $6f
    ld b, $cd                                     ; $47b4: $06 $cd
    rrca                                          ; $47b6: $0f
    add [hl]                                      ; $47b7: $86
    rrca                                          ; $47b8: $0f
    rst $10                                       ; $47b9: $d7
    inc e                                         ; $47ba: $1c
    nop                                           ; $47bb: $00
    adc a                                         ; $47bc: $8f
    ld b, $bc                                     ; $47bd: $06 $bc
    ld b, $07                                     ; $47bf: $06 $07
    scf                                           ; $47c1: $37
    jr nc, jr_0d1_47c7                            ; $47c2: $30 $03

    nop                                           ; $47c4: $00
    inc h                                         ; $47c5: $24
    rrca                                          ; $47c6: $0f

jr_0d1_47c7:
    jr c, jr_0d1_4750                             ; $47c7: $38 $87

    sbc h                                         ; $47c9: $9c
    jp $e34c                                      ; $47ca: $c3 $4c $e3


    nop                                           ; $47cd: $00
    and [hl]                                      ; $47ce: $a6
    ld [de], a                                    ; $47cf: $12
    inc de                                        ; $47d0: $13
    ld l, d                                       ; $47d1: $6a
    adc e                                         ; $47d2: $8b
    add hl, bc                                    ; $47d3: $09
    sub b                                         ; $47d4: $90
    ld sp, hl                                     ; $47d5: $f9
    nop                                           ; $47d6: $00
    db $f4                                        ; $47d7: $f4
    db $ec                                        ; $47d8: $ec
    ld c, $6c                                     ; $47d9: $0e $6c
    ld b, $f4                                     ; $47db: $06 $f4
    ld [hl], d                                    ; $47dd: $72
    or h                                          ; $47de: $b4
    nop                                           ; $47df: $00
    ld [hl-], a                                   ; $47e0: $32
    add d                                         ; $47e1: $82
    halt                                          ; $47e2: $76
    add d                                         ; $47e3: $82

jr_0d1_47e4:
    ld [hl], d                                    ; $47e4: $72
    ld hl, sp+$6a                                 ; $47e5: $f8 $6a
    ld hl, sp+$00                                 ; $47e7: $f8 $00
    ld l, d                                       ; $47e9: $6a
    or a                                          ; $47ea: $b7
    ld l, a                                       ; $47eb: $6f
    or a                                          ; $47ec: $b7
    ld a, e                                       ; $47ed: $7b
    ccf                                           ; $47ee: $3f
    di                                            ; $47ef: $f3
    dec a                                         ; $47f0: $3d
    nop                                           ; $47f1: $00
    pop de                                        ; $47f2: $d1
    inc l                                         ; $47f3: $2c
    call z, $c626                                 ; $47f4: $cc $26 $c6
    pop af                                        ; $47f7: $f1
    add $f0                                       ; $47f8: $c6 $f0
    nop                                           ; $47fa: $00
    jp $5e69                                      ; $47fb: $c3 $69 $5e


    ld l, [hl]                                    ; $47fe: $6e
    ld d, l                                       ; $47ff: $55
    ld h, b                                       ; $4800: $60
    ld e, a                                       ; $4801: $5f
    ccf                                           ; $4802: $3f
    nop                                           ; $4803: $00
    dec h                                         ; $4804: $25
    sub b                                         ; $4805: $90
    adc a                                         ; $4806: $8f
    ret z                                         ; $4807: $c8

    rst $10                                       ; $4808: $d7
    rlca                                          ; $4809: $07
    ld c, a                                       ; $480a: $4f
    inc bc                                        ; $480b: $03
    nop                                           ; $480c: $00
    db $e4                                        ; $480d: $e4
    dec c                                         ; $480e: $0d
    db $f4                                        ; $480f: $f4
    dec c                                         ; $4810: $0d
    db $f4                                        ; $4811: $f4
    ld sp, hl                                     ; $4812: $f9
    push hl                                       ; $4813: $e5
    add hl, sp                                    ; $4814: $39
    nop                                           ; $4815: $00
    push hl                                       ; $4816: $e5
    sbc h                                         ; $4817: $9c
    push hl                                       ; $4818: $e5
    jr c, jr_0d1_47e4                             ; $4819: $38 $c9

    pop hl                                        ; $481b: $e1
    db $db                                        ; $481c: $db
    pop bc                                        ; $481d: $c1
    nop                                           ; $481e: $00
    cp e                                          ; $481f: $bb
    ret nc                                        ; $4820: $d0

    add d                                         ; $4821: $82
    ret nc                                        ; $4822: $d0

    add d                                         ; $4823: $82
    ld hl, sp+$2a                                 ; $4824: $f8 $2a
    ld hl, sp+$00                                 ; $4826: $f8 $00
    ld a, [hl-]                                   ; $4828: $3a
    add d                                         ; $4829: $82
    ld a, d                                       ; $482a: $7a
    add d                                         ; $482b: $82
    ld [hl], d                                    ; $482c: $72
    add d                                         ; $482d: $82
    ld [hl], d                                    ; $482e: $72
    ld [bc], a                                    ; $482f: $02
    ld bc, $c1f6                                  ; $4830: $01 $f6 $c1
    ld a, b                                       ; $4833: $78
    ret nz                                        ; $4834: $c0

    ld a, h                                       ; $4835: $7c
    ret nz                                        ; $4836: $c0

    ld a, [hl]                                    ; $4837: $7e
    jp RST_10                                     ; $4838: $c3 $10 $00


    ld a, a                                       ; $483b: $7f
    add b                                         ; $483c: $80
    ld a, a                                       ; $483d: $7f
    rst $38                                       ; $483e: $ff
    nop                                           ; $483f: $00
    ld hl, $9082                                  ; $4840: $21 $82 $90
    nop                                           ; $4843: $00
    ret nz                                        ; $4844: $c0

    adc l                                         ; $4845: $8d
    push bc                                       ; $4846: $c5
    sub c                                         ; $4847: $91
    or b                                          ; $4848: $b0
    ld b, l                                       ; $4849: $45
    call c, $000b                                 ; $484a: $dc $0b $00
    ld hl, sp-$01                                 ; $484d: $f8 $ff
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    push de                                       ; $4852: $d5
    inc bc                                        ; $4853: $03
    inc sp                                        ; $4854: $33
    nop                                           ; $4855: $00
    ld d, $ea                                     ; $4856: $16 $ea
    ld h, [hl]                                    ; $4858: $66
    sub l                                         ; $4859: $95
    adc h                                         ; $485a: $8c
    and e                                         ; $485b: $a3
    ret nz                                        ; $485c: $c0

    add e                                         ; $485d: $83
    ld b, b                                       ; $485e: $40
    cp $10                                        ; $485f: $fe $10
    ld [$f4f2], sp                                ; $4861: $08 $f2 $f4
    ld [c], a                                     ; $4864: $e2
    db $e4                                        ; $4865: $e4
    ld b, d                                       ; $4866: $42
    ld c, h                                       ; $4867: $4c
    nop                                           ; $4868: $00
    add d                                         ; $4869: $82
    sbc h                                         ; $486a: $9c
    sbc h                                         ; $486b: $9c
    ld e, $ec                                     ; $486c: $1e $ec
    ld c, $00                                     ; $486e: $0e $00
    cp $00                                        ; $4870: $fe $00
    cp $00                                        ; $4872: $fe $00
    nop                                           ; $4874: $00
    ld bc, $00fd                                  ; $4875: $01 $fd $00
    nop                                           ; $4878: $00
    rst $38                                       ; $4879: $ff
    ld a, a                                       ; $487a: $7f
    pop bc                                        ; $487b: $c1
    ld a, l                                       ; $487c: $7d
    jp $c63b                                      ; $487d: $c3 $3b $c6


    ld [hl], $00                                  ; $4880: $36 $00
    ldh a, [$37]                                  ; $4882: $f0 $37
    ldh a, [$37]                                  ; $4884: $f0 $37
    scf                                           ; $4886: $37
    ldh a, [$2b]                                  ; $4887: $f0 $2b
    ldh [rP1], a                                  ; $4889: $e0 $00
    nop                                           ; $488b: $00
    rst $38                                       ; $488c: $ff
    db $fc                                        ; $488d: $fc
    ldh a, [$1f]                                  ; $488e: $f0 $1f
    rst $20                                       ; $4890: $e7
    ld bc, $0083                                  ; $4891: $01 $83 $00
    nop                                           ; $4894: $00
    add c                                         ; $4895: $81
    ldh [$80], a                                  ; $4896: $e0 $80
    rrca                                          ; $4898: $0f
    add [hl]                                      ; $4899: $86
    sbc b                                         ; $489a: $98
    adc b                                         ; $489b: $88
    nop                                           ; $489c: $00
    nop                                           ; $489d: $00
    rst $38                                       ; $489e: $ff
    ld h, $20                                     ; $489f: $26 $20
    inc c                                         ; $48a1: $0c
    add c                                         ; $48a2: $81
    pop bc                                        ; $48a3: $c1
    ret z                                         ; $48a4: $c8

    nop                                           ; $48a5: $00
    add d                                         ; $48a6: $82
    ld h, d                                       ; $48a7: $62
    ld d, b                                       ; $48a8: $50
    jr nz, jr_0d1_48dc                            ; $48a9: $20 $31

    ld [de], a                                    ; $48ab: $12
    ld [de], a                                    ; $48ac: $12
    sbc c                                         ; $48ad: $99
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    cp $70                                        ; $48b0: $fe $70
    ld [hl-], a                                   ; $48b2: $32
    sbc b                                         ; $48b3: $98
    adc d                                         ; $48b4: $8a
    inc c                                         ; $48b5: $0c
    ld [bc], a                                    ; $48b6: $02
    nop                                           ; $48b7: $00
    ld b, $02                                     ; $48b8: $06 $02
    ld b, $c2                                     ; $48ba: $06 $c2
    db $e4                                        ; $48bc: $e4
    ld [c], a                                     ; $48bd: $e2
    inc [hl]                                      ; $48be: $34
    ld [bc], a                                    ; $48bf: $02
    nop                                           ; $48c0: $00
    ret z                                         ; $48c1: $c8

    dec de                                        ; $48c2: $1b
    ret nc                                        ; $48c3: $d0

    add hl, sp                                    ; $48c4: $39
    dec a                                         ; $48c5: $3d
    ldh [$38], a                                  ; $48c6: $e0 $38
    ret nz                                        ; $48c8: $c0

    nop                                           ; $48c9: $00
    ld a, b                                       ; $48ca: $78
    ret nz                                        ; $48cb: $c0

    ld [hl], b                                    ; $48cc: $70
    ret nz                                        ; $48cd: $c0

    ret nz                                        ; $48ce: $c0

    ld [hl], c                                    ; $48cf: $71
    ret nz                                        ; $48d0: $c0

    ld b, e                                       ; $48d1: $43
    nop                                           ; $48d2: $00
    ret nc                                        ; $48d3: $d0

    ld b, b                                       ; $48d4: $40
    ret nc                                        ; $48d5: $d0

    rla                                           ; $48d6: $17
    ret nz                                        ; $48d7: $c0

    ld c, a                                       ; $48d8: $4f
    ldh [$28], a                                  ; $48d9: $e0 $28
    nop                                           ; $48db: $00

jr_0d1_48dc:
    ld l, $4e                                     ; $48dc: $2e $4e
    inc [hl]                                      ; $48de: $34
    ld b, h                                       ; $48df: $44
    ld hl, $2330                                  ; $48e0: $21 $30 $23
    jr c, jr_0d1_48e5                             ; $48e3: $38 $00

jr_0d1_48e5:
    ld [$885a], sp                                ; $48e5: $08 $5a $88
    ld [$c222], sp                                ; $48e8: $08 $22 $c2
    dec c                                         ; $48eb: $0d
    dec sp                                        ; $48ec: $3b
    nop                                           ; $48ed: $00
    ld [$1808], sp                                ; $48ee: $08 $08 $18
    ret nc                                        ; $48f1: $d0

    jp $8791                                      ; $48f2: $c3 $91 $87


    ld [bc], a                                    ; $48f5: $02
    nop                                           ; $48f6: $00
    inc [hl]                                      ; $48f7: $34
    ld [bc], a                                    ; $48f8: $02
    inc [hl]                                      ; $48f9: $34
    ld b, $64                                     ; $48fa: $06 $64
    ld b, $4c                                     ; $48fc: $06 $4c
    ld c, d                                       ; $48fe: $4a
    nop                                           ; $48ff: $00
    ld c, b                                       ; $4900: $48
    ld a, [bc]                                    ; $4901: $0a
    ld e, b                                       ; $4902: $58
    ld [bc], a                                    ; $4903: $02
    ld [de], a                                    ; $4904: $12
    ld h, $12                                     ; $4905: $26 $12
    ld h, [hl]                                    ; $4907: $66
    ld bc, $c107                                  ; $4908: $01 $07 $c1
    rrca                                          ; $490b: $0f
    jp $3cf8                                      ; $490c: $c3 $f8 $3c


    ret nz                                        ; $490f: $c0

    ld b, c                                       ; $4910: $41
    ld [$4000], sp                                ; $4911: $08 $00 $40
    jp nz, $f003                                  ; $4914: $c2 $03 $f0

    ccf                                           ; $4917: $3f
    jr c, jr_0d1_4923                             ; $4918: $38 $09

    inc a                                         ; $491a: $3c
    nop                                           ; $491b: $00
    ld [$2c30], sp                                ; $491c: $08 $30 $2c
    ld sp, $1c2c                                  ; $491f: $31 $2c $1c
    ld l, h                                       ; $4922: $6c

jr_0d1_4923:
    inc e                                         ; $4923: $1c
    nop                                           ; $4924: $00
    db $ec                                        ; $4925: $ec
    db $f4                                        ; $4926: $f4
    ld l, l                                       ; $4927: $6d
    ldh a, [$cb]                                  ; $4928: $f0 $cb
    inc h                                         ; $492a: $24
    ld c, $30                                     ; $492b: $0e $30
    nop                                           ; $492d: $00
    inc b                                         ; $492e: $04
    ret nz                                        ; $492f: $c0

    jr nc, jr_0d1_4943                            ; $4930: $30 $11

    ret c                                         ; $4932: $d8

    swap d                                        ; $4933: $cb $32
    inc de                                        ; $4935: $13
    nop                                           ; $4936: $00
    jp nz, Jump_000_2221                          ; $4937: $c2 $21 $22

    ret nz                                        ; $493a: $c0

    pop de                                        ; $493b: $d1
    inc [hl]                                      ; $493c: $34
    ld [hl], $34                                  ; $493d: $36 $34
    nop                                           ; $493f: $00
    ld h, $34                                     ; $4940: $26 $34
    ld [hl+], a                                   ; $4942: $22

jr_0d1_4943:
    jr nc, jr_0d1_4957                            ; $4943: $30 $12

    jr c, jr_0d1_4971                             ; $4945: $38 $2a

    sbc b                                         ; $4947: $98
    nop                                           ; $4948: $00
    add d                                         ; $4949: $82
    sub [hl]                                      ; $494a: $96
    inc e                                         ; $494b: $1c
    jp z, $1f44                                   ; $494c: $ca $44 $1f

    jp nz, Jump_000_0037                          ; $494f: $c2 $37 $00

    jp nz, $2fc7                                  ; $4952: $c2 $c7 $2f

    rst $18                                       ; $4955: $df
    ccf                                           ; $4956: $3f

jr_0d1_4957:
    ld a, [hl]                                    ; $4957: $7e
    ret nz                                        ; $4958: $c0

    ld b, b                                       ; $4959: $40
    nop                                           ; $495a: $00
    ret nz                                        ; $495b: $c0

    add b                                         ; $495c: $80
    ld a, a                                       ; $495d: $7f
    rst $38                                       ; $495e: $ff
    nop                                           ; $495f: $00
    db $eb                                        ; $4960: $eb
    sub b                                         ; $4961: $90
    ret nc                                        ; $4962: $d0

    nop                                           ; $4963: $00
    jr nz, @-$38                                  ; $4964: $20 $c6

    ldh [rNR34], a                                ; $4966: $e0 $1e
    add h                                         ; $4968: $84
    ld e, a                                       ; $4969: $5f
    ld h, c                                       ; $496a: $61
    cp [hl]                                       ; $496b: $be
    nop                                           ; $496c: $00
    pop bc                                        ; $496d: $c1
    ld bc, $00fe                                  ; $496e: $01 $fe $00

jr_0d1_4971:
    nop                                           ; $4971: $00
    add c                                         ; $4972: $81
    or b                                          ; $4973: $b0
    ld bc, $6000                                  ; $4974: $01 $00 $60
    ld bc, $0343                                  ; $4977: $01 $43 $03
    ld b, $0c                                     ; $497a: $06 $0c
    inc de                                        ; $497c: $13
    jr c, jr_0d1_497f                             ; $497d: $38 $00

jr_0d1_497f:
    adc a                                         ; $497f: $8f
    rst $38                                       ; $4980: $ff
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    add [hl]                                      ; $4984: $86
    ld b, d                                       ; $4985: $42
    add d                                         ; $4986: $82
    nop                                           ; $4987: $00
    ld b, d                                       ; $4988: $42
    add d                                         ; $4989: $82
    ret nz                                        ; $498a: $c0

    ld a, [bc]                                    ; $498b: $0a
    ret z                                         ; $498c: $c8

    call z, $8cc2                                 ; $498d: $cc $c2 $8c
    nop                                           ; $4990: $00
    add [hl]                                      ; $4991: $86
    cp [hl]                                       ; $4992: $be
    cp $fe                                        ; $4993: $fe $fe
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    ld bc, $00fb                                  ; $4997: $01 $fb $00
    nop                                           ; $499a: $00
    ld a, a                                       ; $499b: $7f
    rst $38                                       ; $499c: $ff
    ld a, a                                       ; $499d: $7f
    ret nz                                        ; $499e: $c0

    ld b, e                                       ; $499f: $43
    ret nz                                        ; $49a0: $c0

    ld h, l                                       ; $49a1: $65
    ret nz                                        ; $49a2: $c0

    nop                                           ; $49a3: $00
    add [hl]                                      ; $49a4: $86
    ldh a, [$82]                                  ; $49a5: $f0 $82

jr_0d1_49a7:
    ld hl, sp-$3f                                 ; $49a7: $f8 $c1
    dec a                                         ; $49a9: $3d
    jp Jump_000_003b                              ; $49aa: $c3 $3b $00


    nop                                           ; $49ad: $00
    rst $38                                       ; $49ae: $ff
    ld d, a                                       ; $49af: $57
    ld [de], a                                    ; $49b0: $12
    ld b, b                                       ; $49b1: $40
    inc hl                                        ; $49b2: $23
    ld d, e                                       ; $49b3: $53
    ld [hl], b                                    ; $49b4: $70
    nop                                           ; $49b5: $00
    sub c                                         ; $49b6: $91
    ld h, b                                       ; $49b7: $60
    db $fc                                        ; $49b8: $fc
    rrc a                                         ; $49b9: $cb $0f
    ld b, a                                       ; $49bb: $47
    ld e, [hl]                                    ; $49bc: $5e
    cp a                                          ; $49bd: $bf
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    rst $38                                       ; $49c0: $ff
    dec [hl]                                      ; $49c1: $35
    dec b                                         ; $49c2: $05
    adc b                                         ; $49c3: $88
    sbc b                                         ; $49c4: $98
    push de                                       ; $49c5: $d5
    sub e                                         ; $49c6: $93
    nop                                           ; $49c7: $00
    ld [$1011], a                                 ; $49c8: $ea $11 $10
    rst $38                                       ; $49cb: $ff
    ld [hl], a                                    ; $49cc: $77
    sub b                                         ; $49cd: $90
    call c, Call_000_00ae                         ; $49ce: $dc $ae $00
    nop                                           ; $49d1: $00
    cp $fc                                        ; $49d2: $fe $fc
    ld [bc], a                                    ; $49d4: $02
    db $ed                                        ; $49d5: $ed
    inc bc                                        ; $49d6: $03
    ld l, l                                       ; $49d7: $6d
    inc bc                                        ; $49d8: $03
    nop                                           ; $49d9: $00
    ld [bc], a                                    ; $49da: $02
    xor h                                         ; $49db: $ac
    add d                                         ; $49dc: $82
    add h                                         ; $49dd: $84
    ret nc                                        ; $49de: $d0

    jp nz, $0654                                  ; $49df: $c2 $54 $06

    nop                                           ; $49e2: $00
    daa                                           ; $49e3: $27
    rst $20                                       ; $49e4: $e7
    jr jr_0d1_49a7                                ; $49e5: $18 $c0

    add d                                         ; $49e7: $82
    ld b, d                                       ; $49e8: $42
    add h                                         ; $49e9: $84
    ld [hl], h                                    ; $49ea: $74
    nop                                           ; $49eb: $00
    pop hl                                        ; $49ec: $e1
    cpl                                           ; $49ed: $2f
    ld [c], a                                     ; $49ee: $e2
    dec hl                                        ; $49ef: $2b
    ret nz                                        ; $49f0: $c0

    ld b, c                                       ; $49f1: $41
    ret nz                                        ; $49f2: $c0

    ld [hl], c                                    ; $49f3: $71
    nop                                           ; $49f4: $00
    ld a, a                                       ; $49f5: $7f
    and c                                         ; $49f6: $a1
    ld b, b                                       ; $49f7: $40
    add b                                         ; $49f8: $80
    or e                                          ; $49f9: $b3
    db $d3                                        ; $49fa: $d3
    adc [hl]                                      ; $49fb: $8e
    add sp, $00                                   ; $49fc: $e8 $00
    jr z, jr_0d1_4a48                             ; $49fe: $28 $48

    ld b, a                                       ; $4a00: $47
    inc b                                         ; $4a01: $04
    ld b, b                                       ; $4a02: $40
    ld b, b                                       ; $4a03: $40
    ld h, e                                       ; $4a04: $63
    ld h, h                                       ; $4a05: $64
    nop                                           ; $4a06: $00
    ld sp, $0a1b                                  ; $4a07: $31 $1b $0a
    dec bc                                        ; $4a0a: $0b
    nop                                           ; $4a0b: $00
    ld [bc], a                                    ; $4a0c: $02
    ldh a, [$80]                                  ; $4a0d: $f0 $80
    nop                                           ; $4a0f: $00
    dec de                                        ; $4a10: $1b
    ld l, e                                       ; $4a11: $6b
    adc a                                         ; $4a12: $8f
    or b                                          ; $4a13: $b0
    sbc [hl]                                      ; $4a14: $9e
    ld e, [hl]                                    ; $4a15: $5e
    inc b                                         ; $4a16: $04
    dec b                                         ; $4a17: $05
    nop                                           ; $4a18: $00
    ld a, [hl+]                                   ; $4a19: $2a
    jr c, jr_0d1_4a1e                             ; $4a1a: $38 $02

    ld [hl], h                                    ; $4a1c: $74
    ld l, h                                       ; $4a1d: $6c

jr_0d1_4a1e:
    ld b, d                                       ; $4a1e: $42
    call nc, $00c2                                ; $4a1f: $d4 $c2 $00
    ld c, b                                       ; $4a22: $48
    ld [bc], a                                    ; $4a23: $02
    db $10                                        ; $4a24: $10
    ld [de], a                                    ; $4a25: $12
    ld e, b                                       ; $4a26: $58
    ld a, [de]                                    ; $4a27: $1a
    call z, $004e                                 ; $4a28: $cc $4e $00
    adc $0f                                       ; $4a2b: $ce $0f
    jp nz, Jump_000_3433                          ; $4a2d: $c2 $33 $34

    call nz, $c22b                                ; $4a30: $c4 $2b $c2
    nop                                           ; $4a33: $00
    pop bc                                        ; $4a34: $c1
    inc hl                                        ; $4a35: $23
    ret nz                                        ; $4a36: $c0

    inc de                                        ; $4a37: $13
    ld a, d                                       ; $4a38: $7a
    ret nz                                        ; $4a39: $c0

    ld b, b                                       ; $4a3a: $40
    ret nz                                        ; $4a3b: $c0

    nop                                           ; $4a3c: $00
    ldh [$78], a                                  ; $4a3d: $e0 $78
    dec sp                                        ; $4a3f: $3b
    and a                                         ; $4a40: $a7
    pop hl                                        ; $4a41: $e1
    sbc $40                                       ; $4a42: $de $40
    inc a                                         ; $4a44: $3c
    nop                                           ; $4a45: $00
    ld a, b                                       ; $4a46: $78
    add hl, sp                                    ; $4a47: $39

jr_0d1_4a48:
    ld a, h                                       ; $4a48: $7c

Call_0d1_4a49:
    inc bc                                        ; $4a49: $03
    ld [hl], b                                    ; $4a4a: $70
    or c                                          ; $4a4b: $b1
    ld hl, sp+$3d                                 ; $4a4c: $f8 $3d
    nop                                           ; $4a4e: $00
    ld b, h                                       ; $4a4f: $44
    ret nz                                        ; $4a50: $c0

    ld h, b                                       ; $4a51: $60
    ld l, d                                       ; $4a52: $6a
    inc b                                         ; $4a53: $04
    sbc [hl]                                      ; $4a54: $9e
    inc b                                         ; $4a55: $04
    ld [$6300], sp                                ; $4a56: $08 $00 $63
    jp nc, $34ec                                  ; $4a59: $d2 $ec $34

    ret nz                                        ; $4a5c: $c0

    add [hl]                                      ; $4a5d: $86
    cp h                                          ; $4a5e: $bc
    ld a, b                                       ; $4a5f: $78
    nop                                           ; $4a60: $00
    inc [hl]                                      ; $4a61: $34
    ld [hl+], a                                   ; $4a62: $22
    ret nc                                        ; $4a63: $d0

    ld [de], a                                    ; $4a64: $12
    db $ed                                        ; $4a65: $ed
    inc bc                                        ; $4a66: $03
    ld a, l                                       ; $4a67: $7d
    inc bc                                        ; $4a68: $03
    nop                                           ; $4a69: $00
    sbc h                                         ; $4a6a: $9c
    add d                                         ; $4a6b: $82
    ld a, h                                       ; $4a6c: $7c
    ld [bc], a                                    ; $4a6d: $02
    db $fc                                        ; $4a6e: $fc
    cp $7c                                        ; $4a6f: $fe $7c
    ld [bc], a                                    ; $4a71: $02
    nop                                           ; $4a72: $00
    ret nc                                        ; $4a73: $d0

    ld [de], a                                    ; $4a74: $12
    pop bc                                        ; $4a75: $c1
    dec b                                         ; $4a76: $05
    call nz, $c443                                ; $4a77: $c4 $43 $c4
    ld h, e                                       ; $4a7a: $63
    nop                                           ; $4a7b: $00
    pop hl                                        ; $4a7c: $e1
    inc sp                                        ; $4a7d: $33
    ret nc                                        ; $4a7e: $d0

    add hl, de                                    ; $4a7f: $19
    add b                                         ; $4a80: $80
    ld a, a                                       ; $4a81: $7f
    rst $38                                       ; $4a82: $ff
    nop                                           ; $4a83: $00
    nop                                           ; $4a84: $00
    ld hl, sp-$80                                 ; $4a85: $f8 $80
    ldh [$c4], a                                  ; $4a87: $e0 $c4
    ld bc, $04f1                                  ; $4a89: $01 $f1 $04
    ld hl, sp+$00                                 ; $4a8c: $f8 $00
    db $fc                                        ; $4a8e: $fc
    ld hl, sp+$3e                                 ; $4a8f: $f8 $3e
    db $fc                                        ; $4a91: $fc
    rst $38                                       ; $4a92: $ff
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    cp $78                                        ; $4a97: $fe $78
    jr z, @-$56                                   ; $4a99: $28 $a8

    xor b                                         ; $4a9b: $a8
    add c                                         ; $4a9c: $81
    nop                                           ; $4a9d: $00
    dec b                                         ; $4a9e: $05
    ld [$1770], sp                                ; $4a9f: $08 $70 $17
    ld [hl], b                                    ; $4aa2: $70
    scf                                           ; $4aa3: $37
    db $10                                        ; $4aa4: $10
    ld [$3e3c], sp                                ; $4aa5: $08 $3c $3e
    db $fc                                        ; $4aa8: $fc
    ld [bc], a                                    ; $4aa9: $02
    ld [bc], a                                    ; $4aaa: $02
    cp $fc                                        ; $4aab: $fe $fc
    ld [de], a                                    ; $4aad: $12
    db $fc                                        ; $4aae: $fc
    ld [bc], a                                    ; $4aaf: $02
    ld [bc], a                                    ; $4ab0: $02
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    nop                                           ; $4ab3: $00
    cp $fe                                        ; $4ab4: $fe $fe
    nop                                           ; $4ab6: $00
    nop                                           ; $4ab7: $00
    ld bc, $00e3                                  ; $4ab8: $01 $e3 $00
    ld [$ff7f], sp                                ; $4abb: $08 $7f $ff
    ld a, a                                       ; $4abe: $7f
    ret nz                                        ; $4abf: $c0

    ld [bc], a                                    ; $4ac0: $02
    jr z, jr_0d1_4b02                             ; $4ac1: $28 $3f

    cp $3f                                        ; $4ac3: $fe $3f
    nop                                           ; $4ac5: $00
    cp $ff                                        ; $4ac6: $fe $ff
    nop                                           ; $4ac8: $00
    ldh [$f0], a                                  ; $4ac9: $e0 $f0
    add [hl]                                      ; $4acb: $86
    ld c, c                                       ; $4acc: $49
    dec c                                         ; $4acd: $0d
    nop                                           ; $4ace: $00
    or a                                          ; $4acf: $b7
    push bc                                       ; $4ad0: $c5
    cp e                                          ; $4ad1: $bb
    db $d3                                        ; $4ad2: $d3
    ld [c], a                                     ; $4ad3: $e2
    adc l                                         ; $4ad4: $8d
    ld bc, $0000                                  ; $4ad5: $01 $00 $00
    ld a, [hl]                                    ; $4ad8: $7e
    rst $38                                       ; $4ad9: $ff
    nop                                           ; $4ada: $00
    rlca                                          ; $4adb: $07
    rrca                                          ; $4adc: $0f
    ld sp, $dcc0                                  ; $4add: $31 $c0 $dc
    nop                                           ; $4ae0: $00
    ld [hl-], a                                   ; $4ae1: $32
    reti                                          ; $4ae2: $d9


    ld [hl-], a                                   ; $4ae3: $32
    dec c                                         ; $4ae4: $0d
    ld d, [hl]                                    ; $4ae5: $56
    ret                                           ; $4ae6: $c9


    ld h, h                                       ; $4ae7: $64
    jr z, jr_0d1_4aea                             ; $4ae8: $28 $00

jr_0d1_4aea:
    ld d, $00                                     ; $4aea: $16 $00
    cp $fc                                        ; $4aec: $fe $fc
    ld [bc], a                                    ; $4aee: $02
    db $fc                                        ; $4aef: $fc
    cp $fc                                        ; $4af0: $fe $fc
    nop                                           ; $4af2: $00
    ld a, [hl]                                    ; $4af3: $7e
    db $fc                                        ; $4af4: $fc
    add d                                         ; $4af5: $82
    db $fc                                        ; $4af6: $fc
    ld b, d                                       ; $4af7: $42
    jp nz, $82dc                                  ; $4af8: $c2 $dc $82

    nop                                           ; $4afb: $00
    call c, $c13f                                 ; $4afc: $dc $3f $c1
    ccf                                           ; $4aff: $3f
    pop bc                                        ; $4b00: $c1
    ret nz                                        ; $4b01: $c0

jr_0d1_4b02:
    inc a                                         ; $4b02: $3c
    jp nz, $3e00                                  ; $4b03: $c2 $00 $3e

    ld a, [hl]                                    ; $4b06: $7e
    ret nz                                        ; $4b07: $c0

    ld a, h                                       ; $4b08: $7c
    ret nz                                        ; $4b09: $c0

    dec a                                         ; $4b0a: $3d
    pop bc                                        ; $4b0b: $c1
    ld a, $00                                     ; $4b0c: $3e $00
    ret nz                                        ; $4b0e: $c0

    ld a, h                                       ; $4b0f: $7c
    add d                                         ; $4b10: $82
    ld a, $c1                                     ; $4b11: $3e $c1
    adc l                                         ; $4b13: $8d
    ld a, [bc]                                    ; $4b14: $0a
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    ld [hl], b                                    ; $4b17: $70

jr_0d1_4b18:
    or h                                          ; $4b18: $b4
    inc bc                                        ; $4b19: $03
    ld b, [hl]                                    ; $4b1a: $46
    adc a                                         ; $4b1b: $8f
    ldh a, [rIF]                                  ; $4b1c: $f0 $0f
    or b                                          ; $4b1e: $b0
    nop                                           ; $4b1f: $00
    cpl                                           ; $4b20: $2f
    ld d, $23                                     ; $4b21: $16 $23
    ld h, d                                       ; $4b23: $62
    add hl, sp                                    ; $4b24: $39
    adc a                                         ; $4b25: $8f
    or c                                          ; $4b26: $b1
    dec b                                         ; $4b27: $05
    nop                                           ; $4b28: $00
    inc b                                         ; $4b29: $04

jr_0d1_4b2a:
    sbc b                                         ; $4b2a: $98
    ld a, [hl+]                                   ; $4b2b: $2a
    db $10                                        ; $4b2c: $10
    cp d                                          ; $4b2d: $ba
    xor d                                         ; $4b2e: $aa
    jp c, Jump_000_00ac                           ; $4b2f: $da $ac $00

    cp $c2                                        ; $4b32: $fe $c2
    db $ec                                        ; $4b34: $ec
    jp nz, $e2ec                                  ; $4b35: $c2 $ec $e2

    db $ec                                        ; $4b38: $ec
    add d                                         ; $4b39: $82
    nop                                           ; $4b3a: $00
    db $ec                                        ; $4b3b: $ec
    xor h                                         ; $4b3c: $ac
    and d                                         ; $4b3d: $a2
    db $ec                                        ; $4b3e: $ec
    ld [hl+], a                                   ; $4b3f: $22
    jp nz, Jump_0d1_42dc                          ; $4b40: $c2 $dc $42

    ld d, d                                       ; $4b43: $52
    call c, Call_000_087e                         ; $4b44: $dc $7e $08
    ld a, [hl]                                    ; $4b47: $7e
    ld a, h                                       ; $4b48: $7c
    ld [$3dc1], sp                                ; $4b49: $08 $c1 $3d
    ld [bc], a                                    ; $4b4c: $02
    nop                                           ; $4b4d: $00
    ccf                                           ; $4b4e: $3f
    nop                                           ; $4b4f: $00
    ret nz                                        ; $4b50: $c0

    ccf                                           ; $4b51: $3f
    rrca                                          ; $4b52: $0f
    rra                                           ; $4b53: $1f
    sbc $ed                                       ; $4b54: $de $ed
    adc $0a                                       ; $4b56: $ce $0a
    nop                                           ; $4b58: $00
    inc h                                         ; $4b59: $24
    pop hl                                        ; $4b5a: $e1
    jr nc, jr_0d1_4b2a                            ; $4b5b: $30 $cd

    or a                                          ; $4b5d: $b7
    ld [hl], $d9                                  ; $4b5e: $36 $d9
    adc b                                         ; $4b60: $88
    nop                                           ; $4b61: $00
    halt                                          ; $4b62: $76
    ld h, l                                       ; $4b63: $65
    ret z                                         ; $4b64: $c8

    push bc                                       ; $4b65: $c5
    ld l, a                                       ; $4b66: $6f
    and $8d                                       ; $4b67: $e6 $8d
    sbc c                                         ; $4b69: $99
    nop                                           ; $4b6a: $00
    ld d, d                                       ; $4b6b: $52
    cp d                                          ; $4b6c: $ba
    jr nz, jr_0d1_4b18                            ; $4b6d: $20 $a9

    ld de, $7830                                  ; $4b6f: $11 $30 $78
    ld [hl], b                                    ; $4b72: $70
    nop                                           ; $4b73: $00
    cp b                                          ; $4b74: $b8
    ld b, d                                       ; $4b75: $42
    sbc [hl]                                      ; $4b76: $9e
    add d                                         ; $4b77: $82
    ld a, $82                                     ; $4b78: $3e $82
    cp h                                          ; $4b7a: $bc
    ld [bc], a                                    ; $4b7b: $02
    jr c, jr_0d1_4bfa                             ; $4b7c: $38 $7c

    ld a, [hl]                                    ; $4b7e: $7e
    add l                                         ; $4b7f: $85
    nop                                           ; $4b80: $00
    adc e                                         ; $4b81: $8b
    ld [$10bd], sp                                ; $4b82: $08 $bd $10
    rst $38                                       ; $4b85: $ff
    pop bc                                        ; $4b86: $c1
    cp $00                                        ; $4b87: $fe $00
    ccf                                           ; $4b89: $3f
    ld hl, sp+$3f                                 ; $4b8a: $f8 $3f
    db $fc                                        ; $4b8c: $fc
    add b                                         ; $4b8d: $80
    ld a, a                                       ; $4b8e: $7f
    rst $38                                       ; $4b8f: $ff
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    add c                                         ; $4b92: $81
    add b                                         ; $4b93: $80
    inc c                                         ; $4b94: $0c
    dec bc                                        ; $4b95: $0b
    ret c                                         ; $4b96: $d8

    rst $10                                       ; $4b97: $d7
    call c, Call_000_0013                         ; $4b98: $dc $13 $00
    ret nz                                        ; $4b9b: $c0

    and a                                         ; $4b9c: $a7
    ldh a, [rBCPS]                                ; $4b9d: $f0 $68
    rst $38                                       ; $4b9f: $ff
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    nop                                           ; $4ba3: $00
    sbc b                                         ; $4ba4: $98
    ld l, b                                       ; $4ba5: $68
    jr nc, @-$3e                                  ; $4ba6: $30 $c0

    inc sp                                        ; $4ba8: $33
    jp nc, $35f6                                  ; $4ba9: $d2 $f6 $35

    ld [$cbcc], sp                                ; $4bac: $08 $cc $cb
    ld sp, $102e                                  ; $4baf: $31 $2e $10
    ld [$fc02], sp                                ; $4bb2: $08 $02 $fc
    jp nz, $fc40                                  ; $4bb5: $c2 $40 $fc

    cp [hl]                                       ; $4bb8: $be
    nop                                           ; $4bb9: $00
    ld c, $fc                                     ; $4bba: $0e $fc
    ld e, $fc                                     ; $4bbc: $1e $fc
    cp $00                                        ; $4bbe: $fe $00
    nop                                           ; $4bc0: $00
    cp $fe                                        ; $4bc1: $fe $fe
    nop                                           ; $4bc3: $00
    nop                                           ; $4bc4: $00
    ld bc, $00d4                                  ; $4bc5: $01 $d4 $00
    db $10                                        ; $4bc8: $10
    rst $38                                       ; $4bc9: $ff
    ld a, a                                       ; $4bca: $7f
    ret nz                                        ; $4bcb: $c0

    ld [bc], a                                    ; $4bcc: $02

jr_0d1_4bcd:
    jr nc, jr_0d1_4bcd                            ; $4bcd: $30 $fe

    ccf                                           ; $4bcf: $3f
    cp $3f                                        ; $4bd0: $fe $3f
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    rst $38                                       ; $4bd4: $ff
    rra                                           ; $4bd5: $1f
    inc e                                         ; $4bd6: $1c
    ld c, a                                       ; $4bd7: $4f
    ld d, b                                       ; $4bd8: $50
    pop de                                        ; $4bd9: $d1
    xor h                                         ; $4bda: $ac
    nop                                           ; $4bdb: $00
    add [hl]                                      ; $4bdc: $86
    ld c, b                                       ; $4bdd: $48
    ld sp, $32b6                                  ; $4bde: $31 $b6 $32

jr_0d1_4be1:
    ld e, b                                       ; $4be1: $58
    ld a, b                                       ; $4be2: $78
    or l                                          ; $4be3: $b5
    nop                                           ; $4be4: $00
    rst $38                                       ; $4be5: $ff
    nop                                           ; $4be6: $00
    jr jr_0d1_4be1                                ; $4be7: $18 $f8

    ld h, $fa                                     ; $4be9: $26 $fa
    cp e                                          ; $4beb: $bb
    ld d, l                                       ; $4bec: $55
    nop                                           ; $4bed: $00
    call Call_0d1_53b3                            ; $4bee: $cd $b3 $53
    ld l, b                                       ; $4bf1: $68
    dec [hl]                                      ; $4bf2: $35
    ld c, $4c                                     ; $4bf3: $0e $4c
    sub e                                         ; $4bf5: $93
    nop                                           ; $4bf6: $00
    cp $00                                        ; $4bf7: $fe $00
    ld [bc], a                                    ; $4bf9: $02

jr_0d1_4bfa:
    db $fc                                        ; $4bfa: $fc
    ld [bc], a                                    ; $4bfb: $02
    db $fc                                        ; $4bfc: $fc
    add d                                         ; $4bfd: $82
    db $fc                                        ; $4bfe: $fc
    nop                                           ; $4bff: $00
    add d                                         ; $4c00: $82
    add b                                         ; $4c01: $80
    ld b, d                                       ; $4c02: $42
    ret nz                                        ; $4c03: $c0

    ld a, $fc                                     ; $4c04: $3e $fc
    ld a, $fc                                     ; $4c06: $3e $fc
    sub b                                         ; $4c08: $90
    ld a, $38                                     ; $4c09: $3e $38
    ret nz                                        ; $4c0b: $c0

    ld a, a                                       ; $4c0c: $7f
    ld c, e                                       ; $4c0d: $4b
    ld [$8479], sp                                ; $4c0e: $08 $79 $84
    db $fd                                        ; $4c11: $fd
    ld [bc], a                                    ; $4c12: $02
    nop                                           ; $4c13: $00
    rst $18                                       ; $4c14: $df
    jr nz, jr_0d1_4c27                            ; $4c15: $20 $10

    jr nc, jr_0d1_4c7d                            ; $4c17: $30 $64

    ld l, l                                       ; $4c19: $6d
    ld sp, $003a                                  ; $4c1a: $31 $3a $00
    cp a                                          ; $4c1d: $bf
    nop                                           ; $4c1e: $00
    ld a, a                                       ; $4c1f: $7f
    nop                                           ; $4c20: $00
    ld c, e                                       ; $4c21: $4b
    call nc, $d04b                                ; $4c22: $d4 $4b $d0
    nop                                           ; $4c25: $00
    jp hl                                         ; $4c26: $e9


jr_0d1_4c27:
    ld [hl+], a                                   ; $4c27: $22
    inc h                                         ; $4c28: $24
    add sp, -$5b                                  ; $4c29: $e8 $a5
    adc $04                                       ; $4c2b: $ce $04
    db $ed                                        ; $4c2d: $ed
    nop                                           ; $4c2e: $00
    db $10                                        ; $4c2f: $10
    push af                                       ; $4c30: $f5
    inc b                                         ; $4c31: $04
    pop af                                        ; $4c32: $f1
    ld [hl-], a                                   ; $4c33: $32
    ldh a, [$92]                                  ; $4c34: $f0 $92
    ldh a, [rP1]                                  ; $4c36: $f0 $00
    ld e, [hl]                                    ; $4c38: $5e
    db $fc                                        ; $4c39: $fc
    ld e, $fc                                     ; $4c3a: $1e $fc
    ld [hl+], a                                   ; $4c3c: $22
    ld h, b                                       ; $4c3d: $60
    ld [bc], a                                    ; $4c3e: $02
    ld b, b                                       ; $4c3f: $40
    ld bc, $5c1e                                  ; $4c40: $01 $1e $5c
    ld e, $5c                                     ; $4c43: $1e $5c
    ld a, a                                       ; $4c45: $7f
    ret nz                                        ; $4c46: $c0

    ld a, [hl]                                    ; $4c47: $7e
    add c                                         ; $4c48: $81
    jr nc, @+$42                                  ; $4c49: $30 $40

    cp a                                          ; $4c4b: $bf
    ld [bc], a                                    ; $4c4c: $02
    nop                                           ; $4c4d: $00
    inc bc                                        ; $4c4e: $03
    inc e                                         ; $4c4f: $1c
    ld bc, $6706                                  ; $4c50: $01 $06 $67
    sbc b                                         ; $4c53: $98
    nop                                           ; $4c54: $00
    rra                                           ; $4c55: $1f
    ld h, b                                       ; $4c56: $60
    ld b, b                                       ; $4c57: $40
    ccf                                           ; $4c58: $3f
    ld h, e                                       ; $4c59: $63
    dec e                                         ; $4c5a: $1d
    call nz, Call_000_00b8                        ; $4c5b: $c4 $b8 $00
    add d                                         ; $4c5e: $82
    add c                                         ; $4c5f: $81
    rst $38                                       ; $4c60: $ff
    inc b                                         ; $4c61: $04
    db $fc                                        ; $4c62: $fc
    ld a, [de]                                    ; $4c63: $1a
    pop hl                                        ; $4c64: $e1
    call nc, $c100                                ; $4c65: $d4 $00 $c1
    xor h                                         ; $4c68: $ac
    ld d, h                                       ; $4c69: $54
    adc c                                         ; $4c6a: $89
    inc h                                         ; $4c6b: $24
    jr @-$22                                      ; $4c6c: $18 $dc

    and h                                         ; $4c6e: $a4
    db $10                                        ; $4c6f: $10
    inc c                                         ; $4c70: $0c
    db $f4                                        ; $4c71: $f4
    cp [hl]                                       ; $4c72: $be
    ld [hl], h                                    ; $4c73: $74
    nop                                           ; $4c74: $00
    ld a, $bc                                     ; $4c75: $3e $bc
    ld a, [hl]                                    ; $4c77: $7e
    ld a, h                                       ; $4c78: $7c
    ld [de], a                                    ; $4c79: $12
    ld a, [hl]                                    ; $4c7a: $7e

jr_0d1_4c7b:
    db $fc                                        ; $4c7b: $fc
    ld a, [hl]                                    ; $4c7c: $7e

jr_0d1_4c7d:
    adc b                                         ; $4c7d: $88
    nop                                           ; $4c7e: $00
    cp $fc                                        ; $4c7f: $fe $fc
    inc [hl]                                      ; $4c81: $34
    ld [$00be], sp                                ; $4c82: $08 $be $00
    ld b, b                                       ; $4c85: $40
    cp l                                          ; $4c86: $bd
    ld b, c                                       ; $4c87: $41
    ldh a, [rVBK]                                 ; $4c88: $f0 $4f
    ldh a, [rVBK]                                 ; $4c8a: $f0 $4f
    add b                                         ; $4c8c: $80
    nop                                           ; $4c8d: $00
    ld a, a                                       ; $4c8e: $7f
    rst $38                                       ; $4c8f: $ff
    nop                                           ; $4c90: $00
    rlca                                          ; $4c91: $07
    dec de                                        ; $4c92: $1b
    rrca                                          ; $4c93: $0f
    rla                                           ; $4c94: $17
    rrca                                          ; $4c95: $0f
    nop                                           ; $4c96: $00
    inc de                                        ; $4c97: $13
    rst $00                                       ; $4c98: $c7
    jr z, jr_0d1_4c7b                             ; $4c99: $28 $e0

    ret nc                                        ; $4c9b: $d0

    nop                                           ; $4c9c: $00
    rst $38                                       ; $4c9d: $ff
    rst $38                                       ; $4c9e: $ff
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    inc c                                         ; $4ca3: $0c
    db $f4                                        ; $4ca4: $f4
    inc e                                         ; $4ca5: $1c
    db $e4                                        ; $4ca6: $e4
    inc a                                         ; $4ca7: $3c
    ld bc, $fbc4                                  ; $4ca8: $01 $c4 $fb
    ld a, [bc]                                    ; $4cab: $0a
    dec b                                         ; $4cac: $05
    inc bc                                        ; $4cad: $03
    rst $38                                       ; $4cae: $ff
    nop                                           ; $4caf: $00
    db $10                                        ; $4cb0: $10
    ld [$fe41], sp                                ; $4cb1: $08 $41 $fe
    jr c, jr_0d1_4cb6                             ; $4cb4: $38 $00

jr_0d1_4cb6:
    ld b, d                                       ; $4cb6: $42
    ld a, h                                       ; $4cb7: $7c
    ld a, [c]                                     ; $4cb8: $f2
    ld a, h                                       ; $4cb9: $7c
    ld e, $3c                                     ; $4cba: $1e $3c
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    cp $fe                                        ; $4cbf: $fe $fe
    nop                                           ; $4cc1: $00

Call_0d1_4cc2:
    nop                                           ; $4cc2: $00
    ld bc, $00e4                                  ; $4cc3: $01 $e4 $00
    dec c                                         ; $4cc6: $0d
    rst $38                                       ; $4cc7: $ff
    ld a, a                                       ; $4cc8: $7f
    ret nz                                        ; $4cc9: $c0

    ld a, a                                       ; $4cca: $7f
    inc bc                                        ; $4ccb: $03
    nop                                           ; $4ccc: $00
    ld [bc], a                                    ; $4ccd: $02
    db $10                                        ; $4cce: $10
    ld a, [hl]                                    ; $4ccf: $7e
    ld [bc], a                                    ; $4cd0: $02
    nop                                           ; $4cd1: $00
    jr nz, @+$01                                  ; $4cd2: $20 $ff

    nop                                           ; $4cd4: $00
    ld bc, $e800                                  ; $4cd5: $01 $00 $e8
    rlca                                          ; $4cd8: $07
    jp $b18f                                      ; $4cd9: $c3 $8f $b1


    nop                                           ; $4cdc: $00
    inc hl                                        ; $4cdd: $23
    ld [hl], h                                    ; $4cde: $74
    ld [hl], a                                    ; $4cdf: $77
    cp $7c                                        ; $4ce0: $fe $7c
    cp $ff                                        ; $4ce2: $fe $ff
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    pop bc                                        ; $4ce6: $c1
    pop hl                                        ; $4ce7: $e1
    inc c                                         ; $4ce8: $0c
    ld b, $d3                                     ; $4ce9: $06 $d3
    rst $38                                       ; $4ceb: $ff
    rst $38                                       ; $4cec: $ff
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    sub b                                         ; $4cef: $90
    nop                                           ; $4cf0: $00
    dec l                                         ; $4cf1: $2d
    call Call_000_3218                            ; $4cf2: $cd $18 $32
    cp $00                                        ; $4cf5: $fe $00
    nop                                           ; $4cf7: $00
    ld [bc], a                                    ; $4cf8: $02
    db $fc                                        ; $4cf9: $fc
    ld a, $3c                                     ; $4cfa: $3e $3c
    ld e, $dc                                     ; $4cfc: $1e $dc
    ld [hl+], a                                   ; $4cfe: $22
    jp nz, $9200                                  ; $4cff: $c2 $00 $92

    ld h, d                                       ; $4d02: $62
    adc [hl]                                      ; $4d03: $8e
    db $fc                                        ; $4d04: $fc
    ld c, [hl]                                    ; $4d05: $4e
    db $fc                                        ; $4d06: $fc
    db $fc                                        ; $4d07: $fc
    pop bc                                        ; $4d08: $c1
    ld [bc], a                                    ; $4d09: $02
    db $fc                                        ; $4d0a: $fc
    pop bc                                        ; $4d0b: $c1
    ld a, [$f8c1]                                 ; $4d0c: $fa $c1 $f8
    jp $0002                                      ; $4d0f: $c3 $02 $00


    jp nz, $0280                                  ; $4d12: $c2 $80 $02

    ld [$d0dc], sp                                ; $4d15: $08 $dc $d0
    cp b                                          ; $4d18: $b8
    and l                                         ; $4d19: $a5
    jp z, $05f1                                   ; $4d1a: $ca $f1 $05

    nop                                           ; $4d1d: $00
    add e                                         ; $4d1e: $83
    inc h                                         ; $4d1f: $24
    ld h, e                                       ; $4d20: $63
    ld l, l                                       ; $4d21: $6d
    rst $00                                       ; $4d22: $c7
    ld a, c                                       ; $4d23: $79
    or [hl]                                       ; $4d24: $b6
    ld d, b                                       ; $4d25: $50
    nop                                           ; $4d26: $00
    adc a                                         ; $4d27: $8f
    add b                                         ; $4d28: $80
    nop                                           ; $4d29: $00
    ldh [rIE], a                                  ; $4d2a: $e0 $ff
    sbc a                                         ; $4d2c: $9f
    and a                                         ; $4d2d: $a7
    inc bc                                        ; $4d2e: $03
    nop                                           ; $4d2f: $00
    call z, $d332                                 ; $4d30: $cc $32 $d3
    adc [hl]                                      ; $4d33: $8e
    dec c                                         ; $4d34: $0d
    jr c, @+$15                                   ; $4d35: $38 $13

    ld b, c                                       ; $4d37: $41
    nop                                           ; $4d38: $00
    add e                                         ; $4d39: $83
    ld l, [hl]                                    ; $4d3a: $6e
    db $fc                                        ; $4d3b: $fc
    ld a, $fc                                     ; $4d3c: $3e $fc
    add d                                         ; $4d3e: $82
    ld c, $22                                     ; $4d3f: $0e $22
    nop                                           ; $4d41: $00
    sbc $ec                                       ; $4d42: $de $ec
    ld c, $9c                                     ; $4d44: $0e $9c
    sbc [hl]                                      ; $4d46: $9e
    sbc [hl]                                      ; $4d47: $9e
    call c, $001e                                 ; $4d48: $dc $1e $00
    sbc h                                         ; $4d4b: $9c
    ccf                                           ; $4d4c: $3f
    push bc                                       ; $4d4d: $c5
    ccf                                           ; $4d4e: $3f
    call nz, $c07b                                ; $4d4f: $c4 $7b $c0
    ld a, l                                       ; $4d52: $7d
    ld [$bec0], sp                                ; $4d53: $08 $c0 $be
    ret nz                                        ; $4d56: $c0

    cp a                                          ; $4d57: $bf
    ld [bc], a                                    ; $4d58: $02
    db $10                                        ; $4d59: $10
    sbc a                                         ; $4d5a: $9f
    rst $08                                       ; $4d5b: $cf
    ld e, a                                       ; $4d5c: $5f
    nop                                           ; $4d5d: $00
    ld l, a                                       ; $4d5e: $6f
    jr c, jr_0d1_4d68                             ; $4d5f: $38 $07

    ld e, h                                       ; $4d61: $5c
    ld h, e                                       ; $4d62: $63
    daa                                           ; $4d63: $27
    ld l, e                                       ; $4d64: $6b
    inc sp                                        ; $4d65: $33
    nop                                           ; $4d66: $00
    ld [hl], l                                    ; $4d67: $75

jr_0d1_4d68:
    add hl, sp                                    ; $4d68: $39
    halt                                          ; $4d69: $76
    inc a                                         ; $4d6a: $3c
    sbc c                                         ; $4d6b: $99
    inc c                                         ; $4d6c: $0c
    rst $38                                       ; $4d6d: $ff
    dec bc                                        ; $4d6e: $0b
    nop                                           ; $4d6f: $00
    ld a, [c]                                     ; $4d70: $f2
    ld b, $fa                                     ; $4d71: $06 $fa
    nop                                           ; $4d73: $00
    rst $38                                       ; $4d74: $ff
    ld sp, hl                                     ; $4d75: $f9
    or $f0                                        ; $4d76: $f6 $f0
    nop                                           ; $4d78: $00
    ldh a, [$f1]                                  ; $4d79: $f0 $f1
    ld a, e                                       ; $4d7b: $7b
    ld a, a                                       ; $4d7c: $7f
    cp a                                          ; $4d7d: $bf
    ld e, $c2                                     ; $4d7e: $1e $c2
    ld e, $00                                     ; $4d80: $1e $00
    add d                                         ; $4d82: $82
    ld e, [hl]                                    ; $4d83: $5e
    ld [bc], a                                    ; $4d84: $02
    ld e, [hl]                                    ; $4d85: $5e
    add d                                         ; $4d86: $82
    add d                                         ; $4d87: $82
    ld e, $82                                     ; $4d88: $1e $82
    inc b                                         ; $4d8a: $04
    ld a, $3e                                     ; $4d8b: $3e $3e
    add d                                         ; $4d8d: $82
    ld a, $02                                     ; $4d8e: $3e $02
    ld [hl], $08                                  ; $4d90: $36 $08
    ldh a, [rLCDC]                                ; $4d92: $f0 $40
    nop                                           ; $4d94: $00
    db $f4                                        ; $4d95: $f4
    ld b, e                                       ; $4d96: $43
    ccf                                           ; $4d97: $3f
    rst $08                                       ; $4d98: $cf
    ccf                                           ; $4d99: $3f
    ret z                                         ; $4d9a: $c8

    add b                                         ; $4d9b: $80
    ld a, a                                       ; $4d9c: $7f
    nop                                           ; $4d9d: $00
    rst $38                                       ; $4d9e: $ff
    nop                                           ; $4d9f: $00
    and d                                         ; $4da0: $a2
    sbc h                                         ; $4da1: $9c
    ld sp, $270e                                  ; $4da2: $31 $0e $27
    rra                                           ; $4da5: $1f
    ld [bc], a                                    ; $4da6: $02
    ret nz                                        ; $4da7: $c0

    add b                                         ; $4da8: $80
    ccf                                           ; $4da9: $3f
    ld a, b                                       ; $4daa: $78
    nop                                           ; $4dab: $00
    add c                                         ; $4dac: $81
    call z, Call_0d1_7e08                         ; $4dad: $cc $08 $7e
    nop                                           ; $4db0: $00
    ld e, $08                                     ; $4db1: $1e $08
    inc d                                         ; $4db3: $14
    ret nz                                        ; $4db4: $c0

    nop                                           ; $4db5: $00
    inc c                                         ; $4db6: $0c
    dec bc                                        ; $4db7: $0b
    pop hl                                        ; $4db8: $e1
    db $10                                        ; $4db9: $10
    ld e, $e0                                     ; $4dba: $1e $e0
    ldh [$dc], a                                  ; $4dbc: $e0 $dc
    ld [$82fc], sp                                ; $4dbe: $08 $fc $82
    db $fc                                        ; $4dc1: $fc
    ld [bc], a                                    ; $4dc2: $02
    nop                                           ; $4dc3: $00
    ld c, $02                                     ; $4dc4: $0e $02
    ld b, $f2                                     ; $4dc6: $06 $f2
    db $fc                                        ; $4dc8: $fc
    ld a, [$9efc]                                 ; $4dc9: $fa $fc $9e
    nop                                           ; $4dcc: $00
    nop                                           ; $4dcd: $00
    cp $fe                                        ; $4dce: $fe $fe
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    ld bc, $00ce                                  ; $4dd2: $01 $ce $00
    inc c                                         ; $4dd5: $0c
    rst $38                                       ; $4dd6: $ff
    ld a, a                                       ; $4dd7: $7f
    ret nz                                        ; $4dd8: $c0

    ld a, a                                       ; $4dd9: $7f
    inc bc                                        ; $4dda: $03
    nop                                           ; $4ddb: $00
    ld [bc], a                                    ; $4ddc: $02
    jr nc, @+$01                                  ; $4ddd: $30 $ff

    nop                                           ; $4ddf: $00
    nop                                           ; $4de0: $00
    inc bc                                        ; $4de1: $03
    rrca                                          ; $4de2: $0f
    rra                                           ; $4de3: $1f
    dec a                                         ; $4de4: $3d
    scf                                           ; $4de5: $37
    ld l, e                                       ; $4de6: $6b
    pop hl                                        ; $4de7: $e1
    and c                                         ; $4de8: $a1
    nop                                           ; $4de9: $00
    ret nc                                        ; $4dea: $d0

    rst $08                                       ; $4deb: $cf
    sbc a                                         ; $4dec: $9f
    and b                                         ; $4ded: $a0
    ccf                                           ; $4dee: $3f
    ld b, b                                       ; $4def: $40
    rst $38                                       ; $4df0: $ff
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    ret nz                                        ; $4df3: $c0

    ld hl, sp+$4c                                 ; $4df4: $f8 $4c
    or h                                          ; $4df6: $b4
    sub e                                         ; $4df7: $93
    db $ed                                        ; $4df8: $ed
    ld b, c                                       ; $4df9: $41
    ld e, [hl]                                    ; $4dfa: $5e
    nop                                           ; $4dfb: $00
    ld e, d                                       ; $4dfc: $5a
    sbc l                                         ; $4dfd: $9d
    add $e3                                       ; $4dfe: $c6 $e3

Jump_0d1_4e00:
    rst $20                                       ; $4e00: $e7
    ldh a, [$fe]                                  ; $4e01: $f0 $fe
    nop                                           ; $4e03: $00
    nop                                           ; $4e04: $00
    ld [bc], a                                    ; $4e05: $02
    db $fc                                        ; $4e06: $fc
    ld [bc], a                                    ; $4e07: $02
    db $fc                                        ; $4e08: $fc
    add d                                         ; $4e09: $82
    db $fc                                        ; $4e0a: $fc
    jp nz, Jump_000_02fc                          ; $4e0b: $c2 $fc $02

    ld [c], a                                     ; $4e0e: $e2
    db $fc                                        ; $4e0f: $fc
    jp nz, $c21e                                  ; $4e10: $c2 $1e $c2

    ld c, $3c                                     ; $4e13: $0e $3c
    ld [$807e], sp                                ; $4e15: $08 $7e $80
    ld b, b                                       ; $4e18: $40
    ld b, b                                       ; $4e19: $40
    ld b, b                                       ; $4e1a: $40
    jr @+$29                                      ; $4e1b: $18 $27

    rra                                           ; $4e1d: $1f
    ld h, a                                       ; $4e1e: $67
    ld e, a                                       ; $4e1f: $5f
    dec l                                         ; $4e20: $2d
    nop                                           ; $4e21: $00
    ld a, d                                       ; $4e22: $7a
    ld b, b                                       ; $4e23: $40
    dec d                                         ; $4e24: $15
    jr nz, @+$3a                                  ; $4e25: $20 $38

    ld h, b                                       ; $4e27: $60
    rra                                           ; $4e28: $1f
    ld a, b                                       ; $4e29: $78
    nop                                           ; $4e2a: $00
    ld b, a                                       ; $4e2b: $47
    dec b                                         ; $4e2c: $05
    inc sp                                        ; $4e2d: $33
    jp $e6d6                                      ; $4e2e: $c3 $d6 $e6


    ld [hl], h                                    ; $4e31: $74

jr_0d1_4e32:
    ld b, h                                       ; $4e32: $44
    nop                                           ; $4e33: $00
    dec [hl]                                      ; $4e34: $35
    add l                                         ; $4e35: $85
    jr nc, @+$05                                  ; $4e36: $30 $03

    ld [hl], c                                    ; $4e38: $71
    di                                            ; $4e39: $f3
    ld a, [$11fd]                                 ; $4e3a: $fa $fd $11
    rst $30                                       ; $4e3d: $f7
    ld c, $ec                                     ; $4e3e: $0e $ec
    ld [bc], a                                    ; $4e40: $02
    nop                                           ; $4e41: $00
    ld l, h                                       ; $4e42: $6c
    ld c, $ac                                     ; $4e43: $0e $ac
    ld [bc], a                                    ; $4e45: $02
    ld [$5e0c], sp                                ; $4e46: $08 $0c $5e
    db $fc                                        ; $4e49: $fc
    cp [hl]                                       ; $4e4a: $be
    db $fc                                        ; $4e4b: $fc
    ld a, h                                       ; $4e4c: $7c
    ld c, b                                       ; $4e4d: $48
    adc b                                         ; $4e4e: $88
    ld [$704f], sp                                ; $4e4f: $08 $4f $70
    nop                                           ; $4e52: $00
    ld a, a                                       ; $4e53: $7f
    nop                                           ; $4e54: $00
    ld a, [hl]                                    ; $4e55: $7e
    dec a                                         ; $4e56: $3d
    ld b, [hl]                                    ; $4e57: $46
    dec a                                         ; $4e58: $3d
    ld a, h                                       ; $4e59: $7c
    ld a, e                                       ; $4e5a: $7b
    nop                                           ; $4e5b: $00
    ld a, b                                       ; $4e5c: $78
    ld b, a                                       ; $4e5d: $47
    ld hl, $1f3f                                  ; $4e5e: $21 $3f $1f
    inc e                                         ; $4e61: $1c
    ld hl, sp-$06                                 ; $4e62: $f8 $fa
    nop                                           ; $4e64: $00
    ld hl, sp-$0f                                 ; $4e65: $f8 $f1
    pop af                                        ; $4e67: $f1
    ld [$c9f2], a                                 ; $4e68: $ea $f2 $c9
    ld [de], a                                    ; $4e6b: $12
    ld [c], a                                     ; $4e6c: $e2
    nop                                           ; $4e6d: $00
    ld hl, $fec1                                  ; $4e6e: $21 $c1 $fe
    halt                                          ; $4e71: $76
    db $ec                                        ; $4e72: $ec
    sub h                                         ; $4e73: $94
    call c, $011e                                 ; $4e74: $dc $1e $01
    db $fc                                        ; $4e77: $fc
    ld a, $82                                     ; $4e78: $3e $82
    ld a, $02                                     ; $4e7a: $3e $02
    ld a, [hl]                                    ; $4e7c: $7e
    cp $86                                        ; $4e7d: $fe $86
    nop                                           ; $4e7f: $00
    ret nz                                        ; $4e80: $c0

    inc b                                         ; $4e81: $04
    ld [$08bc], sp                                ; $4e82: $08 $bc $08
    db $fd                                        ; $4e85: $fd
    ret nz                                        ; $4e86: $c0

    ld hl, sp-$3d                                 ; $4e87: $f8 $c3
    ld hl, sp+$3f                                 ; $4e89: $f8 $3f
    nop                                           ; $4e8b: $00
    cp $3d                                        ; $4e8c: $fe $3d
    add b                                         ; $4e8e: $80
    ld a, a                                       ; $4e8f: $7f
    rst $38                                       ; $4e90: $ff
    nop                                           ; $4e91: $00
    ld hl, $00e1                                  ; $4e92: $21 $e1 $00
    rrca                                          ; $4e95: $0f
    ld [$29ee], sp                                ; $4e96: $08 $ee $29
    jr jr_0d1_4e32                                ; $4e99: $18 $97

    rrca                                          ; $4e9b: $0f
    ccf                                           ; $4e9c: $3f
    nop                                           ; $4e9d: $00
    add a                                         ; $4e9e: $87
    dec de                                        ; $4e9f: $1b
    rst $38                                       ; $4ea0: $ff
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    add sp, $70                                   ; $4ea4: $e8 $70
    nop                                           ; $4ea6: $00
    adc b                                         ; $4ea7: $88
    ld hl, sp+$09                                 ; $4ea8: $f8 $09
    ldh a, [$0e]                                  ; $4eaa: $f0 $0e
    or $f8                                        ; $4eac: $f6 $f8
    or $00                                        ; $4eae: $f6 $00
    ldh [$d1], a                                  ; $4eb0: $e0 $d1
    ld [bc], a                                    ; $4eb2: $02
    db $fd                                        ; $4eb3: $fd
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    cp $fc                                        ; $4eb6: $fe $fc
    nop                                           ; $4eb8: $00
    ld a, [hl]                                    ; $4eb9: $7e
    db $fc                                        ; $4eba: $fc
    ld e, $9c                                     ; $4ebb: $1e $9c
    ld c, $ec                                     ; $4ebd: $0e $ec
    ld [c], a                                     ; $4ebf: $e2
    ldh a, [rP1]                                  ; $4ec0: $f0 $00
    jp nz, $00e0                                  ; $4ec2: $c2 $e0 $00

    cp $fe                                        ; $4ec5: $fe $fe
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    ld bc, $00f5                                  ; $4ec9: $01 $f5 $00
    nop                                           ; $4ecc: $00
    add b                                         ; $4ecd: $80
    rst $38                                       ; $4ece: $ff
    cp a                                          ; $4ecf: $bf
    ret nz                                        ; $4ed0: $c0

    cp a                                          ; $4ed1: $bf
    ld b, b                                       ; $4ed2: $40
    cp a                                          ; $4ed3: $bf
    ld b, c                                       ; $4ed4: $41
    nop                                           ; $4ed5: $00
    db $fc                                        ; $4ed6: $fc
    ld b, e                                       ; $4ed7: $43
    ld sp, hl                                     ; $4ed8: $f9
    ld b, [hl]                                    ; $4ed9: $46
    ld sp, hl                                     ; $4eda: $f9
    or $f2                                        ; $4edb: $f6 $f2
    db $ed                                        ; $4edd: $ed
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    and c                                         ; $4ee1: $a1
    ld a, a                                       ; $4ee2: $7f
    adc b                                         ; $4ee3: $88
    ld b, b                                       ; $4ee4: $40
    ld hl, $0093                                  ; $4ee5: $21 $93 $00
    ccf                                           ; $4ee8: $3f
    ld b, b                                       ; $4ee9: $40
    ld a, a                                       ; $4eea: $7f
    add b                                         ; $4eeb: $80
    call nz, $bf3a                                ; $4eec: $c4 $3a $bf
    ld b, b                                       ; $4eef: $40
    nop                                           ; $4ef0: $00
    rst $38                                       ; $4ef1: $ff
    nop                                           ; $4ef2: $00
    db $10                                        ; $4ef3: $10
    rra                                           ; $4ef4: $1f
    ld [hl], a                                    ; $4ef5: $77
    rlca                                          ; $4ef6: $07
    dec bc                                        ; $4ef7: $0b
    di                                            ; $4ef8: $f3
    nop                                           ; $4ef9: $00
    ld sp, hl                                     ; $4efa: $f9
    dec b                                         ; $4efb: $05
    inc e                                         ; $4efc: $1c
    ld [c], a                                     ; $4efd: $e2
    add sp, -$08                                  ; $4efe: $e8 $f8
    or $13                                        ; $4f00: $f6 $13
    ld bc, $00fe                                  ; $4f02: $01 $fe $00
    ld [bc], a                                    ; $4f05: $02
    db $fc                                        ; $4f06: $fc
    ld [bc], a                                    ; $4f07: $02
    db $fc                                        ; $4f08: $fc
    cp $04                                        ; $4f09: $fe $04
    nop                                           ; $4f0b: $00
    db $10                                        ; $4f0c: $10
    ld [bc], a                                    ; $4f0d: $02
    db $fc                                        ; $4f0e: $fc
    add d                                         ; $4f0f: $82
    ld [bc], a                                    ; $4f10: $02
    nop                                           ; $4f11: $00
    ld c, l                                       ; $4f12: $4d
    cp a                                          ; $4f13: $bf
    ld c, l                                       ; $4f14: $4d
    cp a                                          ; $4f15: $bf
    nop                                           ; $4f16: $00
    ld a, [c]                                     ; $4f17: $f2
    db $ed                                        ; $4f18: $ed
    ld sp, hl                                     ; $4f19: $f9
    and $f9                                       ; $4f1a: $e6 $f9
    or $f9                                        ; $4f1c: $f6 $f9
    ld a, [c]                                     ; $4f1e: $f2
    nop                                           ; $4f1f: $00
    ld a, [$faf4]                                 ; $4f20: $fa $f4 $fa
    push af                                       ; $4f23: $f5
    rra                                           ; $4f24: $1f
    ldh [$30], a                                  ; $4f25: $e0 $30
    ret nc                                        ; $4f27: $d0

    nop                                           ; $4f28: $00
    adc [hl]                                      ; $4f29: $8e
    rst $00                                       ; $4f2a: $c7
    adc h                                         ; $4f2b: $8c
    db $ec                                        ; $4f2c: $ec
    ldh [$fd], a                                  ; $4f2d: $e0 $fd
    rst $38                                       ; $4f2f: $ff
    cp a                                          ; $4f30: $bf
    nop                                           ; $4f31: $00
    cp c                                          ; $4f32: $b9
    add $0e                                       ; $4f33: $c6 $0e
    ld [hl], c                                    ; $4f35: $71
    inc de                                        ; $4f36: $13
    ld [c], a                                     ; $4f37: $e2
    db $db                                        ; $4f38: $db
    or l                                          ; $4f39: $b5
    nop                                           ; $4f3a: $00
    ld hl, sp+$69                                 ; $4f3b: $f8 $69
    di                                            ; $4f3d: $f3
    ld h, e                                       ; $4f3e: $63
    di                                            ; $4f3f: $f3
    ld a, c                                       ; $4f40: $79
    ld sp, hl                                     ; $4f41: $f9
    ld a, h                                       ; $4f42: $7c
    nop                                           ; $4f43: $00
    db $fc                                        ; $4f44: $fc
    sbc $cc                                       ; $4f45: $de $cc
    add [hl]                                      ; $4f47: $86
    ld a, [hl]                                    ; $4f48: $7e
    db $fc                                        ; $4f49: $fc

Call_0d1_4f4a:
    ld a, [hl]                                    ; $4f4a: $7e
    db $fc                                        ; $4f4b: $fc
    add b                                         ; $4f4c: $80
    add hl, sp                                    ; $4f4d: $39
    ld [$7c02], sp                                ; $4f4e: $08 $02 $7c
    add d                                         ; $4f51: $82
    cp h                                          ; $4f52: $bc
    ld e, $5c                                     ; $4f53: $1e $5c
    ld e, $10                                     ; $4f55: $1e $10
    db $fc                                        ; $4f57: $fc
    ld a, [$3af5]                                 ; $4f58: $fa $f5 $3a
    nop                                           ; $4f5b: $00
    ld b, d                                       ; $4f5c: $42
    db $fc                                        ; $4f5d: $fc
    ld b, e                                       ; $4f5e: $43
    cp [hl]                                       ; $4f5f: $be
    nop                                           ; $4f60: $00
    ld hl, sp-$42                                 ; $4f61: $f8 $be
    db $fc                                        ; $4f63: $fc
    cp $41                                        ; $4f64: $fe $41
    cp $41                                        ; $4f66: $fe $41
    ccf                                           ; $4f68: $3f
    nop                                           ; $4f69: $00
    ld a, a                                       ; $4f6a: $7f
    rra                                           ; $4f6b: $1f
    cp [hl]                                       ; $4f6c: $be
    adc [hl]                                      ; $4f6d: $8e
    call c, $214d                                 ; $4f6e: $dc $4d $21
    ld c, c                                       ; $4f71: $49
    nop                                           ; $4f72: $00
    and b                                         ; $4f73: $a0
    or d                                          ; $4f74: $b2
    and b                                         ; $4f75: $a0
    db $ec                                        ; $4f76: $ec
    or b                                          ; $4f77: $b0
    ld h, l                                       ; $4f78: $65
    xor b                                         ; $4f79: $a8
    ld e, c                                       ; $4f7a: $59
    nop                                           ; $4f7b: $00
    add sp, -$45                                  ; $4f7c: $e8 $bb
    rst $08                                       ; $4f7e: $cf
    ld h, b                                       ; $4f7f: $60
    adc [hl]                                      ; $4f80: $8e
    sbc $0f                                       ; $4f81: $de $0f
    cpl                                           ; $4f83: $2f
    nop                                           ; $4f84: $00
    rra                                           ; $4f85: $1f
    pop hl                                        ; $4f86: $e1
    ld a, e                                       ; $4f87: $7b
    call z, $c131                                 ; $4f88: $cc $31 $c1
    ld a, $0e                                     ; $4f8b: $3e $0e
    nop                                           ; $4f8d: $00
    ld [c], a                                     ; $4f8e: $e2
    ld c, $02                                     ; $4f8f: $0e $02
    ld a, h                                       ; $4f91: $7c
    ld c, $fc                                     ; $4f92: $0e $fc
    ld c, [hl]                                    ; $4f94: $4e
    ld hl, sp+$00                                 ; $4f95: $f8 $00
    ld l, $f8                                     ; $4f97: $2e $f8
    ld e, $46                                     ; $4f99: $1e $46
    db $fc                                        ; $4f9b: $fc
    ld b, [hl]                                    ; $4f9c: $46
    db $fc                                        ; $4f9d: $fc
    cp [hl]                                       ; $4f9e: $be
    nop                                           ; $4f9f: $00
    cp $bf                                        ; $4fa0: $fe $bf
    cp $ff                                        ; $4fa2: $fe $ff
    ldh a, [$f8]                                  ; $4fa4: $f0 $f8
    rst $00                                       ; $4fa6: $c7
    ldh [$80], a                                  ; $4fa7: $e0 $80
    rst $00                                       ; $4fa9: $c7
    nop                                           ; $4faa: $00
    add b                                         ; $4fab: $80
    ld a, a                                       ; $4fac: $7f
    rst $38                                       ; $4fad: $ff
    nop                                           ; $4fae: $00
    ld l, c                                       ; $4faf: $69
    ld hl, sp+$59                                 ; $4fb0: $f8 $59
    nop                                           ; $4fb2: $00
    ld [hl-], a                                   ; $4fb3: $32
    ld d, h                                       ; $4fb4: $54
    add hl, sp                                    ; $4fb5: $39
    ld e, h                                       ; $4fb6: $5c
    add hl, sp                                    ; $4fb7: $39
    and [hl]                                      ; $4fb8: $a6
    rra                                           ; $4fb9: $1f
    ld d, e                                       ; $4fba: $53
    nop                                           ; $4fbb: $00
    jp z, $bfc0                                   ; $4fbc: $ca $c0 $bf

    nop                                           ; $4fbf: $00
    nop                                           ; $4fc0: $00
    ld b, h                                       ; $4fc1: $44
    or d                                          ; $4fc2: $b2
    jr nz, jr_0d1_4fc5                            ; $4fc3: $20 $00

jr_0d1_4fc5:
    sub a                                         ; $4fc5: $97
    db $ed                                        ; $4fc6: $ed
    call $fddd                                    ; $4fc7: $cd $dd $fd
    rst $38                                       ; $4fca: $ff
    ld d, b                                       ; $4fcb: $50
    ld a, b                                       ; $4fcc: $78
    nop                                           ; $4fcd: $00
    add [hl]                                      ; $4fce: $86
    rst $38                                       ; $4fcf: $ff
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    ld d, d                                       ; $4fd3: $52
    ld hl, sp+$4a                                 ; $4fd4: $f8 $4a
    nop                                           ; $4fd6: $00
    ld hl, sp-$16                                 ; $4fd7: $f8 $ea
    ld hl, sp-$4e                                 ; $4fd9: $f8 $b2
    ldh a, [$82]                                  ; $4fdb: $f0 $82
    db $e4                                        ; $4fdd: $e4
    ld c, $00                                     ; $4fde: $0e $00
    inc e                                         ; $4fe0: $1c
    nop                                           ; $4fe1: $00
    cp $fe                                        ; $4fe2: $fe $fe
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    ld bc, $00d5                                  ; $4fe6: $01 $d5 $00
    inc b                                         ; $4fe9: $04
    ld a, a                                       ; $4fea: $7f
    rst $38                                       ; $4feb: $ff
    ld a, a                                       ; $4fec: $7f
    ret nz                                        ; $4fed: $c0

    cp a                                          ; $4fee: $bf
    ld [bc], a                                    ; $4fef: $02
    nop                                           ; $4ff0: $00
    ccf                                           ; $4ff1: $3f
    pop bc                                        ; $4ff2: $c1
    nop                                           ; $4ff3: $00
    ccf                                           ; $4ff4: $3f
    jp $c73f                                      ; $4ff5: $c3 $3f $c7


    ccf                                           ; $4ff8: $3f
    rst $00                                       ; $4ff9: $c7
    rst $38                                       ; $4ffa: $ff
    nop                                           ; $4ffb: $00
    nop                                           ; $4ffc: $00
    jr nz, jr_0d1_503e                            ; $4ffd: $20 $3f

    ld [hl], e                                    ; $4fff: $73
    ld l, h                                       ; $5000: $6c
    xor a                                         ; $5001: $af
    db $d3                                        ; $5002: $d3
    and c                                         ; $5003: $a1
    ld e, e                                       ; $5004: $5b
    nop                                           ; $5005: $00
    inc bc                                        ; $5006: $03
    rst $30                                       ; $5007: $f7
    sub e                                         ; $5008: $93
    ld h, a                                       ; $5009: $67
    inc hl                                        ; $500a: $23
    db $db                                        ; $500b: $db
    rst $38                                       ; $500c: $ff
    nop                                           ; $500d: $00
    nop                                           ; $500e: $00
    ldh a, [$f8]                                  ; $500f: $f0 $f8
    ld hl, sp+$34                                 ; $5011: $f8 $34
    jr c, @-$30                                   ; $5013: $38 $ce

    call nz, Call_000_0005                        ; $5015: $c4 $05 $00
    cp $02                                        ; $5018: $fe $02
    cp $fc                                        ; $501a: $fe $fc
    cp $fd                                        ; $501c: $fe $fd
    cp $00                                        ; $501e: $fe $00
    ld [$fc02], sp                                ; $5020: $08 $02 $fc
    db $fc                                        ; $5023: $fc
    ld [bc], a                                    ; $5024: $02
    ld [bc], a                                    ; $5025: $02
    nop                                           ; $5026: $00
    ld a, [c]                                     ; $5027: $f2
    db $fc                                        ; $5028: $fc
    cp $84                                        ; $5029: $fe $84
    ld [$8200], sp                                ; $502b: $08 $00 $82
    ccf                                           ; $502e: $3f
    rst $00                                       ; $502f: $c7
    scf                                           ; $5030: $37
    ld [bc], a                                    ; $5031: $02
    nop                                           ; $5032: $00
    ld [hl], $c6                                  ; $5033: $36 $c6
    nop                                           ; $5035: $00
    push bc                                       ; $5036: $c5
    dec [hl]                                      ; $5037: $35

jr_0d1_5038:
    push bc                                       ; $5038: $c5
    dec [hl]                                      ; $5039: $35
    pop bc                                        ; $503a: $c1
    scf                                           ; $503b: $37
    pop bc                                        ; $503c: $c1
    dec sp                                        ; $503d: $3b

jr_0d1_503e:
    nop                                           ; $503e: $00
    inc hl                                        ; $503f: $23
    db $db                                        ; $5040: $db
    add a                                         ; $5041: $87
    ld [hl], e                                    ; $5042: $73
    or a                                          ; $5043: $b7
    ld e, b                                       ; $5044: $58
    ld b, h                                       ; $5045: $44
    ld l, e                                       ; $5046: $6b
    nop                                           ; $5047: $00
    add $96                                       ; $5048: $c6 $96
    ld b, e                                       ; $504a: $43
    ld [hl], a                                    ; $504b: $77
    ld h, e                                       ; $504c: $63
    xor e                                         ; $504d: $ab
    xor e                                         ; $504e: $ab
    db $e3                                        ; $504f: $e3
    nop                                           ; $5050: $00
    cp $ff                                        ; $5051: $fe $ff
    ld [hl-], a                                   ; $5053: $32
    db $fc                                        ; $5054: $fc
    ei                                            ; $5055: $fb
    dec [hl]                                      ; $5056: $35
    nop                                           ; $5057: $00
    inc b                                         ; $5058: $04
    nop                                           ; $5059: $00
    ld b, l                                       ; $505a: $45
    ld l, a                                       ; $505b: $6f
    adc h                                         ; $505c: $8c
    ld c, $72                                     ; $505d: $0e $72
    adc h                                         ; $505f: $8c
    ld b, $f9                                     ; $5060: $06 $f9
    nop                                           ; $5062: $00
    db $fc                                        ; $5063: $fc
    add d                                         ; $5064: $82
    db $fc                                        ; $5065: $fc
    add d                                         ; $5066: $82
    jp nz, $c2fc                                  ; $5067: $c2 $fc $c2

    db $fc                                        ; $506a: $fc
    ret nz                                        ; $506b: $c0

    ld [$0b08], sp                                ; $506c: $08 $08 $0b
    nop                                           ; $506f: $00
    db $fc                                        ; $5070: $fc
    dec sp                                        ; $5071: $3b
    jp $c13d                                      ; $5072: $c3 $3d $c1


    ld a, [hl]                                    ; $5075: $7e
    jr nz, jr_0d1_5038                            ; $5076: $20 $c0

    ld a, a                                       ; $5078: $7f
    ld [bc], a                                    ; $5079: $02
    jr nc, @-$5b                                  ; $507a: $30 $a3

    xor c                                         ; $507c: $a9
    adc l                                         ; $507d: $8d
    ld h, c                                       ; $507e: $61
    or d                                          ; $507f: $b2
    nop                                           ; $5080: $00
    sub c                                         ; $5081: $91
    jr jr_0d1_508b                                ; $5082: $18 $07

    rlca                                          ; $5084: $07
    dec de                                        ; $5085: $1b
    inc bc                                        ; $5086: $03
    sub l                                         ; $5087: $95
    dec de                                        ; $5088: $1b
    nop                                           ; $5089: $00
    pop bc                                        ; $508a: $c1

jr_0d1_508b:
    inc e                                         ; $508b: $1c
    ret z                                         ; $508c: $c8

    db $fd                                        ; $508d: $fd
    rlca                                          ; $508e: $07
    cp $02                                        ; $508f: $fe $02
    xor $00                                       ; $5091: $ee $00
    rst $18                                       ; $5093: $df
    ret nz                                        ; $5094: $c0

    and b                                         ; $5095: $a0
    sub $a7                                       ; $5096: $d6 $a7
    ret c                                         ; $5098: $d8

    ldh a, [rP1]                                  ; $5099: $f0 $00
    dec de                                        ; $509b: $1b
    ld hl, sp-$7f                                 ; $509c: $f8 $81
    ld a, l                                       ; $509e: $7d
    inc [hl]                                      ; $509f: $34
    ld [$2804], sp                                ; $50a0: $08 $04 $28
    ld a, [hl]                                    ; $50a3: $7e
    ld [bc], a                                    ; $50a4: $02
    nop                                           ; $50a5: $00
    ld a, [hl-]                                   ; $50a6: $3a
    ld [$ba80], sp                                ; $50a7: $08 $80 $ba
    nop                                           ; $50aa: $00
    add $33                                       ; $50ab: $c6 $33
    jp $c139                                      ; $50ad: $c3 $39 $c1


    add b                                         ; $50b0: $80
    ld a, a                                       ; $50b1: $7f
    nop                                           ; $50b2: $00
    rst $38                                       ; $50b3: $ff
    nop                                           ; $50b4: $00
    rra                                           ; $50b5: $1f
    pop de                                        ; $50b6: $d1
    rra                                           ; $50b7: $1f
    sub b                                         ; $50b8: $90
    rrca                                          ; $50b9: $0f
    stop                                          ; $50ba: $10 $00
    ld e, e                                       ; $50bc: $5b
    call c, Call_0d1_67c0                         ; $50bd: $dc $c0 $67
    ldh [$30], a                                  ; $50c0: $e0 $30
    rst $38                                       ; $50c2: $ff
    nop                                           ; $50c3: $00
    nop                                           ; $50c4: $00
    nop                                           ; $50c5: $00
    nop                                           ; $50c6: $00
    and $da                                       ; $50c7: $e6 $da
    pop af                                        ; $50c9: $f1
    ld sp, $8078                                  ; $50ca: $31 $78 $80
    ld [bc], a                                    ; $50cd: $02
    dec de                                        ; $50ce: $1b
    db $e3                                        ; $50cf: $e3
    sub l                                         ; $50d0: $95
    or $6b                                        ; $50d1: $f6 $6b
    ld l, h                                       ; $50d3: $6c
    db $10                                        ; $50d4: $10
    ld [$8002], sp                                ; $50d5: $08 $02 $80
    or a                                          ; $50d8: $b7
    nop                                           ; $50d9: $00
    ld a, $7c                                     ; $50da: $3e $7c
    ld c, $9c                                     ; $50dc: $0e $9c
    jp nz, $82cc                                  ; $50de: $c2 $cc $82

    nop                                           ; $50e1: $00
    sbc h                                         ; $50e2: $9c
    inc b                                         ; $50e3: $04
    cp $fe                                        ; $50e4: $fe $fe
    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    ld bc, $00ec                                  ; $50e8: $01 $ec $00
    inc b                                         ; $50eb: $04
    ld a, a                                       ; $50ec: $7f
    adc a                                         ; $50ed: $8f
    ld b, b                                       ; $50ee: $40
    add b                                         ; $50ef: $80
    ret nz                                        ; $50f0: $c0

    ld [bc], a                                    ; $50f1: $02
    ld [$c081], sp                                ; $50f2: $08 $81 $c0
    nop                                           ; $50f5: $00
    add e                                         ; $50f6: $83
    rlca                                          ; $50f7: $07
    ld b, [hl]                                    ; $50f8: $46
    rlca                                          ; $50f9: $07
    ld b, h                                       ; $50fa: $44
    rst $38                                       ; $50fb: $ff

Jump_0d1_50fc:
    nop                                           ; $50fc: $00
    rlca                                          ; $50fd: $07
    nop                                           ; $50fe: $00
    rrca                                          ; $50ff: $0f
    rra                                           ; $5100: $1f
    ld sp, $e637                                  ; $5101: $31 $37 $e6
    rst $28                                       ; $5104: $ef
    adc b                                         ; $5105: $88
    cp $00                                        ; $5106: $fe $00
    ld hl, $21fe                                  ; $5108: $21 $fe $21
    ld a, l                                       ; $510b: $7d
    ld b, d                                       ; $510c: $42
    rst $38                                       ; $510d: $ff
    nop                                           ; $510e: $00
    dec de                                        ; $510f: $1b
    nop                                           ; $5110: $00
    ei                                            ; $5111: $fb
    ld a, [hl]                                    ; $5112: $7e
    nop                                           ; $5113: $00
    add a                                         ; $5114: $87
    nop                                           ; $5115: $00
    ret nz                                        ; $5116: $c0

    cp $3f                                        ; $5117: $fe $3f
    nop                                           ; $5119: $00
    ret nz                                        ; $511a: $c0

    pop hl                                        ; $511b: $e1
    jp nc, $8000                                  ; $511c: $d2 $00 $80

    pop bc                                        ; $511f: $c1
    cp $01                                        ; $5120: $fe $01
    nop                                           ; $5122: $00
    ld [bc], a                                    ; $5123: $02
    add b                                         ; $5124: $80
    add e                                         ; $5125: $83
    ret nz                                        ; $5126: $c0

    ld b, e                                       ; $5127: $43
    ldh [$63], a                                  ; $5128: $e0 $63
    ldh a, [rP1]                                  ; $512a: $f0 $00
    inc de                                        ; $512c: $13
    inc de                                        ; $512d: $13
    ldh a, [rWX]                                  ; $512e: $f0 $4b
    ld a, b                                       ; $5130: $78
    rrca                                          ; $5131: $0f
    ld c, h                                       ; $5132: $4c
    ld c, $00                                     ; $5133: $0e $00
    ld c, b                                       ; $5135: $48
    rrca                                          ; $5136: $0f
    ld c, c                                       ; $5137: $49
    rra                                           ; $5138: $1f
    ld d, b                                       ; $5139: $50
    rra                                           ; $513a: $1f
    ld c, e                                       ; $513b: $4b
    dec de                                        ; $513c: $1b
    ld b, b                                       ; $513d: $40
    ld d, d                                       ; $513e: $52
    ld [bc], a                                    ; $513f: $02

jr_0d1_5140:
    ld [$0a76], sp                                ; $5140: $08 $76 $0a
    db $eb                                        ; $5143: $eb
    sbc e                                         ; $5144: $9b
    ldh a, [$27]                                  ; $5145: $f0 $27
    nop                                           ; $5147: $00
    ldh [$27], a                                  ; $5148: $e0 $27
    xor a                                         ; $514a: $af
    ld c, [hl]                                    ; $514b: $4e
    xor [hl]                                      ; $514c: $ae
    ld l, a                                       ; $514d: $6f
    rst $00                                       ; $514e: $c7
    rrca                                          ; $514f: $0f
    nop                                           ; $5150: $00
    jp $800f                                      ; $5151: $c3 $0f $80


    add b                                         ; $5154: $80
    ld b, b                                       ; $5155: $40
    add b                                         ; $5156: $80
    ldh [$c0], a                                  ; $5157: $e0 $c0
    nop                                           ; $5159: $00
    ldh [$f1], a                                  ; $515a: $e0 $f1
    ld [hl], c                                    ; $515c: $71
    and c                                         ; $515d: $a1
    dec sp                                        ; $515e: $3b
    ret nc                                        ; $515f: $d0

    pop hl                                        ; $5160: $e1
    ld hl, $e100                                  ; $5161: $21 $00 $e1
    sub d                                         ; $5164: $92
    inc de                                        ; $5165: $13
    inc a                                         ; $5166: $3c
    dec bc                                        ; $5167: $0b
    inc e                                         ; $5168: $1c
    inc de                                        ; $5169: $13
    inc e                                         ; $516a: $1c
    nop                                           ; $516b: $00
    dec bc                                        ; $516c: $0b
    inc c                                         ; $516d: $0c
    ld b, l                                       ; $516e: $45
    ld b, $c5                                     ; $516f: $06 $c5
    ld b, [hl]                                    ; $5171: $46
    ld b, e                                       ; $5172: $43
    call nz, $a300                                ; $5173: $c4 $00 $a3
    add h                                         ; $5176: $84

jr_0d1_5177:
    dec de                                        ; $5177: $1b
    ld c, b                                       ; $5178: $48
    rra                                           ; $5179: $1f
    ld b, [hl]                                    ; $517a: $46
    dec e                                         ; $517b: $1d
    ld d, h                                       ; $517c: $54
    jr nz, jr_0d1_519d                            ; $517d: $20 $1e

    ld d, d                                       ; $517f: $52
    ld b, [hl]                                    ; $5180: $46
    nop                                           ; $5181: $00
    ld c, l                                       ; $5182: $4d
    rlca                                          ; $5183: $07
    ld b, l                                       ; $5184: $45
    rlca                                          ; $5185: $07
    ld b, [hl]                                    ; $5186: $46
    nop                                           ; $5187: $00
    jp $c00f                                      ; $5188: $c3 $0f $c0


    inc hl                                        ; $518b: $23
    and c                                         ; $518c: $a1
    ld b, c                                       ; $518d: $41
    and b                                         ; $518e: $a0
    ld b, b                                       ; $518f: $40
    nop                                           ; $5190: $00
    ret nc                                        ; $5191: $d0

    ld h, b                                       ; $5192: $60
    ld d, b                                       ; $5193: $50
    jr nc, @+$4a                                  ; $5194: $30 $48

    jr c, jr_0d1_5140                             ; $5196: $38 $a8

    sub b                                         ; $5198: $90
    nop                                           ; $5199: $00
    jp c, $fba9                                   ; $519a: $da $a9 $fb

jr_0d1_519d:
    ei                                            ; $519d: $fb
    xor e                                         ; $519e: $ab
    ld e, b                                       ; $519f: $58
    ld [hl], c                                    ; $51a0: $71
    ld bc, $0040                                  ; $51a1: $01 $40 $00
    ld bc, $d320                                  ; $51a4: $01 $20 $d3

jr_0d1_51a7:
    call nc, $c4c3                                ; $51a7: $d4 $c3 $c4
    jp Jump_000_00c4                              ; $51aa: $c3 $c4 $00


    inc bc                                        ; $51ad: $03
    inc c                                         ; $51ae: $0c
    dec bc                                        ; $51af: $0b
    inc c                                         ; $51b0: $0c
    inc de                                        ; $51b1: $13
    inc e                                         ; $51b2: $1c
    daa                                           ; $51b3: $27
    inc a                                         ; $51b4: $3c
    nop                                           ; $51b5: $00
    ld b, a                                       ; $51b6: $47
    ld a, h                                       ; $51b7: $7c
    ret nz                                        ; $51b8: $c0

    add e                                         ; $51b9: $83
    ret nz                                        ; $51ba: $c0

    add b                                         ; $51bb: $80
    ld c, $4e                                     ; $51bc: $0e $4e
    jr nz, @+$21                                  ; $51be: $20 $1f

    ld e, c                                       ; $51c0: $59
    add d                                         ; $51c1: $82
    nop                                           ; $51c2: $00
    ld b, b                                       ; $51c3: $40
    add b                                         ; $51c4: $80
    rst $38                                       ; $51c5: $ff
    ld a, a                                       ; $51c6: $7f
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    jr jr_0d1_5177                                ; $51c9: $18 $ac

    inc c                                         ; $51cb: $0c
    ldh a, [$0c]                                  ; $51cc: $f0 $0c
    ld d, [hl]                                    ; $51ce: $56
    ld b, $b8                                     ; $51cf: $06 $b8
    nop                                           ; $51d1: $00
    push hl                                       ; $51d2: $e5
    ld h, a                                       ; $51d3: $67
    cp $1d                                        ; $51d4: $fe $1d
    jr nc, jr_0d1_51a7                            ; $51d6: $30 $cf

    ccf                                           ; $51d8: $3f
    ccf                                           ; $51d9: $3f
    stop                                          ; $51da: $10 $00
    nop                                           ; $51dc: $00
    ld bc, $0002                                  ; $51dd: $01 $02 $00
    nop                                           ; $51e0: $00
    ld bc, $0102                                  ; $51e1: $01 $02 $01
    db $10                                        ; $51e4: $10
    add c                                         ; $51e5: $81
    nop                                           ; $51e6: $00
    rst $38                                       ; $51e7: $ff
    ld b, l                                       ; $51e8: $45
    nop                                           ; $51e9: $00
    ld b, e                                       ; $51ea: $43
    ld h, b                                       ; $51eb: $60
    add e                                         ; $51ec: $83
    ret nz                                        ; $51ed: $c0

    nop                                           ; $51ee: $00
    inc hl                                        ; $51ef: $23
    and b                                         ; $51f0: $a0
    inc hl                                        ; $51f1: $23
    and b                                         ; $51f2: $a0
    ld l, a                                       ; $51f3: $6f
    db $ec                                        ; $51f4: $ec
    add e                                         ; $51f5: $83
    db $ec                                        ; $51f6: $ec
    nop                                           ; $51f7: $00
    cp $00                                        ; $51f8: $fe $00
    ldh [$fc], a                                  ; $51fa: $e0 $fc
    nop                                           ; $51fc: $00
    ld bc, $00fb                                  ; $51fd: $01 $fb $00
    nop                                           ; $5200: $00
    rst $38                                       ; $5201: $ff
    ld a, a                                       ; $5202: $7f
    ret nz                                        ; $5203: $c0

    ld a, h                                       ; $5204: $7c
    dec sp                                        ; $5205: $3b
    ld hl, sp+$35                                 ; $5206: $f8 $35
    ldh a, [rP1]                                  ; $5208: $f0 $00
    cpl                                           ; $520a: $2f
    rst $00                                       ; $520b: $c7
    ld a, [hl+]                                   ; $520c: $2a
    jp nz, $58c0                                  ; $520d: $c2 $c0 $58

    ret nz                                        ; $5210: $c0

    ld d, h                                       ; $5211: $54
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    nop                                           ; $5214: $00
    jr nz, @+$65                                  ; $5215: $20 $63

    rst $38                                       ; $5217: $ff
    rst $10                                       ; $5218: $d7
    ld c, b                                       ; $5219: $48
    ld c, h                                       ; $521a: $4c
    nop                                           ; $521b: $00
    ld a, [de]                                    ; $521c: $1a
    ld d, [hl]                                    ; $521d: $56
    sub b                                         ; $521e: $90
    or c                                          ; $521f: $b1
    add h                                         ; $5220: $84
    dec de                                        ; $5221: $1b
    sbc h                                         ; $5222: $9c
    inc c                                         ; $5223: $0c
    nop                                           ; $5224: $00
    rst $38                                       ; $5225: $ff
    nop                                           ; $5226: $00
    inc b                                         ; $5227: $04
    dec [hl]                                      ; $5228: $35
    and a                                         ; $5229: $a7
    ld sp, $883d                                  ; $522a: $31 $3d $88
    nop                                           ; $522d: $00
    adc $84                                       ; $522e: $ce $84
    db $e4                                        ; $5230: $e4
    add d                                         ; $5231: $82
    sub d                                         ; $5232: $92
    add d                                         ; $5233: $82
    ld d, d                                       ; $5234: $52
    or b                                          ; $5235: $b0
    nop                                           ; $5236: $00
    cp $00                                        ; $5237: $fe $00
    ld [de], a                                    ; $5239: $12
    ld d, h                                       ; $523a: $54
    sbc b                                         ; $523b: $98
    ld a, [bc]                                    ; $523c: $0a
    sbc b                                         ; $523d: $98
    adc d                                         ; $523e: $8a
    nop                                           ; $523f: $00
    add [hl]                                      ; $5240: $86
    db $f4                                        ; $5241: $f4
    ld c, [hl]                                    ; $5242: $4e
    ld l, h                                       ; $5243: $6c
    inc d                                         ; $5244: $14
    ld [de], a                                    ; $5245: $12
    inc l                                         ; $5246: $2c
    ld [hl+], a                                   ; $5247: $22
    nop                                           ; $5248: $00
    dec e                                         ; $5249: $1d
    push de                                       ; $524a: $d5
    cpl                                           ; $524b: $2f
    ret z                                         ; $524c: $c8

    xor b                                         ; $524d: $a8
    ret nz                                        ; $524e: $c0

    sbc h                                         ; $524f: $9c
    jp nz, $c400                                  ; $5250: $c2 $00 $c4

    ld e, [hl]                                    ; $5253: $5e
    call nz, Call_0d1_6642                        ; $5254: $c4 $42 $66
    ret nz                                        ; $5257: $c0

    ld c, c                                       ; $5258: $49
    ret nz                                        ; $5259: $c0

    nop                                           ; $525a: $00
    sbc c                                         ; $525b: $99
    ccf                                           ; $525c: $3f
    inc sp                                        ; $525d: $33
    dec e                                         ; $525e: $1d
    daa                                           ; $525f: $27
    ld e, e                                       ; $5260: $5b
    ld [hl], c                                    ; $5261: $71
    adc b                                         ; $5262: $88
    nop                                           ; $5263: $00
    ld h, d                                       ; $5264: $62
    ld l, h                                       ; $5265: $6c
    inc de                                        ; $5266: $13
    nop                                           ; $5267: $00
    ld h, b                                       ; $5268: $60
    add b                                         ; $5269: $80
    ld a, a                                       ; $526a: $7f
    add c                                         ; $526b: $81
    nop                                           ; $526c: $00
    inc b                                         ; $526d: $04
    db $e4                                        ; $526e: $e4
    ld [$5bc0], sp                                ; $526f: $08 $c0 $5b
    jp c, $f010                                   ; $5272: $da $10 $f0

    nop                                           ; $5275: $00
    db $e4                                        ; $5276: $e4
    inc c                                         ; $5277: $0c
    ld d, d                                       ; $5278: $52
    ld d, $01                                     ; $5279: $16 $01
    ldh [rNR33], a                                ; $527b: $e0 $1d
    pop bc                                        ; $527d: $c1
    nop                                           ; $527e: $00
    inc d                                         ; $527f: $14
    ld b, $04                                     ; $5280: $06 $04
    ld b, $0c                                     ; $5282: $06 $0c
    ld [bc], a                                    ; $5284: $02
    ld d, h                                       ; $5285: $54
    ld d, d                                       ; $5286: $52
    nop                                           ; $5287: $00
    add h                                         ; $5288: $84
    add d                                         ; $5289: $82
    call z, $dcc2                                 ; $528a: $cc $c2 $dc
    ld e, $e4                                     ; $528d: $1e $e4
    ld b, $00                                     ; $528f: $06 $00
    ld e, b                                       ; $5291: $58
    ret nz                                        ; $5292: $c0

    ld d, b                                       ; $5293: $50
    ret nz                                        ; $5294: $c0

    sub d                                         ; $5295: $92
    ld d, d                                       ; $5296: $52
    xor a                                         ; $5297: $af
    ld c, l                                       ; $5298: $4d
    nop                                           ; $5299: $00
    rlca                                          ; $529a: $07
    push af                                       ; $529b: $f5
    ld a, [bc]                                    ; $529c: $0a
    ld [c], a                                     ; $529d: $e2
    ld e, c                                       ; $529e: $59
    ret nz                                        ; $529f: $c0

    ld a, c                                       ; $52a0: $79
    ret nz                                        ; $52a1: $c0

    nop                                           ; $52a2: $00
    ccf                                           ; $52a3: $3f
    ld e, a                                       ; $52a4: $5f
    ld a, a                                       ; $52a5: $7f
    cp [hl]                                       ; $52a6: $be
    cp h                                          ; $52a7: $bc
    ld a, a                                       ; $52a8: $7f
    ld h, b                                       ; $52a9: $60
    ccf                                           ; $52aa: $3f
    nop                                           ; $52ab: $00
    ld h, c                                       ; $52ac: $61
    rra                                           ; $52ad: $1f
    ld [hl], b                                    ; $52ae: $70
    ld c, a                                       ; $52af: $4f
    rra                                           ; $52b0: $1f
    daa                                           ; $52b1: $27
    rrca                                          ; $52b2: $0f
    inc sp                                        ; $52b3: $33
    nop                                           ; $52b4: $00
    ld sp, $20ed                                  ; $52b5: $31 $ed $20
    cp h                                          ; $52b8: $bc
    db $fd                                        ; $52b9: $fd
    dec b                                         ; $52ba: $05
    ld hl, sp+$01                                 ; $52bb: $f8 $01
    nop                                           ; $52bd: $00
    add sp, $50                                   ; $52be: $e8 $50
    inc d                                         ; $52c0: $14
    pop af                                        ; $52c1: $f1
    ld b, a                                       ; $52c2: $47
    and e                                         ; $52c3: $a3
    dec h                                         ; $52c4: $25
    ret nz                                        ; $52c5: $c0

    nop                                           ; $52c6: $00
    or d                                          ; $52c7: $b2
    cp b                                          ; $52c8: $b8
    ld [bc], a                                    ; $52c9: $02
    jr @-$74                                      ; $52ca: $18 $8a

    ld [bc], a                                    ; $52cc: $02
    add d                                         ; $52cd: $82
    ld b, $00                                     ; $52ce: $06 $00
    ld b, $92                                     ; $52d0: $06 $92
    ld c, $82                                     ; $52d2: $0e $82
    ld c, $22                                     ; $52d4: $0e $22
    ld b, $12                                     ; $52d6: $06 $12
    nop                                           ; $52d8: $00
    ld h, d                                       ; $52d9: $62
    ret nz                                        ; $52da: $c0

    ld b, [hl]                                    ; $52db: $46
    ret nz                                        ; $52dc: $c0

    db $dd                                        ; $52dd: $dd
    ret nz                                        ; $52de: $c0

    ld a, [$00c1]                                 ; $52df: $fa $c1 $00
    daa                                           ; $52e2: $27
    db $e4                                        ; $52e3: $e4
    rra                                           ; $52e4: $1f
    reti                                          ; $52e5: $d9


    add b                                         ; $52e6: $80
    ld a, a                                       ; $52e7: $7f
    rst $38                                       ; $52e8: $ff
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    add c                                         ; $52eb: $81
    sbc [hl]                                      ; $52ec: $9e
    adc [hl]                                      ; $52ed: $8e
    sub c                                         ; $52ee: $91
    adc a                                         ; $52ef: $8f
    ld d, a                                       ; $52f0: $57
    ld b, a                                       ; $52f1: $47
    and e                                         ; $52f2: $a3
    nop                                           ; $52f3: $00
    inc hl                                        ; $52f4: $23
    ld e, e                                       ; $52f5: $5b
    add hl, de                                    ; $52f6: $19
    add l                                         ; $52f7: $85
    rst $38                                       ; $52f8: $ff
    nop                                           ; $52f9: $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    ld c, h                                       ; $52fd: $4c
    add l                                         ; $52fe: $85
    adc b                                         ; $52ff: $88
    add hl, bc                                    ; $5300: $09
    add b                                         ; $5301: $80
    ld d, b                                       ; $5302: $50
    sub b                                         ; $5303: $90
    rrc b                                         ; $5304: $cb $08
    adc c                                         ; $5306: $89
    call c, $b68c                                 ; $5307: $dc $8c $b6
    db $10                                        ; $530a: $10
    ld [$981a], sp                                ; $530b: $08 $1a $98
    jp nz, $f004                                  ; $530e: $c2 $04 $f0

    ld [c], a                                     ; $5311: $e2
    ldh a, [rNR43]                                ; $5312: $f0 $22
    jr nc, jr_0d1_5318                            ; $5314: $30 $02

    nop                                           ; $5316: $00
    ld h, b                                       ; $5317: $60

jr_0d1_5318:
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    cp $fe                                        ; $531a: $fe $fe
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    ld bc, $00f2                                  ; $531e: $01 $f2 $00
    db $10                                        ; $5321: $10
    rst $38                                       ; $5322: $ff
    ld a, a                                       ; $5323: $7f
    ret nz                                        ; $5324: $c0

    ld [bc], a                                    ; $5325: $02
    ld [$c07c], sp                                ; $5326: $08 $7c $c0
    ld a, e                                       ; $5329: $7b
    jp $7600                                      ; $532a: $c3 $00 $76


    or e                                          ; $532d: $b3
    halt                                          ; $532e: $76
    and b                                         ; $532f: $a0
    ld h, a                                       ; $5330: $67
    rst $38                                       ; $5331: $ff
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    ld a, [hl]                                    ; $5335: $7e
    ld c, d                                       ; $5336: $4a
    inc [hl]                                      ; $5337: $34
    db $ed                                        ; $5338: $ed
    ld a, e                                       ; $5339: $7b
    ld hl, $3cfe                                  ; $533a: $21 $fe $3c
    nop                                           ; $533d: $00
    adc $bd                                       ; $533e: $ce $bd
    ld h, [hl]                                    ; $5340: $66
    ld h, b                                       ; $5341: $60
    dec e                                         ; $5342: $1d
    rst $38                                       ; $5343: $ff
    nop                                           ; $5344: $00
    jr nz, jr_0d1_5347                            ; $5345: $20 $00

jr_0d1_5347:
    ld a, [hl]                                    ; $5347: $7e
    ld e, d                                       ; $5348: $5a
    inc l                                         ; $5349: $2c
    or a                                          ; $534a: $b7
    ld e, [hl]                                    ; $534b: $5e
    inc b                                         ; $534c: $04
    ld a, a                                       ; $534d: $7f
    xor h                                         ; $534e: $ac
    nop                                           ; $534f: $00
    ld h, e                                       ; $5350: $63
    sbc l                                         ; $5351: $9d
    ld b, [hl]                                    ; $5352: $46
    ld b, $b8                                     ; $5353: $06 $b8
    cp $00                                        ; $5355: $fe $00
    ld [bc], a                                    ; $5357: $02
    nop                                           ; $5358: $00
    db $fc                                        ; $5359: $fc
    ld [bc], a                                    ; $535a: $02
    db $fc                                        ; $535b: $fc
    jp nz, Jump_000_02fc                          ; $535c: $c2 $fc $02

    sbc [hl]                                      ; $535f: $9e
    jp nz, Jump_0d1_4e00                          ; $5360: $c2 $00 $4e

    call z, Call_000_046e                         ; $5363: $cc $6e $04
    and $af                                       ; $5366: $e6 $af
    ld h, c                                       ; $5368: $61
    xor e                                         ; $5369: $ab
    nop                                           ; $536a: $00
    ld h, l                                       ; $536b: $65
    bit 6, h                                      ; $536c: $cb $74
    jp z, $c575                                   ; $536e: $ca $75 $c5

jr_0d1_5371:
    ldh a, [$c2]                                  ; $5371: $f0 $c2
    nop                                           ; $5373: $00
    db $fc                                        ; $5374: $fc
    jp nz, $c23e                                  ; $5375: $c2 $3e $c2

    ld a, $44                                     ; $5378: $3e $44
    add b                                         ; $537a: $80
    or d                                          ; $537b: $b2
    nop                                           ; $537c: $00
    ld [hl-], a                                   ; $537d: $32
    rst $08                                       ; $537e: $cf
    or b                                          ; $537f: $b0
    call nz, Call_000_0a43                        ; $5380: $c4 $43 $0a
    ld sp, $00b4                                  ; $5383: $31 $b4 $00
    ld a, c                                       ; $5386: $79
    ld bc, $30b4                                  ; $5387: $01 $b4 $30
    sub h                                         ; $538a: $94
    ld [hl+], a                                   ; $538b: $22
    ld bc, $004d                                  ; $538c: $01 $4d $00
    ld c, h                                       ; $538f: $4c
    di                                            ; $5390: $f3
    dec c                                         ; $5391: $0d
    ld bc, $12e0                                  ; $5392: $01 $e0 $12
    call z, $002d                                 ; $5395: $cc $2d $00
    sbc [hl]                                      ; $5398: $9e
    nop                                           ; $5399: $00
    xor l                                         ; $539a: $ad
    inc c                                         ; $539b: $0c
    add hl, hl                                    ; $539c: $29
    db $f4                                        ; $539d: $f4
    add $d4                                       ; $539e: $c6 $d4
    nop                                           ; $53a0: $00
    and $d2                                       ; $53a1: $e6 $d2
    ld b, $52                                     ; $53a3: $06 $52
    ld b, $a2                                     ; $53a5: $06 $a2
    ld c, $42                                     ; $53a7: $0e $42
    ld [bc], a                                    ; $53a9: $02
    ld a, $42                                     ; $53aa: $3e $42
    ld e, $42                                     ; $53ac: $1e $42
    ld e, $c4                                     ; $53ae: $1e $c4
    inc [hl]                                      ; $53b0: $34
    nop                                           ; $53b1: $00
    ccf                                           ; $53b2: $3f

Call_0d1_53b3:
    nop                                           ; $53b3: $00
    jp $c13f                                      ; $53b4: $c3 $3f $c1


    ld a, a                                       ; $53b7: $7f
    ret nz                                        ; $53b8: $c0

    ld a, [hl]                                    ; $53b9: $7e
    ret nz                                        ; $53ba: $c0

    ld a, l                                       ; $53bb: $7d
    nop                                           ; $53bc: $00
    pop bc                                        ; $53bd: $c1
    ld a, d                                       ; $53be: $7a
    jp $b585                                      ; $53bf: $c3 $85 $b5


    call Call_0d1_4a49                            ; $53c2: $cd $49 $4a
    nop                                           ; $53c5: $00
    ld a, e                                       ; $53c6: $7b
    add l                                         ; $53c7: $85
    rlca                                          ; $53c8: $07
    ccf                                           ; $53c9: $3f
    ld b, a                                       ; $53ca: $47
    ld [hl], e                                    ; $53cb: $73
    add hl, sp                                    ; $53cc: $39
    inc h                                         ; $53cd: $24
    nop                                           ; $53ce: $00
    jr jr_0d1_5371                                ; $53cf: $18 $a0

    sbc a                                         ; $53d1: $9f
    and c                                         ; $53d2: $a1
    xor l                                         ; $53d3: $ad
    or e                                          ; $53d4: $b3
    sub d                                         ; $53d5: $92
    ld d, d                                       ; $53d6: $52
    nop                                           ; $53d7: $00
    sbc $a1                                       ; $53d8: $de $a1
    ldh [$fc], a                                  ; $53da: $e0 $fc
    ld [c], a                                     ; $53dc: $e2
    adc h                                         ; $53dd: $8c
    sbc $20                                       ; $53de: $de $20
    ld [$051c], sp                                ; $53e0: $08 $1c $05
    ld sp, hl                                     ; $53e3: $f9
    ld [hl+], a                                   ; $53e4: $22
    inc [hl]                                      ; $53e5: $34
    nop                                           ; $53e6: $00
    jp nz, $82fc                                  ; $53e7: $c2 $fc $82

    add b                                         ; $53ea: $80
    add h                                         ; $53eb: $84
    nop                                           ; $53ec: $00
    add d                                         ; $53ed: $82
    db $fc                                        ; $53ee: $fc
    add d                                         ; $53ef: $82
    inc a                                         ; $53f0: $3c
    add d                                         ; $53f1: $82
    cp h                                          ; $53f2: $bc
    ld a, e                                       ; $53f3: $7b
    nop                                           ; $53f4: $00
    ret nz                                        ; $53f5: $c0

    ld [hl], b                                    ; $53f6: $70
    ret nz                                        ; $53f7: $c0

    ldh [$c7], a                                  ; $53f8: $e0 $c7
    ret nz                                        ; $53fa: $c0

    rst $08                                       ; $53fb: $cf
    rra                                           ; $53fc: $1f
    nop                                           ; $53fd: $00
    call c, $f83e                                 ; $53fe: $dc $3e $f8
    add b                                         ; $5401: $80
    ld a, a                                       ; $5402: $7f
    rst $38                                       ; $5403: $ff
    nop                                           ; $5404: $00
    ld h, b                                       ; $5405: $60
    nop                                           ; $5406: $00
    ccf                                           ; $5407: $3f
    ld d, c                                       ; $5408: $51
    rra                                           ; $5409: $1f
    rlca                                          ; $540a: $07
    rra                                           ; $540b: $1f
    adc b                                         ; $540c: $88
    rra                                           ; $540d: $1f
    rrca                                          ; $540e: $0f
    db $10                                        ; $540f: $10
    sub h                                         ; $5410: $94
    rlca                                          ; $5411: $07
    adc a                                         ; $5412: $8f
    call z, RST_00                                ; $5413: $cc $00 $00
    ld [bc], a                                    ; $5416: $02
    ld hl, sp-$6a                                 ; $5417: $f8 $96
    nop                                           ; $5419: $00
    ld a, [c]                                     ; $541a: $f2
    ld [c], a                                     ; $541b: $e2
    ld e, $11                                     ; $541c: $1e $11
    add sp, -$10                                  ; $541e: $e8 $f0
    dec hl                                        ; $5420: $2b
    ldh [rLCDC], a                                ; $5421: $e0 $40
    pop af                                        ; $5423: $f1
    db $10                                        ; $5424: $10
    ld [$82bc], sp                                ; $5425: $08 $bc $82
    inc e                                         ; $5428: $1c
    ld [bc], a                                    ; $5429: $02
    jp nz, Jump_000_000e                          ; $542a: $c2 $0e $00

    ld [c], a                                     ; $542d: $e2
    ld b, $f0                                     ; $542e: $06 $f0
    ld [hl], d                                    ; $5430: $72
    ld hl, sp+$3a                                 ; $5431: $f8 $3a
    nop                                           ; $5433: $00
    cp $00                                        ; $5434: $fe $00
    cp $00                                        ; $5436: $fe $00
    nop                                           ; $5438: $00
    ld bc, $00ec                                  ; $5439: $01 $ec $00
    nop                                           ; $543c: $00
    ld a, a                                       ; $543d: $7f
    rst $38                                       ; $543e: $ff
    ld a, a                                       ; $543f: $7f
    ret nz                                        ; $5440: $c0

    ld a, a                                       ; $5441: $7f
    ret nz                                        ; $5442: $c0

    ld a, [hl]                                    ; $5443: $7e
    ret nz                                        ; $5444: $c0

    nop                                           ; $5445: $00
    inc a                                         ; $5446: $3c
    db $fc                                        ; $5447: $fc
    add hl, sp                                    ; $5448: $39
    ld hl, sp+$36                                 ; $5449: $f8 $36
    add $37                                       ; $544b: $c6 $37
    push bc                                       ; $544d: $c5
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    rst $38                                       ; $5450: $ff
    ret nz                                        ; $5451: $c0

    nop                                           ; $5452: $00
    dec hl                                        ; $5453: $2b
    ld bc, $144c                                  ; $5454: $01 $4c $14
    nop                                           ; $5457: $00
    cp a                                          ; $5458: $bf
    ld l, d                                       ; $5459: $6a
    add l                                         ; $545a: $85
    db $fd                                        ; $545b: $fd
    ld a, [de]                                    ; $545c: $1a
    db $db                                        ; $545d: $db
    ld b, c                                       ; $545e: $41
    or [hl]                                       ; $545f: $b6
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    rst $38                                       ; $5462: $ff
    rlca                                          ; $5463: $07
    nop                                           ; $5464: $00
    inc hl                                        ; $5465: $23
    jr nc, jr_0d1_5468                            ; $5466: $30 $00

jr_0d1_5468:
    cp b                                          ; $5468: $b8
    nop                                           ; $5469: $00
    rst $38                                       ; $546a: $ff
    ld sp, hl                                     ; $546b: $f9
    sbc l                                         ; $546c: $9d
    inc h                                         ; $546d: $24
    inc c                                         ; $546e: $0c
    pop hl                                        ; $546f: $e1
    db $e4                                        ; $5470: $e4
    ld hl, sp+$08                                 ; $5471: $f8 $08
    nop                                           ; $5473: $00
    cp $fc                                        ; $5474: $fe $fc
    ld [bc], a                                    ; $5476: $02
    ld [bc], a                                    ; $5477: $02
    nop                                           ; $5478: $00
    add d                                         ; $5479: $82
    inc a                                         ; $547a: $3c
    ld [bc], a                                    ; $547b: $02
    nop                                           ; $547c: $00
    cp h                                          ; $547d: $bc
    add d                                         ; $547e: $82
    call c, $dcc2                                 ; $547f: $dc $c2 $dc
    jp nz, $c737                                  ; $5482: $c2 $37 $c7

    nop                                           ; $5485: $00
    inc sp                                        ; $5486: $33
    jp $de3f                                      ; $5487: $c3 $3f $de


    ccf                                           ; $548a: $3f

jr_0d1_548b:
    db $dd                                        ; $548b: $dd
    ld h, b                                       ; $548c: $60
    ret nz                                        ; $548d: $c0

    nop                                           ; $548e: $00
    ld h, b                                       ; $548f: $60
    jp Jump_000_30c2                              ; $5490: $c3 $c2 $30


    pop bc                                        ; $5493: $c1
    add hl, sp                                    ; $5494: $39
    nop                                           ; $5495: $00
    rst $30                                       ; $5496: $f7
    nop                                           ; $5497: $00
    ld a, a                                       ; $5498: $7f
    add b                                         ; $5499: $80
    rst $38                                       ; $549a: $ff
    nop                                           ; $549b: $00
    ld a, $01                                     ; $549c: $3e $01
    ldh [$fc], a                                  ; $549e: $e0 $fc
    nop                                           ; $54a0: $00
    ld bc, $3efe                                  ; $54a1: $01 $fe $3e
    nop                                           ; $54a4: $00
    ld e, h                                       ; $54a5: $5c
    ld b, c                                       ; $54a6: $41
    ldh a, [$0b]                                  ; $54a7: $f0 $0b
    nop                                           ; $54a9: $00

Call_0d1_54aa:
    ld hl, sp-$79                                 ; $54aa: $f8 $87
    dec e                                         ; $54ac: $1d
    db $e4                                        ; $54ad: $e4
    rrca                                          ; $54ae: $0f
    ld d, $0e                                     ; $54af: $16 $0e
    inc bc                                        ; $54b1: $03
    nop                                           ; $54b2: $00
    rst $30                                       ; $54b3: $f7
    inc bc                                        ; $54b4: $03
    nop                                           ; $54b5: $00
    dec c                                         ; $54b6: $0d
    or b                                          ; $54b7: $b0
    and h                                         ; $54b8: $a4
    inc e                                         ; $54b9: $1c
    ld [bc], a                                    ; $54ba: $02
    nop                                           ; $54bb: $00
    ld c, h                                       ; $54bc: $4c
    ld b, d                                       ; $54bd: $42
    call nz, $c4c2                                ; $54be: $c4 $c2 $c4
    jp nz, $0204                                  ; $54c1: $c2 $04 $02

    nop                                           ; $54c4: $00
    call nz, Call_0d1_4cc2                        ; $54c5: $c4 $c2 $4c
    ld b, d                                       ; $54c8: $42
    ld e, h                                       ; $54c9: $5c
    ld b, d                                       ; $54ca: $42
    pop bc                                        ; $54cb: $c1
    add hl, sp                                    ; $54cc: $39
    dec b                                         ; $54cd: $05
    jp nz, Jump_0d1_7838                          ; $54ce: $c2 $38 $78

    pop bc                                        ; $54d1: $c1
    ld a, h                                       ; $54d2: $7c
    ld [bc], a                                    ; $54d3: $02
    db $10                                        ; $54d4: $10
    ld a, [hl]                                    ; $54d5: $7e
    adc b                                         ; $54d6: $88
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    inc e                                         ; $54d9: $1c
    add hl, de                                    ; $54da: $19
    ld l, $0c                                     ; $54db: $2e $0c
    rst $18                                       ; $54dd: $df
    nop                                           ; $54de: $00
    rst $08                                       ; $54df: $cf
    stop                                          ; $54e0: $10 $00
    rst $38                                       ; $54e2: $ff
    nop                                           ; $54e3: $00
    cp [hl]                                       ; $54e4: $be
    nop                                           ; $54e5: $00
    ld a, $df                                     ; $54e6: $3e $df
    sub d                                         ; $54e8: $92
    ld h, c                                       ; $54e9: $61
    nop                                           ; $54ea: $00
    dec de                                        ; $54eb: $1b
    rrca                                          ; $54ec: $0f
    ld a, [c]                                     ; $54ed: $f2
    cp $fd                                        ; $54ee: $fe $fd
    nop                                           ; $54f0: $00
    ld a, $c0                                     ; $54f1: $3e $c0
    nop                                           ; $54f3: $00
    inc e                                         ; $54f4: $1c
    db $fc                                        ; $54f5: $fc
    dec e                                         ; $54f6: $1d
    db $fc                                        ; $54f7: $fc
    inc e                                         ; $54f8: $1c
    db $e4                                        ; $54f9: $e4
    add hl, de                                    ; $54fa: $19
    jp hl                                         ; $54fb: $e9


    ld [hl+], a                                   ; $54fc: $22
    cp h                                          ; $54fd: $bc
    add d                                         ; $54fe: $82
    ld [bc], a                                    ; $54ff: $02
    ld [$027c], sp                                ; $5500: $08 $7c $02
    ld [$0887], a                                 ; $5503: $ea $87 $08
    ld a, h                                       ; $5506: $7c
    jr nz, jr_0d1_548b                            ; $5507: $20 $82

    sbc h                                         ; $5509: $9c
    cp h                                          ; $550a: $bc
    ld [$c0f8], sp                                ; $550b: $08 $f8 $c0
    ld a, [c]                                     ; $550e: $f2
    pop bc                                        ; $550f: $c1
    inc bc                                        ; $5510: $03
    nop                                           ; $5511: $00
    jp nz, $c50d                                  ; $5512: $c2 $0d $c5

    add b                                         ; $5515: $80
    ld a, a                                       ; $5516: $7f
    rst $38                                       ; $5517: $ff
    nop                                           ; $5518: $00
    ld b, b                                       ; $5519: $40
    nop                                           ; $551a: $00
    ccf                                           ; $551b: $3f
    and b                                         ; $551c: $a0
    sbc a                                         ; $551d: $9f
    ldh [$7f], a                                  ; $551e: $e0 $7f
    cp a                                          ; $5520: $bf
    ccf                                           ; $5521: $3f
    jr nc, jr_0d1_5524                            ; $5522: $30 $00

jr_0d1_5524:
    ccf                                           ; $5524: $3f
    sbc b                                         ; $5525: $98
    rra                                           ; $5526: $1f
    rst $38                                       ; $5527: $ff
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    dec [hl]                                      ; $552b: $35
    nop                                           ; $552c: $00
    call nc, $b47c                                ; $552d: $d4 $7c $b4
    add hl, sp                                    ; $5530: $39
    ld hl, $87e6                                  ; $5531: $21 $e6 $87
    pop bc                                        ; $5534: $c1
    db $10                                        ; $5535: $10
    add [hl]                                      ; $5536: $86
    sub h                                         ; $5537: $94
    adc b                                         ; $5538: $88
    db $10                                        ; $5539: $10
    ld [$8e02], sp                                ; $553a: $08 $02 $8e
    add d                                         ; $553d: $82
    ld c, [hl]                                    ; $553e: $4e
    nop                                           ; $553f: $00
    add d                                         ; $5540: $82
    ld c, [hl]                                    ; $5541: $4e
    ld [bc], a                                    ; $5542: $02
    adc $82                                       ; $5543: $ce $82
    add h                                         ; $5545: $84
    ld [hl+], a                                   ; $5546: $22
    jr nz, jr_0d1_5549                            ; $5547: $20 $00

jr_0d1_5549:
    nop                                           ; $5549: $00
    cp $fe                                        ; $554a: $fe $fe
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    ld bc, $00d8                                  ; $554e: $01 $d8 $00
    nop                                           ; $5551: $00
    rst $38                                       ; $5552: $ff
    ld a, a                                       ; $5553: $7f
    ret nz                                        ; $5554: $c0

    ld a, a                                       ; $5555: $7f
    ld a, a                                       ; $5556: $7f
    ret nz                                        ; $5557: $c0

    ld a, h                                       ; $5558: $7c
    ret nz                                        ; $5559: $c0

    nop                                           ; $555a: $00
    cp c                                          ; $555b: $b9
    jp $c3a0                                      ; $555c: $c3 $a0 $c3


    adc e                                         ; $555f: $8b
    ret nc                                        ; $5560: $d0

    sub e                                         ; $5561: $93
    call z, $ff20                                 ; $5562: $cc $20 $ff
    nop                                           ; $5565: $00
    ld bc, $0700                                  ; $5566: $01 $00 $07
    ld hl, sp-$40                                 ; $5569: $f8 $c0
    add hl, sp                                    ; $556b: $39
    ld e, a                                       ; $556c: $5f
    ld [bc], a                                    ; $556d: $02
    sbc h                                         ; $556e: $9c
    rst $28                                       ; $556f: $ef
    ld a, e                                       ; $5570: $7b
    rst $00                                       ; $5571: $c7
    ret                                           ; $5572: $c9


    jr nc, @+$12                                  ; $5573: $30 $10

    ld [$009f], sp                                ; $5575: $08 $9f $00
    nop                                           ; $5578: $00
    ld c, a                                       ; $5579: $4f
    ld h, b                                       ; $557a: $60
    ldh a, [$c3]                                  ; $557b: $f0 $c3
    db $fc                                        ; $557d: $fc
    ld h, c                                       ; $557e: $61
    or $01                                        ; $557f: $f6 $01
    sbc $fb                                       ; $5581: $de $fb
    ld a, a                                       ; $5583: $7f
    cp $00                                        ; $5584: $fe $00
    ld [bc], a                                    ; $5586: $02
    db $fc                                        ; $5587: $fc
    ld [bc], a                                    ; $5588: $02
    jr nc, jr_0d1_558b                            ; $5589: $30 $00

jr_0d1_558b:
    ld a, h                                       ; $558b: $7c
    add d                                         ; $558c: $82
    sbc h                                         ; $558d: $9c
    and h                                         ; $558e: $a4
    ld [hl], a                                    ; $558f: $77
    sub a                                         ; $5590: $97
    ld c, h                                       ; $5591: $4c
    sbc a                                         ; $5592: $9f
    nop                                           ; $5593: $00
    ld b, e                                       ; $5594: $43
    add h                                         ; $5595: $84
    ld e, h                                       ; $5596: $5c
    call $c260                                    ; $5597: $cd $60 $c2
    ld h, c                                       ; $559a: $61
    ld h, b                                       ; $559b: $60
    nop                                           ; $559c: $00
    jp nz, $c178                                  ; $559d: $c2 $78 $c1

    ld h, [hl]                                    ; $55a0: $66
    add [hl]                                      ; $55a1: $86
    sub a                                         ; $55a2: $97
    db $10                                        ; $55a3: $10
    ccf                                           ; $55a4: $3f
    nop                                           ; $55a5: $00
    jr nz, jr_0d1_5608                            ; $55a6: $20 $60

    rra                                           ; $55a8: $1f
    ldh a, [$30]                                  ; $55a9: $f0 $30
    ldh [$7c], a                                  ; $55ab: $e0 $7c
    cp $00                                        ; $55ad: $fe $00
    push bc                                       ; $55af: $c5
    ld sp, hl                                     ; $55b0: $f9
    adc e                                         ; $55b1: $8b
    ld a, e                                       ; $55b2: $7b
    inc c                                         ; $55b3: $0c
    ld e, $29                                     ; $55b4: $1e $29
    rst $18                                       ; $55b6: $df
    nop                                           ; $55b7: $00
    jp $e32c                                      ; $55b8: $c3 $2c $e3


    sub h                                         ; $55bb: $94
    pop af                                        ; $55bc: $f1
    adc e                                         ; $55bd: $8b
    ld hl, sp-$25                                 ; $55be: $f8 $db
    nop                                           ; $55c0: $00
    and d                                         ; $55c1: $a2
    adc [hl]                                      ; $55c2: $8e
    ld [hl], a                                    ; $55c3: $77
    jp nz, $e29c                                  ; $55c4: $c2 $9c $e2

    inc c                                         ; $55c7: $0c
    jp nz, $8e00                                  ; $55c8: $c2 $00 $8e

    ld b, d                                       ; $55cb: $42
    ld e, $9c                                     ; $55cc: $1e $9c
    jp nz, $8284                                  ; $55ce: $c2 $84 $82

    adc b                                         ; $55d1: $88
    nop                                           ; $55d2: $00
    or d                                          ; $55d3: $b2
    jr nz, jr_0d1_55d8                            ; $55d4: $20 $02

    ld a, h                                       ; $55d6: $7c
    ret nz                                        ; $55d7: $c0

jr_0d1_55d8:
    ld a, l                                       ; $55d8: $7d
    ret nz                                        ; $55d9: $c0

    pop bc                                        ; $55da: $c1
    jr @+$3f                                      ; $55db: $18 $3d

    ret nz                                        ; $55dd: $c0

    ld a, $87                                     ; $55de: $3e $87
    nop                                           ; $55e0: $00

jr_0d1_55e1:
    ld [bc], a                                    ; $55e1: $02
    db $10                                        ; $55e2: $10
    ld sp, hl                                     ; $55e3: $f9
    adc e                                         ; $55e4: $8b
    ld a, a                                       ; $55e5: $7f
    nop                                           ; $55e6: $00
    add $60                                       ; $55e7: $c6 $60
    ld a, a                                       ; $55e9: $7f
    ldh a, [$2f]                                  ; $55ea: $f0 $2f
    ld h, b                                       ; $55ec: $60
    cpl                                           ; $55ed: $2f
    ld h, d                                       ; $55ee: $62
    nop                                           ; $55ef: $00
    rra                                           ; $55f0: $1f
    sub c                                         ; $55f1: $91
    inc sp                                        ; $55f2: $33
    jp $f81f                                      ; $55f3: $c3 $1f $f8


    ld h, h                                       ; $55f6: $64
    ld hl, sp+$40                                 ; $55f7: $f8 $40
    db $f4                                        ; $55f9: $f4
    ld [bc], a                                    ; $55fa: $02
    db $10                                        ; $55fb: $10
    db $e4                                        ; $55fc: $e4
    ldh a, [$e8]                                  ; $55fd: $f0 $e8
    jr nc, jr_0d1_55e1                            ; $55ff: $30 $e0

    ld h, [hl]                                    ; $5601: $66
    nop                                           ; $5602: $00
    ret nz                                        ; $5603: $c0

    ld a, [hl-]                                   ; $5604: $3a
    ld b, d                                       ; $5605: $42
    ld a, [bc]                                    ; $5606: $0a
    ld [hl], d                                    ; $5607: $72

jr_0d1_5608:
    inc [hl]                                      ; $5608: $34
    ld a, [c]                                     ; $5609: $f2
    inc l                                         ; $560a: $2c
    nop                                           ; $560b: $00
    ld [c], a                                     ; $560c: $e2
    call c, $bcc2                                 ; $560d: $dc $c2 $bc
    add d                                         ; $5610: $82
    dec a                                         ; $5611: $3d
    inc bc                                        ; $5612: $03
    dec e                                         ; $5613: $1d
    ld h, b                                       ; $5614: $60
    inc bc                                        ; $5615: $03
    jr c, jr_0d1_5640                             ; $5616: $38 $28

    ld b, b                                       ; $5618: $40
    ld [$7f80], sp                                ; $5619: $08 $80 $7f
    rst $38                                       ; $561c: $ff
    nop                                           ; $561d: $00
    db $e3                                        ; $561e: $e3
    nop                                           ; $561f: $00
    rlca                                          ; $5620: $07
    ld hl, sp+$00                                 ; $5621: $f8 $00
    db $fc                                        ; $5623: $fc
    db $fd                                        ; $5624: $fd
    ld a, [$06f8]                                 ; $5625: $fa $f8 $06
    db $10                                        ; $5628: $10
    ld a, [c]                                     ; $5629: $f2
    ld [$cce0], sp                                ; $562a: $08 $e0 $cc
    ld [$31ce], sp                                ; $562d: $08 $ce $31
    ld e, $2c                                     ; $5630: $1e $2c
    nop                                           ; $5632: $00
    ld a, $5c                                     ; $5633: $3e $5c
    ld a, h                                       ; $5635: $7c
    add hl, de                                    ; $5636: $19
    ld a, c                                       ; $5637: $79
    inc sp                                        ; $5638: $33
    ld a, [c]                                     ; $5639: $f2
    ld h, [hl]                                    ; $563a: $66
    add b                                         ; $563b: $80
    call c, Call_000_0210                         ; $563c: $dc $10 $02
    ld [hl], h                                    ; $563f: $74

jr_0d1_5640:
    ld [hl-], a                                   ; $5640: $32
    sbc d                                         ; $5641: $9a
    ld b, [hl]                                    ; $5642: $46
    ld [hl-], a                                   ; $5643: $32
    adc [hl]                                      ; $5644: $8e
    nop                                           ; $5645: $00
    inc a                                         ; $5646: $3c
    ld a, [de]                                    ; $5647: $1a
    ld a, h                                       ; $5648: $7c
    ld [hl-], a                                   ; $5649: $32
    nop                                           ; $564a: $00
    cp $fe                                        ; $564b: $fe $fe
    nop                                           ; $564d: $00

jr_0d1_564e:
    nop                                           ; $564e: $00
    ld bc, $00ee                                  ; $564f: $01 $ee $00
    nop                                           ; $5652: $00
    ld a, a                                       ; $5653: $7f
    rst $38                                       ; $5654: $ff
    ld a, a                                       ; $5655: $7f
    ret nz                                        ; $5656: $c0

    ret nz                                        ; $5657: $c0

    ld a, h                                       ; $5658: $7c
    jp Jump_000_0078                              ; $5659: $c3 $78 $00


    ld [hl], b                                    ; $565c: $70
    rst $00                                       ; $565d: $c7
    ld h, b                                       ; $565e: $60
    adc $cc                                       ; $565f: $ce $cc
    ld d, c                                       ; $5661: $51
    ret z                                         ; $5662: $c8

    ld d, e                                       ; $5663: $53
    nop                                           ; $5664: $00
    rst $38                                       ; $5665: $ff
    nop                                           ; $5666: $00
    ld e, b                                       ; $5667: $58
    ld e, e                                       ; $5668: $5b
    ld hl, $c87c                                  ; $5669: $21 $7c $c8
    call c, Call_000_2000                         ; $566c: $dc $00 $20
    cp h                                          ; $566f: $bc
    ld c, $30                                     ; $5670: $0e $30
    call nc, $79ac                                ; $5672: $d4 $ac $79
    ld b, c                                       ; $5675: $41
    nop                                           ; $5676: $00
    rst $38                                       ; $5677: $ff
    nop                                           ; $5678: $00
    rrca                                          ; $5679: $0f
    adc $04                                       ; $567a: $ce $04
    dec sp                                        ; $567c: $3b
    dec sp                                        ; $567d: $3b
    inc [hl]                                      ; $567e: $34
    nop                                           ; $567f: $00
    ld h, e                                       ; $5680: $63
    ld [hl], a                                    ; $5681: $77
    pop af                                        ; $5682: $f1
    dec de                                        ; $5683: $1b
    ld b, e                                       ; $5684: $43
    jr c, jr_0d1_56aa                             ; $5685: $38 $23

    ld de, $0100                                  ; $5687: $11 $00 $01
    rst $38                                       ; $568a: $ff
    dec a                                         ; $568b: $3d
    inc bc                                        ; $568c: $03
    ld e, $c2                                     ; $568d: $1e $c2
    ld c, $e2                                     ; $568f: $0e $e2
    nop                                           ; $5691: $00
    ld [hl], h                                    ; $5692: $74
    ld [hl], d                                    ; $5693: $72
    cp b                                          ; $5694: $b8
    cp d                                          ; $5695: $ba
    sbc d                                         ; $5696: $9a
    ld [hl+], a                                   ; $5697: $22
    ld e, d                                       ; $5698: $5a
    add [hl]                                      ; $5699: $86
    nop                                           ; $569a: $00
    ret z                                         ; $569b: $c8

    ld [hl], e                                    ; $569c: $73
    add sp, $55                                   ; $569d: $e8 $55
    ret nc                                        ; $569f: $d0

    ld c, l                                       ; $56a0: $4d
    ret nc                                        ; $56a1: $d0

    ld b, c                                       ; $56a2: $41
    nop                                           ; $56a3: $00
    jp nz, $c222                                  ; $56a4: $c2 $22 $c2

    ld [hl], $76                                  ; $56a7: $36 $76
    ret nz                                        ; $56a9: $c0

jr_0d1_56aa:
    halt                                          ; $56aa: $76
    ret nz                                        ; $56ab: $c0

    nop                                           ; $56ac: $00
    scf                                           ; $56ad: $37
    inc hl                                        ; $56ae: $23
    dec h                                         ; $56af: $25
    daa                                           ; $56b0: $27
    rla                                           ; $56b1: $17
    ld d, b                                       ; $56b2: $50
    add c                                         ; $56b3: $81
    ld a, [hl]                                    ; $56b4: $7e
    nop                                           ; $56b5: $00
    inc bc                                        ; $56b6: $03
    add h                                         ; $56b7: $84
    rst $38                                       ; $56b8: $ff
    inc a                                         ; $56b9: $3c
    sbc l                                         ; $56ba: $9d
    jr nc, jr_0d1_564e                            ; $56bb: $30 $91

    jr nc, jr_0d1_56bf                            ; $56bd: $30 $00

jr_0d1_56bf:
    or c                                          ; $56bf: $b1
    jr nc, jr_0d1_56ec                            ; $56c0: $30 $2a

    and b                                         ; $56c2: $a0
    nop                                           ; $56c3: $00
    call c, $82fd                                 ; $56c4: $dc $fd $82
    nop                                           ; $56c7: $00
    ld bc, $3f01                                  ; $56c8: $01 $01 $3f
    jp $0db9                                      ; $56cb: $c3 $b9 $0d


    adc c                                         ; $56ce: $89
    dec c                                         ; $56cf: $0d
    nop                                           ; $56d0: $00
    add d                                         ; $56d1: $82
    ld e, $02                                     ; $56d2: $1e $02
    ld e, [hl]                                    ; $56d4: $5e
    ld [bc], a                                    ; $56d5: $02
    ld a, b                                       ; $56d6: $78
    ld b, $24                                     ; $56d7: $06 $24
    nop                                           ; $56d9: $00
    ld b, h                                       ; $56da: $44
    ld b, d                                       ; $56db: $42
    ld l, h                                       ; $56dc: $6c
    ld [hl+], a                                   ; $56dd: $22
    ld e, h                                       ; $56de: $5c
    ld e, $5c                                     ; $56df: $1e $5c
    ld e, $00                                     ; $56e1: $1e $00
    halt                                          ; $56e3: $76
    ret nz                                        ; $56e4: $c0

    ld a, d                                       ; $56e5: $7a
    jp nz, $c07c                                  ; $56e6: $c2 $7c $c0

    ld a, [hl]                                    ; $56e9: $7e
    ret nz                                        ; $56ea: $c0

    ld b, b                                       ; $56eb: $40

jr_0d1_56ec:
    ld a, a                                       ; $56ec: $7f
    ld [bc], a                                    ; $56ed: $02
    db $10                                        ; $56ee: $10
    ld a, [hl]                                    ; $56ef: $7e
    ret nz                                        ; $56f0: $c0

    jp $fefe                                      ; $56f1: $c3 $fe $fe


    cp $00                                        ; $56f4: $fe $00
    rst $38                                       ; $56f6: $ff
    nop                                           ; $56f7: $00
    ld a, a                                       ; $56f8: $7f
    nop                                           ; $56f9: $00
    inc bc                                        ; $56fa: $03
    ld a, h                                       ; $56fb: $7c
    ld b, h                                       ; $56fc: $44
    ld a, b                                       ; $56fd: $78
    nop                                           ; $56fe: $00
    ld a, $3c                                     ; $56ff: $3e $3c
    rra                                           ; $5701: $1f
    ccf                                           ; $5702: $3f
    ret nz                                        ; $5703: $c0

    inc bc                                        ; $5704: $03
    ld hl, sp+$07                                 ; $5705: $f8 $07
    add b                                         ; $5707: $80
    ld [bc], a                                    ; $5708: $02
    nop                                           ; $5709: $00
    ld b, $8e                                     ; $570a: $06 $8e
    ld [hl], d                                    ; $570c: $72
    ld e, l                                       ; $570d: $5d
    dec h                                         ; $570e: $25
    ldh a, [rWX]                                  ; $570f: $f0 $4b
    nop                                           ; $5711: $00
    ldh [$93], a                                  ; $5712: $e0 $93
    ld e, h                                       ; $5714: $5c
    ld b, d                                       ; $5715: $42
    ld e, h                                       ; $5716: $5c
    ld b, d                                       ; $5717: $42
    jp nz, Jump_0d1_50fc                          ; $5718: $c2 $fc $50

    ld [bc], a                                    ; $571b: $02
    ld [bc], a                                    ; $571c: $02
    db $10                                        ; $571d: $10
    cp $08                                        ; $571e: $fe $08
    nop                                           ; $5720: $00
    ld a, l                                       ; $5721: $7d
    ret nz                                        ; $5722: $c0

    ld a, e                                       ; $5723: $7b
    ret nz                                        ; $5724: $c0

    nop                                           ; $5725: $00
    push af                                       ; $5726: $f5
    jp nz, $c2f5                                  ; $5727: $c2 $f5 $c2

    scf                                           ; $572a: $37
    ldh a, [$2f]                                  ; $572b: $f0 $2f
    add sp, $00                                   ; $572d: $e8 $00
    add b                                         ; $572f: $80
    ld a, a                                       ; $5730: $7f
    rst $38                                       ; $5731: $ff
    nop                                           ; $5732: $00
    rlca                                          ; $5733: $07
    ld c, a                                       ; $5734: $4f
    ld h, e                                       ; $5735: $63
    stop                                          ; $5736: $10 $00
    ld c, h                                       ; $5738: $4c
    inc [hl]                                      ; $5739: $34
    ld b, b                                       ; $573a: $40
    ccf                                           ; $573b: $3f
    and b                                         ; $573c: $a0
    sbc a                                         ; $573d: $9f
    or b                                          ; $573e: $b0
    adc a                                         ; $573f: $8f
    nop                                           ; $5740: $00
    rst $38                                       ; $5741: $ff
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    dec [hl]                                      ; $5745: $35
    ret nc                                        ; $5746: $d0

    ld a, d                                       ; $5747: $7a
    ldh [rP1], a                                  ; $5748: $e0 $00
    ld [hl-], a                                   ; $574a: $32
    ld c, e                                       ; $574b: $4b
    di                                            ; $574c: $f3
    rlca                                          ; $574d: $07
    ld [hl], l                                    ; $574e: $75
    add [hl]                                      ; $574f: $86
    push af                                       ; $5750: $f5
    ld b, $c0                                     ; $5751: $06 $c0
    db $10                                        ; $5753: $10
    ld [$083a], sp                                ; $5754: $08 $3a $08
    inc bc                                        ; $5757: $03
    ld a, l                                       ; $5758: $7d
    inc bc                                        ; $5759: $03
    ld a, l                                       ; $575a: $7d
    ld a, $bc                                     ; $575b: $3e $bc
    nop                                           ; $575d: $00
    ld a, $bc                                     ; $575e: $3e $bc
    nop                                           ; $5760: $00
    cp $fe                                        ; $5761: $fe $fe
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    ld bc, $00f6                                  ; $5765: $01 $f6 $00
    db $10                                        ; $5768: $10
    rst $38                                       ; $5769: $ff
    ld a, a                                       ; $576a: $7f
    ret nz                                        ; $576b: $c0

    ld [bc], a                                    ; $576c: $02
    ld [$7063], sp                                ; $576d: $08 $63 $70
    ldh a, [$66]                                  ; $5770: $f0 $66
    nop                                           ; $5772: $00
    ldh [$0c], a                                  ; $5773: $e0 $0c
    ret z                                         ; $5775: $c8

    cpl                                           ; $5776: $2f
    rst $20                                       ; $5777: $e7
    nop                                           ; $5778: $00
    rst $38                                       ; $5779: $ff
    dec a                                         ; $577a: $3d

jr_0d1_577b:
    nop                                           ; $577b: $00
    dec c                                         ; $577c: $0d
    ld [bc], a                                    ; $577d: $02
    db $10                                        ; $577e: $10
    ld h, $04                                     ; $577f: $26 $04
    sbc c                                         ; $5781: $99
    and $b6                                       ; $5782: $e6 $b6
    nop                                           ; $5784: $00
    ld h, d                                       ; $5785: $62
    ld c, d                                       ; $5786: $4a
    add h                                         ; $5787: $84
    sub b                                         ; $5788: $90
    ld [$ff00], sp                                ; $5789: $08 $00 $ff

jr_0d1_578c:
    ld b, a                                       ; $578c: $47

jr_0d1_578d:
    nop                                           ; $578d: $00
    ld b, b                                       ; $578e: $40
    ld c, b                                       ; $578f: $48
    ld bc, $307c                                  ; $5790: $01 $7c $30
    cp d                                          ; $5793: $ba
    ld d, l                                       ; $5794: $55
    and e                                         ; $5795: $a3
    nop                                           ; $5796: $00
    ld l, b                                       ; $5797: $68
    adc e                                         ; $5798: $8b
    dec d                                         ; $5799: $15
    add c                                         ; $579a: $81
    ld b, [hl]                                    ; $579b: $46
    nop                                           ; $579c: $00
    cp $fc                                        ; $579d: $fe $fc
    nop                                           ; $579f: $00
    ld [bc], a                                    ; $57a0: $02
    inc a                                         ; $57a1: $3c
    ld [bc], a                                    ; $57a2: $02
    and h                                         ; $57a3: $a4
    add d                                         ; $57a4: $82
    ld [bc], a                                    ; $57a5: $02
    adc b                                         ; $57a6: $88
    ld b, [hl]                                    ; $57a7: $46
    nop                                           ; $57a8: $00
    ldh [rLCDC], a                                ; $57a9: $e0 $40
    ld b, [hl]                                    ; $57ab: $46
    ld h, b                                       ; $57ac: $60
    ld b, d                                       ; $57ad: $42
    ld a, a                                       ; $57ae: $7f
    ret nz                                        ; $57af: $c0

    ld h, h                                       ; $57b0: $64
    nop                                           ; $57b1: $00
    ret nz                                        ; $57b2: $c0

    ld c, $c6                                     ; $57b3: $0e $c6
    add hl, de                                    ; $57b5: $19
    ret z                                         ; $57b6: $c8

    dec d                                         ; $57b7: $15
    call nz, $0026                                ; $57b8: $c4 $26 $00
    ldh [$86], a                                  ; $57bb: $e0 $86
    ret nz                                        ; $57bd: $c0

    add [hl]                                      ; $57be: $86
    ret nz                                        ; $57bf: $c0

    db $10                                        ; $57c0: $10
    ld b, $17                                     ; $57c1: $06 $17
    nop                                           ; $57c3: $00
    ld b, a                                       ; $57c4: $47
    rst $28                                       ; $57c5: $ef
    ld l, [hl]                                    ; $57c6: $6e
    add e                                         ; $57c7: $83
    db $fc                                        ; $57c8: $fc
    add b                                         ; $57c9: $80
    rst $38                                       ; $57ca: $ff
    ld l, [hl]                                    ; $57cb: $6e
    nop                                           ; $57cc: $00
    xor c                                         ; $57cd: $a9
    jr jr_0d1_577b                                ; $57ce: $18 $ab

    jr nz, @-$7b                                  ; $57d0: $20 $83

    ld b, c                                       ; $57d2: $41
    jr jr_0d1_578d                                ; $57d3: $18 $b8

    nop                                           ; $57d5: $00
    cp [hl]                                       ; $57d6: $be
    cp $7c                                        ; $57d7: $fe $7c
    add e                                         ; $57d9: $83
    ld a, [hl]                                    ; $57da: $7e
    inc bc                                        ; $57db: $03
    cp $ec                                        ; $57dc: $fe $ec
    nop                                           ; $57de: $00
    ld a, [hl+]                                   ; $57df: $2a
    jr nc, jr_0d1_578c                            ; $57e0: $30 $aa

    ld [$7082], sp                                ; $57e2: $08 $82 $70
    ld [bc], a                                    ; $57e5: $02
    ld [hl], b                                    ; $57e6: $70
    nop                                           ; $57e7: $00
    ld d, [hl]                                    ; $57e8: $56
    jr nc, jr_0d1_5821                            ; $57e9: $30 $36

    db $10                                        ; $57eb: $10
    ld [bc], a                                    ; $57ec: $02
    ld e, b                                       ; $57ed: $58
    ld c, d                                       ; $57ee: $4a
    call c, $8e00                                 ; $57ef: $dc $00 $8e
    add d                                         ; $57f2: $82
    ld d, d                                       ; $57f3: $52
    sub d                                         ; $57f4: $92
    ld c, d                                       ; $57f5: $4a
    sub [hl]                                      ; $57f6: $96
    ld d, b                                       ; $57f7: $50
    adc d                                         ; $57f8: $8a
    nop                                           ; $57f9: $00
    ld c, b                                       ; $57fa: $48
    ld c, b                                       ; $57fb: $48
    ldh [rOBP0], a                                ; $57fc: $e0 $48
    ldh [$ab], a                                  ; $57fe: $e0 $ab
    ld c, b                                       ; $5800: $48
    and e                                         ; $5801: $a3
    nop                                           ; $5802: $00
    ld b, b                                       ; $5803: $40
    and a                                         ; $5804: $a7
    ret nz                                        ; $5805: $c0

    xor a                                         ; $5806: $af
    ret nz                                        ; $5807: $c0

    add d                                         ; $5808: $82
    rst $00                                       ; $5809: $c7
    cp $00                                        ; $580a: $fe $00
    push bc                                       ; $580c: $c5
    ld a, a                                       ; $580d: $7f
    add b                                         ; $580e: $80
    ld [hl], b                                    ; $580f: $70
    rrca                                          ; $5810: $0f
    ld a, b                                       ; $5811: $78
    nop                                           ; $5812: $00
    add hl, sp                                    ; $5813: $39
    nop                                           ; $5814: $00
    ld b, l                                       ; $5815: $45
    sbc h                                         ; $5816: $9c
    ld a, $8f                                     ; $5817: $3e $8f
    rra                                           ; $5819: $1f
    ld b, h                                       ; $581a: $44
    add d                                         ; $581b: $82
    cp b                                          ; $581c: $b8
    nop                                           ; $581d: $00
    cp $02                                        ; $581e: $fe $02
    db $fc                                        ; $5820: $fc

jr_0d1_5821:
    ld [c], a                                     ; $5821: $e2
    ld e, $3d                                     ; $5822: $1e $3d
    inc a                                         ; $5824: $3c
    add hl, sp                                    ; $5825: $39
    nop                                           ; $5826: $00
    ld a, h                                       ; $5827: $7c
    adc e                                         ; $5828: $8b
    ld hl, sp+$13                                 ; $5829: $f8 $13
    ldh a, [$82]                                  ; $582b: $f0 $82
    ld e, [hl]                                    ; $582d: $5e
    ld [bc], a                                    ; $582e: $02
    nop                                           ; $582f: $00
    or d                                          ; $5830: $b2
    ld [hl+], a                                   ; $5831: $22
    ld a, [bc]                                    ; $5832: $0a
    ld [hl+], a                                   ; $5833: $22
    ld c, $2c                                     ; $5834: $0e $2c
    ld c, $ac                                     ; $5836: $0e $ac
    ld bc, $a48e                                  ; $5838: $01 $8e $a4
    ld [hl+], a                                   ; $583b: $22
    call z, $bf02                                 ; $583c: $cc $02 $bf
    ret nz                                        ; $583f: $c0

    ld [bc], a                                    ; $5840: $02
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    ld b, c                                       ; $5843: $41
    cp a                                          ; $5844: $bf
    ld b, e                                       ; $5845: $43
    ld hl, sp+$40                                 ; $5846: $f8 $40
    ldh a, [rSCX]                                 ; $5848: $f0 $43
    add b                                         ; $584a: $80
    nop                                           ; $584b: $00
    ld a, a                                       ; $584c: $7f
    rst $38                                       ; $584d: $ff
    nop                                           ; $584e: $00
    adc b                                         ; $584f: $88
    rlca                                          ; $5850: $07
    rrca                                          ; $5851: $0f
    inc c                                         ; $5852: $0c
    rrca                                          ; $5853: $0f
    nop                                           ; $5854: $00
    sbc a                                         ; $5855: $9f
    add b                                         ; $5856: $80
    ld e, a                                       ; $5857: $5f
    rrca                                          ; $5858: $0f
    call z, Call_0d1_60c7                         ; $5859: $cc $c7 $60
    rst $38                                       ; $585c: $ff
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    ld hl, $e2c0                                  ; $5861: $21 $c0 $e2
    ld h, d                                       ; $5864: $62
    add sp, $01                                   ; $5865: $e8 $01
    ei                                            ; $5867: $fb
    rlca                                          ; $5868: $07
    ld a, [c]                                     ; $5869: $f2
    push hl                                       ; $586a: $e5
    ld h, d                                       ; $586b: $62
    adc e                                         ; $586c: $8b
    ld b, $10                                     ; $586d: $06 $10
    ld [$fc40], sp                                ; $586f: $08 $40 $fc
    ret nz                                        ; $5872: $c0

    nop                                           ; $5873: $00
    db $fc                                        ; $5874: $fc
    add d                                         ; $5875: $82
    db $fc                                        ; $5876: $fc
    jp nz, Jump_000_1e1c                          ; $5877: $c2 $1c $1e

    nop                                           ; $587a: $00
    adc h                                         ; $587b: $8c
    ld c, $00                                     ; $587c: $0e $00
    cp $fe                                        ; $587e: $fe $fe
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    ld bc, $00f9                                  ; $5882: $01 $f9 $00
    nop                                           ; $5885: $00
    rst $38                                       ; $5886: $ff
    ld a, a                                       ; $5887: $7f
    ret nz                                        ; $5888: $c0

    ld b, a                                       ; $5889: $47
    ld hl, $13e0                                  ; $588a: $21 $e0 $13
    ret nc                                        ; $588d: $d0

    nop                                           ; $588e: $00
    inc a                                         ; $588f: $3c
    db $f4                                        ; $5890: $f4
    rrca                                          ; $5891: $0f
    swap a                                        ; $5892: $cb $37
    push af                                       ; $5894: $f5
    scf                                           ; $5895: $37
    or $00                                        ; $5896: $f6 $00
    rst $38                                       ; $5898: $ff
    nop                                           ; $5899: $00
    ld bc, $9f21                                  ; $589a: $01 $21 $9f
    ld h, e                                       ; $589d: $63
    rlca                                          ; $589e: $07
    add [hl]                                      ; $589f: $86
    db $10                                        ; $58a0: $10
    ld a, b                                       ; $58a1: $78
    nop                                           ; $58a2: $00
    add a                                         ; $58a3: $87
    inc bc                                        ; $58a4: $03
    nop                                           ; $58a5: $00
    ld hl, sp+$38                                 ; $58a6: $f8 $38
    rst $38                                       ; $58a8: $ff
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    ld h, b                                       ; $58ab: $60
    ldh a, [$3b]                                  ; $58ac: $f0 $3b
    db $db                                        ; $58ae: $db
    ld [hl], e                                    ; $58af: $73
    sub e                                         ; $58b0: $93
    ret z                                         ; $58b1: $c8

    ccf                                           ; $58b2: $3f
    nop                                           ; $58b3: $00
    jr jr_0d1_5935                                ; $58b4: $18 $7f

    rra                                           ; $58b6: $1f
    add c                                         ; $58b7: $81
    rrca                                          ; $58b8: $0f
    db $e3                                        ; $58b9: $e3
    cp $00                                        ; $58ba: $fe $00
    nop                                           ; $58bc: $00
    adc [hl]                                      ; $58bd: $8e
    db $fc                                        ; $58be: $fc
    ld b, $da                                     ; $58bf: $06 $da
    ld b, $fa                                     ; $58c1: $06 $fa
    ld c, $f2                                     ; $58c3: $0e $f2
    nop                                           ; $58c5: $00
    ld a, [de]                                    ; $58c6: $1a
    and $12                                       ; $58c7: $e6 $12
    ld l, [hl]                                    ; $58c9: $6e
    ld [hl+], a                                   ; $58ca: $22
    ld e, [hl]                                    ; $58cb: $5e
    xor a                                         ; $58cc: $af
    ld c, a                                       ; $58cd: $4f
    nop                                           ; $58ce: $00
    xor l                                         ; $58cf: $ad
    ld c, l                                       ; $58d0: $4d
    sbc e                                         ; $58d1: $9b
    ld e, b                                       ; $58d2: $58
    sbc e                                         ; $58d3: $9b
    ld e, b                                       ; $58d4: $58
    ret nz                                        ; $58d5: $c0

    ld c, e                                       ; $58d6: $4b
    add b                                         ; $58d7: $80
    ld [bc], a                                    ; $58d8: $02
    nop                                           ; $58d9: $00
    ld h, l                                       ; $58da: $65
    ret nz                                        ; $58db: $c0

    ld h, c                                       ; $58dc: $61
    adc a                                         ; $58dd: $8f
    ld l, a                                       ; $58de: $6f
    inc e                                         ; $58df: $1c
    rst $18                                       ; $58e0: $df
    nop                                           ; $58e1: $00
    ld [hl-], a                                   ; $58e2: $32
    ld sp, $6669                                  ; $58e3: $31 $69 $66
    ld d, a                                       ; $58e6: $57
    ld c, b                                       ; $58e7: $48
    call z, Call_000_00d3                         ; $58e8: $cc $d3 $00
    ld a, a                                       ; $58eb: $7f
    jp Jump_0d1_467e                              ; $58ec: $c3 $7e $46


    jr nc, @+$39                                  ; $58ef: $30 $37

    ld hl, sp+$0b                                 ; $58f1: $f8 $0b
    nop                                           ; $58f3: $00
    inc e                                         ; $58f4: $1c
    db $ec                                        ; $58f5: $ec
    rst $30                                       ; $58f6: $f7
    dec bc                                        ; $58f7: $0b
    ld [bc], a                                    ; $58f8: $02
    db $fc                                        ; $58f9: $fc
    ldh a, [rIF]                                  ; $58fa: $f0 $0f
    nop                                           ; $58fc: $00
    rst $30                                       ; $58fd: $f7
    ld hl, sp+$13                                 ; $58fe: $f8 $13
    inc e                                         ; $5900: $1c
    ld [bc], a                                    ; $5901: $02
    db $fc                                        ; $5902: $fc
    ld [de], a                                    ; $5903: $12
    db $fc                                        ; $5904: $fc
    nop                                           ; $5905: $00
    ld [de], a                                    ; $5906: $12
    xor $02                                       ; $5907: $ee $02
    ld a, [hl]                                    ; $5909: $7e
    ld [bc], a                                    ; $590a: $02
    ld a, $82                                     ; $590b: $3e $82
    ld e, $00                                     ; $590d: $1e $00
    add [hl]                                      ; $590f: $86
    ld b, d                                       ; $5910: $42
    adc $22                                       ; $5911: $ce $22
    ret nz                                        ; $5913: $c0

    ld b, [hl]                                    ; $5914: $46
    ret nz                                        ; $5915: $c0

    ld b, a                                       ; $5916: $47
    nop                                           ; $5917: $00
    ret nz                                        ; $5918: $c0

    ld a, c                                       ; $5919: $79
    ret nz                                        ; $591a: $c0

    ld a, h                                       ; $591b: $7c
    ret nz                                        ; $591c: $c0

    ld a, [hl]                                    ; $591d: $7e
    ret nz                                        ; $591e: $c0

    ld a, [hl]                                    ; $591f: $7e
    nop                                           ; $5920: $00
    ldh [$5f], a                                  ; $5921: $e0 $5f
    ldh a, [rVBK]                                 ; $5923: $f0 $4f
    ld hl, sp-$7a                                 ; $5925: $f8 $86
    ld hl, sp-$7a                                 ; $5927: $f8 $86
    nop                                           ; $5929: $00
    ld a, b                                       ; $592a: $78
    ld a, $78                                     ; $592b: $3e $78
    ccf                                           ; $592d: $3f
    ccf                                           ; $592e: $3f
    ld b, a                                       ; $592f: $47
    ccf                                           ; $5930: $3f
    ld b, b                                       ; $5931: $40
    nop                                           ; $5932: $00
    ld e, a                                       ; $5933: $5f
    ld h, b                                       ; $5934: $60

jr_0d1_5935:
    ld c, a                                       ; $5935: $4f
    ld [hl], b                                    ; $5936: $70
    cpl                                           ; $5937: $2f
    jr nc, jr_0d1_594a                            ; $5938: $30 $10

    rra                                           ; $593a: $1f
    nop                                           ; $593b: $00
    ld bc, $8786                                  ; $593c: $01 $86 $87
    ld c, c                                       ; $593f: $49
    ld de, $a3de                                  ; $5940: $11 $de $a3
    ld a, h                                       ; $5943: $7c
    nop                                           ; $5944: $00
    sbc $59                                       ; $5945: $de $59
    rst $38                                       ; $5947: $ff
    ld [hl], b                                    ; $5948: $70
    db $e4                                        ; $5949: $e4

jr_0d1_594a:
    ld b, $e4                                     ; $594a: $06 $e4
    ld b, $00                                     ; $594c: $06 $00
    ld sp, hl                                     ; $594e: $f9
    dec de                                        ; $594f: $1b
    ld sp, hl                                     ; $5950: $f9
    dec de                                        ; $5951: $1b
    ret nz                                        ; $5952: $c0

    ld [bc], a                                    ; $5953: $02

jr_0d1_5954:
    ret nz                                        ; $5954: $c0

    add d                                         ; $5955: $82
    nop                                           ; $5956: $00
    ldh a, [$72]                                  ; $5957: $f0 $72
    db $e4                                        ; $5959: $e4
    ld [c], a                                     ; $595a: $e2
    sbc a                                         ; $595b: $9f
    ld l, a                                       ; $595c: $6f
    cp a                                          ; $595d: $bf
    ld c, a                                       ; $595e: $4f
    nop                                           ; $595f: $00
    ld a, a                                       ; $5960: $7f
    ret nz                                        ; $5961: $c0

    ld a, a                                       ; $5962: $7f
    ret nz                                        ; $5963: $c0

    ld e, a                                       ; $5964: $5f
    ret nz                                        ; $5965: $c0

    ld a, [hl]                                    ; $5966: $7e
    pop bc                                        ; $5967: $c1
    nop                                           ; $5968: $00
    add b                                         ; $5969: $80
    ld a, a                                       ; $596a: $7f
    rst $38                                       ; $596b: $ff
    nop                                           ; $596c: $00
    ld b, a                                       ; $596d: $47
    ld a, b                                       ; $596e: $78
    inc hl                                        ; $596f: $23
    cp h                                          ; $5970: $bc
    nop                                           ; $5971: $00
    ret nc                                        ; $5972: $d0

    rla                                           ; $5973: $17
    db $ec                                        ; $5974: $ec
    rrca                                          ; $5975: $0f
    add d                                         ; $5976: $82
    ld [hl], d                                    ; $5977: $72
    add c                                         ; $5978: $81
    ld a, c                                       ; $5979: $79
    nop                                           ; $597a: $00
    rst $38                                       ; $597b: $ff
    nop                                           ; $597c: $00
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    ld h, d                                       ; $597f: $62
    db $fc                                        ; $5980: $fc
    inc b                                         ; $5981: $04
    ld hl, sp+$00                                 ; $5982: $f8 $00
    db $fc                                        ; $5984: $fc
    adc a                                         ; $5985: $8f
    ld [hl], b                                    ; $5986: $70
    db $fc                                        ; $5987: $fc
    ld hl, sp-$09                                 ; $5988: $f8 $f7
    ldh [$7c], a                                  ; $598a: $e0 $7c
    add b                                         ; $598c: $80
    db $10                                        ; $598d: $10
    ld [$f2fc], sp                                ; $598e: $08 $fc $f2
    db $ec                                        ; $5991: $ec
    ld [c], a                                     ; $5992: $e2
    inc e                                         ; $5993: $1c
    ld c, $38                                     ; $5994: $0e $38
    nop                                           ; $5996: $00
    ld a, [bc]                                    ; $5997: $0a
    ld h, d                                       ; $5998: $62
    ld a, h                                       ; $5999: $7c
    ld [c], a                                     ; $599a: $e2
    db $fc                                        ; $599b: $fc
    nop                                           ; $599c: $00
    cp $fe                                        ; $599d: $fe $fe
    nop                                           ; $599f: $00
    nop                                           ; $59a0: $00

    db $02, $00, $b4, $00, $5f, $03, $5b, $01

    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    ld e, a                                       ; $59ab: $5f
    inc bc                                        ; $59ac: $03
    call nc, Call_0d1_4500                        ; $59ad: $d4 $00 $45
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    ld e, a                                       ; $59b3: $5f
    inc bc                                        ; $59b4: $03
    ld b, h                                       ; $59b5: $44
    ld [$0001], sp                                ; $59b6: $08 $01 $00
    ld [bc], a                                    ; $59b9: $02
    nop                                           ; $59ba: $00
    ld e, a                                       ; $59bb: $5f
    inc bc                                        ; $59bc: $03
    db $10                                        ; $59bd: $10
    ld bc, $0177                                  ; $59be: $01 $77 $01
    ld [bc], a                                    ; $59c1: $02
    nop                                           ; $59c2: $00

jr_0d1_59c3:
    or e                                          ; $59c3: $b3
    nop                                           ; $59c4: $00
    ld e, a                                       ; $59c5: $5f
    inc bc                                        ; $59c6: $03
    ld e, e                                       ; $59c7: $5b
    ld bc, $0000                                  ; $59c8: $01 $00 $00
    db $ec                                        ; $59cb: $ec
    jr jr_0d1_5954                                ; $59cc: $18 $86

    ld [$00d1], sp                                ; $59ce: $08 $d1 $00
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    add a                                         ; $59d3: $87
    inc c                                         ; $59d4: $0c
    jp z, Jump_0d1_4414                           ; $59d5: $ca $14 $44

    inc b                                         ; $59d8: $04
    ld [hl+], a                                   ; $59d9: $22
    inc b                                         ; $59da: $04
    db $10                                        ; $59db: $10
    ld bc, $035f                                  ; $59dc: $01 $5f $03
    sub a                                         ; $59df: $97
    ld bc, $0001                                  ; $59e0: $01 $01 $00
    push de                                       ; $59e3: $d5
    nop                                           ; $59e4: $00
    ld e, a                                       ; $59e5: $5f
    inc bc                                        ; $59e6: $03
    ld h, [hl]                                    ; $59e7: $66
    inc b                                         ; $59e8: $04
    ld bc, $7200                                  ; $59e9: $01 $00 $72
    dec h                                         ; $59ec: $25
    ld h, [hl]                                    ; $59ed: $66
    ld [$10a9], sp                                ; $59ee: $08 $a9 $10
    ld h, l                                       ; $59f1: $65
    ld [$190d], sp                                ; $59f2: $08 $0d $19
    xor c                                         ; $59f5: $a9
    db $10                                        ; $59f6: $10
    ld d, c                                       ; $59f7: $51
    ld hl, $0001                                  ; $59f8: $21 $01 $00
    rrca                                          ; $59fb: $0f
    dec c                                         ; $59fc: $0d
    ld e, a                                       ; $59fd: $5f
    inc bc                                        ; $59fe: $03
    cp b                                          ; $59ff: $b8
    ld bc, $0001                                  ; $5a00: $01 $01 $00
    push af                                       ; $5a03: $f5
    nop                                           ; $5a04: $00
    ld e, a                                       ; $5a05: $5f
    inc bc                                        ; $5a06: $03
    jr nc, jr_0d1_5a2a                            ; $5a07: $30 $21

    ld b, h                                       ; $5a09: $44
    ld [$2151], sp                                ; $5a0a: $08 $51 $21
    jp z, $9514                                   ; $5a0d: $ca $14 $95

    add hl, hl                                    ; $5a10: $29
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    ld c, $19                                     ; $5a13: $0e $19
    ld [hl], e                                    ; $5a15: $73
    dec h                                         ; $5a16: $25
    ld b, l                                       ; $5a17: $45
    ld [$0002], sp                                ; $5a18: $08 $02 $00
    sub l                                         ; $5a1b: $95
    add hl, de                                    ; $5a1c: $19
    ld e, a                                       ; $5a1d: $5f
    inc bc                                        ; $5a1e: $03
    xor c                                         ; $5a1f: $a9
    inc c                                         ; $5a20: $0c
    ld [bc], a                                    ; $5a21: $02
    nop                                           ; $5a22: $00
    db $d3                                        ; $5a23: $d3
    nop                                           ; $5a24: $00
    ld e, a                                       ; $5a25: $5f
    inc bc                                        ; $5a26: $03
    ld e, b                                       ; $5a27: $58
    dec c                                         ; $5a28: $0d
    nop                                           ; $5a29: $00

jr_0d1_5a2a:
    nop                                           ; $5a2a: $00
    db $ed                                        ; $5a2b: $ed
    jr jr_0d1_59c3                                ; $5a2c: $18 $95

    dec h                                         ; $5a2e: $25
    add [hl]                                      ; $5a2f: $86
    ld [$0000], sp                                ; $5a30: $08 $00 $00
    ld [hl], e                                    ; $5a33: $73
    dec h                                         ; $5a34: $25
    cp a                                          ; $5a35: $bf
    ld c, [hl]                                    ; $5a36: $4e
    ld l, b                                       ; $5a37: $68
    ld [$0000], sp                                ; $5a38: $08 $00 $00
    reti                                          ; $5a3b: $d9


    ld bc, $14ca                                  ; $5a3c: $01 $ca $14
    ld e, a                                       ; $5a3f: $5f
    inc bc                                        ; $5a40: $03
    ld bc, $1700                                  ; $5a41: $01 $00 $17
    ld bc, $035f                                  ; $5a44: $01 $5f $03
    adc b                                         ; $5a47: $88
    inc c                                         ; $5a48: $0c
    ld bc, $7300                                  ; $5a49: $01 $00 $73
    dec h                                         ; $5a4c: $25
    adc b                                         ; $5a4d: $88
    inc c                                         ; $5a4e: $0c
    ei                                            ; $5a4f: $fb
    dec l                                         ; $5a50: $2d
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    sub [hl]                                      ; $5a53: $96
    dec h                                         ; $5a54: $25
    rra                                           ; $5a55: $1f
    ld d, a                                       ; $5a56: $57
    ld c, d                                       ; $5a57: $4a
    inc b                                         ; $5a58: $04
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    reti                                          ; $5a5b: $d9


    ld bc, $14ca                                  ; $5a5c: $01 $ca $14
    ld e, a                                       ; $5a5f: $5f
    inc bc                                        ; $5a60: $03
    ld bc, $1500                                  ; $5a61: $01 $00 $15
    ld bc, $035f                                  ; $5a64: $01 $5f $03
    jp z, $0114                                   ; $5a67: $ca $14 $01

    nop                                           ; $5a6a: $00
    cp c                                          ; $5a6b: $b9
    ld hl, $10a9                                  ; $5a6c: $21 $a9 $10
    rst $38                                       ; $5a6f: $ff
    ld d, d                                       ; $5a70: $52
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    jp c, $df31                                   ; $5a73: $da $31 $df

    ld c, [hl]                                    ; $5a76: $4e
    add hl, hl                                    ; $5a77: $29
    nop                                           ; $5a78: $00
    ld bc, $f800                                  ; $5a79: $01 $00 $f8
    dec b                                         ; $5a7c: $05
    db $ec                                        ; $5a7d: $ec
    jr jr_0d1_5adf                                ; $5a7e: $18 $5f

    inc bc                                        ; $5a80: $03
    ld bc, $1500                                  ; $5a81: $01 $00 $15
    ld bc, $035f                                  ; $5a84: $01 $5f $03
    ld e, e                                       ; $5a87: $5b
    ld bc, $0442                                  ; $5a88: $01 $42 $04
    sub l                                         ; $5a8b: $95
    dec h                                         ; $5a8c: $25
    ld a, h                                       ; $5a8d: $7c
    ld b, d                                       ; $5a8e: $42
    adc d                                         ; $5a8f: $8a
    inc c                                         ; $5a90: $0c
    ld [hl+], a                                   ; $5a91: $22
    inc b                                         ; $5a92: $04
    or e                                          ; $5a93: $b3
    dec h                                         ; $5a94: $25
    ld e, c                                       ; $5a95: $59
    ld a, [hl-]                                   ; $5a96: $3a
    rst $18                                       ; $5a97: $df
    ld c, [hl]                                    ; $5a98: $4e
    ld [hl+], a                                   ; $5a99: $22
    inc b                                         ; $5a9a: $04
    ld [hl], d                                    ; $5a9b: $72
    ld bc, $035f                                  ; $5a9c: $01 $5f $03
    reti                                          ; $5a9f: $d9


    ld bc, $0001                                  ; $5aa0: $01 $01 $00
    scf                                           ; $5aa3: $37
    ld bc, $035f                                  ; $5aa4: $01 $5f $03
    call $4200                                    ; $5aa7: $cd $00 $42
    ld [$361b], sp                                ; $5aaa: $08 $1b $36
    sbc [hl]                                      ; $5aad: $9e
    ld c, d                                       ; $5aae: $4a
    rl b                                          ; $5aaf: $cb $10
    ld b, h                                       ; $5ab1: $44
    ld [$4276], sp                                ; $5ab2: $08 $76 $42
    db $eb                                        ; $5ab5: $eb
    add hl, de                                    ; $5ab6: $19
    rst $38                                       ; $5ab7: $ff
    ld a, a                                       ; $5ab8: $7f
    inc hl                                        ; $5ab9: $23
    inc b                                         ; $5aba: $04
    ld hl, sp+$05                                 ; $5abb: $f8 $05
    ld e, a                                       ; $5abd: $5f
    inc bc                                        ; $5abe: $03
    ld b, l                                       ; $5abf: $45
    ld c, $01                                     ; $5ac0: $0e $01
    nop                                           ; $5ac2: $00
    scf                                           ; $5ac3: $37
    ld bc, $035f                                  ; $5ac4: $01 $5f $03
    ld b, [hl]                                    ; $5ac7: $46
    nop                                           ; $5ac8: $00
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    ld a, [$9e31]                                 ; $5acb: $fa $31 $9e
    ld b, [hl]                                    ; $5ace: $46
    xor d                                         ; $5acf: $aa
    db $10                                        ; $5ad0: $10
    ld b, d                                       ; $5ad1: $42
    ld [$29d3], sp                                ; $5ad2: $08 $d3 $29
    db $dd                                        ; $5ad5: $dd
    ld d, d                                       ; $5ad6: $52
    adc d                                         ; $5ad7: $8a
    ld de, $0001                                  ; $5ad8: $11 $01 $00
    or d                                          ; $5adb: $b2
    dec h                                         ; $5adc: $25
    ld e, a                                       ; $5add: $5f
    inc bc                                        ; $5ade: $03

jr_0d1_5adf:
    ld a, [de]                                    ; $5adf: $1a
    ld [bc], a                                    ; $5ae0: $02
    ld [bc], a                                    ; $5ae1: $02
    nop                                           ; $5ae2: $00
    rrca                                          ; $5ae3: $0f
    ld bc, $035f                                  ; $5ae4: $01 $5f $03
    ld d, a                                       ; $5ae7: $57
    ld bc, $0000                                  ; $5ae8: $01 $00 $00
    sub a                                         ; $5aeb: $97
    ld hl, $469e                                  ; $5aec: $21 $9e $46
    adc d                                         ; $5aef: $8a
    ld [$0842], sp                                ; $5af0: $08 $42 $08
    ld a, e                                       ; $5af3: $7b
    ld b, d                                       ; $5af4: $42
    db $10                                        ; $5af5: $10
    add hl, de                                    ; $5af6: $19
    rst $38                                       ; $5af7: $ff
    ld d, d                                       ; $5af8: $52
    ld b, h                                       ; $5af9: $44
    nop                                           ; $5afa: $00
    or d                                          ; $5afb: $b2
    dec h                                         ; $5afc: $25
    ld e, a                                       ; $5afd: $5f
    inc bc                                        ; $5afe: $03
    add hl, de                                    ; $5aff: $19
    ld [bc], a                                    ; $5b00: $02
    ld bc, $7700                                  ; $5b01: $01 $00 $77
    ld bc, $035f                                  ; $5b04: $01 $5f $03
    ld e, e                                       ; $5b07: $5b
    ld bc, $0421                                  ; $5b08: $01 $21 $04
    or a                                          ; $5b0b: $b7
    add hl, hl                                    ; $5b0c: $29
    call $9e08                                    ; $5b0d: $cd $08 $9e
    ld b, [hl]                                    ; $5b10: $46
    ld d, d                                       ; $5b11: $52
    dec e                                         ; $5b12: $1d
    sbc l                                         ; $5b13: $9d
    ld c, d                                       ; $5b14: $4a
    ld hl, sp+$31                                 ; $5b15: $f8 $31
    rst $18                                       ; $5b17: $df
    ld d, d                                       ; $5b18: $52
    inc h                                         ; $5b19: $24
    nop                                           ; $5b1a: $00
    ld a, [hl-]                                   ; $5b1b: $3a
    ld [bc], a                                    ; $5b1c: $02
    ld sp, $5f05                                  ; $5b1d: $31 $05 $5f
    inc bc                                        ; $5b20: $03
    ld bc, $3000                                  ; $5b21: $01 $00 $30
    dec b                                         ; $5b24: $05

Call_0d1_5b25:
    ld e, a                                       ; $5b25: $5f
    inc bc                                        ; $5b26: $03
    ld e, b                                       ; $5b27: $58
    ld bc, $0001                                  ; $5b28: $01 $01 $00
    or d                                          ; $5b2b: $b2
    dec l                                         ; $5b2c: $2d
    cp h                                          ; $5b2d: $bc
    ld [hl], a                                    ; $5b2e: $77
    rl h                                          ; $5b2f: $cb $14
    ld l, d                                       ; $5b31: $6a
    ld [$3a19], sp                                ; $5b32: $08 $19 $3a
    rst $30                                       ; $5b35: $f7
    ld bc, $4abf                                  ; $5b36: $01 $bf $4a
    ld [bc], a                                    ; $5b39: $02
    nop                                           ; $5b3a: $00
    ld a, [hl-]                                   ; $5b3b: $3a
    ld [bc], a                                    ; $5b3c: $02
    ld e, a                                       ; $5b3d: $5f
    inc bc                                        ; $5b3e: $03
    dec sp                                        ; $5b3f: $3b
    ld [bc], a                                    ; $5b40: $02
    ld bc, $1000                                  ; $5b41: $01 $00 $10
    ld bc, $035f                                  ; $5b44: $01 $5f $03
    ld e, e                                       ; $5b47: $5b
    ld bc, $0021                                  ; $5b48: $01 $21 $00
    ld a, b                                       ; $5b4b: $78
    ld b, [hl]                                    ; $5b4c: $46
    rst $38                                       ; $5b4d: $ff
    ld a, a                                       ; $5b4e: $7f
    ld [hl], b                                    ; $5b4f: $70
    dec h                                         ; $5b50: $25
    ld [bc], a                                    ; $5b51: $02
    nop                                           ; $5b52: $00
    ld hl, sp+$01                                 ; $5b53: $f8 $01
    ld [hl], e                                    ; $5b55: $73
    ld hl, $08aa                                  ; $5b56: $21 $aa $08
    ld [bc], a                                    ; $5b59: $02
    nop                                           ; $5b5a: $00
    ld a, [hl-]                                   ; $5b5b: $3a
    ld [bc], a                                    ; $5b5c: $02
    ld e, a                                       ; $5b5d: $5f
    inc bc                                        ; $5b5e: $03
    ld e, e                                       ; $5b5f: $5b
    ld [bc], a                                    ; $5b60: $02
    ld bc, $4a00                                  ; $5b61: $01 $00 $4a
    add hl, hl                                    ; $5b64: $29
    ld e, e                                       ; $5b65: $5b
    ld bc, $035f                                  ; $5b66: $01 $5f $03
    ld hl, $b800                                  ; $5b69: $21 $00 $b8
    ld d, d                                       ; $5b6c: $52
    xor l                                         ; $5b6d: $ad
    dec [hl]                                      ; $5b6e: $35
    sbc $7b                                       ; $5b6f: $de $7b
    ld b, d                                       ; $5b71: $42
    inc b                                         ; $5b72: $04
    ld d, b                                       ; $5b73: $50
    ld bc, $7fff                                  ; $5b74: $01 $ff $7f
    ld a, [de]                                    ; $5b77: $1a
    ld [de], a                                    ; $5b78: $12
    ld [bc], a                                    ; $5b79: $02
    nop                                           ; $5b7a: $00
    dec sp                                        ; $5b7b: $3b
    ld [bc], a                                    ; $5b7c: $02
    ld e, a                                       ; $5b7d: $5f
    inc bc                                        ; $5b7e: $03
    ld e, e                                       ; $5b7f: $5b
    ld [bc], a                                    ; $5b80: $02
    ld [bc], a                                    ; $5b81: $02
    nop                                           ; $5b82: $00
    ld e, e                                       ; $5b83: $5b
    ld bc, $035f                                  ; $5b84: $01 $5f $03
    ld e, e                                       ; $5b87: $5b
    ld [bc], a                                    ; $5b88: $02
    ld e, e                                       ; $5b89: $5b
    ld bc, $035f                                  ; $5b8a: $01 $5f $03
    ld e, a                                       ; $5b8d: $5f
    inc bc                                        ; $5b8e: $03
    ld e, e                                       ; $5b8f: $5b
    ld [bc], a                                    ; $5b90: $02
    ld e, e                                       ; $5b91: $5b
    ld bc, $035f                                  ; $5b92: $01 $5f $03
    ld e, a                                       ; $5b95: $5f
    inc bc                                        ; $5b96: $03
    ld e, e                                       ; $5b97: $5b
    ld [bc], a                                    ; $5b98: $02
    ld [bc], a                                    ; $5b99: $02
    nop                                           ; $5b9a: $00
    ld e, e                                       ; $5b9b: $5b
    ld bc, $035f                                  ; $5b9c: $01 $5f $03
    ld e, e                                       ; $5b9f: $5b
    ld [bc], a                                    ; $5ba0: $02

    db $02, $00, $d3, $36, $5b, $01, $5f, $03, $00, $00, $d3, $36, $5f, $03, $a5, $14
    db $00, $00, $d3, $36, $5f, $03, $22, $08, $02, $00, $d3, $36, $5f, $03, $22, $08
    db $02, $00, $d2, $36, $5b, $01, $5f, $03, $00, $04, $d3, $36, $57, $6a, $24, $1c
    db $00, $00, $15, $66, $46, $24, $d3, $36, $02, $00, $d2, $36, $5f, $03, $d3, $36
    db $01, $00, $70, $36, $5b, $01, $5f, $03, $04, $20, $2e, $49, $14, $62, $89, $34
    db $00, $00, $91, $55, $d2, $36, $45, $1c, $02, $00, $b1, $32, $5f, $03, $d2, $36
    db $02, $00, $30, $3a, $5d, $02, $36, $6a, $02, $14, $0d, $45, $46, $28, $15, $6a
    db $00, $00, $c9, $30, $15, $6a, $04, $20, $01, $00, $b0, $32, $5f, $03, $b1, $32
    db $01, $00, $ce, $39, $5d, $02, $03, $1c, $24, $00, $91, $4d, $46, $2c, $9d, $36
    db $00, $00, $4e, $49, $78, $72, $c9, $30, $00, $00, $8f, $2e, $5f, $03, $02, $00
    db $01, $00, $ef, $3d, $66, $28, $5d, $02, $01, $00, $f5, $41, $1d, $67, $aa, $38
    db $00, $04, $ff, $7f, $68, $30, $23, $14, $00, $00, $6e, $2a, $5f, $03, $03, $20
    db $01, $00, $5b, $01, $67, $28, $5f, $03, $01, $00, $3c, $22, $dc, $5e, $aa, $38
    db $01, $0c, $1c, $57, $00, $7c, $ab, $28, $01, $00, $6d, $2a, $5f, $03, $87, $24
    db $01, $00, $5d, $02, $78, $4a, $ca, $24, $23, $08, $3b, $26, $00, $7c, $7d, $7b
    db $00, $00, $1e, $53, $2c, $1d, $0d, $4d, $02, $0c, $0b, $26, $5f, $03, $71, $59
    db $01, $00, $1a, $06, $dd, $4a, $25, $28, $46, $00, $d4, $3d, $ff, $42, $22, $24
    db $01, $00, $7b, $36, $6e, $1d, $1e, $53, $01, $04, $4b, $26, $5f, $03, $03, $1c
    db $01, $00, $5d, $02, $a8, $30, $38, $3a, $00, $00, $4e, $51, $ca, $14, $7f, $36
    db $01, $10, $19, $2e, $fe, $4e, $ea, $0c, $01, $04, $f5, $69, $5f, $03, $89, $34
    db $01, $00, $5b, $01, $ca, $38, $5f, $03, $00, $00, $a9, $34, $03, $18, $6e, $45
    db $00, $04, $ec, $10, $cb, $44, $24, $1c, $00, $00, $5f, $03, $ea, $34, $43, $10
    db $01, $00, $0d, $45, $5b, $01, $5f, $03, $02, $14, $cb, $40, $66, $24, $d2, $59
    db $00, $08, $37, $32, $88, $18, $7f, $57, $23, $14, $90, $4d, $5f, $03, $fc, $7e
    db $01, $00, $5d, $02, $4f, $4d, $fc, $7e, $00, $0c, $ec, $40, $99, $76, $04, $1c
    db $00, $0c, $ca, $14, $b6, $1d, $a9, $3c, $02, $0c, $b2, $59, $5f, $03, $e9, $2c
    db $01, $00, $5d, $02, $57, $72, $a8, $30, $01, $14, $35, $66, $eb, $38, $25, $24
    db $00, $10, $2d, $41, $15, $66, $88, $30, $01, $08, $ad, $35, $5f, $03, $15, $66
    db $01, $00, $2d, $45, $5d, $02, $45, $1c, $21, $08, $eb, $38, $66, $24, $2d, $45
    db $02, $18, $6f, $4d, $c9, $34, $56, $6e, $00, $00, $5f, $03, $0d, $45, $44, $1c
    db $02, $00, $5b, $01, $5f, $03, $44, $1c, $5b, $01, $5f, $03, $5f, $03, $44, $1c
    db $5b, $01, $5f, $03, $5f, $03, $44, $1c, $02, $00, $5b, $01, $5f, $03, $44, $1c
    db $20, $30, $5b, $01, $02, $00, $5f, $03, $00, $04, $5f, $03, $20, $30, $5f, $03
    db $20, $30, $5f, $03, $20, $30, $5f, $03, $20, $30, $5f, $03, $02, $00, $5f, $03
    db $02, $00, $b9, $15, $42, $2c, $5f, $03, $00, $04, $34, $3a, $bf, $6b, $e8, $1c
    db $20, $30, $12, $3a, $85, $0c, $b8, $4e, $20, $30, $5f, $03, $02, $00, $b8, $4e
    db $02, $00, $56, $42, $5d, $02, $85, $24, $01, $00, $b8, $4e, $9d, $6b, $2a, $21
    db $42, $1c, $fb, $56, $d0, $31, $ff, $77, $22, $08, $5f, $03, $20, $30, $0a, $1d
    db $02, $00, $54, $15, $ff, $7f, $5f, $03, $42, $08, $57, $3e, $9e, $67, $4d, $25
    db $84, $0c, $15, $3a, $7e, $6b, $ba, $4a, $00, $04, $bb, $4a, $62, $30, $5f, $03
    db $02, $00, $75, $15, $df, $73, $5f, $03, $43, $04, $99, $46, $6d, $25, $7f, $63
    db $b0, $31, $1d, $5b, $97, $46, $9f, $67, $01, $04, $5f, $03, $41, $38, $85, $0c
    db $01, $00, $d1, $2d, $ff, $77, $5d, $02, $01, $00, $b0, $2d, $db, $4a, $c8, $14
    db $00, $00, $8f, $29, $ba, $4e, $ea, $18, $43, $04, $78, $46, $5f, $03, $82, $3c
    db $01, $00, $5d, $02, $f9, $56, $a5, $20, $01, $00, $6d, $25, $58, $3e, $86, $08
    db $23, $04, $37, $3a, $ff, $7f, $4b, $25, $01, $00, $5f, $03, $a4, $40, $25, $00
    db $01, $00, $11, $3e, $5d, $02, $c6, $28, $00, $08, $b6, $02, $99, $46, $c7, $04
    db $22, $04, $37, $3a, $4e, $25, $db, $4e, $44, $08, $bc, $4a, $c5, $44, $5f, $03
    db $01, $00, $4a, $15, $5d, $02, $ad, $39, $01, $00, $5c, $27, $ff, $77, $6d, $10
    db $22, $04, $f4, $31, $0c, $1d, $79, $42, $43, $04, $db, $12, $e6, $48, $ff, $73
    db $02, $00, $54, $15, $5f, $03, $07, $15, $41, $04, $de, $4b, $6b, $05, $0a, $04
    db $02, $00, $f5, $35, $e9, $18, $f6, $06, $64, $00, $d7, $2e, $07, $4d, $5f, $03
    db $02, $00, $78, $00, $5f, $03, $a7, $10, $23, $00, $39, $07, $56, $08, $27, $01
    db $21, $04, $fe, $7f, $8c, $35, $10, $00, $64, $00, $5b, $37, $49, $51, $5f, $03
    db $02, $00, $55, $04, $5f, $03, $5b, $01, $63, $00, $f7, $06, $13, $04, $35, $4b
    db $63, $08, $19, $13, $74, $56, $ff, $7f, $64, $0c, $5f, $03, $6a, $55, $ff, $7f
    db $02, $00, $75, $08, $7d, $0f, $5b, $01, $01, $00, $39, $13, $cb, $01, $2e, $08
    db $22, $04, $7b, $1f, $ad, $21, $ff, $7f, $42, $08, $5f, $03, $10, $56, $ff, $7f
    db $02, $00, $93, $10, $5f, $03, $5b, $01, $22, $00, $cb, $01, $d7, $06, $92, $10
    db $44, $00, $53, $16, $ff, $4b, $52, $08, $21, $04, $5f, $03, $cf, $39, $19, $67
    db $02, $00, $74, $0c, $5f, $03, $5b, $01, $00, $00, $73, $0c, $11, $06, $44, $00
    db $22, $00, $b6, $12, $b3, $04, $ff, $63, $85, $10, $74, $52, $5f, $03, $de, $77
    db $02, $00, $5b, $01, $5f, $03, $de, $77, $5b, $01, $5f, $03, $5f, $03, $de, $77
    db $5b, $01, $5f, $03, $5f, $03, $de, $77, $02, $00, $5b, $01, $5f, $03, $de, $77

    ld [bc], a                                    ; $5fa1: $02
    nop                                           ; $5fa2: $00
    or [hl]                                       ; $5fa3: $b6
    add hl, hl                                    ; $5fa4: $29
    ld e, a                                       ; $5fa5: $5f
    inc bc                                        ; $5fa6: $03
    ld e, e                                       ; $5fa7: $5b
    ld bc, $008b                                  ; $5fa8: $01 $8b $00
    ld e, $4b                                     ; $5fab: $1e $4b
    ld e, a                                       ; $5fad: $5f
    inc bc                                        ; $5fae: $03
    rst $30                                       ; $5faf: $f7
    ld hl, $035f                                  ; $5fb0: $21 $5f $03
    sbc h                                         ; $5fb3: $9c
    ld [hl], $fe                                  ; $5fb4: $36 $fe
    ld c, d                                       ; $5fb6: $4a
    sbc a                                         ; $5fb7: $9f
    ld e, e                                       ; $5fb8: $5b
    ld [bc], a                                    ; $5fb9: $02
    nop                                           ; $5fba: $00
    ld e, a                                       ; $5fbb: $5f
    inc bc                                        ; $5fbc: $03
    or [hl]                                       ; $5fbd: $b6
    add hl, hl                                    ; $5fbe: $29
    ld l, b                                       ; $5fbf: $68
    nop                                           ; $5fc0: $00
    ld [bc], a                                    ; $5fc1: $02
    nop                                           ; $5fc2: $00
    ld e, e                                       ; $5fc3: $5b
    ld bc, $035f                                  ; $5fc4: $01 $5f $03
    or [hl]                                       ; $5fc7: $b6
    add hl, hl                                    ; $5fc8: $29
    ld hl, sp+$21                                 ; $5fc9: $f8 $21
    ld e, $4b                                     ; $5fcb: $1e $4b
    ld e, c                                       ; $5fcd: $59
    ld [hl-], a                                   ; $5fce: $32
    ccf                                           ; $5fcf: $3f
    ld d, e                                       ; $5fd0: $53
    db $fd                                        ; $5fd1: $fd
    ld c, d                                       ; $5fd2: $4a
    sbc a                                         ; $5fd3: $9f
    ld e, e                                       ; $5fd4: $5b
    ld e, $4b                                     ; $5fd5: $1e $4b
    dec e                                         ; $5fd7: $1d
    ld c, e                                       ; $5fd8: $4b
    dec h                                         ; $5fd9: $25
    nop                                           ; $5fda: $00
    or [hl]                                       ; $5fdb: $b6
    add hl, hl                                    ; $5fdc: $29
    ld e, a                                       ; $5fdd: $5f
    inc bc                                        ; $5fde: $03
    db $dd                                        ; $5fdf: $dd
    ld b, d                                       ; $5fe0: $42
    ld [bc], a                                    ; $5fe1: $02
    nop                                           ; $5fe2: $00
    ld e, e                                       ; $5fe3: $5b
    ld bc, $035f                                  ; $5fe4: $01 $5f $03
    rst $10                                       ; $5fe7: $d7
    dec h                                         ; $5fe8: $25
    sub $1d                                       ; $5fe9: $d6 $1d
    cp $4a                                        ; $5feb: $fe $4a
    ld a, d                                       ; $5fed: $7a
    ld [hl], $3e                                  ; $5fee: $36 $3e
    ld d, e                                       ; $5ff0: $53
    db $fd                                        ; $5ff1: $fd
    ld c, d                                       ; $5ff2: $4a
    ld e, $4b                                     ; $5ff3: $1e $4b
    ld a, d                                       ; $5ff5: $7a
    ld [hl], $3e                                  ; $5ff6: $36 $3e
    ld d, e                                       ; $5ff8: $53
    dec h                                         ; $5ff9: $25
    nop                                           ; $5ffa: $00
    or l                                          ; $5ffb: $b5
    dec h                                         ; $5ffc: $25
    ld e, a                                       ; $5ffd: $5f
    inc bc                                        ; $5ffe: $03
    db $fd                                        ; $5fff: $fd
    ld b, [hl]                                    ; $6000: $46
    ld [bc], a                                    ; $6001: $02
    nop                                           ; $6002: $00
    ld e, e                                       ; $6003: $5b
    ld bc, $035f                                  ; $6004: $01 $5f $03
    rst $30                                       ; $6007: $f7
    dec h                                         ; $6008: $25
    rst $30                                       ; $6009: $f7
    dec h                                         ; $600a: $25
    ld e, $4b                                     ; $600b: $1e $4b
    ccf                                           ; $600d: $3f
    ld d, e                                       ; $600e: $53
    ld e, $4f                                     ; $600f: $1e $4f
    db $fd                                        ; $6011: $fd
    ld c, d                                       ; $6012: $4a
    ld e, $4b                                     ; $6013: $1e $4b
    ccf                                           ; $6015: $3f
    ld d, e                                       ; $6016: $53
    ld e, $4f                                     ; $6017: $1e $4f
    dec h                                         ; $6019: $25
    nop                                           ; $601a: $00
    or h                                          ; $601b: $b4
    ld hl, $46fd                                  ; $601c: $21 $fd $46
    ld e, a                                       ; $601f: $5f
    inc bc                                        ; $6020: $03
    ld [bc], a                                    ; $6021: $02
    nop                                           ; $6022: $00
    push de                                       ; $6023: $d5
    dec e                                         ; $6024: $1d
    sbc $16                                       ; $6025: $de $16
    ld e, e                                       ; $6027: $5b
    ld bc, $2190                                  ; $6028: $01 $90 $21
    cp $4a                                        ; $602b: $fe $4a
    add hl, de                                    ; $602d: $19
    ld h, $3f                                     ; $602e: $26 $3f
    ld d, e                                       ; $6030: $53
    jp nc, $fd2d                                  ; $6031: $d2 $2d $fd

    ld c, d                                       ; $6034: $4a
    ld e, $4b                                     ; $6035: $1e $4b
    ccf                                           ; $6037: $3f
    ld d, e                                       ; $6038: $53
    dec h                                         ; $6039: $25
    nop                                           ; $603a: $00
    db $d3                                        ; $603b: $d3
    add hl, de                                    ; $603c: $19
    db $fd                                        ; $603d: $fd
    ld b, [hl]                                    ; $603e: $46
    ld e, a                                       ; $603f: $5f
    inc bc                                        ; $6040: $03
    ld [bc], a                                    ; $6041: $02
    nop                                           ; $6042: $00
    add hl, de                                    ; $6043: $19
    ld b, $cd                                     ; $6044: $06 $cd
    add hl, sp                                    ; $6046: $39
    ld e, c                                       ; $6047: $59
    ld l, a                                       ; $6048: $6f
    ld b, b                                       ; $6049: $40
    db $10                                        ; $604a: $10
    dec e                                         ; $604b: $1d
    ld c, a                                       ; $604c: $4f
    ld l, [hl]                                    ; $604d: $6e
    add hl, hl                                    ; $604e: $29
    jr jr_0d1_6077                                ; $604f: $18 $26

    adc h                                         ; $6051: $8c
    dec l                                         ; $6052: $2d
    call c, Call_000_3446                         ; $6053: $dc $46 $34
    ld a, [hl-]                                   ; $6056: $3a
    ld e, c                                       ; $6057: $59
    ld l, a                                       ; $6058: $6f
    dec h                                         ; $6059: $25
    nop                                           ; $605a: $00
    jp nc, $fd1d                                  ; $605b: $d2 $1d $fd

    ld b, [hl]                                    ; $605e: $46
    ld e, a                                       ; $605f: $5f
    inc bc                                        ; $6060: $03
    ld [bc], a                                    ; $6061: $02
    nop                                           ; $6062: $00
    sub l                                         ; $6063: $95
    add hl, bc                                    ; $6064: $09
    ld d, d                                       ; $6065: $52
    ld c, d                                       ; $6066: $4a
    ld e, a                                       ; $6067: $5f
    inc bc                                        ; $6068: $03
    ld h, c                                       ; $6069: $61
    db $10                                        ; $606a: $10
    ld e, e                                       ; $606b: $5b
    ld e, a                                       ; $606c: $5f
    ld c, h                                       ; $606d: $4c
    dec e                                         ; $606e: $1d
    sub $1d                                       ; $606f: $d6 $1d
    nop                                           ; $6071: $00
    inc b                                         ; $6072: $04
    ld e, c                                       ; $6073: $59
    ld l, a                                       ; $6074: $6f
    ld c, d                                       ; $6075: $4a
    add hl, hl                                    ; $6076: $29

jr_0d1_6077:
    jr nc, @+$4c                                  ; $6077: $30 $4a

    ld h, [hl]                                    ; $6079: $66
    inc b                                         ; $607a: $04
    ld e, a                                       ; $607b: $5f
    inc bc                                        ; $607c: $03
    sbc h                                         ; $607d: $9c
    ld a, [hl-]                                   ; $607e: $3a
    ld a, $57                                     ; $607f: $3e $57
    ld [bc], a                                    ; $6081: $02
    nop                                           ; $6082: $00
    ld [hl], h                                    ; $6083: $74
    dec b                                         ; $6084: $05
    rst $38                                       ; $6085: $ff
    ld a, a                                       ; $6086: $7f
    ld e, a                                       ; $6087: $5f
    inc bc                                        ; $6088: $03
    jr nz, jr_0d1_60af                            ; $6089: $20 $24

    ld e, [hl]                                    ; $608b: $5e
    ld d, e                                       ; $608c: $53
    bit 6, c                                      ; $608d: $cb $71
    ld c, a                                       ; $608f: $4f
    dec d                                         ; $6090: $15
    ld b, d                                       ; $6091: $42
    inc c                                         ; $6092: $0c
    bit 6, c                                      ; $6093: $cb $71
    sbc [hl]                                      ; $6095: $9e
    ld l, a                                       ; $6096: $6f
    ld l, $11                                     ; $6097: $2e $11
    ld b, [hl]                                    ; $6099: $46
    nop                                           ; $609a: $00
    ld e, a                                       ; $609b: $5f
    inc bc                                        ; $609c: $03
    xor $3d                                       ; $609d: $ee $3d
    jp c, $0246                                   ; $609f: $da $46 $02

    nop                                           ; $60a2: $00
    sub h                                         ; $60a3: $94
    dec c                                         ; $60a4: $0d
    rst $38                                       ; $60a5: $ff
    ld a, a                                       ; $60a6: $7f
    cp l                                          ; $60a7: $bd
    ld a, [de]                                    ; $60a8: $1a
    ld [hl+], a                                   ; $60a9: $22
    inc c                                         ; $60aa: $0c
    scf                                           ; $60ab: $37
    ld l, $92                                     ; $60ac: $2e $92
    add hl, de                                    ; $60ae: $19

jr_0d1_60af:
    ld e, $4f                                     ; $60af: $1e $4f
    ld b, e                                       ; $60b1: $43
    ld [$6bbf], sp                                ; $60b2: $08 $bf $6b
    ld [hl], d                                    ; $60b5: $72
    dec d                                         ; $60b6: $15
    and e                                         ; $60b7: $a3
    inc [hl]                                      ; $60b8: $34
    ld b, l                                       ; $60b9: $45
    inc b                                         ; $60ba: $04
    db $dd                                        ; $60bb: $dd
    ld [de], a                                    ; $60bc: $12
    xor a                                         ; $60bd: $af
    dec c                                         ; $60be: $0d
    sbc a                                         ; $60bf: $9f
    ld e, e                                       ; $60c0: $5b
    ld bc, $b000                                  ; $60c1: $01 $00 $b0
    ld de, $1ebc                                  ; $60c4: $11 $bc $1e

Call_0d1_60c7:
    ld e, e                                       ; $60c7: $5b
    ld bc, $0888                                  ; $60c8: $01 $88 $08
    cp h                                          ; $60cb: $bc
    ld b, d                                       ; $60cc: $42
    ld e, a                                       ; $60cd: $5f
    ld d, e                                       ; $60ce: $53
    db $fd                                        ; $60cf: $fd
    ld c, d                                       ; $60d0: $4a
    ld hl, $1e04                                  ; $60d1: $21 $04 $1e
    ld c, e                                       ; $60d4: $4b
    ld a, a                                       ; $60d5: $7f
    ld d, a                                       ; $60d6: $57
    ret z                                         ; $60d7: $c8

    db $10                                        ; $60d8: $10
    ld bc, $5f00                                  ; $60d9: $01 $00 $5f
    inc bc                                        ; $60dc: $03
    dec sp                                        ; $60dd: $3b
    ld d, a                                       ; $60de: $57
    xor l                                         ; $60df: $ad
    dec b                                         ; $60e0: $05
    ld bc, $7600                                  ; $60e1: $01 $00 $76
    ld bc, $173f                                  ; $60e4: $01 $3f $17
    add $18                                       ; $60e7: $c6 $18
    add [hl]                                      ; $60e9: $86
    ld [$3edd], sp                                ; $60ea: $08 $dd $3e
    cp a                                          ; $60ed: $bf
    ld h, e                                       ; $60ee: $63
    sub c                                         ; $60ef: $91
    dec e                                         ; $60f0: $1d
    and [hl]                                      ; $60f1: $a6
    db $10                                        ; $60f2: $10
    ccf                                           ; $60f3: $3f
    ld c, a                                       ; $60f4: $4f
    xor a                                         ; $60f5: $af
    dec l                                         ; $60f6: $2d
    ld sp, $224a                                  ; $60f7: $31 $4a $22
    ld [$420f], sp                                ; $60fa: $08 $0f $42
    ld e, a                                       ; $60fd: $5f
    inc bc                                        ; $60fe: $03
    rla                                           ; $60ff: $17
    ld h, a                                       ; $6100: $67
    ld bc, $ce00                                  ; $6101: $01 $00 $ce
    dec [hl]                                      ; $6104: $35
    ld e, l                                       ; $6105: $5d
    ld [bc], a                                    ; $6106: $02
    and l                                         ; $6107: $a5
    inc d                                         ; $6108: $14
    nop                                           ; $6109: $00
    nop                                           ; $610a: $00
    adc a                                         ; $610b: $8f
    add hl, hl                                    ; $610c: $29
    or l                                          ; $610d: $b5
    ld d, [hl]                                    ; $610e: $56
    push bc                                       ; $610f: $c5
    inc e                                         ; $6110: $1c
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    db $10                                        ; $6113: $10
    ld b, d                                       ; $6114: $42
    ld a, e                                       ; $6115: $7b
    ld [hl], e                                    ; $6116: $73
    rlca                                          ; $6117: $07
    ld hl, $0421                                  ; $6118: $21 $21 $04
    ld e, a                                       ; $611b: $5f
    inc bc                                        ; $611c: $03
    jr @+$69                                      ; $611d: $18 $67

    ld c, e                                       ; $611f: $4b
    add hl, hl                                    ; $6120: $29
    ld [bc], a                                    ; $6121: $02
    nop                                           ; $6122: $00
    xor l                                         ; $6123: $ad
    dec [hl]                                      ; $6124: $35
    ld e, e                                       ; $6125: $5b
    ld bc, $035f                                  ; $6126: $01 $5f $03
    ld bc, $b400                                  ; $6129: $01 $00 $b4
    dec e                                         ; $612c: $1d
    cp h                                          ; $612d: $bc
    ld b, [hl]                                    ; $612e: $46
    dec bc                                        ; $612f: $0b
    dec e                                         ; $6130: $1d
    ld hl, $f708                                  ; $6131: $21 $08 $f7
    ld e, [hl]                                    ; $6134: $5e
    xor l                                         ; $6135: $ad
    dec [hl]                                      ; $6136: $35
    ld [$0221], sp                                ; $6137: $08 $21 $02
    nop                                           ; $613a: $00
    rst $30                                       ; $613b: $f7
    ld h, d                                       ; $613c: $62
    ld e, a                                       ; $613d: $5f
    inc bc                                        ; $613e: $03
    add hl, hl                                    ; $613f: $29
    dec h                                         ; $6140: $25
    ld [bc], a                                    ; $6141: $02
    nop                                           ; $6142: $00
    adc $35                                       ; $6143: $ce $35
    ld e, l                                       ; $6145: $5d
    ld [bc], a                                    ; $6146: $02
    jr jr_0d1_61ac                                ; $6147: $18 $63

    ld [bc], a                                    ; $6149: $02
    nop                                           ; $614a: $00
    pop af                                        ; $614b: $f1
    dec [hl]                                      ; $614c: $35
    jp hl                                         ; $614d: $e9


    inc e                                         ; $614e: $1c
    rla                                           ; $614f: $17
    ld e, e                                       ; $6150: $5b
    ld h, e                                       ; $6151: $63
    inc c                                         ; $6152: $0c
    ld a, d                                       ; $6153: $7a
    ld l, a                                       ; $6154: $6f
    ld c, d                                       ; $6155: $4a
    dec h                                         ; $6156: $25
    adc $39                                       ; $6157: $ce $39
    ld [bc], a                                    ; $6159: $02
    nop                                           ; $615a: $00
    rla                                           ; $615b: $17
    ld h, e                                       ; $615c: $63
    ld e, a                                       ; $615d: $5f
    inc bc                                        ; $615e: $03
    add hl, hl                                    ; $615f: $29
    dec h                                         ; $6160: $25
    ld [bc], a                                    ; $6161: $02
    nop                                           ; $6162: $00
    xor l                                         ; $6163: $ad
    dec [hl]                                      ; $6164: $35
    ld e, l                                       ; $6165: $5d
    ld [bc], a                                    ; $6166: $02
    rst $30                                       ; $6167: $f7
    ld e, [hl]                                    ; $6168: $5e
    nop                                           ; $6169: $00
    nop                                           ; $616a: $00
    ld d, c                                       ; $616b: $51
    ld b, [hl]                                    ; $616c: $46
    ld e, d                                       ; $616d: $5a
    ld l, e                                       ; $616e: $6b
    rst $20                                       ; $616f: $e7
    inc e                                         ; $6170: $1c
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    jr jr_0d1_61dc                                ; $6173: $18 $67

    adc h                                         ; $6175: $8c
    ld sp, $14a5                                  ; $6176: $31 $a5 $14
    add l                                         ; $6179: $85
    db $10                                        ; $617a: $10
    ld [hl], e                                    ; $617b: $73
    ld c, [hl]                                    ; $617c: $4e
    ld e, a                                       ; $617d: $5f
    inc bc                                        ; $617e: $03
    ld e, d                                       ; $617f: $5a
    ld l, a                                       ; $6180: $6f
    ld [bc], a                                    ; $6181: $02
    nop                                           ; $6182: $00
    ld e, e                                       ; $6183: $5b
    ld bc, $035f                                  ; $6184: $01 $5f $03
    ld e, d                                       ; $6187: $5a
    ld l, a                                       ; $6188: $6f
    ld e, e                                       ; $6189: $5b
    ld bc, $035f                                  ; $618a: $01 $5f $03
    ld e, a                                       ; $618d: $5f
    inc bc                                        ; $618e: $03
    ld e, d                                       ; $618f: $5a
    ld l, a                                       ; $6190: $6f
    ld e, e                                       ; $6191: $5b
    ld bc, $035f                                  ; $6192: $01 $5f $03
    ld e, a                                       ; $6195: $5f
    inc bc                                        ; $6196: $03
    ld e, d                                       ; $6197: $5a
    ld l, a                                       ; $6198: $6f
    ld [bc], a                                    ; $6199: $02
    nop                                           ; $619a: $00
    ld e, e                                       ; $619b: $5b
    ld bc, $035f                                  ; $619c: $01 $5f $03
    ld e, d                                       ; $619f: $5a
    ld l, a                                       ; $61a0: $6f
    ld [bc], a                                    ; $61a1: $02
    nop                                           ; $61a2: $00
    jr c, jr_0d1_61ba                             ; $61a3: $38 $15

    ld e, a                                       ; $61a5: $5f
    inc bc                                        ; $61a6: $03
    ld e, e                                       ; $61a7: $5b
    ld bc, $00a2                                  ; $61a8: $01 $a2 $00
    ld e, a                                       ; $61ab: $5f

jr_0d1_61ac:
    inc bc                                        ; $61ac: $03
    or h                                          ; $61ad: $b4
    ld b, e                                       ; $61ae: $43
    sla c                                         ; $61af: $cb $21
    and d                                         ; $61b1: $a2
    nop                                           ; $61b2: $00
    ld [hl], c                                    ; $61b3: $71
    inc sp                                        ; $61b4: $33
    ld e, a                                       ; $61b5: $5f
    inc bc                                        ; $61b6: $03
    or e                                          ; $61b7: $b3
    ld b, e                                       ; $61b8: $43
    ld [bc], a                                    ; $61b9: $02

jr_0d1_61ba:
    nop                                           ; $61ba: $00
    ld e, a                                       ; $61bb: $5f
    inc bc                                        ; $61bc: $03
    jr c, @+$17                                   ; $61bd: $38 $15

    or e                                          ; $61bf: $b3
    ld b, e                                       ; $61c0: $43
    ld [bc], a                                    ; $61c1: $02
    nop                                           ; $61c2: $00
    ld d, $09                                     ; $61c3: $16 $09
    ld e, a                                       ; $61c5: $5f
    inc bc                                        ; $61c6: $03
    jp $2300                                      ; $61c7: $c3 $00 $23


    ld bc, $276f                                  ; $61ca: $01 $6f $27
    adc c                                         ; $61cd: $89
    ld [bc], a                                    ; $61ce: $02
    ld sp, hl                                     ; $61cf: $f9
    ld d, e                                       ; $61d0: $53
    add $01                                       ; $61d1: $c6 $01
    or $4f                                        ; $61d3: $f6 $4f
    ld c, [hl]                                    ; $61d5: $4e
    inc hl                                        ; $61d6: $23
    adc c                                         ; $61d7: $89
    ld [bc], a                                    ; $61d8: $02
    ld b, d                                       ; $61d9: $42
    nop                                           ; $61da: $00
    dec d                                         ; $61db: $15

jr_0d1_61dc:
    dec c                                         ; $61dc: $0d
    ld sp, hl                                     ; $61dd: $f9
    ld e, e                                       ; $61de: $5b
    ld e, a                                       ; $61df: $5f
    inc bc                                        ; $61e0: $03
    ld bc, $f200                                  ; $61e1: $01 $00 $f2
    inc b                                         ; $61e4: $04
    ld e, a                                       ; $61e5: $5f
    inc bc                                        ; $61e6: $03
    add l                                         ; $61e7: $85
    ld bc, $0081                                  ; $61e8: $01 $81 $00
    rlca                                          ; $61eb: $07
    ld [bc], a                                    ; $61ec: $02
    jp nc, $aa2f                                  ; $61ed: $d2 $2f $aa

    ld b, $09                                     ; $61f0: $06 $09
    ld d, $b1                                     ; $61f2: $16 $b1
    dec sp                                        ; $61f4: $3b
    jp z, $2706                                   ; $61f5: $ca $06 $27

    ld [bc], a                                    ; $61f8: $02
    ld h, d                                       ; $61f9: $62
    nop                                           ; $61fa: $00
    inc [hl]                                      ; $61fb: $34
    rla                                           ; $61fc: $17
    ld a, [$2e5f]                                 ; $61fd: $fa $5f $2e
    dec b                                         ; $6200: $05
    ld bc, $5b00                                  ; $6201: $01 $00 $5b
    ld bc, $00e4                                  ; $6204: $01 $e4 $00
    ld e, a                                       ; $6207: $5f
    inc bc                                        ; $6208: $03
    add c                                         ; $6209: $81
    nop                                           ; $620a: $00
    rl d                                          ; $620b: $cb $12
    rst $28                                       ; $620d: $ef
    ld a, [hl-]                                   ; $620e: $3a
    db $f4                                        ; $620f: $f4
    ld b, e                                       ; $6210: $43
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    ld l, c                                       ; $6213: $69
    ld [bc], a                                    ; $6214: $02
    ld l, $27                                     ; $6215: $2e $27
    inc hl                                        ; $6217: $23
    ld bc, $0042                                  ; $6218: $01 $42 $00
    ld d, a                                       ; $621b: $57
    rrca                                          ; $621c: $0f
    ld hl, sp+$57                                 ; $621d: $f8 $57
    ld c, c                                       ; $621f: $49
    ld c, $01                                     ; $6220: $0e $01
    nop                                           ; $6222: $00
    adc d                                         ; $6223: $8a
    ld b, $5b                                     ; $6224: $06 $5b
    ld bc, $035f                                  ; $6226: $01 $5f $03
    and c                                         ; $6229: $a1
    nop                                           ; $622a: $00
    ld c, l                                       ; $622b: $4d
    inc de                                        ; $622c: $13
    rst $30                                       ; $622d: $f7
    ld d, e                                       ; $622e: $53
    ld l, h                                       ; $622f: $6c
    ld l, $00                                     ; $6230: $2e $00
    nop                                           ; $6232: $00
    ld [hl], b                                    ; $6233: $70
    dec hl                                        ; $6234: $2b
    xor c                                         ; $6235: $a9
    ld [bc], a                                    ; $6236: $02
    rst $30                                       ; $6237: $f7
    ld d, e                                       ; $6238: $53
    jp $ab04                                      ; $6239: $c3 $04 $ab


    ld c, $5f                                     ; $623c: $0e $5f
    inc bc                                        ; $623e: $03
    or e                                          ; $623f: $b3
    ld b, e                                       ; $6240: $43
    ld bc, $6d00                                  ; $6241: $01 $00 $6d
    dec bc                                        ; $6244: $0b
    rst $30                                       ; $6245: $f7
    ld d, a                                       ; $6246: $57
    ld e, l                                       ; $6247: $5d
    ld [bc], a                                    ; $6248: $02
    jr nz, jr_0d1_624b                            ; $6249: $20 $00

jr_0d1_624b:
    ld c, a                                       ; $624b: $4f
    daa                                           ; $624c: $27
    sbc h                                         ; $624d: $9c
    ld [hl], e                                    ; $624e: $73
    and [hl]                                      ; $624f: $a6
    ld bc, $0001                                  ; $6250: $01 $01 $00
    ret nc                                        ; $6253: $d0

    ccf                                           ; $6254: $3f
    dec c                                         ; $6255: $0d
    dec c                                         ; $6256: $0d
    ld a, c                                       ; $6257: $79
    ld e, e                                       ; $6258: $5b
    jp nz, $9100                                  ; $6259: $c2 $00 $91

    cpl                                           ; $625c: $2f
    ld e, a                                       ; $625d: $5f
    inc bc                                        ; $625e: $03
    db $fc                                        ; $625f: $fc
    ld h, a                                       ; $6260: $67
    ld bc, $ea00                                  ; $6261: $01 $00 $ea
    ld [bc], a                                    ; $6264: $02
    ld e, l                                       ; $6265: $5d
    ld [bc], a                                    ; $6266: $02
    or e                                          ; $6267: $b3
    ccf                                           ; $6268: $3f
    ld b, e                                       ; $6269: $43
    nop                                           ; $626a: $00
    db $ec                                        ; $626b: $ec
    ld a, [bc]                                    ; $626c: $0a
    rst $38                                       ; $626d: $ff
    ld a, a                                       ; $626e: $7f
    cp a                                          ; $626f: $bf
    add hl, bc                                    ; $6270: $09
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    sbc b                                         ; $6273: $98
    dec d                                         ; $6274: $15
    sbc c                                         ; $6275: $99
    ld b, [hl]                                    ; $6276: $46
    dec c                                         ; $6277: $0d
    dec c                                         ; $6278: $0d
    and d                                         ; $6279: $a2
    nop                                           ; $627a: $00
    rrc d                                         ; $627b: $cb $0a
    ld sp, hl                                     ; $627d: $f9
    ld d, e                                       ; $627e: $53
    ld e, a                                       ; $627f: $5f
    inc bc                                        ; $6280: $03
    ld bc, $eb00                                  ; $6281: $01 $00 $eb
    ld b, $5d                                     ; $6284: $06 $5d
    ld [bc], a                                    ; $6286: $02
    ld [hl], c                                    ; $6287: $71
    ccf                                           ; $6288: $3f
    ld h, b                                       ; $6289: $60
    nop                                           ; $628a: $00
    ld d, a                                       ; $628b: $57
    ld [hl+], a                                   ; $628c: $22
    ld e, a                                       ; $628d: $5f
    ld d, a                                       ; $628e: $57
    xor e                                         ; $628f: $ab
    ld [$0001], sp                                ; $6290: $08 $01 $00
    cpl                                           ; $6293: $2f
    ld c, d                                       ; $6294: $4a
    db $fd                                        ; $6295: $fd
    ld c, d                                       ; $6296: $4a
    xor [hl]                                      ; $6297: $ae
    inc b                                         ; $6298: $04
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    ld c, l                                       ; $629b: $4d
    rla                                           ; $629c: $17
    ld b, $05                                     ; $629d: $06 $05
    ld e, a                                       ; $629f: $5f
    inc bc                                        ; $62a0: $03
    ld bc, $aa00                                  ; $62a1: $01 $00 $aa
    ld b, $5b                                     ; $62a4: $06 $5b
    ld bc, $035f                                  ; $62a6: $01 $5f $03
    nop                                           ; $62a9: $00
    inc b                                         ; $62aa: $04
    jr c, jr_0d1_62d7                             ; $62ab: $38 $2a

    rra                                           ; $62ad: $1f
    ld c, e                                       ; $62ae: $4b
    dec c                                         ; $62af: $0d
    dec c                                         ; $62b0: $0d
    nop                                           ; $62b1: $00
    nop                                           ; $62b2: $00
    cp b                                          ; $62b3: $b8
    dec d                                         ; $62b4: $15
    ld a, $4f                                     ; $62b5: $3e $4f
    dec hl                                        ; $62b7: $2b
    dec e                                         ; $62b8: $1d
    ld [bc], a                                    ; $62b9: $02
    nop                                           ; $62ba: $00
    db $ed                                        ; $62bb: $ed
    dec a                                         ; $62bc: $3d
    ld e, a                                       ; $62bd: $5f
    inc bc                                        ; $62be: $03
    add l                                         ; $62bf: $85
    ld bc, $0001                                  ; $62c0: $01 $01 $00
    xor c                                         ; $62c3: $a9

jr_0d1_62c4:
    ld [bc], a                                    ; $62c4: $02
    or h                                          ; $62c5: $b4
    ld b, a                                       ; $62c6: $47
    ld e, l                                       ; $62c7: $5d
    ld [bc], a                                    ; $62c8: $02
    jr nz, jr_0d1_62d7                            ; $62c9: $20 $0c

    ld c, d                                       ; $62cb: $4a
    add hl, hl                                    ; $62cc: $29
    rst $28                                       ; $62cd: $ef
    dec a                                         ; $62ce: $3d
    and h                                         ; $62cf: $a4
    jr jr_0d1_62f6                                ; $62d0: $18 $24

    inc b                                         ; $62d2: $04
    ld e, c                                       ; $62d3: $59
    ld [hl-], a                                   ; $62d4: $32
    rra                                           ; $62d5: $1f
    ld c, e                                       ; $62d6: $4b

jr_0d1_62d7:
    call z, $2108                                 ; $62d7: $cc $08 $21
    nop                                           ; $62da: $00
    ld e, a                                       ; $62db: $5f
    inc bc                                        ; $62dc: $03
    adc b                                         ; $62dd: $88
    ld de, $7fff                                  ; $62de: $11 $ff $7f
    ld [bc], a                                    ; $62e1: $02
    nop                                           ; $62e2: $00
    xor d                                         ; $62e3: $aa
    ld b, $5d                                     ; $62e4: $06 $5d
    ld [bc], a                                    ; $62e6: $02
    ld [hl], d                                    ; $62e7: $72
    dec sp                                        ; $62e8: $3b
    add $18                                       ; $62e9: $c6 $18
    rst $28                                       ; $62eb: $ef
    dec a                                         ; $62ec: $3d
    ld [$9421], sp                                ; $62ed: $08 $21 $94
    ld d, d                                       ; $62f0: $52
    ld b, e                                       ; $62f1: $43
    ld [$3abe], sp                                ; $62f2: $08 $be $3a
    db $ec                                        ; $62f5: $ec

jr_0d1_62f6:
    inc c                                         ; $62f6: $0c
    sub d                                         ; $62f7: $92
    dec e                                         ; $62f8: $1d
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    ld e, a                                       ; $62fb: $5f
    inc bc                                        ; $62fc: $03
    and $01                                       ; $62fd: $e6 $01
    add e                                         ; $62ff: $83
    nop                                           ; $6300: $00
    ld bc, $cb00                                  ; $6301: $01 $00 $cb
    ld b, $5d                                     ; $6304: $06 $5d
    ld [bc], a                                    ; $6306: $02
    inc bc                                        ; $6307: $03
    ld bc, $0000                                  ; $6308: $01 $00 $00
    db $10                                        ; $630b: $10
    ld b, d                                       ; $630c: $42
    add $1c                                       ; $630d: $c6 $1c
    sub h                                         ; $630f: $94
    ld d, d                                       ; $6310: $52
    ld hl, $ef08                                  ; $6311: $21 $08 $ef
    dec a                                         ; $6314: $3d
    rst $38                                       ; $6315: $ff
    ld a, a                                       ; $6316: $7f
    add $18                                       ; $6317: $c6 $18
    nop                                           ; $6319: $00
    nop                                           ; $631a: $00
    ld e, a                                       ; $631b: $5f
    inc bc                                        ; $631c: $03
    and l                                         ; $631d: $a5
    ld bc, $00a1                                  ; $631e: $01 $a1 $00
    ld bc, $ca00                                  ; $6321: $01 $00 $ca
    ld b, $5d                                     ; $6324: $06 $5d
    ld [bc], a                                    ; $6326: $02
    inc hl                                        ; $6327: $23
    ld bc, $0400                                  ; $6328: $01 $00 $04
    rst $28                                       ; $632b: $ef
    ld b, c                                       ; $632c: $41
    push bc                                       ; $632d: $c5
    jr jr_0d1_62c4                                ; $632e: $18 $94

    ld d, d                                       ; $6330: $52
    ld hl, $1108                                  ; $6331: $21 $08 $11
    ld b, d                                       ; $6334: $42
    rst $38                                       ; $6335: $ff
    ld a, a                                       ; $6336: $7f
    ld [$211d], sp                                ; $6337: $08 $1d $21
    nop                                           ; $633a: $00
    ld e, a                                       ; $633b: $5f
    inc bc                                        ; $633c: $03
    add l                                         ; $633d: $85
    ld bc, $0649                                  ; $633e: $01 $49 $06
    ld [bc], a                                    ; $6341: $02
    nop                                           ; $6342: $00
    db $eb                                        ; $6343: $eb
    ld a, [bc]                                    ; $6344: $0a
    ld e, l                                       ; $6345: $5d
    ld [bc], a                                    ; $6346: $02
    inc h                                         ; $6347: $24
    ld bc, $0400                                  ; $6348: $01 $00 $04
    sub h                                         ; $634b: $94
    ld d, d                                       ; $634c: $52
    ld h, e                                       ; $634d: $63

Call_0d1_634e:
    ld bc, $1ce6                                  ; $634e: $01 $e6 $1c
    nop                                           ; $6351: $00
    inc b                                         ; $6352: $04
    sub h                                         ; $6353: $94
    ld d, d                                       ; $6354: $52
    ld [$8321], sp                                ; $6355: $08 $21 $83
    db $10                                        ; $6358: $10
    ld b, c                                       ; $6359: $41
    nop                                           ; $635a: $00
    ld l, l                                       ; $635b: $6d
    dec bc                                        ; $635c: $0b
    add l                                         ; $635d: $85
    ld bc, $035f                                  ; $635e: $01 $5f $03
    ld [bc], a                                    ; $6361: $02
    nop                                           ; $6362: $00
    xor d                                         ; $6363: $aa
    ld b, $5d                                     ; $6364: $06 $5d
    ld [bc], a                                    ; $6366: $02
    inc bc                                        ; $6367: $03
    ld bc, $0400                                  ; $6368: $01 $00 $04
    sub h                                         ; $636b: $94
    ld d, d                                       ; $636c: $52
    and $1c                                       ; $636d: $e6 $1c
    ld h, h                                       ; $636f: $64
    ld bc, $0400                                  ; $6370: $01 $00 $04
    sub h                                         ; $6373: $94
    ld d, d                                       ; $6374: $52
    ld b, h                                       ; $6375: $44
    ld bc, $1ce6                                  ; $6376: $01 $e6 $1c
    add d                                         ; $6379: $82
    nop                                           ; $637a: $00
    ld l, l                                       ; $637b: $6d
    dec bc                                        ; $637c: $0b
    rst $00                                       ; $637d: $c7
    ld bc, $035f                                  ; $637e: $01 $5f $03
    ld [bc], a                                    ; $6381: $02
    nop                                           ; $6382: $00
    ld e, e                                       ; $6383: $5b
    ld bc, $035f                                  ; $6384: $01 $5f $03
    ld e, a                                       ; $6387: $5f
    inc bc                                        ; $6388: $03
    ld e, e                                       ; $6389: $5b
    ld bc, $035f                                  ; $638a: $01 $5f $03
    ld e, a                                       ; $638d: $5f
    inc bc                                        ; $638e: $03
    ld e, a                                       ; $638f: $5f
    inc bc                                        ; $6390: $03
    ld e, e                                       ; $6391: $5b
    ld bc, $035f                                  ; $6392: $01 $5f $03
    ld e, a                                       ; $6395: $5f
    inc bc                                        ; $6396: $03
    ld e, a                                       ; $6397: $5f
    inc bc                                        ; $6398: $03
    ld [bc], a                                    ; $6399: $02
    nop                                           ; $639a: $00
    ld e, e                                       ; $639b: $5b
    ld bc, $035f                                  ; $639c: $01 $5f $03
    ld e, a                                       ; $639f: $5f
    inc bc                                        ; $63a0: $03
    ld [bc], a                                    ; $63a1: $02
    nop                                           ; $63a2: $00
    sub e                                         ; $63a3: $93
    ld de, $035f                                  ; $63a4: $11 $5f $03
    ld a, d                                       ; $63a7: $7a
    dec b                                         ; $63a8: $05
    ld h, d                                       ; $63a9: $62
    ld [$1a3d], sp                                ; $63aa: $08 $3d $1a
    ld e, a                                       ; $63ad: $5f
    inc bc                                        ; $63ae: $03
    sub b                                         ; $63af: $90
    add hl, de                                    ; $63b0: $19
    ld d, c                                       ; $63b1: $51
    ld l, a                                       ; $63b2: $6f
    sub e                                         ; $63b3: $93
    nop                                           ; $63b4: $00
    ld e, a                                       ; $63b5: $5f
    rlca                                          ; $63b6: $07
    dec de                                        ; $63b7: $1b
    ld a, [hl+]                                   ; $63b8: $2a
    ld [bc], a                                    ; $63b9: $02
    nop                                           ; $63ba: $00
    ld d, c                                       ; $63bb: $51
    ld l, a                                       ; $63bc: $6f
    ld e, a                                       ; $63bd: $5f
    inc bc                                        ; $63be: $03
    dec de                                        ; $63bf: $1b
    ld a, [hl+]                                   ; $63c0: $2a
    ld [bc], a                                    ; $63c1: $02
    nop                                           ; $63c2: $00
    jr c, jr_0d1_63c6                             ; $63c3: $38 $01

    ld e, a                                       ; $63c5: $5f

jr_0d1_63c6:
    inc bc                                        ; $63c6: $03
    add [hl]                                      ; $63c7: $86
    inc b                                         ; $63c8: $04
    xor d                                         ; $63c9: $aa
    inc b                                         ; $63ca: $04
    cp h                                          ; $63cb: $bc
    ld a, [hl+]                                   ; $63cc: $2a
    ld [hl], e                                    ; $63cd: $73
    dec c                                         ; $63ce: $0d
    cp a                                          ; $63cf: $bf
    ld bc, $6f51                                  ; $63d0: $01 $51 $6f
    sub e                                         ; $63d3: $93
    nop                                           ; $63d4: $00
    ld a, a                                       ; $63d5: $7f
    inc sp                                        ; $63d6: $33
    sub $1d                                       ; $63d7: $d6 $1d
    ld [bc], a                                    ; $63d9: $02
    nop                                           ; $63da: $00
    ld d, c                                       ; $63db: $51
    ld l, a                                       ; $63dc: $6f
    ld e, a                                       ; $63dd: $5f
    inc bc                                        ; $63de: $03
    sub $1d                                       ; $63df: $d6 $1d
    ld [bc], a                                    ; $63e1: $02
    nop                                           ; $63e2: $00
    jr c, jr_0d1_63e6                             ; $63e3: $38 $01

    ld e, a                                       ; $63e5: $5f

jr_0d1_63e6:
    inc bc                                        ; $63e6: $03
    ld l, b                                       ; $63e7: $68
    nop                                           ; $63e8: $00
    ld [hl+], a                                   ; $63e9: $22
    inc b                                         ; $63ea: $04
    xor $00                                       ; $63eb: $ee $00
    sbc $05                                       ; $63ed: $de $05
    ld d, c                                       ; $63ef: $51
    add hl, bc                                    ; $63f0: $09
    ld bc, $5100                                  ; $63f1: $01 $00 $51
    ld l, a                                       ; $63f4: $6f
    ld de, $5f0d                                  ; $63f5: $11 $0d $5f
    inc sp                                        ; $63f8: $33
    ld [bc], a                                    ; $63f9: $02
    nop                                           ; $63fa: $00
    ld d, c                                       ; $63fb: $51
    ld l, a                                       ; $63fc: $6f
    ld e, a                                       ; $63fd: $5f
    inc bc                                        ; $63fe: $03
    ld e, a                                       ; $63ff: $5f
    inc sp                                        ; $6400: $33
    ld [bc], a                                    ; $6401: $02
    nop                                           ; $6402: $00
    ld d, $01                                     ; $6403: $16 $01
    ld e, a                                       ; $6405: $5f
    inc bc                                        ; $6406: $03
    xor d                                         ; $6407: $aa
    nop                                           ; $6408: $00
    ld bc, $f100                                  ; $6409: $01 $00 $f1
    nop                                           ; $640c: $00
    adc c                                         ; $640d: $89
    nop                                           ; $640e: $00
    halt                                          ; $640f: $76
    dec b                                         ; $6410: $05
    ld bc, $0f00                                  ; $6411: $01 $00 $0f
    ld l, e                                       ; $6414: $6b
    ld d, l                                       ; $6415: $55
    dec c                                         ; $6416: $0d
    rst $38                                       ; $6417: $ff
    ld d, e                                       ; $6418: $53
    ld [bc], a                                    ; $6419: $02
    nop                                           ; $641a: $00
    rrca                                          ; $641b: $0f
    ld l, e                                       ; $641c: $6b
    ld e, a                                       ; $641d: $5f
    inc bc                                        ; $641e: $03
    jr nc, jr_0d1_648c                            ; $641f: $30 $6b

    ld [bc], a                                    ; $6421: $02
    nop                                           ; $6422: $00
    db $f4                                        ; $6423: $f4
    nop                                           ; $6424: $00
    ld e, a                                       ; $6425: $5f
    inc bc                                        ; $6426: $03
    adc c                                         ; $6427: $89
    nop                                           ; $6428: $00
    ld bc, $f300                                  ; $6429: $01 $00 $f3
    nop                                           ; $642c: $00
    ld a, c                                       ; $642d: $79
    ld a, $8a                                     ; $642e: $3e $8a
    nop                                           ; $6430: $00
    ld [bc], a                                    ; $6431: $02
    nop                                           ; $6432: $00
    ld e, l                                       ; $6433: $5d
    ld bc, $66ef                                  ; $6434: $01 $ef $66
    cp $4e                                        ; $6437: $fe $4e
    ld [bc], a                                    ; $6439: $02
    nop                                           ; $643a: $00
    xor $66                                       ; $643b: $ee $66
    ld e, a                                       ; $643d: $5f
    inc bc                                        ; $643e: $03
    rrca                                          ; $643f: $0f
    ld h, a                                       ; $6440: $67
    ld [bc], a                                    ; $6441: $02
    nop                                           ; $6442: $00
    db $f4                                        ; $6443: $f4
    nop                                           ; $6444: $00
    ld e, a                                       ; $6445: $5f
    inc bc                                        ; $6446: $03
    ld l, b                                       ; $6447: $68
    nop                                           ; $6448: $00
    ld [bc], a                                    ; $6449: $02
    nop                                           ; $644a: $00
    sub h                                         ; $644b: $94
    ld hl, $4efe                                  ; $644c: $21 $fe $4e
    ld e, [hl]                                    ; $644f: $5e
    ld bc, $0004                                  ; $6450: $01 $04 $00
    reti                                          ; $6453: $d9


    ld d, d                                       ; $6454: $52
    ld a, [de]                                    ; $6455: $1a
    dec b                                         ; $6456: $05
    nop                                           ; $6457: $00
    ld b, h                                       ; $6458: $44
    ld [bc], a                                    ; $6459: $02
    nop                                           ; $645a: $00
    adc l                                         ; $645b: $8d
    ld h, d                                       ; $645c: $62
    ld e, a                                       ; $645d: $5f
    inc bc                                        ; $645e: $03
    adc $62                                       ; $645f: $ce $62
    ld bc, $4c00                                  ; $6461: $01 $00 $4c
    ld e, d                                       ; $6464: $5a
    ld e, l                                       ; $6465: $5d
    ld [bc], a                                    ; $6466: $02
    adc l                                         ; $6467: $8d
    nop                                           ; $6468: $00
    ld bc, $9e00                                  ; $6469: $01 $00 $9e
    ld l, a                                       ; $646c: $6f
    cp b                                          ; $646d: $b8
    nop                                           ; $646e: $00
    ld bc, $223c                                  ; $646f: $01 $3c $22
    inc e                                         ; $6472: $1c
    ld c, h                                       ; $6473: $4c
    ld e, [hl]                                    ; $6474: $5e
    ld a, $5f                                     ; $6475: $3e $5f
    ld sp, $0215                                  ; $6477: $31 $15 $02
    nop                                           ; $647a: $00
    ld c, h                                       ; $647b: $4c
    ld e, d                                       ; $647c: $5a
    ld e, a                                       ; $647d: $5f
    inc bc                                        ; $647e: $03
    ld l, h                                       ; $647f: $6c
    ld e, [hl]                                    ; $6480: $5e
    ld [bc], a                                    ; $6481: $02
    nop                                           ; $6482: $00
    ld a, [bc]                                    ; $6483: $0a
    ld d, [hl]                                    ; $6484: $56
    sub a                                         ; $6485: $97
    dec d                                         ; $6486: $15
    ld e, a                                       ; $6487: $5f
    inc bc                                        ; $6488: $03
    inc b                                         ; $6489: $04
    nop                                           ; $648a: $00
    ld a, [hl-]                                   ; $648b: $3a

jr_0d1_648c:
    ld [hl-], a                                   ; $648c: $32
    ld e, $57                                     ; $648d: $1e $57
    xor $0c                                       ; $648f: $ee $0c
    jr z, jr_0d1_6493                             ; $6491: $28 $00

jr_0d1_6493:
    cp $4e                                        ; $6493: $fe $4e
    ld a, [bc]                                    ; $6495: $0a
    ld d, [hl]                                    ; $6496: $56
    dec c                                         ; $6497: $0d
    dec d                                         ; $6498: $15
    ld [bc], a                                    ; $6499: $02
    nop                                           ; $649a: $00
    ld e, a                                       ; $649b: $5f
    inc bc                                        ; $649c: $03
    ld a, [bc]                                    ; $649d: $0a
    ld d, [hl]                                    ; $649e: $56
    dec hl                                        ; $649f: $2b
    ld e, d                                       ; $64a0: $5a
    ld [bc], a                                    ; $64a1: $02
    nop                                           ; $64a2: $00
    ret                                           ; $64a3: $c9


    ld d, c                                       ; $64a4: $51
    cp d                                          ; $64a5: $ba
    add hl, de                                    ; $64a6: $19
    ld e, a                                       ; $64a7: $5f
    inc bc                                        ; $64a8: $03
    ld c, e                                       ; $64a9: $4b
    nop                                           ; $64aa: $00
    ld a, [hl-]                                   ; $64ab: $3a
    ld [hl-], a                                   ; $64ac: $32
    cp $4e                                        ; $64ad: $fe $4e
    ld d, b                                       ; $64af: $50
    add hl, de                                    ; $64b0: $19
    ld c, e                                       ; $64b1: $4b
    nop                                           ; $64b2: $00
    ld [$1e55], a                                 ; $64b3: $ea $55 $1e
    ld d, e                                       ; $64b6: $53
    dec de                                        ; $64b7: $1b
    ld l, $02                                     ; $64b8: $2e $02
    nop                                           ; $64ba: $00
    ld e, a                                       ; $64bb: $5f
    inc bc                                        ; $64bc: $03
    ret                                           ; $64bd: $c9


    ld d, c                                       ; $64be: $51
    ld [$0155], a                                 ; $64bf: $ea $55 $01
    nop                                           ; $64c2: $00
    add a                                         ; $64c3: $87
    ld c, l                                       ; $64c4: $4d
    rla                                           ; $64c5: $17
    ld bc, $035f                                  ; $64c6: $01 $5f $03
    jr z, jr_0d1_64cb                             ; $64c9: $28 $00

jr_0d1_64cb:
    add hl, de                                    ; $64cb: $19
    ld bc, $2e1b                                  ; $64cc: $01 $1b $2e
    ld de, $280d                                  ; $64cf: $11 $0d $28
    nop                                           ; $64d2: $00
    dec e                                         ; $64d3: $1d
    ld h, $f3                                     ; $64d4: $26 $f3
    nop                                           ; $64d6: $00
    ld l, e                                       ; $64d7: $6b
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    add a                                         ; $64db: $87
    ld c, l                                       ; $64dc: $4d
    ld e, a                                       ; $64dd: $5f
    inc bc                                        ; $64de: $03
    xor b                                         ; $64df: $a8
    ld d, c                                       ; $64e0: $51
    ld bc, $4600                                  ; $64e1: $01 $00 $46
    ld c, c                                       ; $64e4: $49
    jr c, jr_0d1_64e8                             ; $64e5: $38 $01

    ld e, a                                       ; $64e7: $5f

jr_0d1_64e8:
    inc bc                                        ; $64e8: $03
    ld c, d                                       ; $64e9: $4a
    nop                                           ; $64ea: $00
    push af                                       ; $64eb: $f5
    nop                                           ; $64ec: $00
    dec de                                        ; $64ed: $1b
    ld a, [hl+]                                   ; $64ee: $2a
    ld e, [hl]                                    ; $64ef: $5e
    dec b                                         ; $64f0: $05
    ld l, b                                       ; $64f1: $68
    inc b                                         ; $64f2: $04
    dec de                                        ; $64f3: $1b
    ld bc, $7fff                                  ; $64f4: $01 $ff $7f
    dec e                                         ; $64f7: $1d
    ld h, $02                                     ; $64f8: $26 $02
    nop                                           ; $64fa: $00
    ld e, a                                       ; $64fb: $5f
    inc bc                                        ; $64fc: $03
    ld b, [hl]                                    ; $64fd: $46
    ld c, c                                       ; $64fe: $49
    ei                                            ; $64ff: $fb
    ld l, $01                                     ; $6500: $2e $01
    nop                                           ; $6502: $00
    dec b                                         ; $6503: $05
    ld b, l                                       ; $6504: $45
    ld e, e                                       ; $6505: $5b
    ld bc, $035f                                  ; $6506: $01 $5f $03
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    or $00                                        ; $650b: $f6 $00
    db $fd                                        ; $650d: $fd
    ld l, $4a                                     ; $650e: $2e $4a
    nop                                           ; $6510: $00
    dec h                                         ; $6511: $25
    inc b                                         ; $6512: $04
    jr jr_0d1_6516                                ; $6513: $18 $01

    dec e                                         ; $6515: $1d

jr_0d1_6516:
    ld h, $ae                                     ; $6516: $26 $ae
    inc b                                         ; $6518: $04
    inc hl                                        ; $6519: $23
    nop                                           ; $651a: $00
    sub h                                         ; $651b: $94
    dec c                                         ; $651c: $0d
    ld e, a                                       ; $651d: $5f
    inc bc                                        ; $651e: $03
    ccf                                           ; $651f: $3f
    scf                                           ; $6520: $37
    ld bc, $b800                                  ; $6521: $01 $00 $b8
    ld de, $40c3                                  ; $6524: $11 $c3 $40
    ld e, a                                       ; $6527: $5f
    inc bc                                        ; $6528: $03
    ld h, $00                                     ; $6529: $26 $00
    ld [hl], $01                                  ; $652b: $36 $01
    ld e, a                                       ; $652d: $5f
    cpl                                           ; $652e: $2f
    xor [hl]                                      ; $652f: $ae
    inc b                                         ; $6530: $04
    jr z, jr_0d1_6533                             ; $6531: $28 $00

jr_0d1_6533:
    rla                                           ; $6533: $17
    dec b                                         ; $6534: $05
    dec de                                        ; $6535: $1b
    ld bc, $04ae                                  ; $6536: $01 $ae $04
    inc bc                                        ; $6539: $03
    nop                                           ; $653a: $00
    ld [hl], d                                    ; $653b: $72
    dec b                                         ; $653c: $05
    rst $38                                       ; $653d: $ff
    ld a, [hl-]                                   ; $653e: $3a
    ld e, a                                       ; $653f: $5f
    inc bc                                        ; $6540: $03
    ld bc, $3400                                  ; $6541: $01 $00 $34
    dec b                                         ; $6544: $05
    rst $18                                       ; $6545: $df
    ld [bc], a                                    ; $6546: $02
    cp h                                          ; $6547: $bc
    ld [hl], $25                                  ; $6548: $36 $25
    nop                                           ; $654a: $00
    pop de                                        ; $654b: $d1
    inc b                                         ; $654c: $04
    xor h                                         ; $654d: $ac
    nop                                           ; $654e: $00
    rla                                           ; $654f: $17
    dec b                                         ; $6550: $05
    jr z, jr_0d1_6553                             ; $6551: $28 $00

jr_0d1_6553:
    add hl, de                                    ; $6553: $19
    ld bc, $261d                                  ; $6554: $01 $1d $26
    xor [hl]                                      ; $6557: $ae
    inc b                                         ; $6558: $04
    ld bc, $5f00                                  ; $6559: $01 $00 $5f
    inc bc                                        ; $655c: $03
    xor e                                         ; $655d: $ab
    nop                                           ; $655e: $00
    ret nc                                        ; $655f: $d0

    nop                                           ; $6560: $00
    ld bc, $5700                                  ; $6561: $01 $00 $57
    dec b                                         ; $6564: $05
    rst $38                                       ; $6565: $ff
    ld [bc], a                                    ; $6566: $02
    adc d                                         ; $6567: $8a
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    xor l                                         ; $656b: $ad
    nop                                           ; $656c: $00
    rla                                           ; $656d: $17
    dec b                                         ; $656e: $05
    ld c, b                                       ; $656f: $48
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    ld hl, sp+$00                                 ; $6573: $f8 $00
    dec e                                         ; $6575: $1d
    ld h, $29                                     ; $6576: $26 $29
    nop                                           ; $6578: $00
    ld [bc], a                                    ; $6579: $02
    nop                                           ; $657a: $00
    ld e, a                                       ; $657b: $5f
    inc bc                                        ; $657c: $03
    ld b, a                                       ; $657d: $47
    nop                                           ; $657e: $00
    xor c                                         ; $657f: $a9
    nop                                           ; $6580: $00
    ld [bc], a                                    ; $6581: $02
    nop                                           ; $6582: $00
    ld e, e                                       ; $6583: $5b
    ld bc, $035f                                  ; $6584: $01 $5f $03
    xor c                                         ; $6587: $a9
    nop                                           ; $6588: $00
    ld e, e                                       ; $6589: $5b
    ld bc, $035f                                  ; $658a: $01 $5f $03
    ld e, a                                       ; $658d: $5f
    inc bc                                        ; $658e: $03
    xor c                                         ; $658f: $a9
    nop                                           ; $6590: $00
    ld e, e                                       ; $6591: $5b
    ld bc, $035f                                  ; $6592: $01 $5f $03
    ld e, a                                       ; $6595: $5f
    inc bc                                        ; $6596: $03
    xor c                                         ; $6597: $a9
    nop                                           ; $6598: $00
    ld [bc], a                                    ; $6599: $02
    nop                                           ; $659a: $00
    ld e, e                                       ; $659b: $5b
    ld bc, $035f                                  ; $659c: $01 $5f $03
    xor c                                         ; $659f: $a9
    nop                                           ; $65a0: $00
    ld [bc], a                                    ; $65a1: $02
    nop                                           ; $65a2: $00
    add [hl]                                      ; $65a3: $86
    ld d, $5b                                     ; $65a4: $16 $5b
    ld bc, $035f                                  ; $65a6: $01 $5f $03
    ld [$5f18], sp                                ; $65a9: $08 $18 $5f
    inc bc                                        ; $65ac: $03
    inc d                                         ; $65ad: $14
    ld b, b                                       ; $65ae: $40
    add [hl]                                      ; $65af: $86
    ld d, $ef                                     ; $65b0: $16 $ef
    inc [hl]                                      ; $65b2: $34
    ld e, a                                       ; $65b3: $5f
    inc bc                                        ; $65b4: $03
    ccf                                           ; $65b5: $3f
    ld a, d                                       ; $65b6: $7a
    inc d                                         ; $65b7: $14
    ld b, b                                       ; $65b8: $40
    ld [bc], a                                    ; $65b9: $02
    nop                                           ; $65ba: $00
    ld e, a                                       ; $65bb: $5f
    inc bc                                        ; $65bc: $03
    add [hl]                                      ; $65bd: $86
    ld d, $14                                     ; $65be: $16 $14
    ld b, b                                       ; $65c0: $40
    ld [bc], a                                    ; $65c1: $02
    nop                                           ; $65c2: $00
    add [hl]                                      ; $65c3: $86
    ld d, $5b                                     ; $65c4: $16 $5b
    ld bc, $035f                                  ; $65c6: $01 $5f $03
    ld bc, $1404                                  ; $65c9: $01 $04 $14
    ld b, b                                       ; $65cc: $40
    add [hl]                                      ; $65cd: $86
    ld d, $09                                     ; $65ce: $16 $09
    inc e                                         ; $65d0: $1c
    rst $28                                       ; $65d1: $ef
    inc [hl]                                      ; $65d2: $34
    ccf                                           ; $65d3: $3f
    ld a, d                                       ; $65d4: $7a
    inc d                                         ; $65d5: $14
    ld b, b                                       ; $65d6: $40
    add hl, bc                                    ; $65d7: $09
    inc e                                         ; $65d8: $1c
    ld [bc], a                                    ; $65d9: $02
    nop                                           ; $65da: $00
    ld e, a                                       ; $65db: $5f
    inc bc                                        ; $65dc: $03
    add [hl]                                      ; $65dd: $86
    ld d, $ef                                     ; $65de: $16 $ef
    inc [hl]                                      ; $65e0: $34
    ld bc, $8600                                  ; $65e1: $01 $00 $86
    ld d, $5b                                     ; $65e4: $16 $5b
    ld bc, $035f                                  ; $65e6: $01 $5f $03
    ld bc, $1404                                  ; $65e9: $01 $04 $14
    ld b, b                                       ; $65ec: $40
    add hl, bc                                    ; $65ed: $09
    inc e                                         ; $65ee: $1c
    dec b                                         ; $65ef: $05
    db $10                                        ; $65f0: $10
    dec b                                         ; $65f1: $05
    db $10                                        ; $65f2: $10
    ccf                                           ; $65f3: $3f
    ld a, d                                       ; $65f4: $7a
    inc d                                         ; $65f5: $14
    ld b, b                                       ; $65f6: $40
    ld b, $10                                     ; $65f7: $06 $10
    ld l, b                                       ; $65f9: $68
    jr jr_0d1_663b                                ; $65fa: $18 $3f

    ld a, d                                       ; $65fc: $7a
    add [hl]                                      ; $65fd: $86
    ld d, $5f                                     ; $65fe: $16 $5f
    inc bc                                        ; $6600: $03
    ld [bc], a                                    ; $6601: $02
    nop                                           ; $6602: $00
    add [hl]                                      ; $6603: $86
    ld d, $5b                                     ; $6604: $16 $5b
    ld bc, $035f                                  ; $6606: $01 $5f $03
    ld bc, $1404                                  ; $6609: $01 $04 $14
    ld b, b                                       ; $660c: $40
    add hl, bc                                    ; $660d: $09
    inc e                                         ; $660e: $1c
    ld e, a                                       ; $660f: $5f
    inc bc                                        ; $6610: $03
    dec b                                         ; $6611: $05
    db $10                                        ; $6612: $10
    inc de                                        ; $6613: $13
    inc a                                         ; $6614: $3c
    ccf                                           ; $6615: $3f
    ld a, d                                       ; $6616: $7a
    inc d                                         ; $6617: $14
    ld b, b                                       ; $6618: $40
    dec h                                         ; $6619: $25
    db $10                                        ; $661a: $10
    ccf                                           ; $661b: $3f
    ld a, d                                       ; $661c: $7a
    add [hl]                                      ; $661d: $86
    ld d, $5f                                     ; $661e: $16 $5f
    inc bc                                        ; $6620: $03
    ld bc, $a600                                  ; $6621: $01 $00 $a6
    ld a, [de]                                    ; $6624: $1a
    ld e, l                                       ; $6625: $5d

Jump_0d1_6626:
    ld [bc], a                                    ; $6626: $02
    add hl, bc                                    ; $6627: $09
    inc e                                         ; $6628: $1c
    jr nz, jr_0d1_662b                            ; $6629: $20 $00

jr_0d1_662b:
    adc e                                         ; $662b: $8b
    dec [hl]                                      ; $662c: $35
    inc d                                         ; $662d: $14
    ld b, b                                       ; $662e: $40
    add hl, bc                                    ; $662f: $09
    inc e                                         ; $6630: $1c
    jr nz, jr_0d1_6633                            ; $6631: $20 $00

jr_0d1_6633:
    adc e                                         ; $6633: $8b
    dec [hl]                                      ; $6634: $35
    inc d                                         ; $6635: $14
    ld b, b                                       ; $6636: $40
    ccf                                           ; $6637: $3f
    ld a, d                                       ; $6638: $7a
    ld b, $10                                     ; $6639: $06 $10

jr_0d1_663b:
    ccf                                           ; $663b: $3f
    ld a, d                                       ; $663c: $7a
    and [hl]                                      ; $663d: $a6
    ld a, [de]                                    ; $663e: $1a
    ld e, a                                       ; $663f: $5f
    inc bc                                        ; $6640: $03
    ld [bc], a                                    ; $6641: $02

Call_0d1_6642:
    nop                                           ; $6642: $00
    adc b                                         ; $6643: $88
    ld e, $5b                                     ; $6644: $1e $5b
    ld bc, $035f                                  ; $6646: $01 $5f $03
    rst $20                                       ; $6649: $e7
    inc e                                         ; $664a: $1c
    db $10                                        ; $664b: $10
    ld b, d                                       ; $664c: $42
    rst $38                                       ; $664d: $ff
    ld c, d                                       ; $664e: $4a
    adc e                                         ; $664f: $8b
    dec [hl]                                      ; $6650: $35
    rst $20                                       ; $6651: $e7
    inc e                                         ; $6652: $1c
    db $10                                        ; $6653: $10
    ld b, d                                       ; $6654: $42
    rst $38                                       ; $6655: $ff
    ld c, d                                       ; $6656: $4a
    adc e                                         ; $6657: $8b
    dec [hl]                                      ; $6658: $35
    ld b, e                                       ; $6659: $43
    ld [$7a3f], sp                                ; $665a: $08 $3f $7a
    adc b                                         ; $665d: $88
    ld [hl+], a                                   ; $665e: $22
    ld e, a                                       ; $665f: $5f
    inc bc                                        ; $6660: $03
    ld [bc], a                                    ; $6661: $02
    nop                                           ; $6662: $00
    ld l, e                                       ; $6663: $6b
    ld [hl+], a                                   ; $6664: $22
    ld e, l                                       ; $6665: $5d
    ld [bc], a                                    ; $6666: $02
    rst $38                                       ; $6667: $ff
    ld c, d                                       ; $6668: $4a
    ld bc, $d100                                  ; $6669: $01 $00 $d1
    ld [hl], b                                    ; $666c: $70
    cp a                                          ; $666d: $bf
    ld a, a                                       ; $666e: $7f
    db $d3                                        ; $666f: $d3
    dec l                                         ; $6670: $2d
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    pop de                                        ; $6673: $d1
    ld [hl], b                                    ; $6674: $70
    ld a, a                                       ; $6675: $7f
    ld l, e                                       ; $6676: $6b
    db $d3                                        ; $6677: $d3
    dec l                                         ; $6678: $2d
    inc hl                                        ; $6679: $23
    inc b                                         ; $667a: $04
    xor d                                         ; $667b: $aa
    ld [hl+], a                                   ; $667c: $22
    rra                                           ; $667d: $1f
    ld c, a                                       ; $667e: $4f
    ld e, a                                       ; $667f: $5f
    inc bc                                        ; $6680: $03
    ld [bc], a                                    ; $6681: $02
    nop                                           ; $6682: $00
    ld c, e                                       ; $6683: $4b
    ld e, $5d                                     ; $6684: $1e $5d
    ld [bc], a                                    ; $6686: $02
    rst $38                                       ; $6687: $ff
    ld c, d                                       ; $6688: $4a
    ld [hl+], a                                   ; $6689: $22
    inc b                                         ; $668a: $04
    db $d3                                        ; $668b: $d3
    dec l                                         ; $668c: $2d
    cp a                                          ; $668d: $bf
    ld a, a                                       ; $668e: $7f
    jr c, jr_0d1_66e9                             ; $668f: $38 $58

    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    db $d3                                        ; $6693: $d3
    dec l                                         ; $6694: $2d
    ld a, a                                       ; $6695: $7f
    ld l, e                                       ; $6696: $6b
    jr c, jr_0d1_66ed                             ; $6697: $38 $54

    add [hl]                                      ; $6699: $86
    ld [$2709], sp                                ; $669a: $08 $09 $27
    rst $38                                       ; $669d: $ff
    ld c, d                                       ; $669e: $4a
    ld e, a                                       ; $669f: $5f
    inc bc                                        ; $66a0: $03
    ld [bc], a                                    ; $66a1: $02
    nop                                           ; $66a2: $00
    sla [hl]                                      ; $66a3: $cb $26
    ld e, l                                       ; $66a5: $5d
    ld [bc], a                                    ; $66a6: $02
    rst $38                                       ; $66a7: $ff
    ld c, d                                       ; $66a8: $4a
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    ld [hl], h                                    ; $66ab: $74
    jr c, @+$01                                   ; $66ac: $38 $ff

    ld c, d                                       ; $66ae: $4a
    ld c, d                                       ; $66af: $4a
    inc e                                         ; $66b0: $1c
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    ld [hl], h                                    ; $66b3: $74
    jr c, @+$01                                   ; $66b4: $38 $ff

    ld c, d                                       ; $66b6: $4a
    ld c, d                                       ; $66b7: $4a
    inc e                                         ; $66b8: $1c
    ld h, [hl]                                    ; $66b9: $66
    ld [$2b0a], sp                                ; $66ba: $08 $0a $2b
    rst $38                                       ; $66bd: $ff
    ld c, d                                       ; $66be: $4a
    ld e, a                                       ; $66bf: $5f
    inc bc                                        ; $66c0: $03
    ld [bc], a                                    ; $66c1: $02
    nop                                           ; $66c2: $00
    dec hl                                        ; $66c3: $2b
    cpl                                           ; $66c4: $2f
    ld e, e                                       ; $66c5: $5b
    ld bc, $1b3f                                  ; $66c6: $01 $3f $1b
    ld bc, $ff00                                  ; $66c9: $01 $00 $ff
    ld c, d                                       ; $66cc: $4a
    db $ec                                        ; $66cd: $ec
    inc d                                         ; $66ce: $14
    adc e                                         ; $66cf: $8b
    dec [hl]                                      ; $66d0: $35
    xor b                                         ; $66d1: $a8
    inc c                                         ; $66d2: $0c
    rst $38                                       ; $66d3: $ff
    ld c, d                                       ; $66d4: $4a
    adc [hl]                                      ; $66d5: $8e
    ld sp, $2f4c                                  ; $66d6: $31 $4c $2f
    ld b, l                                       ; $66d9: $45
    inc b                                         ; $66da: $04
    dec hl                                        ; $66db: $2b
    cpl                                           ; $66dc: $2f
    rst $38                                       ; $66dd: $ff
    ld c, d                                       ; $66de: $4a
    ld e, a                                       ; $66df: $5f
    inc bc                                        ; $66e0: $03
    ld [bc], a                                    ; $66e1: $02
    nop                                           ; $66e2: $00
    ld c, h                                       ; $66e3: $4c
    inc sp                                        ; $66e4: $33
    ld e, e                                       ; $66e5: $5b
    ld bc, $035f                                  ; $66e6: $01 $5f $03

jr_0d1_66e9:
    ld b, d                                       ; $66e9: $42
    ld [$31f5], sp                                ; $66ea: $08 $f5 $31

jr_0d1_66ed:
    ld a, [hl-]                                   ; $66ed: $3a
    ld h, a                                       ; $66ee: $67
    add hl, bc                                    ; $66ef: $09
    ld hl, $0000                                  ; $66f0: $21 $00 $00
    ld c, h                                       ; $66f3: $4c
    inc sp                                        ; $66f4: $33
    rla                                           ; $66f5: $17
    ld h, e                                       ; $66f6: $63
    ld [$0221], sp                                ; $66f7: $08 $21 $02
    nop                                           ; $66fa: $00
    ld c, h                                       ; $66fb: $4c
    inc sp                                        ; $66fc: $33
    ld e, a                                       ; $66fd: $5f
    inc bc                                        ; $66fe: $03
    ld l, l                                       ; $66ff: $6d
    inc sp                                        ; $6700: $33
    ld [bc], a                                    ; $6701: $02
    nop                                           ; $6702: $00

jr_0d1_6703:
    adc e                                         ; $6703: $8b
    dec [hl]                                      ; $6704: $35
    ld e, l                                       ; $6705: $5d
    ld [bc], a                                    ; $6706: $02
    ld l, l                                       ; $6707: $6d
    scf                                           ; $6708: $37
    ld bc, $f400                                  ; $6709: $01 $00 $f4
    ld sp, $52fd                                  ; $670c: $31 $fd $52
    sla h                                         ; $670f: $cb $24
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    db $f4                                        ; $6713: $f4
    ld sp, $294a                                  ; $6714: $31 $4a $29
    db $fd                                        ; $6717: $fd
    ld d, d                                       ; $6718: $52
    ld [bc], a                                    ; $6719: $02
    nop                                           ; $671a: $00
    ld l, l                                       ; $671b: $6d
    scf                                           ; $671c: $37
    ld e, a                                       ; $671d: $5f
    inc bc                                        ; $671e: $03
    ld l, [hl]                                    ; $671f: $6e
    scf                                           ; $6720: $37
    ld [bc], a                                    ; $6721: $02
    nop                                           ; $6722: $00
    adc e                                         ; $6723: $8b
    dec [hl]                                      ; $6724: $35
    ld e, l                                       ; $6725: $5d
    ld [bc], a                                    ; $6726: $02
    adc [hl]                                      ; $6727: $8e
    scf                                           ; $6728: $37
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    inc e                                         ; $672b: $1c
    ld d, a                                       ; $672c: $57
    ld a, [bc]                                    ; $672d: $0a
    inc e                                         ; $672e: $1c
    ld [$0114], a                                 ; $672f: $ea $14 $01
    inc b                                         ; $6732: $04
    db $fd                                        ; $6733: $fd
    ld d, d                                       ; $6734: $52
    dec bc                                        ; $6735: $0b
    add hl, de                                    ; $6736: $19
    adc l                                         ; $6737: $8d
    dec l                                         ; $6738: $2d
    ld [bc], a                                    ; $6739: $02
    nop                                           ; $673a: $00
    adc [hl]                                      ; $673b: $8e
    scf                                           ; $673c: $37
    ld e, a                                       ; $673d: $5f
    inc bc                                        ; $673e: $03
    adc [hl]                                      ; $673f: $8e
    dec sp                                        ; $6740: $3b
    ld bc, $8b00                                  ; $6741: $01 $00 $8b
    dec [hl]                                      ; $6744: $35
    ld e, l                                       ; $6745: $5d
    ld [bc], a                                    ; $6746: $02
    adc [hl]                                      ; $6747: $8e
    dec sp                                        ; $6748: $3b
    inc hl                                        ; $6749: $23
    ld [$4416], sp                                ; $674a: $08 $16 $44
    inc e                                         ; $674d: $1c
    ld d, a                                       ; $674e: $57
    or d                                          ; $674f: $b2
    add hl, hl                                    ; $6750: $29
    dec h                                         ; $6751: $25
    inc c                                         ; $6752: $0c
    call nc, Call_0d1_6c2d                        ; $6753: $d4 $2d $6c
    add hl, hl                                    ; $6756: $29
    inc e                                         ; $6757: $1c
    ld d, a                                       ; $6758: $57
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    adc [hl]                                      ; $675b: $8e
    dec sp                                        ; $675c: $3b
    ld e, a                                       ; $675d: $5f
    inc bc                                        ; $675e: $03
    ld [bc], a                                    ; $675f: $02
    nop                                           ; $6760: $00
    ld bc, $8b00                                  ; $6761: $01 $00 $8b
    dec [hl]                                      ; $6764: $35
    ld e, l                                       ; $6765: $5d
    ld [bc], a                                    ; $6766: $02
    ld a, [bc]                                    ; $6767: $0a
    inc e                                         ; $6768: $1c
    dec h                                         ; $6769: $25
    db $10                                        ; $676a: $10
    ret c                                         ; $676b: $d8

    ld d, b                                       ; $676c: $50
    jr c, jr_0d1_67a1                             ; $676d: $38 $32

    ld a, [hl-]                                   ; $676f: $3a
    ld h, a                                       ; $6770: $67
    add l                                         ; $6771: $85
    inc c                                         ; $6772: $0c
    cp $4e                                        ; $6773: $fe $4e
    cpl                                           ; $6775: $2f
    jr nc, jr_0d1_6703                            ; $6776: $30 $8b

    dec [hl]                                      ; $6778: $35
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    sub d                                         ; $677b: $92
    jr c, jr_0d1_67d7                             ; $677c: $38 $59

    inc de                                        ; $677e: $13
    dec a                                         ; $677f: $3d
    ld l, c                                       ; $6780: $69
    ld [bc], a                                    ; $6781: $02
    nop                                           ; $6782: $00
    ld e, e                                       ; $6783: $5b
    ld bc, $035f                                  ; $6784: $01 $5f $03
    dec a                                         ; $6787: $3d
    ld l, c                                       ; $6788: $69
    ld e, e                                       ; $6789: $5b
    ld bc, $035f                                  ; $678a: $01 $5f $03
    ld e, a                                       ; $678d: $5f
    inc bc                                        ; $678e: $03
    dec a                                         ; $678f: $3d
    ld l, c                                       ; $6790: $69
    ld e, e                                       ; $6791: $5b
    ld bc, $035f                                  ; $6792: $01 $5f $03
    ld e, a                                       ; $6795: $5f
    inc bc                                        ; $6796: $03
    dec a                                         ; $6797: $3d
    ld l, c                                       ; $6798: $69
    ld [bc], a                                    ; $6799: $02
    nop                                           ; $679a: $00
    ld e, e                                       ; $679b: $5b
    ld bc, $035f                                  ; $679c: $01 $5f $03
    dec a                                         ; $679f: $3d
    ld l, c                                       ; $67a0: $69

jr_0d1_67a1:
    ld [bc], a                                    ; $67a1: $02
    nop                                           ; $67a2: $00
    ld e, e                                       ; $67a3: $5b
    ld bc, $035f                                  ; $67a4: $01 $5f $03
    ld e, l                                       ; $67a7: $5d
    add hl, hl                                    ; $67a8: $29
    xor d                                         ; $67a9: $aa
    ld a, l                                       ; $67aa: $7d
    ld e, l                                       ; $67ab: $5d
    add hl, hl                                    ; $67ac: $29
    ld e, a                                       ; $67ad: $5f
    inc bc                                        ; $67ae: $03
    ld e, l                                       ; $67af: $5d
    add hl, hl                                    ; $67b0: $29
    xor d                                         ; $67b1: $aa
    ld a, l                                       ; $67b2: $7d
    ld e, a                                       ; $67b3: $5f
    inc bc                                        ; $67b4: $03
    ld e, l                                       ; $67b5: $5d
    add hl, hl                                    ; $67b6: $29
    ld e, l                                       ; $67b7: $5d
    add hl, hl                                    ; $67b8: $29
    ld [bc], a                                    ; $67b9: $02
    nop                                           ; $67ba: $00
    ld e, l                                       ; $67bb: $5d
    add hl, hl                                    ; $67bc: $29
    ld e, a                                       ; $67bd: $5f
    inc bc                                        ; $67be: $03
    ld e, l                                       ; $67bf: $5d

Call_0d1_67c0:
    add hl, hl                                    ; $67c0: $29
    ld [bc], a                                    ; $67c1: $02
    nop                                           ; $67c2: $00
    ld e, e                                       ; $67c3: $5b
    ld bc, $035f                                  ; $67c4: $01 $5f $03
    ld e, l                                       ; $67c7: $5d
    add hl, hl                                    ; $67c8: $29
    ld bc, $5d34                                  ; $67c9: $01 $34 $5d
    add hl, hl                                    ; $67cc: $29
    ld [hl], e                                    ; $67cd: $73
    ld a, a                                       ; $67ce: $7f
    adc c                                         ; $67cf: $89
    ld [hl], l                                    ; $67d0: $75
    xor d                                         ; $67d1: $aa
    ld a, l                                       ; $67d2: $7d
    ld e, l                                       ; $67d3: $5d
    add hl, hl                                    ; $67d4: $29
    sub e                                         ; $67d5: $93
    ld a, e                                       ; $67d6: $7b

jr_0d1_67d7:
    ld l, l                                       ; $67d7: $6d
    ld a, h                                       ; $67d8: $7c
    ld [bc], a                                    ; $67d9: $02
    nop                                           ; $67da: $00
    ld e, l                                       ; $67db: $5d
    add hl, hl                                    ; $67dc: $29
    ld e, a                                       ; $67dd: $5f
    inc bc                                        ; $67de: $03
    ld l, l                                       ; $67df: $6d
    ld a, h                                       ; $67e0: $7c
    ld [bc], a                                    ; $67e1: $02
    nop                                           ; $67e2: $00
    ld e, e                                       ; $67e3: $5b
    ld bc, $035f                                  ; $67e4: $01 $5f $03
    ld e, l                                       ; $67e7: $5d
    add hl, hl                                    ; $67e8: $29
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    add [hl]                                      ; $67eb: $86
    ld c, b                                       ; $67ec: $48
    adc c                                         ; $67ed: $89
    ld [hl], l                                    ; $67ee: $75
    ld l, l                                       ; $67ef: $6d
    ld a, h                                       ; $67f0: $7c
    ld b, a                                       ; $67f1: $47
    add hl, sp                                    ; $67f2: $39
    xor l                                         ; $67f3: $ad
    ld a, c                                       ; $67f4: $79
    call nc, $5d7f                                ; $67f5: $d4 $7f $5d
    add hl, hl                                    ; $67f8: $29
    ld [bc], a                                    ; $67f9: $02
    nop                                           ; $67fa: $00
    ld e, l                                       ; $67fb: $5d
    add hl, hl                                    ; $67fc: $29
    ld e, a                                       ; $67fd: $5f
    inc bc                                        ; $67fe: $03
    ld e, l                                       ; $67ff: $5d
    add hl, hl                                    ; $6800: $29
    ld [bc], a                                    ; $6801: $02
    nop                                           ; $6802: $00
    ld e, e                                       ; $6803: $5b
    ld bc, $035f                                  ; $6804: $01 $5f $03
    ld e, l                                       ; $6807: $5d
    add hl, hl                                    ; $6808: $29
    nop                                           ; $6809: $00
    inc b                                         ; $680a: $04
    or e                                          ; $680b: $b3
    ld a, a                                       ; $680c: $7f
    dec b                                         ; $680d: $05
    ld b, b                                       ; $680e: $40
    xor e                                         ; $680f: $ab
    ld [hl], b                                    ; $6810: $70
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    xor b                                         ; $6813: $a8
    add hl, sp                                    ; $6814: $39
    or h                                          ; $6815: $b4
    ld a, a                                       ; $6816: $7f
    ld l, c                                       ; $6817: $69
    ld l, h                                       ; $6818: $6c
    inc h                                         ; $6819: $24
    inc b                                         ; $681a: $04

Jump_0d1_681b:
    db $eb                                        ; $681b: $eb
    ld [hl], l                                    ; $681c: $75
    ld e, l                                       ; $681d: $5d
    add hl, hl                                    ; $681e: $29
    ld e, a                                       ; $681f: $5f
    inc bc                                        ; $6820: $03
    ld [bc], a                                    ; $6821: $02
    nop                                           ; $6822: $00
    ld e, e                                       ; $6823: $5b
    ld bc, $035f                                  ; $6824: $01 $5f $03
    ld e, l                                       ; $6827: $5d
    dec h                                         ; $6828: $25
    ld bc, $f208                                  ; $6829: $01 $08 $f2
    ld a, a                                       ; $682c: $7f
    dec b                                         ; $682d: $05
    ld b, b                                       ; $682e: $40
    ld l, l                                       ; $682f: $6d
    ld a, h                                       ; $6830: $7c
    ld l, b                                       ; $6831: $68
    ld [$3e79], sp                                ; $6832: $08 $79 $3e
    add [hl]                                      ; $6835: $86
    ld d, h                                       ; $6836: $54
    sub e                                         ; $6837: $93
    ld l, a                                       ; $6838: $6f
    ld [bc], a                                    ; $6839: $02
    jr @-$54                                      ; $683a: $18 $aa

    ld a, l                                       ; $683c: $7d
    ld e, [hl]                                    ; $683d: $5e
    ld [de], a                                    ; $683e: $12
    push de                                       ; $683f: $d5
    ld a, a                                       ; $6840: $7f
    ld [bc], a                                    ; $6841: $02
    nop                                           ; $6842: $00
    ld e, e                                       ; $6843: $5b
    ld bc, $035f                                  ; $6844: $01 $5f $03
    ld e, l                                       ; $6847: $5d
    ld hl, $1403                                  ; $6848: $21 $03 $14
    ld a, [c]                                     ; $684b: $f2
    ld a, a                                       ; $684c: $7f
    ld h, a                                       ; $684d: $67
    ld d, h                                       ; $684e: $54
    ld a, [hl]                                    ; $684f: $7e
    ld b, d                                       ; $6850: $42
    nop                                           ; $6851: $00
    ld [$42bb], sp                                ; $6852: $08 $bb $42
    inc c                                         ; $6855: $0c
    ld a, h                                       ; $6856: $7c
    adc $08                                       ; $6857: $ce $08
    ld [bc], a                                    ; $6859: $02
    db $10                                        ; $685a: $10
    ld [hl-], a                                   ; $685b: $32
    ld a, e                                       ; $685c: $7b
    ld e, [hl]                                    ; $685d: $5e

jr_0d1_685e:
    ld [de], a                                    ; $685e: $12
    ld l, c                                       ; $685f: $69
    ld h, h                                       ; $6860: $64
    ld [bc], a                                    ; $6861: $02
    nop                                           ; $6862: $00
    ld l, [hl]                                    ; $6863: $6e
    ld a, a                                       ; $6864: $7f
    ld e, h                                       ; $6865: $5c
    dec d                                         ; $6866: $15
    ld e, a                                       ; $6867: $5f
    inc bc                                        ; $6868: $03
    ld [hl+], a                                   ; $6869: $22
    jr nc, jr_0d1_685e                            ; $686a: $30 $f2

    ld a, a                                       ; $686c: $7f
    ld l, l                                       ; $686d: $6d
    ld a, h                                       ; $686e: $7c
    cp e                                          ; $686f: $bb
    ld b, [hl]                                    ; $6870: $46
    nop                                           ; $6871: $00
    db $10                                        ; $6872: $10
    dec e                                         ; $6873: $1d
    ld d, e                                       ; $6874: $53
    inc l                                         ; $6875: $2c
    ld a, h                                       ; $6876: $7c
    adc $08                                       ; $6877: $ce $08
    ld [bc], a                                    ; $6879: $02
    inc c                                         ; $687a: $0c
    ld [hl], l                                    ; $687b: $75
    ld a, a                                       ; $687c: $7f
    db $dd                                        ; $687d: $dd
    dec d                                         ; $687e: $15
    ld [$0260], sp                                ; $687f: $08 $60 $02
    nop                                           ; $6882: $00
    bit 6, [hl]                                   ; $6883: $cb $76
    call c, $0809                                 ; $6885: $dc $09 $08
    ld d, h                                       ; $6888: $54
    dec b                                         ; $6889: $05
    ld c, h                                       ; $688a: $4c
    ld a, [c]                                     ; $688b: $f2
    ld a, a                                       ; $688c: $7f
    cp h                                          ; $688d: $bc
    ld b, [hl]                                    ; $688e: $46
    adc $08                                       ; $688f: $ce $08
    ld [bc], a                                    ; $6891: $02
    inc h                                         ; $6892: $24
    sbc e                                         ; $6893: $9b
    ld b, d                                       ; $6894: $42
    ld l, l                                       ; $6895: $6d
    ld a, h                                       ; $6896: $7c
    ld hl, sp+$7f                                 ; $6897: $f8 $7f
    ld [bc], a                                    ; $6899: $02
    inc c                                         ; $689a: $0c
    ld [hl-], a                                   ; $689b: $32
    ld a, a                                       ; $689c: $7f
    ld e, l                                       ; $689d: $5d
    add hl, de                                    ; $689e: $19
    ld e, a                                       ; $689f: $5f
    inc bc                                        ; $68a0: $03
    ld [bc], a                                    ; $68a1: $02
    nop                                           ; $68a2: $00
    ld l, c                                       ; $68a3: $69
    ld e, h                                       ; $68a4: $5c
    dec e                                         ; $68a5: $1d
    ld [bc], a                                    ; $68a6: $02
    dec hl                                        ; $68a7: $2b
    ld a, e                                       ; $68a8: $7b
    inc b                                         ; $68a9: $04
    ld b, b                                       ; $68aa: $40
    ld a, [c]                                     ; $68ab: $f2
    ld a, a                                       ; $68ac: $7f
    cp e                                          ; $68ad: $bb
    ld b, [hl]                                    ; $68ae: $46
    dec hl                                        ; $68af: $2b
    ld [hl], b                                    ; $68b0: $70
    ld [bc], a                                    ; $68b1: $02
    inc l                                         ; $68b2: $2c
    dec e                                         ; $68b3: $1d
    ld d, e                                       ; $68b4: $53
    ld l, l                                       ; $68b5: $6d
    ld a, h                                       ; $68b6: $7c
    jp hl                                         ; $68b7: $e9


    jr @+$04                                      ; $68b8: $18 $02

    inc d                                         ; $68ba: $14
    bit 6, [hl]                                   ; $68bb: $cb $76
    ld e, l                                       ; $68bd: $5d
    ld de, $035f                                  ; $68be: $11 $5f $03
    ld [bc], a                                    ; $68c1: $02
    nop                                           ; $68c2: $00
    ld [$1d5c], sp                                ; $68c3: $08 $5c $1d
    ld [bc], a                                    ; $68c6: $02
    call z, Call_0d1_447f                         ; $68c7: $cc $7f $44
    inc e                                         ; $68ca: $1c
    ld a, [c]                                     ; $68cb: $f2
    ld a, a                                       ; $68cc: $7f
    dec hl                                        ; $68cd: $2b
    ld [hl], b                                    ; $68ce: $70
    cp $4e                                        ; $68cf: $fe $4e
    inc bc                                        ; $68d1: $03
    inc e                                         ; $68d2: $1c
    ld c, l                                       ; $68d3: $4d
    ld [hl], e                                    ; $68d4: $73
    cp $4e                                        ; $68d5: $fe $4e
    and a                                         ; $68d7: $a7
    db $10                                        ; $68d8: $10
    ld [bc], a                                    ; $68d9: $02
    inc c                                         ; $68da: $0c
    db $dd                                        ; $68db: $dd
    add hl, bc                                    ; $68dc: $09
    ld c, c                                       ; $68dd: $49
    ld h, h                                       ; $68de: $64
    ld l, l                                       ; $68df: $6d
    ld a, a                                       ; $68e0: $7f
    ld [bc], a                                    ; $68e1: $02
    nop                                           ; $68e2: $00
    jr z, jr_0d1_6941                             ; $68e3: $28 $5c

    db $fc                                        ; $68e5: $fc
    ld bc, $772b                                  ; $68e6: $01 $2b $77
    ld b, e                                       ; $68e9: $43
    inc b                                         ; $68ea: $04
    sub h                                         ; $68eb: $94
    ld b, c                                       ; $68ec: $41
    cp $4e                                        ; $68ed: $fe $4e
    rlca                                          ; $68ef: $07
    jr c, jr_0d1_6915                             ; $68f0: $38 $23

    inc c                                         ; $68f2: $0c
    ld e, e                                       ; $68f3: $5b
    ld a, l                                       ; $68f4: $7d
    ld [$3b58], sp                                ; $68f5: $08 $58 $3b
    ld e, e                                       ; $68f8: $5b
    ld [bc], a                                    ; $68f9: $02
    db $10                                        ; $68fa: $10
    db $dd                                        ; $68fb: $dd
    dec b                                         ; $68fc: $05
    ret                                           ; $68fd: $c9


    ld h, b                                       ; $68fe: $60
    dec hl                                        ; $68ff: $2b
    ld [hl], e                                    ; $6900: $73
    ld bc, $5d00                                  ; $6901: $01 $00 $5d
    ld [bc], a                                    ; $6904: $02
    jr z, jr_0d1_6967                             ; $6905: $28 $60

    rst $08                                       ; $6907: $cf
    ld a, [hl]                                    ; $6908: $7e
    nop                                           ; $6909: $00
    inc b                                         ; $690a: $04
    push de                                       ; $690b: $d5
    ld l, h                                       ; $690c: $6c
    ld a, h                                       ; $690d: $7c
    ld b, d                                       ; $690e: $42
    xor c                                         ; $690f: $a9
    inc c                                         ; $6910: $0c
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    ld c, [hl]                                    ; $6913: $4e
    ld l, b                                       ; $6914: $68

jr_0d1_6915:
    ld l, b                                       ; $6915: $68
    inc e                                         ; $6916: $1c
    ld e, e                                       ; $6917: $5b
    ld a, l                                       ; $6918: $7d
    ld [bc], a                                    ; $6919: $02
    inc c                                         ; $691a: $0c
    dec e                                         ; $691b: $1d
    ld [bc], a                                    ; $691c: $02
    ld l, c                                       ; $691d: $69
    ld h, b                                       ; $691e: $60
    db $eb                                        ; $691f: $eb
    halt                                          ; $6920: $76
    ld bc, $5d00                                  ; $6921: $01 $00 $5d
    ld [bc], a                                    ; $6924: $02
    ld b, a                                       ; $6925: $47
    ld e, b                                       ; $6926: $58
    ld e, e                                       ; $6927: $5b
    ld a, l                                       ; $6928: $7d
    inc bc                                        ; $6929: $03
    inc d                                         ; $692a: $14
    rst $30                                       ; $692b: $f7
    ld [hl], b                                    ; $692c: $70
    rst $30                                       ; $692d: $f7
    dec l                                         ; $692e: $2d
    cp $4e                                        ; $692f: $fe $4e
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    rst $30                                       ; $6933: $f7
    ld [hl], b                                    ; $6934: $70
    adc d                                         ; $6935: $8a
    inc h                                         ; $6936: $24
    dec de                                        ; $6937: $1b
    ld [hl], $02                                  ; $6938: $36 $02
    inc c                                         ; $693a: $0c
    db $fd                                        ; $693b: $fd
    ld bc, $6409                                  ; $693c: $01 $09 $64
    ld l, d                                       ; $693f: $6a
    ld l, [hl]                                    ; $6940: $6e

jr_0d1_6941:
    ld [bc], a                                    ; $6941: $02
    nop                                           ; $6942: $00
    ld c, a                                       ; $6943: $4f
    ld c, b                                       ; $6944: $48
    ld e, l                                       ; $6945: $5d
    ld [bc], a                                    ; $6946: $02
    ld e, d                                       ; $6947: $5a
    ld a, l                                       ; $6948: $7d
    nop                                           ; $6949: $00
    inc b                                         ; $694a: $04
    ld e, e                                       ; $694b: $5b
    ld a, l                                       ; $694c: $7d
    sbc l                                         ; $694d: $9d
    ld b, d                                       ; $694e: $42
    add hl, hl                                    ; $694f: $29
    inc [hl]                                      ; $6950: $34
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    push de                                       ; $6953: $d5
    ld l, h                                       ; $6954: $6c
    ld [$1b30], sp                                ; $6955: $08 $30 $1b
    ld [hl], $42                                  ; $6958: $36 $42
    inc d                                         ; $695a: $14
    ld c, a                                       ; $695b: $4f
    ld c, b                                       ; $695c: $48
    ld e, a                                       ; $695d: $5f
    inc bc                                        ; $695e: $03
    rst $30                                       ; $695f: $f7
    ld a, l                                       ; $6960: $7d
    ld [bc], a                                    ; $6961: $02
    nop                                           ; $6962: $00
    ld c, a                                       ; $6963: $4f
    ld d, b                                       ; $6964: $50
    ld e, l                                       ; $6965: $5d
    ld [bc], a                                    ; $6966: $02

jr_0d1_6967:
    ld e, d                                       ; $6967: $5a
    ld a, l                                       ; $6968: $7d
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    jr jr_0d1_69e2                                ; $696b: $18 $75

    ld l, d                                       ; $696d: $6a
    inc h                                         ; $696e: $24
    dec de                                        ; $696f: $1b
    ld [hl], $00                                  ; $6970: $36 $00
    nop                                           ; $6972: $00
    ld [hl], b                                    ; $6973: $70
    ld e, b                                       ; $6974: $58
    ld e, e                                       ; $6975: $5b
    ld a, l                                       ; $6976: $7d
    rlca                                          ; $6977: $07
    inc h                                         ; $6978: $24
    ld [bc], a                                    ; $6979: $02
    ld [$035f], sp                                ; $697a: $08 $5f $03
    ld c, a                                       ; $697d: $4f
    ld c, h                                       ; $697e: $4c
    ld e, d                                       ; $697f: $5a
    ld a, l                                       ; $6980: $7d
    ld [bc], a                                    ; $6981: $02
    nop                                           ; $6982: $00
    ld e, e                                       ; $6983: $5b
    ld bc, $035f                                  ; $6984: $01 $5f $03
    ld e, d                                       ; $6987: $5a
    ld a, l                                       ; $6988: $7d
    ld e, e                                       ; $6989: $5b
    ld bc, $035f                                  ; $698a: $01 $5f $03
    ld e, a                                       ; $698d: $5f
    inc bc                                        ; $698e: $03
    ld e, d                                       ; $698f: $5a
    ld a, l                                       ; $6990: $7d
    ld e, e                                       ; $6991: $5b
    ld bc, $035f                                  ; $6992: $01 $5f $03
    ld e, a                                       ; $6995: $5f
    inc bc                                        ; $6996: $03
    ld e, d                                       ; $6997: $5a
    ld a, l                                       ; $6998: $7d
    ld [bc], a                                    ; $6999: $02
    nop                                           ; $699a: $00
    ld e, e                                       ; $699b: $5b
    ld bc, $035f                                  ; $699c: $01 $5f $03
    ld e, d                                       ; $699f: $5a
    ld a, l                                       ; $69a0: $7d
    ld [bc], a                                    ; $69a1: $02
    nop                                           ; $69a2: $00
    pop de                                        ; $69a3: $d1
    ld l, [hl]                                    ; $69a4: $6e
    ld e, e                                       ; $69a5: $5b
    ld bc, $035f                                  ; $69a6: $01 $5f $03
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    ld e, a                                       ; $69ab: $5f
    inc bc                                        ; $69ac: $03
    pop de                                        ; $69ad: $d1
    ld l, [hl]                                    ; $69ae: $6e
    ld e, a                                       ; $69af: $5f
    inc bc                                        ; $69b0: $03
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    pop de                                        ; $69b3: $d1
    ld l, [hl]                                    ; $69b4: $6e
    ld e, a                                       ; $69b5: $5f
    inc bc                                        ; $69b6: $03
    ld e, a                                       ; $69b7: $5f
    inc bc                                        ; $69b8: $03
    ld [bc], a                                    ; $69b9: $02
    nop                                           ; $69ba: $00
    ld e, a                                       ; $69bb: $5f
    inc bc                                        ; $69bc: $03
    pop de                                        ; $69bd: $d1
    ld l, [hl]                                    ; $69be: $6e
    ld e, a                                       ; $69bf: $5f
    inc bc                                        ; $69c0: $03
    ld [bc], a                                    ; $69c1: $02
    nop                                           ; $69c2: $00
    pop de                                        ; $69c3: $d1
    ld l, [hl]                                    ; $69c4: $6e
    ld e, e                                       ; $69c5: $5b
    ld bc, $035f                                  ; $69c6: $01 $5f $03
    inc c                                         ; $69c9: $0c
    nop                                           ; $69ca: $00
    pop de                                        ; $69cb: $d1
    ld l, [hl]                                    ; $69cc: $6e
    jr c, jr_0d1_6a03                             ; $69cd: $38 $34

    rst $18                                       ; $69cf: $df
    ld [hl], d                                    ; $69d0: $72
    dec bc                                        ; $69d1: $0b
    inc c                                         ; $69d2: $0c
    dec a                                         ; $69d3: $3d
    ld h, d                                       ; $69d4: $62
    ld a, a                                       ; $69d5: $7f

jr_0d1_69d6:
    ld a, a                                       ; $69d6: $7f
    ld a, c                                       ; $69d7: $79
    inc [hl]                                      ; $69d8: $34
    rlca                                          ; $69d9: $07
    nop                                           ; $69da: $00
    ld e, a                                       ; $69db: $5f
    inc bc                                        ; $69dc: $03
    pop de                                        ; $69dd: $d1
    ld l, [hl]                                    ; $69de: $6e
    rst $38                                       ; $69df: $ff
    ld a, d                                       ; $69e0: $7a
    ld [bc], a                                    ; $69e1: $02

jr_0d1_69e2:
    nop                                           ; $69e2: $00
    pop de                                        ; $69e3: $d1
    ld l, [hl]                                    ; $69e4: $6e
    ld e, e                                       ; $69e5: $5b
    ld bc, $035f                                  ; $69e6: $01 $5f $03
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    pop de                                        ; $69eb: $d1
    ld l, [hl]                                    ; $69ec: $6e
    dec e                                         ; $69ed: $1d
    inc [hl]                                      ; $69ee: $34
    add hl, bc                                    ; $69ef: $09
    ld [$0000], sp                                ; $69f0: $08 $00 $00
    add hl, de                                    ; $69f3: $19
    inc l                                         ; $69f4: $2c
    dec hl                                        ; $69f5: $2b
    inc d                                         ; $69f6: $14
    dec e                                         ; $69f7: $1d
    jr c, jr_0d1_69fe                             ; $69f8: $38 $04

    nop                                           ; $69fa: $00
    ld a, [$390e]                                 ; $69fb: $fa $0e $39

jr_0d1_69fe:
    ld [hl], a                                    ; $69fe: $77
    nop                                           ; $69ff: $00
    inc bc                                        ; $6a00: $03
    ld [bc], a                                    ; $6a01: $02
    nop                                           ; $6a02: $00

jr_0d1_6a03:
    pop de                                        ; $6a03: $d1
    ld l, [hl]                                    ; $6a04: $6e
    ld e, l                                       ; $6a05: $5d
    ld [bc], a                                    ; $6a06: $02
    inc c                                         ; $6a07: $0c
    nop                                           ; $6a08: $00
    ld hl, $9f04                                  ; $6a09: $21 $04 $9f
    ld d, b                                       ; $6a0c: $50
    inc c                                         ; $6a0d: $0c
    nop                                           ; $6a0e: $00
    ld c, c                                       ; $6a0f: $49
    inc d                                         ; $6a10: $14
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    or [hl]                                       ; $6a13: $b6
    ld d, l                                       ; $6a14: $55
    ldh [rSC], a                                  ; $6a15: $e0 $02
    rst $38                                       ; $6a17: $ff
    ld a, a                                       ; $6a18: $7f
    call nz, $9b00                                ; $6a19: $c4 $00 $9b
    jr c, jr_0d1_69d6                             ; $6a1c: $38 $b8

    ld [hl], d                                    ; $6a1e: $72
    ld e, a                                       ; $6a1f: $5f
    inc bc                                        ; $6a20: $03
    ld [bc], a                                    ; $6a21: $02
    nop                                           ; $6a22: $00
    ld e, l                                       ; $6a23: $5d
    ld [bc], a                                    ; $6a24: $02
    or c                                          ; $6a25: $b1
    ld l, [hl]                                    ; $6a26: $6e
    ld a, [$2159]                                 ; $6a27: $fa $59 $21
    inc b                                         ; $6a2a: $04
    ld [hl-], a                                   ; $6a2b: $32
    ld c, d                                       ; $6a2c: $4a
    rra                                           ; $6a2d: $1f
    ld l, [hl]                                    ; $6a2e: $6e
    inc c                                         ; $6a2f: $0c
    nop                                           ; $6a30: $00
    jr z, jr_0d1_6a3b                             ; $6a31: $28 $08

    ld [hl], b                                    ; $6a33: $70
    dec [hl]                                      ; $6a34: $35
    ld e, a                                       ; $6a35: $5f
    ld e, l                                       ; $6a36: $5d
    dec de                                        ; $6a37: $1b
    jr nc, jr_0d1_6a41                            ; $6a38: $30 $07

    nop                                           ; $6a3a: $00

jr_0d1_6a3b:
    or c                                          ; $6a3b: $b1
    ld l, [hl]                                    ; $6a3c: $6e
    add hl, de                                    ; $6a3d: $19
    inc [hl]                                      ; $6a3e: $34
    ld e, a                                       ; $6a3f: $5f
    inc bc                                        ; $6a40: $03

jr_0d1_6a41:
    ld [bc], a                                    ; $6a41: $02
    nop                                           ; $6a42: $00
    db $db                                        ; $6a43: $db
    inc c                                         ; $6a44: $0c
    ld [hl], e                                    ; $6a45: $73
    ld l, d                                       ; $6a46: $6a
    ld e, a                                       ; $6a47: $5f
    inc bc                                        ; $6a48: $03
    ld b, $00                                     ; $6a49: $06 $00
    rst $38                                       ; $6a4b: $ff
    ld e, b                                       ; $6a4c: $58
    dec sp                                        ; $6a4d: $3b
    ld l, a                                       ; $6a4e: $6f
    ld [hl], l                                    ; $6a4f: $75
    jr jr_0d1_6a5e                                ; $6a50: $18 $0c

    nop                                           ; $6a52: $00
    inc [hl]                                      ; $6a53: $34
    add hl, de                                    ; $6a54: $19
    rla                                           ; $6a55: $17
    jr nc, jr_0d1_6a65                            ; $6a56: $30 $0d

    jr jr_0d1_6a63                                ; $6a58: $18 $09

    inc b                                         ; $6a5a: $04
    sub b                                         ; $6a5b: $90
    ld l, [hl]                                    ; $6a5c: $6e
    ld a, a                                       ; $6a5d: $7f

jr_0d1_6a5e:
    dec bc                                        ; $6a5e: $0b
    ld l, c                                       ; $6a5f: $69
    dec b                                         ; $6a60: $05
    ld [bc], a                                    ; $6a61: $02
    nop                                           ; $6a62: $00

jr_0d1_6a63:
    ld l, [hl]                                    ; $6a63: $6e
    ld l, d                                       ; $6a64: $6a

jr_0d1_6a65:
    dec de                                        ; $6a65: $1b
    inc a                                         ; $6a66: $3c
    ld e, l                                       ; $6a67: $5d
    ld [bc], a                                    ; $6a68: $02
    ld [bc], a                                    ; $6a69: $02
    inc b                                         ; $6a6a: $04
    jr jr_0d1_6a99                                ; $6a6b: $18 $2c

    sbc d                                         ; $6a6d: $9a
    ld sp, $042a                                  ; $6a6e: $31 $2a $04
    nop                                           ; $6a71: $00
    ld [$3e9f], sp                                ; $6a72: $08 $9f $3e
    inc [hl]                                      ; $6a75: $34
    add hl, de                                    ; $6a76: $19
    ld sp, hl                                     ; $6a77: $f9
    ld h, a                                       ; $6a78: $67
    inc hl                                        ; $6a79: $23
    inc b                                         ; $6a7a: $04
    adc [hl]                                      ; $6a7b: $8e
    ld l, d                                       ; $6a7c: $6a
    inc [hl]                                      ; $6a7d: $34
    add hl, de                                    ; $6a7e: $19
    ld a, h                                       ; $6a7f: $7c
    rrca                                          ; $6a80: $0f
    ld [bc], a                                    ; $6a81: $02
    nop                                           ; $6a82: $00
    ld c, h                                       ; $6a83: $4c
    ld l, d                                       ; $6a84: $6a
    ld e, e                                       ; $6a85: $5b
    ld bc, $0fbf                                  ; $6a86: $01 $bf $0f
    add hl, bc                                    ; $6a89: $09
    nop                                           ; $6a8a: $00
    dec de                                        ; $6a8b: $1b
    ld [hl], $ff                                  ; $6a8c: $36 $ff
    rla                                           ; $6a8e: $17
    ld c, $15                                     ; $6a8f: $0e $15
    nop                                           ; $6a91: $00
    inc b                                         ; $6a92: $04
    ld a, b                                       ; $6a93: $78
    ld hl, $0340                                  ; $6a94: $21 $40 $03
    cp [hl]                                       ; $6a97: $be
    ld b, [hl]                                    ; $6a98: $46

jr_0d1_6a99:
    ld bc, $4c00                                  ; $6a99: $01 $00 $4c
    ld l, d                                       ; $6a9c: $6a
    sbc a                                         ; $6a9d: $9f
    dec bc                                        ; $6a9e: $0b
    rst $08                                       ; $6a9f: $cf
    inc c                                         ; $6aa0: $0c
    ld [bc], a                                    ; $6aa1: $02
    nop                                           ; $6aa2: $00
    ld c, e                                       ; $6aa3: $4b
    ld h, [hl]                                    ; $6aa4: $66
    or l                                          ; $6aa5: $b5
    dec b                                         ; $6aa6: $05
    sbc a                                         ; $6aa7: $9f
    rrca                                          ; $6aa8: $0f
    ld h, d                                       ; $6aa9: $62
    nop                                           ; $6aaa: $00
    cp [hl]                                       ; $6aab: $be
    ld c, d                                       ; $6aac: $4a
    ldh a, [$09]                                  ; $6aad: $f0 $09
    rst $38                                       ; $6aaf: $ff
    dec de                                        ; $6ab0: $1b
    ld h, c                                       ; $6ab1: $61
    nop                                           ; $6ab2: $00
    jp c, $f229                                   ; $6ab3: $da $29 $f2

    db $10                                        ; $6ab6: $10
    call c, Call_000_024a                         ; $6ab7: $dc $4a $02
    nop                                           ; $6aba: $00
    cp a                                          ; $6abb: $bf
    rrca                                          ; $6abc: $0f
    dec hl                                        ; $6abd: $2b
    ld h, [hl]                                    ; $6abe: $66
    adc $01                                       ; $6abf: $ce $01
    ld [bc], a                                    ; $6ac1: $02
    nop                                           ; $6ac2: $00
    add hl, hl                                    ; $6ac3: $29
    ld h, [hl]                                    ; $6ac4: $66
    ld e, e                                       ; $6ac5: $5b
    ld bc, $077f                                  ; $6ac6: $01 $7f $07
    daa                                           ; $6ac9: $27
    inc c                                         ; $6aca: $0c
    ld e, h                                       ; $6acb: $5c
    ld a, [hl-]                                   ; $6acc: $3a
    or b                                          ; $6acd: $b0
    add hl, bc                                    ; $6ace: $09
    rst $38                                       ; $6acf: $ff
    dec de                                        ; $6ad0: $1b
    ld [hl+], a                                   ; $6ad1: $22
    inc b                                         ; $6ad2: $04
    jp c, $cf29                                   ; $6ad3: $da $29 $cf

    inc c                                         ; $6ad6: $0c
    cp [hl]                                       ; $6ad7: $be
    ld c, d                                       ; $6ad8: $4a
    add l                                         ; $6ad9: $85
    nop                                           ; $6ada: $00
    sbc a                                         ; $6adb: $9f
    dec bc                                        ; $6adc: $0b
    ld a, [hl+]                                   ; $6add: $2a
    ld h, [hl]                                    ; $6ade: $66
    adc $01                                       ; $6adf: $ce $01
    ld [bc], a                                    ; $6ae1: $02
    nop                                           ; $6ae2: $00
    ld e, l                                       ; $6ae3: $5d
    ld [bc], a                                    ; $6ae4: $02

jr_0d1_6ae5:
    add sp, $65                                   ; $6ae5: $e8 $65
    rra                                           ; $6ae7: $1f
    ld l, d                                       ; $6ae8: $6a
    inc hl                                        ; $6ae9: $23
    inc b                                         ; $6aea: $04
    ei                                            ; $6aeb: $fb
    inc l                                         ; $6aec: $2c
    sbc [hl]                                      ; $6aed: $9e
    ld e, [hl]                                    ; $6aee: $5e
    adc $0c                                       ; $6aef: $ce $0c
    inc hl                                        ; $6af1: $23
    ld [$6609], sp                                ; $6af2: $08 $09 $66
    inc a                                         ; $6af5: $3c
    ld a, [hl-]                                   ; $6af6: $3a
    ld [hl], b                                    ; $6af7: $70
    inc b                                         ; $6af8: $04
    ld [bc], a                                    ; $6af9: $02
    nop                                           ; $6afa: $00
    add sp, $65                                   ; $6afb: $e8 $65
    ld e, a                                       ; $6afd: $5f
    inc bc                                        ; $6afe: $03
    add hl, bc                                    ; $6aff: $09
    ld h, [hl]                                    ; $6b00: $66
    ld [bc], a                                    ; $6b01: $02
    nop                                           ; $6b02: $00
    ld e, l                                       ; $6b03: $5d
    ld [bc], a                                    ; $6b04: $02
    rst $20                                       ; $6b05: $e7
    ld h, c                                       ; $6b06: $61
    sbc $6e                                       ; $6b07: $de $6e
    ld bc, $7a00                                  ; $6b09: $01 $00 $7a
    add hl, hl                                    ; $6b0c: $29
    sbc [hl]                                      ; $6b0d: $9e
    ld e, d                                       ; $6b0e: $5a
    call Call_000_0210                            ; $6b0f: $cd $10 $02
    ld [$483f], sp                                ; $6b12: $08 $3f $48
    cp l                                          ; $6b15: $bd
    ld d, [hl]                                    ; $6b16: $56
    ld l, l                                       ; $6b17: $6d
    inc b                                         ; $6b18: $04
    ld [bc], a                                    ; $6b19: $02
    nop                                           ; $6b1a: $00
    add $61                                       ; $6b1b: $c6 $61
    ld e, a                                       ; $6b1d: $5f
    inc bc                                        ; $6b1e: $03
    inc c                                         ; $6b1f: $0c
    nop                                           ; $6b20: $00
    ld bc, $db00                                  ; $6b21: $01 $00 $db
    jr jr_0d1_6ae5                                ; $6b24: $18 $bf

    ld l, [hl]                                    ; $6b26: $6e
    ld e, a                                       ; $6b27: $5f
    inc bc                                        ; $6b28: $03
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    ld [hl], c                                    ; $6b2b: $71
    dec l                                         ; $6b2c: $2d
    sbc [hl]                                      ; $6b2d: $9e
    ld d, d                                       ; $6b2e: $52
    dec d                                         ; $6b2f: $15
    jr z, jr_0d1_6b54                             ; $6b30: $28 $22

    inc b                                         ; $6b32: $04
    dec de                                        ; $6b33: $1b
    inc [hl]                                      ; $6b34: $34
    sbc $5a                                       ; $6b35: $de $5a
    jp c, $0529                                   ; $6b37: $da $29 $05

    nop                                           ; $6b3a: $00
    rst $00                                       ; $6b3b: $c7
    ld e, c                                       ; $6b3c: $59
    cp a                                          ; $6b3d: $bf
    ld l, [hl]                                    ; $6b3e: $6e
    ld e, a                                       ; $6b3f: $5f
    inc bc                                        ; $6b40: $03
    ld [bc], a                                    ; $6b41: $02
    nop                                           ; $6b42: $00
    add hl, de                                    ; $6b43: $19
    inc l                                         ; $6b44: $2c
    rst $18                                       ; $6b45: $df
    ld l, [hl]                                    ; $6b46: $6e
    ld e, l                                       ; $6b47: $5d
    ld [bc], a                                    ; $6b48: $02
    ld hl, $9504                                  ; $6b49: $21 $04 $95
    dec l                                         ; $6b4c: $2d
    cp [hl]                                       ; $6b4d: $be
    ld h, d                                       ; $6b4e: $62
    rst $38                                       ; $6b4f: $ff
    rla                                           ; $6b50: $17
    ld [$be0c], sp                                ; $6b51: $08 $0c $be

jr_0d1_6b54:
    ld b, b                                       ; $6b54: $40
    rst $38                                       ; $6b55: $ff
    rla                                           ; $6b56: $17
    sbc a                                         ; $6b57: $9f
    ld a, a                                       ; $6b58: $7f
    dec h                                         ; $6b59: $25
    inc b                                         ; $6b5a: $04
    cp l                                          ; $6b5b: $bd
    ld d, c                                       ; $6b5c: $51
    and l                                         ; $6b5d: $a5
    ld h, c                                       ; $6b5e: $61
    ld e, a                                       ; $6b5f: $5f
    inc bc                                        ; $6b60: $03
    ld [bc], a                                    ; $6b61: $02
    nop                                           ; $6b62: $00
    sbc b                                         ; $6b63: $98
    jr c, @+$80                                   ; $6b64: $38 $7e

    ld a, e                                       ; $6b66: $7b
    ld e, l                                       ; $6b67: $5d
    ld [bc], a                                    ; $6b68: $02
    jr nz, @+$03                                  ; $6b69: $20 $01

    ld e, $2a                                     ; $6b6b: $1e $2a
    or d                                          ; $6b6d: $b2
    jr nz, jr_0d1_6b8e                            ; $6b6e: $20 $1e

    ld a, e                                       ; $6b70: $7b
    ld [hl+], a                                   ; $6b71: $22
    inc b                                         ; $6b72: $04
    dec [hl]                                      ; $6b73: $35
    jr nc, @+$77                                  ; $6b74: $30 $75

    ld a, [hl+]                                   ; $6b76: $2a
    ldh [rSC], a                                  ; $6b77: $e0 $02
    ld b, $08                                     ; $6b79: $06 $08
    ld a, e                                       ; $6b7b: $7b
    ld c, l                                       ; $6b7c: $4d
    ld e, a                                       ; $6b7d: $5f
    inc bc                                        ; $6b7e: $03
    and l                                         ; $6b7f: $a5
    ld h, c                                       ; $6b80: $61
    ld [bc], a                                    ; $6b81: $02
    nop                                           ; $6b82: $00
    ld e, e                                       ; $6b83: $5b
    ld bc, $035f                                  ; $6b84: $01 $5f $03
    and l                                         ; $6b87: $a5
    ld h, c                                       ; $6b88: $61
    ld e, e                                       ; $6b89: $5b
    ld bc, $035f                                  ; $6b8a: $01 $5f $03
    ld e, a                                       ; $6b8d: $5f

jr_0d1_6b8e:
    inc bc                                        ; $6b8e: $03
    and l                                         ; $6b8f: $a5
    ld h, c                                       ; $6b90: $61
    ld e, e                                       ; $6b91: $5b
    ld bc, $035f                                  ; $6b92: $01 $5f $03
    ld e, a                                       ; $6b95: $5f
    inc bc                                        ; $6b96: $03
    and l                                         ; $6b97: $a5
    ld h, c                                       ; $6b98: $61
    ld [bc], a                                    ; $6b99: $02
    nop                                           ; $6b9a: $00
    ld e, e                                       ; $6b9b: $5b
    ld bc, $035f                                  ; $6b9c: $01 $5f $03
    and l                                         ; $6b9f: $a5
    ld h, c                                       ; $6ba0: $61
    ld [bc], a                                    ; $6ba1: $02
    nop                                           ; $6ba2: $00
    jp nc, $5f1e                                  ; $6ba3: $d2 $1e $5f

    inc bc                                        ; $6ba6: $03
    ld e, e                                       ; $6ba7: $5b
    ld bc, $1ed2                                  ; $6ba8: $01 $d2 $1e
    dec c                                         ; $6bab: $0d
    inc a                                         ; $6bac: $3c
    add hl, de                                    ; $6bad: $19
    ld l, [hl]                                    ; $6bae: $6e
    ld e, a                                       ; $6baf: $5f
    inc bc                                        ; $6bb0: $03
    ld b, h                                       ; $6bb1: $44
    db $10                                        ; $6bb2: $10
    jp nc, $5f1e                                  ; $6bb3: $d2 $1e $5f

    inc bc                                        ; $6bb6: $03
    ld [hl-], a                                   ; $6bb7: $32
    ld d, b                                       ; $6bb8: $50
    ld [bc], a                                    ; $6bb9: $02
    nop                                           ; $6bba: $00
    jp nc, $5f1e                                  ; $6bbb: $d2 $1e $5f

    inc bc                                        ; $6bbe: $03
    ld [hl-], a                                   ; $6bbf: $32
    ld d, b                                       ; $6bc0: $50
    ld [bc], a                                    ; $6bc1: $02
    nop                                           ; $6bc2: $00
    jp nc, $5b1e                                  ; $6bc3: $d2 $1e $5b

    ld bc, $035f                                  ; $6bc6: $01 $5f $03
    dec c                                         ; $6bc9: $0d
    jr @-$2c                                      ; $6bca: $18 $d2

    ld e, $17                                     ; $6bcc: $1e $17
    ld d, b                                       ; $6bce: $50
    cp $7a                                        ; $6bcf: $fe $7a
    ld [bc], a                                    ; $6bd1: $02
    ld [$1ed2], sp                                ; $6bd2: $08 $d2 $1e
    inc de                                        ; $6bd5: $13
    ld d, h                                       ; $6bd6: $54
    dec bc                                        ; $6bd7: $0b
    jr nc, @+$04                                  ; $6bd8: $30 $02

    nop                                           ; $6bda: $00
    jp nc, $5f1e                                  ; $6bdb: $d2 $1e $5f

    inc bc                                        ; $6bde: $03
    dec bc                                        ; $6bdf: $0b
    jr nc, @+$04                                  ; $6be0: $30 $02

    nop                                           ; $6be2: $00
    jp nc, $5b1e                                  ; $6be3: $d2 $1e $5b

    ld bc, $035f                                  ; $6be6: $01 $5f $03
    ld hl, $f304                                  ; $6be9: $21 $04 $f3
    ld e, b                                       ; $6bec: $58
    cp a                                          ; $6bed: $bf
    ld a, [hl]                                    ; $6bee: $7e
    ld c, b                                       ; $6bef: $48
    jr nz, @+$04                                  ; $6bf0: $20 $02

    inc c                                         ; $6bf2: $0c
    jp nc, Jump_0d1_7a1e                          ; $6bf3: $d2 $1e $7a

    ld [hl], c                                    ; $6bf6: $71
    dec hl                                        ; $6bf7: $2b
    jr @+$04                                      ; $6bf8: $18 $02

    nop                                           ; $6bfa: $00
    jp nc, $5f1e                                  ; $6bfb: $d2 $1e $5f

    inc bc                                        ; $6bfe: $03
    dec hl                                        ; $6bff: $2b
    jr @+$04                                      ; $6c00: $18 $02

    nop                                           ; $6c02: $00
    sub $6c                                       ; $6c03: $d6 $6c
    pop de                                        ; $6c05: $d1
    ld e, $5d                                     ; $6c06: $1e $5d
    ld [bc], a                                    ; $6c08: $02
    ld [bc], a                                    ; $6c09: $02
    inc c                                         ; $6c0a: $0c
    ld [hl], l                                    ; $6c0b: $75
    ld l, b                                       ; $6c0c: $68
    inc de                                        ; $6c0d: $13
    inc d                                         ; $6c0e: $14
    rra                                           ; $6c0f: $1f
    ld c, b                                       ; $6c10: $48
    dec b                                         ; $6c11: $05
    inc b                                         ; $6c12: $04
    ld de, $1d5c                                  ; $6c13: $11 $5c $1d
    ld b, b                                       ; $6c16: $40
    ld [de], a                                    ; $6c17: $12
    inc e                                         ; $6c18: $1c
    ld [bc], a                                    ; $6c19: $02
    nop                                           ; $6c1a: $00
    pop de                                        ; $6c1b: $d1
    ld e, $5f                                     ; $6c1c: $1e $5f
    inc bc                                        ; $6c1e: $03
    dec bc                                        ; $6c1f: $0b
    nop                                           ; $6c20: $00
    ld [bc], a                                    ; $6c21: $02
    nop                                           ; $6c22: $00
    or b                                          ; $6c23: $b0
    ld e, $1c                                     ; $6c24: $1e $1c
    halt                                          ; $6c26: $76
    ld e, l                                       ; $6c27: $5d
    ld [bc], a                                    ; $6c28: $02
    call z, $1f0c                                 ; $6c29: $cc $0c $1f
    ld c, b                                       ; $6c2c: $48

Call_0d1_6c2d:
    ld c, $28                                     ; $6c2d: $0e $28
    rst $18                                       ; $6c2f: $df
    ld c, [hl]                                    ; $6c30: $4e
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    add hl, de                                    ; $6c33: $19
    ld [hl], h                                    ; $6c34: $74
    xor h                                         ; $6c35: $ac
    inc e                                         ; $6c36: $1c
    cp [hl]                                       ; $6c37: $be
    ld h, [hl]                                    ; $6c38: $66
    ld bc, $fb00                                  ; $6c39: $01 $00 $fb
    ld [hl], l                                    ; $6c3c: $75
    or b                                          ; $6c3d: $b0
    ld e, $5f                                     ; $6c3e: $1e $5f
    inc bc                                        ; $6c40: $03
    ld [bc], a                                    ; $6c41: $02
    nop                                           ; $6c42: $00
    sub h                                         ; $6c43: $94
    ld de, $723b                                  ; $6c44: $11 $3b $72
    ld e, a                                       ; $6c47: $5f
    inc bc                                        ; $6c48: $03
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    rst $18                                       ; $6c4b: $df
    ld c, [hl]                                    ; $6c4c: $4e
    jr nc, jr_0d1_6c73                            ; $6c4d: $30 $24

    rra                                           ; $6c4f: $1f
    ld c, b                                       ; $6c50: $48
    ld h, [hl]                                    ; $6c51: $66
    inc c                                         ; $6c52: $0c
    rst $18                                       ; $6c53: $df
    ld c, [hl]                                    ; $6c54: $4e
    ld sp, $ff30                                  ; $6c55: $31 $30 $ff
    ld a, [hl]                                    ; $6c58: $7e
    ld [bc], a                                    ; $6c59: $02
    nop                                           ; $6c5a: $00
    adc a                                         ; $6c5b: $8f
    ld a, [de]                                    ; $6c5c: $1a
    ld sp, $5f50                                  ; $6c5d: $31 $50 $5f
    inc bc                                        ; $6c60: $03
    ld [bc], a                                    ; $6c61: $02
    nop                                           ; $6c62: $00
    ld d, d                                       ; $6c63: $52
    ld d, h                                       ; $6c64: $54
    adc [hl]                                      ; $6c65: $8e
    ld a, [de]                                    ; $6c66: $1a
    ld e, l                                       ; $6c67: $5d
    ld [bc], a                                    ; $6c68: $02
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    cp $52                                        ; $6c6b: $fe $52
    jr nz, @+$6f                                  ; $6c6d: $20 $6d

    add hl, hl                                    ; $6c6f: $29
    jr nz, jr_0d1_6c94                            ; $6c70: $20 $22

    nop                                           ; $6c72: $00

jr_0d1_6c73:
    ld e, $5b                                     ; $6c73: $1e $5b
    jr nz, jr_0d1_6ce4                            ; $6c75: $20 $6d

    ld a, [hl+]                                   ; $6c77: $2a
    jr z, jr_0d1_6c7d                             ; $6c78: $28 $03

    inc c                                         ; $6c7a: $0c
    adc [hl]                                      ; $6c7b: $8e
    ld a, [de]                                    ; $6c7c: $1a

jr_0d1_6c7d:
    inc d                                         ; $6c7d: $14
    ld e, h                                       ; $6c7e: $5c
    ld e, a                                       ; $6c7f: $5f
    inc bc                                        ; $6c80: $03
    ld [bc], a                                    ; $6c81: $02
    nop                                           ; $6c82: $00
    ld l, l                                       ; $6c83: $6d
    ld a, [de]                                    ; $6c84: $1a
    dec sp                                        ; $6c85: $3b
    ld [hl], d                                    ; $6c86: $72
    ld e, l                                       ; $6c87: $5d
    ld [bc], a                                    ; $6c88: $02
    jr nz, jr_0d1_6c9f                            ; $6c89: $20 $14

    rla                                           ; $6c8b: $17
    ld [hl], $fe                                  ; $6c8c: $36 $fe
    ld d, d                                       ; $6c8e: $52
    xor $10                                       ; $6c8f: $ee $10
    ld b, d                                       ; $6c91: $42
    inc e                                         ; $6c92: $1c

jr_0d1_6c93:
    sbc d                                         ; $6c93: $9a

jr_0d1_6c94:
    ld c, c                                       ; $6c94: $49
    sub c                                         ; $6c95: $91
    dec l                                         ; $6c96: $2d
    ld a, $7f                                     ; $6c97: $3e $7f
    inc b                                         ; $6c99: $04
    ld [$481f], sp                                ; $6c9a: $08 $1f $48
    ld l, l                                       ; $6c9d: $6d
    ld a, [de]                                    ; $6c9e: $1a

jr_0d1_6c9f:
    ld e, a                                       ; $6c9f: $5f
    inc bc                                        ; $6ca0: $03
    ld [bc], a                                    ; $6ca1: $02
    nop                                           ; $6ca2: $00
    ld d, a                                       ; $6ca3: $57
    ld a, [bc]                                    ; $6ca4: $0a
    ld d, d                                       ; $6ca5: $52
    ld d, h                                       ; $6ca6: $54
    ld a, l                                       ; $6ca7: $7d
    ld a, d                                       ; $6ca8: $7a
    dec h                                         ; $6ca9: $25
    inc b                                         ; $6caa: $04
    dec sp                                        ; $6cab: $3b
    ld a, $0e                                     ; $6cac: $3e $0e
    dec d                                         ; $6cae: $15
    rst $18                                       ; $6caf: $df
    ld c, [hl]                                    ; $6cb0: $4e
    adc l                                         ; $6cb1: $8d
    jr nz, jr_0d1_6c93                            ; $6cb2: $20 $df

    ld c, [hl]                                    ; $6cb4: $4e
    dec [hl]                                      ; $6cb5: $35
    ld h, b                                       ; $6cb6: $60
    sbc $7a                                       ; $6cb7: $de $7a
    ld [bc], a                                    ; $6cb9: $02
    ld [$1a4c], sp                                ; $6cba: $08 $4c $1a
    ld e, a                                       ; $6cbd: $5f
    inc bc                                        ; $6cbe: $03
    ld c, $40                                     ; $6cbf: $0e $40
    ld [bc], a                                    ; $6cc1: $02
    nop                                           ; $6cc2: $00
    dec hl                                        ; $6cc3: $2b
    ld a, [de]                                    ; $6cc4: $1a
    sub d                                         ; $6cc5: $92
    ld d, b                                       ; $6cc6: $50
    ld e, l                                       ; $6cc7: $5d
    ld [bc], a                                    ; $6cc8: $02
    inc b                                         ; $6cc9: $04
    inc c                                         ; $6cca: $0c
    rst $18                                       ; $6ccb: $df
    ld c, [hl]                                    ; $6ccc: $4e
    xor $10                                       ; $6ccd: $ee $10
    inc d                                         ; $6ccf: $14
    nop                                           ; $6cd0: $00
    ld [bc], a                                    ; $6cd1: $02
    ld [$6817], sp                                ; $6cd2: $08 $17 $68
    rst $18                                       ; $6cd5: $df
    ld c, [hl]                                    ; $6cd6: $4e
    ld c, e                                       ; $6cd7: $4b
    inc h                                         ; $6cd8: $24
    ld [bc], a                                    ; $6cd9: $02
    ld [$1a2b], sp                                ; $6cda: $08 $2b $1a
    ld e, a                                       ; $6cdd: $5f
    inc bc                                        ; $6cde: $03
    ld c, $40                                     ; $6cdf: $0e $40
    ld [bc], a                                    ; $6ce1: $02
    nop                                           ; $6ce2: $00
    dec de                                        ; $6ce3: $1b

jr_0d1_6ce4:
    ld a, h                                       ; $6ce4: $7c
    ld a, [hl+]                                   ; $6ce5: $2a
    ld a, [de]                                    ; $6ce6: $1a
    ld e, l                                       ; $6ce7: $5d
    ld [bc], a                                    ; $6ce8: $02
    rlca                                          ; $6ce9: $07
    nop                                           ; $6cea: $00
    rst $18                                       ; $6ceb: $df
    ld c, [hl]                                    ; $6cec: $4e
    di                                            ; $6ced: $f3
    inc d                                         ; $6cee: $14
    dec bc                                        ; $6cef: $0b
    jr nc, jr_0d1_6cf2                            ; $6cf0: $30 $00

jr_0d1_6cf2:
    nop                                           ; $6cf2: $00
    rst $18                                       ; $6cf3: $df
    ld c, [hl]                                    ; $6cf4: $4e
    dec bc                                        ; $6cf5: $0b
    dec c                                         ; $6cf6: $0d
    dec b                                         ; $6cf7: $05
    jr jr_0d1_6cfa                                ; $6cf8: $18 $00

jr_0d1_6cfa:
    nop                                           ; $6cfa: $00
    ld e, a                                       ; $6cfb: $5f
    inc bc                                        ; $6cfc: $03
    ld a, [hl+]                                   ; $6cfd: $2a
    ld a, [de]                                    ; $6cfe: $1a
    ld [bc], a                                    ; $6cff: $02
    nop                                           ; $6d00: $00
    ld [bc], a                                    ; $6d01: $02
    nop                                           ; $6d02: $00
    ld e, l                                       ; $6d03: $5d
    ld [bc], a                                    ; $6d04: $02
    ld a, b                                       ; $6d05: $78
    ld l, c                                       ; $6d06: $69
    add hl, bc                                    ; $6d07: $09
    ld hl, $0801                                  ; $6d08: $21 $01 $08
    rst $18                                       ; $6d0b: $df
    ld c, [hl]                                    ; $6d0c: $4e
    dec c                                         ; $6d0d: $0d
    dec c                                         ; $6d0e: $0d
    cp [hl]                                       ; $6d0f: $be
    inc de                                        ; $6d10: $13
    ld [hl+], a                                   ; $6d11: $22
    inc b                                         ; $6d12: $04
    ld [hl], d                                    ; $6d13: $72
    ld d, $15                                     ; $6d14: $16 $15
    ld h, h                                       ; $6d16: $64
    cp [hl]                                       ; $6d17: $be
    inc de                                        ; $6d18: $13
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    add hl, bc                                    ; $6d1b: $09
    ld d, $5f                                     ; $6d1c: $16 $5f
    inc bc                                        ; $6d1e: $03
    inc c                                         ; $6d1f: $0c
    jr c, jr_0d1_6d24                             ; $6d20: $38 $02

    nop                                           ; $6d22: $00
    ld e, l                                       ; $6d23: $5d

jr_0d1_6d24:
    ld [bc], a                                    ; $6d24: $02
    ld [hl], a                                    ; $6d25: $77
    ld l, b                                       ; $6d26: $68
    sbc [hl]                                      ; $6d27: $9e
    ld a, d                                       ; $6d28: $7a
    ld [bc], a                                    ; $6d29: $02
    inc b                                         ; $6d2a: $04
    ld a, [bc]                                    ; $6d2b: $0a
    inc a                                         ; $6d2c: $3c
    xor l                                         ; $6d2d: $ad
    add hl, bc                                    ; $6d2e: $09
    inc d                                         ; $6d2f: $14
    ld e, h                                       ; $6d30: $5c
    and l                                         ; $6d31: $a5
    nop                                           ; $6d32: $00
    inc [hl]                                      ; $6d33: $34
    ld h, b                                       ; $6d34: $60
    jr jr_0d1_6d3a                                ; $6d35: $18 $03

    ld a, [hl]                                    ; $6d37: $7e
    ld a, [hl]                                    ; $6d38: $7e
    ld [bc], a                                    ; $6d39: $02

jr_0d1_6d3a:
    inc b                                         ; $6d3a: $04
    cp [hl]                                       ; $6d3b: $be
    ld a, [hl]                                    ; $6d3c: $7e
    ld sp, $5f50                                  ; $6d3d: $31 $50 $5f
    inc bc                                        ; $6d40: $03
    ld [bc], a                                    ; $6d41: $02
    nop                                           ; $6d42: $00
    ld e, l                                       ; $6d43: $5d
    ld [bc], a                                    ; $6d44: $02
    ld [de], a                                    ; $6d45: $12
    ld d, h                                       ; $6d46: $54
    rst $38                                       ; $6d47: $ff
    ld a, [hl]                                    ; $6d48: $7e
    ld [bc], a                                    ; $6d49: $02
    nop                                           ; $6d4a: $00
    inc c                                         ; $6d4b: $0c
    inc [hl]                                      ; $6d4c: $34
    rla                                           ; $6d4d: $17
    inc e                                         ; $6d4e: $1c
    ld e, $48                                     ; $6d4f: $1e $48
    jr nz, jr_0d1_6d53                            ; $6d51: $20 $00

jr_0d1_6d53:
    rst $18                                       ; $6d53: $df
    ld a, [hl]                                    ; $6d54: $7e
    inc c                                         ; $6d55: $0c
    inc d                                         ; $6d56: $14
    ld c, $3d                                     ; $6d57: $0e $3d
    ld [bc], a                                    ; $6d59: $02
    nop                                           ; $6d5a: $00
    ld e, a                                       ; $6d5b: $5f
    inc bc                                        ; $6d5c: $03
    inc de                                        ; $6d5d: $13
    ld e, b                                       ; $6d5e: $58
    dec bc                                        ; $6d5f: $0b
    inc [hl]                                      ; $6d60: $34
    ld [bc], a                                    ; $6d61: $02
    nop                                           ; $6d62: $00
    ld e, l                                       ; $6d63: $5d
    ld [bc], a                                    ; $6d64: $02
    db $10                                        ; $6d65: $10
    ld c, h                                       ; $6d66: $4c
    ld a, [$316d]                                 ; $6d67: $fa $6d $31
    inc e                                         ; $6d6a: $1c
    ld a, [hl-]                                   ; $6d6b: $3a
    ld b, h                                       ; $6d6c: $44
    dec d                                         ; $6d6d: $15
    jr nz, jr_0d1_6dad                            ; $6d6e: $20 $3d

    ld d, b                                       ; $6d70: $50
    ld hl, $7d04                                  ; $6d71: $21 $04 $7d
    ld a, d                                       ; $6d74: $7a
    ld c, [hl]                                    ; $6d75: $4e
    inc e                                         ; $6d76: $1c
    jr @+$26                                      ; $6d77: $18 $24

    inc bc                                        ; $6d79: $03
    inc c                                         ; $6d7a: $0c
    ld e, a                                       ; $6d7b: $5f
    inc bc                                        ; $6d7c: $03
    inc c                                         ; $6d7d: $0c
    inc [hl]                                      ; $6d7e: $34
    ld [de], a                                    ; $6d7f: $12
    ld d, h                                       ; $6d80: $54
    ld [bc], a                                    ; $6d81: $02
    nop                                           ; $6d82: $00
    ld e, e                                       ; $6d83: $5b
    ld bc, $035f                                  ; $6d84: $01 $5f $03
    ld [de], a                                    ; $6d87: $12
    ld d, h                                       ; $6d88: $54
    ld e, e                                       ; $6d89: $5b
    ld bc, $035f                                  ; $6d8a: $01 $5f $03
    ld e, a                                       ; $6d8d: $5f
    inc bc                                        ; $6d8e: $03
    ld [de], a                                    ; $6d8f: $12
    ld d, h                                       ; $6d90: $54
    ld e, e                                       ; $6d91: $5b
    ld bc, $035f                                  ; $6d92: $01 $5f $03
    ld e, a                                       ; $6d95: $5f
    inc bc                                        ; $6d96: $03
    ld [de], a                                    ; $6d97: $12
    ld d, h                                       ; $6d98: $54
    ld [bc], a                                    ; $6d99: $02
    nop                                           ; $6d9a: $00
    ld e, e                                       ; $6d9b: $5b
    ld bc, $035f                                  ; $6d9c: $01 $5f $03
    ld [de], a                                    ; $6d9f: $12
    ld d, h                                       ; $6da0: $54
    ld [bc], a                                    ; $6da1: $02
    nop                                           ; $6da2: $00
    rst $10                                       ; $6da3: $d7

jr_0d1_6da4:
    ld [bc], a                                    ; $6da4: $02
    ld e, a                                       ; $6da5: $5f
    inc bc                                        ; $6da6: $03
    ld e, e                                       ; $6da7: $5b
    ld bc, $02d7                                  ; $6da8: $01 $d7 $02
    ld e, a                                       ; $6dab: $5f
    inc bc                                        ; $6dac: $03

jr_0d1_6dad:
    ld e, a                                       ; $6dad: $5f
    inc bc                                        ; $6dae: $03
    ld e, e                                       ; $6daf: $5b
    ld bc, $02d7                                  ; $6db0: $01 $d7 $02
    ld e, a                                       ; $6db3: $5f
    inc bc                                        ; $6db4: $03
    ld e, a                                       ; $6db5: $5f
    inc bc                                        ; $6db6: $03
    ld e, e                                       ; $6db7: $5b
    ld bc, $0002                                  ; $6db8: $01 $02 $00
    rst $10                                       ; $6dbb: $d7
    ld [bc], a                                    ; $6dbc: $02
    ld e, a                                       ; $6dbd: $5f
    inc bc                                        ; $6dbe: $03
    ld e, e                                       ; $6dbf: $5b
    ld bc, $0001                                  ; $6dc0: $01 $01 $00
    sub e                                         ; $6dc3: $93
    ld d, c                                       ; $6dc4: $51
    ld e, e                                       ; $6dc5: $5b
    ld bc, $02f8                                  ; $6dc6: $01 $f8 $02
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    rst $10                                       ; $6dcb: $d7
    ld [bc], a                                    ; $6dcc: $02
    ld e, a                                       ; $6dcd: $5f
    ld a, a                                       ; $6dce: $7f
    rst $38                                       ; $6dcf: $ff
    ld a, a                                       ; $6dd0: $7f
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    rst $10                                       ; $6dd3: $d7
    ld [bc], a                                    ; $6dd4: $02
    sbc [hl]                                      ; $6dd5: $9e
    ld a, d                                       ; $6dd6: $7a
    ccf                                           ; $6dd7: $3f
    ld a, a                                       ; $6dd8: $7f
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    rst $10                                       ; $6ddb: $d7
    ld [bc], a                                    ; $6ddc: $02
    ld e, a                                       ; $6ddd: $5f
    inc bc                                        ; $6dde: $03
    ld bc, $0100                                  ; $6ddf: $01 $00 $01
    nop                                           ; $6de2: $00
    ld e, e                                       ; $6de3: $5b
    ld bc, $4d73                                  ; $6de4: $01 $73 $4d
    ld sp, hl                                     ; $6de7: $f9
    ld [bc], a                                    ; $6de8: $02
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    db $d3                                        ; $6deb: $d3
    ld d, h                                       ; $6dec: $54
    ld e, c                                       ; $6ded: $59
    ld h, [hl]                                    ; $6dee: $66
    ld e, $7b                                     ; $6def: $1e $7b
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    inc [hl]                                      ; $6df3: $34
    ld e, b                                       ; $6df4: $58
    rst $38                                       ; $6df5: $ff
    ld a, [hl]                                    ; $6df6: $7e
    ld a, c                                       ; $6df7: $79
    ld l, c                                       ; $6df8: $69
    ld bc, $f900                                  ; $6df9: $01 $00 $f9
    ld [bc], a                                    ; $6dfc: $02
    ld [hl], h                                    ; $6dfd: $74
    ld d, h                                       ; $6dfe: $54
    dec a                                         ; $6dff: $3d
    ld a, d                                       ; $6e00: $7a
    ld bc, $5b00                                  ; $6e01: $01 $00 $5b
    ld bc, $59d5                                  ; $6e04: $01 $d5 $59
    ld hl, sp+$02                                 ; $6e07: $f8 $02
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    ret nc                                        ; $6e0b: $d0

    ld b, h                                       ; $6e0c: $44
    add hl, bc                                    ; $6e0d: $09
    jr z, jr_0d1_6da4                             ; $6e0e: $28 $94

    ld d, c                                       ; $6e10: $51
    ld bc, $3808                                  ; $6e11: $01 $08 $38
    ld e, [hl]                                    ; $6e14: $5e
    adc l                                         ; $6e15: $8d
    ld c, h                                       ; $6e16: $4c
    ld a, a                                       ; $6e17: $7f
    ld a, e                                       ; $6e18: $7b
    ld bc, $1a00                                  ; $6e19: $01 $00 $1a
    inc bc                                        ; $6e1c: $03
    ld d, l                                       ; $6e1d: $55
    ld e, h                                       ; $6e1e: $5c
    ld l, e                                       ; $6e1f: $6b
    jr nc, jr_0d1_6e23                            ; $6e20: $30 $01

    nop                                           ; $6e22: $00

jr_0d1_6e23:
    ld sp, $d649                                  ; $6e23: $31 $49 $d6
    ld b, $5b                                     ; $6e26: $06 $5b
    ld bc, $0000                                  ; $6e28: $01 $00 $00
    ld e, $67                                     ; $6e2b: $1e $67
    ld c, e                                       ; $6e2d: $4b
    jr nc, @-$6c                                  ; $6e2e: $30 $92

    ld hl, $0801                                  ; $6e30: $21 $01 $08
    ret nc                                        ; $6e33: $d0

    jr c, jr_0d1_6e55                             ; $6e34: $38 $1f

    ld a, e                                       ; $6e36: $7b
    ld d, $74                                     ; $6e37: $16 $74
    ld bc, $1900                                  ; $6e39: $01 $00 $19
    rlca                                          ; $6e3c: $07
    dec c                                         ; $6e3d: $0d
    jr c, @+$55                                   ; $6e3e: $38 $53

    ld d, h                                       ; $6e40: $54
    ld bc, $d200                                  ; $6e41: $01 $00 $d2
    ld c, $5b                                     ; $6e44: $0e $5b
    ld bc, $035f                                  ; $6e46: $01 $5f $03
    ld bc, $f204                                  ; $6e49: $01 $04 $f2
    ld c, h                                       ; $6e4c: $4c
    ld a, $5b                                     ; $6e4d: $3e $5b
    ccf                                           ; $6e4f: $3f
    ld a, a                                       ; $6e50: $7f
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    ld a, $67                                     ; $6e53: $3e $67

jr_0d1_6e55:
    add hl, bc                                    ; $6e55: $09
    jr z, @+$72                                   ; $6e56: $28 $70

    dec l                                         ; $6e58: $2d
    ld bc, $d200                                  ; $6e59: $01 $00 $d2
    ld c, $0a                                     ; $6e5c: $0e $0a
    inc l                                         ; $6e5e: $2c
    ld e, a                                       ; $6e5f: $5f
    inc bc                                        ; $6e60: $03
    ld [bc], a                                    ; $6e61: $02
    nop                                           ; $6e62: $00
    ld e, l                                       ; $6e63: $5d
    ld [bc], a                                    ; $6e64: $02
    or c                                          ; $6e65: $b1
    ld c, c                                       ; $6e66: $49
    ld e, [hl]                                    ; $6e67: $5e
    ld a, e                                       ; $6e68: $7b
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    dec e                                         ; $6e6b: $1d
    ld d, e                                       ; $6e6c: $53
    inc c                                         ; $6e6d: $0c
    ld [hl], h                                    ; $6e6e: $74
    ld d, c                                       ; $6e6f: $51
    dec l                                         ; $6e70: $2d
    ld [hl+], a                                   ; $6e71: $22
    ld [$571e], sp                                ; $6e72: $08 $1e $57
    ld c, $31                                     ; $6e75: $0e $31
    cp a                                          ; $6e77: $bf
    ld a, [hl]                                    ; $6e78: $7e
    ld bc, $5f04                                  ; $6e79: $01 $04 $5f
    inc bc                                        ; $6e7c: $03
    ld e, [hl]                                    ; $6e7d: $5e
    ld a, a                                       ; $6e7e: $7f
    adc $2d                                       ; $6e7f: $ce $2d
    ld [bc], a                                    ; $6e81: $02
    nop                                           ; $6e82: $00
    ld c, a                                       ; $6e83: $4f
    add hl, hl                                    ; $6e84: $29
    ld e, l                                       ; $6e85: $5d
    ld [bc], a                                    ; $6e86: $02
    ld a, c                                       ; $6e87: $79
    ld l, h                                       ; $6e88: $6c
    add l                                         ; $6e89: $85
    db $10                                        ; $6e8a: $10
    ld a, c                                       ; $6e8b: $79
    ld a, $6f                                     ; $6e8c: $3e $6f
    add hl, hl                                    ; $6e8e: $29
    ld a, $5b                                     ; $6e8f: $3e $5b
    ld hl, $1704                                  ; $6e91: $21 $04 $17
    ld h, c                                       ; $6e94: $61
    cp $7e                                        ; $6e95: $fe $7e
    adc h                                         ; $6e97: $8c
    inc h                                         ; $6e98: $24
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    ld d, e                                       ; $6e9b: $53
    ld d, c                                       ; $6e9c: $51
    ld e, a                                       ; $6e9d: $5f
    inc bc                                        ; $6e9e: $03
    rst $18                                       ; $6e9f: $df
    ld a, [hl]                                    ; $6ea0: $7e
    ld [bc], a                                    ; $6ea1: $02
    nop                                           ; $6ea2: $00
    inc sp                                        ; $6ea3: $33
    ld d, h                                       ; $6ea4: $54
    halt                                          ; $6ea5: $76
    ld de, $035f                                  ; $6ea6: $11 $5f $03
    ld hl, $3604                                  ; $6ea9: $21 $04 $36
    ld a, [hl-]                                   ; $6eac: $3a
    ld [hl], c                                    ; $6ead: $71
    ld hl, $5b3e                                  ; $6eae: $21 $3e $5b
    ld [bc], a                                    ; $6eb1: $02
    inc c                                         ; $6eb2: $0c
    inc c                                         ; $6eb3: $0c
    ld [hl], h                                    ; $6eb4: $74
    ld e, a                                       ; $6eb5: $5f
    ld a, a                                       ; $6eb6: $7f
    ret nc                                        ; $6eb7: $d0

    inc a                                         ; $6eb8: $3c
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    halt                                          ; $6ebb: $76
    ld h, b                                       ; $6ebc: $60
    ld e, a                                       ; $6ebd: $5f
    inc bc                                        ; $6ebe: $03
    dec a                                         ; $6ebf: $3d
    ld a, d                                       ; $6ec0: $7a
    ld [bc], a                                    ; $6ec1: $02
    nop                                           ; $6ec2: $00
    inc [hl]                                      ; $6ec3: $34
    ld d, h                                       ; $6ec4: $54
    halt                                          ; $6ec5: $76
    ld de, $035f                                  ; $6ec6: $11 $5f $03
    ld a, [hl+]                                   ; $6ec9: $2a
    inc l                                         ; $6eca: $2c
    ld a, $5b                                     ; $6ecb: $3e $5b
    cp d                                          ; $6ecd: $ba
    ld l, h                                       ; $6ece: $6c
    sbc a                                         ; $6ecf: $9f
    ld h, [hl]                                    ; $6ed0: $66
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    sub d                                         ; $6ed3: $92
    ld hl, $46bb                                  ; $6ed4: $21 $bb $46
    ld [$0124], sp                                ; $6ed7: $08 $24 $01
    nop                                           ; $6eda: $00
    ld e, a                                       ; $6edb: $5f
    inc bc                                        ; $6edc: $03
    inc a                                         ; $6edd: $3c
    ld [hl], e                                    ; $6ede: $73
    adc $3c                                       ; $6edf: $ce $3c
    ld bc, $3000                                  ; $6ee1: $01 $00 $30
    ld b, h                                       ; $6ee4: $44
    ld e, l                                       ; $6ee5: $5d
    ld [bc], a                                    ; $6ee6: $02
    sub d                                         ; $6ee7: $92
    ld hl, $0c00                                  ; $6ee8: $21 $00 $0c
    rst $10                                       ; $6eeb: $d7
    ld c, l                                       ; $6eec: $4d
    ld a, $5b                                     ; $6eed: $3e $5b
    dec b                                         ; $6eef: $05
    jr nz, @+$04                                  ; $6ef0: $20 $02

    ld [$2192], sp                                ; $6ef2: $08 $92 $21
    sbc e                                         ; $6ef5: $9b
    ld b, d                                       ; $6ef6: $42
    ld a, $5b                                     ; $6ef7: $3e $5b
    ld bc, $5f00                                  ; $6ef9: $01 $00 $5f
    inc bc                                        ; $6efc: $03
    jr c, jr_0d1_6f64                             ; $6efd: $38 $65

    rst $18                                       ; $6eff: $df
    ld a, [hl]                                    ; $6f00: $7e
    ld bc, $3200                                  ; $6f01: $01 $00 $32
    ld d, h                                       ; $6f04: $54
    ld d, $32                                     ; $6f05: $16 $32
    ld e, l                                       ; $6f07: $5d
    ld [bc], a                                    ; $6f08: $02
    sub d                                         ; $6f09: $92
    ld hl, $46bd                                  ; $6f0a: $21 $bd $46
    ld a, c                                       ; $6f0d: $79
    ld a, $3e                                     ; $6f0e: $3e $3e
    ld e, e                                       ; $6f10: $5b
    ld bc, $e400                                  ; $6f11: $01 $00 $e4
    ld [hl-], a                                   ; $6f14: $32
    ld [hl], c                                    ; $6f15: $71
    ld hl, $3e79                                  ; $6f16: $21 $79 $3e
    ld [bc], a                                    ; $6f19: $02
    inc b                                         ; $6f1a: $04
    jr nc, @+$46                                  ; $6f1b: $30 $44

    ld e, a                                       ; $6f1d: $5f
    inc bc                                        ; $6f1e: $03
    cp e                                          ; $6f1f: $bb
    ld [hl], h                                    ; $6f20: $74
    ld bc, $1b00                                  ; $6f21: $01 $00 $1b
    ld b, $11                                     ; $6f24: $06 $11
    ld d, b                                       ; $6f26: $50
    call c, $004e                                 ; $6f27: $dc $4e $00
    nop                                           ; $6f2a: $00
    sub d                                         ; $6f2b: $92
    ld hl, $3e79                                  ; $6f2c: $21 $79 $3e
    ld a, $5b                                     ; $6f2f: $3e $5b
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    and h                                         ; $6f33: $a4
    ld [hl-], a                                   ; $6f34: $32
    cp $7d                                        ; $6f35: $fe $7d
    ld b, a                                       ; $6f37: $47
    inc e                                         ; $6f38: $1c
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    pop bc                                        ; $6f3b: $c1
    ld [hl-], a                                   ; $6f3c: $32
    ld e, a                                       ; $6f3d: $5f
    inc bc                                        ; $6f3e: $03
    dec bc                                        ; $6f3f: $0b
    jr nc, jr_0d1_6f43                            ; $6f40: $30 $01

    nop                                           ; $6f42: $00

jr_0d1_6f43:
    ld e, b                                       ; $6f43: $58
    add hl, bc                                    ; $6f44: $09
    dec e                                         ; $6f45: $1d
    ld d, e                                       ; $6f46: $53
    ld e, a                                       ; $6f47: $5f
    inc bc                                        ; $6f48: $03
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    sub d                                         ; $6f4b: $92
    ld hl, $429a                                  ; $6f4c: $21 $9a $42
    dec c                                         ; $6f4f: $0d
    jr c, jr_0d1_6f52                             ; $6f50: $38 $00

jr_0d1_6f52:
    nop                                           ; $6f52: $00
    ldh [$36], a                                  ; $6f53: $e0 $36
    ld a, a                                       ; $6f55: $7f
    ld a, l                                       ; $6f56: $7d
    ld a, [bc]                                    ; $6f57: $0a
    inc l                                         ; $6f58: $2c
    ldh [$3a], a                                  ; $6f59: $e0 $3a
    ld e, a                                       ; $6f5b: $5f
    inc bc                                        ; $6f5c: $03
    ld [bc], a                                    ; $6f5d: $02
    nop                                           ; $6f5e: $00
    pop hl                                        ; $6f5f: $e1
    ld [hl], $02                                  ; $6f60: $36 $02
    nop                                           ; $6f62: $00
    ld e, e                                       ; $6f63: $5b

jr_0d1_6f64:
    ld bc, $46bc                                  ; $6f64: $01 $bc $46
    ld e, a                                       ; $6f67: $5f
    inc bc                                        ; $6f68: $03
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    dec l                                         ; $6f6b: $2d
    inc a                                         ; $6f6c: $3c
    jr z, jr_0d1_6f97                             ; $6f6d: $28 $28

    inc sp                                        ; $6f6f: $33
    ld e, b                                       ; $6f70: $58
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    ld d, c                                       ; $6f73: $51
    ld c, h                                       ; $6f74: $4c
    ldh [$3a], a                                  ; $6f75: $e0 $3a
    rlca                                          ; $6f77: $07
    jr nz, @-$1e                                  ; $6f78: $20 $e0

    ld a, [hl-]                                   ; $6f7a: $3a
    ld e, a                                       ; $6f7b: $5f
    inc bc                                        ; $6f7c: $03
    ld [bc], a                                    ; $6f7d: $02
    nop                                           ; $6f7e: $00
    rlca                                          ; $6f7f: $07
    jr nz, jr_0d1_6f84                            ; $6f80: $20 $02

    nop                                           ; $6f82: $00
    ld e, e                                       ; $6f83: $5b

jr_0d1_6f84:
    ld bc, $035f                                  ; $6f84: $01 $5f $03
    rlca                                          ; $6f87: $07
    jr nz, @+$5d                                  ; $6f88: $20 $5b

    ld bc, $035f                                  ; $6f8a: $01 $5f $03
    ld e, a                                       ; $6f8d: $5f
    inc bc                                        ; $6f8e: $03
    rlca                                          ; $6f8f: $07
    jr nz, jr_0d1_6fed                            ; $6f90: $20 $5b

    ld bc, $035f                                  ; $6f92: $01 $5f $03
    ld e, a                                       ; $6f95: $5f
    inc bc                                        ; $6f96: $03

jr_0d1_6f97:
    rlca                                          ; $6f97: $07
    jr nz, jr_0d1_6f9c                            ; $6f98: $20 $02

    nop                                           ; $6f9a: $00
    ld e, e                                       ; $6f9b: $5b

jr_0d1_6f9c:
    ld bc, $035f                                  ; $6f9c: $01 $5f $03
    rlca                                          ; $6f9f: $07
    jr nz, jr_0d1_6fa4                            ; $6fa0: $20 $02

    nop                                           ; $6fa2: $00
    ld [hl], l                                    ; $6fa3: $75

jr_0d1_6fa4:
    ld a, [de]                                    ; $6fa4: $1a
    ld e, a                                       ; $6fa5: $5f
    inc bc                                        ; $6fa6: $03
    ld e, e                                       ; $6fa7: $5b
    ld bc, $1402                                  ; $6fa8: $01 $02 $14
    ld [hl], l                                    ; $6fab: $75
    ld a, [de]                                    ; $6fac: $1a
    ld sp, $5f70                                  ; $6fad: $31 $70 $5f
    inc bc                                        ; $6fb0: $03
    ld [hl-], a                                   ; $6fb1: $32
    ld [hl], b                                    ; $6fb2: $70
    ld e, a                                       ; $6fb3: $5f
    inc bc                                        ; $6fb4: $03
    ret c                                         ; $6fb5: $d8

    ld a, l                                       ; $6fb6: $7d
    ld e, a                                       ; $6fb7: $5f
    inc bc                                        ; $6fb8: $03
    inc bc                                        ; $6fb9: $03
    inc d                                         ; $6fba: $14
    ret c                                         ; $6fbb: $d8

    ld a, l                                       ; $6fbc: $7d
    ld [hl], l                                    ; $6fbd: $75
    ld a, [de]                                    ; $6fbe: $1a
    ld e, a                                       ; $6fbf: $5f
    inc bc                                        ; $6fc0: $03
    ld [bc], a                                    ; $6fc1: $02
    nop                                           ; $6fc2: $00
    ld [hl], l                                    ; $6fc3: $75
    ld a, [de]                                    ; $6fc4: $1a
    ld e, a                                       ; $6fc5: $5f
    inc bc                                        ; $6fc6: $03
    ld e, e                                       ; $6fc7: $5b
    ld bc, $0400                                  ; $6fc8: $01 $00 $04
    ld [hl-], a                                   ; $6fcb: $32
    ld [hl], b                                    ; $6fcc: $70
    ld [hl], l                                    ; $6fcd: $75
    ld a, [de]                                    ; $6fce: $1a
    dec b                                         ; $6fcf: $05
    jr nz, jr_0d1_7004                            ; $6fd0: $20 $32

    ld [hl], b                                    ; $6fd2: $70
    ret c                                         ; $6fd3: $d8

    ld a, l                                       ; $6fd4: $7d
    ld [hl], l                                    ; $6fd5: $75
    ld a, [de]                                    ; $6fd6: $1a
    dec b                                         ; $6fd7: $05
    jr nz, jr_0d1_6fdd                            ; $6fd8: $20 $03

    inc e                                         ; $6fda: $1c
    ret c                                         ; $6fdb: $d8

    ld a, l                                       ; $6fdc: $7d

jr_0d1_6fdd:
    ld [hl], l                                    ; $6fdd: $75
    ld a, [de]                                    ; $6fde: $1a
    ld e, a                                       ; $6fdf: $5f
    inc bc                                        ; $6fe0: $03
    ld [bc], a                                    ; $6fe1: $02
    nop                                           ; $6fe2: $00
    sub l                                         ; $6fe3: $95
    ld e, $5b                                     ; $6fe4: $1e $5b
    ld bc, $035f                                  ; $6fe6: $01 $5f $03
    ld [bc], a                                    ; $6fe9: $02
    inc d                                         ; $6fea: $14
    ld c, [hl]                                    ; $6feb: $4e
    ld e, b                                       ; $6fec: $58

jr_0d1_6fed:
    ld a, [bc]                                    ; $6fed: $0a
    inc a                                         ; $6fee: $3c
    ld [hl-], a                                   ; $6fef: $32
    ld [hl], h                                    ; $6ff0: $74
    ld [hl-], a                                   ; $6ff1: $32
    ld [hl], b                                    ; $6ff2: $70
    ret c                                         ; $6ff3: $d8

    ld a, l                                       ; $6ff4: $7d
    ld d, d                                       ; $6ff5: $52
    ld [hl], b                                    ; $6ff6: $70
    ld d, d                                       ; $6ff7: $52
    ld [hl], h                                    ; $6ff8: $74
    inc bc                                        ; $6ff9: $03
    inc e                                         ; $6ffa: $1c
    ret c                                         ; $6ffb: $d8

    ld a, l                                       ; $6ffc: $7d
    sub l                                         ; $6ffd: $95
    ld e, $5f                                     ; $6ffe: $1e $5f
    inc bc                                        ; $7000: $03
    ld [bc], a                                    ; $7001: $02
    nop                                           ; $7002: $00
    ld [hl], c                                    ; $7003: $71

jr_0d1_7004:
    inc c                                         ; $7004: $0c
    ld hl, sp+$1a                                 ; $7005: $f8 $1a
    cp l                                          ; $7007: $bd
    inc b                                         ; $7008: $04
    inc b                                         ; $7009: $04
    inc e                                         ; $700a: $1c
    cp $6f                                        ; $700b: $fe $6f
    xor l                                         ; $700d: $ad
    ld b, h                                       ; $700e: $44
    ld [de], a                                    ; $700f: $12
    ld [hl], h                                    ; $7010: $74
    add hl, bc                                    ; $7011: $09
    ld c, b                                       ; $7012: $48
    ret c                                         ; $7013: $d8

    ld a, l                                       ; $7014: $7d
    ld sp, $4d74                                  ; $7015: $31 $74 $4d
    dec a                                         ; $7018: $3d
    inc bc                                        ; $7019: $03
    inc e                                         ; $701a: $1c
    ret c                                         ; $701b: $d8

    ld a, l                                       ; $701c: $7d
    sub $22                                       ; $701d: $d6 $22
    ld e, a                                       ; $701f: $5f
    inc bc                                        ; $7020: $03
    ld [bc], a                                    ; $7021: $02
    nop                                           ; $7022: $00
    ld e, e                                       ; $7023: $5b
    ld bc, $1f19                                  ; $7024: $01 $19 $1f
    dec c                                         ; $7027: $0d
    nop                                           ; $7028: $00
    ld h, e                                       ; $7029: $63
    inc c                                         ; $702a: $0c
    or $29                                        ; $702b: $f6 $29
    ld a, d                                       ; $702d: $7a
    ld l, a                                       ; $702e: $6f
    rlca                                          ; $702f: $07
    inc a                                         ; $7030: $3c
    ld h, [hl]                                    ; $7031: $66
    jr jr_0d1_708a                                ; $7032: $18 $56

    ld l, d                                       ; $7034: $6a
    ld c, $49                                     ; $7035: $0e $49
    rst $38                                       ; $7037: $ff
    ld [hl], a                                    ; $7038: $77
    inc bc                                        ; $7039: $03
    inc e                                         ; $703a: $1c
    ret c                                         ; $703b: $d8

    ld a, l                                       ; $703c: $7d
    rla                                           ; $703d: $17
    daa                                           ; $703e: $27
    ld e, a                                       ; $703f: $5f
    inc bc                                        ; $7040: $03
    ld bc, $5500                                  ; $7041: $01 $00 $55
    ld de, $035f                                  ; $7044: $11 $5f $03
    add hl, sp                                    ; $7047: $39
    scf                                           ; $7048: $37
    ld b, e                                       ; $7049: $43
    nop                                           ; $704a: $00
    cp [hl]                                       ; $704b: $be
    ld b, d                                       ; $704c: $42
    ld [bc], a                                    ; $704d: $02
    inc h                                         ; $704e: $24
    ccf                                           ; $704f: $3f
    ld c, e                                       ; $7050: $4b
    push bc                                       ; $7051: $c5
    db $10                                        ; $7052: $10
    ccf                                           ; $7053: $3f
    ld c, e                                       ; $7054: $4b
    rst $38                                       ; $7055: $ff
    ld a, a                                       ; $7056: $7f
    adc $39                                       ; $7057: $ce $39
    inc bc                                        ; $7059: $03
    inc d                                         ; $705a: $14
    jr c, @+$31                                   ; $705b: $38 $2f

    rst $38                                       ; $705d: $ff
    ld a, a                                       ; $705e: $7f
    ld e, a                                       ; $705f: $5f
    inc bc                                        ; $7060: $03
    ld [bc], a                                    ; $7061: $02
    nop                                           ; $7062: $00
    sbc c                                         ; $7063: $99
    dec c                                         ; $7064: $0d
    rst $38                                       ; $7065: $ff
    ld b, d                                       ; $7066: $42
    ld e, a                                       ; $7067: $5f
    inc bc                                        ; $7068: $03
    ld b, e                                       ; $7069: $43
    inc b                                         ; $706a: $04
    cp h                                          ; $706b: $bc
    ld a, $71                                     ; $706c: $3e $71
    dec d                                         ; $706e: $15
    cp $6f                                        ; $706f: $fe $6f
    ld [hl+], a                                   ; $7071: $22
    nop                                           ; $7072: $00
    sbc d                                         ; $7073: $9a
    ld a, $fd                                     ; $7074: $3e $fd
    ld a, a                                       ; $7076: $7f
    ld c, a                                       ; $7077: $4f
    dec e                                         ; $7078: $1d
    ld bc, $7900                                  ; $7079: $01 $00 $79
    inc sp                                        ; $707c: $33
    ld e, a                                       ; $707d: $5f
    inc bc                                        ; $707e: $03

Jump_0d1_707f:
    ld a, h                                       ; $707f: $7c
    ld a, [hl-]                                   ; $7080: $3a
    ld [bc], a                                    ; $7081: $02
    nop                                           ; $7082: $00
    sbc b                                         ; $7083: $98
    ld de, $4f1d                                  ; $7084: $11 $1d $4f
    ld e, a                                       ; $7087: $5f
    inc bc                                        ; $7088: $03
    ld [hl+], a                                   ; $7089: $22

jr_0d1_708a:
    inc e                                         ; $708a: $1c
    call c, $b43a                                 ; $708b: $dc $3a $b4
    dec e                                         ; $708e: $1d
    ld a, c                                       ; $708f: $79
    ld a, a                                       ; $7090: $7f
    add a                                         ; $7091: $87
    jr nz, jr_0d1_710f                            ; $7092: $20 $7b

    ld [hl], $7a                                  ; $7094: $36 $7a
    ld [hl], a                                    ; $7096: $77
    add e                                         ; $7097: $83
    ld a, h                                       ; $7098: $7c
    ld b, e                                       ; $7099: $43
    ld [$3799], sp                                ; $709a: $08 $99 $37
    ld [hl], b                                    ; $709d: $70
    ld hl, $035f                                  ; $709e: $21 $5f $03
    ld [bc], a                                    ; $70a1: $02
    nop                                           ; $70a2: $00
    ld d, e                                       ; $70a3: $53
    dec c                                         ; $70a4: $0d
    db $dd                                        ; $70a5: $dd
    ld a, $5f                                     ; $70a6: $3e $5f
    inc bc                                        ; $70a8: $03
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    rra                                           ; $70ab: $1f
    ccf                                           ; $70ac: $3f
    push af                                       ; $70ad: $f5
    ld hl, $0ccd                                  ; $70ae: $21 $cd $0c
    ld [bc], a                                    ; $70b1: $02
    inc [hl]                                      ; $70b2: $34
    ld e, $47                                     ; $70b3: $1e $47
    ld c, [hl]                                    ; $70b5: $4e
    ld hl, $7c83                                  ; $70b6: $21 $83 $7c
    ld b, l                                       ; $70b9: $45
    inc b                                         ; $70ba: $04
    ld e, a                                       ; $70bb: $5f
    inc bc                                        ; $70bc: $03
    ld d, $2a                                     ; $70bd: $16 $2a
    inc a                                         ; $70bf: $3c
    dec sp                                        ; $70c0: $3b
    ld [bc], a                                    ; $70c1: $02
    nop                                           ; $70c2: $00
    ld d, b                                       ; $70c3: $50
    add hl, bc                                    ; $70c4: $09
    db $fd                                        ; $70c5: $fd
    ld d, $79                                     ; $70c6: $16 $79
    ld bc, $0401                                  ; $70c8: $01 $01 $04
    jr jr_0d1_70fb                                ; $70cb: $18 $2e

    ld l, a                                       ; $70cd: $6f
    add hl, de                                    ; $70ce: $19
    sbc $42                                       ; $70cf: $de $42
    ld h, h                                       ; $70d1: $64
    inc b                                         ; $70d2: $04
    sbc h                                         ; $70d3: $9c
    ld a, $d2                                     ; $70d4: $3e $d2
    dec h                                         ; $70d6: $25
    sbc a                                         ; $70d7: $9f
    ld d, a                                       ; $70d8: $57
    inc hl                                        ; $70d9: $23
    nop                                           ; $70da: $00
    scf                                           ; $70db: $37
    ld [hl+], a                                   ; $70dc: $22
    rrca                                          ; $70dd: $0f
    dec b                                         ; $70de: $05
    ccf                                           ; $70df: $3f
    dec de                                        ; $70e0: $1b
    ld [bc], a                                    ; $70e1: $02
    nop                                           ; $70e2: $00
    ld d, e                                       ; $70e3: $53
    add hl, bc                                    ; $70e4: $09
    ld e, a                                       ; $70e5: $5f
    inc bc                                        ; $70e6: $03
    add hl, bc                                    ; $70e7: $09
    ld h, h                                       ; $70e8: $64
    inc bc                                        ; $70e9: $03
    jr c, jr_0d1_7104                             ; $70ea: $38 $18

    ld l, $de                                     ; $70ec: $2e $de
    ld b, d                                       ; $70ee: $42
    and a                                         ; $70ef: $a7
    ld [$1402], sp                                ; $70f0: $08 $02 $14
    rra                                           ; $70f3: $1f
    ld b, a                                       ; $70f4: $47
    sbc b                                         ; $70f5: $98
    db $10                                        ; $70f6: $10
    rlca                                          ; $70f7: $07
    ld a, b                                       ; $70f8: $78
    inc hl                                        ; $70f9: $23
    nop                                           ; $70fa: $00

jr_0d1_70fb:
    ccf                                           ; $70fb: $3f
    dec bc                                        ; $70fc: $0b
    cpl                                           ; $70fd: $2f
    add hl, bc                                    ; $70fe: $09
    inc b                                         ; $70ff: $04
    ld b, b                                       ; $7100: $40
    ld [bc], a                                    ; $7101: $02
    nop                                           ; $7102: $00
    ld e, l                                       ; $7103: $5d

jr_0d1_7104:
    ld [bc], a                                    ; $7104: $02
    ld b, $48                                     ; $7105: $06 $48
    rlc h                                         ; $7107: $cb $04
    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    or $29                                        ; $710b: $f6 $29
    sbc $46                                       ; $710d: $de $46

jr_0d1_710f:
    xor b                                         ; $710f: $a8
    inc c                                         ; $7110: $0c
    ld b, c                                       ; $7111: $41
    jr @+$18                                      ; $7112: $18 $16

    nop                                           ; $7114: $00
    inc e                                         ; $7115: $1c
    ld [hl-], a                                   ; $7116: $32
    dec hl                                        ; $7117: $2b
    ld h, b                                       ; $7118: $60
    ld [bc], a                                    ; $7119: $02
    inc d                                         ; $711a: $14
    ret c                                         ; $711b: $d8

    ld a, l                                       ; $711c: $7d
    ld e, a                                       ; $711d: $5f
    inc bc                                        ; $711e: $03
    ld c, $05                                     ; $711f: $0e $05
    ld [bc], a                                    ; $7121: $02
    nop                                           ; $7122: $00
    scf                                           ; $7123: $37
    dec c                                         ; $7124: $0d
    rlca                                          ; $7125: $07
    ld e, b                                       ; $7126: $58
    ld e, $07                                     ; $7127: $1e $07
    ld bc, $f604                                  ; $7129: $01 $04 $f6
    dec h                                         ; $712c: $25
    cp l                                          ; $712d: $bd
    ld a, $ca                                     ; $712e: $3e $ca
    stop                                          ; $7130: $10 $00
    inc b                                         ; $7132: $04
    jr c, jr_0d1_716b                             ; $7133: $38 $36

    ld a, [hl+]                                   ; $7135: $2a
    ld e, h                                       ; $7136: $5c
    ld e, a                                       ; $7137: $5f
    ld d, e                                       ; $7138: $53
    inc hl                                        ; $7139: $23
    nop                                           ; $713a: $00
    ret c                                         ; $713b: $d8

    ld a, l                                       ; $713c: $7d
    cp h                                          ; $713d: $bc
    ld c, $aa                                     ; $713e: $0e $aa
    inc l                                         ; $7140: $2c
    ld bc, $9a00                                  ; $7141: $01 $00 $9a
    ld bc, $600b                                  ; $7144: $01 $0b $60
    rst $38                                       ; $7147: $ff
    ld b, $01                                     ; $7148: $06 $01
    jr @+$19                                      ; $714a: $18 $17

    ld a, [hl+]                                   ; $714c: $2a
    ret c                                         ; $714d: $d8

    ld a, l                                       ; $714e: $7d
    ccf                                           ; $714f: $3f
    ld c, a                                       ; $7150: $4f
    ld bc, $fc0c                                  ; $7151: $01 $0c $fc
    ld h, d                                       ; $7154: $62
    add hl, bc                                    ; $7155: $09
    ld d, h                                       ; $7156: $54
    dec c                                         ; $7157: $0d
    dec d                                         ; $7158: $15
    ld bc, $7b04                                  ; $7159: $01 $04 $7b
    ld [bc], a                                    ; $715c: $02
    ret c                                         ; $715d: $d8

    ld a, l                                       ; $715e: $7d
    ld a, [hl+]                                   ; $715f: $2a
    ld e, h                                       ; $7160: $5c
    ld bc, $5d00                                  ; $7161: $01 $00 $5d
    ld [bc], a                                    ; $7164: $02
    inc b                                         ; $7165: $04
    inc l                                         ; $7166: $2c
    inc l                                         ; $7167: $2c
    ld [hl], b                                    ; $7168: $70
    inc hl                                        ; $7169: $23
    inc h                                         ; $716a: $24

jr_0d1_716b:
    ret c                                         ; $716b: $d8

    ld a, l                                       ; $716c: $7d
    rlca                                          ; $716d: $07
    ld e, b                                       ; $716e: $58
    call c, $0132                                 ; $716f: $dc $32 $01
    inc e                                         ; $7172: $1c
    ld a, b                                       ; $7173: $78
    ld a, [hl+]                                   ; $7174: $2a
    ld a, [bc]                                    ; $7175: $0a
    ld e, h                                       ; $7176: $5c
    ret c                                         ; $7177: $d8

    ld a, l                                       ; $7178: $7d
    inc hl                                        ; $7179: $23
    inc c                                         ; $717a: $0c
    ret c                                         ; $717b: $d8

    ld a, l                                       ; $717c: $7d
    add hl, bc                                    ; $717d: $09
    ld e, h                                       ; $717e: $5c
    ld e, a                                       ; $717f: $5f
    inc bc                                        ; $7180: $03
    ld [bc], a                                    ; $7181: $02
    nop                                           ; $7182: $00
    ld e, e                                       ; $7183: $5b
    ld bc, $035f                                  ; $7184: $01 $5f $03
    ld e, a                                       ; $7187: $5f
    inc bc                                        ; $7188: $03
    ld e, e                                       ; $7189: $5b
    ld bc, $035f                                  ; $718a: $01 $5f $03
    ld e, a                                       ; $718d: $5f
    inc bc                                        ; $718e: $03
    ld e, a                                       ; $718f: $5f
    inc bc                                        ; $7190: $03
    ld e, e                                       ; $7191: $5b
    ld bc, $035f                                  ; $7192: $01 $5f $03
    ld e, a                                       ; $7195: $5f
    inc bc                                        ; $7196: $03
    ld e, a                                       ; $7197: $5f
    inc bc                                        ; $7198: $03
    ld [bc], a                                    ; $7199: $02
    nop                                           ; $719a: $00
    ld e, e                                       ; $719b: $5b
    ld bc, $035f                                  ; $719c: $01 $5f $03
    ld e, a                                       ; $719f: $5f
    inc bc                                        ; $71a0: $03
    ld [bc], a                                    ; $71a1: $02
    nop                                           ; $71a2: $00
    ld [hl], l                                    ; $71a3: $75
    ld a, [de]                                    ; $71a4: $1a
    ld e, a                                       ; $71a5: $5f
    inc bc                                        ; $71a6: $03
    ld e, e                                       ; $71a7: $5b
    ld bc, $0000                                  ; $71a8: $01 $00 $00
    ld e, a                                       ; $71ab: $5f
    inc bc                                        ; $71ac: $03
    ld a, [c]                                     ; $71ad: $f2
    ld h, [hl]                                    ; $71ae: $66
    ld [hl], l                                    ; $71af: $75
    ld a, [de]                                    ; $71b0: $1a
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    ld e, a                                       ; $71b3: $5f
    inc bc                                        ; $71b4: $03
    pop de                                        ; $71b5: $d1
    ld h, [hl]                                    ; $71b6: $66
    ld [hl], l                                    ; $71b7: $75
    ld a, [de]                                    ; $71b8: $1a
    ld [bc], a                                    ; $71b9: $02
    nop                                           ; $71ba: $00
    ld [hl], l                                    ; $71bb: $75
    ld a, [de]                                    ; $71bc: $1a
    ld e, a                                       ; $71bd: $5f
    inc bc                                        ; $71be: $03
    ld [hl], l                                    ; $71bf: $75
    ld a, [de]                                    ; $71c0: $1a
    ld [bc], a                                    ; $71c1: $02
    nop                                           ; $71c2: $00
    ld [hl], l                                    ; $71c3: $75
    ld a, [de]                                    ; $71c4: $1a
    ld e, a                                       ; $71c5: $5f
    inc bc                                        ; $71c6: $03
    ld e, e                                       ; $71c7: $5b
    ld bc, $0000                                  ; $71c8: $01 $00 $00
    ld [hl], l                                    ; $71cb: $75
    ld a, [de]                                    ; $71cc: $1a
    bit 0, c                                      ; $71cd: $cb $41
    inc de                                        ; $71cf: $13
    ld l, a                                       ; $71d0: $6f
    and d                                         ; $71d1: $a2
    db $10                                        ; $71d2: $10
    ld [hl], l                                    ; $71d3: $75
    ld a, [de]                                    ; $71d4: $1a
    ld c, l                                       ; $71d5: $4d
    ld d, d                                       ; $71d6: $52
    dec [hl]                                      ; $71d7: $35
    ld a, e                                       ; $71d8: $7b
    ld [bc], a                                    ; $71d9: $02
    nop                                           ; $71da: $00
    ld [hl], l                                    ; $71db: $75
    ld a, [de]                                    ; $71dc: $1a
    ld e, a                                       ; $71dd: $5f
    inc bc                                        ; $71de: $03
    dec [hl]                                      ; $71df: $35
    ld a, e                                       ; $71e0: $7b
    ld [bc], a                                    ; $71e1: $02
    nop                                           ; $71e2: $00
    ld [hl], l                                    ; $71e3: $75
    ld a, [de]                                    ; $71e4: $1a
    ld e, a                                       ; $71e5: $5f
    inc bc                                        ; $71e6: $03
    ld e, e                                       ; $71e7: $5b
    ld bc, $0040                                  ; $71e8: $01 $40 $00
    adc d                                         ; $71eb: $8a
    dec a                                         ; $71ec: $3d
    ld [hl], l                                    ; $71ed: $75
    ld a, [de]                                    ; $71ee: $1a
    ld a, [c]                                     ; $71ef: $f2
    ld l, d                                       ; $71f0: $6a
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    sub b                                         ; $71f3: $90
    ld e, [hl]                                    ; $71f4: $5e
    inc hl                                        ; $71f5: $23
    ld a, [de]                                    ; $71f6: $1a
    ld [hl], l                                    ; $71f7: $75
    ld a, [de]                                    ; $71f8: $1a
    ld [bc], a                                    ; $71f9: $02
    nop                                           ; $71fa: $00
    ld [hl], l                                    ; $71fb: $75
    ld a, [de]                                    ; $71fc: $1a
    ld e, a                                       ; $71fd: $5f
    inc bc                                        ; $71fe: $03
    sub l                                         ; $71ff: $95
    ld a, [de]                                    ; $7200: $1a
    ld [bc], a                                    ; $7201: $02
    nop                                           ; $7202: $00
    sub h                                         ; $7203: $94
    ld a, [de]                                    ; $7204: $1a
    ld e, e                                       ; $7205: $5b
    ld bc, $035f                                  ; $7206: $01 $5f $03
    ld b, c                                       ; $7209: $41
    ld [$4e0d], sp                                ; $720a: $08 $0d $4e
    ld [de], a                                    ; $720d: $12
    ld l, e                                       ; $720e: $6b
    sub h                                         ; $720f: $94
    ld e, $83                                     ; $7210: $1e $83
    inc d                                         ; $7212: $14
    call z, $f235                                 ; $7213: $cc $35 $f2
    ld l, [hl]                                    ; $7216: $6e
    nop                                           ; $7217: $00
    ld [bc], a                                    ; $7218: $02
    ld [bc], a                                    ; $7219: $02
    nop                                           ; $721a: $00
    sub h                                         ; $721b: $94
    ld a, [de]                                    ; $721c: $1a
    ld e, a                                       ; $721d: $5f
    inc bc                                        ; $721e: $03
    sub h                                         ; $721f: $94
    ld e, $01                                     ; $7220: $1e $01
    nop                                           ; $7222: $00
    sub e                                         ; $7223: $93
    ld e, $74                                     ; $7224: $1e $74
    ld a, e                                       ; $7226: $7b
    ld e, l                                       ; $7227: $5d
    ld [bc], a                                    ; $7228: $02
    ld hl, $5004                                  ; $7229: $21 $04 $50
    ld d, d                                       ; $722c: $52
    sbc c                                         ; $722d: $99
    ld [hl], a                                    ; $722e: $77
    push bc                                       ; $722f: $c5
    jr jr_0d1_7232                                ; $7230: $18 $00

jr_0d1_7232:
    nop                                           ; $7232: $00
    ld l, c                                       ; $7233: $69
    dec [hl]                                      ; $7234: $35
    sub [hl]                                      ; $7235: $96
    ld a, a                                       ; $7236: $7f
    db $eb                                        ; $7237: $eb
    db $10                                        ; $7238: $10
    ld bc, $9300                                  ; $7239: $01 $00 $93
    ld e, $95                                     ; $723c: $1e $95
    ld a, a                                       ; $723e: $7f
    ld e, a                                       ; $723f: $5f
    inc bc                                        ; $7240: $03
    ld bc, $b300                                  ; $7241: $01 $00 $b3
    ld [hl+], a                                   ; $7244: $22
    ld [de], a                                    ; $7245: $12
    ld l, a                                       ; $7246: $6f
    ld e, l                                       ; $7247: $5d
    ld [bc], a                                    ; $7248: $02
    ld h, d                                       ; $7249: $62
    inc c                                         ; $724a: $0c
    ld d, d                                       ; $724b: $52
    ld c, d                                       ; $724c: $4a
    rst $38                                       ; $724d: $ff
    ld a, a                                       ; $724e: $7f
    ld c, b                                       ; $724f: $48
    dec l                                         ; $7250: $2d
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    cp e                                          ; $7253: $bb
    ld b, d                                       ; $7254: $42
    ld a, [bc]                                    ; $7255: $0a
    dec e                                         ; $7256: $1d
    rst $38                                       ; $7257: $ff
    ld a, a                                       ; $7258: $7f
    ld bc, $d600                                  ; $7259: $01 $00 $d6
    ld a, [de]                                    ; $725c: $1a
    ret c                                         ; $725d: $d8

    ld a, a                                       ; $725e: $7f
    inc h                                         ; $725f: $24
    dec l                                         ; $7260: $2d
    ld [bc], a                                    ; $7261: $02
    nop                                           ; $7262: $00
    sub b                                         ; $7263: $90
    ld h, $5d                                     ; $7264: $26 $5d
    ld [bc], a                                    ; $7266: $02
    xor a                                         ; $7267: $af
    ld h, d                                       ; $7268: $62
    ld b, d                                       ; $7269: $42
    inc b                                         ; $726a: $04
    ld d, h                                       ; $726b: $54
    ld b, [hl]                                    ; $726c: $46
    rst $38                                       ; $726d: $ff
    ld a, a                                       ; $726e: $7f
    ld c, h                                       ; $726f: $4c
    ld hl, $0821                                  ; $7270: $21 $21 $08
    ld d, d                                       ; $7273: $52
    ld c, d                                       ; $7274: $4a
    rst $38                                       ; $7275: $ff
    ld a, a                                       ; $7276: $7f
    rst $38                                       ; $7277: $ff
    ld b, d                                       ; $7278: $42
    ld b, e                                       ; $7279: $43
    inc b                                         ; $727a: $04
    jp nc, Jump_0d1_6626                          ; $727b: $d2 $26 $66

    add hl, sp                                    ; $727e: $39
    ld e, a                                       ; $727f: $5f
    inc bc                                        ; $7280: $03
    ld bc, $5d00                                  ; $7281: $01 $00 $5d
    ld [bc], a                                    ; $7284: $02
    or b                                          ; $7285: $b0
    ld a, [hl-]                                   ; $7286: $3a
    rst $38                                       ; $7287: $ff
    ld b, d                                       ; $7288: $42
    ld b, b                                       ; $7289: $40
    nop                                           ; $728a: $00
    ld a, b                                       ; $728b: $78
    ld a, $de                                     ; $728c: $3e $de
    ld a, e                                       ; $728e: $7b
    and [hl]                                      ; $728f: $a6
    ld de, $0020                                  ; $7290: $11 $20 $00
    cp l                                          ; $7293: $bd
    ld a, $a4                                     ; $7294: $3e $a4
    add hl, de                                    ; $7296: $19
    rst $38                                       ; $7297: $ff
    ld a, a                                       ; $7298: $7f
    ld bc, $2e00                                  ; $7299: $01 $00 $2e
    ld [hl-], a                                   ; $729c: $32
    rst $38                                       ; $729d: $ff
    ld b, d                                       ; $729e: $42
    ld e, a                                       ; $729f: $5f
    inc bc                                        ; $72a0: $03
    ld bc, $ae00                                  ; $72a1: $01 $00 $ae
    ld [hl], $5b                                  ; $72a4: $36 $5b
    ld bc, $231f                                  ; $72a6: $01 $1f $23
    ld hl, $5204                                  ; $72a9: $21 $04 $52
    ld c, d                                       ; $72ac: $4a
    and a                                         ; $72ad: $a7
    db $10                                        ; $72ae: $10
    sbc h                                         ; $72af: $9c
    ld a, [hl-]                                   ; $72b0: $3a
    ld hl, $ae08                                  ; $72b1: $21 $08 $ae
    dec [hl]                                      ; $72b4: $35
    cp h                                          ; $72b5: $bc
    ld a, [hl-]                                   ; $72b6: $3a
    ld d, c                                       ; $72b7: $51
    ld c, d                                       ; $72b8: $4a
    ld [hl+], a                                   ; $72b9: $22
    inc b                                         ; $72ba: $04
    pop af                                        ; $72bb: $f1
    ld c, d                                       ; $72bc: $4a
    rst $38                                       ; $72bd: $ff
    ld b, d                                       ; $72be: $42
    ld e, a                                       ; $72bf: $5f
    inc bc                                        ; $72c0: $03
    ld [bc], a                                    ; $72c1: $02
    nop                                           ; $72c2: $00
    xor [hl]                                      ; $72c3: $ae
    ld [hl], $5d                                  ; $72c4: $36 $5d
    ld [bc], a                                    ; $72c6: $02
    sub l                                         ; $72c7: $95
    ld a, e                                       ; $72c8: $7b
    add h                                         ; $72c9: $84
    inc c                                         ; $72ca: $0c
    ld sp, $bd46                                  ; $72cb: $31 $46 $bd
    ld [hl], e                                    ; $72ce: $73
    rst $38                                       ; $72cf: $ff
    ld b, d                                       ; $72d0: $42
    ld hl, $7304                                  ; $72d1: $21 $04 $73
    ld c, [hl]                                    ; $72d4: $4e
    sbc $77                                       ; $72d5: $de $77
    rst $20                                       ; $72d7: $e7
    inc e                                         ; $72d8: $1c
    add e                                         ; $72d9: $83
    db $10                                        ; $72da: $10
    ld e, a                                       ; $72db: $5f
    inc bc                                        ; $72dc: $03
    db $d3                                        ; $72dd: $d3
    ld a, [hl-]                                   ; $72de: $3a
    sub [hl]                                      ; $72df: $96
    ld a, a                                       ; $72e0: $7f
    ld bc, $8900                                  ; $72e1: $01 $00 $89
    dec [hl]                                      ; $72e4: $35
    ld e, l                                       ; $72e5: $5d
    ld [bc], a                                    ; $72e6: $02

jr_0d1_72e7:
    jr nc, jr_0d1_732c                            ; $72e7: $30 $43

    ld b, d                                       ; $72e9: $42
    inc b                                         ; $72ea: $04
    rst $38                                       ; $72eb: $ff
    ld a, e                                       ; $72ec: $7b
    rlca                                          ; $72ed: $07
    ld hl, $398d                                  ; $72ee: $21 $8d $39
    ld b, d                                       ; $72f1: $42
    ld [$7bff], sp                                ; $72f2: $08 $ff $7b
    rst $20                                       ; $72f5: $e7
    jr nz, jr_0d1_72e7                            ; $72f6: $20 $ef

    ld b, l                                       ; $72f8: $45
    ld bc, $5100                                  ; $72f9: $01 $00 $51
    ld c, e                                       ; $72fc: $4b
    ld e, a                                       ; $72fd: $5f
    inc bc                                        ; $72fe: $03
    ld c, b                                       ; $72ff: $48
    ld sp, $0002                                  ; $7300: $31 $02 $00
    ld c, a                                       ; $7303: $4f
    dec sp                                        ; $7304: $3b
    ld e, e                                       ; $7305: $5b
    ld bc, $035f                                  ; $7306: $01 $5f $03
    ld b, d                                       ; $7309: $42
    ld [$5ef7], sp                                ; $730a: $08 $f7 $5e
    ld c, d                                       ; $730d: $4a
    dec h                                         ; $730e: $25
    rst $38                                       ; $730f: $ff
    ld a, e                                       ; $7310: $7b
    ld b, d                                       ; $7311: $42
    ld [$5653], sp                                ; $7312: $08 $53 $56
    ld h, $2d                                     ; $7315: $26 $2d
    cp l                                          ; $7317: $bd
    ld [hl], e                                    ; $7318: $73
    ld [hl+], a                                   ; $7319: $22
    ld [$62b0], sp                                ; $731a: $08 $b0 $62
    ld e, a                                       ; $731d: $5f
    inc bc                                        ; $731e: $03
    ld c, [hl]                                    ; $731f: $4e
    dec sp                                        ; $7320: $3b
    ld bc, $6e00                                  ; $7321: $01 $00 $6e
    dec sp                                        ; $7324: $3b
    ld e, e                                       ; $7325: $5b
    ld bc, $035f                                  ; $7326: $01 $5f $03
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    ld [hl], c                                    ; $732b: $71

jr_0d1_732c:
    add hl, de                                    ; $732c: $19
    rrca                                          ; $732d: $0f
    ld b, [hl]                                    ; $732e: $46
    push bc                                       ; $732f: $c5
    inc e                                         ; $7330: $1c
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    ld a, e                                       ; $7333: $7b
    ld l, a                                       ; $7334: $6f
    daa                                           ; $7335: $27
    add hl, hl                                    ; $7336: $29
    db $eb                                        ; $7337: $eb
    ld b, l                                       ; $7338: $45
    ld bc, $6e00                                  ; $7339: $01 $00 $6e
    dec sp                                        ; $733c: $3b
    ld e, a                                       ; $733d: $5f
    inc bc                                        ; $733e: $03
    ld l, a                                       ; $733f: $6f
    ld e, d                                       ; $7340: $5a
    ld bc, $4d00                                  ; $7341: $01 $00 $4d
    ccf                                           ; $7344: $3f
    ld e, e                                       ; $7345: $5b
    ld bc, $035f                                  ; $7346: $01 $5f $03
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    ld a, [c]                                     ; $734b: $f2
    ld h, [hl]                                    ; $734c: $66
    ld l, $15                                     ; $734d: $2e $15
    sbc d                                         ; $734f: $9a
    ld a, $00                                     ; $7350: $3e $00
    inc b                                         ; $7352: $04
    db $dd                                        ; $7353: $dd
    ld a, $56                                     ; $7354: $3e $56
    ld [hl], a                                    ; $7356: $77
    ld h, $29                                     ; $7357: $26 $29
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    adc [hl]                                      ; $735b: $8e
    ccf                                           ; $735c: $3f
    ld e, a                                       ; $735d: $5f
    inc bc                                        ; $735e: $03
    ld [bc], a                                    ; $735f: $02
    nop                                           ; $7360: $00
    ld bc, $4d00                                  ; $7361: $01 $00 $4d
    ld c, d                                       ; $7364: $4a
    ld e, l                                       ; $7365: $5d
    ld [bc], a                                    ; $7366: $02
    rst $10                                       ; $7367: $d7
    ld a, a                                       ; $7368: $7f
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    ld a, [c]                                     ; $736b: $f2
    ld l, d                                       ; $736c: $6a
    ld [hl], c                                    ; $736d: $71
    add hl, de                                    ; $736e: $19
    cp e                                          ; $736f: $bb
    ld b, d                                       ; $7370: $42
    ld h, e                                       ; $7371: $63
    db $10                                        ; $7372: $10
    inc [hl]                                      ; $7373: $34
    ld [hl], e                                    ; $7374: $73
    adc c                                         ; $7375: $89
    add hl, sp                                    ; $7376: $39
    ld e, [hl]                                    ; $7377: $5e
    ld c, a                                       ; $7378: $4f
    ld bc, $8d00                                  ; $7379: $01 $00 $8d
    ld b, e                                       ; $737c: $43
    ld e, a                                       ; $737d: $5f
    inc bc                                        ; $737e: $03
    inc de                                        ; $737f: $13
    ld l, a                                       ; $7380: $6f
    ld [bc], a                                    ; $7381: $02
    nop                                           ; $7382: $00
    ld e, e                                       ; $7383: $5b
    ld bc, $035f                                  ; $7384: $01 $5f $03
    inc de                                        ; $7387: $13
    ld l, a                                       ; $7388: $6f
    ld e, e                                       ; $7389: $5b
    ld bc, $035f                                  ; $738a: $01 $5f $03
    ld e, a                                       ; $738d: $5f
    inc bc                                        ; $738e: $03
    inc de                                        ; $738f: $13
    ld l, a                                       ; $7390: $6f
    ld e, e                                       ; $7391: $5b
    ld bc, $035f                                  ; $7392: $01 $5f $03
    ld e, a                                       ; $7395: $5f
    inc bc                                        ; $7396: $03
    inc de                                        ; $7397: $13
    ld l, a                                       ; $7398: $6f
    ld [bc], a                                    ; $7399: $02
    nop                                           ; $739a: $00
    ld e, e                                       ; $739b: $5b
    ld bc, $035f                                  ; $739c: $01 $5f $03
    inc de                                        ; $739f: $13
    ld l, a                                       ; $73a0: $6f
    ld [bc], a                                    ; $73a1: $02
    nop                                           ; $73a2: $00
    ld e, e                                       ; $73a3: $5b
    ld bc, $1c09                                  ; $73a4: $01 $09 $1c
    ld e, a                                       ; $73a7: $5f
    inc bc                                        ; $73a8: $03
    daa                                           ; $73a9: $27
    db $10                                        ; $73aa: $10
    ld e, a                                       ; $73ab: $5f
    inc bc                                        ; $73ac: $03
    ld [hl], e                                    ; $73ad: $73
    ld c, [hl]                                    ; $73ae: $4e
    db $db                                        ; $73af: $db
    ld a, e                                       ; $73b0: $7b
    add hl, bc                                    ; $73b1: $09

jr_0d1_73b2:
    inc e                                         ; $73b2: $1c
    ld e, a                                       ; $73b3: $5f
    inc bc                                        ; $73b4: $03
    ld [hl], e                                    ; $73b5: $73
    ld c, [hl]                                    ; $73b6: $4e
    db $db                                        ; $73b7: $db
    ld a, e                                       ; $73b8: $7b
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    ld e, a                                       ; $73bb: $5f
    inc bc                                        ; $73bc: $03
    add hl, bc                                    ; $73bd: $09
    inc e                                         ; $73be: $1c
    ld [bc], a                                    ; $73bf: $02
    nop                                           ; $73c0: $00
    ld [bc], a                                    ; $73c1: $02
    nop                                           ; $73c2: $00
    ld a, [$5d7f]                                 ; $73c3: $fa $7f $5d
    ld [bc], a                                    ; $73c6: $02
    add hl, hl                                    ; $73c7: $29
    inc e                                         ; $73c8: $1c
    inc bc                                        ; $73c9: $03
    nop                                           ; $73ca: $00
    ld d, b                                       ; $73cb: $50
    ld c, [hl]                                    ; $73cc: $4e
    ld a, b                                       ; $73cd: $78
    ld l, a                                       ; $73ce: $6f
    ld l, l                                       ; $73cf: $6d
    ld hl, $0000                                  ; $73d0: $21 $00 $00
    add hl, bc                                    ; $73d3: $09
    inc e                                         ; $73d4: $1c
    ld c, a                                       ; $73d5: $4f
    dec d                                         ; $73d6: $15
    ld l, l                                       ; $73d7: $6d
    ld hl, $0000                                  ; $73d8: $21 $00 $00
    or e                                          ; $73db: $b3
    ld d, [hl]                                    ; $73dc: $56
    ld e, a                                       ; $73dd: $5f
    inc bc                                        ; $73de: $03
    ld c, b                                       ; $73df: $48
    inc e                                         ; $73e0: $1c
    ld [bc], a                                    ; $73e1: $02
    nop                                           ; $73e2: $00
    ld e, l                                       ; $73e3: $5d
    ld [bc], a                                    ; $73e4: $02
    db $db                                        ; $73e5: $db
    ld a, e                                       ; $73e6: $7b
    ld c, d                                       ; $73e7: $4a
    jr nz, jr_0d1_73b2                            ; $73e8: $20 $c8

    db $10                                        ; $73ea: $10
    sub d                                         ; $73eb: $92
    ld d, d                                       ; $73ec: $52
    cp l                                          ; $73ed: $bd
    ld a, $ba                                     ; $73ee: $3e $ba
    ld [hl], a                                    ; $73f0: $77
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    cp l                                          ; $73f3: $bd
    ld a, $0c                                     ; $73f4: $3e $0c
    dec c                                         ; $73f6: $0d
    ld [hl], b                                    ; $73f7: $70
    dec e                                         ; $73f8: $1d
    ld bc, $5f00                                  ; $73f9: $01 $00 $5f
    inc bc                                        ; $73fc: $03
    db $db                                        ; $73fd: $db
    ld a, e                                       ; $73fe: $7b
    xor h                                         ; $73ff: $ac
    dec [hl]                                      ; $7400: $35
    ld [bc], a                                    ; $7401: $02
    nop                                           ; $7402: $00
    ld c, a                                       ; $7403: $4f
    ld c, d                                       ; $7404: $4a
    ld e, l                                       ; $7405: $5d
    ld [bc], a                                    ; $7406: $02
    ld a, [$217f]                                 ; $7407: $fa $7f $21
    inc b                                         ; $740a: $04
    cp l                                          ; $740b: $bd
    ld a, $ae                                     ; $740c: $3e $ae

Call_0d1_740e:
    add hl, sp                                    ; $740e: $39
    ld c, a                                       ; $740f: $4f
    dec d                                         ; $7410: $15
    ld [hl], b                                    ; $7411: $70
    dec e                                         ; $7412: $1d
    cp l                                          ; $7413: $bd
    ld a, $ae                                     ; $7414: $3e $ae
    add hl, sp                                    ; $7416: $39
    ld c, a                                       ; $7417: $4f
    dec d                                         ; $7418: $15
    inc hl                                        ; $7419: $23
    inc b                                         ; $741a: $04
    ld e, a                                       ; $741b: $5f
    inc bc                                        ; $741c: $03
    cpl                                           ; $741d: $2f
    ld b, [hl]                                    ; $741e: $46
    ld a, c                                       ; $741f: $79
    ld l, a                                       ; $7420: $6f
    ld bc, $5d00                                  ; $7421: $01 $00 $5d
    ld [bc], a                                    ; $7424: $02
    rla                                           ; $7425: $17
    ld h, e                                       ; $7426: $63
    ld c, d                                       ; $7427: $4a
    jr nz, @+$09                                  ; $7428: $20 $07

    nop                                           ; $742a: $00
    cp l                                          ; $742b: $bd
    ld a, $4f                                     ; $742c: $3e $4f
    dec d                                         ; $742e: $15
    ld c, d                                       ; $742f: $4a
    jr nz, @+$09                                  ; $7430: $20 $07

    nop                                           ; $7432: $00
    adc a                                         ; $7433: $8f
    ld d, [hl]                                    ; $7434: $56
    ld [hl], b                                    ; $7435: $70
    dec e                                         ; $7436: $1d
    cp l                                          ; $7437: $bd
    ld a, $00                                     ; $7438: $3e $00
    nop                                           ; $743a: $00
    rrca                                          ; $743b: $0f
    ld b, d                                       ; $743c: $42
    ld e, a                                       ; $743d: $5f
    inc bc                                        ; $743e: $03
    cp b                                          ; $743f: $b8
    ld [hl], a                                    ; $7440: $77
    ld [bc], a                                    ; $7441: $02
    nop                                           ; $7442: $00
    call z, $5d39                                 ; $7443: $cc $39 $5d
    ld [bc], a                                    ; $7446: $02
    scf                                           ; $7447: $37
    ld h, a                                       ; $7448: $67
    rlca                                          ; $7449: $07
    nop                                           ; $744a: $00
    cp h                                          ; $744b: $bc
    ld a, $ba                                     ; $744c: $3e $ba
    ld a, e                                       ; $744e: $7b
    ld c, a                                       ; $744f: $4f
    add hl, de                                    ; $7450: $19
    dec b                                         ; $7451: $05
    nop                                           ; $7452: $00
    sub b                                         ; $7453: $90
    ld d, [hl]                                    ; $7454: $56
    jp c, Jump_0d1_707f                           ; $7455: $da $7f $70

    dec e                                         ; $7458: $1d
    nop                                           ; $7459: $00
    nop                                           ; $745a: $00
    ld e, a                                       ; $745b: $5f
    inc bc                                        ; $745c: $03
    ld d, $63                                     ; $745d: $16 $63
    dec bc                                        ; $745f: $0b
    dec l                                         ; $7460: $2d
    ld [bc], a                                    ; $7461: $02
    nop                                           ; $7462: $00
    ld e, l                                       ; $7463: $5d
    ld [bc], a                                    ; $7464: $02
    ld l, [hl]                                    ; $7465: $6e
    ld d, d                                       ; $7466: $52
    rst $38                                       ; $7467: $ff
    ld a, a                                       ; $7468: $7f

jr_0d1_7469:
    rlca                                          ; $7469: $07
    nop                                           ; $746a: $00
    sbc d                                         ; $746b: $9a
    ld a, $dd                                     ; $746c: $3e $dd
    ld a, a                                       ; $746e: $7f
    ld c, a                                       ; $746f: $4f
    dec d                                         ; $7470: $15
    inc bc                                        ; $7471: $03
    nop                                           ; $7472: $00
    sub [hl]                                      ; $7473: $96
    ld c, d                                       ; $7474: $4a
    ld l, h                                       ; $7475: $6c
    add hl, hl                                    ; $7476: $29
    cp e                                          ; $7477: $bb
    ld [hl], a                                    ; $7478: $77
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    sub $56                                       ; $747b: $d6 $56
    ld e, a                                       ; $747d: $5f
    inc bc                                        ; $747e: $03
    ld l, l                                       ; $747f: $6d
    inc h                                         ; $7480: $24
    ld bc, $7600                                  ; $7481: $01 $00 $76
    ld de, $2c0e                                  ; $7484: $11 $0e $2c
    ld e, a                                       ; $7487: $5f
    inc bc                                        ; $7488: $03
    ld b, e                                       ; $7489: $43
    inc c                                         ; $748a: $0c
    ld a, [hl+]                                   ; $748b: $2a
    ld c, [hl]                                    ; $748c: $4e
    call c, $4f46                                 ; $748d: $dc $46 $4f
    add hl, de                                    ; $7490: $19
    inc bc                                        ; $7491: $03
    nop                                           ; $7492: $00
    ld d, a                                       ; $7493: $57
    ld a, $ff                                     ; $7494: $3e $ff
    ld a, a                                       ; $7496: $7f
    ld c, [hl]                                    ; $7497: $4e
    dec e                                         ; $7498: $1d
    nop                                           ; $7499: $00
    nop                                           ; $749a: $00
    ld e, a                                       ; $749b: $5f
    inc bc                                        ; $749c: $03
    ld a, [$6d56]                                 ; $749d: $fa $56 $6d
    dec h                                         ; $74a0: $25
    ld [bc], a                                    ; $74a1: $02
    nop                                           ; $74a2: $00
    rrca                                          ; $74a3: $0f
    jr nc, jr_0d1_7501                            ; $74a4: $30 $5b

    ld bc, $1efd                                  ; $74a6: $01 $fd $1e
    ret nz                                        ; $74a9: $c0

    jr z, jr_0d1_7469                             ; $74aa: $28 $bd

    ld a, $4b                                     ; $74ac: $3e $4b
    ld hl, $0004                                  ; $74ae: $21 $04 $00
    ld bc, $2700                                  ; $74b1: $01 $00 $27
    ld d, [hl]                                    ; $74b4: $56
    db $dd                                        ; $74b5: $dd
    ld b, [hl]                                    ; $74b6: $46
    ld l, $15                                     ; $74b7: $2e $15
    nop                                           ; $74b9: $00
    nop                                           ; $74ba: $00
    ld d, e                                       ; $74bb: $53
    ld l, a                                       ; $74bc: $6f
    db $dd                                        ; $74bd: $dd
    ld a, [hl+]                                   ; $74be: $2a
    rrca                                          ; $74bf: $0f
    jr nc, jr_0d1_74c3                            ; $74c0: $30 $01

    nop                                           ; $74c2: $00

jr_0d1_74c3:
    sub c                                         ; $74c3: $91
    inc h                                         ; $74c4: $24
    ld e, a                                       ; $74c5: $5f
    inc bc                                        ; $74c6: $03
    ld e, e                                       ; $74c7: $5b
    ld l, e                                       ; $74c8: $6b
    ld [bc], a                                    ; $74c9: $02
    nop                                           ; $74ca: $00
    xor d                                         ; $74cb: $aa
    add hl, sp                                    ; $74cc: $39
    cp l                                          ; $74cd: $bd
    ld a, $d2                                     ; $74ce: $3e $d2
    ld h, d                                       ; $74d0: $62
    ld [hl], b                                    ; $74d1: $70
    dec e                                         ; $74d2: $1d
    cp l                                          ; $74d3: $bd
    ld a, $bd                                     ; $74d4: $3e $bd
    ld a, $d2                                     ; $74d6: $3e $d2
    ld h, d                                       ; $74d8: $62
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    xor [hl]                                      ; $74db: $ae
    ld sp, $7ffc                                  ; $74dc: $31 $fc $7f
    ld e, $17                                     ; $74df: $1e $17
    ld bc, $3800                                  ; $74e1: $01 $00 $38
    ld d, $dd                                     ; $74e4: $16 $dd
    ld a, e                                       ; $74e6: $7b
    db $10                                        ; $74e7: $10
    inc [hl]                                      ; $74e8: $34
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    ld a, b                                       ; $74eb: $78
    ld b, d                                       ; $74ec: $42
    db $dd                                        ; $74ed: $dd
    ld a, e                                       ; $74ee: $7b
    ld [hl], b                                    ; $74ef: $70
    dec e                                         ; $74f0: $1d
    ld bc, $bd00                                  ; $74f1: $01 $00 $bd
    ld a, $70                                     ; $74f4: $3e $70
    dec e                                         ; $74f6: $1d
    add b                                         ; $74f7: $80
    inc d                                         ; $74f8: $14
    jr nz, jr_0d1_74ff                            ; $74f9: $20 $04

    xor e                                         ; $74fb: $ab
    dec [hl]                                      ; $74fc: $35
    ld e, a                                       ; $74fd: $5f
    inc bc                                        ; $74fe: $03

jr_0d1_74ff:
    inc de                                        ; $74ff: $13
    ld h, e                                       ; $7500: $63

jr_0d1_7501:
    ld bc, $3a00                                  ; $7501: $01 $00 $3a
    ld a, [bc]                                    ; $7504: $0a
    cp e                                          ; $7505: $bb
    ld [hl], a                                    ; $7506: $77
    ld de, $0038                                  ; $7507: $11 $38 $00
    nop                                           ; $750a: $00
    cp l                                          ; $750b: $bd
    ld a, $7a                                     ; $750c: $3e $7a
    ld [hl], e                                    ; $750e: $73
    ld [hl], b                                    ; $750f: $70
    dec e                                         ; $7510: $1d
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    ld b, h                                       ; $7513: $44
    add hl, hl                                    ; $7514: $29
    ld [hl], b                                    ; $7515: $70
    dec e                                         ; $7516: $1d
    and c                                         ; $7517: $a1
    jr jr_0d1_751a                                ; $7518: $18 $00

jr_0d1_751a:
    nop                                           ; $751a: $00
    ld l, [hl]                                    ; $751b: $6e
    ld c, [hl]                                    ; $751c: $4e
    ld e, a                                       ; $751d: $5f
    inc bc                                        ; $751e: $03
    ld c, [hl]                                    ; $751f: $4e
    inc [hl]                                      ; $7520: $34
    ld bc, $cf00                                  ; $7521: $01 $00 $cf
    add hl, sp                                    ; $7524: $39
    ld e, a                                       ; $7525: $5f
    inc bc                                        ; $7526: $03
    ld e, e                                       ; $7527: $5b
    ld bc, $0000                                  ; $7528: $01 $00 $00
    ld [hl], b                                    ; $752b: $70
    dec e                                         ; $752c: $1d
    call c, Call_0d1_4f4a                         ; $752d: $dc $4a $4f
    ld c, [hl]                                    ; $7530: $4e
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    ld l, l                                       ; $7533: $6d
    ld hl, $3a98                                  ; $7534: $21 $98 $3a
    ld b, d                                       ; $7537: $42
    add hl, hl                                    ; $7538: $29
    jr nz, jr_0d1_753f                            ; $7539: $20 $04

    ld l, [hl]                                    ; $753b: $6e
    ld c, [hl]                                    ; $753c: $4e
    ld e, a                                       ; $753d: $5f
    inc bc                                        ; $753e: $03

jr_0d1_753f:
    ld [de], a                                    ; $753f: $12
    jr c, jr_0d1_7543                             ; $7540: $38 $01

    nop                                           ; $7542: $00

jr_0d1_7543:
    jp z, $5d39                                   ; $7543: $ca $39 $5d

    ld [bc], a                                    ; $7546: $02
    sub l                                         ; $7547: $95
    ld [hl], e                                    ; $7548: $73
    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    xor c                                         ; $754b: $a9
    dec a                                         ; $754c: $3d
    cp l                                          ; $754d: $bd
    ld a, $70                                     ; $754e: $3e $70
    dec e                                         ; $7550: $1d
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    adc a                                         ; $7553: $8f
    ld d, d                                       ; $7554: $52
    ld h, l                                       ; $7555: $65
    dec l                                         ; $7556: $2d
    ld sp, $4115                                  ; $7557: $31 $15 $41
    ld [$4a4d], sp                                ; $755a: $08 $4d $4a
    ld e, a                                       ; $755d: $5f
    inc bc                                        ; $755e: $03
    ld [$0221], sp                                ; $755f: $08 $21 $02
    nop                                           ; $7562: $00
    adc [hl]                                      ; $7563: $8e
    ld d, d                                       ; $7564: $52
    ld e, l                                       ; $7565: $5d
    ld [bc], a                                    ; $7566: $02
    ld hl, sp+$7f                                 ; $7567: $f8 $7f
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    or e                                          ; $756b: $b3
    ld hl, $462b                                  ; $756c: $21 $2b $46
    ld [hl+], a                                   ; $756f: $22
    add hl, hl                                    ; $7570: $29
    add $39                                       ; $7571: $c6 $39
    pop af                                        ; $7573: $f1
    ld e, [hl]                                    ; $7574: $5e
    ld l, [hl]                                    ; $7575: $6e
    ld c, [hl]                                    ; $7576: $4e
    sub l                                         ; $7577: $95
    ld [hl], e                                    ; $7578: $73
    ld hl, $5f04                                  ; $7579: $21 $04 $5f
    inc bc                                        ; $757c: $03
    ld l, b                                       ; $757d: $68
    dec l                                         ; $757e: $2d
    ld c, l                                       ; $757f: $4d
    ld c, d                                       ; $7580: $4a
    ld [bc], a                                    ; $7581: $02
    nop                                           ; $7582: $00
    ld e, e                                       ; $7583: $5b
    ld bc, $035f                                  ; $7584: $01 $5f $03
    ld c, l                                       ; $7587: $4d
    ld c, d                                       ; $7588: $4a
    ld e, e                                       ; $7589: $5b
    ld bc, $035f                                  ; $758a: $01 $5f $03
    ld e, a                                       ; $758d: $5f
    inc bc                                        ; $758e: $03
    ld c, l                                       ; $758f: $4d
    ld c, d                                       ; $7590: $4a
    ld e, e                                       ; $7591: $5b
    ld bc, $035f                                  ; $7592: $01 $5f $03
    ld e, a                                       ; $7595: $5f

Call_0d1_7596:
    inc bc                                        ; $7596: $03
    ld c, l                                       ; $7597: $4d
    ld c, d                                       ; $7598: $4a
    ld [bc], a                                    ; $7599: $02
    nop                                           ; $759a: $00
    ld e, e                                       ; $759b: $5b
    ld bc, $035f                                  ; $759c: $01 $5f $03
    ld c, l                                       ; $759f: $4d
    ld c, d                                       ; $75a0: $4a

    db $02, $00, $13, $11, $5f, $03, $5b, $01, $45, $18, $5f, $03, $13, $11, $5b, $01
    db $13, $11, $5f, $03, $13, $11, $5b, $01, $02, $00, $5f, $03, $13, $11, $5b, $01
    db $02, $00, $b6, $60, $5f, $03, $14, $0d, $45, $18, $f7, $64, $be, $7d, $13, $11
    db $45, $18, $13, $11, $be, $7d, $13, $11, $02, $00, $5f, $03, $13, $11, $13, $11
    db $02, $00, $93, $50, $5f, $03, $15, $09, $45, $18, $1a, $71, $df, $7e, $10, $45
    db $45, $18, $13, $11, $32, $4d, $38, $66, $02, $00, $5f, $03, $13, $11, $38, $66
    db $02, $00, $71, $4c, $5f, $03, $34, $09, $45, $18, $d4, $58, $fa, $70, $3d, $79
    db $45, $18, $1b, $75, $31, $11, $bf, $7e, $02, $00, $5f, $03, $51, $11, $32, $11
    db $02, $00, $3c, $79, $74, $0d, $5f, $03, $00, $00, $11, $4d, $9c, $73, $1b, $75
    db $01, $08, $54, $59, $7f, $7f, $91, $15, $02, $00, $5f, $03, $b0, $15, $71, $15
    db $02, $00, $95, $09, $1a, $71, $5f, $03, $42, $08, $34, $3e, $1c, $75, $bd, $77
    db $01, $04, $56, $3a, $df, $7f, $09, $1d, $02, $00, $cf, $15, $5f, $03, $45, $18
    db $02, $00, $b4, $0d, $d7, $64, $5f, $03, $00, $00, $51, $35, $bb, $46, $c9, $10
    db $00, $00, $1f, $4f, $ca, $10, $72, $1d, $46, $00, $9e, $36, $0e, $1a, $5f, $03
    db $02, $00, $b4, $15, $ff, $26, $0b, $34, $00, $00, $97, $7f, $c2, $5d, $0d, $15
    db $c2, $5d, $df, $42, $aa, $08, $97, $7f, $02, $00, $4d, $1a, $3f, $17, $c9, $0c
    db $02, $00, $8c, $1a, $1f, $23, $77, $11, $66, $04, $5b, $32, $c2, $5d, $98, $7f
    db $00, $00, $dd, $46, $c2, $5d, $cb, $0c, $a5, $14, $8c, $1a, $5f, $03, $94, $56
    db $01, $00, $56, $0d, $de, $22, $e9, $1c, $00, $00, $93, $5a, $9d, $3a, $0a, $1d
    db $42, $08, $15, $36, $1c, $57, $4d, $1d, $21, $04, $5f, $03, $d6, $5a, $29, $25
    db $01, $00, $1b, $06, $f6, $5e, $28, $29, $63, $0c, $d5, $5a, $4a, $29, $a5, $14
    db $00, $00, $92, $5a, $a7, $10, $3a, $2e, $01, $00, $7c, $73, $5f, $03, $c6, $18
    db $01, $00, $5d, $02, $94, $52, $08, $21, $00, $00, $84, $10, $e7, $1c, $08, $21
    db $00, $04, $51, $4a, $fe, $4a, $c8, $14, $43, $08, $5b, $6f, $5f, $03, $29, $25
    db $01, $00, $73, $4e, $5d, $02, $e7, $1c, $63, $0c, $31, $46, $7b, $6f, $08, $21
    db $42, $08, $52, $4a, $4a, $29, $7b, $6f, $01, $00, $3a, $6b, $5f, $03, $e7, $1c
    db $01, $00, $5d, $02, $39, $67, $c6, $18, $63, $0c, $31, $46, $e7, $1c, $39, $67
    db $63, $0c, $31, $46, $6b, $2d, $18, $63, $42, $08, $d6, $5a, $5f, $03, $e7, $1c
    db $01, $00, $5d, $02, $d6, $5a, $c6, $18, $63, $0c, $18, $63, $e7, $1c, $29, $25
    db $63, $0c, $ee, $39, $f8, $62, $6b, $2d, $42, $08, $52, $4a, $5f, $03, $08, $21
    db $02, $00, $5b, $01, $5f, $03, $08, $21, $5b, $01, $5f, $03, $5f, $03, $08, $21
    db $5b, $01, $5f, $03, $5f, $03, $08, $21, $02, $00, $5b, $01, $5f, $03, $08, $21

    ld [bc], a                                    ; $77a1: $02
    nop                                           ; $77a2: $00
    ld d, $00                                     ; $77a3: $16 $00
    ld e, a                                       ; $77a5: $5f
    inc bc                                        ; $77a6: $03
    ld e, e                                       ; $77a7: $5b
    ld bc, $1481                                  ; $77a8: $01 $81 $14
    ld e, a                                       ; $77ab: $5f
    inc bc                                        ; $77ac: $03
    jr nz, jr_0d1_781a                            ; $77ad: $20 $6b

    ret nz                                        ; $77af: $c0

    ld l, b                                       ; $77b0: $68
    nop                                           ; $77b1: $00
    jr jr_0d1_7813                                ; $77b2: $18 $5f

    inc bc                                        ; $77b4: $03
    ldh [$75], a                                  ; $77b5: $e0 $75
    ld b, b                                       ; $77b7: $40
    ld h, e                                       ; $77b8: $63
    ld bc, $5f00                                  ; $77b9: $01 $00 $5f
    inc bc                                        ; $77bc: $03
    ld b, b                                       ; $77bd: $40
    ld l, [hl]                                    ; $77be: $6e
    ld d, $00                                     ; $77bf: $16 $00
    ld bc, $1600                                  ; $77c1: $01 $00 $16
    nop                                           ; $77c4: $00
    ld e, a                                       ; $77c5: $5f
    inc bc                                        ; $77c6: $03
    ld e, e                                       ; $77c7: $5b
    ld bc, $1861                                  ; $77c8: $01 $61 $18
    ld b, $42                                     ; $77cb: $06 $42
    cp a                                          ; $77cd: $bf
    ld a, a                                       ; $77ce: $7f
    add b                                         ; $77cf: $80
    ld l, a                                       ; $77d0: $6f
    ld h, c                                       ; $77d1: $61
    jr @-$3e                                      ; $77d2: $18 $c0

    ld c, [hl]                                    ; $77d4: $4e
    and b                                         ; $77d5: $a0
    ld l, a                                       ; $77d6: $6f
    xor a                                         ; $77d7: $af
    ld d, d                                       ; $77d8: $52
    nop                                           ; $77d9: $00
    stop                                          ; $77da: $10 $00
    ld l, [hl]                                    ; $77dc: $6e
    sbc a                                         ; $77dd: $9f
    ccf                                           ; $77de: $3f
    ld d, $00                                     ; $77df: $16 $00
    ld bc, $5700                                  ; $77e1: $01 $00 $57
    nop                                           ; $77e4: $00
    add b                                         ; $77e5: $80
    ld [hl], $5f                                  ; $77e6: $36 $5f
    inc bc                                        ; $77e8: $03
    ld b, c                                       ; $77e9: $41
    ld [$7ae0], sp                                ; $77ea: $08 $e0 $7a
    rst $38                                       ; $77ed: $ff
    ld a, a                                       ; $77ee: $7f
    ret nz                                        ; $77ef: $c0

    dec [hl]                                      ; $77f0: $35
    and b                                         ; $77f1: $a0
    inc d                                         ; $77f2: $14
    ld h, b                                       ; $77f3: $60
    ld a, $ff                                     ; $77f4: $3e $ff
    ld a, a                                       ; $77f6: $7f
    ret nz                                        ; $77f7: $c0

    ld l, a                                       ; $77f8: $6f
    ld b, b                                       ; $77f9: $40
    inc b                                         ; $77fa: $04
    ld d, $00                                     ; $77fb: $16 $00
    add b                                         ; $77fd: $80
    ld c, b                                       ; $77fe: $48
    ld e, a                                       ; $77ff: $5f
    inc bc                                        ; $7800: $03
    ld bc, $5700                                  ; $7801: $01 $00 $57
    nop                                           ; $7804: $00
    ld e, a                                       ; $7805: $5f
    inc bc                                        ; $7806: $03
    ret nz                                        ; $7807: $c0

    ld l, l                                       ; $7808: $6d
    ld b, b                                       ; $7809: $40
    db $10                                        ; $780a: $10
    ret nz                                        ; $780b: $c0

    ld e, a                                       ; $780c: $5f
    ld h, b                                       ; $780d: $60
    ld a, h                                       ; $780e: $7c
    ldh [rNR51], a                                ; $780f: $e0 $25
    ld b, b                                       ; $7811: $40
    inc d                                         ; $7812: $14

jr_0d1_7813:
    ld b, b                                       ; $7813: $40
    ld a, [hl]                                    ; $7814: $7e
    rst $38                                       ; $7815: $ff
    ld a, a                                       ; $7816: $7f
    add b                                         ; $7817: $80
    ld e, e                                       ; $7818: $5b
    add b                                         ; $7819: $80

jr_0d1_781a:
    db $10                                        ; $781a: $10
    ld h, b                                       ; $781b: $60
    ld c, a                                       ; $781c: $4f
    ld e, a                                       ; $781d: $5f
    inc bc                                        ; $781e: $03
    ld d, $00                                     ; $781f: $16 $00
    ld bc, $5700                                  ; $7821: $01 $00 $57
    nop                                           ; $7824: $00
    ld a, a                                       ; $7825: $7f
    dec hl                                        ; $7826: $2b
    nop                                           ; $7827: $00
    ld d, c                                       ; $7828: $51
    and a                                         ; $7829: $a7
    nop                                           ; $782a: $00
    call c, Call_0d1_634e                         ; $782b: $dc $4e $63
    ld b, b                                       ; $782e: $40
    ret z                                         ; $782f: $c8

    ld e, h                                       ; $7830: $5c
    ld hl, $290c                                  ; $7831: $21 $0c $29
    ld e, c                                       ; $7834: $59
    rst $38                                       ; $7835: $ff
    ld a, a                                       ; $7836: $7f
    ld b, b                                       ; $7837: $40

Jump_0d1_7838:
    ld d, b                                       ; $7838: $50
    and b                                         ; $7839: $a0
    ld [$0016], sp                                ; $783a: $08 $16 $00
    and b                                         ; $783d: $a0
    ld e, e                                       ; $783e: $5b
    ld e, a                                       ; $783f: $5f
    inc bc                                        ; $7840: $03
    ld bc, $7600                                  ; $7841: $01 $00 $76
    nop                                           ; $7844: $00
    ld e, a                                       ; $7845: $5f
    inc bc                                        ; $7846: $03
    ld b, b                                       ; $7847: $40
    ld b, h                                       ; $7848: $44
    ld bc, $9a00                                  ; $7849: $01 $00 $9a
    ld l, $4e                                     ; $784c: $2e $4e
    add hl, bc                                    ; $784e: $09
    ccf                                           ; $784f: $3f
    ld c, e                                       ; $7850: $4b
    nop                                           ; $7851: $00
    inc b                                         ; $7852: $04
    ld [hl], $36                                  ; $7853: $36 $36
    ld b, b                                       ; $7855: $40
    ld a, c                                       ; $7856: $79
    ccf                                           ; $7857: $3f
    ld c, e                                       ; $7858: $4b
    inc hl                                        ; $7859: $23
    nop                                           ; $785a: $00
    cp $1e                                        ; $785b: $fe $1e
    dec [hl]                                      ; $785d: $35
    nop                                           ; $785e: $00
    adc [hl]                                      ; $785f: $8e
    dec h                                         ; $7860: $25
    ld [bc], a                                    ; $7861: $02
    nop                                           ; $7862: $00
    ld [hl], h                                    ; $7863: $74
    nop                                           ; $7864: $00
    ld e, a                                       ; $7865: $5f
    inc bc                                        ; $7866: $03
    ld e, e                                       ; $7867: $5b
    ld bc, $2420                                  ; $7868: $01 $20 $24
    sbc a                                         ; $786b: $9f
    ld h, a                                       ; $786c: $67
    and b                                         ; $786d: $a0
    ld a, l                                       ; $786e: $7d
    ld bc, $2300                                  ; $786f: $01 $00 $23
    inc b                                         ; $7872: $04
    ld b, b                                       ; $7873: $40
    ld a, [hl]                                    ; $7874: $7e
    nop                                           ; $7875: $00
    ld a, h                                       ; $7876: $7c
    cp a                                          ; $7877: $bf
    ld [hl], e                                    ; $7878: $73
    ld b, h                                       ; $7879: $44
    inc b                                         ; $787a: $04
    ld e, a                                       ; $787b: $5f
    inc bc                                        ; $787c: $03
    or d                                          ; $787d: $b2
    ld [$57bf], sp                                ; $787e: $08 $bf $57
    ld [bc], a                                    ; $7881: $02
    nop                                           ; $7882: $00
    sub e                                         ; $7883: $93
    nop                                           ; $7884: $00
    ld e, a                                       ; $7885: $5f
    inc bc                                        ; $7886: $03
    ld e, e                                       ; $7887: $5b
    ld bc, $0000                                  ; $7888: $01 $00 $00
    ld e, $4b                                     ; $788b: $1e $4b
    rst $38                                       ; $788d: $ff
    ld h, e                                       ; $788e: $63
    add [hl]                                      ; $788f: $86
    inc b                                         ; $7890: $04
    ld h, b                                       ; $7891: $60
    ld de, $4b1e                                  ; $7892: $11 $1e $4b
    rst $38                                       ; $7895: $ff
    ld l, a                                       ; $7896: $6f
    ld bc, $4000                                  ; $7897: $01 $00 $40
    nop                                           ; $789a: $00
    ld l, h                                       ; $789b: $6c
    ld h, a                                       ; $789c: $67
    or d                                          ; $789d: $b2
    inc b                                         ; $789e: $04
    ld e, a                                       ; $789f: $5f
    inc bc                                        ; $78a0: $03
    ld bc, $d400                                  ; $78a1: $01 $00 $d4
    nop                                           ; $78a4: $00
    ld e, a                                       ; $78a5: $5f
    inc bc                                        ; $78a6: $03
    ldh [$39], a                                  ; $78a7: $e0 $39
    inc hl                                        ; $78a9: $23
    inc b                                         ; $78aa: $04
    jr jr_0d1_78d7                                ; $78ab: $18 $2a

    ccf                                           ; $78ad: $3f
    ld c, a                                       ; $78ae: $4f
    cp d                                          ; $78af: $ba
    ld a, [hl-]                                   ; $78b0: $3a
    ld bc, $1f00                                  ; $78b1: $01 $00 $1f
    ld c, e                                       ; $78b4: $4b
    cp a                                          ; $78b5: $bf
    ld e, e                                       ; $78b6: $5b
    ld h, b                                       ; $78b7: $60
    ld de, $0040                                  ; $78b8: $11 $40 $00
    jr nz, @+$4d                                  ; $78bb: $20 $4b

    ld e, a                                       ; $78bd: $5f
    inc bc                                        ; $78be: $03
    or d                                          ; $78bf: $b2
    nop                                           ; $78c0: $00
    ld bc, $0000                                  ; $78c1: $01 $00 $00
    ld e, e                                       ; $78c4: $5b
    ld e, a                                       ; $78c5: $5f
    inc bc                                        ; $78c6: $03
    push af                                       ; $78c7: $f5
    nop                                           ; $78c8: $00
    jp nz, Jump_000_3f10                          ; $78c9: $c2 $10 $3f

    ld c, a                                       ; $78cc: $4f
    pop hl                                        ; $78cd: $e1
    ld e, b                                       ; $78ce: $58
    ld [de], a                                    ; $78cf: $12
    dec h                                         ; $78d0: $25
    ld bc, $5f00                                  ; $78d1: $01 $00 $5f
    ld c, a                                       ; $78d4: $4f
    ldh [$29], a                                  ; $78d5: $e0 $29

jr_0d1_78d7:
    jp nc, $2104                                  ; $78d7: $d2 $04 $21

    inc b                                         ; $78da: $04
    ldh [rDMA], a                                 ; $78db: $e0 $46
    ld e, a                                       ; $78dd: $5f
    inc bc                                        ; $78de: $03
    jp nc, $0104                                  ; $78df: $d2 $04 $01

    nop                                           ; $78e2: $00
    jr nz, jr_0d1_7944                            ; $78e3: $20 $5f

    ld e, a                                       ; $78e5: $5f
    inc bc                                        ; $78e6: $03
    ld e, e                                       ; $78e7: $5b
    ld bc, $0c60                                  ; $78e8: $01 $60 $0c
    inc sp                                        ; $78eb: $33
    ld b, [hl]                                    ; $78ec: $46
    db $e3                                        ; $78ed: $e3
    ld e, h                                       ; $78ee: $5c
    ccf                                           ; $78ef: $3f
    ld c, a                                       ; $78f0: $4f
    ld [bc], a                                    ; $78f1: $02
    nop                                           ; $78f2: $00
    ld a, a                                       ; $78f3: $7f
    ld d, e                                       ; $78f4: $53
    ret nz                                        ; $78f5: $c0

    add hl, hl                                    ; $78f6: $29
    dec hl                                        ; $78f7: $2b
    add hl, de                                    ; $78f8: $19
    inc h                                         ; $78f9: $24
    nop                                           ; $78fa: $00
    nop                                           ; $78fb: $00
    ld l, $5f                                     ; $78fc: $2e $5f
    inc bc                                        ; $78fe: $03
    ldh [$5f], a                                  ; $78ff: $e0 $5f
    ld bc, $c000                                  ; $7901: $01 $00 $c0
    ld [hl], e                                    ; $7904: $73
    dec d                                         ; $7905: $15
    ld bc, $035f                                  ; $7906: $01 $5f $03
    ld bc, $1e00                                  ; $7909: $01 $00 $1e
    ld b, a                                       ; $790c: $47
    nop                                           ; $790d: $00
    dec e                                         ; $790e: $1d
    and a                                         ; $790f: $a7
    nop                                           ; $7910: $00
    ld b, c                                       ; $7911: $41
    inc b                                         ; $7912: $04
    ccf                                           ; $7913: $3f
    ld c, a                                       ; $7914: $4f
    ld b, b                                       ; $7915: $40
    ld [hl], $92                                  ; $7916: $36 $92
    ld hl, $0440                                  ; $7918: $21 $40 $04
    add b                                         ; $791b: $80
    ld e, a                                       ; $791c: $5f
    ld e, a                                       ; $791d: $5f
    inc bc                                        ; $791e: $03
    pop af                                        ; $791f: $f1
    inc b                                         ; $7920: $04
    ld bc, $0000                                  ; $7921: $01 $00 $00
    ld hl, $0196                                  ; $7924: $21 $96 $01
    ret nz                                        ; $7927: $c0

    ld [hl], e                                    ; $7928: $73
    ld b, d                                       ; $7929: $42
    ld [$471e], sp                                ; $792a: $08 $1e $47
    sub d                                         ; $792d: $92
    ld hl, $1d00                                  ; $792e: $21 $00 $1d
    ld b, b                                       ; $7931: $40
    inc b                                         ; $7932: $04
    ccf                                           ; $7933: $3f
    ld c, a                                       ; $7934: $4f
    jr nz, @+$51                                  ; $7935: $20 $4f

    and b                                         ; $7937: $a0
    dec h                                         ; $7938: $25
    jr nz, jr_0d1_793f                            ; $7939: $20 $04

    nop                                           ; $793b: $00
    ld c, a                                       ; $793c: $4f
    ld e, a                                       ; $793d: $5f
    inc bc                                        ; $793e: $03

jr_0d1_793f:
    ld de, $0105                                  ; $793f: $11 $05 $01
    nop                                           ; $7942: $00
    and b                                         ; $7943: $a0

jr_0d1_7944:
    ld l, a                                       ; $7944: $6f
    ld e, a                                       ; $7945: $5f
    inc bc                                        ; $7946: $03
    scf                                           ; $7947: $37
    ld bc, $0c61                                  ; $7948: $01 $61 $0c
    add b                                         ; $794b: $80
    ld l, a                                       ; $794c: $6f
    jr nz, jr_0d1_7970                            ; $794d: $20 $21

    and b                                         ; $794f: $a0
    dec [hl]                                      ; $7950: $35
    jr nz, jr_0d1_7953                            ; $7951: $20 $00

jr_0d1_7953:
    ret nz                                        ; $7953: $c0

    add hl, hl                                    ; $7954: $29
    pop bc                                        ; $7955: $c1
    ld h, a                                       ; $7956: $67
    ld b, b                                       ; $7957: $40
    ld [hl], $01                                  ; $7958: $36 $01
    nop                                           ; $795a: $00
    ld e, a                                       ; $795b: $5f
    inc bc                                        ; $795c: $03
    nop                                           ; $795d: $00
    dec e                                         ; $795e: $1d
    ld h, b                                       ; $795f: $60
    add hl, hl                                    ; $7960: $29
    ld bc, $4000                                  ; $7961: $01 $00 $40
    ld h, e                                       ; $7964: $63
    ld e, a                                       ; $7965: $5f
    inc bc                                        ; $7966: $03
    ld e, e                                       ; $7967: $5b
    ld bc, $0420                                  ; $7968: $01 $20 $04
    add b                                         ; $796b: $80
    ld a, [hl-]                                   ; $796c: $3a
    ld h, b                                       ; $796d: $60
    dec h                                         ; $796e: $25
    ld h, b                                       ; $796f: $60

jr_0d1_7970:
    ld l, e                                       ; $7970: $6b
    nop                                           ; $7971: $00
    inc b                                         ; $7972: $04
    and b                                         ; $7973: $a0
    ld a, $80                                     ; $7974: $3e $80
    add hl, hl                                    ; $7976: $29
    and c                                         ; $7977: $a1
    ld e, a                                       ; $7978: $5f
    nop                                           ; $7979: $00
    ld hl, $6fa0                                  ; $797a: $21 $a0 $6f
    ld e, a                                       ; $797d: $5f
    inc bc                                        ; $797e: $03
    ld [bc], a                                    ; $797f: $02
    nop                                           ; $7980: $00
    ld [bc], a                                    ; $7981: $02
    nop                                           ; $7982: $00
    ld e, e                                       ; $7983: $5b
    ld bc, $035f                                  ; $7984: $01 $5f $03
    ld [bc], a                                    ; $7987: $02
    nop                                           ; $7988: $00
    ld e, e                                       ; $7989: $5b
    ld bc, $035f                                  ; $798a: $01 $5f $03
    ld e, a                                       ; $798d: $5f
    inc bc                                        ; $798e: $03
    ld [bc], a                                    ; $798f: $02
    nop                                           ; $7990: $00
    ld e, e                                       ; $7991: $5b
    ld bc, $035f                                  ; $7992: $01 $5f $03
    ld e, a                                       ; $7995: $5f
    inc bc                                        ; $7996: $03
    ld [bc], a                                    ; $7997: $02
    nop                                           ; $7998: $00
    ld [bc], a                                    ; $7999: $02
    nop                                           ; $799a: $00
    ld e, e                                       ; $799b: $5b
    ld bc, $035f                                  ; $799c: $01 $5f $03
    ld [bc], a                                    ; $799f: $02
    nop                                           ; $79a0: $00
    ld [bc], a                                    ; $79a1: $02
    nop                                           ; $79a2: $00
    ld e, e                                       ; $79a3: $5b
    ld bc, $1359                                  ; $79a4: $01 $59 $13
    ld e, a                                       ; $79a7: $5f
    inc bc                                        ; $79a8: $03
    inc b                                         ; $79a9: $04
    db $10                                        ; $79aa: $10
    jr c, jr_0d1_7a0b                             ; $79ab: $38 $5e

    ld e, a                                       ; $79ad: $5f
    inc bc                                        ; $79ae: $03
    ldh a, [$3c]                                  ; $79af: $f0 $3c
    inc h                                         ; $79b1: $24
    inc b                                         ; $79b2: $04
    ld e, [hl]                                    ; $79b3: $5e
    ld a, [hl-]                                   ; $79b4: $3a
    ld e, a                                       ; $79b5: $5f
    inc bc                                        ; $79b6: $03
    dec de                                        ; $79b7: $1b
    ld bc, $0002                                  ; $79b8: $01 $02 $00
    ld e, [hl]                                    ; $79bb: $5e
    ld a, [hl-]                                   ; $79bc: $3a
    ld e, a                                       ; $79bd: $5f
    inc bc                                        ; $79be: $03
    sub c                                         ; $79bf: $91
    nop                                           ; $79c0: $00
    ld [bc], a                                    ; $79c1: $02
    nop                                           ; $79c2: $00
    ld e, e                                       ; $79c3: $5b
    ld bc, $6a79                                  ; $79c4: $01 $79 $6a
    ld e, d                                       ; $79c7: $5a
    dec bc                                        ; $79c8: $0b
    ld [bc], a                                    ; $79c9: $02
    inc b                                         ; $79ca: $04
    push af                                       ; $79cb: $f5
    ld d, l                                       ; $79cc: $55
    inc c                                         ; $79cd: $0c
    ld sp, $72bd                                  ; $79ce: $31 $bd $72
    ld bc, $bf0c                                  ; $79d1: $01 $0c $bf
    ld b, [hl]                                    ; $79d4: $46
    ld c, l                                       ; $79d5: $4d
    add hl, de                                    ; $79d6: $19
    push de                                       ; $79d7: $d5
    nop                                           ; $79d8: $00
    daa                                           ; $79d9: $27
    nop                                           ; $79da: $00
    ld a, [$bf04]                                 ; $79db: $fa $04 $bf
    ld b, [hl]                                    ; $79de: $46
    ld e, a                                       ; $79df: $5f
    inc bc                                        ; $79e0: $03
    ld bc, $f900                                  ; $79e1: $01 $00 $f9
    nop                                           ; $79e4: $00
    inc a                                         ; $79e5: $3c
    inc de                                        ; $79e6: $13
    xor c                                         ; $79e7: $a9
    inc c                                         ; $79e8: $0c
    ld [hl+], a                                   ; $79e9: $22
    nop                                           ; $79ea: $00
    ld [hl], b                                    ; $79eb: $70
    ld c, c                                       ; $79ec: $49
    or l                                          ; $79ed: $b5
    nop                                           ; $79ee: $00
    rra                                           ; $79ef: $1f
    ld a, a                                       ; $79f0: $7f

jr_0d1_79f1:
    inc bc                                        ; $79f1: $03
    inc c                                         ; $79f2: $0c
    ld d, b                                       ; $79f3: $50
    ld b, c                                       ; $79f4: $41
    cp $66                                        ; $79f5: $fe $66
    ld e, a                                       ; $79f7: $5f
    ld bc, $0002                                  ; $79f8: $01 $02 $00
    ld a, [$5f04]                                 ; $79fb: $fa $04 $5f
    inc bc                                        ; $79fe: $03
    ld l, [hl]                                    ; $79ff: $6e
    nop                                           ; $7a00: $00
    ld bc, $d900                                  ; $7a01: $01 $00 $d9
    nop                                           ; $7a04: $00
    sbc [hl]                                      ; $7a05: $9e
    ld d, $2b                                     ; $7a06: $16 $2b
    nop                                           ; $7a08: $00
    add a                                         ; $7a09: $87
    db $10                                        ; $7a0a: $10

jr_0d1_7a0b:
    ld e, h                                       ; $7a0b: $5c
    ld a, $53                                     ; $7a0c: $3e $53
    nop                                           ; $7a0e: $00
    sbc [hl]                                      ; $7a0f: $9e
    ld l, e                                       ; $7a10: $6b
    ld bc, $fc08                                  ; $7a11: $01 $08 $fc
    halt                                          ; $7a14: $76
    ld [hl], b                                    ; $7a15: $70
    nop                                           ; $7a16: $00
    ld c, d                                       ; $7a17: $4a
    inc h                                         ; $7a18: $24
    inc bc                                        ; $7a19: $03
    nop                                           ; $7a1a: $00
    inc a                                         ; $7a1b: $3c
    dec b                                         ; $7a1c: $05
    ld e, a                                       ; $7a1d: $5f

Jump_0d1_7a1e:
    inc bc                                        ; $7a1e: $03
    adc [hl]                                      ; $7a1f: $8e
    nop                                           ; $7a20: $00
    ld [bc], a                                    ; $7a21: $02
    nop                                           ; $7a22: $00
    dec [hl]                                      ; $7a23: $35
    dec c                                         ; $7a24: $0d
    rst $18                                       ; $7a25: $df
    ld c, $45                                     ; $7a26: $0e $45
    dec l                                         ; $7a28: $2d
    ld bc, $db00                                  ; $7a29: $01 $00 $db
    add hl, hl                                    ; $7a2c: $29
    db $eb                                        ; $7a2d: $eb
    inc d                                         ; $7a2e: $14
    db $dd                                        ; $7a2f: $dd
    ld b, [hl]                                    ; $7a30: $46
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    db $d3                                        ; $7a33: $d3
    inc c                                         ; $7a34: $0c
    add hl, sp                                    ; $7a35: $39
    ld b, d                                       ; $7a36: $42
    ld l, c                                       ; $7a37: $69
    stop                                          ; $7a38: $10 $00
    nop                                           ; $7a3a: $00
    ld e, a                                       ; $7a3b: $5f
    inc bc                                        ; $7a3c: $03
    adc a                                         ; $7a3d: $8f
    nop                                           ; $7a3e: $00
    dec b                                         ; $7a3f: $05
    inc e                                         ; $7a40: $1c
    ld bc, $7b00                                  ; $7a41: $01 $00 $7b
    ld de, $4e99                                  ; $7a44: $11 $99 $4e
    ld e, d                                       ; $7a47: $5a
    rrca                                          ; $7a48: $0f
    ret                                           ; $7a49: $c9


    inc d                                         ; $7a4a: $14
    ld a, [$1f2d]                                 ; $7a4b: $fa $2d $1f
    ld d, e                                       ; $7a4e: $53
    or b                                          ; $7a4f: $b0
    ld [$0844], sp                                ; $7a50: $08 $44 $08
    dec sp                                        ; $7a53: $3b
    ld [hl-], a                                   ; $7a54: $32
    sub $08                                       ; $7a55: $d6 $08
    ld e, a                                       ; $7a57: $5f
    ld e, a                                       ; $7a58: $5f
    ld bc, $5b04                                  ; $7a59: $01 $04 $5b
    dec bc                                        ; $7a5c: $0b
    ld c, b                                       ; $7a5d: $48
    jr nz, jr_0d1_79f1                            ; $7a5e: $20 $91

    nop                                           ; $7a60: $00
    ld [bc], a                                    ; $7a61: $02
    nop                                           ; $7a62: $00
    ld l, l                                       ; $7a63: $6d
    add hl, hl                                    ; $7a64: $29
    ld e, d                                       ; $7a65: $5a
    rrca                                          ; $7a66: $0f
    ld e, c                                       ; $7a67: $59
    dec c                                         ; $7a68: $0d
    ld l, c                                       ; $7a69: $69
    ld [$77df], sp                                ; $7a6a: $08 $df $77
    ld d, $11                                     ; $7a6d: $16 $11
    ret c                                         ; $7a6f: $d8

    add hl, hl                                    ; $7a70: $29
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    cp h                                          ; $7a73: $bc
    dec e                                         ; $7a74: $1d
    ccf                                           ; $7a75: $3f
    ld d, a                                       ; $7a76: $57
    ret                                           ; $7a77: $c9


    inc d                                         ; $7a78: $14
    ld bc, $dd00                                  ; $7a79: $01 $00 $dd
    dec h                                         ; $7a7c: $25
    ld e, d                                       ; $7a7d: $5a
    rrca                                          ; $7a7e: $0f
    add hl, hl                                    ; $7a7f: $29
    add hl, de                                    ; $7a80: $19
    ld bc, $5b00                                  ; $7a81: $01 $00 $5b
    ld bc, $7fff                                  ; $7a84: $01 $ff $7f
    ld e, e                                       ; $7a87: $5b
    dec bc                                        ; $7a88: $0b
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    inc a                                         ; $7a8b: $3c
    ld e, e                                       ; $7a8c: $5b
    ld b, d                                       ; $7a8d: $42
    ld h, h                                       ; $7a8e: $64
    ld l, b                                       ; $7a8f: $68
    ld sp, $0000                                  ; $7a90: $31 $00 $00
    ld e, h                                       ; $7a93: $5c
    ld a, $ea                                     ; $7a94: $3e $ea
    jr @+$01                                      ; $7a96: $18 $ff

    ld a, a                                       ; $7a98: $7f
    ld h, e                                       ; $7a99: $63
    inc c                                         ; $7a9a: $0c
    ld e, d                                       ; $7a9b: $5a
    ld de, $131d                                  ; $7a9c: $11 $1d $13
    dec l                                         ; $7a9f: $2d
    nop                                           ; $7aa0: $00
    ld [bc], a                                    ; $7aa1: $02
    nop                                           ; $7aa2: $00
    ld e, e                                       ; $7aa3: $5b
    ld bc, $7770                                  ; $7aa4: $01 $70 $77
    ld e, b                                       ; $7aa7: $58
    inc de                                        ; $7aa8: $13
    ld b, d                                       ; $7aa9: $42
    ld [$7ca5], sp                                ; $7aaa: $08 $a5 $7c
    db $fc                                        ; $7aad: $fc
    ld a, a                                       ; $7aae: $7f
    inc h                                         ; $7aaf: $24
    ld e, [hl]                                    ; $7ab0: $5e
    ld hl, $bd04                                  ; $7ab1: $21 $04 $bd
    ld b, [hl]                                    ; $7ab4: $46
    and l                                         ; $7ab5: $a5
    ld a, h                                       ; $7ab6: $7c
    pop de                                        ; $7ab7: $d1
    inc c                                         ; $7ab8: $0c
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    inc e                                         ; $7abb: $1c
    ld bc, $0f5a                                  ; $7abc: $01 $5a $0f
    adc c                                         ; $7abf: $89
    inc c                                         ; $7ac0: $0c
    ld bc, $9a00                                  ; $7ac1: $01 $00 $9a
    dec d                                         ; $7ac4: $15
    ld e, c                                       ; $7ac5: $59
    rrca                                          ; $7ac6: $0f
    inc l                                         ; $7ac7: $2c
    nop                                           ; $7ac8: $00
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    ld a, a                                       ; $7acb: $7f
    ld h, e                                       ; $7acc: $63
    ret z                                         ; $7acd: $c8

    inc d                                         ; $7ace: $14
    ld [hl], h                                    ; $7acf: $74
    ld hl, $0021                                  ; $7ad0: $21 $21 $00
    or h                                          ; $7ad3: $b4
    dec l                                         ; $7ad4: $2d
    rst $38                                       ; $7ad5: $ff
    ld d, d                                       ; $7ad6: $52
    ld e, $26                                     ; $7ad7: $1e $26
    ld [bc], a                                    ; $7ad9: $02
    inc b                                         ; $7ada: $04
    ld d, e                                       ; $7adb: $53
    dec de                                        ; $7adc: $1b
    dec bc                                        ; $7add: $0b
    jr z, jr_0d1_7b3f                             ; $7ade: $28 $5f

    inc bc                                        ; $7ae0: $03
    ld bc, $d800                                  ; $7ae1: $01 $00 $d8
    nop                                           ; $7ae4: $00
    ld e, b                                       ; $7ae5: $58
    rrca                                          ; $7ae6: $0f
    xor d                                         ; $7ae7: $aa
    db $10                                        ; $7ae8: $10
    ld c, $00                                     ; $7ae9: $0e $00
    ld a, h                                       ; $7aeb: $7c
    ld b, d                                       ; $7aec: $42
    dec [hl]                                      ; $7aed: $35
    dec e                                         ; $7aee: $1d
    rra                                           ; $7aef: $1f
    ld d, a                                       ; $7af0: $57
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    inc a                                         ; $7af3: $3c
    ld a, [hl-]                                   ; $7af4: $3a
    cpl                                           ; $7af5: $2f
    dec e                                         ; $7af6: $1d
    rst $38                                       ; $7af7: $ff
    ld d, d                                       ; $7af8: $52
    ld bc, $5200                                  ; $7af9: $01 $00 $52
    dec de                                        ; $7afc: $1b
    add hl, bc                                    ; $7afd: $09
    jr nz, jr_0d1_7b5f                            ; $7afe: $20 $5f

    inc bc                                        ; $7b00: $03
    ld bc, $5100                                  ; $7b01: $01 $00 $51
    rra                                           ; $7b04: $1f
    ld a, h                                       ; $7b05: $7c
    dec c                                         ; $7b06: $0d
    ld e, a                                       ; $7b07: $5f
    inc bc                                        ; $7b08: $03
    rrca                                          ; $7b09: $0f
    nop                                           ; $7b0a: $00
    ld d, c                                       ; $7b0b: $51
    rra                                           ; $7b0c: $1f
    rra                                           ; $7b0d: $1f
    ld d, a                                       ; $7b0e: $57
    ld a, e                                       ; $7b0f: $7b
    ld [$0001], sp                                ; $7b10: $08 $01 $00
    sub l                                         ; $7b13: $95
    dec h                                         ; $7b14: $25
    sbc $4e                                       ; $7b15: $de $4e
    ret                                           ; $7b17: $c9


    db $10                                        ; $7b18: $10
    ld bc, $ff00                                  ; $7b19: $01 $00 $ff
    ld a, [hl]                                    ; $7b1c: $7e
    ld e, b                                       ; $7b1d: $58
    rrca                                          ; $7b1e: $0f
    ld c, d                                       ; $7b1f: $4a
    inc h                                         ; $7b20: $24
    ld [bc], a                                    ; $7b21: $02
    nop                                           ; $7b22: $00
    ld c, a                                       ; $7b23: $4f
    rra                                           ; $7b24: $1f
    ld e, e                                       ; $7b25: $5b
    ld bc, $035f                                  ; $7b26: $01 $5f $03
    inc h                                         ; $7b29: $24
    ld [$1f4f], sp                                ; $7b2a: $08 $4f $1f
    cp $4e                                        ; $7b2d: $fe $4e
    ld d, e                                       ; $7b2f: $53
    ld hl, $0843                                  ; $7b30: $21 $43 $08
    jr @+$38                                      ; $7b33: $18 $36

    cp $6a                                        ; $7b35: $fe $6a
    cpl                                           ; $7b37: $2f
    ld de, $0401                                  ; $7b38: $11 $01 $04
    sub l                                         ; $7b3b: $95
    ld d, c                                       ; $7b3c: $51
    ld e, a                                       ; $7b3d: $5f
    inc bc                                        ; $7b3e: $03

jr_0d1_7b3f:
    add hl, bc                                    ; $7b3f: $09
    inc e                                         ; $7b40: $1c
    ld [bc], a                                    ; $7b41: $02
    nop                                           ; $7b42: $00
    ld c, [hl]                                    ; $7b43: $4e
    inc hl                                        ; $7b44: $23
    ld e, e                                       ; $7b45: $5b
    ld bc, $035f                                  ; $7b46: $01 $5f $03
    ld [hl+], a                                   ; $7b49: $22
    inc b                                         ; $7b4a: $04
    push af                                       ; $7b4b: $f5
    ld c, c                                       ; $7b4c: $49
    cp a                                          ; $7b4d: $bf
    ld [hl], a                                    ; $7b4e: $77
    call z, $0224                                 ; $7b4f: $cc $24 $02
    ld [$4659], sp                                ; $7b52: $08 $59 $46
    ld a, $77                                     ; $7b55: $3e $77
    ld l, c                                       ; $7b57: $69
    inc e                                         ; $7b58: $1c
    inc bc                                        ; $7b59: $03
    ld [$76dd], sp                                ; $7b5a: $08 $dd $76
    ld e, a                                       ; $7b5d: $5f
    inc bc                                        ; $7b5e: $03

jr_0d1_7b5f:
    ld l, e                                       ; $7b5f: $6b
    jr z, jr_0d1_7b64                             ; $7b60: $28 $02

    nop                                           ; $7b62: $00
    ld c, h                                       ; $7b63: $4c

jr_0d1_7b64:
    inc hl                                        ; $7b64: $23
    ld e, c                                       ; $7b65: $59
    ld h, [hl]                                    ; $7b66: $66
    ld e, l                                       ; $7b67: $5d
    ld [bc], a                                    ; $7b68: $02
    ld bc, $b204                                  ; $7b69: $01 $04 $b2
    ld c, c                                       ; $7b6c: $49
    ld a, e                                       ; $7b6d: $7b
    ld l, d                                       ; $7b6e: $6a
    ret z                                         ; $7b6f: $c8

    jr @+$04                                      ; $7b70: $18 $02

    ld [$4db3], sp                                ; $7b72: $08 $b3 $4d
    cp l                                          ; $7b75: $bd
    ld [hl], d                                    ; $7b76: $72
    add hl, bc                                    ; $7b77: $09
    jr nz, jr_0d1_7bbd                            ; $7b78: $20 $43

    ld [$5e38], sp                                ; $7b7a: $08 $38 $5e
    ld e, a                                       ; $7b7d: $5f
    inc bc                                        ; $7b7e: $03
    cp [hl]                                       ; $7b7f: $be
    halt                                          ; $7b80: $76
    ld [bc], a                                    ; $7b81: $02
    nop                                           ; $7b82: $00
    ld e, e                                       ; $7b83: $5b
    ld bc, $035f                                  ; $7b84: $01 $5f $03
    cp [hl]                                       ; $7b87: $be
    halt                                          ; $7b88: $76
    ld e, e                                       ; $7b89: $5b
    ld bc, $035f                                  ; $7b8a: $01 $5f $03
    ld e, a                                       ; $7b8d: $5f
    inc bc                                        ; $7b8e: $03
    cp [hl]                                       ; $7b8f: $be
    halt                                          ; $7b90: $76
    ld e, e                                       ; $7b91: $5b
    ld bc, $035f                                  ; $7b92: $01 $5f $03
    ld e, a                                       ; $7b95: $5f
    inc bc                                        ; $7b96: $03
    cp [hl]                                       ; $7b97: $be
    halt                                          ; $7b98: $76
    ld [bc], a                                    ; $7b99: $02
    nop                                           ; $7b9a: $00
    ld e, e                                       ; $7b9b: $5b
    ld bc, $035f                                  ; $7b9c: $01 $5f $03
    cp [hl]                                       ; $7b9f: $be
    halt                                          ; $7ba0: $76
    ld [bc], a                                    ; $7ba1: $02
    nop                                           ; $7ba2: $00
    ld e, e                                       ; $7ba3: $5b
    ld bc, $2e26                                  ; $7ba4: $01 $26 $2e
    ld e, a                                       ; $7ba7: $5f
    inc bc                                        ; $7ba8: $03
    ld h, $2e                                     ; $7ba9: $26 $2e
    ld e, a                                       ; $7bab: $5f
    inc bc                                        ; $7bac: $03
    xor [hl]                                      ; $7bad: $ae
    db $10                                        ; $7bae: $10
    ld e, a                                       ; $7baf: $5f
    inc bc                                        ; $7bb0: $03
    ld h, $2e                                     ; $7bb1: $26 $2e
    ld e, a                                       ; $7bb3: $5f
    inc bc                                        ; $7bb4: $03
    xor [hl]                                      ; $7bb5: $ae
    db $10                                        ; $7bb6: $10
    ld e, a                                       ; $7bb7: $5f
    inc bc                                        ; $7bb8: $03
    ld [bc], a                                    ; $7bb9: $02
    nop                                           ; $7bba: $00
    ld e, a                                       ; $7bbb: $5f
    inc bc                                        ; $7bbc: $03

jr_0d1_7bbd:
    ld h, $2e                                     ; $7bbd: $26 $2e
    ld e, a                                       ; $7bbf: $5f
    inc bc                                        ; $7bc0: $03
    ld [bc], a                                    ; $7bc1: $02
    nop                                           ; $7bc2: $00
    ld h, $2a                                     ; $7bc3: $26 $2a
    sbc l                                         ; $7bc5: $9d
    ld a, [bc]                                    ; $7bc6: $0a
    xor [hl]                                      ; $7bc7: $ae
    db $10                                        ; $7bc8: $10
    adc [hl]                                      ; $7bc9: $8e
    db $10                                        ; $7bca: $10
    ld e, [hl]                                    ; $7bcb: $5e
    ld [hl+], a                                   ; $7bcc: $22
    ld e, a                                       ; $7bcd: $5f
    cpl                                           ; $7bce: $2f
    dec [hl]                                      ; $7bcf: $35
    dec d                                         ; $7bd0: $15
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    cp a                                          ; $7bd3: $bf
    ld h, $b0                                     ; $7bd4: $26 $b0
    db $10                                        ; $7bd6: $10
    ld h, $2e                                     ; $7bd7: $26 $2e
    ld [bc], a                                    ; $7bd9: $02
    nop                                           ; $7bda: $00
    ld e, a                                       ; $7bdb: $5f
    inc bc                                        ; $7bdc: $03
    ld h, $2e                                     ; $7bdd: $26 $2e
    xor [hl]                                      ; $7bdf: $ae
    db $10                                        ; $7be0: $10
    ld [bc], a                                    ; $7be1: $02
    nop                                           ; $7be2: $00
    sbc h                                         ; $7be3: $9c
    dec c                                         ; $7be4: $0d
    adc c                                         ; $7be5: $89
    ld hl, $1b5f                                  ; $7be6: $21 $5f $1b
    or b                                          ; $7be9: $b0
    db $10                                        ; $7bea: $10
    ld e, d                                       ; $7beb: $5a
    ld de, $26df                                  ; $7bec: $11 $df $26
    db $db                                        ; $7bef: $db
    dec d                                         ; $7bf0: $15
    db $10                                        ; $7bf1: $10
    dec d                                         ; $7bf2: $15
    sbc a                                         ; $7bf3: $9f
    ld h, $9c                                     ; $7bf4: $26 $9c
    dec d                                         ; $7bf6: $15
    cp a                                          ; $7bf7: $bf
    scf                                           ; $7bf8: $37
    ld c, b                                       ; $7bf9: $48
    ld [$15db], sp                                ; $7bfa: $08 $db $15
    ld h, $2e                                     ; $7bfd: $26 $2e
    rra                                           ; $7bff: $1f
    rra                                           ; $7c00: $1f
    ld [bc], a                                    ; $7c01: $02

Call_0d1_7c02:
    nop                                           ; $7c02: $00
    sbc h                                         ; $7c03: $9c
    dec c                                         ; $7c04: $0d
    rst $38                                       ; $7c05: $ff
    ld a, [de]                                    ; $7c06: $1a
    xor [hl]                                      ; $7c07: $ae
    db $10                                        ; $7c08: $10
    jr z, @+$0a                                   ; $7c09: $28 $08

    call c, $df19                                 ; $7c0b: $dc $19 $df
    ld h, $d5                                     ; $7c0e: $26 $d5
    inc d                                         ; $7c10: $14
    ld [$5808], sp                                ; $7c11: $08 $08 $58
    add hl, de                                    ; $7c14: $19
    cp a                                          ; $7c15: $bf
    ld h, $dd                                     ; $7c16: $26 $dd
    dec d                                         ; $7c18: $15
    ld [bc], a                                    ; $7c19: $02
    nop                                           ; $7c1a: $00
    db $fd                                        ; $7c1b: $fd
    dec d                                         ; $7c1c: $15
    ld e, a                                       ; $7c1d: $5f
    inc bc                                        ; $7c1e: $03
    adc h                                         ; $7c1f: $8c
    inc c                                         ; $7c20: $0c
    ld bc, $bd00                                  ; $7c21: $01 $00 $bd
    dec d                                         ; $7c24: $15
    adc [hl]                                      ; $7c25: $8e
    db $10                                        ; $7c26: $10
    ld e, a                                       ; $7c27: $5f
    inc bc                                        ; $7c28: $03
    ld l, c                                       ; $7c29: $69
    ld [$10f6], sp                                ; $7c2a: $08 $f6 $10
    sbc l                                         ; $7c2d: $9d
    dec e                                         ; $7c2e: $1d
    or b                                          ; $7c2f: $b0
    inc c                                         ; $7c30: $0c
    ld b, $08                                     ; $7c31: $06 $08
    ld a, d                                       ; $7c33: $7a
    dec d                                         ; $7c34: $15
    cp $15                                        ; $7c35: $fe $15
    or d                                          ; $7c37: $b2
    inc d                                         ; $7c38: $14
    ld [bc], a                                    ; $7c39: $02
    nop                                           ; $7c3a: $00
    db $fd                                        ; $7c3b: $fd
    add hl, de                                    ; $7c3c: $19
    ccf                                           ; $7c3d: $3f
    rrca                                          ; $7c3e: $0f
    adc d                                         ; $7c3f: $8a
    inc c                                         ; $7c40: $0c
    ld [bc], a                                    ; $7c41: $02
    nop                                           ; $7c42: $00
    dec bc                                        ; $7c43: $0b
    ld l, $3a                                     ; $7c44: $2e $3a
    ld de, $035f                                  ; $7c46: $11 $5f $03
    xor e                                         ; $7c49: $ab
    inc c                                         ; $7c4a: $0c
    db $fd                                        ; $7c4b: $fd
    ld e, d                                       ; $7c4c: $5a
    or d                                          ; $7c4d: $b2
    dec l                                         ; $7c4e: $2d
    sub $10                                       ; $7c4f: $d6 $10
    rla                                           ; $7c51: $17
    add hl, de                                    ; $7c52: $19
    db $fd                                        ; $7c53: $fd
    dec d                                         ; $7c54: $15
    cp a                                          ; $7c55: $bf
    ld h, $7b                                     ; $7c56: $26 $7b
    add hl, de                                    ; $7c58: $19
    inc hl                                        ; $7c59: $23
    nop                                           ; $7c5a: $00
    jp nc, Jump_000_1f14                          ; $7c5b: $d2 $14 $1f

    rrca                                          ; $7c5e: $0f
    sbc h                                         ; $7c5f: $9c
    dec d                                         ; $7c60: $15
    ld [bc], a                                    ; $7c61: $02
    nop                                           ; $7c62: $00
    call z, Call_000_3b21                         ; $7c63: $cc $21 $3b
    dec b                                         ; $7c66: $05
    ld a, $1f                                     ; $7c67: $3e $1f
    adc d                                         ; $7c69: $8a

jr_0d1_7c6a:
    inc c                                         ; $7c6a: $0c
    db $fd                                        ; $7c6b: $fd
    ld e, d                                       ; $7c6c: $5a
    or d                                          ; $7c6d: $b2
    dec l                                         ; $7c6e: $2d
    ld a, $1f                                     ; $7c6f: $3e $1f
    adc d                                         ; $7c71: $8a
    inc c                                         ; $7c72: $0c
    jr c, jr_0d1_7c8a                             ; $7c73: $38 $15

    db $dd                                        ; $7c75: $dd
    add hl, de                                    ; $7c76: $19
    ld a, [c]                                     ; $7c77: $f2
    inc d                                         ; $7c78: $14
    inc h                                         ; $7c79: $24
    nop                                           ; $7c7a: $00
    ld a, c                                       ; $7c7b: $79
    dec d                                         ; $7c7c: $15
    ld e, a                                       ; $7c7d: $5f
    inc bc                                        ; $7c7e: $03
    xor a                                         ; $7c7f: $af
    db $10                                        ; $7c80: $10
    ld [bc], a                                    ; $7c81: $02
    nop                                           ; $7c82: $00
    call Call_0d1_5b25                            ; $7c83: $cd $25 $5b
    dec c                                         ; $7c86: $0d
    ld a, $1f                                     ; $7c87: $3e $1f
    adc b                                         ; $7c89: $88

jr_0d1_7c8a:
    inc b                                         ; $7c8a: $04
    db $fd                                        ; $7c8b: $fd
    ld e, d                                       ; $7c8c: $5a
    ld e, e                                       ; $7c8d: $5b
    dec c                                         ; $7c8e: $0d
    ld a, $1f                                     ; $7c8f: $3e $1f
    adc e                                         ; $7c91: $8b
    ld [$15fe], sp                                ; $7c92: $08 $fe $15
    or d                                          ; $7c95: $b2
    dec l                                         ; $7c96: $2d
    db $fd                                        ; $7c97: $fd
    ld e, d                                       ; $7c98: $5a
    ld [bc], a                                    ; $7c99: $02
    nop                                           ; $7c9a: $00
    sbc e                                         ; $7c9b: $9b
    dec d                                         ; $7c9c: $15
    rst $18                                       ; $7c9d: $df
    ld c, $8d                                     ; $7c9e: $0e $8d
    inc c                                         ; $7ca0: $0c
    ld [bc], a                                    ; $7ca1: $02
    nop                                           ; $7ca2: $00
    call c, $4c05                                 ; $7ca3: $dc $05 $4c
    ld l, $fb                                     ; $7ca6: $2e $fb
    ld a, a                                       ; $7ca8: $7f
    or d                                          ; $7ca9: $b2
    dec l                                         ; $7caa: $2d
    db $fd                                        ; $7cab: $fd
    ld e, d                                       ; $7cac: $5a
    rst $38                                       ; $7cad: $ff
    ld a, a                                       ; $7cae: $7f
    ld [hl], $3e                                  ; $7caf: $36 $3e
    adc e                                         ; $7cb1: $8b
    inc b                                         ; $7cb2: $04
    db $fd                                        ; $7cb3: $fd
    ld e, d                                       ; $7cb4: $5a
    or d                                          ; $7cb5: $b2
    dec l                                         ; $7cb6: $2d
    call c, Call_000_0211                         ; $7cb7: $dc $11 $02
    nop                                           ; $7cba: $00
    sbc $19                                       ; $7cbb: $de $19
    ld e, a                                       ; $7cbd: $5f
    inc bc                                        ; $7cbe: $03
    adc e                                         ; $7cbf: $8b
    inc c                                         ; $7cc0: $0c
    nop                                           ; $7cc1: $00
    ld h, h                                       ; $7cc2: $64
    ld c, h                                       ; $7cc3: $4c
    ld [hl-], a                                   ; $7cc4: $32
    ld e, l                                       ; $7cc5: $5d
    ld [bc], a                                    ; $7cc6: $02
    ld [bc], a                                    ; $7cc7: $02
    nop                                           ; $7cc8: $00
    nop                                           ; $7cc9: $00
    jr jr_0d1_7c6a                                ; $7cca: $18 $9e

    ld [hl], e                                    ; $7ccc: $73
    or d                                          ; $7ccd: $b2
    dec l                                         ; $7cce: $2d
    nop                                           ; $7ccf: $00
    ld h, h                                       ; $7cd0: $64
    xor h                                         ; $7cd1: $ac
    inc b                                         ; $7cd2: $04
    db $fd                                        ; $7cd3: $fd
    ld e, d                                       ; $7cd4: $5a
    or d                                          ; $7cd5: $b2
    dec l                                         ; $7cd6: $2d
    db $dd                                        ; $7cd7: $dd
    ld de, $0869                                  ; $7cd8: $11 $69 $08
    adc h                                         ; $7cdb: $8c
    ld l, $7a                                     ; $7cdc: $2e $7a
    add hl, de                                    ; $7cde: $19
    ld e, a                                       ; $7cdf: $5f
    inc bc                                        ; $7ce0: $03
    ld [bc], a                                    ; $7ce1: $02
    nop                                           ; $7ce2: $00
    ld e, l                                       ; $7ce3: $5d
    ld [bc], a                                    ; $7ce4: $02
    ld l, h                                       ; $7ce5: $6c
    ld [hl-], a                                   ; $7ce6: $32
    db $fd                                        ; $7ce7: $fd
    ld e, d                                       ; $7ce8: $5a
    adc d                                         ; $7ce9: $8a
    inc c                                         ; $7cea: $0c
    db $fd                                        ; $7ceb: $fd
    ld e, d                                       ; $7cec: $5a
    or d                                          ; $7ced: $b2
    dec l                                         ; $7cee: $2d
    db $fd                                        ; $7cef: $fd
    ld e, d                                       ; $7cf0: $5a
    inc h                                         ; $7cf1: $24
    ld [$19fb], sp                                ; $7cf2: $08 $fb $19
    cp d                                          ; $7cf5: $ba
    ld e, d                                       ; $7cf6: $5a
    add sp, $50                                   ; $7cf7: $e8 $50
    ld b, [hl]                                    ; $7cf9: $46
    inc b                                         ; $7cfa: $04
    xor l                                         ; $7cfb: $ad
    ld l, $dd                                     ; $7cfc: $2e $dd
    add hl, de                                    ; $7cfe: $19
    ld e, a                                       ; $7cff: $5f
    inc bc                                        ; $7d00: $03
    ld [bc], a                                    ; $7d01: $02
    nop                                           ; $7d02: $00
    ld e, l                                       ; $7d03: $5d
    ld [bc], a                                    ; $7d04: $02
    adc l                                         ; $7d05: $8d
    ld [hl-], a                                   ; $7d06: $32
    db $fd                                        ; $7d07: $fd
    ld e, d                                       ; $7d08: $5a
    adc d                                         ; $7d09: $8a
    inc c                                         ; $7d0a: $0c
    db $fd                                        ; $7d0b: $fd
    ld e, d                                       ; $7d0c: $5a
    adc l                                         ; $7d0d: $8d
    ld [hl-], a                                   ; $7d0e: $32
    db $fd                                        ; $7d0f: $fd
    ld e, d                                       ; $7d10: $5a
    adc e                                         ; $7d11: $8b
    inc c                                         ; $7d12: $0c
    ld a, l                                       ; $7d13: $7d
    dec e                                         ; $7d14: $1d
    ld c, e                                       ; $7d15: $4b
    ld c, c                                       ; $7d16: $49
    db $fd                                        ; $7d17: $fd
    ld e, d                                       ; $7d18: $5a
    ld b, [hl]                                    ; $7d19: $46
    inc b                                         ; $7d1a: $04
    xor l                                         ; $7d1b: $ad
    ld l, $5d                                     ; $7d1c: $2e $5d
    ld hl, $035f                                  ; $7d1e: $21 $5f $03
    ld [bc], a                                    ; $7d21: $02
    nop                                           ; $7d22: $00
    ld l, h                                       ; $7d23: $6c
    ld e, l                                       ; $7d24: $5d
    ld e, l                                       ; $7d25: $5d
    ld [bc], a                                    ; $7d26: $02
    adc $2e                                       ; $7d27: $ce $2e
    adc d                                         ; $7d29: $8a
    inc c                                         ; $7d2a: $0c
    db $fd                                        ; $7d2b: $fd
    ld e, d                                       ; $7d2c: $5a
    ld e, l                                       ; $7d2d: $5d
    ld [bc], a                                    ; $7d2e: $02
    adc $2e                                       ; $7d2f: $ce $2e
    xor c                                         ; $7d31: $a9
    inc c                                         ; $7d32: $0c
    ld [$5d55], sp                                ; $7d33: $08 $55 $5d
    dec d                                         ; $7d36: $15
    db $fd                                        ; $7d37: $fd
    ld e, d                                       ; $7d38: $5a
    ld [bc], a                                    ; $7d39: $02
    nop                                           ; $7d3a: $00
    adc $2e                                       ; $7d3b: $ce $2e
    ld e, a                                       ; $7d3d: $5f
    inc bc                                        ; $7d3e: $03
    rst $08                                       ; $7d3f: $cf
    ld l, $02                                     ; $7d40: $2e $02
    nop                                           ; $7d42: $00
    add hl, hl                                    ; $7d43: $29
    ld d, c                                       ; $7d44: $51
    ld e, l                                       ; $7d45: $5d
    ld [bc], a                                    ; $7d46: $02
    rst $08                                       ; $7d47: $cf
    ld l, $8a                                     ; $7d48: $2e $8a
    inc c                                         ; $7d4a: $0c
    adc $2e                                       ; $7d4b: $ce $2e
    db $fd                                        ; $7d4d: $fd
    ld e, d                                       ; $7d4e: $5a
    dec c                                         ; $7d4f: $0d
    dec c                                         ; $7d50: $0d
    xor c                                         ; $7d51: $a9
    db $10                                        ; $7d52: $10
    add hl, hl                                    ; $7d53: $29
    ld d, c                                       ; $7d54: $51
    inc [hl]                                      ; $7d55: $34
    ld [hl], $18                                  ; $7d56: $36 $18
    add hl, bc                                    ; $7d58: $09
    ld [bc], a                                    ; $7d59: $02
    nop                                           ; $7d5a: $00
    rst $08                                       ; $7d5b: $cf
    ld l, $5f                                     ; $7d5c: $2e $5f
    inc bc                                        ; $7d5e: $03
    jr jr_0d1_7d6a                                ; $7d5f: $18 $09

    ld bc, $6c00                                  ; $7d61: $01 $00 $6c
    ld e, l                                       ; $7d64: $5d
    ld e, l                                       ; $7d65: $5d
    ld [bc], a                                    ; $7d66: $02
    rst $08                                       ; $7d67: $cf
    ld l, $ab                                     ; $7d68: $2e $ab

jr_0d1_7d6a:
    inc c                                         ; $7d6a: $0c
    rst $08                                       ; $7d6b: $cf
    ld l, $fd                                     ; $7d6c: $2e $fd
    ld e, d                                       ; $7d6e: $5a
    or d                                          ; $7d6f: $b2
    dec l                                         ; $7d70: $2d
    inc bc                                        ; $7d71: $03
    inc c                                         ; $7d72: $0c
    cpl                                           ; $7d73: $2f
    ld [hl], $fd                                  ; $7d74: $36 $fd
    ld e, d                                       ; $7d76: $5a
    rst $00                                       ; $7d77: $c7
    ld d, b                                       ; $7d78: $50
    ld [bc], a                                    ; $7d79: $02
    nop                                           ; $7d7a: $00
    rst $08                                       ; $7d7b: $cf
    ld l, $5f                                     ; $7d7c: $2e $5f
    inc bc                                        ; $7d7e: $03
    rst $00                                       ; $7d7f: $c7
    ld d, b                                       ; $7d80: $50
    ld [bc], a                                    ; $7d81: $02
    nop                                           ; $7d82: $00
    ld e, e                                       ; $7d83: $5b
    ld bc, $035f                                  ; $7d84: $01 $5f $03
    rst $00                                       ; $7d87: $c7
    ld d, b                                       ; $7d88: $50
    ld e, e                                       ; $7d89: $5b
    ld bc, $035f                                  ; $7d8a: $01 $5f $03
    ld e, a                                       ; $7d8d: $5f
    inc bc                                        ; $7d8e: $03
    rst $00                                       ; $7d8f: $c7
    ld d, b                                       ; $7d90: $50
    ld e, e                                       ; $7d91: $5b
    ld bc, $035f                                  ; $7d92: $01 $5f $03
    ld e, a                                       ; $7d95: $5f
    inc bc                                        ; $7d96: $03
    rst $00                                       ; $7d97: $c7
    ld d, b                                       ; $7d98: $50
    ld [bc], a                                    ; $7d99: $02
    nop                                           ; $7d9a: $00
    ld e, e                                       ; $7d9b: $5b
    ld bc, $035f                                  ; $7d9c: $01 $5f $03
    rst $00                                       ; $7d9f: $c7
    ld d, b                                       ; $7da0: $50
    ld [bc], a                                    ; $7da1: $02
    nop                                           ; $7da2: $00
    ld [hl], a                                    ; $7da3: $77
    ld e, c                                       ; $7da4: $59
    ld e, e                                       ; $7da5: $5b
    ld bc, $035f                                  ; $7da6: $01 $5f $03
    nop                                           ; $7da9: $00
    nop                                           ; $7daa: $00
    ld [hl], a                                    ; $7dab: $77
    ld e, c                                       ; $7dac: $59
    ld e, a                                       ; $7dad: $5f
    inc bc                                        ; $7dae: $03
    ld e, a                                       ; $7daf: $5f
    inc bc                                        ; $7db0: $03
    nop                                           ; $7db1: $00
    nop                                           ; $7db2: $00
    ld [hl], a                                    ; $7db3: $77
    ld e, c                                       ; $7db4: $59
    ld e, a                                       ; $7db5: $5f
    inc bc                                        ; $7db6: $03
    ld hl, $0200                                  ; $7db7: $21 $00 $02
    nop                                           ; $7dba: $00
    ld e, a                                       ; $7dbb: $5f
    inc bc                                        ; $7dbc: $03
    ld [hl], a                                    ; $7dbd: $77
    ld e, c                                       ; $7dbe: $59
    ld hl, $0200                                  ; $7dbf: $21 $00 $02
    nop                                           ; $7dc2: $00
    halt                                          ; $7dc3: $76
    ld e, c                                       ; $7dc4: $59
    ld e, e                                       ; $7dc5: $5b
    ld bc, $035f                                  ; $7dc6: $01 $5f $03
    nop                                           ; $7dc9: $00
    nop                                           ; $7dca: $00
    dec c                                         ; $7dcb: $0d

jr_0d1_7dcc:
    ld c, h                                       ; $7dcc: $4c
    cp c                                          ; $7dcd: $b9
    ld [hl], a                                    ; $7dce: $77
    ld [hl], a                                    ; $7dcf: $77
    ld e, c                                       ; $7dd0: $59
    nop                                           ; $7dd1: $00
    nop                                           ; $7dd2: $00
    dec c                                         ; $7dd3: $0d
    ld c, h                                       ; $7dd4: $4c
    or a                                          ; $7dd5: $b7
    ld h, c                                       ; $7dd6: $61
    cp c                                          ; $7dd7: $b9
    ld [hl], a                                    ; $7dd8: $77
    ld [bc], a                                    ; $7dd9: $02
    nop                                           ; $7dda: $00
    halt                                          ; $7ddb: $76
    ld e, c                                       ; $7ddc: $59
    ld e, a                                       ; $7ddd: $5f
    inc bc                                        ; $7dde: $03
    ld [hl], a                                    ; $7ddf: $77
    ld e, c                                       ; $7de0: $59
    ld bc, $7500                                  ; $7de1: $01 $00 $75
    ld e, c                                       ; $7de4: $59
    ld e, l                                       ; $7de5: $5d
    ld [bc], a                                    ; $7de6: $02
    cp c                                          ; $7de7: $b9
    ld [hl], a                                    ; $7de8: $77
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    rst $30                                       ; $7deb: $f7
    ld l, c                                       ; $7dec: $69
    dec c                                         ; $7ded: $0d
    ld c, h                                       ; $7dee: $4c
    cp c                                          ; $7def: $b9
    ld [hl], a                                    ; $7df0: $77
    nop                                           ; $7df1: $00
    nop                                           ; $7df2: $00
    rst $30                                       ; $7df3: $f7
    ld l, c                                       ; $7df4: $69
    dec c                                         ; $7df5: $0d
    ld c, h                                       ; $7df6: $4c
    cp c                                          ; $7df7: $b9
    ld [hl], a                                    ; $7df8: $77
    nop                                           ; $7df9: $00
    nop                                           ; $7dfa: $00
    halt                                          ; $7dfb: $76
    ld e, c                                       ; $7dfc: $59
    ld e, a                                       ; $7dfd: $5f
    inc bc                                        ; $7dfe: $03
    ld [bc], a                                    ; $7dff: $02
    nop                                           ; $7e00: $00
    ld bc, $0d00                                  ; $7e01: $01 $00 $0d
    ld c, h                                       ; $7e04: $4c
    ld e, l                                       ; $7e05: $5d
    ld [bc], a                                    ; $7e06: $02
    push de                                       ; $7e07: $d5

Call_0d1_7e08:
    ld e, l                                       ; $7e08: $5d
    nop                                           ; $7e09: $00
    nop                                           ; $7e0a: $00
    ret z                                         ; $7e0b: $c8

    ld b, h                                       ; $7e0c: $44
    rst $30                                       ; $7e0d: $f7
    ld l, c                                       ; $7e0e: $69
    dec c                                         ; $7e0f: $0d
    ld c, h                                       ; $7e10: $4c
    ld bc, $8900                                  ; $7e11: $01 $00 $89
    ld b, h                                       ; $7e14: $44
    sub $25                                       ; $7e15: $d6 $25
    rst $30                                       ; $7e17: $f7
    ld l, c                                       ; $7e18: $69
    nop                                           ; $7e19: $00
    nop                                           ; $7e1a: $00
    ld [hl-], a                                   ; $7e1b: $32
    ld d, l                                       ; $7e1c: $55
    ld e, a                                       ; $7e1d: $5f
    inc bc                                        ; $7e1e: $03
    cp c                                          ; $7e1f: $b9
    ld [hl], a                                    ; $7e20: $77
    ld bc, $0d00                                  ; $7e21: $01 $00 $0d
    ld c, h                                       ; $7e24: $4c
    ld e, l                                       ; $7e25: $5d
    ld [bc], a                                    ; $7e26: $02
    or h                                          ; $7e27: $b4
    ld e, c                                       ; $7e28: $59
    nop                                           ; $7e29: $00
    nop                                           ; $7e2a: $00
    sub $25                                       ; $7e2b: $d6 $25
    ret                                           ; $7e2d: $c9


    jr z, jr_0d1_7dcc                             ; $7e2e: $28 $9c

    ld b, [hl]                                    ; $7e30: $46
    ld [hl+], a                                   ; $7e31: $22
    nop                                           ; $7e32: $00
    or l                                          ; $7e33: $b5
    ld hl, $486a                                  ; $7e34: $21 $6a $48
    sbc h                                         ; $7e37: $9c
    ld b, [hl]                                    ; $7e38: $46
    nop                                           ; $7e39: $00
    nop                                           ; $7e3a: $00
    dec c                                         ; $7e3b: $0d
    ld c, h                                       ; $7e3c: $4c
    ld e, a                                       ; $7e3d: $5f
    inc bc                                        ; $7e3e: $03
    db $f4                                        ; $7e3f: $f4
    ld e, c                                       ; $7e40: $59
    ld bc, $b200                                  ; $7e41: $01 $00 $b2
    ld d, l                                       ; $7e44: $55
    ld e, e                                       ; $7e45: $5b
    ld bc, $035f                                  ; $7e46: $01 $5f $03
    nop                                           ; $7e49: $00
    nop                                           ; $7e4a: $00
    ld e, d                                       ; $7e4b: $5a
    ld [hl], $1f                                  ; $7e4c: $36 $1f
    ld d, a                                       ; $7e4e: $57
    jp z, Jump_000_000c                           ; $7e4f: $ca $0c $00

    nop                                           ; $7e52: $00
    ld a, e                                       ; $7e53: $7b
    ld a, $ca                                     ; $7e54: $3e $ca
    inc c                                         ; $7e56: $0c
    ld b, [hl]                                    ; $7e57: $46
    nop                                           ; $7e58: $00
    ld [bc], a                                    ; $7e59: $02
    nop                                           ; $7e5a: $00
    or $2d                                        ; $7e5b: $f6 $2d
    ld e, a                                       ; $7e5d: $5f
    inc bc                                        ; $7e5e: $03
    or d                                          ; $7e5f: $b2
    ld d, l                                       ; $7e60: $55
    ld bc, $d000                                  ; $7e61: $01 $00 $d0
    ld d, l                                       ; $7e64: $55
    ld e, e                                       ; $7e65: $5b
    ld bc, $035f                                  ; $7e66: $01 $5f $03
    ld b, h                                       ; $7e69: $44
    nop                                           ; $7e6a: $00
    cp l                                          ; $7e6b: $bd
    ld c, d                                       ; $7e6c: $4a
    daa                                           ; $7e6d: $27
    inc bc                                        ; $7e6e: $03
    rst $38                                       ; $7e6f: $ff
    ld a, a                                       ; $7e70: $7f
    ld b, l                                       ; $7e71: $45
    nop                                           ; $7e72: $00
    ld a, e                                       ; $7e73: $7b
    ld a, $87                                     ; $7e74: $3e $87
    inc bc                                        ; $7e76: $03
    rst $38                                       ; $7e77: $ff
    ld a, a                                       ; $7e78: $7f
    inc bc                                        ; $7e79: $03
    nop                                           ; $7e7a: $00
    ret nc                                        ; $7e7b: $d0

    ld d, l                                       ; $7e7c: $55
    ld e, a                                       ; $7e7d: $5f
    inc bc                                        ; $7e7e: $03
    or $2d                                        ; $7e7f: $f6 $2d
    ld [bc], a                                    ; $7e81: $02
    nop                                           ; $7e82: $00
    rst $08                                       ; $7e83: $cf
    ld d, l                                       ; $7e84: $55
    ld e, e                                       ; $7e85: $5b
    ld bc, $035f                                  ; $7e86: $01 $5f $03
    ld h, e                                       ; $7e89: $63
    nop                                           ; $7e8a: $00
    db $dd                                        ; $7e8b: $dd
    ld c, [hl]                                    ; $7e8c: $4e
    rl b                                          ; $7e8d: $cb $10
    rst $38                                       ; $7e8f: $ff
    ld a, a                                       ; $7e90: $7f
    ld b, e                                       ; $7e91: $43
    nop                                           ; $7e92: $00
    add a                                         ; $7e93: $87
    inc bc                                        ; $7e94: $03
    jr c, jr_0d1_7ecd                             ; $7e95: $38 $36

    xor e                                         ; $7e97: $ab
    inc c                                         ; $7e98: $0c
    inc bc                                        ; $7e99: $03
    nop                                           ; $7e9a: $00
    rst $08                                       ; $7e9b: $cf
    ld d, l                                       ; $7e9c: $55
    ld e, a                                       ; $7e9d: $5f
    inc bc                                        ; $7e9e: $03
    or $2d                                        ; $7e9f: $f6 $2d
    ld [bc], a                                    ; $7ea1: $02
    nop                                           ; $7ea2: $00
    xor $55                                       ; $7ea3: $ee $55
    ld e, e                                       ; $7ea5: $5b
    ld bc, $035f                                  ; $7ea6: $01 $5f $03
    ld l, b                                       ; $7ea9: $68
    inc b                                         ; $7eaa: $04
    push de                                       ; $7eab: $d5
    add hl, hl                                    ; $7eac: $29
    rra                                           ; $7ead: $1f
    ld d, a                                       ; $7eae: $57
    ld a, e                                       ; $7eaf: $7b
    ld a, $46                                     ; $7eb0: $3e $46
    nop                                           ; $7eb2: $00
    ld a, e                                       ; $7eb3: $7b
    ld a, $b4                                     ; $7eb4: $3e $b4
    ld hl, $571f                                  ; $7eb6: $21 $1f $57
    ld [bc], a                                    ; $7eb9: $02
    nop                                           ; $7eba: $00
    xor $55                                       ; $7ebb: $ee $55
    ld e, a                                       ; $7ebd: $5f
    inc bc                                        ; $7ebe: $03
    rl b                                          ; $7ebf: $cb $10
    ld [bc], a                                    ; $7ec1: $02
    nop                                           ; $7ec2: $00
    inc c                                         ; $7ec3: $0c
    ld d, [hl]                                    ; $7ec4: $56
    ld e, e                                       ; $7ec5: $5b
    ld bc, $035f                                  ; $7ec6: $01 $5f $03
    ld h, a                                       ; $7ec9: $67
    inc b                                         ; $7eca: $04
    rst $30                                       ; $7ecb: $f7
    dec l                                         ; $7ecc: $2d

jr_0d1_7ecd:
    rra                                           ; $7ecd: $1f
    ld d, a                                       ; $7ece: $57
    ld a, d                                       ; $7ecf: $7a
    ld b, d                                       ; $7ed0: $42
    nop                                           ; $7ed1: $00
    nop                                           ; $7ed2: $00
    cp $52                                        ; $7ed3: $fe $52
    or h                                          ; $7ed5: $b4
    ld hl, $0488                                  ; $7ed6: $21 $88 $04
    ld [bc], a                                    ; $7ed9: $02
    nop                                           ; $7eda: $00
    ld e, a                                       ; $7edb: $5f
    inc bc                                        ; $7edc: $03
    inc c                                         ; $7edd: $0c
    ld d, [hl]                                    ; $7ede: $56
    dec c                                         ; $7edf: $0d
    ld d, [hl]                                    ; $7ee0: $56
    ld [bc], a                                    ; $7ee1: $02
    nop                                           ; $7ee2: $00
    dec bc                                        ; $7ee3: $0b
    ld d, d                                       ; $7ee4: $52
    ld e, e                                       ; $7ee5: $5b
    ld bc, $035f                                  ; $7ee6: $01 $5f $03
    ld b, l                                       ; $7ee9: $45
    inc b                                         ; $7eea: $04
    dec bc                                        ; $7eeb: $0b
    ld d, d                                       ; $7eec: $52
    call c, $b452                                 ; $7eed: $dc $52 $b4
    dec h                                         ; $7ef0: $25
    ld b, e                                       ; $7ef1: $43
    inc b                                         ; $7ef2: $04
    db $fd                                        ; $7ef3: $fd
    ld d, d                                       ; $7ef4: $52
    ld [hl], b                                    ; $7ef5: $70
    ld hl, $520b                                  ; $7ef6: $21 $0b $52
    ld [bc], a                                    ; $7ef9: $02
    nop                                           ; $7efa: $00
    ld e, a                                       ; $7efb: $5f
    inc bc                                        ; $7efc: $03
    dec bc                                        ; $7efd: $0b
    ld d, [hl]                                    ; $7efe: $56
    dec hl                                        ; $7eff: $2b
    ld d, d                                       ; $7f00: $52
    ld [bc], a                                    ; $7f01: $02
    nop                                           ; $7f02: $00
    add hl, hl                                    ; $7f03: $29
    ld d, d                                       ; $7f04: $52
    ld e, e                                       ; $7f05: $5b
    ld bc, $035f                                  ; $7f06: $01 $5f $03
    xor b                                         ; $7f09: $a8
    inc c                                         ; $7f0a: $0c
    add hl, hl                                    ; $7f0b: $29
    ld d, d                                       ; $7f0c: $52
    sub $25                                       ; $7f0d: $d6 $25
    cp l                                          ; $7f0f: $bd
    ld c, d                                       ; $7f10: $4a
    nop                                           ; $7f11: $00
    nop                                           ; $7f12: $00
    add hl, hl                                    ; $7f13: $29
    ld d, d                                       ; $7f14: $52
    ld e, c                                       ; $7f15: $59
    ld a, [hl-]                                   ; $7f16: $3a
    ld [$0214], a                                 ; $7f17: $ea $14 $02
    nop                                           ; $7f1a: $00
    ld e, a                                       ; $7f1b: $5f
    inc bc                                        ; $7f1c: $03
    add hl, hl                                    ; $7f1d: $29
    ld d, d                                       ; $7f1e: $52
    ld a, [hl+]                                   ; $7f1f: $2a
    ld d, d                                       ; $7f20: $52
    ld [bc], a                                    ; $7f21: $02
    nop                                           ; $7f22: $00
    ld b, a                                       ; $7f23: $47
    ld d, d                                       ; $7f24: $52
    ld e, e                                       ; $7f25: $5b
    ld bc, $035f                                  ; $7f26: $01 $5f $03
    inc hl                                        ; $7f29: $23
    nop                                           ; $7f2a: $00
    ld b, a                                       ; $7f2b: $47
    ld d, d                                       ; $7f2c: $52
    sub $25                                       ; $7f2d: $d6 $25
    rl b                                          ; $7f2f: $cb $10
    inc hl                                        ; $7f31: $23
    nop                                           ; $7f32: $00
    ld c, b                                       ; $7f33: $48
    ld d, d                                       ; $7f34: $52
    call z, $b510                                 ; $7f35: $cc $10 $b5
    ld hl, $0002                                  ; $7f38: $21 $02 $00
    ld e, a                                       ; $7f3b: $5f
    inc bc                                        ; $7f3c: $03
    ld b, a                                       ; $7f3d: $47
    ld d, d                                       ; $7f3e: $52
    ld c, b                                       ; $7f3f: $48
    ld d, d                                       ; $7f40: $52
    ld bc, $4600                                  ; $7f41: $01 $00 $46
    ld d, d                                       ; $7f44: $52
    ld e, e                                       ; $7f45: $5b
    ld bc, $035f                                  ; $7f46: $01 $5f $03
    nop                                           ; $7f49: $00
    nop                                           ; $7f4a: $00
    push de                                       ; $7f4b: $d5
    add hl, hl                                    ; $7f4c: $29
    ld a, e                                       ; $7f4d: $7b
    ld l, a                                       ; $7f4e: $6f
    rl b                                          ; $7f4f: $cb $10
    inc hl                                        ; $7f51: $23
    nop                                           ; $7f52: $00
    rst $30                                       ; $7f53: $f7
    dec l                                         ; $7f54: $2d
    db $ed                                        ; $7f55: $ed
    inc d                                         ; $7f56: $14
    rst $30                                       ; $7f57: $f7
    ld e, [hl]                                    ; $7f58: $5e
    ld bc, $6600                                  ; $7f59: $01 $00 $66
    ld d, d                                       ; $7f5c: $52
    ld e, a                                       ; $7f5d: $5f
    inc bc                                        ; $7f5e: $03
    ld b, a                                       ; $7f5f: $47
    ld d, d                                       ; $7f60: $52
    ld bc, $2600                                  ; $7f61: $01 $00 $26
    ld c, d                                       ; $7f64: $4a
    ld e, l                                       ; $7f65: $5d
    ld [bc], a                                    ; $7f66: $02
    ld b, $21                                     ; $7f67: $06 $21
    nop                                           ; $7f69: $00
    nop                                           ; $7f6a: $00
    push af                                       ; $7f6b: $f5
    ld sp, $2d6b                                  ; $7f6c: $31 $6b $2d
    sbc $4e                                       ; $7f6f: $de $4e
    ld b, h                                       ; $7f71: $44
    inc b                                         ; $7f72: $04
    db $f4                                        ; $7f73: $f4
    add hl, sp                                    ; $7f74: $39
    cp h                                          ; $7f75: $bc
    ld c, d                                       ; $7f76: $4a
    sbc l                                         ; $7f77: $9d
    ld [hl], e                                    ; $7f78: $73
    nop                                           ; $7f79: $00
    nop                                           ; $7f7a: $00
    ld h, l                                       ; $7f7b: $65
    ld d, d                                       ; $7f7c: $52
    ld e, a                                       ; $7f7d: $5f
    inc bc                                        ; $7f7e: $03
    xor [hl]                                      ; $7f7f: $ae

Call_0d1_7f80:
    dec [hl]                                      ; $7f80: $35
    ld [bc], a                                    ; $7f81: $02
    nop                                           ; $7f82: $00
    ld e, e                                       ; $7f83: $5b
    ld bc, $035f                                  ; $7f84: $01 $5f $03
    xor [hl]                                      ; $7f87: $ae
    dec [hl]                                      ; $7f88: $35
    ld e, e                                       ; $7f89: $5b
    ld bc, $035f                                  ; $7f8a: $01 $5f $03
    ld e, a                                       ; $7f8d: $5f
    inc bc                                        ; $7f8e: $03
    xor [hl]                                      ; $7f8f: $ae
    dec [hl]                                      ; $7f90: $35
    ld e, e                                       ; $7f91: $5b
    ld bc, $035f                                  ; $7f92: $01 $5f $03
    ld e, a                                       ; $7f95: $5f
    inc bc                                        ; $7f96: $03
    xor [hl]                                      ; $7f97: $ae
    dec [hl]                                      ; $7f98: $35
    ld [bc], a                                    ; $7f99: $02
    nop                                           ; $7f9a: $00
    ld e, e                                       ; $7f9b: $5b
    ld bc, $035f                                  ; $7f9c: $01 $5f $03
    xor [hl]                                      ; $7f9f: $ae
    dec [hl]                                      ; $7fa0: $35
    rst $38                                       ; $7fa1: $ff
    ld a, a                                       ; $7fa2: $7f
    ld b, l                                       ; $7fa3: $45
    dec l                                         ; $7fa4: $2d
    rra                                           ; $7fa5: $1f
    nop                                           ; $7fa6: $00
    rrca                                          ; $7fa7: $0f
    nop                                           ; $7fa8: $00
    rst $38                                       ; $7fa9: $ff
    ld a, a                                       ; $7faa: $7f
    ld b, l                                       ; $7fab: $45
    dec l                                         ; $7fac: $2d
    sub d                                         ; $7fad: $92
    ld a, a                                       ; $7fae: $7f
    ld hl, $ff72                                  ; $7faf: $21 $72 $ff
    ld a, a                                       ; $7fb2: $7f
    ld b, l                                       ; $7fb3: $45
    dec l                                         ; $7fb4: $2d
    call nz, $276d                                ; $7fb5: $c4 $6d $27
    inc a                                         ; $7fb8: $3c
    rst $38                                       ; $7fb9: $ff
    ld a, a                                       ; $7fba: $7f
    ld b, l                                       ; $7fbb: $45
    dec l                                         ; $7fbc: $2d
    and c                                         ; $7fbd: $a1
    ld h, $00                                     ; $7fbe: $26 $00
    dec e                                         ; $7fc0: $1d
    cp l                                          ; $7fc1: $bd
    ld b, a                                       ; $7fc2: $47
    jp nc, Jump_0d1_451d                          ; $7fc3: $d2 $1d $45

    dec l                                         ; $7fc6: $2d
    dec b                                         ; $7fc7: $05
    nop                                           ; $7fc8: $00
    cp l                                          ; $7fc9: $bd
    ld a, a                                       ; $7fca: $7f
    xor l                                         ; $7fcb: $ad
    ld e, c                                       ; $7fcc: $59
    ld b, l                                       ; $7fcd: $45
    dec l                                         ; $7fce: $2d
    nop                                           ; $7fcf: $00
    inc d                                         ; $7fd0: $14
    cp a                                          ; $7fd1: $bf
    ld e, e                                       ; $7fd2: $5b
    sub [hl]                                      ; $7fd3: $96
    add hl, hl                                    ; $7fd4: $29
    ld b, l                                       ; $7fd5: $45
    dec l                                         ; $7fd6: $2d
    dec b                                         ; $7fd7: $05
    inc d                                         ; $7fd8: $14
    db $fd                                        ; $7fd9: $fd
    ld [hl], e                                    ; $7fda: $73
    call Call_0d1_454e                            ; $7fdb: $cd $4e $45
    dec l                                         ; $7fde: $2d
    inc bc                                        ; $7fdf: $03
    inc d                                         ; $7fe0: $14
    rst $38                                       ; $7fe1: $ff
    ld a, a                                       ; $7fe2: $7f
    rst $38                                       ; $7fe3: $ff
    inc bc                                        ; $7fe4: $03
    sub l                                         ; $7fe5: $95
    ld bc, $0c63                                  ; $7fe6: $01 $63 $0c
    rst $38                                       ; $7fe9: $ff
    ld a, a                                       ; $7fea: $7f
    rst $38                                       ; $7feb: $ff
    inc bc                                        ; $7fec: $03
    sub l                                         ; $7fed: $95
    ld bc, $0c63                                  ; $7fee: $01 $63 $0c
    rst $38                                       ; $7ff1: $ff
    ld a, a                                       ; $7ff2: $7f
    ld e, $03                                     ; $7ff3: $1e $03
    jr @+$0e                                      ; $7ff5: $18 $0c

    dec b                                         ; $7ff7: $05
    nop                                           ; $7ff8: $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
