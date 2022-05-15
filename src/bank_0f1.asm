; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f1", ROMX[$4000], BANK[$f1]

    pop af                                        ; $4000: $f1
    cpl                                           ; $4001: $2f
    dec d                                         ; $4002: $15
    rst $30                                       ; $4003: $f7
    ld a, [bc]                                    ; $4004: $0a
    jp $c000                                      ; $4005: $c3 $00 $c0


    jp hl                                         ; $4008: $e9


    ret nc                                        ; $4009: $d0

    jp hl                                         ; $400a: $e9


    cp b                                          ; $400b: $b8
    pop af                                        ; $400c: $f1
    ret z                                         ; $400d: $c8

    pop af                                        ; $400e: $f1
    ret c                                         ; $400f: $d8

    pop af                                        ; $4010: $f1
    add sp, -$0e                                  ; $4011: $e8 $f2
    ld hl, sp-$0f                                 ; $4013: $f8 $f1
    pop bc                                        ; $4015: $c1
    ld sp, hl                                     ; $4016: $f9
    pop de                                        ; $4017: $d1
    ld sp, hl                                     ; $4018: $f9
    pop hl                                        ; $4019: $e1
    ld sp, hl                                     ; $401a: $f9
    pop af                                        ; $401b: $f1
    ld a, [$f9f8]                                 ; $401c: $fa $f8 $f9
    pop bc                                        ; $401f: $c1
    ld bc, $01d1                                  ; $4020: $01 $d1 $01
    pop hl                                        ; $4023: $e1
    ld bc, $02f1                                  ; $4024: $01 $f1 $02
    call nz, $d409                                ; $4027: $c4 $09 $d4
    add hl, bc                                    ; $402a: $09
    rst $20                                       ; $402b: $e7
    add hl, bc                                    ; $402c: $09
    rst $30                                       ; $402d: $f7
    ld a, [bc]                                    ; $402e: $0a
    ret z                                         ; $402f: $c8

    ld de, $0102                                  ; $4030: $11 $02 $01
    ld [bc], a                                    ; $4033: $02
    rlca                                          ; $4034: $07
    sbc h                                         ; $4035: $9c
    rrca                                          ; $4036: $0f
    add hl, bc                                    ; $4037: $09
    rra                                           ; $4038: $1f
    ld [de], a                                    ; $4039: $12
    rra                                           ; $403a: $1f
    ld [de], a                                    ; $403b: $12
    ld e, $13                                     ; $403c: $1e $13
    rra                                           ; $403e: $1f
    dec d                                         ; $403f: $15
    dec bc                                        ; $4040: $0b
    inc c                                         ; $4041: $0c
    ld [$0d0f], sp                                ; $4042: $08 $0f $0d
    rrca                                          ; $4045: $0f
    inc de                                        ; $4046: $13
    ld e, $37                                     ; $4047: $1e $37
    cpl                                           ; $4049: $2f
    ld [hl], $2d                                  ; $404a: $36 $2d
    ld [hl], h                                    ; $404c: $74
    ld c, a                                       ; $404d: $4f
    ld h, c                                       ; $404e: $61
    ld e, a                                       ; $404f: $5f
    ld b, [hl]                                    ; $4050: $46
    ld a, [hl]                                    ; $4051: $7e
    ld [bc], a                                    ; $4052: $02
    add hl, sp                                    ; $4053: $39
    adc [hl]                                      ; $4054: $8e
    inc bc                                        ; $4055: $03
    ld [bc], a                                    ; $4056: $02
    rlca                                          ; $4057: $07
    ld b, $0a                                     ; $4058: $06 $0a
    rrca                                          ; $405a: $0f
    dec c                                         ; $405b: $0d
    rrca                                          ; $405c: $0f

jr_0f1_405d:
    add hl, bc                                    ; $405d: $09
    rrca                                          ; $405e: $0f
    dec c                                         ; $405f: $0d
    rrca                                          ; $4060: $0f
    ld a, [bc]                                    ; $4061: $0a
    rrca                                          ; $4062: $0f
    ld [bc], a                                    ; $4063: $02
    rlca                                          ; $4064: $07
    ld [bc], a                                    ; $4065: $02
    inc bc                                        ; $4066: $03
    inc c                                         ; $4067: $0c
    ld bc, $1802                                  ; $4068: $01 $02 $18
    add e                                         ; $406b: $83
    jr z, jr_0f1_40a6                             ; $406c: $28 $38

    ld e, b                                       ; $406e: $58
    ld [bc], a                                    ; $406f: $02
    ld l, b                                       ; $4070: $68
    or a                                          ; $4071: $b7
    ld e, b                                       ; $4072: $58
    ld l, b                                       ; $4073: $68
    ld e, b                                       ; $4074: $58
    sub b                                         ; $4075: $90
    ldh a, [$d0]                                  ; $4076: $f0 $d0
    or b                                          ; $4078: $b0
    ret nc                                        ; $4079: $d0

    or b                                          ; $407a: $b0
    jr nz, jr_0f1_405d                            ; $407b: $20 $e0

    and b                                         ; $407d: $a0
    ld h, b                                       ; $407e: $60
    or b                                          ; $407f: $b0
    ld [hl], b                                    ; $4080: $70
    ld a, [hl]                                    ; $4081: $7e
    cp $7d                                        ; $4082: $fe $7d
    rst $38                                       ; $4084: $ff
    ld a, c                                       ; $4085: $79
    rst $38                                       ; $4086: $ff
    jp nz, $c5bf                                  ; $4087: $c2 $bf $c5

    rst $38                                       ; $408a: $ff
    jp $ddff                                      ; $408b: $c3 $ff $dd


    ld a, a                                       ; $408e: $7f
    ld [$55f7], a                                 ; $408f: $ea $f7 $55
    xor e                                         ; $4092: $ab
    ld a, [de]                                    ; $4093: $1a
    push hl                                       ; $4094: $e5
    ld [$a9f7], sp                                ; $4095: $08 $f7 $a9
    rst $38                                       ; $4098: $ff
    ld d, a                                       ; $4099: $57
    ld a, [hl]                                    ; $409a: $7e
    rst $38                                       ; $409b: $ff
    db $fc                                        ; $409c: $fc
    db $db                                        ; $409d: $db
    ld a, h                                       ; $409e: $7c
    or l                                          ; $409f: $b5
    ld a, d                                       ; $40a0: $7a
    db $eb                                        ; $40a1: $eb
    inc d                                         ; $40a2: $14
    rst $38                                       ; $40a3: $ff
    nop                                           ; $40a4: $00
    ld sp, hl                                     ; $40a5: $f9

jr_0f1_40a6:
    rlca                                          ; $40a6: $07
    sbc a                                         ; $40a7: $9f
    ld a, a                                       ; $40a8: $7f
    ld [bc], a                                    ; $40a9: $02
    rst $38                                       ; $40aa: $ff
    or h                                          ; $40ab: $b4
    rst $20                                       ; $40ac: $e7
    ld sp, hl                                     ; $40ad: $f9
    xor $d1                                       ; $40ae: $ee $d1
    ld e, l                                       ; $40b0: $5d
    ld [c], a                                     ; $40b1: $e2
    add hl, sp                                    ; $40b2: $39
    rst $00                                       ; $40b3: $c7
    db $e3                                        ; $40b4: $e3
    call c, $e837                                 ; $40b5: $dc $37 $e8
    sbc l                                         ; $40b8: $9d
    ld [$ed3a], a                                 ; $40b9: $ea $3a $ed
    adc a                                         ; $40bc: $8f
    rst $30                                       ; $40bd: $f7
    ei                                            ; $40be: $fb
    db $fc                                        ; $40bf: $fc
    sbc a                                         ; $40c0: $9f
    ldh [$cf], a                                  ; $40c1: $e0 $cf
    ldh a, [$9f]                                  ; $40c3: $f0 $9f
    ldh a, [$cf]                                  ; $40c5: $f0 $cf
    ldh a, [$7e]                                  ; $40c7: $f0 $7e
    ld [hl], c                                    ; $40c9: $71
    ld c, l                                       ; $40ca: $4d
    ld [hl], e                                    ; $40cb: $73
    db $e3                                        ; $40cc: $e3
    db $fc                                        ; $40cd: $fc
    sbc e                                         ; $40ce: $9b
    db $f4                                        ; $40cf: $f4
    call $9ff2                                    ; $40d0: $cd $f2 $9f
    ld a, [c]                                     ; $40d3: $f2
    adc $f3                                       ; $40d4: $ce $f3
    ld a, l                                       ; $40d6: $7d
    ld [hl], d                                    ; $40d7: $72
    ld c, e                                       ; $40d8: $4b
    ld [hl], a                                    ; $40d9: $77
    ld h, a                                       ; $40da: $67
    ld a, b                                       ; $40db: $78
    ld c, a                                       ; $40dc: $4f
    ld a, b                                       ; $40dd: $78
    ld h, h                                       ; $40de: $64
    ld a, e                                       ; $40df: $7b
    ld [bc], a                                    ; $40e0: $02
    ld a, a                                       ; $40e1: $7f
    adc d                                         ; $40e2: $8a
    ld d, [hl]                                    ; $40e3: $56
    ld a, c                                       ; $40e4: $79
    rst $28                                       ; $40e5: $ef
    ld hl, sp-$21                                 ; $40e6: $f8 $df
    ld hl, sp-$53                                 ; $40e8: $f8 $ad
    ld a, [$fdda]                                 ; $40ea: $fa $da $fd
    ld [bc], a                                    ; $40ed: $02
    rst $38                                       ; $40ee: $ff
    adc h                                         ; $40ef: $8c
    rst $28                                       ; $40f0: $ef
    rst $38                                       ; $40f1: $ff
    db $dd                                        ; $40f2: $dd
    ld a, [$7c6b]                                 ; $40f3: $fa $6b $7c
    ld e, e                                       ; $40f6: $5b
    ld a, h                                       ; $40f7: $7c
    ld h, [hl]                                    ; $40f8: $66

jr_0f1_40f9:
    ld a, l                                       ; $40f9: $7d
    dec a                                         ; $40fa: $3d
    ld a, $02                                     ; $40fb: $3e $02
    rlca                                          ; $40fd: $07
    stop                                          ; $40fe: $10 $00
    ld [bc], a                                    ; $4100: $02
    inc bc                                        ; $4101: $03
    sub a                                         ; $4102: $97
    inc e                                         ; $4103: $1c
    rra                                           ; $4104: $1f
    dec l                                         ; $4105: $2d
    inc sp                                        ; $4106: $33
    ld a, a                                       ; $4107: $7f
    ld b, b                                       ; $4108: $40
    rst $18                                       ; $4109: $df
    and b                                         ; $410a: $a0
    xor e                                         ; $410b: $ab
    call nc, $fa65                                ; $410c: $d4 $65 $fa
    call c, $0fff                                 ; $410f: $dc $ff $0f
    rst $38                                       ; $4112: $ff
    ld b, e                                       ; $4113: $43

jr_0f1_4114:
    cp [hl]                                       ; $4114: $be
    or l                                          ; $4115: $b5
    ld e, a                                       ; $4116: $5f
    xor a                                         ; $4117: $af
    rst $38                                       ; $4118: $ff
    ld a, a                                       ; $4119: $7f
    ld [bc], a                                    ; $411a: $02
    rst $38                                       ; $411b: $ff
    adc l                                         ; $411c: $8d
    ld hl, sp-$01                                 ; $411d: $f8 $ff
    ld a, b                                       ; $411f: $78
    or e                                          ; $4120: $b3
    ld a, h                                       ; $4121: $7c
    rst $10                                       ; $4122: $d7
    jr z, jr_0f1_4114                             ; $4123: $28 $ef

    db $10                                        ; $4125: $10
    cp $01                                        ; $4126: $fe $01
    rst $20                                       ; $4128: $e7
    rra                                           ; $4129: $1f
    ld [bc], a                                    ; $412a: $02
    rst $38                                       ; $412b: $ff
    xor a                                         ; $412c: $af
    ld a, [c]                                     ; $412d: $f2
    rst $38                                       ; $412e: $ff
    dec a                                         ; $412f: $3d
    jp $817e                                      ; $4130: $c3 $7e $81


    cp c                                          ; $4133: $b9
    ld b, a                                       ; $4134: $47
    ld d, [hl]                                    ; $4135: $56
    cp c                                          ; $4136: $b9
    cp e                                          ; $4137: $bb
    call nz, Call_000_04fb                        ; $4138: $c4 $fb $04
    ei                                            ; $413b: $fb
    inc b                                         ; $413c: $04
    push de                                       ; $413d: $d5
    dec hl                                        ; $413e: $2b
    sbc c                                         ; $413f: $99
    ld a, [hl]                                    ; $4140: $7e
    cp [hl]                                       ; $4141: $be
    pop bc                                        ; $4142: $c1
    cp a                                          ; $4143: $bf
    ld b, b                                       ; $4144: $40
    ld e, a                                       ; $4145: $5f
    and b                                         ; $4146: $a0
    rst $38                                       ; $4147: $ff
    jr nz, jr_0f1_40f9                            ; $4148: $20 $af

    ld [hl], b                                    ; $414a: $70
    ld d, [hl]                                    ; $414b: $56
    xor c                                         ; $414c: $a9
    xor h                                         ; $414d: $ac
    ld e, a                                       ; $414e: $5f
    ld e, [hl]                                    ; $414f: $5e
    pop hl                                        ; $4150: $e1
    ld a, l                                       ; $4151: $7d
    ld [bc], a                                    ; $4152: $02
    ld a, [hl]                                    ; $4153: $7e
    ld bc, $007f                                  ; $4154: $01 $7f $00
    ccf                                           ; $4157: $3f
    ld b, b                                       ; $4158: $40
    ld d, l                                       ; $4159: $55
    cpl                                           ; $415a: $2f
    dec [hl]                                      ; $415b: $35
    ld [bc], a                                    ; $415c: $02
    ld a, d                                       ; $415d: $7a
    and c                                         ; $415e: $a1
    dec b                                         ; $415f: $05
    ld [hl], c                                    ; $4160: $71
    ld c, $6b                                     ; $4161: $0e $6b
    rla                                           ; $4163: $17
    ld sp, hl                                     ; $4164: $f9
    cp $2e                                        ; $4165: $fe $2e
    pop de                                        ; $4167: $d1
    rst $18                                       ; $4168: $df
    jr nz, @+$01                                  ; $4169: $20 $ff

    nop                                           ; $416b: $00
    rst $38                                       ; $416c: $ff
    nop                                           ; $416d: $00
    xor c                                         ; $416e: $a9
    ld d, a                                       ; $416f: $57
    ld a, a                                       ; $4170: $7f
    rst $38                                       ; $4171: $ff
    di                                            ; $4172: $f3
    db $fc                                        ; $4173: $fc
    ld a, a                                       ; $4174: $7f
    add b                                         ; $4175: $80
    rst $38                                       ; $4176: $ff
    nop                                           ; $4177: $00
    rst $38                                       ; $4178: $ff
    nop                                           ; $4179: $00
    sub $29                                       ; $417a: $d6 $29
    add sp, $17                                   ; $417c: $e8 $17
    rst $08                                       ; $417e: $cf
    ccf                                           ; $417f: $3f
    ld [bc], a                                    ; $4180: $02
    ldh a, [rSC]                                  ; $4181: $f0 $02
    nop                                           ; $4183: $00
    ld [bc], a                                    ; $4184: $02
    add b                                         ; $4185: $80
    add c                                         ; $4186: $81
    nop                                           ; $4187: $00
    ld [bc], a                                    ; $4188: $02
    add b                                         ; $4189: $80
    add [hl]                                      ; $418a: $86
    nop                                           ; $418b: $00
    add b                                         ; $418c: $80
    nop                                           ; $418d: $00
    add b                                         ; $418e: $80
    nop                                           ; $418f: $00
    add b                                         ; $4190: $80
    ld [bc], a                                    ; $4191: $02
    nop                                           ; $4192: $00
    inc bc                                        ; $4193: $03
    add b                                         ; $4194: $80
    stop                                          ; $4195: $10 $00
    ld [bc], a                                    ; $4197: $02
    ret nz                                        ; $4198: $c0

    sub d                                         ; $4199: $92
    ld a, b                                       ; $419a: $78
    ld hl, sp-$69                                 ; $419b: $f8 $97
    rst $38                                       ; $419d: $ff
    ld h, d                                       ; $419e: $62
    rst $38                                       ; $419f: $ff
    db $ec                                        ; $41a0: $ec
    rra                                           ; $41a1: $1f
    ei                                            ; $41a2: $fb
    rlca                                          ; $41a3: $07
    rst $38                                       ; $41a4: $ff
    nop                                           ; $41a5: $00
    rst $38                                       ; $41a6: $ff
    nop                                           ; $41a7: $00
    sbc a                                         ; $41a8: $9f
    ldh [$73], a                                  ; $41a9: $e0 $73
    db $fc                                        ; $41ab: $fc
    ld [bc], a                                    ; $41ac: $02
    cp a                                          ; $41ad: $bf
    inc b                                         ; $41ae: $04
    ret nz                                        ; $41af: $c0

    ld [bc], a                                    ; $41b0: $02
    ret c                                         ; $41b1: $d8

    adc d                                         ; $41b2: $8a
    db $f4                                        ; $41b3: $f4
    db $fc                                        ; $41b4: $fc
    or h                                          ; $41b5: $b4
    db $fc                                        ; $41b6: $fc
    add h                                         ; $41b7: $84
    db $fc                                        ; $41b8: $fc
    inc b                                         ; $41b9: $04
    db $fc                                        ; $41ba: $fc
    add h                                         ; $41bb: $84
    ld a, h                                       ; $41bc: $7c
    ld [bc], a                                    ; $41bd: $02
    ld hl, sp+$02                                 ; $41be: $f8 $02
    ldh a, [$83]                                  ; $41c0: $f0 $83
    ret nc                                        ; $41c2: $d0

    ld [hl], b                                    ; $41c3: $70
    ld l, b                                       ; $41c4: $68

jr_0f1_41c5:
    ld [bc], a                                    ; $41c5: $02
    cp b                                          ; $41c6: $b8
    bit 7, b                                      ; $41c7: $cb $78
    add sp, -$08                                  ; $41c9: $e8 $f8
    jr jr_0f1_41c5                                ; $41cb: $18 $f8

    ld c, h                                       ; $41cd: $4c
    cp h                                          ; $41ce: $bc
    or h                                          ; $41cf: $b4
    call c, $bc5c                                 ; $41d0: $dc $5c $bc
    db $f4                                        ; $41d3: $f4
    db $fc                                        ; $41d4: $fc
    ld c, d                                       ; $41d5: $4a
    cp $a6                                        ; $41d6: $fe $a6
    ld e, [hl]                                    ; $41d8: $5e
    ld e, d                                       ; $41d9: $5a
    xor $a6                                       ; $41da: $ee $a6
    ld e, [hl]                                    ; $41dc: $5e
    rst $08                                       ; $41dd: $cf
    ld a, a                                       ; $41de: $7f
    ld a, l                                       ; $41df: $7d
    cp a                                          ; $41e0: $bf
    add e                                         ; $41e1: $83
    rst $38                                       ; $41e2: $ff
    push af                                       ; $41e3: $f5
    dec hl                                        ; $41e4: $2b
    jp z, $e537                                   ; $41e5: $ca $37 $e5

    sbc a                                         ; $41e8: $9f
    ld a, e                                       ; $41e9: $7b
    sub a                                         ; $41ea: $97
    rst $28                                       ; $41eb: $ef
    sbc a                                         ; $41ec: $9f
    inc [hl]                                      ; $41ed: $34
    ei                                            ; $41ee: $fb
    ld a, c                                       ; $41ef: $79
    adc a                                         ; $41f0: $8f
    ld [hl], h                                    ; $41f1: $74
    adc e                                         ; $41f2: $8b
    ei                                            ; $41f3: $fb
    rrca                                          ; $41f4: $0f
    sbc [hl]                                      ; $41f5: $9e
    ld a, l                                       ; $41f6: $7d
    pop hl                                        ; $41f7: $e1
    cp $55                                        ; $41f8: $fe $55
    xor [hl]                                      ; $41fa: $ae
    ld [$f515], a                                 ; $41fb: $ea $15 $f5
    ld c, $fb                                     ; $41fe: $0e $fb
    rlca                                          ; $4200: $07
    ld c, a                                       ; $4201: $4f
    cp a                                          ; $4202: $bf
    db $fd                                        ; $4203: $fd
    rst $38                                       ; $4204: $ff
    jp z, Jump_0f1_7ef5                           ; $4205: $ca $f5 $7e

    add c                                         ; $4208: $81
    db $fd                                        ; $4209: $fd
    ld [bc], a                                    ; $420a: $02
    cp $01                                        ; $420b: $fe $01
    ld d, h                                       ; $420d: $54
    xor e                                         ; $420e: $ab
    and a                                         ; $420f: $a7
    ld e, a                                       ; $4210: $5f
    ld a, b                                       ; $4211: $78
    ld hl, sp+$02                                 ; $4212: $f8 $02
    add b                                         ; $4214: $80
    inc b                                         ; $4215: $04
    nop                                           ; $4216: $00
    ld [bc], a                                    ; $4217: $02
    ret nz                                        ; $4218: $c0

    sub d                                         ; $4219: $92
    ld [hl], b                                    ; $421a: $70
    ldh a, [rNR32]                                ; $421b: $f0 $1c
    db $fc                                        ; $421d: $fc
    ld h, a                                       ; $421e: $67
    rst $38                                       ; $421f: $ff
    reti                                          ; $4220: $d9


    ccf                                           ; $4221: $3f
    db $f4                                        ; $4222: $f4
    rrca                                          ; $4223: $0f
    rst $38                                       ; $4224: $ff
    inc bc                                        ; $4225: $03
    ld a, [hl-]                                   ; $4226: $3a
    push bc                                       ; $4227: $c5
    push hl                                       ; $4228: $e5
    ld a, [$1f1e]                                 ; $4229: $fa $1e $1f
    ld [bc], a                                    ; $422c: $02
    ld bc, $002a                                  ; $422d: $01 $2a $00
    ld b, $80                                     ; $4230: $06 $80
    add c                                         ; $4232: $81
    ld b, b                                       ; $4233: $40
    inc bc                                        ; $4234: $03
    ret nz                                        ; $4235: $c0

    add d                                         ; $4236: $82
    ld b, b                                       ; $4237: $40
    ret nz                                        ; $4238: $c0

    ld [bc], a                                    ; $4239: $02
    ldh [$9a], a                                  ; $423a: $e0 $9a
    ret nc                                        ; $423c: $d0

    ldh a, [$28]                                  ; $423d: $f0 $28
    ld hl, sp+$58                                 ; $423f: $f8 $58

jr_0f1_4241:
    ld hl, sp+$2c                                 ; $4241: $f8 $2c
    ld a, h                                       ; $4243: $7c
    ld e, [hl]                                    ; $4244: $5e
    ld a, $3a                                     ; $4245: $3e $3a
    ld a, [hl]                                    ; $4247: $7e
    halt                                          ; $4248: $76
    ld a, [hl]                                    ; $4249: $7e
    ld c, d                                       ; $424a: $4a
    ld a, [hl]                                    ; $424b: $7e
    ld d, [hl]                                    ; $424c: $56
    ld l, $44                                     ; $424d: $2e $44
    cp h                                          ; $424f: $bc
    xor h                                         ; $4250: $ac
    call c, $b8c8                                 ; $4251: $dc $c8 $b8
    or b                                          ; $4254: $b0
    ldh a, [rSC]                                  ; $4255: $f0 $02
    ret nz                                        ; $4257: $c0

    ld d, $00                                     ; $4258: $16 $00
    ld [bc], a                                    ; $425a: $02
    add b                                         ; $425b: $80
    adc h                                         ; $425c: $8c
    ld b, b                                       ; $425d: $40
    ret nz                                        ; $425e: $c0

    jr nz, jr_0f1_4241                            ; $425f: $20 $e0

    sub b                                         ; $4261: $90
    ldh a, [rBCPS]                                ; $4262: $f0 $68
    ld hl, sp+$04                                 ; $4264: $f8 $04
    db $fc                                        ; $4266: $fc
    ld a, [c]                                     ; $4267: $f2
    cp $02                                        ; $4268: $fe $02
    inc c                                         ; $426a: $0c
    stop                                          ; $426b: $10 $00
    rst $38                                       ; $426d: $ff
    scf                                           ; $426e: $37
    add hl, de                                    ; $426f: $19
    rst $30                                       ; $4270: $f7
    ld a, [bc]                                    ; $4271: $0a
    jp $b600                                      ; $4272: $c3 $00 $b6


    jp hl                                         ; $4275: $e9


    add $e9                                       ; $4276: $c6 $e9
    cp l                                          ; $4278: $bd
    pop af                                        ; $4279: $f1
    call $ddf1                                    ; $427a: $cd $f1 $dd
    or $e4                                        ; $427d: $f6 $e4
    push af                                       ; $427f: $f5
    rst $28                                       ; $4280: $ef
    db $f4                                        ; $4281: $f4
    ldh a, [$f3]                                  ; $4282: $f0 $f3
    ld a, [c]                                     ; $4284: $f2
    ld a, [c]                                     ; $4285: $f2
    di                                            ; $4286: $f3
    pop af                                        ; $4287: $f1
    cp a                                          ; $4288: $bf
    ld sp, hl                                     ; $4289: $f9
    rst $08                                       ; $428a: $cf
    ld sp, hl                                     ; $428b: $f9
    rst $18                                       ; $428c: $df
    cp $ed                                        ; $428d: $fe $ed
    db $fd                                        ; $428f: $fd
    db $f4                                        ; $4290: $f4
    db $fc                                        ; $4291: $fc
    pop bc                                        ; $4292: $c1
    ld bc, $01d1                                  ; $4293: $01 $d1 $01
    pop hl                                        ; $4296: $e1
    ld b, $ef                                     ; $4297: $06 $ef
    dec b                                         ; $4299: $05
    pop bc                                        ; $429a: $c1
    add hl, bc                                    ; $429b: $09

Jump_0f1_429c:
    pop de                                        ; $429c: $d1
    add hl, bc                                    ; $429d: $09
    ldh a, [$0e]                                  ; $429e: $f0 $0e
    pop af                                        ; $42a0: $f1
    dec c                                         ; $42a1: $0d
    pop bc                                        ; $42a2: $c1
    ld de, $19c3                                  ; $42a3: $11 $c3 $19
    ld [bc], a                                    ; $42a6: $02
    ld [$1489], sp                                ; $42a7: $08 $89 $14
    inc e                                         ; $42aa: $1c
    ld a, [de]                                    ; $42ab: $1a
    ld d, $12                                     ; $42ac: $16 $12
    ld e, $0d                                     ; $42ae: $1e $0d
    dec bc                                        ; $42b0: $0b
    dec c                                         ; $42b1: $0d
    ld [bc], a                                    ; $42b2: $02

jr_0f1_42b3:
    dec bc                                        ; $42b3: $0b
    add d                                         ; $42b4: $82
    dec c                                         ; $42b5: $0d
    ld b, $02                                     ; $42b6: $06 $02
    dec b                                         ; $42b8: $05
    adc c                                         ; $42b9: $89
    ld b, $05                                     ; $42ba: $06 $05
    ld b, $02                                     ; $42bc: $06 $02
    inc bc                                        ; $42be: $03
    ld [bc], a                                    ; $42bf: $02
    inc bc                                        ; $42c0: $03
    ld [bc], a                                    ; $42c1: $02
    inc bc                                        ; $42c2: $03
    ld [$1e01], sp                                ; $42c3: $08 $01 $1e
    nop                                           ; $42c6: $00
    inc b                                         ; $42c7: $04
    add b                                         ; $42c8: $80
    add e                                         ; $42c9: $83
    ld b, b                                       ; $42ca: $40
    ret nz                                        ; $42cb: $c0

    ld b, b                                       ; $42cc: $40
    ld [bc], a                                    ; $42cd: $02
    ret nz                                        ; $42ce: $c0

    add h                                         ; $42cf: $84
    ld b, b                                       ; $42d0: $40
    jr nz, jr_0f1_42b3                            ; $42d1: $20 $e0

    ld h, b                                       ; $42d3: $60
    ld [bc], a                                    ; $42d4: $02
    ldh [$93], a                                  ; $42d5: $e0 $93
    and b                                         ; $42d7: $a0
    ld [hl], b                                    ; $42d8: $70
    sub b                                         ; $42d9: $90
    db $10                                        ; $42da: $10
    ldh a, [$a0]                                  ; $42db: $f0 $a0
    ldh [$d0], a                                  ; $42dd: $e0 $d0
    ldh a, [$b0]                                  ; $42df: $f0 $b0
    ret nc                                        ; $42e1: $d0

    xor a                                         ; $42e2: $af
    rst $18                                       ; $42e3: $df
    ld e, d                                       ; $42e4: $5a
    ld l, l                                       ; $42e5: $6d
    ld d, d                                       ; $42e6: $52
    ld l, a                                       ; $42e7: $6f
    ld d, a                                       ; $42e8: $57
    ld a, a                                       ; $42e9: $7f
    ld [bc], a                                    ; $42ea: $02
    jr c, jr_0f1_42ef                             ; $42eb: $38 $02

    nop                                           ; $42ed: $00
    ld [bc], a                                    ; $42ee: $02

jr_0f1_42ef:
    ld bc, $0302                                  ; $42ef: $01 $02 $03
    adc e                                         ; $42f2: $8b
    dec b                                         ; $42f3: $05
    rlca                                          ; $42f4: $07
    dec c                                         ; $42f5: $0d
    rrca                                          ; $42f6: $0f
    jr @+$21                                      ; $42f7: $18 $1f

    inc d                                         ; $42f9: $14
    rra                                           ; $42fa: $1f
    ld a, [de]                                    ; $42fb: $1a
    rra                                           ; $42fc: $1f
    rla                                           ; $42fd: $17
    inc bc                                        ; $42fe: $03
    rra                                           ; $42ff: $1f
    add e                                         ; $4300: $83
    ld c, $0f                                     ; $4301: $0e $0f
    rlca                                          ; $4303: $07
    ld [bc], a                                    ; $4304: $02
    ld b, $92                                     ; $4305: $06 $92
    rlca                                          ; $4307: $07
    dec b                                         ; $4308: $05
    ld b, $97                                     ; $4309: $06 $97
    ld a, [$dfb3]                                 ; $430b: $fa $b3 $df
    rst $08                                       ; $430e: $cf
    ldh a, [$9f]                                  ; $430f: $f0 $9f
    ldh a, [$cf]                                  ; $4311: $f0 $cf
    ldh a, [$bf]                                  ; $4313: $f0 $bf
    ret nc                                        ; $4315: $d0

    rst $08                                       ; $4316: $cf
    ldh a, [$85]                                  ; $4317: $f0 $85
    ld [bc], a                                    ; $4319: $02
    rst $38                                       ; $431a: $ff
    adc b                                         ; $431b: $88
    and b                                         ; $431c: $a0
    cp l                                          ; $431d: $bd
    ld [c], a                                     ; $431e: $e2
    ld a, l                                       ; $431f: $7d
    and d                                         ; $4320: $a2
    ld a, $e3                                     ; $4321: $3e $e3
    ld h, e                                       ; $4323: $63
    ld [bc], a                                    ; $4324: $02
    cp a                                          ; $4325: $bf
    add l                                         ; $4326: $85
    ldh [$7f], a                                  ; $4327: $e0 $7f
    and b                                         ; $4329: $a0
    cp a                                          ; $432a: $bf
    ldh [rNR12], a                                ; $432b: $e0 $12
    add b                                         ; $432d: $80
    adc [hl]                                      ; $432e: $8e
    or a                                          ; $432f: $b7
    ret c                                         ; $4330: $d8

    ld a, [$f6ff]                                 ; $4331: $fa $ff $f6
    jp hl                                         ; $4334: $e9


    rrca                                          ; $4335: $0f
    ldh a, [$3a]                                  ; $4336: $f0 $3a
    push hl                                       ; $4338: $e5
    db $eb                                        ; $4339: $eb
    rst $38                                       ; $433a: $ff
    ccf                                           ; $433b: $3f
    ret nz                                        ; $433c: $c0

    ld [bc], a                                    ; $433d: $02
    add b                                         ; $433e: $80
    add e                                         ; $433f: $83
    nop                                           ; $4340: $00
    add b                                         ; $4341: $80
    nop                                           ; $4342: $00
    inc bc                                        ; $4343: $03
    add b                                         ; $4344: $80
    adc h                                         ; $4345: $8c
    nop                                           ; $4346: $00
    add b                                         ; $4347: $80
    ld a, a                                       ; $4348: $7f
    and b                                         ; $4349: $a0
    adc a                                         ; $434a: $8f
    ld [hl], b                                    ; $434b: $70
    ld a, a                                       ; $434c: $7f
    and b                                         ; $434d: $a0
    adc a                                         ; $434e: $8f
    ld [hl], b                                    ; $434f: $70
    ld [hl], l                                    ; $4350: $75
    xor d                                         ; $4351: $aa
    ld b, $ff                                     ; $4352: $06 $ff
    ld b, $00                                     ; $4354: $06 $00
    inc b                                         ; $4356: $04
    add b                                         ; $4357: $80
    add c                                         ; $4358: $81
    nop                                           ; $4359: $00
    inc bc                                        ; $435a: $03
    add b                                         ; $435b: $80
    add a                                         ; $435c: $87
    nop                                           ; $435d: $00
    add b                                         ; $435e: $80
    nop                                           ; $435f: $00
    add b                                         ; $4360: $80
    nop                                           ; $4361: $00
    add b                                         ; $4362: $80
    nop                                           ; $4363: $00
    ld [bc], a                                    ; $4364: $02
    add b                                         ; $4365: $80
    add c                                         ; $4366: $81
    nop                                           ; $4367: $00
    inc b                                         ; $4368: $04
    add b                                         ; $4369: $80
    ld a, [bc]                                    ; $436a: $0a
    nop                                           ; $436b: $00
    inc b                                         ; $436c: $04
    add b                                         ; $436d: $80
    add c                                         ; $436e: $81
    nop                                           ; $436f: $00
    inc bc                                        ; $4370: $03
    add b                                         ; $4371: $80
    add c                                         ; $4372: $81
    nop                                           ; $4373: $00
    inc bc                                        ; $4374: $03
    add b                                         ; $4375: $80
    add c                                         ; $4376: $81
    nop                                           ; $4377: $00
    dec b                                         ; $4378: $05
    add b                                         ; $4379: $80
    ld c, $00                                     ; $437a: $0e $00
    ld c, $80                                     ; $437c: $0e $80
    ld [de], a                                    ; $437e: $12
    nop                                           ; $437f: $00
    ld [bc], a                                    ; $4380: $02
    inc a                                         ; $4381: $3c
    xor h                                         ; $4382: $ac
    ld e, [hl]                                    ; $4383: $5e
    ld h, d                                       ; $4384: $62
    cp e                                          ; $4385: $bb
    rst $00                                       ; $4386: $c7
    rst $30                                       ; $4387: $f7
    adc a                                         ; $4388: $8f
    cp a                                          ; $4389: $bf
    rst $08                                       ; $438a: $cf
    ld a, a                                       ; $438b: $7f
    ld c, a                                       ; $438c: $4f
    ld a, a                                       ; $438d: $7f
    ld c, a                                       ; $438e: $4f
    ld l, e                                       ; $438f: $6b
    ld e, a                                       ; $4390: $5f
    ld [hl], c                                    ; $4391: $71
    ld e, a                                       ; $4392: $5f
    dec hl                                        ; $4393: $2b
    ccf                                           ; $4394: $3f
    push af                                       ; $4395: $f5
    rst $38                                       ; $4396: $ff
    ld d, b                                       ; $4397: $50

jr_0f1_4398:
    xor a                                         ; $4398: $af
    push hl                                       ; $4399: $e5
    ld a, [de]                                    ; $439a: $1a
    adc [hl]                                      ; $439b: $8e
    pop af                                        ; $439c: $f1
    ld b, l                                       ; $439d: $45
    ld a, [$f5aa]                                 ; $439e: $fa $aa $f5
    ld d, l                                       ; $43a1: $55
    ld a, a                                       ; $43a2: $7f
    ei                                            ; $43a3: $fb
    rst $38                                       ; $43a4: $ff
    rst $18                                       ; $43a5: $df
    ld a, $7f                                     ; $43a6: $3e $7f
    sbc [hl]                                      ; $43a8: $9e
    rst $38                                       ; $43a9: $ff
    nop                                           ; $43aa: $00
    ld a, a                                       ; $43ab: $7f
    add b                                         ; $43ac: $80
    push de                                       ; $43ad: $d5
    ccf                                           ; $43ae: $3f
    inc b                                         ; $43af: $04
    rst $38                                       ; $43b0: $ff
    add l                                         ; $43b1: $85
    xor d                                         ; $43b2: $aa
    push de                                       ; $43b3: $d5
    ld e, a                                       ; $43b4: $5f
    and b                                         ; $43b5: $a0
    dec d                                         ; $43b6: $15
    ld [bc], a                                    ; $43b7: $02
    rst $38                                       ; $43b8: $ff
    xor b                                         ; $43b9: $a8
    add b                                         ; $43ba: $80
    ld l, a                                       ; $43bb: $6f
    sub b                                         ; $43bc: $90
    rlca                                          ; $43bd: $07
    nop                                           ; $43be: $00
    ld [bc], a                                    ; $43bf: $02
    rlca                                          ; $43c0: $07
    rst $38                                       ; $43c1: $ff
    nop                                           ; $43c2: $00
    rst $28                                       ; $43c3: $ef
    db $10                                        ; $43c4: $10
    rst $28                                       ; $43c5: $ef
    db $10                                        ; $43c6: $10
    xor a                                         ; $43c7: $af
    ld d, b                                       ; $43c8: $50

jr_0f1_43c9:
    ld e, e                                       ; $43c9: $5b
    or h                                          ; $43ca: $b4
    ld [hl], l                                    ; $43cb: $75
    rst $38                                       ; $43cc: $ff
    cp $01                                        ; $43cd: $fe $01
    cp $01                                        ; $43cf: $fe $01
    rst $38                                       ; $43d1: $ff
    ld bc, $01fe                                  ; $43d2: $01 $fe $01
    ld d, a                                       ; $43d5: $57
    rst $38                                       ; $43d6: $ff
    rst $18                                       ; $43d7: $df
    jr nz, jr_0f1_43c9                            ; $43d8: $20 $ef

    db $10                                        ; $43da: $10
    rst $00                                       ; $43db: $c7
    jr c, jr_0f1_4398                             ; $43dc: $38 $ba

    ld d, l                                       ; $43de: $55
    ld [hl], l                                    ; $43df: $75
    rst $38                                       ; $43e0: $ff
    nop                                           ; $43e1: $00

jr_0f1_43e2:
    inc bc                                        ; $43e2: $03
    add b                                         ; $43e3: $80
    sub h                                         ; $43e4: $94
    cp $01                                        ; $43e5: $fe $01
    db $fd                                        ; $43e7: $fd
    ld [bc], a                                    ; $43e8: $02
    cp a                                          ; $43e9: $bf
    ld b, b                                       ; $43ea: $40
    jp c, $baff                                   ; $43eb: $da $ff $ba

    ld b, l                                       ; $43ee: $45
    push de                                       ; $43ef: $d5
    ld a, [hl+]                                   ; $43f0: $2a
    ei                                            ; $43f1: $fb
    inc b                                         ; $43f2: $04
    rst $38                                       ; $43f3: $ff
    nop                                           ; $43f4: $00
    rst $38                                       ; $43f5: $ff
    nop                                           ; $43f6: $00
    ei                                            ; $43f7: $fb
    inc b                                         ; $43f8: $04
    ld b, $ff                                     ; $43f9: $06 $ff
    ld [bc], a                                    ; $43fb: $02
    nop                                           ; $43fc: $00
    add a                                         ; $43fd: $87
    add b                                         ; $43fe: $80
    nop                                           ; $43ff: $00
    add b                                         ; $4400: $80
    nop                                           ; $4401: $00
    add b                                         ; $4402: $80
    nop                                           ; $4403: $00
    add b                                         ; $4404: $80
    ld [bc], a                                    ; $4405: $02
    nop                                           ; $4406: $00
    rlca                                          ; $4407: $07
    add b                                         ; $4408: $80
    stop                                          ; $4409: $10 $00
    ld [bc], a                                    ; $440b: $02
    rst $38                                       ; $440c: $ff
    adc [hl]                                      ; $440d: $8e
    add c                                         ; $440e: $81
    rst $38                                       ; $440f: $ff
    ld e, [hl]                                    ; $4410: $5e
    rst $38                                       ; $4411: $ff
    ld a, a                                       ; $4412: $7f
    add b                                         ; $4413: $80
    rst $38                                       ; $4414: $ff
    nop                                           ; $4415: $00
    rst $38                                       ; $4416: $ff
    nop                                           ; $4417: $00
    rst $38                                       ; $4418: $ff
    nop                                           ; $4419: $00
    ccf                                           ; $441a: $3f
    ret nz                                        ; $441b: $c0

    ld [bc], a                                    ; $441c: $02
    rst $38                                       ; $441d: $ff
    adc h                                         ; $441e: $8c
    and a                                         ; $441f: $a7
    db $fc                                        ; $4420: $fc
    di                                            ; $4421: $f3
    adc a                                         ; $4422: $8f
    ld e, h                                       ; $4423: $5c
    xor h                                         ; $4424: $ac
    xor b                                         ; $4425: $a8
    ret c                                         ; $4426: $d8

    xor b                                         ; $4427: $a8
    ld hl, sp-$24                                 ; $4428: $f8 $dc
    db $fc                                        ; $442a: $fc
    ld [bc], a                                    ; $442b: $02
    rst $38                                       ; $442c: $ff
    adc d                                         ; $442d: $8a
    ei                                            ; $442e: $fb
    ld a, h                                       ; $442f: $7c
    rst $38                                       ; $4430: $ff
    ld a, b                                       ; $4431: $78
    xor a                                         ; $4432: $af
    ld d, b                                       ; $4433: $50
    rst $18                                       ; $4434: $df
    jr nz, jr_0f1_43e2                            ; $4435: $20 $ab

    db $fc                                        ; $4437: $fc
    inc b                                         ; $4438: $04
    rst $38                                       ; $4439: $ff
    add l                                         ; $443a: $85
    dec hl                                        ; $443b: $2b
    push de                                       ; $443c: $d5
    ld a, [hl]                                    ; $443d: $7e
    add c                                         ; $443e: $81
    sub h                                         ; $443f: $94
    ld [bc], a                                    ; $4440: $02
    rst $38                                       ; $4441: $ff
    cp a                                          ; $4442: $bf
    ld bc, $09f6                                  ; $4443: $01 $f6 $09
    and a                                         ; $4446: $a7
    ld e, c                                       ; $4447: $59
    sbc c                                         ; $4448: $99
    rst $38                                       ; $4449: $ff
    ld b, $01                                     ; $444a: $06 $01
    rlca                                          ; $444c: $07
    ld bc, $3ccc                                  ; $444d: $01 $cc $3c
    db $f4                                        ; $4450: $f4
    inc a                                         ; $4451: $3c
    call z, $863c                                 ; $4452: $cc $3c $86
    cp $be                                        ; $4455: $fe $be
    ld e, [hl]                                    ; $4457: $5e
    halt                                          ; $4458: $76
    sbc [hl]                                      ; $4459: $9e
    or d                                          ; $445a: $b2
    ld e, [hl]                                    ; $445b: $5e
    ld d, [hl]                                    ; $445c: $56
    cp [hl]                                       ; $445d: $be
    or d                                          ; $445e: $b2
    cp $f6                                        ; $445f: $fe $f6
    ld e, $f6                                     ; $4461: $1e $f6
    ld e, $f2                                     ; $4463: $1e $f2
    ld e, $b6                                     ; $4465: $1e $b6
    ld e, [hl]                                    ; $4467: $5e
    ld e, d                                       ; $4468: $5a
    cp $77                                        ; $4469: $fe $77
    adc a                                         ; $446b: $8f
    ld [$801f], a                                 ; $446c: $ea $1f $80
    nop                                           ; $446f: $00
    add b                                         ; $4470: $80
    nop                                           ; $4471: $00
    add sp, $17                                   ; $4472: $e8 $17
    cp a                                          ; $4474: $bf
    rst $38                                       ; $4475: $ff
    cp $03                                        ; $4476: $fe $03
    db $fc                                        ; $4478: $fc
    inc bc                                        ; $4479: $03
    ld a, [$fc07]                                 ; $447a: $fa $07 $fc
    inc bc                                        ; $447d: $03
    ld [$5417], a                                 ; $447e: $ea $17 $54
    xor e                                         ; $4481: $ab
    ld b, $ff                                     ; $4482: $06 $ff
    ld b, $00                                     ; $4484: $06 $00
    inc b                                         ; $4486: $04
    rst $38                                       ; $4487: $ff
    adc h                                         ; $4488: $8c
    ld a, d                                       ; $4489: $7a
    add l                                         ; $448a: $85
    rst $38                                       ; $448b: $ff
    nop                                           ; $448c: $00
    rst $38                                       ; $448d: $ff
    nop                                           ; $448e: $00
    rst $38                                       ; $448f: $ff
    nop                                           ; $4490: $00
    rst $38                                       ; $4491: $ff
    nop                                           ; $4492: $00
    db $f4                                        ; $4493: $f4
    dec bc                                        ; $4494: $0b
    ld [bc], a                                    ; $4495: $02
    rst $38                                       ; $4496: $ff
    add d                                         ; $4497: $82
    ld b, b                                       ; $4498: $40
    ret nz                                        ; $4499: $c0

    ld [bc], a                                    ; $449a: $02
    add b                                         ; $449b: $80
    ld [$0200], sp                                ; $449c: $08 $00 $02
    add b                                         ; $449f: $80
    ld [bc], a                                    ; $44a0: $02
    ret nz                                        ; $44a1: $c0

    ld [bc], a                                    ; $44a2: $02

jr_0f1_44a3:
    ldh [$89], a                                  ; $44a3: $e0 $89
    or b                                          ; $44a5: $b0
    ldh a, [$58]                                  ; $44a6: $f0 $58
    cp b                                          ; $44a8: $b8
    jr z, jr_0f1_44a3                             ; $44a9: $28 $f8

    ld e, b                                       ; $44ab: $58
    cp b                                          ; $44ac: $b8
    add sp, $03                                   ; $44ad: $e8 $03
    ld hl, sp-$70                                 ; $44af: $f8 $90
    ld [hl], b                                    ; $44b1: $70
    ldh a, [$a0]                                  ; $44b2: $f0 $a0
    ldh [$60], a                                  ; $44b4: $e0 $60
    ldh [rNR41], a                                ; $44b6: $e0 $20
    ldh [$60], a                                  ; $44b8: $e0 $60
    ldh [rNR41], a                                ; $44ba: $e0 $20
    ldh [$60], a                                  ; $44bc: $e0 $60
    ldh [rNR41], a                                ; $44be: $e0 $20
    ldh [rDIV], a                                 ; $44c0: $e0 $04
    add b                                         ; $44c2: $80
    ld [bc], a                                    ; $44c3: $02
    ret nz                                        ; $44c4: $c0

    ld [bc], a                                    ; $44c5: $02
    ldh [$89], a                                  ; $44c6: $e0 $89
    and b                                         ; $44c8: $a0
    ldh [$60], a                                  ; $44c9: $e0 $60
    ldh [$a0], a                                  ; $44cb: $e0 $a0
    ldh [$60], a                                  ; $44cd: $e0 $60
    ldh [$a0], a                                  ; $44cf: $e0 $a0
    inc bc                                        ; $44d1: $03
    ldh [rSC], a                                  ; $44d2: $e0 $02
    ret nz                                        ; $44d4: $c0

    ld a, [bc]                                    ; $44d5: $0a
    nop                                           ; $44d6: $00
    ld b, $80                                     ; $44d7: $06 $80
    add c                                         ; $44d9: $81
    nop                                           ; $44da: $00
    inc bc                                        ; $44db: $03
    add b                                         ; $44dc: $80
    add l                                         ; $44dd: $85
    nop                                           ; $44de: $00
    add b                                         ; $44df: $80
    nop                                           ; $44e0: $00
    add b                                         ; $44e1: $80
    nop                                           ; $44e2: $00
    rlca                                          ; $44e3: $07
    add b                                         ; $44e4: $80
    ld a, [bc]                                    ; $44e5: $0a
    nop                                           ; $44e6: $00
    ld [bc], a                                    ; $44e7: $02
    ret nz                                        ; $44e8: $c0

    add d                                         ; $44e9: $82
    inc a                                         ; $44ea: $3c
    db $fc                                        ; $44eb: $fc
    ld [bc], a                                    ; $44ec: $02
    rst $38                                       ; $44ed: $ff
    adc b                                         ; $44ee: $88
    db $fc                                        ; $44ef: $fc
    inc bc                                        ; $44f0: $03
    cp $01                                        ; $44f1: $fe $01
    push af                                       ; $44f3: $f5
    ld a, [bc]                                    ; $44f4: $0a
    xor c                                         ; $44f5: $a9
    ld d, a                                       ; $44f6: $57
    ld [bc], a                                    ; $44f7: $02
    cp $10                                        ; $44f8: $fe $10
    nop                                           ; $44fa: $00
    ld [bc], a                                    ; $44fb: $02
    ret nz                                        ; $44fc: $c0

    ld [bc], a                                    ; $44fd: $02
    ldh a, [$84]                                  ; $44fe: $f0 $84
    sub b                                         ; $4500: $90
    ld [hl], b                                    ; $4501: $70
    ld h, b                                       ; $4502: $60
    ldh [rSC], a                                  ; $4503: $e0 $02
    add b                                         ; $4505: $80
    ld d, $00                                     ; $4506: $16 $00
    rst $38                                       ; $4508: $ff
    ld sp, $f716                                  ; $4509: $31 $16 $f7
    ld a, [bc]                                    ; $450c: $0a
    jp $ba00                                      ; $450d: $c3 $00 $ba


    push af                                       ; $4510: $f5
    cp l                                          ; $4511: $bd
    db $fd                                        ; $4512: $fd
    jp nz, $c205                                  ; $4513: $c2 $05 $c2

    dec c                                         ; $4516: $0d
    call nz, $cd15                                ; $4517: $c4 $15 $cd
    ld a, [$02cd]                                 ; $451a: $fa $cd $02
    jp nc, $d20a                                  ; $451d: $d2 $0a $d2

    ld [de], a                                    ; $4520: $12
    jp nc, $dd16                                  ; $4521: $d2 $16 $dd

    rst $30                                       ; $4524: $f7
    db $dd                                        ; $4525: $dd
    rst $38                                       ; $4526: $ff
    db $dd                                        ; $4527: $dd
    rlca                                          ; $4528: $07
    ld [c], a                                     ; $4529: $e2
    ld [$14e2], sp                                ; $452a: $08 $e2 $14
    ld [$edf1], a                                 ; $452d: $ea $f1 $ed
    ld sp, hl                                     ; $4530: $f9
    db $ed                                        ; $4531: $ed
    ld bc, $08f2                                  ; $4532: $01 $f2 $08
    ld a, [$faf3]                                 ; $4535: $fa $f3 $fa
    ei                                            ; $4538: $fb
    ld a, [$0200]                                 ; $4539: $fa $00 $02
    ldh a, [$8a]                                  ; $453c: $f0 $8a
    adc h                                         ; $453e: $8c
    db $fc                                        ; $453f: $fc
    ld e, e                                       ; $4540: $5b
    ld h, a                                       ; $4541: $67
    ld h, $39                                     ; $4542: $26 $39
    add hl, de                                    ; $4544: $19
    ld e, $06                                     ; $4545: $1e $06
    rlca                                          ; $4547: $07
    ld [bc], a                                    ; $4548: $02
    ld bc, $0012                                  ; $4549: $01 $12 $00
    ld [bc], a                                    ; $454c: $02
    ret nz                                        ; $454d: $c0

    sbc d                                         ; $454e: $9a
    and b                                         ; $454f: $a0

jr_0f1_4550:
    ld h, b                                       ; $4550: $60
    ld e, b                                       ; $4551: $58
    cp b                                          ; $4552: $b8
    sub h                                         ; $4553: $94
    db $ec                                        ; $4554: $ec
    ld h, e                                       ; $4555: $63
    ld a, a                                       ; $4556: $7f
    dec de                                        ; $4557: $1b
    ld e, $05                                     ; $4558: $1e $05
    ld b, $0c                                     ; $455a: $06 $0c
    rrca                                          ; $455c: $0f
    ld [hl], $3b                                  ; $455d: $36 $3b
    ld [hl], e                                    ; $455f: $73
    ld c, a                                       ; $4560: $4f
    and $9e                                       ; $4561: $e6 $9e
    add l                                         ; $4563: $85
    ei                                            ; $4564: $fb
    ld [hl], c                                    ; $4565: $71
    ld a, [hl]                                    ; $4566: $7e
    dec e                                         ; $4567: $1d
    rra                                           ; $4568: $1f
    ld [bc], a                                    ; $4569: $02
    inc bc                                        ; $456a: $03
    ld [bc], a                                    ; $456b: $02
    ld bc, $8002                                  ; $456c: $01 $02 $80
    sbc [hl]                                      ; $456f: $9e
    ret nz                                        ; $4570: $c0

    ld b, b                                       ; $4571: $40
    ld c, a                                       ; $4572: $4f
    rst $08                                       ; $4573: $cf
    sub a                                         ; $4574: $97
    sbc b                                         ; $4575: $98
    rla                                           ; $4576: $17
    jr @+$0d                                      ; $4577: $18 $0b

    inc c                                         ; $4579: $0c
    call $3fce                                    ; $457a: $cd $ce $3f
    rst $38                                       ; $457d: $ff
    ld l, a                                       ; $457e: $6f
    sub a                                         ; $457f: $97
    inc e                                         ; $4580: $1c
    db $e3                                        ; $4581: $e3
    xor l                                         ; $4582: $ad
    jp nc, $ea57                                  ; $4583: $d2 $57 $ea

    rst $30                                       ; $4586: $f7
    cp $fd                                        ; $4587: $fe $fd
    rst $08                                       ; $4589: $cf
    cp [hl]                                       ; $458a: $be
    rst $00                                       ; $458b: $c7
    ld a, e                                       ; $458c: $7b
    add a                                         ; $458d: $87
    ld [bc], a                                    ; $458e: $02
    jr c, @-$60                                   ; $458f: $38 $9e

    ld e, [hl]                                    ; $4591: $5e
    ld h, [hl]                                    ; $4592: $66
    rst $38                                       ; $4593: $ff
    add a                                         ; $4594: $87
    rst $38                                       ; $4595: $ff
    rrca                                          ; $4596: $0f
    push af                                       ; $4597: $f5
    ld a, [de]                                    ; $4598: $1a
    jp c, $bf35                                   ; $4599: $da $35 $bf

    ld [hl], b                                    ; $459c: $70
    rst $30                                       ; $459d: $f7
    ld hl, sp-$09                                 ; $459e: $f8 $f7
    ld hl, sp+$7f                                 ; $45a0: $f8 $7f
    ld hl, sp-$71                                 ; $45a2: $f8 $8f
    ld a, b                                       ; $45a4: $78
    srl h                                         ; $45a5: $cb $3c
    rst $08                                       ; $45a7: $cf
    inc a                                         ; $45a8: $3c
    dec a                                         ; $45a9: $3d
    or $f7                                        ; $45aa: $f6 $f7
    ld a, [$ce7b]                                 ; $45ac: $fa $7b $ce
    ld [bc], a                                    ; $45af: $02
    jr nz, jr_0f1_4550                            ; $45b0: $20 $9e

    ret nc                                        ; $45b2: $d0

    ldh a, [$08]                                  ; $45b3: $f0 $08
    ld hl, sp-$38                                 ; $45b5: $f8 $c8
    ld a, b                                       ; $45b7: $78
    ld b, h                                       ; $45b8: $44
    db $fc                                        ; $45b9: $fc
    and h                                         ; $45ba: $a4
    ld a, h                                       ; $45bb: $7c
    ld h, h                                       ; $45bc: $64
    cp h                                          ; $45bd: $bc
    sub d                                         ; $45be: $92
    ld a, [hl]                                    ; $45bf: $7e
    jp nc, $e93e                                  ; $45c0: $d2 $3e $e9

    rra                                           ; $45c3: $1f
    ld sp, hl                                     ; $45c4: $f9
    rrca                                          ; $45c5: $0f
    ld sp, hl                                     ; $45c6: $f9
    rrca                                          ; $45c7: $0f
    push af                                       ; $45c8: $f5
    rrca                                          ; $45c9: $0f
    db $fd                                        ; $45ca: $fd
    rlca                                          ; $45cb: $07
    db $fc                                        ; $45cc: $fc
    rlca                                          ; $45cd: $07
    db $fc                                        ; $45ce: $fc
    rlca                                          ; $45cf: $07
    ld [bc], a                                    ; $45d0: $02
    rrca                                          ; $45d1: $0f
    adc h                                         ; $45d2: $8c
    ld l, a                                       ; $45d3: $6f
    ld l, h                                       ; $45d4: $6c
    cp a                                          ; $45d5: $bf
    db $fc                                        ; $45d6: $fc
    or a                                          ; $45d7: $b7
    db $fc                                        ; $45d8: $fc
    add a                                         ; $45d9: $87
    db $fc                                        ; $45da: $fc

jr_0f1_45db:
    add e                                         ; $45db: $83
    db $fc                                        ; $45dc: $fc
    add l                                         ; $45dd: $85
    ld a, [$7f02]                                 ; $45de: $fa $02 $7f
    ld [bc], a                                    ; $45e1: $02
    ccf                                           ; $45e2: $3f
    adc [hl]                                      ; $45e3: $8e
    dec l                                         ; $45e4: $2d
    dec sp                                        ; $45e5: $3b
    ld e, d                                       ; $45e6: $5a
    ld [hl], a                                    ; $45e7: $77
    ld [hl], l                                    ; $45e8: $75
    ld a, d                                       ; $45e9: $7a
    ld e, [hl]                                    ; $45ea: $5e
    ld a, a                                       ; $45eb: $7f
    ld h, c                                       ; $45ec: $61
    ld a, [hl]                                    ; $45ed: $7e
    set 6, h                                      ; $45ee: $cb $f4
    or a                                          ; $45f0: $b7
    db $ec                                        ; $45f1: $ec
    ld [bc], a                                    ; $45f2: $02
    and b                                         ; $45f3: $a0
    sub $e0                                       ; $45f4: $d6 $e0
    ld h, b                                       ; $45f6: $60
    ldh [$60], a                                  ; $45f7: $e0 $60
    jr nz, jr_0f1_45db                            ; $45f9: $20 $e0

    and b                                         ; $45fb: $a0
    ld b, b                                       ; $45fc: $40
    sbc $21                                       ; $45fd: $de $21
    rst $38                                       ; $45ff: $ff
    nop                                           ; $4600: $00
    sbc a                                         ; $4601: $9f
    ldh [$fe], a                                  ; $4602: $e0 $fe
    rst $38                                       ; $4604: $ff
    ccf                                           ; $4605: $3f
    rst $38                                       ; $4606: $ff
    di                                            ; $4607: $f3
    rrca                                          ; $4608: $0f
    ei                                            ; $4609: $fb
    ld b, $75                                     ; $460a: $06 $75
    adc d                                         ; $460c: $8a
    xor d                                         ; $460d: $aa
    ld [hl], l                                    ; $460e: $75
    halt                                          ; $460f: $76
    adc a                                         ; $4610: $8f
    ld a, a                                       ; $4611: $7f
    add b                                         ; $4612: $80
    or a                                          ; $4613: $b7
    ld a, c                                       ; $4614: $79
    ld e, l                                       ; $4615: $5d
    and e                                         ; $4616: $a3
    cp $03                                        ; $4617: $fe $03
    ld a, [hl]                                    ; $4619: $7e
    add e                                         ; $461a: $83
    and $fb                                       ; $461b: $e6 $fb
    db $fd                                        ; $461d: $fd
    rst $38                                       ; $461e: $ff
    sbc a                                         ; $461f: $9f
    ld a, a                                       ; $4620: $7f
    rst $18                                       ; $4621: $df
    cpl                                           ; $4622: $2f
    ld [$721e], a                                 ; $4623: $ea $1e $72
    adc [hl]                                      ; $4626: $8e
    ld e, $ee                                     ; $4627: $1e $ee
    or d                                          ; $4629: $b2
    ld e, [hl]                                    ; $462a: $5e
    and $5e                                       ; $462b: $e6 $5e
    ld [hl], d                                    ; $462d: $72
    sbc $c4                                       ; $462e: $de $c4
    cp h                                          ; $4630: $bc
    ld a, h                                       ; $4631: $7c
    db $fc                                        ; $4632: $fc
    ret nz                                        ; $4633: $c0

    ldh [$60], a                                  ; $4634: $e0 $60
    ldh [$ef], a                                  ; $4636: $e0 $ef
    ldh a, [$5f]                                  ; $4638: $f0 $5f
    ret nc                                        ; $463a: $d0

    rst $18                                       ; $463b: $df
    ret nc                                        ; $463c: $d0

    ld d, a                                       ; $463d: $57
    ret c                                         ; $463e: $d8

    adc a                                         ; $463f: $8f
    adc b                                         ; $4640: $88
    dec bc                                        ; $4641: $0b
    inc c                                         ; $4642: $0c
    rlca                                          ; $4643: $07
    inc b                                         ; $4644: $04
    dec b                                         ; $4645: $05
    ld b, $02                                     ; $4646: $06 $02
    inc bc                                        ; $4648: $03
    ld [bc], a                                    ; $4649: $02
    inc bc                                        ; $464a: $03
    inc b                                         ; $464b: $04
    ld bc, $0004                                  ; $464c: $01 $04 $00
    inc b                                         ; $464f: $04
    ld bc, $05e2                                  ; $4650: $01 $e2 $05

jr_0f1_4653:
    rrca                                          ; $4653: $0f
    dec b                                         ; $4654: $05
    rrca                                          ; $4655: $0f
    dec c                                         ; $4656: $0d
    rlca                                          ; $4657: $07
    dec c                                         ; $4658: $0d
    rlca                                          ; $4659: $07
    dec c                                         ; $465a: $0d
    rlca                                          ; $465b: $07
    dec b                                         ; $465c: $05
    rrca                                          ; $465d: $0f
    add hl, bc                                    ; $465e: $09
    rlca                                          ; $465f: $07
    dec b                                         ; $4660: $05
    dec bc                                        ; $4661: $0b
    add hl, bc                                    ; $4662: $09
    rlca                                          ; $4663: $07
    dec b                                         ; $4664: $05
    dec bc                                        ; $4665: $0b
    add hl, bc                                    ; $4666: $09
    rlca                                          ; $4667: $07
    dec b                                         ; $4668: $05
    dec bc                                        ; $4669: $0b
    ld a, [bc]                                    ; $466a: $0a
    ld c, $0a                                     ; $466b: $0e $0a
    ld c, $1d                                     ; $466d: $0e $1d
    ld e, $17                                     ; $466f: $1e $17
    rra                                           ; $4671: $1f
    add hl, hl                                    ; $4672: $29
    ccf                                           ; $4673: $3f
    ld [hl-], a                                   ; $4674: $32
    dec a                                         ; $4675: $3d
    dec l                                         ; $4676: $2d
    dec sp                                        ; $4677: $3b
    ld [hl-], a                                   ; $4678: $32
    dec a                                         ; $4679: $3d
    ld a, c                                       ; $467a: $79
    ld a, a                                       ; $467b: $7f
    ld e, a                                       ; $467c: $5f
    ld a, [hl]                                    ; $467d: $7e
    ld h, b                                       ; $467e: $60
    ld a, a                                       ; $467f: $7f
    ld d, a                                       ; $4680: $57
    ld l, d                                       ; $4681: $6a
    xor c                                         ; $4682: $a9
    or $d3                                        ; $4683: $f6 $d3
    db $fc                                        ; $4685: $fc
    rst $28                                       ; $4686: $ef
    db $f4                                        ; $4687: $f4
    ld a, e                                       ; $4688: $7b
    db $fc                                        ; $4689: $fc
    sub [hl]                                      ; $468a: $96
    rst $28                                       ; $468b: $ef
    ld c, a                                       ; $468c: $4f
    ld hl, sp+$6f                                 ; $468d: $f8 $6f
    sub b                                         ; $468f: $90
    push de                                       ; $4690: $d5
    ld [$bf4c], a                                 ; $4691: $ea $4c $bf
    cp [hl]                                       ; $4694: $be
    ld b, c                                       ; $4695: $41
    ld a, [hl]                                    ; $4696: $7e
    add c                                         ; $4697: $81
    db $fd                                        ; $4698: $fd
    ld [bc], a                                    ; $4699: $02
    rst $38                                       ; $469a: $ff
    ld [bc], a                                    ; $469b: $02
    ld a, d                                       ; $469c: $7a
    add a                                         ; $469d: $87
    or l                                          ; $469e: $b5
    jp z, Jump_0f1_7d9a                           ; $469f: $ca $9a $7d

    cp l                                          ; $46a2: $bd
    ld b, e                                       ; $46a3: $43
    rst $18                                       ; $46a4: $df
    and b                                         ; $46a5: $a0
    ccf                                           ; $46a6: $3f
    ret nz                                        ; $46a7: $c0

    rst $38                                       ; $46a8: $ff
    add b                                         ; $46a9: $80
    ld a, [hl]                                    ; $46aa: $7e
    add c                                         ; $46ab: $81
    ld d, l                                       ; $46ac: $55
    ld a, [$00e0]                                 ; $46ad: $fa $e0 $00
    ret nz                                        ; $46b0: $c0

    jr nz, jr_0f1_4653                            ; $46b1: $20 $a0

    ld b, b                                       ; $46b3: $40
    inc bc                                        ; $46b4: $03
    ldh [$97], a                                  ; $46b5: $e0 $97
    nop                                           ; $46b7: $00
    ld a, h                                       ; $46b8: $7c
    add e                                         ; $46b9: $83
    ld sp, hl                                     ; $46ba: $f9
    rlca                                          ; $46bb: $07
    db $fc                                        ; $46bc: $fc
    rlca                                          ; $46bd: $07
    ld a, c                                       ; $46be: $79
    add a                                         ; $46bf: $87
    cp a                                          ; $46c0: $bf
    ld b, a                                       ; $46c1: $47
    ld e, c                                       ; $46c2: $59
    rst $20                                       ; $46c3: $e7
    rst $00                                       ; $46c4: $c7
    ccf                                           ; $46c5: $3f
    reti                                          ; $46c6: $d9


    cpl                                           ; $46c7: $2f
    or e                                          ; $46c8: $b3
    ld c, a                                       ; $46c9: $4f
    ld sp, hl                                     ; $46ca: $f9
    ld c, a                                       ; $46cb: $4f
    ld [hl], e                                    ; $46cc: $73
    rst $08                                       ; $46cd: $cf
    ld [$0e01], sp                                ; $46ce: $08 $01 $0e
    nop                                           ; $46d1: $00
    adc d                                         ; $46d2: $8a
    ld a, h                                       ; $46d3: $7c
    sbc h                                         ; $46d4: $9c
    and h                                         ; $46d5: $a4
    call c, Call_000_3ccc                         ; $46d6: $dc $cc $3c
    db $e4                                        ; $46d9: $e4
    inc a                                         ; $46da: $3c
    ld c, h                                       ; $46db: $4c
    cp h                                          ; $46dc: $bc
    ld [bc], a                                    ; $46dd: $02
    ld bc, $001e                                  ; $46de: $01 $1e $00
    ld b, $04                                     ; $46e1: $06 $04
    jp c, Jump_000_0f0e                           ; $46e3: $da $0e $0f

    rla                                           ; $46e6: $17
    rra                                           ; $46e7: $1f
    jr z, jr_0f1_4729                             ; $46e8: $28 $3f

    dec [hl]                                      ; $46ea: $35
    ld a, $6a                                     ; $46eb: $3e $6a
    ld a, l                                       ; $46ed: $7d
    push af                                       ; $46ee: $f5
    ld a, [$fdba]                                 ; $46ef: $fa $ba $fd
    rst $18                                       ; $46f2: $df
    rst $38                                       ; $46f3: $ff
    and a                                         ; $46f4: $a7
    rst $38                                       ; $46f5: $ff
    sub $eb                                       ; $46f6: $d6 $eb
    adc c                                         ; $46f8: $89
    or $d5                                        ; $46f9: $f6 $d5
    xor $4e                                       ; $46fb: $ee $4e
    ld [hl], l                                    ; $46fd: $75
    ld e, l                                       ; $46fe: $5d
    and d                                         ; $46ff: $a2
    cp [hl]                                       ; $4700: $be
    pop hl                                        ; $4701: $e1
    di                                            ; $4702: $f3
    ld a, h                                       ; $4703: $7c
    rrca                                          ; $4704: $0f
    rst $38                                       ; $4705: $ff
    xor d                                         ; $4706: $aa
    push de                                       ; $4707: $d5
    ld e, l                                       ; $4708: $5d
    and d                                         ; $4709: $a2
    cp a                                          ; $470a: $bf
    ret nz                                        ; $470b: $c0

    ld a, a                                       ; $470c: $7f
    add b                                         ; $470d: $80
    set 6, h                                      ; $470e: $cb $f4
    cp $ff                                        ; $4710: $fe $ff
    ld c, a                                       ; $4712: $4f
    cp a                                          ; $4713: $bf
    ei                                            ; $4714: $fb
    inc b                                         ; $4715: $04
    rst $38                                       ; $4716: $ff
    nop                                           ; $4717: $00
    rst $38                                       ; $4718: $ff
    nop                                           ; $4719: $00
    xor e                                         ; $471a: $ab
    ld d, h                                       ; $471b: $54
    sub l                                         ; $471c: $95
    ld [$bc5a], a                                 ; $471d: $ea $5a $bc
    cp [hl]                                       ; $4720: $be
    ld b, d                                       ; $4721: $42
    ld e, $e0                                     ; $4722: $1e $e0
    xor [hl]                                      ; $4724: $ae
    ret nc                                        ; $4725: $d0

    ld a, h                                       ; $4726: $7c
    cp $d3                                        ; $4727: $fe $d3

jr_0f1_4729:
    cpl                                           ; $4729: $2f
    db $ed                                        ; $472a: $ed
    ld [de], a                                    ; $472b: $12
    rst $38                                       ; $472c: $ff
    nop                                           ; $472d: $00
    rst $38                                       ; $472e: $ff
    nop                                           ; $472f: $00
    ld d, [hl]                                    ; $4730: $56
    xor c                                         ; $4731: $a9
    ld sp, hl                                     ; $4732: $f9
    cp $3f                                        ; $4733: $fe $3f
    rst $38                                       ; $4735: $ff
    ld sp, hl                                     ; $4736: $f9
    rlca                                          ; $4737: $07
    rst $38                                       ; $4738: $ff
    nop                                           ; $4739: $00
    rst $38                                       ; $473a: $ff
    nop                                           ; $473b: $00
    xor a                                         ; $473c: $af
    ld d, b                                       ; $473d: $50
    ld [bc], a                                    ; $473e: $02
    ld a, h                                       ; $473f: $7c
    adc d                                         ; $4740: $8a
    ld d, h                                       ; $4741: $54
    inc a                                         ; $4742: $3c
    ld l, [hl]                                    ; $4743: $6e
    ld a, $76                                     ; $4744: $3e $76
    ld a, $6a                                     ; $4746: $3e $6a
    ld a, $36                                     ; $4748: $3e $36
    ld a, [hl]                                    ; $474a: $7e
    ld [bc], a                                    ; $474b: $02
    ld a, a                                       ; $474c: $7f
    adc h                                         ; $474d: $8c
    ld [hl], a                                    ; $474e: $77
    ld a, a                                       ; $474f: $7f
    dec sp                                        ; $4750: $3b
    ld e, a                                       ; $4751: $5f
    ld d, [hl]                                    ; $4752: $56
    ld a, $5a                                     ; $4753: $3e $5a
    ld a, $66                                     ; $4755: $3e $66
    cp [hl]                                       ; $4757: $be
    cp h                                          ; $4758: $bc
    ld a, h                                       ; $4759: $7c
    ld [bc], a                                    ; $475a: $02
    ldh [rDIV], a                                 ; $475b: $e0 $04
    nop                                           ; $475d: $00
    add h                                         ; $475e: $84
    call nc, $30f8                                ; $475f: $d4 $f8 $30
    inc a                                         ; $4762: $3c
    ld [bc], a                                    ; $4763: $02
    inc c                                         ; $4764: $0c
    ld [bc], a                                    ; $4765: $02
    ld bc, $001e                                  ; $4766: $01 $1e $00
    add d                                         ; $4769: $82
    pop hl                                        ; $476a: $e1
    cp $02                                        ; $476b: $fe $02
    rra                                           ; $476d: $1f
    inc e                                         ; $476e: $1c
    nop                                           ; $476f: $00
    add h                                         ; $4770: $84
    rrca                                          ; $4771: $0f
    db $10                                        ; $4772: $10
    ld b, $19                                     ; $4773: $06 $19
    ld [bc], a                                    ; $4775: $02
    rra                                           ; $4776: $1f
    inc d                                         ; $4777: $14
    nop                                           ; $4778: $00
    rst $38                                       ; $4779: $ff
    inc sp                                        ; $477a: $33
    rla                                           ; $477b: $17
    rst $30                                       ; $477c: $f7
    ld a, [bc]                                    ; $477d: $0a
    jp $c900                                      ; $477e: $c3 $00 $c9


    pop af                                        ; $4781: $f1
    reti                                          ; $4782: $d9


    pop af                                        ; $4783: $f1
    jp hl                                         ; $4784: $e9


    push af                                       ; $4785: $f5
    di                                            ; $4786: $f3
    db $f4                                        ; $4787: $f4
    db $f4                                        ; $4788: $f4
    di                                            ; $4789: $f3
    ld hl, sp-$0e                                 ; $478a: $f8 $f2
    ld sp, hl                                     ; $478c: $f9
    pop af                                        ; $478d: $f1
    call nz, $d4f9                                ; $478e: $c4 $f9 $d4
    ld sp, hl                                     ; $4791: $f9
    db $e4                                        ; $4792: $e4
    ld sp, hl                                     ; $4793: $f9
    db $f4                                        ; $4794: $f4
    db $fd                                        ; $4795: $fd
    ld sp, hl                                     ; $4796: $f9
    db $fc                                        ; $4797: $fc
    cp [hl]                                       ; $4798: $be
    ld bc, $01ce                                  ; $4799: $01 $ce $01
    sbc $01                                       ; $479c: $de $01
    xor $01                                       ; $479e: $ee $01
    cp $05                                        ; $47a0: $fe $05
    push bc                                       ; $47a2: $c5
    add hl, bc                                    ; $47a3: $09
    push de                                       ; $47a4: $d5
    add hl, bc                                    ; $47a5: $09
    push hl                                       ; $47a6: $e5
    add hl, bc                                    ; $47a7: $09
    push af                                       ; $47a8: $f5
    add hl, bc                                    ; $47a9: $09
    call z, $dc11                                 ; $47aa: $cc $11 $dc
    ld de, $0102                                  ; $47ad: $11 $02 $01
    adc d                                         ; $47b0: $8a
    ld c, $0f                                     ; $47b1: $0e $0f
    ld e, $11                                     ; $47b3: $1e $11
    jr jr_0f1_47ce                                ; $47b5: $18 $17

    inc de                                        ; $47b7: $13
    rra                                           ; $47b8: $1f
    ld c, $0f                                     ; $47b9: $0e $0f
    ld [bc], a                                    ; $47bb: $02
    ld bc, $0002                                  ; $47bc: $01 $02 $00
    ld [bc], a                                    ; $47bf: $02
    rrca                                          ; $47c0: $0f
    adc [hl]                                      ; $47c1: $8e
    ld a, $39                                     ; $47c2: $3e $39
    ld a, e                                       ; $47c4: $7b
    ld a, h                                       ; $47c5: $7c
    cp a                                          ; $47c6: $bf
    ld hl, sp-$7d                                 ; $47c7: $f8 $83
    db $fc                                        ; $47c9: $fc
    adc a                                         ; $47ca: $8f
    ld hl, sp-$7a                                 ; $47cb: $f8 $86
    ld sp, hl                                     ; $47cd: $f9

jr_0f1_47ce:
    set 7, a                                      ; $47ce: $cb $ff
    ld [bc], a                                    ; $47d0: $02
    ld a, a                                       ; $47d1: $7f
    add e                                         ; $47d2: $83
    ld e, $1f                                     ; $47d3: $1e $1f
    dec d                                         ; $47d5: $15
    ld [bc], a                                    ; $47d6: $02
    ld a, [de]                                    ; $47d7: $1a
    add d                                         ; $47d8: $82
    rra                                           ; $47d9: $1f
    inc d                                         ; $47da: $14
    ld [bc], a                                    ; $47db: $02
    dec de                                        ; $47dc: $1b
    add [hl]                                      ; $47dd: $86
    ld e, $11                                     ; $47de: $1e $11
    ld e, $1a                                     ; $47e0: $1e $1a
    rra                                           ; $47e2: $1f
    dec d                                         ; $47e3: $15
    ld [bc], a                                    ; $47e4: $02
    ld a, [de]                                    ; $47e5: $1a
    and c                                         ; $47e6: $a1
    rra                                           ; $47e7: $1f
    add hl, de                                    ; $47e8: $19
    ld e, $09                                     ; $47e9: $1e $09
    rrca                                          ; $47eb: $0f
    ld c, $0d                                     ; $47ec: $0e $0d
    add hl, bc                                    ; $47ee: $09
    rrca                                          ; $47ef: $0f
    ld c, $0d                                     ; $47f0: $0e $0d
    inc c                                         ; $47f2: $0c
    dec bc                                        ; $47f3: $0b
    and a                                         ; $47f4: $a7
    ld hl, sp-$23                                 ; $47f5: $f8 $dd
    ld [c], a                                     ; $47f7: $e2
    cp l                                          ; $47f8: $bd
    ld [c], a                                     ; $47f9: $e2
    sbc $e3                                       ; $47fa: $de $e3
    cp l                                          ; $47fc: $bd
    ld [c], a                                     ; $47fd: $e2
    db $db                                        ; $47fe: $db
    rst $20                                       ; $47ff: $e7
    and a                                         ; $4800: $a7
    ld hl, sp-$11                                 ; $4801: $f8 $ef
    ret nc                                        ; $4803: $d0

    sbc a                                         ; $4804: $9f
    ldh a, [$e7]                                  ; $4805: $f0 $e7
    ret c                                         ; $4807: $d8

    ld [bc], a                                    ; $4808: $02
    rst $38                                       ; $4809: $ff
    adc d                                         ; $480a: $8a
    push af                                       ; $480b: $f5
    ld a, [$b04f]                                 ; $480c: $fa $4f $b0
    cp a                                          ; $480f: $bf
    ld h, b                                       ; $4810: $60
    ld e, d                                       ; $4811: $5a
    and l                                         ; $4812: $a5
    cp a                                          ; $4813: $bf
    rst $38                                       ; $4814: $ff
    ld [bc], a                                    ; $4815: $02
    add b                                         ; $4816: $80
    add a                                         ; $4817: $87
    nop                                           ; $4818: $00
    add b                                         ; $4819: $80
    nop                                           ; $481a: $00
    add b                                         ; $481b: $80
    nop                                           ; $481c: $00
    add b                                         ; $481d: $80
    nop                                           ; $481e: $00
    inc bc                                        ; $481f: $03
    add b                                         ; $4820: $80
    adc [hl]                                      ; $4821: $8e
    ld a, a                                       ; $4822: $7f
    rst $38                                       ; $4823: $ff
    cp a                                          ; $4824: $bf
    ldh a, [$5f]                                  ; $4825: $f0 $5f
    and b                                         ; $4827: $a0
    ld d, a                                       ; $4828: $57
    cp b                                          ; $4829: $b8
    xor e                                         ; $482a: $ab
    ld d, h                                       ; $482b: $54
    rst $00                                       ; $482c: $c7
    cp b                                          ; $482d: $b8
    ld e, d                                       ; $482e: $5a
    ld [hl], l                                    ; $482f: $75
    ld [bc], a                                    ; $4830: $02
    ccf                                           ; $4831: $3f
    inc b                                         ; $4832: $04
    nop                                           ; $4833: $00
    ld [$8180], sp                                ; $4834: $08 $80 $81
    nop                                           ; $4837: $00
    inc bc                                        ; $4838: $03
    add b                                         ; $4839: $80
    add a                                         ; $483a: $87
    nop                                           ; $483b: $00
    add b                                         ; $483c: $80
    nop                                           ; $483d: $00
    add b                                         ; $483e: $80
    nop                                           ; $483f: $00
    add b                                         ; $4840: $80
    nop                                           ; $4841: $00
    inc bc                                        ; $4842: $03
    add b                                         ; $4843: $80
    ld a, [bc]                                    ; $4844: $0a
    nop                                           ; $4845: $00
    ld [bc], a                                    ; $4846: $02
    add b                                         ; $4847: $80
    add l                                         ; $4848: $85
    nop                                           ; $4849: $00
    add b                                         ; $484a: $80
    nop                                           ; $484b: $00
    add b                                         ; $484c: $80
    nop                                           ; $484d: $00
    dec b                                         ; $484e: $05
    add b                                         ; $484f: $80
    inc d                                         ; $4850: $14
    nop                                           ; $4851: $00
    ld b, $80                                     ; $4852: $06 $80
    ld a, [de]                                    ; $4854: $1a
    nop                                           ; $4855: $00
    ld [bc], a                                    ; $4856: $02
    ld bc, $02a5                                  ; $4857: $01 $a5 $02
    inc bc                                        ; $485a: $03
    dec b                                         ; $485b: $05
    ld b, $0a                                     ; $485c: $06 $0a
    dec c                                         ; $485e: $0d
    dec e                                         ; $485f: $1d
    rla                                           ; $4860: $17
    rst $28                                       ; $4861: $ef
    di                                            ; $4862: $f3
    ld [c], a                                     ; $4863: $e2
    ld a, $97                                     ; $4864: $3e $97
    ld a, a                                       ; $4866: $7f
    ld l, [hl]                                    ; $4867: $6e
    ld sp, hl                                     ; $4868: $f9
    sub c                                         ; $4869: $91
    xor $05                                       ; $486a: $ee $05
    ei                                            ; $486c: $fb
    xor d                                         ; $486d: $aa
    rst $38                                       ; $486e: $ff
    ld e, a                                       ; $486f: $5f
    ld a, a                                       ; $4870: $7f
    cp a                                          ; $4871: $bf
    or e                                          ; $4872: $b3
    cp a                                          ; $4873: $bf
    or e                                          ; $4874: $b3
    db $fd                                        ; $4875: $fd
    ld a, [c]                                     ; $4876: $f2
    cp $01                                        ; $4877: $fe $01
    rst $38                                       ; $4879: $ff
    nop                                           ; $487a: $00
    db $fd                                        ; $487b: $fd
    rrca                                          ; $487c: $0f
    xor a                                         ; $487d: $af
    inc bc                                        ; $487e: $03
    rst $38                                       ; $487f: $ff
    or h                                          ; $4880: $b4
    ld hl, sp-$09                                 ; $4881: $f8 $f7
    cp l                                          ; $4883: $bd
    ld b, d                                       ; $4884: $42
    ld a, a                                       ; $4885: $7f
    add d                                         ; $4886: $82
    or $1f                                        ; $4887: $f6 $1f
    ld e, a                                       ; $4889: $5f
    ldh [rIE], a                                  ; $488a: $e0 $ff
    nop                                           ; $488c: $00
    cp [hl]                                       ; $488d: $be
    ld b, c                                       ; $488e: $41
    push af                                       ; $488f: $f5
    ld c, d                                       ; $4890: $4a
    ld a, [hl+]                                   ; $4891: $2a
    rst $38                                       ; $4892: $ff
    ld a, a                                       ; $4893: $7f
    ret nz                                        ; $4894: $c0

    cp $01                                        ; $4895: $fe $01
    cp $01                                        ; $4897: $fe $01
    ld a, [$f505]                                 ; $4899: $fa $05 $f5
    dec bc                                        ; $489c: $0b
    xor e                                         ; $489d: $ab
    ld d, l                                       ; $489e: $55
    rst $10                                       ; $489f: $d7
    ld a, a                                       ; $48a0: $7f
    rrca                                          ; $48a1: $0f
    nop                                           ; $48a2: $00
    rrca                                          ; $48a3: $0f
    nop                                           ; $48a4: $00
    rrca                                          ; $48a5: $0f
    nop                                           ; $48a6: $00
    rrca                                          ; $48a7: $0f
    nop                                           ; $48a8: $00
    dec b                                         ; $48a9: $05
    ld a, [bc]                                    ; $48aa: $0a
    dec b                                         ; $48ab: $05
    rrca                                          ; $48ac: $0f
    ld c, $01                                     ; $48ad: $0e $01
    rrca                                          ; $48af: $0f
    nop                                           ; $48b0: $00
    ld c, $01                                     ; $48b1: $0e $01
    dec b                                         ; $48b3: $05
    ld a, [bc]                                    ; $48b4: $0a
    ld [bc], a                                    ; $48b5: $02
    rrca                                          ; $48b6: $0f
    adc b                                         ; $48b7: $88
    ei                                            ; $48b8: $fb
    inc b                                         ; $48b9: $04
    rst $30                                       ; $48ba: $f7
    ld [$02fd], sp                                ; $48bb: $08 $fd $02
    rst $38                                       ; $48be: $ff
    rlca                                          ; $48bf: $07
    ld [bc], a                                    ; $48c0: $02
    rst $38                                       ; $48c1: $ff
    adc [hl]                                      ; $48c2: $8e
    db $fd                                        ; $48c3: $fd
    cp $b5                                        ; $48c4: $fe $b5
    ld c, d                                       ; $48c6: $4a
    rst $30                                       ; $48c7: $f7
    ld [$10ef], sp                                ; $48c8: $08 $ef $10
    rst $38                                       ; $48cb: $ff
    nop                                           ; $48cc: $00
    db $fd                                        ; $48cd: $fd
    ld [bc], a                                    ; $48ce: $02
    ld a, a                                       ; $48cf: $7f
    add a                                         ; $48d0: $87
    ld [bc], a                                    ; $48d1: $02
    ld hl, sp+$06                                 ; $48d2: $f8 $06
    nop                                           ; $48d4: $00
    inc bc                                        ; $48d5: $03
    add b                                         ; $48d6: $80
    adc e                                         ; $48d7: $8b
    nop                                           ; $48d8: $00
    add b                                         ; $48d9: $80
    nop                                           ; $48da: $00
    add b                                         ; $48db: $80
    nop                                           ; $48dc: $00
    add b                                         ; $48dd: $80
    nop                                           ; $48de: $00
    add b                                         ; $48df: $80
    nop                                           ; $48e0: $00
    add b                                         ; $48e1: $80
    nop                                           ; $48e2: $00
    ld [bc], a                                    ; $48e3: $02
    add b                                         ; $48e4: $80
    stop                                          ; $48e5: $10 $00
    ld [bc], a                                    ; $48e7: $02
    rlca                                          ; $48e8: $07
    and c                                         ; $48e9: $a1
    dec bc                                        ; $48ea: $0b
    dec c                                         ; $48eb: $0d
    dec d                                         ; $48ec: $15
    dec de                                        ; $48ed: $1b
    ld a, [hl+]                                   ; $48ee: $2a
    ld [hl], $54                                  ; $48ef: $36 $54
    ld l, h                                       ; $48f1: $6c
    xor [hl]                                      ; $48f2: $ae
    sbc $1f                                       ; $48f3: $de $1f
    pop af                                        ; $48f5: $f1
    ccf                                           ; $48f6: $3f
    pop hl                                        ; $48f7: $e1
    ld e, a                                       ; $48f8: $5f
    pop hl                                        ; $48f9: $e1
    cp l                                          ; $48fa: $bd
    jp $877f                                      ; $48fb: $c3 $7f $87


    rst $18                                       ; $48fe: $df
    ccf                                           ; $48ff: $3f
    rst $20                                       ; $4900: $e7
    rst $38                                       ; $4901: $ff
    rst $00                                       ; $4902: $c7
    rst $38                                       ; $4903: $ff
    sub e                                         ; $4904: $93
    rst $38                                       ; $4905: $ff
    adc c                                         ; $4906: $89
    ld a, a                                       ; $4907: $7f
    ld d, a                                       ; $4908: $57
    rst $38                                       ; $4909: $ff
    cp a                                          ; $490a: $bf
    inc bc                                        ; $490b: $03
    rst $38                                       ; $490c: $ff
    adc h                                         ; $490d: $8c
    rst $18                                       ; $490e: $df
    rst $20                                       ; $490f: $e7
    rst $38                                       ; $4910: $ff
    rst $00                                       ; $4911: $c7
    ld a, l                                       ; $4912: $7d
    add a                                         ; $4913: $87
    ld hl, sp+$07                                 ; $4914: $f8 $07
    ld sp, hl                                     ; $4916: $f9
    rlca                                          ; $4917: $07
    ld e, c                                       ; $4918: $59
    rst $20                                       ; $4919: $e7
    inc b                                         ; $491a: $04
    rst $38                                       ; $491b: $ff
    cp h                                          ; $491c: $bc
    xor d                                         ; $491d: $aa
    ld d, a                                       ; $491e: $57
    ld sp, hl                                     ; $491f: $f9
    rlca                                          ; $4920: $07
    ld a, [$5705]                                 ; $4921: $fa $05 $57
    rst $38                                       ; $4924: $ff
    ld a, [$d907]                                 ; $4925: $fa $07 $d9
    daa                                           ; $4928: $27
    sbc d                                         ; $4929: $9a
    ld h, l                                       ; $492a: $65
    ld [hl], l                                    ; $492b: $75
    xor a                                         ; $492c: $af
    ld h, e                                       ; $492d: $63
    rst $38                                       ; $492e: $ff
    db $fc                                        ; $492f: $fc
    inc bc                                        ; $4930: $03
    db $fd                                        ; $4931: $fd
    ld [bc], a                                    ; $4932: $02
    db $fc                                        ; $4933: $fc
    inc bc                                        ; $4934: $03
    db $fd                                        ; $4935: $fd
    ld [bc], a                                    ; $4936: $02
    or h                                          ; $4937: $b4
    ld c, e                                       ; $4938: $4b
    ld e, c                                       ; $4939: $59
    xor a                                         ; $493a: $af
    ld e, d                                       ; $493b: $5a
    push af                                       ; $493c: $f5
    and $19                                       ; $493d: $e6 $19
    ld a, [$e415]                                 ; $493f: $fa $15 $e4
    dec de                                        ; $4942: $1b
    ld a, [$fb15]                                 ; $4943: $fa $15 $fb
    rra                                           ; $4946: $1f
    ld a, a                                       ; $4947: $7f
    ldh [rIE], a                                  ; $4948: $e0 $ff
    nop                                           ; $494a: $00
    ld a, a                                       ; $494b: $7f
    add b                                         ; $494c: $80
    dec [hl]                                      ; $494d: $35
    jp z, $bfdf                                   ; $494e: $ca $df $bf

    rst $28                                       ; $4951: $ef
    ret nc                                        ; $4952: $d0

    rrca                                          ; $4953: $0f
    nop                                           ; $4954: $00
    ld c, $01                                     ; $4955: $0e $01
    dec b                                         ; $4957: $05
    ld a, [bc]                                    ; $4958: $0a
    dec b                                         ; $4959: $05
    rrca                                          ; $495a: $0f
    adc e                                         ; $495b: $8b
    nop                                           ; $495c: $00
    rrca                                          ; $495d: $0f
    nop                                           ; $495e: $00
    rrca                                          ; $495f: $0f
    nop                                           ; $4960: $00
    rrca                                          ; $4961: $0f
    nop                                           ; $4962: $00
    dec c                                         ; $4963: $0d
    ld [bc], a                                    ; $4964: $02
    xor e                                         ; $4965: $ab
    ld d, l                                       ; $4966: $55
    ld [bc], a                                    ; $4967: $02
    cp $1c                                        ; $4968: $fe $1c
    nop                                           ; $496a: $00
    ld [bc], a                                    ; $496b: $02
    add b                                         ; $496c: $80
    add e                                         ; $496d: $83
    ld b, b                                       ; $496e: $40
    ret nz                                        ; $496f: $c0

    ld b, b                                       ; $4970: $40
    rlca                                          ; $4971: $07
    ret nz                                        ; $4972: $c0

    ld [bc], a                                    ; $4973: $02
    ld b, b                                       ; $4974: $40
    ld [bc], a                                    ; $4975: $02
    rra                                           ; $4976: $1f
    or c                                          ; $4977: $b1
    ld l, b                                       ; $4978: $68
    ld [hl], a                                    ; $4979: $77
    sub $eb                                       ; $497a: $d6 $eb
    jp c, $fde7                                   ; $497c: $da $e7 $fd

    jp $e1df                                      ; $497f: $c3 $df $e1


    db $fd                                        ; $4982: $fd
    jp $e15f                                      ; $4983: $c3 $5f $e1


    rst $18                                       ; $4986: $df
    pop hl                                        ; $4987: $e1
    ld a, a                                       ; $4988: $7f
    pop hl                                        ; $4989: $e1
    cp $a1                                        ; $498a: $fe $a1
    cp $a1                                        ; $498c: $fe $a1
    cp a                                          ; $498e: $bf
    ldh [$fe], a                                  ; $498f: $e0 $fe
    pop hl                                        ; $4991: $e1
    xor a                                         ; $4992: $af
    or b                                          ; $4993: $b0
    cp a                                          ; $4994: $bf
    and b                                         ; $4995: $a0
    xor a                                         ; $4996: $af
    or b                                          ; $4997: $b0
    xor a                                         ; $4998: $af
    or b                                          ; $4999: $b0
    sbc a                                         ; $499a: $9f
    sub b                                         ; $499b: $90
    sbc a                                         ; $499c: $9f
    sub b                                         ; $499d: $90
    sub a                                         ; $499e: $97
    sbc b                                         ; $499f: $98
    adc $c9                                       ; $49a0: $ce $c9
    rst $08                                       ; $49a2: $cf
    ret z                                         ; $49a3: $c8

    ld c, d                                       ; $49a4: $4a
    call $c6c5                                    ; $49a5: $cd $c5 $c6
    ld b, [hl]                                    ; $49a8: $46
    ld [bc], a                                    ; $49a9: $02
    push bc                                       ; $49aa: $c5
    adc d                                         ; $49ab: $8a
    add $c2                                       ; $49ac: $c6 $c2
    jp $e3a2                                      ; $49ae: $c3 $a2 $e3


    ld h, c                                       ; $49b1: $61
    pop hl                                        ; $49b2: $e1
    and c                                         ; $49b3: $a1
    ld h, c                                       ; $49b4: $61
    ld h, b                                       ; $49b5: $60
    inc bc                                        ; $49b6: $03
    ldh [$88], a                                  ; $49b7: $e0 $88
    ld [hl], b                                    ; $49b9: $70
    ldh a, [$50]                                  ; $49ba: $f0 $50
    or b                                          ; $49bc: $b0
    jr nc, @-$0e                                  ; $49bd: $30 $f0

    ld d, b                                       ; $49bf: $50
    ldh a, [rSC]                                  ; $49c0: $f0 $02
    ld hl, sp-$68                                 ; $49c2: $f8 $98
    db $f4                                        ; $49c4: $f4
    db $fc                                        ; $49c5: $fc
    adc h                                         ; $49c6: $8c
    ld a, h                                       ; $49c7: $7c
    ld d, h                                       ; $49c8: $54
    db $fc                                        ; $49c9: $fc
    add $7e                                       ; $49ca: $c6 $7e
    ld e, a                                       ; $49cc: $5f
    rst $38                                       ; $49cd: $ff
    ei                                            ; $49ce: $fb
    rst $38                                       ; $49cf: $ff
    push hl                                       ; $49d0: $e5
    rst $38                                       ; $49d1: $ff
    add c                                         ; $49d2: $81
    ld a, a                                       ; $49d3: $7f
    db $e3                                        ; $49d4: $e3
    rra                                           ; $49d5: $1f
    jp nc, $b43e                                  ; $49d6: $d2 $3e $b4

    ld e, h                                       ; $49d9: $5c
    ld e, b                                       ; $49da: $58
    cp b                                          ; $49db: $b8
    ld c, $00                                     ; $49dc: $0e $00
    ld [bc], a                                    ; $49de: $02
    add b                                         ; $49df: $80
    or a                                          ; $49e0: $b7
    ld b, b                                       ; $49e1: $40
    ret nz                                        ; $49e2: $c0

    and b                                         ; $49e3: $a0
    ldh [$60], a                                  ; $49e4: $e0 $60
    ldh [rNR41], a                                ; $49e6: $e0 $20
    ldh [$60], a                                  ; $49e8: $e0 $60
    ldh [rNR41], a                                ; $49ea: $e0 $20
    ldh [rNR41], a                                ; $49ec: $e0 $20
    ldh [rNR10], a                                ; $49ee: $e0 $10
    ldh a, [$30]                                  ; $49f0: $f0 $30
    ldh a, [$90]                                  ; $49f2: $f0 $90
    ldh a, [$b0]                                  ; $49f4: $f0 $b0
    ldh a, [$90]                                  ; $49f6: $f0 $90
    ldh a, [$90]                                  ; $49f8: $f0 $90
    ldh a, [$90]                                  ; $49fa: $f0 $90
    ldh a, [$90]                                  ; $49fc: $f0 $90
    ldh a, [$90]                                  ; $49fe: $f0 $90
    ldh a, [$90]                                  ; $4a00: $f0 $90
    ldh a, [$90]                                  ; $4a02: $f0 $90
    ldh a, [$b0]                                  ; $4a04: $f0 $b0
    ldh a, [$90]                                  ; $4a06: $f0 $90
    ldh a, [$b0]                                  ; $4a08: $f0 $b0
    ldh a, [$90]                                  ; $4a0a: $f0 $90
    ldh a, [$a0]                                  ; $4a0c: $f0 $a0
    ldh [$a0], a                                  ; $4a0e: $e0 $a0
    ldh [$a0], a                                  ; $4a10: $e0 $a0
    ldh [$60], a                                  ; $4a12: $e0 $60
    ldh [$a0], a                                  ; $4a14: $e0 $a0
    ldh [rLCDC], a                                ; $4a16: $e0 $40
    inc bc                                        ; $4a18: $03
    ret nz                                        ; $4a19: $c0

jr_0f1_4a1a:
    inc b                                         ; $4a1a: $04
    add b                                         ; $4a1b: $80
    rst $38                                       ; $4a1c: $ff
    dec de                                        ; $4a1d: $1b
    dec bc                                        ; $4a1e: $0b
    rst $30                                       ; $4a1f: $f7
    ld a, [bc]                                    ; $4a20: $0a
    jp $cb00                                      ; $4a21: $c3 $00 $cb


    ld hl, sp-$34                                 ; $4a24: $f8 $cc
    nop                                           ; $4a26: $00
    push de                                       ; $4a27: $d5
    ld [$0ad9], sp                                ; $4a28: $08 $d9 $0a
    pop hl                                        ; $4a2b: $e1
    db $f4                                        ; $4a2c: $f4
    db $db                                        ; $4a2d: $db
    db $fc                                        ; $4a2e: $fc
    call c, $f102                                 ; $4a2f: $dc $02 $f1
    di                                            ; $4a32: $f3
    db $eb                                        ; $4a33: $eb
    ei                                            ; $4a34: $fb
    rst $30                                       ; $4a35: $f7
    ld bc, $f9fb                                  ; $4a36: $01 $fb $f9
    inc b                                         ; $4a39: $04
    inc b                                         ; $4a3a: $04
    ld [bc], a                                    ; $4a3b: $02
    inc c                                         ; $4a3c: $0c
    sbc d                                         ; $4a3d: $9a
    dec bc                                        ; $4a3e: $0b
    rrca                                          ; $4a3f: $0f
    rra                                           ; $4a40: $1f
    inc de                                        ; $4a41: $13
    ld a, a                                       ; $4a42: $7f
    ld h, a                                       ; $4a43: $67
    cp [hl]                                       ; $4a44: $be
    jp Jump_0f1_706f                              ; $4a45: $c3 $6f $70


    ld d, $19                                     ; $4a48: $16 $19
    dec e                                         ; $4a4a: $1d
    ld e, $16                                     ; $4a4b: $1e $16
    add hl, de                                    ; $4a4d: $19
    ld de, $0b1e                                  ; $4a4e: $11 $1e $0b
    inc c                                         ; $4a51: $0c
    ld c, $0f                                     ; $4a52: $0e $0f
    dec bc                                        ; $4a54: $0b
    inc c                                         ; $4a55: $0c
    add hl, bc                                    ; $4a56: $09
    ld c, $02                                     ; $4a57: $0e $02
    jr @-$60                                      ; $4a59: $18 $9e

    db $f4                                        ; $4a5b: $f4
    db $ec                                        ; $4a5c: $ec
    ld h, h                                       ; $4a5d: $64
    sbc h                                         ; $4a5e: $9c
    xor d                                         ; $4a5f: $aa
    sbc $44                                       ; $4a60: $de $44
    db $fc                                        ; $4a62: $fc
    ret c                                         ; $4a63: $d8

    ld a, b                                       ; $4a64: $78
    ldh [$60], a                                  ; $4a65: $e0 $60
    ret nz                                        ; $4a67: $c0

    ld b, b                                       ; $4a68: $40
    ret nz                                        ; $4a69: $c0

    ld b, b                                       ; $4a6a: $40
    and b                                         ; $4a6b: $a0
    ld h, b                                       ; $4a6c: $60
    ret nc                                        ; $4a6d: $d0

    jr nc, jr_0f1_4ad8                            ; $4a6e: $30 $68

    sbc b                                         ; $4a70: $98
    db $f4                                        ; $4a71: $f4
    inc c                                         ; $4a72: $0c
    or a                                          ; $4a73: $b7
    ld c, a                                       ; $4a74: $4f
    rst $18                                       ; $4a75: $df
    ccf                                           ; $4a76: $3f
    ld [hl], e                                    ; $4a77: $73
    db $fc                                        ; $4a78: $fc
    ld [bc], a                                    ; $4a79: $02
    jr jr_0f1_4a1a                                ; $4a7a: $18 $9e

    inc h                                         ; $4a7c: $24
    inc a                                         ; $4a7d: $3c
    ld b, d                                       ; $4a7e: $42
    ld a, [hl]                                    ; $4a7f: $7e
    sbc c                                         ; $4a80: $99
    rst $38                                       ; $4a81: $ff
    inc h                                         ; $4a82: $24
    rst $20                                       ; $4a83: $e7
    ld [c], a                                     ; $4a84: $e2
    db $e3                                        ; $4a85: $e3
    cp $3f                                        ; $4a86: $fe $3f
    ld a, $c7                                     ; $4a88: $3e $c7
    db $fd                                        ; $4a8a: $fd
    push af                                       ; $4a8b: $f5
    xor h                                         ; $4a8c: $ac
    or h                                          ; $4a8d: $b4
    cp b                                          ; $4a8e: $b8
    xor b                                         ; $4a8f: $a8
    jr c, jr_0f1_4aba                             ; $4a90: $38 $28

    ld e, b                                       ; $4a92: $58
    ld l, b                                       ; $4a93: $68
    ld [hl], b                                    ; $4a94: $70
    ld d, b                                       ; $4a95: $50
    ldh a, [$90]                                  ; $4a96: $f0 $90
    or b                                          ; $4a98: $b0

jr_0f1_4a99:
    ret nc                                        ; $4a99: $d0

    ld [bc], a                                    ; $4a9a: $02
    ld [bc], a                                    ; $4a9b: $02
    add [hl]                                      ; $4a9c: $86
    ld bc, $0103                                  ; $4a9d: $01 $03 $01
    inc bc                                        ; $4aa0: $03
    ld bc, $0203                                  ; $4aa1: $01 $03 $02
    ld [bc], a                                    ; $4aa4: $02
    ld c, $00                                     ; $4aa5: $0e $00
    ld [bc], a                                    ; $4aa7: $02
    add b                                         ; $4aa8: $80
    ld b, $00                                     ; $4aa9: $06 $00
    ld [bc], a                                    ; $4aab: $02
    ld bc, $06bb                                  ; $4aac: $01 $bb $06
    rlca                                          ; $4aaf: $07
    dec c                                         ; $4ab0: $0d
    dec bc                                        ; $4ab1: $0b
    ld d, $19                                     ; $4ab2: $16 $19
    inc hl                                        ; $4ab4: $23
    inc a                                         ; $4ab5: $3c
    add hl, sp                                    ; $4ab6: $39
    ld h, $5c                                     ; $4ab7: $26 $5c
    ld h, e                                       ; $4ab9: $63

jr_0f1_4aba:
    ld l, [hl]                                    ; $4aba: $6e
    ld d, c                                       ; $4abb: $51
    ld d, a                                       ; $4abc: $57
    ld l, b                                       ; $4abd: $68
    db $eb                                        ; $4abe: $eb
    call nc, $e9d6                                ; $4abf: $d4 $d6 $e9
    pop hl                                        ; $4ac2: $e1
    rst $38                                       ; $4ac3: $ff
    rst $10                                       ; $4ac4: $d7
    rst $18                                       ; $4ac5: $df
    adc $cf                                       ; $4ac6: $ce $cf
    ret                                           ; $4ac8: $c9


    adc $a5                                       ; $4ac9: $ce $a5
    and $50                                       ; $4acb: $e6 $50
    ld h, b                                       ; $4acd: $60
    ld a, h                                       ; $4ace: $7c
    ld a, a                                       ; $4acf: $7f
    ld c, a                                       ; $4ad0: $4f
    ld [hl], b                                    ; $4ad1: $70
    ld a, a                                       ; $4ad2: $7f
    ld b, b                                       ; $4ad3: $40
    cp a                                          ; $4ad4: $bf
    ret nz                                        ; $4ad5: $c0

    cp $81                                        ; $4ad6: $fe $81

jr_0f1_4ad8:
    ld a, l                                       ; $4ad8: $7d
    add d                                         ; $4ad9: $82
    ld [$5515], a                                 ; $4ada: $ea $15 $55
    xor e                                         ; $4add: $ab
    adc d                                         ; $4ade: $8a
    rst $38                                       ; $4adf: $ff
    ld d, l                                       ; $4ae0: $55
    rst $38                                       ; $4ae1: $ff
    cp [hl]                                       ; $4ae2: $be
    ld a, [hl]                                    ; $4ae3: $7e
    call c, $d83c                                 ; $4ae4: $dc $3c $d8
    jr c, jr_0f1_4a99                             ; $4ae7: $38 $b0

    ld [bc], a                                    ; $4ae9: $02
    ld [hl], b                                    ; $4aea: $70
    sub c                                         ; $4aeb: $91
    ldh a, [$3c]                                  ; $4aec: $f0 $3c
    nop                                           ; $4aee: $00
    jr c, jr_0f1_4af5                             ; $4aef: $38 $04

    jr c, jr_0f1_4af7                             ; $4af1: $38 $04

    db $10                                        ; $4af3: $10
    inc a                                         ; $4af4: $3c

jr_0f1_4af5:
    inc l                                         ; $4af5: $2c
    inc e                                         ; $4af6: $1c

jr_0f1_4af7:
    inc d                                         ; $4af7: $14
    inc a                                         ; $4af8: $3c
    jr z, @+$3a                                   ; $4af9: $28 $38

    db $10                                        ; $4afb: $10
    jr nc, jr_0f1_4b00                            ; $4afc: $30 $02

    jr nz, @+$04                                  ; $4afe: $20 $02

jr_0f1_4b00:
    ld bc, $000c                                  ; $4b00: $01 $0c $00
    ld [bc], a                                    ; $4b03: $02
    ld [hl], e                                    ; $4b04: $73
    adc h                                         ; $4b05: $8c
    ld d, d                                       ; $4b06: $52
    ld [hl], e                                    ; $4b07: $73
    and h                                         ; $4b08: $a4
    rst $20                                       ; $4b09: $e7
    add sp, -$11                                  ; $4b0a: $e8 $ef
    ret z                                         ; $4b0c: $c8

    rst $08                                       ; $4b0d: $cf
    add h                                         ; $4b0e: $84
    add a                                         ; $4b0f: $87
    ld [bc], a                                    ; $4b10: $02
    inc bc                                        ; $4b11: $03
    ld [bc], a                                    ; $4b12: $02
    rlca                                          ; $4b13: $07
    adc h                                         ; $4b14: $8c
    ld [$120f], sp                                ; $4b15: $08 $0f $12
    rra                                           ; $4b18: $1f
    dec d                                         ; $4b19: $15
    rra                                           ; $4b1a: $1f
    ld [de], a                                    ; $4b1b: $12
    dec e                                         ; $4b1c: $1d
    dec c                                         ; $4b1d: $0d
    dec bc                                        ; $4b1e: $0b
    inc b                                         ; $4b1f: $04
    rlca                                          ; $4b20: $07
    ld [bc], a                                    ; $4b21: $02
    inc bc                                        ; $4b22: $03
    ld [bc], a                                    ; $4b23: $02
    nop                                           ; $4b24: $00
    add a                                         ; $4b25: $87
    ld l, b                                       ; $4b26: $68
    ld a, b                                       ; $4b27: $78
    ld c, b                                       ; $4b28: $48
    ld a, b                                       ; $4b29: $78
    db $10                                        ; $4b2a: $10
    ld [hl], b                                    ; $4b2b: $70
    jr nc, jr_0f1_4b30                            ; $4b2c: $30 $02

    ld d, b                                       ; $4b2e: $50
    add h                                         ; $4b2f: $84

jr_0f1_4b30:
    jr nc, jr_0f1_4b92                            ; $4b30: $30 $60

    jr nz, jr_0f1_4b94                            ; $4b32: $20 $60

    ld [bc], a                                    ; $4b34: $02
    and b                                         ; $4b35: $a0
    ld [bc], a                                    ; $4b36: $02
    ldh [rSC], a                                  ; $4b37: $e0 $02
    and b                                         ; $4b39: $a0
    adc l                                         ; $4b3a: $8d
    ldh [$b0], a                                  ; $4b3b: $e0 $b0
    ret nc                                        ; $4b3d: $d0

    ld c, b                                       ; $4b3e: $48
    ld hl, sp+$5f                                 ; $4b3f: $f8 $5f
    rst $20                                       ; $4b41: $e7
    xor $f3                                       ; $4b42: $ee $f3
    ld e, $ff                                     ; $4b44: $1e $ff
    nop                                           ; $4b46: $00
    rst $38                                       ; $4b47: $ff
    ld [bc], a                                    ; $4b48: $02
    jr nc, @-$6e                                  ; $4b49: $30 $90

    inc c                                         ; $4b4b: $0c
    inc a                                         ; $4b4c: $3c
    ld [bc], a                                    ; $4b4d: $02
    ld a, $0f                                     ; $4b4e: $3e $0f
    ccf                                           ; $4b50: $3f
    di                                            ; $4b51: $f3
    rst $38                                       ; $4b52: $ff
    push bc                                       ; $4b53: $c5
    ccf                                           ; $4b54: $3f
    or d                                          ; $4b55: $b2
    ld e, [hl]                                    ; $4b56: $5e
    ld d, h                                       ; $4b57: $54
    cp h                                          ; $4b58: $bc
    cp b                                          ; $4b59: $b8
    ld e, b                                       ; $4b5a: $58
    ld [bc], a                                    ; $4b5b: $02
    ldh a, [$0c]                                  ; $4b5c: $f0 $0c
    nop                                           ; $4b5e: $00
    inc bc                                        ; $4b5f: $03
    ccf                                           ; $4b60: $3f
    add a                                         ; $4b61: $87
    nop                                           ; $4b62: $00
    cpl                                           ; $4b63: $2f
    db $10                                        ; $4b64: $10
    rra                                           ; $4b65: $1f
    jr nz, jr_0f1_4b92                            ; $4b66: $20 $2a

    dec d                                         ; $4b68: $15
    ld [bc], a                                    ; $4b69: $02
    ccf                                           ; $4b6a: $3f
    inc d                                         ; $4b6b: $14
    nop                                           ; $4b6c: $00
    rst $38                                       ; $4b6d: $ff
    dec e                                         ; $4b6e: $1d
    inc c                                         ; $4b6f: $0c
    rst $30                                       ; $4b70: $f7
    ld a, [bc]                                    ; $4b71: $0a
    jp $cc00                                      ; $4b72: $c3 $00 $cc


    ld sp, hl                                     ; $4b75: $f9
    adc $01                                       ; $4b76: $ce $01
    rst $10                                       ; $4b78: $d7
    add hl, bc                                    ; $4b79: $09
    reti                                          ; $4b7a: $d9


    dec c                                         ; $4b7b: $0d
    pop hl                                        ; $4b7c: $e1
    push af                                       ; $4b7d: $f5
    call c, $defd                                 ; $4b7e: $dc $fd $de
    ld bc, $f2ec                                  ; $4b81: $01 $ec $f2
    db $ec                                        ; $4b84: $ec
    ld a, [$01f7]                                 ; $4b85: $fa $f7 $01
    db $fc                                        ; $4b88: $fc
    or $fc                                        ; $4b89: $f6 $fc
    ld sp, hl                                     ; $4b8b: $f9
    inc b                                         ; $4b8c: $04
    ld [bc], a                                    ; $4b8d: $02
    ld [bc], a                                    ; $4b8e: $02
    ld b, $9a                                     ; $4b8f: $06 $9a
    dec bc                                        ; $4b91: $0b

jr_0f1_4b92:
    rrca                                          ; $4b92: $0f
    ld a, a                                       ; $4b93: $7f

jr_0f1_4b94:
    ld [hl], e                                    ; $4b94: $73
    cp a                                          ; $4b95: $bf
    rst $00                                       ; $4b96: $c7
    ld a, [hl]                                    ; $4b97: $7e
    ld h, e                                       ; $4b98: $63
    cpl                                           ; $4b99: $2f
    jr nc, @+$18                                  ; $4b9a: $30 $16

    add hl, de                                    ; $4b9c: $19
    dec e                                         ; $4b9d: $1d
    ld e, $16                                     ; $4b9e: $1e $16
    add hl, de                                    ; $4ba0: $19
    ld de, $0b1e                                  ; $4ba1: $11 $1e $0b
    inc c                                         ; $4ba4: $0c
    ld c, $0f                                     ; $4ba5: $0e $0f
    dec bc                                        ; $4ba7: $0b
    inc c                                         ; $4ba8: $0c
    add hl, bc                                    ; $4ba9: $09
    ld c, $02                                     ; $4baa: $0e $02
    inc e                                         ; $4bac: $1c
    sbc [hl]                                      ; $4bad: $9e
    ld a, [$b2e6]                                 ; $4bae: $fa $e6 $b2
    adc $42                                       ; $4bb1: $ce $42
    cp $cc                                        ; $4bb3: $fe $cc
    ld a, h                                       ; $4bb5: $7c
    ldh a, [rSVBK]                                ; $4bb6: $f0 $70
    ret nz                                        ; $4bb8: $c0

    ld b, b                                       ; $4bb9: $40
    ret nz                                        ; $4bba: $c0

    ld b, b                                       ; $4bbb: $40
    and b                                         ; $4bbc: $a0
    ld h, b                                       ; $4bbd: $60
    ret nc                                        ; $4bbe: $d0

    jr nc, jr_0f1_4c29                            ; $4bbf: $30 $68

    sbc b                                         ; $4bc1: $98
    db $f4                                        ; $4bc2: $f4
    inc c                                         ; $4bc3: $0c
    or a                                          ; $4bc4: $b7
    ld c, a                                       ; $4bc5: $4f
    rst $18                                       ; $4bc6: $df
    ccf                                           ; $4bc7: $3f
    ld [hl], e                                    ; $4bc8: $73
    db $fc                                        ; $4bc9: $fc
    rst $08                                       ; $4bca: $cf
    ldh a, [rSC]                                  ; $4bcb: $f0 $02
    inc c                                         ; $4bcd: $0c
    add l                                         ; $4bce: $85
    ld [hl-], a                                   ; $4bcf: $32
    ld a, $c1                                     ; $4bd0: $3e $c1
    rst $38                                       ; $4bd2: $ff
    cp $02                                        ; $4bd3: $fe $02
    rst $38                                       ; $4bd5: $ff
    adc b                                         ; $4bd6: $88
    ld bc, $7dbb                                  ; $4bd7: $01 $bb $7d
    call $4e4b                                    ; $4bda: $cd $4b $4e
    jp z, Jump_000_0296                           ; $4bdd: $ca $96 $02

    sbc d                                         ; $4be0: $9a
    add a                                         ; $4be1: $87
    sub [hl]                                      ; $4be2: $96
    inc l                                         ; $4be3: $2c
    inc [hl]                                      ; $4be4: $34
    ld e, h                                       ; $4be5: $5c
    ld h, h                                       ; $4be6: $64
    inc l                                         ; $4be7: $2c
    inc [hl]                                      ; $4be8: $34

jr_0f1_4be9:
    ld [bc], a                                    ; $4be9: $02
    jr @+$06                                      ; $4bea: $18 $04

    nop                                           ; $4bec: $00
    ld [bc], a                                    ; $4bed: $02
    ld [$0488], sp                                ; $4bee: $08 $88 $04
    inc c                                         ; $4bf1: $0c
    ld [bc], a                                    ; $4bf2: $02
    ld c, $01                                     ; $4bf3: $0e $01
    rrca                                          ; $4bf5: $0f
    add hl, bc                                    ; $4bf6: $09
    rrca                                          ; $4bf7: $0f
    ld [bc], a                                    ; $4bf8: $02
    ld b, $14                                     ; $4bf9: $06 $14
    nop                                           ; $4bfb: $00
    ld [bc], a                                    ; $4bfc: $02
    ld bc, $06a0                                  ; $4bfd: $01 $a0 $06
    rlca                                          ; $4c00: $07
    dec c                                         ; $4c01: $0d
    dec bc                                        ; $4c02: $0b
    ld d, $19                                     ; $4c03: $16 $19
    inc hl                                        ; $4c05: $23
    inc a                                         ; $4c06: $3c
    add hl, sp                                    ; $4c07: $39
    ld h, $5c                                     ; $4c08: $26 $5c
    ld h, e                                       ; $4c0a: $63
    ld l, [hl]                                    ; $4c0b: $6e
    ld d, c                                       ; $4c0c: $51
    ld d, a                                       ; $4c0d: $57
    ld l, b                                       ; $4c0e: $68
    db $eb                                        ; $4c0f: $eb
    call nc, $e9d6                                ; $4c10: $d4 $d6 $e9
    pop hl                                        ; $4c13: $e1
    rst $38                                       ; $4c14: $ff
    rst $10                                       ; $4c15: $d7
    rst $18                                       ; $4c16: $df
    adc [hl]                                      ; $4c17: $8e
    adc a                                         ; $4c18: $8f
    adc b                                         ; $4c19: $88
    adc a                                         ; $4c1a: $8f
    add l                                         ; $4c1b: $85
    add [hl]                                      ; $4c1c: $86
    ld d, b                                       ; $4c1d: $50
    ld h, b                                       ; $4c1e: $60
    ld [bc], a                                    ; $4c1f: $02
    ld [hl], b                                    ; $4c20: $70
    sub a                                         ; $4c21: $97
    ld c, a                                       ; $4c22: $4f
    ld [hl], b                                    ; $4c23: $70
    cp a                                          ; $4c24: $bf
    ret nz                                        ; $4c25: $c0

    cp a                                          ; $4c26: $bf
    ret nz                                        ; $4c27: $c0

    ld a, [hl]                                    ; $4c28: $7e

jr_0f1_4c29:
    add c                                         ; $4c29: $81
    db $fd                                        ; $4c2a: $fd
    ld [bc], a                                    ; $4c2b: $02
    ld l, d                                       ; $4c2c: $6a
    sub l                                         ; $4c2d: $95
    sub c                                         ; $4c2e: $91
    rst $28                                       ; $4c2f: $ef
    ld c, d                                       ; $4c30: $4a
    rst $38                                       ; $4c31: $ff
    cp a                                          ; $4c32: $bf
    ld a, a                                       ; $4c33: $7f
    call c, $d83c                                 ; $4c34: $dc $3c $d8
    jr c, jr_0f1_4be9                             ; $4c37: $38 $b0

    ld [bc], a                                    ; $4c39: $02
    ld [hl], b                                    ; $4c3a: $70
    adc b                                         ; $4c3b: $88
    ldh a, [$d0]                                  ; $4c3c: $f0 $d0
    ldh a, [rIF]                                  ; $4c3e: $f0 $0f
    nop                                           ; $4c40: $00
    ld c, $07                                     ; $4c41: $0e $07

Jump_0f1_4c43:
    dec b                                         ; $4c43: $05
    ld [bc], a                                    ; $4c44: $02
    dec bc                                        ; $4c45: $0b
    add a                                         ; $4c46: $87
    rlca                                          ; $4c47: $07
    dec b                                         ; $4c48: $05
    rrca                                          ; $4c49: $0f
    ld a, [bc]                                    ; $4c4a: $0a
    ld c, $04                                     ; $4c4b: $0e $04
    inc c                                         ; $4c4d: $0c
    ld [bc], a                                    ; $4c4e: $02
    ld [$0010], sp                                ; $4c4f: $08 $10 $00
    ld [$8220], sp                                ; $4c52: $08 $20 $82
    ld b, b                                       ; $4c55: $40
    ld h, b                                       ; $4c56: $60
    ld [bc], a                                    ; $4c57: $02
    ld [hl], b                                    ; $4c58: $70
    adc b                                         ; $4c59: $88
    ld d, b                                       ; $4c5a: $50
    ld [hl], b                                    ; $4c5b: $70
    and c                                         ; $4c5c: $a1
    pop hl                                        ; $4c5d: $e1
    ld [c], a                                     ; $4c5e: $e2
    db $e3                                        ; $4c5f: $e3
    jp nz, $02c3                                  ; $4c60: $c2 $c3 $02

    add c                                         ; $4c63: $81
    ld [bc], a                                    ; $4c64: $02
    ld bc, $0302                                  ; $4c65: $01 $02 $03
    adc e                                         ; $4c68: $8b
    inc b                                         ; $4c69: $04
    rlca                                          ; $4c6a: $07
    add hl, bc                                    ; $4c6b: $09
    rrca                                          ; $4c6c: $0f
    ld a, [bc]                                    ; $4c6d: $0a
    rrca                                          ; $4c6e: $0f
    ld [de], a                                    ; $4c6f: $12
    ld e, $02                                     ; $4c70: $1e $02
    ld e, $0c                                     ; $4c72: $1e $0c
    ld [bc], a                                    ; $4c74: $02
    inc d                                         ; $4c75: $14
    sub [hl]                                      ; $4c76: $96
    inc c                                         ; $4c77: $0c
    ld [$d818], sp                                ; $4c78: $08 $18 $d8
    add sp, -$58                                  ; $4c7b: $e8 $a8
    ld hl, sp+$38                                 ; $4c7d: $f8 $38
    add sp, $48                                   ; $4c7f: $e8 $48
    ld hl, sp+$58                                 ; $4c81: $f8 $58
    add sp, $24                                   ; $4c83: $e8 $24
    db $fc                                        ; $4c85: $fc
    cpl                                           ; $4c86: $2f
    di                                            ; $4c87: $f3
    rst $30                                       ; $4c88: $f7
    ld sp, hl                                     ; $4c89: $f9
    rrca                                          ; $4c8a: $0f
    rst $38                                       ; $4c8b: $ff
    nop                                           ; $4c8c: $00
    inc bc                                        ; $4c8d: $03
    rst $38                                       ; $4c8e: $ff
    ld [bc], a                                    ; $4c8f: $02
    ld [hl], b                                    ; $4c90: $70
    sub b                                         ; $4c91: $90
    inc c                                         ; $4c92: $0c
    ld a, h                                       ; $4c93: $7c
    ld [bc], a                                    ; $4c94: $02
    ld a, [hl]                                    ; $4c95: $7e
    rrca                                          ; $4c96: $0f
    ld a, a                                       ; $4c97: $7f
    ld [hl], e                                    ; $4c98: $73
    ld a, a                                       ; $4c99: $7f
    push bc                                       ; $4c9a: $c5
    ccf                                           ; $4c9b: $3f
    or d                                          ; $4c9c: $b2
    ld e, [hl]                                    ; $4c9d: $5e
    ld d, h                                       ; $4c9e: $54
    cp h                                          ; $4c9f: $bc
    cp b                                          ; $4ca0: $b8
    ld e, b                                       ; $4ca1: $58
    ld [bc], a                                    ; $4ca2: $02
    ldh a, [$0c]                                  ; $4ca3: $f0 $0c
    nop                                           ; $4ca5: $00
    adc b                                         ; $4ca6: $88
    sub a                                         ; $4ca7: $97
    add sp, $6d                                   ; $4ca8: $e8 $6d
    ld e, d                                       ; $4caa: $5a
    inc hl                                        ; $4cab: $23
    inc a                                         ; $4cac: $3c
    dec e                                         ; $4cad: $1d
    ld a, [de]                                    ; $4cae: $1a
    ld [bc], a                                    ; $4caf: $02
    rlca                                          ; $4cb0: $07
    ld d, $00                                     ; $4cb1: $16 $00
    adc b                                         ; $4cb3: $88
    rlca                                          ; $4cb4: $07
    nop                                           ; $4cb5: $00
    rlca                                          ; $4cb6: $07
    nop                                           ; $4cb7: $00
    rlca                                          ; $4cb8: $07
    nop                                           ; $4cb9: $00
    ld [bc], a                                    ; $4cba: $02
    dec b                                         ; $4cbb: $05
    ld [bc], a                                    ; $4cbc: $02
    rlca                                          ; $4cbd: $07
    ld d, $00                                     ; $4cbe: $16 $00
    rst $38                                       ; $4cc0: $ff
    dec de                                        ; $4cc1: $1b
    dec bc                                        ; $4cc2: $0b
    rst $30                                       ; $4cc3: $f7
    ld a, [bc]                                    ; $4cc4: $0a
    jp $cd00                                      ; $4cc5: $c3 $00 $cd


    ld sp, hl                                     ; $4cc8: $f9
    rst $08                                       ; $4cc9: $cf
    ld bc, $09d9                                  ; $4cca: $01 $d9 $09
    ld [c], a                                     ; $4ccd: $e2
    push af                                       ; $4cce: $f5
    db $dd                                        ; $4ccf: $dd
    db $fd                                        ; $4cd0: $fd
    rst $18                                       ; $4cd1: $df
    ld bc, $0cdd                                  ; $4cd2: $01 $dd $0c
    ldh a, [$f2]                                  ; $4cd5: $f0 $f2
    db $ed                                        ; $4cd7: $ed
    ld a, [$01f7]                                 ; $4cd8: $fa $f7 $01
    db $fd                                        ; $4cdb: $fd
    ld sp, hl                                     ; $4cdc: $f9
    inc b                                         ; $4cdd: $04
    ld [bc], a                                    ; $4cde: $02
    ld [bc], a                                    ; $4cdf: $02
    ld b, $9a                                     ; $4ce0: $06 $9a
    dec bc                                        ; $4ce2: $0b
    rrca                                          ; $4ce3: $0f
    ld a, a                                       ; $4ce4: $7f
    ld [hl], e                                    ; $4ce5: $73
    cp a                                          ; $4ce6: $bf
    rst $00                                       ; $4ce7: $c7
    ld a, [hl]                                    ; $4ce8: $7e
    ld h, e                                       ; $4ce9: $63
    cpl                                           ; $4cea: $2f
    jr nc, @+$18                                  ; $4ceb: $30 $16

    add hl, de                                    ; $4ced: $19
    dec e                                         ; $4cee: $1d
    ld e, $16                                     ; $4cef: $1e $16
    add hl, de                                    ; $4cf1: $19
    ld de, $0b1e                                  ; $4cf2: $11 $1e $0b
    inc c                                         ; $4cf5: $0c
    ld c, $0f                                     ; $4cf6: $0e $0f
    dec bc                                        ; $4cf8: $0b
    inc c                                         ; $4cf9: $0c
    add hl, bc                                    ; $4cfa: $09
    ld c, $02                                     ; $4cfb: $0e $02
    inc e                                         ; $4cfd: $1c
    sbc [hl]                                      ; $4cfe: $9e
    ld a, [$b2e6]                                 ; $4cff: $fa $e6 $b2
    adc $4c                                       ; $4d02: $ce $4c
    db $fc                                        ; $4d04: $fc
    jp nz, $fc7e                                  ; $4d05: $c2 $7e $fc

    ld a, h                                       ; $4d08: $7c
    ret nz                                        ; $4d09: $c0

    ld b, b                                       ; $4d0a: $40
    ret nz                                        ; $4d0b: $c0

    ld b, b                                       ; $4d0c: $40
    and b                                         ; $4d0d: $a0
    ld h, b                                       ; $4d0e: $60
    ret nc                                        ; $4d0f: $d0

    jr nc, jr_0f1_4d7a                            ; $4d10: $30 $68

    sbc b                                         ; $4d12: $98
    db $f4                                        ; $4d13: $f4
    inc c                                         ; $4d14: $0c
    or a                                          ; $4d15: $b7
    ld c, a                                       ; $4d16: $4f
    rst $18                                       ; $4d17: $df
    ld a, $73                                     ; $4d18: $3e $73
    db $fc                                        ; $4d1a: $fc
    rst $08                                       ; $4d1b: $cf
    ldh a, [rSC]                                  ; $4d1c: $f0 $02
    jr nc, jr_0f1_4d22                            ; $4d1e: $30 $02

    db $fc                                        ; $4d20: $fc
    adc [hl]                                      ; $4d21: $8e

jr_0f1_4d22:
    cp $82                                        ; $4d22: $fe $82
    cp a                                          ; $4d24: $bf
    ld a, c                                       ; $4d25: $79
    bit 1, l                                      ; $4d26: $cb $4d

jr_0f1_4d28:
    rst $00                                       ; $4d28: $c7
    ld b, l                                       ; $4d29: $45
    ld b, [hl]                                    ; $4d2a: $46
    push bc                                       ; $4d2b: $c5
    add a                                         ; $4d2c: $87
    add h                                         ; $4d2d: $84
    add l                                         ; $4d2e: $85
    add [hl]                                      ; $4d2f: $86
    ld [bc], a                                    ; $4d30: $02
    inc bc                                        ; $4d31: $03
    ld [bc], a                                    ; $4d32: $02
    ld bc, $000a                                  ; $4d33: $01 $0a $00
    ld [bc], a                                    ; $4d36: $02
    ld bc, $06a0                                  ; $4d37: $01 $a0 $06
    rlca                                          ; $4d3a: $07
    dec c                                         ; $4d3b: $0d
    dec bc                                        ; $4d3c: $0b
    ld d, $19                                     ; $4d3d: $16 $19
    inc hl                                        ; $4d3f: $23
    inc a                                         ; $4d40: $3c
    add hl, sp                                    ; $4d41: $39
    ld h, $5c                                     ; $4d42: $26 $5c
    ld h, e                                       ; $4d44: $63
    ld l, [hl]                                    ; $4d45: $6e
    ld d, c                                       ; $4d46: $51
    ld d, a                                       ; $4d47: $57
    ld l, b                                       ; $4d48: $68
    db $eb                                        ; $4d49: $eb
    call nc, $e9d6                                ; $4d4a: $d4 $d6 $e9
    pop hl                                        ; $4d4d: $e1
    rst $38                                       ; $4d4e: $ff
    rst $10                                       ; $4d4f: $d7
    rst $18                                       ; $4d50: $df
    adc $cf                                       ; $4d51: $ce $cf
    ld c, b                                       ; $4d53: $48
    rst $08                                       ; $4d54: $cf
    add l                                         ; $4d55: $85
    add [hl]                                      ; $4d56: $86
    ld d, b                                       ; $4d57: $50
    ld h, b                                       ; $4d58: $60
    ld [bc], a                                    ; $4d59: $02
    ld [hl], b                                    ; $4d5a: $70
    sub a                                         ; $4d5b: $97
    ld c, a                                       ; $4d5c: $4f
    ld [hl], b                                    ; $4d5d: $70
    cp a                                          ; $4d5e: $bf
    ret nz                                        ; $4d5f: $c0

    cp a                                          ; $4d60: $bf
    ret nz                                        ; $4d61: $c0

    ld a, [hl]                                    ; $4d62: $7e
    add c                                         ; $4d63: $81
    db $fd                                        ; $4d64: $fd
    ld [bc], a                                    ; $4d65: $02
    ld l, d                                       ; $4d66: $6a
    sub l                                         ; $4d67: $95
    sub c                                         ; $4d68: $91
    rst $28                                       ; $4d69: $ef
    ld c, d                                       ; $4d6a: $4a
    rst $38                                       ; $4d6b: $ff
    or a                                          ; $4d6c: $b7
    ld a, a                                       ; $4d6d: $7f
    call c, $d83c                                 ; $4d6e: $dc $3c $d8
    jr c, @-$4e                                   ; $4d71: $38 $b0

    ld [bc], a                                    ; $4d73: $02
    ld [hl], b                                    ; $4d74: $70
    adc b                                         ; $4d75: $88
    ldh a, [$d0]                                  ; $4d76: $f0 $d0
    ldh a, [rIF]                                  ; $4d78: $f0 $0f

jr_0f1_4d7a:
    nop                                           ; $4d7a: $00
    dec bc                                        ; $4d7b: $0b
    rlca                                          ; $4d7c: $07
    dec b                                         ; $4d7d: $05
    ld [bc], a                                    ; $4d7e: $02
    dec bc                                        ; $4d7f: $0b
    add a                                         ; $4d80: $87
    rlca                                          ; $4d81: $07
    dec b                                         ; $4d82: $05
    rrca                                          ; $4d83: $0f
    ld a, [bc]                                    ; $4d84: $0a
    ld c, $04                                     ; $4d85: $0e $04
    inc c                                         ; $4d87: $0c
    ld [bc], a                                    ; $4d88: $02
    ld [$0010], sp                                ; $4d89: $08 $10 $00
    inc b                                         ; $4d8c: $04
    inc b                                         ; $4d8d: $04
    ld [bc], a                                    ; $4d8e: $02
    ld b, $86                                     ; $4d8f: $06 $86
    dec b                                         ; $4d91: $05
    rlca                                          ; $4d92: $07
    dec b                                         ; $4d93: $05
    rlca                                          ; $4d94: $07
    ld bc, $0207                                  ; $4d95: $01 $07 $02
    ld b, $12                                     ; $4d98: $06 $12
    nop                                           ; $4d9a: $00
    inc b                                         ; $4d9b: $04
    jr nz, jr_0f1_4da0                            ; $4d9c: $20 $02

    jr nc, jr_0f1_4d28                            ; $4d9e: $30 $88

jr_0f1_4da0:
    ld d, c                                       ; $4da0: $51
    ld [hl], c                                    ; $4da1: $71
    ld [hl], d                                    ; $4da2: $72
    ld [hl], e                                    ; $4da3: $73
    ld h, d                                       ; $4da4: $62
    ld h, e                                       ; $4da5: $63
    and c                                         ; $4da6: $a1
    pop hl                                        ; $4da7: $e1
    ld [bc], a                                    ; $4da8: $02
    pop bc                                        ; $4da9: $c1
    ld [bc], a                                    ; $4daa: $02
    add e                                         ; $4dab: $83
    adc h                                         ; $4dac: $8c
    inc b                                         ; $4dad: $04
    rlca                                          ; $4dae: $07
    add hl, bc                                    ; $4daf: $09
    rrca                                          ; $4db0: $0f
    ld a, [bc]                                    ; $4db1: $0a
    rrca                                          ; $4db2: $0f
    add hl, bc                                    ; $4db3: $09
    ld c, $06                                     ; $4db4: $0e $06
    dec b                                         ; $4db6: $05
    ld [bc], a                                    ; $4db7: $02
    inc bc                                        ; $4db8: $03
    ld [bc], a                                    ; $4db9: $02
    ld bc, $129b                                  ; $4dba: $01 $9b $12
    ld e, $06                                     ; $4dbd: $1e $06
    ld a, [de]                                    ; $4dbf: $1a
    inc c                                         ; $4dc0: $0c
    inc d                                         ; $4dc1: $14
    inc e                                         ; $4dc2: $1c
    inc b                                         ; $4dc3: $04
    inc d                                         ; $4dc4: $14
    inc c                                         ; $4dc5: $0c
    ret c                                         ; $4dc6: $d8

    add sp, $28                                   ; $4dc7: $e8 $28
    ld hl, sp+$58                                 ; $4dc9: $f8 $58
    add sp, $58                                   ; $4dcb: $e8 $58
    add sp, $2c                                   ; $4dcd: $e8 $2c
    db $fc                                        ; $4dcf: $fc
    cpl                                           ; $4dd0: $2f
    di                                            ; $4dd1: $f3
    rst $30                                       ; $4dd2: $f7
    ld sp, hl                                     ; $4dd3: $f9
    rrca                                          ; $4dd4: $0f
    rst $38                                       ; $4dd5: $ff
    nop                                           ; $4dd6: $00
    inc bc                                        ; $4dd7: $03
    rst $38                                       ; $4dd8: $ff
    add d                                         ; $4dd9: $82
    ld a, a                                       ; $4dda: $7f
    add b                                         ; $4ddb: $80
    ld [bc], a                                    ; $4ddc: $02
    ld [hl], b                                    ; $4ddd: $70
    sub b                                         ; $4dde: $90
    inc c                                         ; $4ddf: $0c
    ld a, h                                       ; $4de0: $7c
    ld [bc], a                                    ; $4de1: $02
    ld a, [hl]                                    ; $4de2: $7e
    rrca                                          ; $4de3: $0f
    ld a, a                                       ; $4de4: $7f
    ld [hl], e                                    ; $4de5: $73
    ld a, a                                       ; $4de6: $7f
    ld b, l                                       ; $4de7: $45
    ccf                                           ; $4de8: $3f
    or d                                          ; $4de9: $b2
    ld e, [hl]                                    ; $4dea: $5e
    ld d, h                                       ; $4deb: $54
    cp h                                          ; $4dec: $bc
    cp b                                          ; $4ded: $b8
    ld e, b                                       ; $4dee: $58
    ld [bc], a                                    ; $4def: $02
    ldh a, [$0c]                                  ; $4df0: $f0 $0c
    nop                                           ; $4df2: $00
    add [hl]                                      ; $4df3: $86
    ld l, a                                       ; $4df4: $6f
    ld d, b                                       ; $4df5: $50
    rra                                           ; $4df6: $1f
    ld h, b                                       ; $4df7: $60
    ld l, d                                       ; $4df8: $6a
    ld d, l                                       ; $4df9: $55
    ld [bc], a                                    ; $4dfa: $02
    ccf                                           ; $4dfb: $3f
    jr jr_0f1_4dfe                                ; $4dfc: $18 $00

jr_0f1_4dfe:
    rst $38                                       ; $4dfe: $ff
    dec e                                         ; $4dff: $1d
    inc c                                         ; $4e00: $0c
    rst $30                                       ; $4e01: $f7
    ld a, [bc]                                    ; $4e02: $0a
    jp $ce00                                      ; $4e03: $c3 $00 $ce


    ld hl, sp-$30                                 ; $4e06: $f8 $d0
    nop                                           ; $4e08: $00
    db $db                                        ; $4e09: $db
    ld [$0bdc], sp                                ; $4e0a: $08 $dc $0b
    ld [c], a                                     ; $4e0d: $e2
    db $f4                                        ; $4e0e: $f4
    sbc $fc                                       ; $4e0f: $de $fc
    ldh [rP1], a                                  ; $4e11: $e0 $00
    xor $f3                                       ; $4e13: $ee $f3
    xor $fb                                       ; $4e15: $ee $fb
    rst $30                                       ; $4e17: $f7
    ld bc, $f8fe                                  ; $4e18: $01 $fe $f8
    cp $f9                                        ; $4e1b: $fe $f9
    inc b                                         ; $4e1d: $04
    ld [bc], a                                    ; $4e1e: $02
    ld [bc], a                                    ; $4e1f: $02
    ld b, $9a                                     ; $4e20: $06 $9a
    dec bc                                        ; $4e22: $0b
    rrca                                          ; $4e23: $0f
    ld a, a                                       ; $4e24: $7f
    ld [hl], e                                    ; $4e25: $73
    cp a                                          ; $4e26: $bf
    rst $00                                       ; $4e27: $c7
    ld a, [hl]                                    ; $4e28: $7e
    ld h, e                                       ; $4e29: $63
    cpl                                           ; $4e2a: $2f
    jr nc, @+$18                                  ; $4e2b: $30 $16

    add hl, de                                    ; $4e2d: $19
    dec e                                         ; $4e2e: $1d
    ld e, $16                                     ; $4e2f: $1e $16
    add hl, de                                    ; $4e31: $19
    ld de, $0b1e                                  ; $4e32: $11 $1e $0b
    inc c                                         ; $4e35: $0c
    ld c, $0f                                     ; $4e36: $0e $0f
    dec bc                                        ; $4e38: $0b
    inc c                                         ; $4e39: $0c
    add hl, bc                                    ; $4e3a: $09
    ld c, $02                                     ; $4e3b: $0e $02
    inc e                                         ; $4e3d: $1c
    sbc [hl]                                      ; $4e3e: $9e
    ld a, [$b2e6]                                 ; $4e3f: $fa $e6 $b2
    adc $4c                                       ; $4e42: $ce $4c
    db $fc                                        ; $4e44: $fc
    ret z                                         ; $4e45: $c8

    ld a, b                                       ; $4e46: $78
    or $7e                                        ; $4e47: $f6 $7e
    call z, $c04c                                 ; $4e49: $cc $4c $c0
    ld b, b                                       ; $4e4c: $40
    and b                                         ; $4e4d: $a0
    ld h, b                                       ; $4e4e: $60
    ret nc                                        ; $4e4f: $d0

    jr nc, jr_0f1_4eba                            ; $4e50: $30 $68

    sbc b                                         ; $4e52: $98
    db $f4                                        ; $4e53: $f4
    inc c                                         ; $4e54: $0c
    or a                                          ; $4e55: $b7
    ld c, a                                       ; $4e56: $4f
    rst $18                                       ; $4e57: $df
    ld a, $73                                     ; $4e58: $3e $73
    db $fc                                        ; $4e5a: $fc
    rst $08                                       ; $4e5b: $cf
    ldh a, [rSC]                                  ; $4e5c: $f0 $02
    ld a, [hl]                                    ; $4e5e: $7e
    sub h                                         ; $4e5f: $94
    rst $38                                       ; $4e60: $ff
    add c                                         ; $4e61: $81
    ei                                            ; $4e62: $fb
    inc a                                         ; $4e63: $3c
    ld c, a                                       ; $4e64: $4f
    rst $08                                       ; $4e65: $cf
    adc c                                         ; $4e66: $89
    adc a                                         ; $4e67: $8f
    adc c                                         ; $4e68: $89
    adc a                                         ; $4e69: $8f
    adc c                                         ; $4e6a: $89
    adc a                                         ; $4e6b: $8f
    add l                                         ; $4e6c: $85
    add a                                         ; $4e6d: $87
    inc b                                         ; $4e6e: $04
    rlca                                          ; $4e6f: $07
    inc b                                         ; $4e70: $04
    rlca                                          ; $4e71: $07

jr_0f1_4e72:
    inc b                                         ; $4e72: $04
    rlca                                          ; $4e73: $07
    ld [bc], a                                    ; $4e74: $02
    inc bc                                        ; $4e75: $03
    ld [$0200], sp                                ; $4e76: $08 $00 $02
    ld b, $84                                     ; $4e79: $06 $84
    rlca                                          ; $4e7b: $07
    ld bc, $0503                                  ; $4e7c: $01 $03 $05
    ld [bc], a                                    ; $4e7f: $02
    rlca                                          ; $4e80: $07
    ld b, $00                                     ; $4e81: $06 $00
    ld b, $04                                     ; $4e83: $06 $04
    inc c                                         ; $4e85: $0c
    nop                                           ; $4e86: $00
    ld [bc], a                                    ; $4e87: $02
    ld bc, $06a0                                  ; $4e88: $01 $a0 $06
    rlca                                          ; $4e8b: $07
    dec c                                         ; $4e8c: $0d
    dec bc                                        ; $4e8d: $0b
    ld d, $19                                     ; $4e8e: $16 $19
    inc hl                                        ; $4e90: $23
    inc a                                         ; $4e91: $3c
    add hl, sp                                    ; $4e92: $39
    ld h, $5c                                     ; $4e93: $26 $5c
    ld h, e                                       ; $4e95: $63
    ld l, [hl]                                    ; $4e96: $6e
    ld d, c                                       ; $4e97: $51
    ld d, a                                       ; $4e98: $57
    ld l, b                                       ; $4e99: $68
    db $eb                                        ; $4e9a: $eb
    call nc, $e9d6                                ; $4e9b: $d4 $d6 $e9
    pop hl                                        ; $4e9e: $e1
    rst $38                                       ; $4e9f: $ff
    rst $10                                       ; $4ea0: $d7
    rst $18                                       ; $4ea1: $df
    adc [hl]                                      ; $4ea2: $8e
    adc a                                         ; $4ea3: $8f
    adc b                                         ; $4ea4: $88
    adc a                                         ; $4ea5: $8f
    add l                                         ; $4ea6: $85
    add [hl]                                      ; $4ea7: $86
    ld d, b                                       ; $4ea8: $50
    ld h, b                                       ; $4ea9: $60
    ld [bc], a                                    ; $4eaa: $02

jr_0f1_4eab:
    ld [hl], b                                    ; $4eab: $70
    sub l                                         ; $4eac: $95
    adc a                                         ; $4ead: $8f
    ldh a, [$bf]                                  ; $4eae: $f0 $bf
    ret nz                                        ; $4eb0: $c0

    ld a, a                                       ; $4eb1: $7f
    add b                                         ; $4eb2: $80
    cp $01                                        ; $4eb3: $fe $01
    ld [hl], l                                    ; $4eb5: $75
    adc d                                         ; $4eb6: $8a
    xor d                                         ; $4eb7: $aa
    push de                                       ; $4eb8: $d5
    ld b, l                                       ; $4eb9: $45

jr_0f1_4eba:
    rst $38                                       ; $4eba: $ff
    xor e                                         ; $4ebb: $ab
    ld a, a                                       ; $4ebc: $7f
    rst $18                                       ; $4ebd: $df
    ccf                                           ; $4ebe: $3f
    ret c                                         ; $4ebf: $d8

    jr c, jr_0f1_4e72                             ; $4ec0: $38 $b0

    ld [bc], a                                    ; $4ec2: $02
    ld [hl], b                                    ; $4ec3: $70
    adc d                                         ; $4ec4: $8a
    ldh a, [$d0]                                  ; $4ec5: $f0 $d0
    ldh a, [$90]                                  ; $4ec7: $f0 $90
    ldh a, [$0e]                                  ; $4ec9: $f0 $0e
    ld bc, $070b                                  ; $4ecb: $01 $0b $07
    dec b                                         ; $4ece: $05
    ld [bc], a                                    ; $4ecf: $02
    dec bc                                        ; $4ed0: $0b
    add a                                         ; $4ed1: $87
    rlca                                          ; $4ed2: $07
    dec b                                         ; $4ed3: $05
    rrca                                          ; $4ed4: $0f
    ld a, [bc]                                    ; $4ed5: $0a
    ld c, $04                                     ; $4ed6: $0e $04
    inc c                                         ; $4ed8: $0c
    ld [bc], a                                    ; $4ed9: $02
    ld [$0010], sp                                ; $4eda: $08 $10 $00
    ld [$8c80], sp                                ; $4edd: $08 $80 $8c
    and e                                         ; $4ee0: $a3
    db $e3                                        ; $4ee1: $e3
    db $e4                                        ; $4ee2: $e4
    rst $20                                       ; $4ee3: $e7
    xor c                                         ; $4ee4: $a9
    rst $28                                       ; $4ee5: $ef
    ld l, c                                       ; $4ee6: $69

jr_0f1_4ee7:
    ld l, a                                       ; $4ee7: $6f
    ld h, h                                       ; $4ee8: $64
    ld h, a                                       ; $4ee9: $67
    ld [hl+], a                                   ; $4eea: $22
    inc hl                                        ; $4eeb: $23
    ld [bc], a                                    ; $4eec: $02
    rlca                                          ; $4eed: $07
    and e                                         ; $4eee: $a3
    ld [$120f], sp                                ; $4eef: $08 $0f $12
    rra                                           ; $4ef2: $1f
    dec d                                         ; $4ef3: $15
    rra                                           ; $4ef4: $1f
    ld [de], a                                    ; $4ef5: $12
    dec e                                         ; $4ef6: $1d
    dec c                                         ; $4ef7: $0d
    dec bc                                        ; $4ef8: $0b
    ld [$3078], sp                                ; $4ef9: $08 $78 $30
    ld d, b                                       ; $4efc: $50
    ld [hl], b                                    ; $4efd: $70
    db $10                                        ; $4efe: $10
    ld d, b                                       ; $4eff: $50
    jr nc, jr_0f1_4f62                            ; $4f00: $30 $60

    and b                                         ; $4f02: $a0
    ldh [$a0], a                                  ; $4f03: $e0 $a0
    jr nz, jr_0f1_4ee7                            ; $4f05: $20 $e0

    ld h, b                                       ; $4f07: $60
    and b                                         ; $4f08: $a0
    cp b                                          ; $4f09: $b8
    ret c                                         ; $4f0a: $d8

    ld e, a                                       ; $4f0b: $5f
    rst $20                                       ; $4f0c: $e7
    xor $f3                                       ; $4f0d: $ee $f3
    ld e, $ff                                     ; $4f0f: $1e $ff
    nop                                           ; $4f11: $00
    inc b                                         ; $4f12: $04
    rst $38                                       ; $4f13: $ff
    add e                                         ; $4f14: $83
    nop                                           ; $4f15: $00
    cp [hl]                                       ; $4f16: $be
    ld b, c                                       ; $4f17: $41
    ld [bc], a                                    ; $4f18: $02
    jr nc, jr_0f1_4eab                            ; $4f19: $30 $90

    inc c                                         ; $4f1b: $0c
    inc a                                         ; $4f1c: $3c

jr_0f1_4f1d:
    ld [bc], a                                    ; $4f1d: $02
    ld a, $0f                                     ; $4f1e: $3e $0f
    ccf                                           ; $4f20: $3f
    inc sp                                        ; $4f21: $33
    ccf                                           ; $4f22: $3f
    dec b                                         ; $4f23: $05
    ccf                                           ; $4f24: $3f
    ld [hl-], a                                   ; $4f25: $32
    ld e, $54                                     ; $4f26: $1e $54
    cp h                                          ; $4f28: $bc
    cp b                                          ; $4f29: $b8
    ld e, b                                       ; $4f2a: $58
    ld [bc], a                                    ; $4f2b: $02
    ldh a, [$0c]                                  ; $4f2c: $f0 $0c
    nop                                           ; $4f2e: $00
    add h                                         ; $4f2f: $84
    adc a                                         ; $4f30: $8f
    ldh a, [$75]                                  ; $4f31: $f0 $75
    ld l, d                                       ; $4f33: $6a
    ld [bc], a                                    ; $4f34: $02
    rra                                           ; $4f35: $1f
    ld a, [de]                                    ; $4f36: $1a
    nop                                           ; $4f37: $00
    add c                                         ; $4f38: $81
    ld bc, $0002                                  ; $4f39: $01 $02 $00
    inc bc                                        ; $4f3c: $03
    ld bc, $001a                                  ; $4f3d: $01 $1a $00
    rst $38                                       ; $4f40: $ff
    dec de                                        ; $4f41: $1b
    dec bc                                        ; $4f42: $0b
    rst $30                                       ; $4f43: $f7
    ld a, [bc]                                    ; $4f44: $0a
    jp $cd00                                      ; $4f45: $c3 $00 $cd


    rst $30                                       ; $4f48: $f7
    adc $ff                                       ; $4f49: $ce $ff
    jp c, $e207                                   ; $4f4b: $da $07 $e2

    di                                            ; $4f4e: $f3
    db $dd                                        ; $4f4f: $dd
    ei                                            ; $4f50: $fb
    sbc $ff                                       ; $4f51: $de $ff
    rst $18                                       ; $4f53: $df
    add hl, bc                                    ; $4f54: $09
    ld a, [c]                                     ; $4f55: $f2
    di                                            ; $4f56: $f3
    db $ed                                        ; $4f57: $ed
    ei                                            ; $4f58: $fb
    rst $30                                       ; $4f59: $f7
    ld bc, $f9fd                                  ; $4f5a: $01 $fd $f9
    inc b                                         ; $4f5d: $04
    inc b                                         ; $4f5e: $04
    ld [bc], a                                    ; $4f5f: $02
    inc c                                         ; $4f60: $0c
    sbc d                                         ; $4f61: $9a

jr_0f1_4f62:
    dec bc                                        ; $4f62: $0b
    rrca                                          ; $4f63: $0f
    rra                                           ; $4f64: $1f
    inc de                                        ; $4f65: $13
    ld a, a                                       ; $4f66: $7f
    ld h, a                                       ; $4f67: $67
    cp [hl]                                       ; $4f68: $be
    jp Jump_0f1_706f                              ; $4f69: $c3 $6f $70


    ld d, $19                                     ; $4f6c: $16 $19
    dec e                                         ; $4f6e: $1d
    ld e, $16                                     ; $4f6f: $1e $16
    add hl, de                                    ; $4f71: $19
    ld de, $0b1e                                  ; $4f72: $11 $1e $0b
    inc c                                         ; $4f75: $0c
    ld c, $0f                                     ; $4f76: $0e $0f
    dec bc                                        ; $4f78: $0b
    inc c                                         ; $4f79: $0c
    add hl, bc                                    ; $4f7a: $09
    ld c, $02                                     ; $4f7b: $0e $02
    jr jr_0f1_4f1d                                ; $4f7d: $18 $9e

    db $f4                                        ; $4f7f: $f4
    db $ec                                        ; $4f80: $ec
    ld h, h                                       ; $4f81: $64
    sbc h                                         ; $4f82: $9c
    xor b                                         ; $4f83: $a8
    ret c                                         ; $4f84: $d8

    ld c, [hl]                                    ; $4f85: $4e
    cp $c4                                        ; $4f86: $fe $c4
    ld a, h                                       ; $4f88: $7c
    ld hl, sp+$78                                 ; $4f89: $f8 $78
    ret nz                                        ; $4f8b: $c0

    ld b, b                                       ; $4f8c: $40
    ret nz                                        ; $4f8d: $c0

    ld b, b                                       ; $4f8e: $40
    and b                                         ; $4f8f: $a0
    ld h, b                                       ; $4f90: $60
    ret nc                                        ; $4f91: $d0

    jr nc, jr_0f1_4ffc                            ; $4f92: $30 $68

    sbc b                                         ; $4f94: $98
    db $f4                                        ; $4f95: $f4
    inc c                                         ; $4f96: $0c
    or a                                          ; $4f97: $b7
    ld c, a                                       ; $4f98: $4f
    sbc $3f                                       ; $4f99: $de $3f
    ld [hl], e                                    ; $4f9b: $73
    db $fc                                        ; $4f9c: $fc
    ld [bc], a                                    ; $4f9d: $02
    ld [hl], b                                    ; $4f9e: $70
    ld [bc], a                                    ; $4f9f: $02
    db $fc                                        ; $4fa0: $fc
    sub d                                         ; $4fa1: $92
    cp $02                                        ; $4fa2: $fe $02
    or [hl]                                       ; $4fa4: $b6

jr_0f1_4fa5:
    ld a, d                                       ; $4fa5: $7a
    rst $18                                       ; $4fa6: $df
    reti                                          ; $4fa7: $d9


    sub [hl]                                      ; $4fa8: $96
    sbc l                                         ; $4fa9: $9d
    and l                                         ; $4faa: $a5
    cp [hl]                                       ; $4fab: $be
    and a                                         ; $4fac: $a7
    cp [hl]                                       ; $4fad: $be
    ld c, e                                       ; $4fae: $4b
    ld a, d                                       ; $4faf: $7a
    ld c, d                                       ; $4fb0: $4a
    ld a, e                                       ; $4fb1: $7b
    ld c, c                                       ; $4fb2: $49
    ld a, c                                       ; $4fb3: $79
    ld [bc], a                                    ; $4fb4: $02
    jr nc, jr_0f1_4fbf                            ; $4fb5: $30 $08

    nop                                           ; $4fb7: $00
    ld [bc], a                                    ; $4fb8: $02
    ld bc, $06ad                                  ; $4fb9: $01 $ad $06
    rlca                                          ; $4fbc: $07
    dec c                                         ; $4fbd: $0d
    dec bc                                        ; $4fbe: $0b

jr_0f1_4fbf:
    ld d, $19                                     ; $4fbf: $16 $19
    inc hl                                        ; $4fc1: $23
    inc a                                         ; $4fc2: $3c
    add hl, sp                                    ; $4fc3: $39
    ld h, $5c                                     ; $4fc4: $26 $5c
    ld h, e                                       ; $4fc6: $63
    ld l, [hl]                                    ; $4fc7: $6e
    ld d, c                                       ; $4fc8: $51
    ld d, a                                       ; $4fc9: $57
    ld l, b                                       ; $4fca: $68
    db $eb                                        ; $4fcb: $eb
    call nc, $e9d6                                ; $4fcc: $d4 $d6 $e9
    pop hl                                        ; $4fcf: $e1
    rst $38                                       ; $4fd0: $ff
    rst $10                                       ; $4fd1: $d7
    rst $18                                       ; $4fd2: $df
    adc $cf                                       ; $4fd3: $ce $cf
    and l                                         ; $4fd5: $a5
    and $e2                                       ; $4fd6: $e6 $e2
    db $e3                                        ; $4fd8: $e3
    ld d, b                                       ; $4fd9: $50
    ld h, b                                       ; $4fda: $60
    ld a, h                                       ; $4fdb: $7c
    ld a, a                                       ; $4fdc: $7f
    ld c, a                                       ; $4fdd: $4f
    ld [hl], b                                    ; $4fde: $70
    cp a                                          ; $4fdf: $bf
    ret nz                                        ; $4fe0: $c0

    cp a                                          ; $4fe1: $bf
    ret nz                                        ; $4fe2: $c0

    ld a, [hl]                                    ; $4fe3: $7e
    add c                                         ; $4fe4: $81
    db $fd                                        ; $4fe5: $fd
    ld [bc], a                                    ; $4fe6: $02
    ld l, d                                       ; $4fe7: $6a
    ld [bc], a                                    ; $4fe8: $02
    sub l                                         ; $4fe9: $95
    adc d                                         ; $4fea: $8a
    db $eb                                        ; $4feb: $eb
    ld c, d                                       ; $4fec: $4a
    rst $38                                       ; $4fed: $ff
    or a                                          ; $4fee: $b7
    ld a, a                                       ; $4fef: $7f
    sbc $3e                                       ; $4ff0: $de $3e
    ret c                                         ; $4ff2: $d8

jr_0f1_4ff3:
    jr c, jr_0f1_4fa5                             ; $4ff3: $38 $b0

    ld [bc], a                                    ; $4ff5: $02
    ld [hl], b                                    ; $4ff6: $70
    adc d                                         ; $4ff7: $8a
    ldh a, [$d0]                                  ; $4ff8: $f0 $d0
    ldh a, [rIF]                                  ; $4ffa: $f0 $0f

jr_0f1_4ffc:
    nop                                           ; $4ffc: $00
    ld c, $01                                     ; $4ffd: $0e $01
    dec bc                                        ; $4fff: $0b
    rlca                                          ; $5000: $07
    dec b                                         ; $5001: $05
    ld [bc], a                                    ; $5002: $02
    dec bc                                        ; $5003: $0b
    add a                                         ; $5004: $87
    rlca                                          ; $5005: $07
    dec b                                         ; $5006: $05
    rrca                                          ; $5007: $0f
    ld a, [bc]                                    ; $5008: $0a
    ld c, $04                                     ; $5009: $0e $04
    inc c                                         ; $500b: $0c
    ld [bc], a                                    ; $500c: $02
    ld [$000e], sp                                ; $500d: $08 $0e $00
    inc b                                         ; $5010: $04
    ld [bc], a                                    ; $5011: $02
    add c                                         ; $5012: $81
    ld bc, $0302                                  ; $5013: $01 $02 $03
    add e                                         ; $5016: $83
    ld bc, $0103                                  ; $5017: $01 $03 $01
    ld [bc], a                                    ; $501a: $02
    ld [bc], a                                    ; $501b: $02
    inc d                                         ; $501c: $14
    nop                                           ; $501d: $00
    adc h                                         ; $501e: $8c
    push de                                       ; $501f: $d5
    rst $30                                       ; $5020: $f7
    ld [hl], l                                    ; $5021: $75
    ld [hl], a                                    ; $5022: $77
    ld e, c                                       ; $5023: $59
    ld a, a                                       ; $5024: $7f
    add hl, sp                                    ; $5025: $39
    ccf                                           ; $5026: $3f
    inc [hl]                                      ; $5027: $34
    scf                                           ; $5028: $37
    ld [de], a                                    ; $5029: $12
    inc de                                        ; $502a: $13
    ld [bc], a                                    ; $502b: $02
    rlca                                          ; $502c: $07
    adc h                                         ; $502d: $8c
    ld [$120f], sp                                ; $502e: $08 $0f $12
    rra                                           ; $5031: $1f
    dec d                                         ; $5032: $15
    rra                                           ; $5033: $1f
    ld [de], a                                    ; $5034: $12
    dec e                                         ; $5035: $1d
    dec c                                         ; $5036: $0d
    dec bc                                        ; $5037: $0b
    inc b                                         ; $5038: $04
    rlca                                          ; $5039: $07
    ld [bc], a                                    ; $503a: $02
    inc bc                                        ; $503b: $03
    inc b                                         ; $503c: $04
    nop                                           ; $503d: $00
    add l                                         ; $503e: $85
    sub b                                         ; $503f: $90
    ldh a, [rNR10]                                ; $5040: $f0 $10
    ldh a, [$60]                                  ; $5042: $f0 $60
    ld [bc], a                                    ; $5044: $02
    and b                                         ; $5045: $a0
    add h                                         ; $5046: $84
    ld h, b                                       ; $5047: $60
    and b                                         ; $5048: $a0
    ld h, b                                       ; $5049: $60
    ret nz                                        ; $504a: $c0

    ld [bc], a                                    ; $504b: $02
    ld b, b                                       ; $504c: $40
    adc [hl]                                      ; $504d: $8e
    ret nz                                        ; $504e: $c0

    ld b, b                                       ; $504f: $40
    ret nz                                        ; $5050: $c0

    ld h, b                                       ; $5051: $60
    and b                                         ; $5052: $a0
    cp b                                          ; $5053: $b8
    ret c                                         ; $5054: $d8

    ld e, a                                       ; $5055: $5f
    rst $20                                       ; $5056: $e7
    xor $f3                                       ; $5057: $ee $f3
    ld e, $ff                                     ; $5059: $1e $ff
    nop                                           ; $505b: $00
    inc b                                         ; $505c: $04
    rst $38                                       ; $505d: $ff
    add c                                         ; $505e: $81
    nop                                           ; $505f: $00
    ld [bc], a                                    ; $5060: $02
    jr nc, jr_0f1_4ff3                            ; $5061: $30 $90

    inc c                                         ; $5063: $0c
    inc a                                         ; $5064: $3c
    ld [bc], a                                    ; $5065: $02
    ld a, $0f                                     ; $5066: $3e $0f
    ccf                                           ; $5068: $3f
    inc sp                                        ; $5069: $33
    ccf                                           ; $506a: $3f
    dec b                                         ; $506b: $05
    ccf                                           ; $506c: $3f
    or d                                          ; $506d: $b2
    ld e, [hl]                                    ; $506e: $5e
    ld d, h                                       ; $506f: $54
    cp h                                          ; $5070: $bc
    cp b                                          ; $5071: $b8
    ld e, b                                       ; $5072: $58
    ld [bc], a                                    ; $5073: $02
    ldh a, [$0c]                                  ; $5074: $f0 $0c
    nop                                           ; $5076: $00
    add [hl]                                      ; $5077: $86
    cpl                                           ; $5078: $2f
    db $10                                        ; $5079: $10
    rra                                           ; $507a: $1f
    jr nz, jr_0f1_50a7                            ; $507b: $20 $2a

    dec d                                         ; $507d: $15
    ld [bc], a                                    ; $507e: $02
    ccf                                           ; $507f: $3f
    jr jr_0f1_5082                                ; $5080: $18 $00

jr_0f1_5082:
    rst $38                                       ; $5082: $ff
    add hl, de                                    ; $5083: $19
    ld a, [bc]                                    ; $5084: $0a
    rst $30                                       ; $5085: $f7
    ld a, [bc]                                    ; $5086: $0a
    jp $d100                                      ; $5087: $c3 $00 $d1


    db $fd                                        ; $508a: $fd
    db $d3                                        ; $508b: $d3
    dec b                                         ; $508c: $05
    db $dd                                        ; $508d: $dd
    ld a, [bc]                                    ; $508e: $0a
    db $e4                                        ; $508f: $e4
    rst $28                                       ; $5090: $ef
    pop hl                                        ; $5091: $e1
    rst $30                                       ; $5092: $f7
    pop hl                                        ; $5093: $e1
    rst $38                                       ; $5094: $ff
    db $e3                                        ; $5095: $e3
    ld [bc], a                                    ; $5096: $02
    pop af                                        ; $5097: $f1
    or $f1                                        ; $5098: $f6 $f1
    cp $f1                                        ; $509a: $fe $f1
    ld bc, $0202                                  ; $509c: $01 $02 $02
    ld [bc], a                                    ; $509f: $02
    ld b, [hl]                                    ; $50a0: $46
    sbc h                                         ; $50a1: $9c
    ei                                            ; $50a2: $fb
    cp l                                          ; $50a3: $bd
    cp a                                          ; $50a4: $bf
    ret nz                                        ; $50a5: $c0

    ld a, a                                       ; $50a6: $7f

jr_0f1_50a7:
    ld b, a                                       ; $50a7: $47
    ld e, a                                       ; $50a8: $5f
    ld h, e                                       ; $50a9: $63
    ld a, [hl+]                                   ; $50aa: $2a
    dec [hl]                                      ; $50ab: $35
    dec sp                                        ; $50ac: $3b
    inc a                                         ; $50ad: $3c
    dec h                                         ; $50ae: $25
    ld a, [hl-]                                   ; $50af: $3a
    rla                                           ; $50b0: $17
    jr jr_0f1_50d0                                ; $50b1: $18 $1d

    ld e, $17                                     ; $50b3: $1e $17
    jr jr_0f1_50c9                                ; $50b5: $18 $12

    dec e                                         ; $50b7: $1d
    inc e                                         ; $50b8: $1c
    rra                                           ; $50b9: $1f
    inc hl                                        ; $50ba: $23
    ccf                                           ; $50bb: $3f
    ld e, a                                       ; $50bc: $5f
    ld h, b                                       ; $50bd: $60
    ld [bc], a                                    ; $50be: $02
    add b                                         ; $50bf: $80
    adc b                                         ; $50c0: $88
    ld a, b                                       ; $50c1: $78
    ld hl, sp-$44                                 ; $50c2: $f8 $bc
    call nz, $fc8c                                ; $50c4: $c4 $8c $fc
    add h                                         ; $50c7: $84
    db $fc                                        ; $50c8: $fc

jr_0f1_50c9:
    ld [bc], a                                    ; $50c9: $02
    ld hl, sp-$7d                                 ; $50ca: $f8 $83
    ld b, b                                       ; $50cc: $40
    ret nz                                        ; $50cd: $c0

    and b                                         ; $50ce: $a0
    ld [bc], a                                    ; $50cf: $02

jr_0f1_50d0:
    ld h, b                                       ; $50d0: $60
    adc d                                         ; $50d1: $8a
    and b                                         ; $50d2: $a0
    ret nc                                        ; $50d3: $d0

    jr nc, @-$0e                                  ; $50d4: $30 $f0

    db $10                                        ; $50d6: $10
    db $d3                                        ; $50d7: $d3
    inc sp                                        ; $50d8: $33
    db $fc                                        ; $50d9: $fc
    rst $38                                       ; $50da: $ff
    db $10                                        ; $50db: $10
    ld [bc], a                                    ; $50dc: $02
    rst $38                                       ; $50dd: $ff
    add e                                         ; $50de: $83
    rra                                           ; $50df: $1f
    cp a                                          ; $50e0: $bf
    ld b, e                                       ; $50e1: $43
    ld [bc], a                                    ; $50e2: $02
    ld c, $92                                     ; $50e3: $0e $92
    ld de, $011f                                  ; $50e5: $11 $1f $01
    rra                                           ; $50e8: $1f
    dec e                                         ; $50e9: $1d
    rra                                           ; $50ea: $1f
    dec c                                         ; $50eb: $0d
    rrca                                          ; $50ec: $0f
    add hl, de                                    ; $50ed: $19
    rra                                           ; $50ee: $1f
    jp hl                                         ; $50ef: $e9


    rra                                           ; $50f0: $1f
    ld e, c                                       ; $50f1: $59
    cp a                                          ; $50f2: $bf
    xor [hl]                                      ; $50f3: $ae
    ld l, [hl]                                    ; $50f4: $6e
    ret nz                                        ; $50f5: $c0

    ld b, b                                       ; $50f6: $40
    ld b, $80                                     ; $50f7: $06 $80
    ld b, $00                                     ; $50f9: $06 $00
    ld [bc], a                                    ; $50fb: $02
    ld bc, $0383                                  ; $50fc: $01 $83 $03
    ld [bc], a                                    ; $50ff: $02
    dec b                                         ; $5100: $05
    ld [bc], a                                    ; $5101: $02
    ld b, $8b                                     ; $5102: $06 $8b
    dec b                                         ; $5104: $05
    dec e                                         ; $5105: $1d
    ld e, $3e                                     ; $5106: $1e $3e
    dec a                                         ; $5108: $3d
    ld d, l                                       ; $5109: $55
    halt                                          ; $510a: $76
    ld [hl], h                                    ; $510b: $74
    ld [hl], a                                    ; $510c: $77
    and d                                         ; $510d: $a2
    db $e3                                        ; $510e: $e3
    ld [bc], a                                    ; $510f: $02
    pop hl                                        ; $5110: $e1
    add c                                         ; $5111: $81
    and c                                         ; $5112: $a1
    inc bc                                        ; $5113: $03
    pop hl                                        ; $5114: $e1
    add c                                         ; $5115: $81
    and b                                         ; $5116: $a0
    inc bc                                        ; $5117: $03
    ldh [rSC], a                                  ; $5118: $e0 $02
    ld b, b                                       ; $511a: $40
    ld [bc], a                                    ; $511b: $02
    ld b, c                                       ; $511c: $41
    sub e                                         ; $511d: $93
    ld b, $07                                     ; $511e: $06 $07
    dec sp                                        ; $5120: $3b
    inc a                                         ; $5121: $3c
    rst $18                                       ; $5122: $df
    ldh a, [$2f]                                  ; $5123: $f0 $2f
    ret c                                         ; $5125: $d8

    cp e                                          ; $5126: $bb
    ld c, h                                       ; $5127: $4c
    sbc b                                         ; $5128: $98
    ld l, a                                       ; $5129: $6f
    push de                                       ; $512a: $d5
    cpl                                           ; $512b: $2f
    sbc $27                                       ; $512c: $de $27
    ei                                            ; $512e: $fb
    rlca                                          ; $512f: $07
    ld h, [hl]                                    ; $5130: $66
    ld [bc], a                                    ; $5131: $02
    sbc [hl]                                      ; $5132: $9e
    sbc c                                         ; $5133: $99
    ld a, [hl]                                    ; $5134: $7e
    ld [hl], d                                    ; $5135: $72
    cp $c2                                        ; $5136: $fe $c2
    cp $94                                        ; $5138: $fe $94
    db $ec                                        ; $513a: $ec
    inc h                                         ; $513b: $24
    call c, $c8b8                                 ; $513c: $dc $b8 $c8
    db $fc                                        ; $513f: $fc
    nop                                           ; $5140: $00
    db $fc                                        ; $5141: $fc
    nop                                           ; $5142: $00
    db $fc                                        ; $5143: $fc
    inc bc                                        ; $5144: $03
    ld [$5517], a                                 ; $5145: $ea $17 $55
    xor a                                         ; $5148: $af
    xor d                                         ; $5149: $aa
    ld a, [hl]                                    ; $514a: $7e
    ld e, h                                       ; $514b: $5c
    db $fc                                        ; $514c: $fc
    ld [bc], a                                    ; $514d: $02
    ldh a, [rSC]                                  ; $514e: $f0 $02
    ret nz                                        ; $5150: $c0

    rrca                                          ; $5151: $0f
    nop                                           ; $5152: $00
    inc bc                                        ; $5153: $03
    rlca                                          ; $5154: $07
    inc b                                         ; $5155: $04
    ld bc, $0386                                  ; $5156: $01 $86 $03
    ld [bc], a                                    ; $5159: $02
    rlca                                          ; $515a: $07
    inc b                                         ; $515b: $04
    ld b, $05                                     ; $515c: $06 $05
    ld [bc], a                                    ; $515e: $02
    rlca                                          ; $515f: $07
    stop                                          ; $5160: $10 $00
    adc [hl]                                      ; $5162: $8e
    inc h                                         ; $5163: $24
    inc a                                         ; $5164: $3c
    ld d, h                                       ; $5165: $54
    ld a, h                                       ; $5166: $7c
    ld [de], a                                    ; $5167: $12
    ld a, [hl]                                    ; $5168: $7e
    sub d                                         ; $5169: $92
    cp $4b                                        ; $516a: $fe $4b
    ld a, l                                       ; $516c: $7d
    dec h                                         ; $516d: $25
    ld a, $12                                     ; $516e: $3e $12
    rra                                           ; $5170: $1f
    ld [bc], a                                    ; $5171: $02
    ccf                                           ; $5172: $3f
    adc [hl]                                      ; $5173: $8e
    ld b, b                                       ; $5174: $40
    ld a, a                                       ; $5175: $7f
    sub b                                         ; $5176: $90
    rst $38                                       ; $5177: $ff
    xor a                                         ; $5178: $af
    rst $38                                       ; $5179: $ff
    sub a                                         ; $517a: $97
    add sp, $6d                                   ; $517b: $e8 $6d
    ld e, d                                       ; $517d: $5a
    inc hl                                        ; $517e: $23
    inc a                                         ; $517f: $3c
    dec e                                         ; $5180: $1d
    ld a, [de]                                    ; $5181: $1a
    ld [bc], a                                    ; $5182: $02
    rlca                                          ; $5183: $07
    ld a, [bc]                                    ; $5184: $0a
    nop                                           ; $5185: $00
    ld [bc], a                                    ; $5186: $02
    ret nz                                        ; $5187: $c0

    sub d                                         ; $5188: $92
    cp $3e                                        ; $5189: $fe $3e
    ld [hl], c                                    ; $518b: $71
    sbc a                                         ; $518c: $9f
    ldh a, [rIE]                                  ; $518d: $f0 $ff
    ld bc, $feff                                  ; $518f: $01 $ff $fe
    rst $38                                       ; $5192: $ff
    ld hl, sp+$07                                 ; $5193: $f8 $07
    or $0b                                        ; $5195: $f6 $0b
    ld [$5717], a                                 ; $5197: $ea $17 $57
    xor e                                         ; $519a: $ab
    ld [bc], a                                    ; $519b: $02
    cp $0e                                        ; $519c: $fe $0e
    nop                                           ; $519e: $00
    ld [bc], a                                    ; $519f: $02
    inc b                                         ; $51a0: $04
    add d                                         ; $51a1: $82
    ld [bc], a                                    ; $51a2: $02
    ld b, $02                                     ; $51a3: $06 $02
    rlca                                          ; $51a5: $07
    add [hl]                                      ; $51a6: $86
    inc bc                                        ; $51a7: $03
    rlca                                          ; $51a8: $07
    dec b                                         ; $51a9: $05
    rlca                                          ; $51aa: $07
    ld [bc], a                                    ; $51ab: $02
    ld b, $02                                     ; $51ac: $06 $02
    inc b                                         ; $51ae: $04
    inc b                                         ; $51af: $04
    nop                                           ; $51b0: $00
    rst $38                                       ; $51b1: $ff
    dec de                                        ; $51b2: $1b
    dec bc                                        ; $51b3: $0b
    rst $30                                       ; $51b4: $f7
    ld a, [bc]                                    ; $51b5: $0a
    jp $d500                                      ; $51b6: $c3 $00 $d5


    db $fc                                        ; $51b9: $fc
    push de                                       ; $51ba: $d5
    inc b                                         ; $51bb: $04
    jp c, $ec08                                   ; $51bc: $da $08 $ec

    jp hl                                         ; $51bf: $e9


    and $f1                                       ; $51c0: $e6 $f1
    push hl                                       ; $51c2: $e5
    ld sp, hl                                     ; $51c3: $f9
    push hl                                       ; $51c4: $e5
    ld bc, $09ea                                  ; $51c5: $01 $ea $09
    push af                                       ; $51c8: $f5
    or $f5                                        ; $51c9: $f6 $f5
    cp $f5                                        ; $51cb: $fe $f5
    ld bc, $0106                                  ; $51cd: $01 $06 $01
    adc b                                         ; $51d0: $88
    ld [bc], a                                    ; $51d1: $02
    inc bc                                        ; $51d2: $03
    ld [bc], a                                    ; $51d3: $02
    inc bc                                        ; $51d4: $03
    ld [bc], a                                    ; $51d5: $02
    inc bc                                        ; $51d6: $03
    ld [bc], a                                    ; $51d7: $02
    inc bc                                        ; $51d8: $03
    ld [bc], a                                    ; $51d9: $02
    rlca                                          ; $51da: $07
    sub b                                         ; $51db: $90
    inc b                                         ; $51dc: $04
    rlca                                          ; $51dd: $07
    dec b                                         ; $51de: $05
    ld b, $05                                     ; $51df: $06 $05
    ld b, $0e                                     ; $51e1: $06 $0e
    rrca                                          ; $51e3: $0f
    dec bc                                        ; $51e4: $0b
    inc c                                         ; $51e5: $0c
    dec bc                                        ; $51e6: $0b
    inc c                                         ; $51e7: $0c
    ld [hl], $3f                                  ; $51e8: $36 $3f
    db $dd                                        ; $51ea: $dd
    db $e3                                        ; $51eb: $e3
    ld [bc], a                                    ; $51ec: $02
    add b                                         ; $51ed: $80
    sbc [hl]                                      ; $51ee: $9e
    rst $00                                       ; $51ef: $c7
    ld b, a                                       ; $51f0: $47
    cp d                                          ; $51f1: $ba
    ld a, [hl]                                    ; $51f2: $7e
    db $fc                                        ; $51f3: $fc
    inc b                                         ; $51f4: $04
    rst $38                                       ; $51f5: $ff
    ld [hl], a                                    ; $51f6: $77
    ld a, [$fb3d]                                 ; $51f7: $fa $3d $fb
    inc c                                         ; $51fa: $0c
    ld [hl], c                                    ; $51fb: $71
    sbc a                                         ; $51fc: $9f
    cp h                                          ; $51fd: $bc
    ld e, a                                       ; $51fe: $5f
    di                                            ; $51ff: $f3
    inc de                                        ; $5200: $13
    ldh a, [rNR10]                                ; $5201: $f0 $10
    ldh a, [rNR10]                                ; $5203: $f0 $10
    ld d, b                                       ; $5205: $50
    or b                                          ; $5206: $b0
    ldh a, [rNR10]                                ; $5207: $f0 $10
    ldh a, [rNR10]                                ; $5209: $f0 $10
    sub c                                         ; $520b: $91
    pop af                                        ; $520c: $f1
    ld [bc], a                                    ; $520d: $02
    ld [$0c84], sp                                ; $520e: $08 $84 $0c
    inc b                                         ; $5211: $04
    inc c                                         ; $5212: $0c
    inc b                                         ; $5213: $04
    ld [bc], a                                    ; $5214: $02
    inc c                                         ; $5215: $0c
    ld [bc], a                                    ; $5216: $02
    ld [$000a], sp                                ; $5217: $08 $0a $00
    ld [bc], a                                    ; $521a: $02
    inc c                                         ; $521b: $0c
    adc d                                         ; $521c: $8a
    ld [c], a                                     ; $521d: $e2
    cp $1a                                        ; $521e: $fe $1a
    cp $e9                                        ; $5220: $fe $e9
    rst $28                                       ; $5222: $ef
    add l                                         ; $5223: $85
    add a                                         ; $5224: $87
    add l                                         ; $5225: $85
    add a                                         ; $5226: $87
    ld [bc], a                                    ; $5227: $02
    inc bc                                        ; $5228: $03
    add [hl]                                      ; $5229: $86
    dec b                                         ; $522a: $05
    rlca                                          ; $522b: $07
    dec de                                        ; $522c: $1b
    rra                                           ; $522d: $1f
    xor $fe                                       ; $522e: $ee $fe
    ld [bc], a                                    ; $5230: $02
    ld a, h                                       ; $5231: $7c
    ld d, $00                                     ; $5232: $16 $00
    ld [bc], a                                    ; $5234: $02
    inc bc                                        ; $5235: $03
    sub a                                         ; $5236: $97
    inc c                                         ; $5237: $0c
    rrca                                          ; $5238: $0f
    dec d                                         ; $5239: $15
    ld a, [de]                                    ; $523a: $1a
    dec l                                         ; $523b: $2d
    ld [hl-], a                                   ; $523c: $32
    inc a                                         ; $523d: $3c
    inc hl                                        ; $523e: $23
    xor $f1                                       ; $523f: $ee $f1
    or $e9                                        ; $5241: $f6 $e9
    xor a                                         ; $5243: $af
    or b                                          ; $5244: $b0
    ld h, $39                                     ; $5245: $26 $39

jr_0f1_5247:
    inc de                                        ; $5247: $13
    rra                                           ; $5248: $1f
    ld e, $1f                                     ; $5249: $1e $1f
    jr jr_0f1_526c                                ; $524b: $18 $1f

    add hl, bc                                    ; $524d: $09

jr_0f1_524e:
    ld [bc], a                                    ; $524e: $02
    ld c, $96                                     ; $524f: $0e $96
    rrca                                          ; $5251: $0f
    add hl, bc                                    ; $5252: $09
    rrca                                          ; $5253: $0f
    ld b, $07                                     ; $5254: $06 $07
    ld l, a                                       ; $5256: $6f
    ld [hl], b                                    ; $5257: $70
    cp a                                          ; $5258: $bf
    ret nz                                        ; $5259: $c0

    cp a                                          ; $525a: $bf
    ret nz                                        ; $525b: $c0

    ld d, a                                       ; $525c: $57
    add sp, -$16                                  ; $525d: $e8 $ea
    ld [hl], l                                    ; $525f: $75
    push af                                       ; $5260: $f5
    ld a, a                                       ; $5261: $7f
    cp d                                          ; $5262: $ba
    ld a, a                                       ; $5263: $7f
    rst $38                                       ; $5264: $ff
    ccf                                           ; $5265: $3f
    and b                                         ; $5266: $a0
    ld [bc], a                                    ; $5267: $02
    ld h, b                                       ; $5268: $60
    inc bc                                        ; $5269: $03
    ldh [$83], a                                  ; $526a: $e0 $83

jr_0f1_526c:
    jr nz, jr_0f1_524e                            ; $526c: $20 $e0

    ld h, b                                       ; $526e: $60
    ld [bc], a                                    ; $526f: $02
    and b                                         ; $5270: $a0
    sub e                                         ; $5271: $93
    ld h, b                                       ; $5272: $60
    and b                                         ; $5273: $a0
    ld h, b                                       ; $5274: $60
    jr nc, jr_0f1_5247                            ; $5275: $30 $d0

    xor $1e                                       ; $5277: $ee $1e
    cp $02                                        ; $5279: $fe $02
    sbc $22                                       ; $527b: $de $22
    ld b, [hl]                                    ; $527d: $46
    cp b                                          ; $527e: $b8
    sbc d                                         ; $527f: $9a
    ld a, h                                       ; $5280: $7c
    ld d, l                                       ; $5281: $55
    or $e2                                        ; $5282: $f6 $e2
    db $e3                                        ; $5284: $e3
    ld [bc], a                                    ; $5285: $02
    add e                                         ; $5286: $83
    add [hl]                                      ; $5287: $86
    rrca                                          ; $5288: $0f
    inc c                                         ; $5289: $0c
    dec e                                         ; $528a: $1d
    inc de                                        ; $528b: $13
    ld a, [de]                                    ; $528c: $1a
    ld d, $02                                     ; $528d: $16 $02
    inc c                                         ; $528f: $0c
    ld [$8800], sp                                ; $5290: $08 $00 $88
    adc c                                         ; $5293: $89
    adc a                                         ; $5294: $8f
    ret                                           ; $5295: $c9


    ld c, a                                       ; $5296: $4f
    add $46                                       ; $5297: $c6 $46
    ld b, b                                       ; $5299: $40
    ret nz                                        ; $529a: $c0

    ld [bc], a                                    ; $529b: $02
    add b                                         ; $529c: $80
    ld d, $00                                     ; $529d: $16 $00
    add [hl]                                      ; $529f: $86
    add hl, de                                    ; $52a0: $19
    rra                                           ; $52a1: $1f
    dec h                                         ; $52a2: $25
    ld a, $12                                     ; $52a3: $3e $12
    rra                                           ; $52a5: $1f
    ld [bc], a                                    ; $52a6: $02
    ccf                                           ; $52a7: $3f
    adc [hl]                                      ; $52a8: $8e
    ld b, b                                       ; $52a9: $40
    ld a, a                                       ; $52aa: $7f
    sub b                                         ; $52ab: $90
    rst $38                                       ; $52ac: $ff
    xor a                                         ; $52ad: $af
    rst $38                                       ; $52ae: $ff
    sub a                                         ; $52af: $97
    add sp, $6d                                   ; $52b0: $e8 $6d
    ld e, d                                       ; $52b2: $5a
    inc hl                                        ; $52b3: $23
    inc a                                         ; $52b4: $3c
    dec e                                         ; $52b5: $1d
    ld a, [de]                                    ; $52b6: $1a
    ld [bc], a                                    ; $52b7: $02
    rlca                                          ; $52b8: $07
    ld a, [bc]                                    ; $52b9: $0a
    nop                                           ; $52ba: $00
    ld [bc], a                                    ; $52bb: $02
    ret nz                                        ; $52bc: $c0

    sub d                                         ; $52bd: $92
    cp $3e                                        ; $52be: $fe $3e
    ld [hl], c                                    ; $52c0: $71
    sbc a                                         ; $52c1: $9f
    ldh a, [rIE]                                  ; $52c2: $f0 $ff
    ld bc, $feff                                  ; $52c4: $01 $ff $fe
    rst $38                                       ; $52c7: $ff
    ld hl, sp+$07                                 ; $52c8: $f8 $07
    or $0b                                        ; $52ca: $f6 $0b

jr_0f1_52cc:
    ld [$5717], a                                 ; $52cc: $ea $17 $57
    xor e                                         ; $52cf: $ab
    ld [bc], a                                    ; $52d0: $02
    cp $0e                                        ; $52d1: $fe $0e
    nop                                           ; $52d3: $00
    ld [bc], a                                    ; $52d4: $02
    inc b                                         ; $52d5: $04
    add d                                         ; $52d6: $82
    ld [bc], a                                    ; $52d7: $02
    ld b, $02                                     ; $52d8: $06 $02
    rlca                                          ; $52da: $07
    add [hl]                                      ; $52db: $86
    inc bc                                        ; $52dc: $03
    rlca                                          ; $52dd: $07
    dec b                                         ; $52de: $05
    rlca                                          ; $52df: $07
    ld [bc], a                                    ; $52e0: $02
    ld b, $02                                     ; $52e1: $06 $02
    inc b                                         ; $52e3: $04
    inc c                                         ; $52e4: $0c
    nop                                           ; $52e5: $00
    rst $38                                       ; $52e6: $ff
    dec de                                        ; $52e7: $1b
    dec bc                                        ; $52e8: $0b
    rst $30                                       ; $52e9: $f7
    ld a, [bc]                                    ; $52ea: $0a
    jp $d300                                      ; $52eb: $c3 $00 $d3


    inc bc                                        ; $52ee: $03
    pop de                                        ; $52ef: $d1
    dec bc                                        ; $52f0: $0b
    rst $18                                       ; $52f1: $df
    ld de, $ebea                                  ; $52f2: $11 $ea $eb
    db $e4                                        ; $52f5: $e4
    di                                            ; $52f6: $f3
    pop hl                                        ; $52f7: $e1
    ei                                            ; $52f8: $fb
    db $e3                                        ; $52f9: $e3
    inc bc                                        ; $52fa: $03
    pop hl                                        ; $52fb: $e1
    add hl, bc                                    ; $52fc: $09
    pop af                                        ; $52fd: $f1
    or $f1                                        ; $52fe: $f6 $f1
    cp $f1                                        ; $5300: $fe $f1
    ld bc, $1c02                                  ; $5302: $01 $02 $1c
    sbc [hl]                                      ; $5305: $9e
    rla                                           ; $5306: $17
    dec de                                        ; $5307: $1b
    dec bc                                        ; $5308: $0b
    inc c                                         ; $5309: $0c
    rrca                                          ; $530a: $0f
    add hl, bc                                    ; $530b: $09
    rrca                                          ; $530c: $0f
    ld [$0c0b], sp                                ; $530d: $08 $0b $0c
    inc e                                         ; $5310: $1c
    rra                                           ; $5311: $1f
    rla                                           ; $5312: $17
    jr @+$19                                      ; $5313: $18 $17

    jr jr_0f1_5346                                ; $5315: $18 $2f

    jr nc, jr_0f1_5352                            ; $5317: $30 $39

    ld a, $2f                                     ; $5319: $3e $2f
    jr nc, jr_0f1_536c                            ; $531b: $30 $4f

    ld [hl], b                                    ; $531d: $70
    ld sp, hl                                     ; $531e: $f9
    cp $67                                        ; $531f: $fe $67
    sbc a                                         ; $5321: $9f
    cp $01                                        ; $5322: $fe $01
    inc b                                         ; $5324: $04
    jr nz, jr_0f1_5329                            ; $5325: $20 $02

    ld h, b                                       ; $5327: $60
    sbc d                                         ; $5328: $9a

jr_0f1_5329:
    cp h                                          ; $5329: $bc
    db $fc                                        ; $532a: $fc
    sbc $e2                                       ; $532b: $de $e2
    and $fe                                       ; $532d: $e6 $fe
    ld [c], a                                     ; $532f: $e2
    cp [hl]                                       ; $5330: $be
    db $fc                                        ; $5331: $fc
    inc a                                         ; $5332: $3c
    ldh [rNR41], a                                ; $5333: $e0 $20
    and b                                         ; $5335: $a0
    ld h, b                                       ; $5336: $60
    and b                                         ; $5337: $a0
    ld h, b                                       ; $5338: $60
    ret nz                                        ; $5339: $c0

    ld b, b                                       ; $533a: $40
    ret nz                                        ; $533b: $c0

    ld b, b                                       ; $533c: $40
    ret nz                                        ; $533d: $c0

    ld b, b                                       ; $533e: $40
    jp Jump_0f1_4c43                              ; $533f: $c3 $43 $4c


    rst $08                                       ; $5342: $cf
    ld [bc], a                                    ; $5343: $02
    jr nc, jr_0f1_52cc                            ; $5344: $30 $86

jr_0f1_5346:
    ld c, $3e                                     ; $5346: $0e $3e
    ld h, c                                       ; $5348: $61
    rst $38                                       ; $5349: $ff
    sbc c                                         ; $534a: $99
    sbc a                                         ; $534b: $9f
    ld [bc], a                                    ; $534c: $02
    ld b, $04                                     ; $534d: $06 $04
    add b                                         ; $534f: $80
    adc b                                         ; $5350: $88
    ret nz                                        ; $5351: $c0

jr_0f1_5352:
    ld b, b                                       ; $5352: $40
    ld h, b                                       ; $5353: $60
    and b                                         ; $5354: $a0
    ldh a, [$90]                                  ; $5355: $f0 $90
    or b                                          ; $5357: $b0
    ret nc                                        ; $5358: $d0

    ld [bc], a                                    ; $5359: $02
    ld h, b                                       ; $535a: $60
    ld [$0200], sp                                ; $535b: $08 $00 $02
    pop hl                                        ; $535e: $e1
    add h                                         ; $535f: $84
    ld a, [hl]                                    ; $5360: $7e
    ld a, a                                       ; $5361: $7f
    dec hl                                        ; $5362: $2b
    ccf                                           ; $5363: $3f
    ld [bc], a                                    ; $5364: $02
    inc e                                         ; $5365: $1c
    jr jr_0f1_5368                                ; $5366: $18 $00

jr_0f1_5368:
    ld [bc], a                                    ; $5368: $02
    ld bc, $0691                                  ; $5369: $01 $91 $06

jr_0f1_536c:
    rlca                                          ; $536c: $07

jr_0f1_536d:
    ld a, [bc]                                    ; $536d: $0a
    dec c                                         ; $536e: $0d
    ld d, $19                                     ; $536f: $16 $19
    ld e, $11                                     ; $5371: $1e $11
    ccf                                           ; $5373: $3f
    jr nc, jr_0f1_536d                            ; $5374: $30 $f7

    ld hl, sp-$25                                 ; $5376: $f8 $db
    call nc, $1916                                ; $5378: $d4 $16 $19
    add hl, bc                                    ; $537b: $09
    inc bc                                        ; $537c: $03
    rrca                                          ; $537d: $0f
    adc d                                         ; $537e: $8a
    inc c                                         ; $537f: $0c
    rrca                                          ; $5380: $0f
    inc b                                         ; $5381: $04
    rlca                                          ; $5382: $07
    ld [bc], a                                    ; $5383: $02
    inc bc                                        ; $5384: $03
    dec b                                         ; $5385: $05
    rlca                                          ; $5386: $07
    ld [$020f], sp                                ; $5387: $08 $0f $02
    inc bc                                        ; $538a: $03
    xor d                                         ; $538b: $aa
    dec c                                         ; $538c: $0d
    ld c, $37                                     ; $538d: $0e $37
    jr c, @-$1f                                   ; $538f: $38 $df

    ldh [$5f], a                                  ; $5391: $e0 $5f
    ldh [$af], a                                  ; $5393: $e0 $af
    ld [hl], b                                    ; $5395: $70
    ld [c], a                                     ; $5396: $e2
    dec a                                         ; $5397: $3d
    ld [hl], l                                    ; $5398: $75
    cp a                                          ; $5399: $bf
    ld e, e                                       ; $539a: $5b
    cp a                                          ; $539b: $bf
    ld a, a                                       ; $539c: $7f
    sbc a                                         ; $539d: $9f
    ret nc                                        ; $539e: $d0

    jr nc, jr_0f1_5411                            ; $539f: $30 $70

    ldh a, [$d0]                                  ; $53a1: $f0 $d0
    ldh a, [rNR10]                                ; $53a3: $f0 $10
    ldh a, [$50]                                  ; $53a5: $f0 $50
    or b                                          ; $53a7: $b0
    ret nc                                        ; $53a8: $d0

    jr nc, @+$01                                  ; $53a9: $30 $ff

    nop                                           ; $53ab: $00
    rst $38                                       ; $53ac: $ff
    nop                                           ; $53ad: $00
    ld [$5715], a                                 ; $53ae: $ea $15 $57
    xor a                                         ; $53b1: $af
    xor d                                         ; $53b2: $aa
    ld a, [hl]                                    ; $53b3: $7e
    ld e, h                                       ; $53b4: $5c
    db $fc                                        ; $53b5: $fc
    ld [bc], a                                    ; $53b6: $02
    ldh a, [rSC]                                  ; $53b7: $f0 $02
    add b                                         ; $53b9: $80
    stop                                          ; $53ba: $10 $00
    adc h                                         ; $53bc: $8c
    inc a                                         ; $53bd: $3c
    ccf                                           ; $53be: $3f
    ld de, $2f3f                                  ; $53bf: $11 $3f $2f
    rra                                           ; $53c2: $1f
    ccf                                           ; $53c3: $3f
    nop                                           ; $53c4: $00
    ccf                                           ; $53c5: $3f
    ld a, $02                                     ; $53c6: $3e $02
    inc bc                                        ; $53c8: $03
    ld [bc], a                                    ; $53c9: $02
    ld bc, $0012                                  ; $53ca: $01 $12 $00
    add e                                         ; $53cd: $83
    dec b                                         ; $53ce: $05
    inc bc                                        ; $53cf: $03
    ld bc, $0702                                  ; $53d0: $01 $02 $07
    adc c                                         ; $53d3: $89
    dec b                                         ; $53d4: $05
    ld b, h                                       ; $53d5: $44
    ld a, a                                       ; $53d6: $7f
    ld [hl+], a                                   ; $53d7: $22
    ccf                                           ; $53d8: $3f
    inc de                                        ; $53d9: $13
    ld e, $12                                     ; $53da: $1e $12
    rra                                           ; $53dc: $1f
    ld [bc], a                                    ; $53dd: $02
    ccf                                           ; $53de: $3f
    adc [hl]                                      ; $53df: $8e

jr_0f1_53e0:
    ld b, b                                       ; $53e0: $40
    ld a, a                                       ; $53e1: $7f
    sub b                                         ; $53e2: $90
    rst $38                                       ; $53e3: $ff
    xor a                                         ; $53e4: $af
    rst $38                                       ; $53e5: $ff
    sub a                                         ; $53e6: $97
    add sp, $6d                                   ; $53e7: $e8 $6d
    ld e, d                                       ; $53e9: $5a
    inc hl                                        ; $53ea: $23
    inc a                                         ; $53eb: $3c
    dec e                                         ; $53ec: $1d
    ld a, [de]                                    ; $53ed: $1a
    ld [bc], a                                    ; $53ee: $02
    rlca                                          ; $53ef: $07
    ld b, $00                                     ; $53f0: $06 $00
    inc b                                         ; $53f2: $04
    add b                                         ; $53f3: $80
    sub h                                         ; $53f4: $94
    ld b, b                                       ; $53f5: $40
    ret nz                                        ; $53f6: $c0

    cp $3e                                        ; $53f7: $fe $3e
    ld [hl], c                                    ; $53f9: $71
    sbc a                                         ; $53fa: $9f
    ldh a, [rIE]                                  ; $53fb: $f0 $ff
    ld bc, $feff                                  ; $53fd: $01 $ff $fe
    rst $38                                       ; $5400: $ff
    ld hl, sp+$07                                 ; $5401: $f8 $07
    or $0b                                        ; $5403: $f6 $0b
    ld [$5717], a                                 ; $5405: $ea $17 $57
    xor e                                         ; $5408: $ab
    ld [bc], a                                    ; $5409: $02
    cp $0e                                        ; $540a: $fe $0e
    nop                                           ; $540c: $00
    ld [bc], a                                    ; $540d: $02
    inc b                                         ; $540e: $04
    add d                                         ; $540f: $82
    ld [bc], a                                    ; $5410: $02

jr_0f1_5411:
    ld b, $02                                     ; $5411: $06 $02
    rlca                                          ; $5413: $07
    add [hl]                                      ; $5414: $86
    inc bc                                        ; $5415: $03
    rlca                                          ; $5416: $07
    dec b                                         ; $5417: $05
    rlca                                          ; $5418: $07
    ld [bc], a                                    ; $5419: $02
    ld b, $02                                     ; $541a: $06 $02
    inc b                                         ; $541c: $04
    inc b                                         ; $541d: $04
    nop                                           ; $541e: $00
    rst $38                                       ; $541f: $ff
    dec e                                         ; $5420: $1d
    inc c                                         ; $5421: $0c
    rst $30                                       ; $5422: $f7
    ld a, [bc]                                    ; $5423: $0a
    jp $dd00                                      ; $5424: $c3 $00 $dd


    rst $38                                       ; $5427: $ff
    pop de                                        ; $5428: $d1
    rlca                                          ; $5429: $07
    pop de                                        ; $542a: $d1
    rrca                                          ; $542b: $0f
    call nc, $e617                                ; $542c: $d4 $17 $e6
    xor $e1                                       ; $542f: $ee $e1
    or $e1                                        ; $5431: $f6 $e1
    ei                                            ; $5433: $fb
    pop hl                                        ; $5434: $e1
    rlca                                          ; $5435: $07
    pop hl                                        ; $5436: $e1
    rrca                                          ; $5437: $0f
    pop af                                        ; $5438: $f1
    or $f1                                        ; $5439: $f6 $f1
    cp $f1                                        ; $543b: $fe $f1
    ld bc, $0102                                  ; $543d: $01 $02 $01
    sub e                                         ; $5440: $93
    ld b, $07                                     ; $5441: $06 $07
    dec de                                        ; $5443: $1b
    inc e                                         ; $5444: $1c
    rst $28                                       ; $5445: $ef
    ldh a, [$2f]                                  ; $5446: $f0 $2f
    ldh a, [$57]                                  ; $5448: $f0 $57
    cp b                                          ; $544a: $b8
    ld a, b                                       ; $544b: $78
    sbc a                                         ; $544c: $9f
    dec [hl]                                      ; $544d: $35
    rst $18                                       ; $544e: $df
    xor [hl]                                      ; $544f: $ae
    ld e, a                                       ; $5450: $5f
    cp a                                          ; $5451: $bf
    ld c, a                                       ; $5452: $4f
    ret z                                         ; $5453: $c8

    ld [bc], a                                    ; $5454: $02
    jr c, jr_0f1_53e0                             ; $5455: $38 $89

    ld hl, sp-$18                                 ; $5457: $f8 $e8
    ld hl, sp-$78                                 ; $5459: $f8 $88
    ld hl, sp+$10                                 ; $545b: $f8 $10
    ldh a, [$50]                                  ; $545d: $f0 $50
    or b                                          ; $545f: $b0
    ld [bc], a                                    ; $5460: $02
    ld b, $85                                     ; $5461: $06 $85
    dec b                                         ; $5463: $05
    rlca                                          ; $5464: $07
    inc bc                                        ; $5465: $03
    ld [bc], a                                    ; $5466: $02
    inc bc                                        ; $5467: $03
    ld [bc], a                                    ; $5468: $02
    ld [bc], a                                    ; $5469: $02
    sub a                                         ; $546a: $97
    inc bc                                        ; $546b: $03
    ld [bc], a                                    ; $546c: $02
    inc bc                                        ; $546d: $03
    dec b                                         ; $546e: $05
    rlca                                          ; $546f: $07
    inc b                                         ; $5470: $04
    rlca                                          ; $5471: $07
    dec bc                                        ; $5472: $0b
    inc c                                         ; $5473: $0c
    rla                                           ; $5474: $17
    ld e, $22                                     ; $5475: $1e $22
    dec a                                         ; $5477: $3d
    ld a, c                                       ; $5478: $79
    ld a, [hl]                                    ; $5479: $7e
    and a                                         ; $547a: $a7
    rst $18                                       ; $547b: $df
    db $fc                                        ; $547c: $fc
    inc bc                                        ; $547d: $03
    rst $38                                       ; $547e: $ff
    nop                                           ; $547f: $00
    cp $01                                        ; $5480: $fe $01
    ld [bc], a                                    ; $5482: $02
    ld b, $02                                     ; $5483: $06 $02
    adc h                                         ; $5485: $8c
    sub [hl]                                      ; $5486: $96
    db $fc                                        ; $5487: $fc
    ld [hl], h                                    ; $5488: $74
    rst $30                                       ; $5489: $f7
    ccf                                           ; $548a: $3f
    ei                                            ; $548b: $fb
    ld a, h                                       ; $548c: $7c
    ld hl, sp+$0f                                 ; $548d: $f8 $0f
    ld hl, sp-$71                                 ; $548f: $f8 $8f
    xor a                                         ; $5491: $af
    ld e, a                                       ; $5492: $5f
    add sp, $18                                   ; $5493: $e8 $18
    ldh a, [rNR10]                                ; $5495: $f0 $10
    pop af                                        ; $5497: $f1
    ld de, $17f6                                  ; $5498: $11 $f6 $17
    ld e, b                                       ; $549b: $58
    cp a                                          ; $549c: $bf
    inc bc                                        ; $549d: $03
    rst $38                                       ; $549e: $ff
    add e                                         ; $549f: $83
    ld bc, $7fbc                                  ; $54a0: $01 $bc $7f
    ld [bc], a                                    ; $54a3: $02
    add b                                         ; $54a4: $80
    add d                                         ; $54a5: $82
    ret nz                                        ; $54a6: $c0

    ld b, b                                       ; $54a7: $40
    ld [bc], a                                    ; $54a8: $02
    ret nz                                        ; $54a9: $c0

    add d                                         ; $54aa: $82
    ld b, b                                       ; $54ab: $40
    ret nz                                        ; $54ac: $c0

    ld [bc], a                                    ; $54ad: $02
    add b                                         ; $54ae: $80
    ld [bc], a                                    ; $54af: $02
    nop                                           ; $54b0: $00
    ld [bc], a                                    ; $54b1: $02
    ld e, $86                                     ; $54b2: $1e $86
    pop hl                                        ; $54b4: $e1
    rst $38                                       ; $54b5: $ff
    ld bc, $7eff                                  ; $54b6: $01 $ff $7e
    cp $02                                        ; $54b9: $fe $02
    add b                                         ; $54bb: $80
    ld [bc], a                                    ; $54bc: $02
    cp $84                                        ; $54bd: $fe $84
    rst $38                                       ; $54bf: $ff
    ld bc, $fff1                                  ; $54c0: $01 $f1 $ff
    ld [bc], a                                    ; $54c3: $02
    ld c, $02                                     ; $54c4: $0e $02
    nop                                           ; $54c6: $00
    ld [bc], a                                    ; $54c7: $02
    ret nz                                        ; $54c8: $c0

    ld [bc], a                                    ; $54c9: $02
    ld a, a                                       ; $54ca: $7f
    add d                                         ; $54cb: $82
    dec [hl]                                      ; $54cc: $35
    ccf                                           ; $54cd: $3f
    ld [bc], a                                    ; $54ce: $02
    rrca                                          ; $54cf: $0f
    jr jr_0f1_54d2                                ; $54d0: $18 $00

jr_0f1_54d2:
    ld [bc], a                                    ; $54d2: $02
    ld bc, $0291                                  ; $54d3: $01 $91 $02
    inc bc                                        ; $54d6: $03
    dec b                                         ; $54d7: $05
    ld b, $0b                                     ; $54d8: $06 $0b
    inc c                                         ; $54da: $0c
    rrca                                          ; $54db: $0f
    ld [$7c7b], sp                                ; $54dc: $08 $7b $7c
    db $fd                                        ; $54df: $fd
    ld a, [$ed6a]                                 ; $54e0: $fa $6a $ed
    add l                                         ; $54e3: $85
    add [hl]                                      ; $54e4: $86
    dec b                                         ; $54e5: $05
    inc bc                                        ; $54e6: $03
    rlca                                          ; $54e7: $07
    add c                                         ; $54e8: $81
    ld [bc], a                                    ; $54e9: $02
    inc bc                                        ; $54ea: $03
    inc bc                                        ; $54eb: $03
    add [hl]                                      ; $54ec: $86
    dec b                                         ; $54ed: $05
    rlca                                          ; $54ee: $07
    dec b                                         ; $54ef: $05
    rlca                                          ; $54f0: $07
    dec b                                         ; $54f1: $05
    rlca                                          ; $54f2: $07
    inc bc                                        ; $54f3: $03
    db $10                                        ; $54f4: $10
    adc h                                         ; $54f5: $8c
    nop                                           ; $54f6: $00
    stop                                          ; $54f7: $10 $00
    stop                                          ; $54f9: $10 $00
    stop                                          ; $54fb: $10 $00
    stop                                          ; $54fd: $10 $00
    stop                                          ; $54ff: $10 $00
    db $10                                        ; $5501: $10
    ld [bc], a                                    ; $5502: $02
    nop                                           ; $5503: $00
    inc bc                                        ; $5504: $03
    db $10                                        ; $5505: $10
    sub h                                         ; $5506: $94
    nop                                           ; $5507: $00
    stop                                          ; $5508: $10 $00
    db $10                                        ; $550a: $10
    dec c                                         ; $550b: $0d
    inc de                                        ; $550c: $13
    ld c, $12                                     ; $550d: $0e $12
    ld [bc], a                                    ; $550f: $02
    ld e, $04                                     ; $5510: $1e $04
    inc e                                         ; $5512: $1c
    add sp, $17                                   ; $5513: $e8 $17
    ld d, l                                       ; $5515: $55
    xor a                                         ; $5516: $af
    xor e                                         ; $5517: $ab
    ld a, a                                       ; $5518: $7f
    ld d, [hl]                                    ; $5519: $56
    cp $02                                        ; $551a: $fe $02
    ld hl, sp+$02                                 ; $551c: $f8 $02
    ret nz                                        ; $551e: $c0

    inc d                                         ; $551f: $14
    nop                                           ; $5520: $00
    add d                                         ; $5521: $82
    ld h, e                                       ; $5522: $63
    db $e3                                        ; $5523: $e3
    ld [bc], a                                    ; $5524: $02
    add b                                         ; $5525: $80
    inc e                                         ; $5526: $1c
    nop                                           ; $5527: $00
    adc [hl]                                      ; $5528: $8e
    add hl, bc                                    ; $5529: $09
    rrca                                          ; $552a: $0f
    inc de                                        ; $552b: $13
    rra                                           ; $552c: $1f
    inc de                                        ; $552d: $13
    rra                                           ; $552e: $1f
    add hl, bc                                    ; $552f: $09
    rrca                                          ; $5530: $0f
    ld a, [bc]                                    ; $5531: $0a
    rrca                                          ; $5532: $0f
    ld [de], a                                    ; $5533: $12
    rra                                           ; $5534: $1f
    ld [de], a                                    ; $5535: $12
    rra                                           ; $5536: $1f
    ld [bc], a                                    ; $5537: $02
    ccf                                           ; $5538: $3f
    adc [hl]                                      ; $5539: $8e
    ld b, b                                       ; $553a: $40
    ld a, a                                       ; $553b: $7f
    sub b                                         ; $553c: $90
    rst $38                                       ; $553d: $ff
    xor a                                         ; $553e: $af
    rst $38                                       ; $553f: $ff
    sub a                                         ; $5540: $97
    add sp, $6d                                   ; $5541: $e8 $6d
    ld e, d                                       ; $5543: $5a
    inc hl                                        ; $5544: $23
    inc a                                         ; $5545: $3c
    dec e                                         ; $5546: $1d
    ld a, [de]                                    ; $5547: $1a
    ld [bc], a                                    ; $5548: $02
    rlca                                          ; $5549: $07
    add c                                         ; $554a: $81
    ld b, b                                       ; $554b: $40
    ld [bc], a                                    ; $554c: $02
    ret nz                                        ; $554d: $c0

    add d                                         ; $554e: $82
    ld b, b                                       ; $554f: $40
    ret nz                                        ; $5550: $c0

    ld [bc], a                                    ; $5551: $02
    ld b, b                                       ; $5552: $40
    add d                                         ; $5553: $82
    ret nz                                        ; $5554: $c0

    ld b, b                                       ; $5555: $40
    ld [bc], a                                    ; $5556: $02
    ret nz                                        ; $5557: $c0

    sub e                                         ; $5558: $93
    ld b, b                                       ; $5559: $40
    cp $3e                                        ; $555a: $fe $3e
    ld [hl], c                                    ; $555c: $71
    sbc a                                         ; $555d: $9f
    ldh a, [rIE]                                  ; $555e: $f0 $ff
    ld bc, $feff                                  ; $5560: $01 $ff $fe
    rst $38                                       ; $5563: $ff
    ld hl, sp+$07                                 ; $5564: $f8 $07
    or $0b                                        ; $5566: $f6 $0b
    ld [$5717], a                                 ; $5568: $ea $17 $57
    xor e                                         ; $556b: $ab
    ld [bc], a                                    ; $556c: $02
    cp $0e                                        ; $556d: $fe $0e
    nop                                           ; $556f: $00
    ld [bc], a                                    ; $5570: $02
    inc b                                         ; $5571: $04
    add d                                         ; $5572: $82
    ld [bc], a                                    ; $5573: $02
    ld b, $02                                     ; $5574: $06 $02
    rlca                                          ; $5576: $07
    add [hl]                                      ; $5577: $86
    inc bc                                        ; $5578: $03
    rlca                                          ; $5579: $07
    dec b                                         ; $557a: $05
    rlca                                          ; $557b: $07
    ld [bc], a                                    ; $557c: $02
    ld b, $02                                     ; $557d: $06 $02
    inc b                                         ; $557f: $04
    inc b                                         ; $5580: $04
    nop                                           ; $5581: $00
    rst $38                                       ; $5582: $ff
    dec e                                         ; $5583: $1d
    inc c                                         ; $5584: $0c
    rst $30                                       ; $5585: $f7
    ld a, [bc]                                    ; $5586: $0a
    jp $dd00                                      ; $5587: $c3 $00 $dd


    inc b                                         ; $558a: $04
    reti                                          ; $558b: $d9


    inc c                                         ; $558c: $0c
    pop de                                        ; $558d: $d1
    inc d                                         ; $558e: $14
    jp nc, $d51c                                  ; $558f: $d2 $1c $d5

    ld hl, $f6e6                                  ; $5592: $21 $e6 $f6
    pop hl                                        ; $5595: $e1
    cp $ed                                        ; $5596: $fe $ed
    ld bc, $12e1                                  ; $5598: $01 $e1 $12
    pop af                                        ; $559b: $f1
    or $f1                                        ; $559c: $f6 $f1
    cp $f1                                        ; $559e: $fe $f1
    nop                                           ; $55a0: $00
    ld [bc], a                                    ; $55a1: $02
    ld bc, $069e                                  ; $55a2: $01 $9e $06
    rlca                                          ; $55a5: $07
    dec a                                         ; $55a6: $3d
    ld a, $d5                                     ; $55a7: $3e $d5
    xor $5b                                       ; $55a9: $ee $5b
    and [hl]                                      ; $55ab: $a6
    adc $33                                       ; $55ac: $ce $33
    rst $28                                       ; $55ae: $ef
    inc de                                        ; $55af: $13
    db $ed                                        ; $55b0: $ed
    inc de                                        ; $55b1: $13
    ld a, a                                       ; $55b2: $7f
    add c                                         ; $55b3: $81
    ld sp, hl                                     ; $55b4: $f9
    rlca                                          ; $55b5: $07
    ld h, [hl]                                    ; $55b6: $66
    sbc [hl]                                      ; $55b7: $9e
    ld a, [hl]                                    ; $55b8: $7e
    cp $e2                                        ; $55b9: $fe $e2
    cp $04                                        ; $55bb: $fe $04
    db $fc                                        ; $55bd: $fc
    inc [hl]                                      ; $55be: $34
    call z, $18e8                                 ; $55bf: $cc $e8 $18
    ld [bc], a                                    ; $55c2: $02
    ld bc, $0696                                  ; $55c3: $01 $96 $06
    rlca                                          ; $55c6: $07
    ld a, [de]                                    ; $55c7: $1a
    dec e                                         ; $55c8: $1d
    ld l, a                                       ; $55c9: $6f
    ld [hl], b                                    ; $55ca: $70
    cp a                                          ; $55cb: $bf
    ret nz                                        ; $55cc: $c0

    rst $38                                       ; $55cd: $ff
    nop                                           ; $55ce: $00
    rst $38                                       ; $55cf: $ff
    nop                                           ; $55d0: $00
    cp $01                                        ; $55d1: $fe $01
    ld d, l                                       ; $55d3: $55
    xor d                                         ; $55d4: $aa
    ld [hl+], a                                   ; $55d5: $22
    rst $18                                       ; $55d6: $df
    ld d, l                                       ; $55d7: $55
    rst $38                                       ; $55d8: $ff
    xor e                                         ; $55d9: $ab
    rst $38                                       ; $55da: $ff
    ld [bc], a                                    ; $55db: $02
    db $fc                                        ; $55dc: $fc
    ld [bc], a                                    ; $55dd: $02
    ldh [rDIV], a                                 ; $55de: $e0 $04
    nop                                           ; $55e0: $00
    ld [bc], a                                    ; $55e1: $02
    inc bc                                        ; $55e2: $03
    add c                                         ; $55e3: $81
    ld [bc], a                                    ; $55e4: $02
    ld [bc], a                                    ; $55e5: $02
    inc bc                                        ; $55e6: $03
    sbc e                                         ; $55e7: $9b
    ld [bc], a                                    ; $55e8: $02
    inc bc                                        ; $55e9: $03
    ld [bc], a                                    ; $55ea: $02
    dec b                                         ; $55eb: $05
    ld b, $0b                                     ; $55ec: $06 $0b
    inc c                                         ; $55ee: $0c
    scf                                           ; $55ef: $37
    inc a                                         ; $55f0: $3c
    push de                                       ; $55f1: $d5
    ld a, [$e817]                                 ; $55f2: $fa $17 $e8
    cp a                                          ; $55f5: $bf
    ret nz                                        ; $55f6: $c0

    ld l, [hl]                                    ; $55f7: $6e
    pop af                                        ; $55f8: $f1
    sub c                                         ; $55f9: $91
    ld a, a                                       ; $55fa: $7f
    rst $28                                       ; $55fb: $ef
    rra                                           ; $55fc: $1f
    rst $38                                       ; $55fd: $ff
    ld bc, $01fe                                  ; $55fe: $01 $fe $01
    add e                                         ; $5601: $83
    ld a, a                                       ; $5602: $7f
    ld [bc], a                                    ; $5603: $02
    add [hl]                                      ; $5604: $86
    adc [hl]                                      ; $5605: $8e
    db $f4                                        ; $5606: $f4
    ld a, h                                       ; $5607: $7c
    rst $30                                       ; $5608: $f7
    cpl                                           ; $5609: $2f
    rst $30                                       ; $560a: $f7
    ld hl, sp-$1d                                 ; $560b: $f8 $e3
    ld a, a                                       ; $560d: $7f
    ldh [$3f], a                                  ; $560e: $e0 $3f
    cp a                                          ; $5610: $bf
    ld a, a                                       ; $5611: $7f
    ld b, b                                       ; $5612: $40
    ret nz                                        ; $5613: $c0

    ld [bc], a                                    ; $5614: $02
    add b                                         ; $5615: $80
    ld [bc], a                                    ; $5616: $02
    adc a                                         ; $5617: $8f
    add h                                         ; $5618: $84
    ld [hl], b                                    ; $5619: $70
    ld a, a                                       ; $561a: $7f
    add a                                         ; $561b: $87
    rst $38                                       ; $561c: $ff
    ld [bc], a                                    ; $561d: $02
    cp $84                                        ; $561e: $fe $84
    cp a                                          ; $5620: $bf
    ld b, c                                       ; $5621: $41
    db $fc                                        ; $5622: $fc
    rst $38                                       ; $5623: $ff
    ld [bc], a                                    ; $5624: $02
    inc bc                                        ; $5625: $03
    ld b, $10                                     ; $5626: $06 $10
    ld b, $00                                     ; $5628: $06 $00
    ld [bc], a                                    ; $562a: $02
    ld e, $84                                     ; $562b: $1e $84
    ld bc, $111f                                  ; $562d: $01 $1f $11
    rra                                           ; $5630: $1f
    ld [bc], a                                    ; $5631: $02
    ld c, $02                                     ; $5632: $0e $02
    ld e, $84                                     ; $5634: $1e $84
    rra                                           ; $5636: $1f
    ld bc, $1f11                                  ; $5637: $01 $11 $1f
    ld [bc], a                                    ; $563a: $02
    rrca                                          ; $563b: $0f
    inc b                                         ; $563c: $04
    nop                                           ; $563d: $00
    ld [bc], a                                    ; $563e: $02
    inc bc                                        ; $563f: $03
    add [hl]                                      ; $5640: $86
    dec c                                         ; $5641: $0d
    rrca                                          ; $5642: $0f
    rla                                           ; $5643: $17
    rra                                           ; $5644: $1f
    inc l                                         ; $5645: $2c
    inc a                                         ; $5646: $3c
    ld [bc], a                                    ; $5647: $02
    ld [hl], b                                    ; $5648: $70
    ld [bc], a                                    ; $5649: $02
    ret nz                                        ; $564a: $c0

    ld a, [bc]                                    ; $564b: $0a
    nop                                           ; $564c: $00
    inc b                                         ; $564d: $04
    ld bc, $0286                                  ; $564e: $01 $86 $02
    inc bc                                        ; $5651: $03
    ld [bc], a                                    ; $5652: $02
    inc bc                                        ; $5653: $03
    dec b                                         ; $5654: $05
    rlca                                          ; $5655: $07
    ld [bc], a                                    ; $5656: $02
    inc b                                         ; $5657: $04
    add c                                         ; $5658: $81
    ld [$0c02], sp                                ; $5659: $08 $02 $0c
    adc d                                         ; $565c: $8a
    ld [$3c38], sp                                ; $565d: $08 $38 $3c
    db $fc                                        ; $5660: $fc
    ld hl, sp-$18                                 ; $5661: $f8 $e8
    db $ec                                        ; $5663: $ec
    adc h                                         ; $5664: $8c
    adc b                                         ; $5665: $88
    ld [$0c05], sp                                ; $5666: $08 $05 $0c
    adc [hl]                                      ; $5669: $8e
    ld [$100c], sp                                ; $566a: $08 $0c $10
    inc e                                         ; $566d: $1c
    ld de, $301e                                  ; $566e: $11 $1e $30
    ccf                                           ; $5671: $3f
    ld h, e                                       ; $5672: $63
    ld a, a                                       ; $5673: $7f
    call nz, Call_000_02fc                        ; $5674: $c4 $fc $02
    ld b, $02                                     ; $5677: $06 $02
    inc b                                         ; $5679: $04
    inc b                                         ; $567a: $04
    nop                                           ; $567b: $00
    add d                                         ; $567c: $82
    ret nz                                        ; $567d: $c0

    ld b, b                                       ; $567e: $40
    inc b                                         ; $567f: $04
    add b                                         ; $5680: $80
    ld b, $00                                     ; $5681: $06 $00
    ld [bc], a                                    ; $5683: $02
    ldh a, [$8e]                                  ; $5684: $f0 $8e
    adc h                                         ; $5686: $8c
    db $fc                                        ; $5687: $fc
    add d                                         ; $5688: $82
    cp $0f                                        ; $5689: $fe $0f
    rst $38                                       ; $568b: $ff
    di                                            ; $568c: $f3
    rst $38                                       ; $568d: $ff
    push bc                                       ; $568e: $c5
    ccf                                           ; $568f: $3f
    rla                                           ; $5690: $17
    ccf                                           ; $5691: $3f
    jr z, jr_0f1_56cc                             ; $5692: $28 $38

    ld [bc], a                                    ; $5694: $02
    jr nc, jr_0f1_56bb                            ; $5695: $30 $24

    nop                                           ; $5697: $00
    add h                                         ; $5698: $84
    ld a, [bc]                                    ; $5699: $0a
    rrca                                          ; $569a: $0f
    ld [de], a                                    ; $569b: $12
    rra                                           ; $569c: $1f
    ld [bc], a                                    ; $569d: $02
    ccf                                           ; $569e: $3f
    adc [hl]                                      ; $569f: $8e
    ld b, b                                       ; $56a0: $40
    ld a, a                                       ; $56a1: $7f
    sub b                                         ; $56a2: $90
    rst $38                                       ; $56a3: $ff
    xor a                                         ; $56a4: $af
    rst $38                                       ; $56a5: $ff
    sub a                                         ; $56a6: $97
    add sp, $6d                                   ; $56a7: $e8 $6d
    ld e, d                                       ; $56a9: $5a
    inc hl                                        ; $56aa: $23
    inc a                                         ; $56ab: $3c
    dec e                                         ; $56ac: $1d
    ld a, [de]                                    ; $56ad: $1a
    ld [bc], a                                    ; $56ae: $02
    rlca                                          ; $56af: $07
    adc c                                         ; $56b0: $89
    ld b, b                                       ; $56b1: $40
    ldh [$60], a                                  ; $56b2: $e0 $60
    ret nz                                        ; $56b4: $c0

    add b                                         ; $56b5: $80
    ldh [$a0], a                                  ; $56b6: $e0 $a0
    ldh [rLCDC], a                                ; $56b8: $e0 $40
    ld [bc], a                                    ; $56ba: $02

jr_0f1_56bb:
    ret nz                                        ; $56bb: $c0

    add l                                         ; $56bc: $85
    ld b, b                                       ; $56bd: $40
    ldh [rNR41], a                                ; $56be: $e0 $20
    ld h, b                                       ; $56c0: $60
    add b                                         ; $56c1: $80
    ld [bc], a                                    ; $56c2: $02
    ldh [$81], a                                  ; $56c3: $e0 $81
    nop                                           ; $56c5: $00
    inc b                                         ; $56c6: $04
    ldh [$87], a                                  ; $56c7: $e0 $87
    nop                                           ; $56c9: $00
    or $0b                                        ; $56ca: $f6 $0b

jr_0f1_56cc:
    ld [$5717], a                                 ; $56cc: $ea $17 $57
    xor e                                         ; $56cf: $ab
    ld [bc], a                                    ; $56d0: $02
    cp $18                                        ; $56d1: $fe $18
    nop                                           ; $56d3: $00
    add d                                         ; $56d4: $82
    ld bc, $0203                                  ; $56d5: $01 $03 $02
    ld [bc], a                                    ; $56d8: $02
    inc b                                         ; $56d9: $04
    nop                                           ; $56da: $00
    rst $38                                       ; $56db: $ff
    dec de                                        ; $56dc: $1b
    dec bc                                        ; $56dd: $0b
    rst $30                                       ; $56de: $f7
    ld a, [bc]                                    ; $56df: $0a
    jp $dc00                                      ; $56e0: $c3 $00 $dc


jr_0f1_56e3:
    rst $38                                       ; $56e3: $ff
    jp nc, $d207                                  ; $56e4: $d2 $07 $d2

    rrca                                          ; $56e7: $0f
    db $e3                                        ; $56e8: $e3
    db $f4                                        ; $56e9: $f4
    ld [c], a                                     ; $56ea: $e2
    ei                                            ; $56eb: $fb
    ld [c], a                                     ; $56ec: $e2
    rlca                                          ; $56ed: $07
    ld [c], a                                     ; $56ee: $e2
    rrca                                          ; $56ef: $0f
    ld [c], a                                     ; $56f0: $e2
    ld de, $f6f2                                  ; $56f1: $11 $f2 $f6
    ld a, [c]                                     ; $56f4: $f2
    cp $f2                                        ; $56f5: $fe $f2
    ld bc, $0102                                  ; $56f7: $01 $02 $01
    ld [bc], a                                    ; $56fa: $02
    inc bc                                        ; $56fb: $03
    sub a                                         ; $56fc: $97
    inc b                                         ; $56fd: $04
    rlca                                          ; $56fe: $07
    dec bc                                        ; $56ff: $0b
    inc c                                         ; $5700: $0c
    scf                                           ; $5701: $37
    jr c, jr_0f1_56e3                             ; $5702: $38 $df

    ldh [$bf], a                                  ; $5704: $e0 $bf

jr_0f1_5706:
    ret nz                                        ; $5706: $c0

    ld a, l                                       ; $5707: $7d
    jp nz, Jump_0f1_65da                          ; $5708: $c2 $da $65

    or c                                          ; $570b: $b1
    ld a, a                                       ; $570c: $7f
    ld [$df3f], a                                 ; $570d: $ea $3f $df
    ccf                                           ; $5710: $3f
    cp $1e                                        ; $5711: $fe $1e
    jr nc, jr_0f1_5718                            ; $5713: $30 $03

    ldh a, [$82]                                  ; $5715: $f0 $82
    sub b                                         ; $5717: $90

jr_0f1_5718:
    ldh a, [rSC]                                  ; $5718: $f0 $02
    ld bc, $e702                                  ; $571a: $01 $02 $e7
    sbc h                                         ; $571d: $9c
    ei                                            ; $571e: $fb
    sbc l                                         ; $571f: $9d
    ld e, [hl]                                    ; $5720: $5e
    ld h, c                                       ; $5721: $61
    ccf                                           ; $5722: $3f
    cpl                                           ; $5723: $2f
    ccf                                           ; $5724: $3f
    daa                                           ; $5725: $27
    ccf                                           ; $5726: $3f
    ld hl, $7967                                  ; $5727: $21 $67 $79
    ld e, l                                       ; $572a: $5d
    ld h, e                                       ; $572b: $63
    rst $28                                       ; $572c: $ef
    pop af                                        ; $572d: $f1
    dec sp                                        ; $572e: $3b
    push bc                                       ; $572f: $c5
    db $dd                                        ; $5730: $dd
    db $e3                                        ; $5731: $e3
    ld [hl-], a                                   ; $5732: $32
    cp $cf                                        ; $5733: $fe $cf
    ccf                                           ; $5735: $3f
    ld a, [c]                                     ; $5736: $f2
    rrca                                          ; $5737: $0f
    rst $38                                       ; $5738: $ff
    inc bc                                        ; $5739: $03
    ld [bc], a                                    ; $573a: $02
    add b                                         ; $573b: $80
    inc b                                         ; $573c: $04

jr_0f1_573d:
    nop                                           ; $573d: $00
    ld [bc], a                                    ; $573e: $02
    ldh a, [$86]                                  ; $573f: $f0 $86
    ld a, b                                       ; $5741: $78
    adc b                                         ; $5742: $88
    jr jr_0f1_573d                                ; $5743: $18 $f8

    ld [$02f8], sp                                ; $5745: $08 $f8 $02
    ldh a, [$08]                                  ; $5748: $f0 $08
    nop                                           ; $574a: $00
    ld [bc], a                                    ; $574b: $02
    ld a, $86                                     ; $574c: $3e $86
    pop bc                                        ; $574e: $c1
    rst $38                                       ; $574f: $ff
    dec c                                         ; $5750: $0d
    rst $38                                       ; $5751: $ff
    push af                                       ; $5752: $f5
    rst $30                                       ; $5753: $f7
    ld [bc], a                                    ; $5754: $02
    ld bc, $028f                                  ; $5755: $01 $8f $02
    inc bc                                        ; $5758: $03
    dec b                                         ; $5759: $05
    ld b, $07                                     ; $575a: $06 $07
    inc b                                         ; $575c: $04
    dec c                                         ; $575d: $0d
    ld c, $3c                                     ; $575e: $0e $3c
    ccf                                           ; $5760: $3f
    ld [hl], l                                    ; $5761: $75
    halt                                          ; $5762: $76
    ld h, d                                       ; $5763: $62
    ld h, e                                       ; $5764: $63
    and d                                         ; $5765: $a2
    inc bc                                        ; $5766: $03
    db $e3                                        ; $5767: $e3
    add h                                         ; $5768: $84
    and e                                         ; $5769: $a3
    db $e3                                        ; $576a: $e3
    pop de                                        ; $576b: $d1
    pop af                                        ; $576c: $f1
    ld [bc], a                                    ; $576d: $02
    ld [hl], c                                    ; $576e: $71
    add [hl]                                      ; $576f: $86
    ld [hl-], a                                   ; $5770: $32
    inc sp                                        ; $5771: $33
    inc d                                         ; $5772: $14
    rla                                           ; $5773: $17
    inc b                                         ; $5774: $04
    rlca                                          ; $5775: $07
    ld [bc], a                                    ; $5776: $02
    jr nc, jr_0f1_5706                            ; $5777: $30 $8d

    ld d, b                                       ; $5779: $50
    ld h, b                                       ; $577a: $60
    ld d, b                                       ; $577b: $50
    jr nz, jr_0f1_57be                            ; $577c: $20 $40

    jr nc, jr_0f1_57e0                            ; $577e: $30 $60

    db $10                                        ; $5780: $10
    ld h, b                                       ; $5781: $60
    db $10                                        ; $5782: $10
    ld [hl], b                                    ; $5783: $70
    nop                                           ; $5784: $00
    jr nc, jr_0f1_5789                            ; $5785: $30 $02

    ld b, b                                       ; $5787: $40
    add c                                         ; $5788: $81

jr_0f1_5789:
    jr nc, jr_0f1_578d                            ; $5789: $30 $02

    ld [hl], b                                    ; $578b: $70
    sub h                                         ; $578c: $94

jr_0f1_578d:
    ld h, c                                       ; $578d: $61
    ld a, a                                       ; $578e: $7f
    ld a, [bc]                                    ; $578f: $0a
    halt                                          ; $5790: $76
    ld a, [de]                                    ; $5791: $1a
    ld h, [hl]                                    ; $5792: $66
    ld c, d                                       ; $5793: $4a
    halt                                          ; $5794: $76
    inc h                                         ; $5795: $24
    ld a, h                                       ; $5796: $7c
    inc h                                         ; $5797: $24
    ld a, h                                       ; $5798: $7c
    and a                                         ; $5799: $a7
    ld e, b                                       ; $579a: $58
    ld c, l                                       ; $579b: $4d
    cp [hl]                                       ; $579c: $be
    xor e                                         ; $579d: $ab
    ei                                            ; $579e: $fb
    ld d, b                                       ; $579f: $50
    ldh a, [rSC]                                  ; $57a0: $f0 $02
    ldh [rSC], a                                  ; $57a2: $e0 $02
    add b                                         ; $57a4: $80
    inc d                                         ; $57a5: $14
    nop                                           ; $57a6: $00
    sub d                                         ; $57a7: $92
    call nz, $f2c7                                ; $57a8: $c4 $c7 $f2
    inc sp                                        ; $57ab: $33
    cp d                                          ; $57ac: $ba
    bit 7, d                                      ; $57ad: $cb $7a
    ld l, e                                       ; $57af: $6b
    dec l                                         ; $57b0: $2d
    dec [hl]                                      ; $57b1: $35
    inc e                                         ; $57b2: $1c
    inc d                                         ; $57b3: $14
    inc e                                         ; $57b4: $1c
    inc d                                         ; $57b5: $14
    inc l                                         ; $57b6: $2c
    inc [hl]                                      ; $57b7: $34
    inc l                                         ; $57b8: $2c
    inc [hl]                                      ; $57b9: $34
    ld [bc], a                                    ; $57ba: $02
    jr jr_0f1_57c9                                ; $57bb: $18 $0c

    nop                                           ; $57bd: $00

jr_0f1_57be:
    inc b                                         ; $57be: $04
    ld [bc], a                                    ; $57bf: $02
    add h                                         ; $57c0: $84
    ld bc, $0103                                  ; $57c1: $01 $03 $01
    inc bc                                        ; $57c4: $03
    ld [bc], a                                    ; $57c5: $02
    ld [bc], a                                    ; $57c6: $02
    ld d, $00                                     ; $57c7: $16 $00

jr_0f1_57c9:
    ld [bc], a                                    ; $57c9: $02
    inc bc                                        ; $57ca: $03
    adc d                                         ; $57cb: $8a
    inc de                                        ; $57cc: $13
    rra                                           ; $57cd: $1f
    add hl, bc                                    ; $57ce: $09
    rrca                                          ; $57cf: $0f
    add hl, bc                                    ; $57d0: $09
    rrca                                          ; $57d1: $0f
    ld [de], a                                    ; $57d2: $12
    rra                                           ; $57d3: $1f
    ld [de], a                                    ; $57d4: $12
    rra                                           ; $57d5: $1f
    ld [bc], a                                    ; $57d6: $02
    ccf                                           ; $57d7: $3f
    adc [hl]                                      ; $57d8: $8e
    ld b, b                                       ; $57d9: $40
    ld a, a                                       ; $57da: $7f
    sub b                                         ; $57db: $90
    rst $38                                       ; $57dc: $ff
    xor a                                         ; $57dd: $af
    rst $38                                       ; $57de: $ff
    sub a                                         ; $57df: $97

jr_0f1_57e0:
    add sp, $6d                                   ; $57e0: $e8 $6d
    ld e, d                                       ; $57e2: $5a
    inc hl                                        ; $57e3: $23
    inc a                                         ; $57e4: $3c
    dec e                                         ; $57e5: $1d
    ld a, [de]                                    ; $57e6: $1a
    ld [bc], a                                    ; $57e7: $02
    rlca                                          ; $57e8: $07
    ld [bc], a                                    ; $57e9: $02
    nop                                           ; $57ea: $00
    add a                                         ; $57eb: $87
    ld h, b                                       ; $57ec: $60
    and b                                         ; $57ed: $a0
    ld h, b                                       ; $57ee: $60
    and b                                         ; $57ef: $a0
    ld b, b                                       ; $57f0: $40
    ret nz                                        ; $57f1: $c0

    ld b, b                                       ; $57f2: $40
    ld [bc], a                                    ; $57f3: $02
    ret nz                                        ; $57f4: $c0

    sub e                                         ; $57f5: $93
    ld b, b                                       ; $57f6: $40
    cp $3e                                        ; $57f7: $fe $3e
    ld [hl], c                                    ; $57f9: $71
    sbc a                                         ; $57fa: $9f
    ldh a, [rIE]                                  ; $57fb: $f0 $ff
    ld bc, $feff                                  ; $57fd: $01 $ff $fe
    rst $38                                       ; $5800: $ff
    ld hl, sp+$07                                 ; $5801: $f8 $07
    or $0b                                        ; $5803: $f6 $0b
    ld [$5717], a                                 ; $5805: $ea $17 $57
    xor e                                         ; $5808: $ab
    ld [bc], a                                    ; $5809: $02
    cp $0e                                        ; $580a: $fe $0e
    nop                                           ; $580c: $00
    ld [bc], a                                    ; $580d: $02
    inc b                                         ; $580e: $04
    add d                                         ; $580f: $82
    ld [bc], a                                    ; $5810: $02
    ld b, $02                                     ; $5811: $06 $02
    rlca                                          ; $5813: $07
    add [hl]                                      ; $5814: $86
    inc bc                                        ; $5815: $03
    rlca                                          ; $5816: $07
    dec b                                         ; $5817: $05
    rlca                                          ; $5818: $07
    ld [bc], a                                    ; $5819: $02
    ld b, $02                                     ; $581a: $06 $02
    inc b                                         ; $581c: $04
    ld b, $00                                     ; $581d: $06 $00
    rst $38                                       ; $581f: $ff
    dec e                                         ; $5820: $1d
    inc c                                         ; $5821: $0c
    rst $30                                       ; $5822: $f7
    ld a, [bc]                                    ; $5823: $0a
    jp $e800                                      ; $5824: $c3 $00 $e8


    rst $20                                       ; $5827: $e7
    db $e4                                        ; $5828: $e4
    rst $28                                       ; $5829: $ef
    db $f4                                        ; $582a: $f4
    rst $28                                       ; $582b: $ef
    push de                                       ; $582c: $d5
    rst $30                                       ; $582d: $f7
    push hl                                       ; $582e: $e5
    rst $30                                       ; $582f: $f7
    push af                                       ; $5830: $f5
    rst $30                                       ; $5831: $f7
    rst $08                                       ; $5832: $cf
    rst $38                                       ; $5833: $ff
    rst $18                                       ; $5834: $df
    rst $38                                       ; $5835: $ff
    push af                                       ; $5836: $f5
    rst $38                                       ; $5837: $ff
    db $db                                        ; $5838: $db
    rlca                                          ; $5839: $07
    db $eb                                        ; $583a: $eb
    rlca                                          ; $583b: $07
    jp c, $020f                                   ; $583c: $da $0f $02

    rlca                                          ; $583f: $07
    ld [bc], a                                    ; $5840: $02
    rra                                           ; $5841: $1f
    add d                                         ; $5842: $82
    add hl, hl                                    ; $5843: $29
    add hl, sp                                    ; $5844: $39
    ld [bc], a                                    ; $5845: $02
    ld [hl], c                                    ; $5846: $71
    add d                                         ; $5847: $82
    ld d, b                                       ; $5848: $50
    ld [hl], b                                    ; $5849: $70
    ld [bc], a                                    ; $584a: $02
    ldh [$82], a                                  ; $584b: $e0 $82
    and b                                         ; $584d: $a0
    ldh [rTMA], a                                 ; $584e: $e0 $06
    ret nz                                        ; $5850: $c0

    inc b                                         ; $5851: $04
    add b                                         ; $5852: $80
    ld [$0200], sp                                ; $5853: $08 $00 $02
    rrca                                          ; $5856: $0f
    and d                                         ; $5857: $a2
    ld [hl], $39                                  ; $5858: $36 $39
    ld d, a                                       ; $585a: $57
    ld l, b                                       ; $585b: $68
    or a                                          ; $585c: $b7
    ret z                                         ; $585d: $c8

    di                                            ; $585e: $f3
    adc h                                         ; $585f: $8c
    dec sp                                        ; $5860: $3b
    call nz, $a45b                                ; $5861: $c4 $5b $a4
    cpl                                           ; $5864: $2f
    ret nc                                        ; $5865: $d0

    call nc, $a1ab                                ; $5866: $d4 $ab $a1
    rst $18                                       ; $5869: $df
    adc a                                         ; $586a: $8f
    rst $38                                       ; $586b: $ff
    ld a, b                                       ; $586c: $78
    ld a, a                                       ; $586d: $7f
    ld [hl+], a                                   ; $586e: $22
    dec a                                         ; $586f: $3d
    inc de                                        ; $5870: $13
    inc e                                         ; $5871: $1c
    inc c                                         ; $5872: $0c
    rrca                                          ; $5873: $0f
    dec bc                                        ; $5874: $0b
    rrca                                          ; $5875: $0f
    ld [$060f], sp                                ; $5876: $08 $0f $06
    rlca                                          ; $5879: $07
    ld [bc], a                                    ; $587a: $02
    ld bc, $0002                                  ; $587b: $01 $02 $00
    inc b                                         ; $587e: $04
    ld bc, $0288                                  ; $587f: $01 $88 $02
    inc bc                                        ; $5882: $03
    ld [bc], a                                    ; $5883: $02
    inc bc                                        ; $5884: $03
    ld [bc], a                                    ; $5885: $02
    inc bc                                        ; $5886: $03
    ld [bc], a                                    ; $5887: $02
    inc bc                                        ; $5888: $03
    ld [bc], a                                    ; $5889: $02
    ld bc, $000a                                  ; $588a: $01 $0a $00
    ld [bc], a                                    ; $588d: $02
    ld bc, $0702                                  ; $588e: $01 $02 $07
    add d                                         ; $5891: $82
    ld [bc], a                                    ; $5892: $02
    inc bc                                        ; $5893: $03
    db $10                                        ; $5894: $10
    ld bc, $0302                                  ; $5895: $01 $02 $03
    sbc b                                         ; $5898: $98
    inc b                                         ; $5899: $04
    rlca                                          ; $589a: $07
    dec de                                        ; $589b: $1b
    inc e                                         ; $589c: $1c
    ld l, a                                       ; $589d: $6f
    ld [hl], b                                    ; $589e: $70
    cp a                                          ; $589f: $bf
    ret nz                                        ; $58a0: $c0

    cp a                                          ; $58a1: $bf
    ret nz                                        ; $58a2: $c0

    sub a                                         ; $58a3: $97
    add sp, $4a                                   ; $58a4: $e8 $4a
    push af                                       ; $58a6: $f5
    ld b, l                                       ; $58a7: $45
    ei                                            ; $58a8: $fb
    ld [$bf7f], a                                 ; $58a9: $ea $7f $bf
    ld a, a                                       ; $58ac: $7f
    jr nz, @-$1e                                  ; $58ad: $20 $e0

    ld h, b                                       ; $58af: $60
    ldh [rSC], a                                  ; $58b0: $e0 $02
    ret nz                                        ; $58b2: $c0

    add c                                         ; $58b3: $81
    ld b, b                                       ; $58b4: $40
    ld [bc], a                                    ; $58b5: $02
    ret nz                                        ; $58b6: $c0

    ld [bc], a                                    ; $58b7: $02
    ld b, b                                       ; $58b8: $40

jr_0f1_58b9:
    ld [bc], a                                    ; $58b9: $02
    ret nz                                        ; $58ba: $c0

    adc l                                         ; $58bb: $8d
    ld b, b                                       ; $58bc: $40
    ldh [$60], a                                  ; $58bd: $e0 $60
    jr jr_0f1_58b9                                ; $58bf: $18 $f8

    call nc, $22ec                                ; $58c1: $d4 $ec $22
    cp $17                                        ; $58c4: $fe $17
    ld sp, hl                                     ; $58c6: $f9
    sbc e                                         ; $58c7: $9b
    db $fc                                        ; $58c8: $fc
    ld [bc], a                                    ; $58c9: $02
    rst $38                                       ; $58ca: $ff
    adc e                                         ; $58cb: $8b
    nop                                           ; $58cc: $00
    rst $38                                       ; $58cd: $ff
    ld b, a                                       ; $58ce: $47
    rst $38                                       ; $58cf: $ff
    cp a                                          ; $58d0: $bf
    ld hl, sp+$5f                                 ; $58d1: $f8 $5f
    and b                                         ; $58d3: $a0
    or a                                          ; $58d4: $b7
    ld l, b                                       ; $58d5: $68
    ld a, [hl+]                                   ; $58d6: $2a
    ld [bc], a                                    ; $58d7: $02
    push af                                       ; $58d8: $f5
    add c                                         ; $58d9: $81
    ei                                            ; $58da: $fb
    ld [bc], a                                    ; $58db: $02
    ld c, $08                                     ; $58dc: $0e $08
    nop                                           ; $58de: $00
    ld [bc], a                                    ; $58df: $02
    inc c                                         ; $58e0: $0c
    or d                                          ; $58e1: $b2
    ld [de], a                                    ; $58e2: $12
    ld e, $ad                                     ; $58e3: $1e $ad
    or a                                          ; $58e5: $b7
    reti                                          ; $58e6: $d9


jr_0f1_58e7:
    rst $20                                       ; $58e7: $e7
    ld e, d                                       ; $58e8: $5a
    ld h, [hl]                                    ; $58e9: $66
    or d                                          ; $58ea: $b2
    cp $7c                                        ; $58eb: $fe $7c
    db $fc                                        ; $58ed: $fc
    db $e4                                        ; $58ee: $e4
    ld a, h                                       ; $58ef: $7c
    db $f4                                        ; $58f0: $f4
    ld l, h                                       ; $58f1: $6c
    ld a, h                                       ; $58f2: $7c
    add h                                         ; $58f3: $84
    ld a, h                                       ; $58f4: $7c
    add h                                         ; $58f5: $84
    call c, Call_0f1_7ce4                         ; $58f6: $dc $e4 $7c
    add h                                         ; $58f9: $84
    ld a, d                                       ; $58fa: $7a
    add [hl]                                      ; $58fb: $86
    adc $f2                                       ; $58fc: $ce $f2
    ld a, l                                       ; $58fe: $7d
    add e                                         ; $58ff: $83
    ccf                                           ; $5900: $3f
    pop bc                                        ; $5901: $c1
    sbc l                                         ; $5902: $9d
    db $e3                                        ; $5903: $e3
    ld a, c                                       ; $5904: $79
    rst $38                                       ; $5905: $ff
    rst $00                                       ; $5906: $c7
    ccf                                           ; $5907: $3f
    ei                                            ; $5908: $fb
    ld b, $ff                                     ; $5909: $06 $ff
    nop                                           ; $590b: $00
    call nc, $e32b                                ; $590c: $d4 $2b $e3
    rra                                           ; $590f: $1f
    adc d                                         ; $5910: $8a
    ld a, [hl]                                    ; $5911: $7e
    ld e, h                                       ; $5912: $5c
    db $fc                                        ; $5913: $fc
    ld [bc], a                                    ; $5914: $02
    ldh a, [rSC]                                  ; $5915: $f0 $02
    add b                                         ; $5917: $80
    ld [$0200], sp                                ; $5918: $08 $00 $02
    db $fc                                        ; $591b: $fc
    sub d                                         ; $591c: $92
    inc bc                                        ; $591d: $03
    rst $38                                       ; $591e: $ff
    add e                                         ; $591f: $83
    rst $38                                       ; $5920: $ff
    add l                                         ; $5921: $85
    rst $38                                       ; $5922: $ff
    ld a, d                                       ; $5923: $7a
    rst $38                                       ; $5924: $ff
    pop hl                                        ; $5925: $e1
    sbc a                                         ; $5926: $9f
    ret c                                         ; $5927: $d8

    cpl                                           ; $5928: $2f
    jp hl                                         ; $5929: $e9


    rra                                           ; $592a: $1f
    ld d, [hl]                                    ; $592b: $56
    xor [hl]                                      ; $592c: $ae
    sbc h                                         ; $592d: $9c
    ld a, h                                       ; $592e: $7c
    ld [bc], a                                    ; $592f: $02
    ldh [$0a], a                                  ; $5930: $e0 $0a
    nop                                           ; $5932: $00
    ld [bc], a                                    ; $5933: $02
    rra                                           ; $5934: $1f
    sub h                                         ; $5935: $94
    jr nz, @+$41                                  ; $5936: $20 $3f

    daa                                           ; $5938: $27
    ccf                                           ; $5939: $3f
    ld c, a                                       ; $593a: $4f
    ld a, c                                       ; $593b: $79
    ld e, d                                       ; $593c: $5a
    ld [hl], a                                    ; $593d: $77
    or l                                          ; $593e: $b5
    db $ed                                        ; $593f: $ed
    ld hl, sp-$38                                 ; $5940: $f8 $c8
    ldh a, [$90]                                  ; $5942: $f0 $90
    ret nc                                        ; $5944: $d0

    jr nc, jr_0f1_58e7                            ; $5945: $30 $a0

    ld h, b                                       ; $5947: $60
    ld b, b                                       ; $5948: $40
    ret nz                                        ; $5949: $c0

    ld [bc], a                                    ; $594a: $02
    add b                                         ; $594b: $80
    jr nz, jr_0f1_594e                            ; $594c: $20 $00

jr_0f1_594e:
    ld [$0280], sp                                ; $594e: $08 $80 $02
    ldh a, [$83]                                  ; $5951: $f0 $83
    ld [$08f8], sp                                ; $5953: $08 $f8 $08
    inc bc                                        ; $5956: $03

jr_0f1_5957:
    ld hl, sp+$02                                 ; $5957: $f8 $02
    add b                                         ; $5959: $80
    adc b                                         ; $595a: $88
    ldh [$60], a                                  ; $595b: $e0 $60
    cp h                                          ; $595d: $bc
    call c, Call_0f1_726e                         ; $595e: $dc $6e $72
    ld [de], a                                    ; $5961: $12
    ld e, $02                                     ; $5962: $1e $02
    ld c, $0c                                     ; $5964: $0e $0c
    nop                                           ; $5966: $00
    rst $38                                       ; $5967: $ff
    dec e                                         ; $5968: $1d
    inc c                                         ; $5969: $0c
    rst $30                                       ; $596a: $f7
    ld a, [bc]                                    ; $596b: $0a
    jp $dd00                                      ; $596c: $c3 $00 $dd


    or $d3                                        ; $596f: $f6 $d3
    cp $d3                                        ; $5971: $fe $d3
    ld b, $e0                                     ; $5973: $06 $e0
    ld [$e4e7], sp                                ; $5975: $08 $e7 $e4
    db $e4                                        ; $5978: $e4
    db $ec                                        ; $5979: $ec
    db $e3                                        ; $597a: $e3
    ldh a, [$e3]                                  ; $597b: $f0 $e3
    cp $e3                                        ; $597d: $fe $e3
    nop                                           ; $597f: $00
    di                                            ; $5980: $f3
    ld a, [c]                                     ; $5981: $f2
    di                                            ; $5982: $f3
    ld a, [$fef3]                                 ; $5983: $fa $f3 $fe
    ld [bc], a                                    ; $5986: $02
    inc bc                                        ; $5987: $03
    sbc b                                         ; $5988: $98
    inc b                                         ; $5989: $04
    rlca                                          ; $598a: $07
    ld a, [de]                                    ; $598b: $1a
    rra                                           ; $598c: $1f
    dec l                                         ; $598d: $2d
    inc sp                                        ; $598e: $33
    ld e, a                                       ; $598f: $5f
    ld h, b                                       ; $5990: $60
    cp a                                          ; $5991: $bf
    ret nz                                        ; $5992: $c0

    rst $38                                       ; $5993: $ff
    nop                                           ; $5994: $00
    rst $38                                       ; $5995: $ff
    nop                                           ; $5996: $00
    ld a, [$5505]                                 ; $5997: $fa $05 $55
    xor e                                         ; $599a: $ab
    and d                                         ; $599b: $a2
    ld e, a                                       ; $599c: $5f
    rla                                           ; $599d: $17
    rst $38                                       ; $599e: $ff
    xor h                                         ; $599f: $ac
    db $fc                                        ; $59a0: $fc
    ld [bc], a                                    ; $59a1: $02
    ldh a, [$81]                                  ; $59a2: $f0 $81
    ld b, b                                       ; $59a4: $40
    inc bc                                        ; $59a5: $03
    ret nz                                        ; $59a6: $c0

    inc b                                         ; $59a7: $04
    ld [bc], a                                    ; $59a8: $02
    ld [bc], a                                    ; $59a9: $02
    inc bc                                        ; $59aa: $03
    ld [bc], a                                    ; $59ab: $02
    ld a, a                                       ; $59ac: $7f
    sbc b                                         ; $59ad: $98
    dec hl                                        ; $59ae: $2b
    scf                                           ; $59af: $37
    rra                                           ; $59b0: $1f
    rla                                           ; $59b1: $17
    dec d                                         ; $59b2: $15
    ld a, [de]                                    ; $59b3: $1a
    scf                                           ; $59b4: $37
    jr c, @+$50                                   ; $59b5: $38 $4e

    ld a, c                                       ; $59b7: $79
    sub e                                         ; $59b8: $93
    db $ed                                        ; $59b9: $ed
    cp l                                          ; $59ba: $bd
    jp $e25e                                      ; $59bb: $c3 $5e $e2


    jp z, Jump_0f1_7c36                           ; $59be: $ca $36 $7c

    add h                                         ; $59c1: $84
    push de                                       ; $59c2: $d5
    db $ed                                        ; $59c3: $ed
    xor [hl]                                      ; $59c4: $ae
    ld a, a                                       ; $59c5: $7f
    ld [bc], a                                    ; $59c6: $02
    jr nc, jr_0f1_5957                            ; $59c7: $30 $8e

    ret z                                         ; $59c9: $c8

    ld hl, sp+$54                                 ; $59ca: $f8 $54
    cp h                                          ; $59cc: $bc
    ld h, h                                       ; $59cd: $64
    sbc h                                         ; $59ce: $9c
    adc b                                         ; $59cf: $88
    ld hl, sp+$50                                 ; $59d0: $f8 $50
    ldh a, [$a0]                                  ; $59d2: $f0 $a0
    ld h, b                                       ; $59d4: $60
    ld b, b                                       ; $59d5: $40
    ret nz                                        ; $59d6: $c0

    ld [bc], a                                    ; $59d7: $02
    add b                                         ; $59d8: $80
    ld [$0200], sp                                ; $59d9: $08 $00 $02
    ld a, a                                       ; $59dc: $7f
    add h                                         ; $59dd: $84
    add b                                         ; $59de: $80
    rst $38                                       ; $59df: $ff
    inc a                                         ; $59e0: $3c
    rst $38                                       ; $59e1: $ff
    ld [bc], a                                    ; $59e2: $02
    ld [bc], a                                    ; $59e3: $02
    add h                                         ; $59e4: $84
    ld bc, $0103                                  ; $59e5: $01 $03 $01
    inc bc                                        ; $59e8: $03
    ld [bc], a                                    ; $59e9: $02
    rrca                                          ; $59ea: $0f
    ld [bc], a                                    ; $59eb: $02
    add b                                         ; $59ec: $80
    adc h                                         ; $59ed: $8c
    ld b, b                                       ; $59ee: $40
    ret nz                                        ; $59ef: $c0

    ldh [rNR41], a                                ; $59f0: $e0 $20
    cp b                                          ; $59f2: $b8
    ret c                                         ; $59f3: $d8

    ld e, [hl]                                    ; $59f4: $5e
    ld h, [hl]                                    ; $59f5: $66
    scf                                           ; $59f6: $37
    add hl, sp                                    ; $59f7: $39
    add hl, bc                                    ; $59f8: $09
    rrca                                          ; $59f9: $0f
    ld [bc], a                                    ; $59fa: $02
    rlca                                          ; $59fb: $07
    ld [$0200], sp                                ; $59fc: $08 $00 $02
    add b                                         ; $59ff: $80
    inc b                                         ; $5a00: $04
    ret nz                                        ; $5a01: $c0

    add d                                         ; $5a02: $82
    and b                                         ; $5a03: $a0
    ldh [rSC], a                                  ; $5a04: $e0 $02
    ldh a, [$84]                                  ; $5a06: $f0 $84
    ld l, h                                       ; $5a08: $6c
    ld a, h                                       ; $5a09: $7c
    dec sp                                        ; $5a0a: $3b
    ccf                                           ; $5a0b: $3f
    ld [bc], a                                    ; $5a0c: $02
    rrca                                          ; $5a0d: $0f
    stop                                          ; $5a0e: $10 $00
    ld [bc], a                                    ; $5a10: $02
    ld bc, $029e                                  ; $5a11: $01 $9e $02
    inc bc                                        ; $5a14: $03
    ld c, $0f                                     ; $5a15: $0e $0f
    dec d                                         ; $5a17: $15
    dec de                                        ; $5a18: $1b
    ld l, $31                                     ; $5a19: $2e $31
    ld b, a                                       ; $5a1b: $47
    ld a, b                                       ; $5a1c: $78
    ld [hl], e                                    ; $5a1d: $73
    ld c, h                                       ; $5a1e: $4c
    cp c                                          ; $5a1f: $b9
    add $bd                                       ; $5a20: $c6 $bd
    jp nz, $a0df                                  ; $5a22: $c2 $df $a0

    xor d                                         ; $5a25: $aa
    push de                                       ; $5a26: $d5
    ld d, l                                       ; $5a27: $55
    ld l, e                                       ; $5a28: $6b
    ld c, e                                       ; $5a29: $4b
    ld [hl], a                                    ; $5a2a: $77
    ld h, $3f                                     ; $5a2b: $26 $3f
    inc e                                         ; $5a2d: $1c
    rra                                           ; $5a2e: $1f
    inc b                                         ; $5a2f: $04
    rlca                                          ; $5a30: $07
    ld [bc], a                                    ; $5a31: $02
    inc c                                         ; $5a32: $0c
    sub e                                         ; $5a33: $93
    inc b                                         ; $5a34: $04
    ld [$000c], sp                                ; $5a35: $08 $0c $00
    inc b                                         ; $5a38: $04
    ld [$0c00], sp                                ; $5a39: $08 $00 $0c
    ld [$040c], sp                                ; $5a3c: $08 $0c $04
    inc c                                         ; $5a3f: $0c
    ld [$0c04], sp                                ; $5a40: $08 $04 $0c
    nop                                           ; $5a43: $00
    ld [$0604], sp                                ; $5a44: $08 $04 $06
    inc bc                                        ; $5a47: $03
    ld c, $90                                     ; $5a48: $0e $90
    ld a, [bc]                                    ; $5a4a: $0a
    ld c, $01                                     ; $5a4b: $0e $01
    rrca                                          ; $5a4d: $0f
    inc bc                                        ; $5a4e: $03
    dec c                                         ; $5a4f: $0d
    dec b                                         ; $5a50: $05
    dec bc                                        ; $5a51: $0b
    ret c                                         ; $5a52: $d8

    ccf                                           ; $5a53: $3f
    ld l, a                                       ; $5a54: $6f
    sbc a                                         ; $5a55: $9f
    cp a                                          ; $5a56: $bf
    ld b, b                                       ; $5a57: $40
    ld h, c                                       ; $5a58: $61
    rst $38                                       ; $5a59: $ff
    ld [bc], a                                    ; $5a5a: $02
    cp $16                                        ; $5a5b: $fe $16
    nop                                           ; $5a5d: $00
    inc b                                         ; $5a5e: $04
    inc bc                                        ; $5a5f: $03
    add d                                         ; $5a60: $82
    ld bc, $0202                                  ; $5a61: $01 $02 $02
    inc bc                                        ; $5a64: $03
    jr jr_0f1_5a67                                ; $5a65: $18 $00

jr_0f1_5a67:
    sub b                                         ; $5a67: $90
    ld a, [hl-]                                   ; $5a68: $3a
    ld b, $eb                                     ; $5a69: $06 $eb
    push af                                       ; $5a6b: $f5
    sbc h                                         ; $5a6c: $9c
    rst $38                                       ; $5a6d: $ff
    ld h, d                                       ; $5a6e: $62
    ld a, a                                       ; $5a6f: $7f
    ld [de], a                                    ; $5a70: $12
    rra                                           ; $5a71: $1f
    dec bc                                        ; $5a72: $0b
    rrca                                          ; $5a73: $0f
    ld d, $1f                                     ; $5a74: $16 $1f
    db $10                                        ; $5a76: $10
    rra                                           ; $5a77: $1f
    ld [bc], a                                    ; $5a78: $02
    ccf                                           ; $5a79: $3f
    adc b                                         ; $5a7a: $88
    inc hl                                        ; $5a7b: $23
    ld a, $2b                                     ; $5a7c: $3e $2b
    dec a                                         ; $5a7e: $3d
    dec d                                         ; $5a7f: $15
    dec de                                        ; $5a80: $1b
    inc c                                         ; $5a81: $0c
    rrca                                          ; $5a82: $0f
    ld [bc], a                                    ; $5a83: $02
    inc bc                                        ; $5a84: $03
    ld b, $00                                     ; $5a85: $06 $00
    ld [bc], a                                    ; $5a87: $02
    add a                                         ; $5a88: $87
    sub [hl]                                      ; $5a89: $96
    ld [hl], b                                    ; $5a8a: $70
    rst $38                                       ; $5a8b: $ff
    ldh a, [$3f]                                  ; $5a8c: $f0 $3f
    ld sp, hl                                     ; $5a8e: $f9
    rra                                           ; $5a8f: $1f
    ld h, a                                       ; $5a90: $67
    rst $38                                       ; $5a91: $ff
    ld e, $f9                                     ; $5a92: $1e $f9
    ld a, a                                       ; $5a94: $7f
    ldh [$fe], a                                  ; $5a95: $e0 $fe
    add c                                         ; $5a97: $81
    cp l                                          ; $5a98: $bd
    ld b, d                                       ; $5a99: $42
    jp hl                                         ; $5a9a: $e9


    rla                                           ; $5a9b: $17
    ld d, [hl]                                    ; $5a9c: $56
    xor [hl]                                      ; $5a9d: $ae
    cp b                                          ; $5a9e: $b8
    ld hl, sp+$02                                 ; $5a9f: $f8 $02
    ret nz                                        ; $5aa1: $c0

    ld b, $00                                     ; $5aa2: $06 $00
    ld [bc], a                                    ; $5aa4: $02
    inc c                                         ; $5aa5: $0c
    sub b                                         ; $5aa6: $90
    ld b, $0e                                     ; $5aa7: $06 $0e
    dec bc                                        ; $5aa9: $0b
    rrca                                          ; $5aaa: $0f
    ld bc, $050f                                  ; $5aab: $01 $0f $05
    rrca                                          ; $5aae: $0f
    ld a, [bc]                                    ; $5aaf: $0a
    ld c, $0a                                     ; $5ab0: $0e $0a
    ld c, $06                                     ; $5ab2: $0e $06
    ld c, $04                                     ; $5ab4: $0e $04
    inc c                                         ; $5ab6: $0c
    ld [bc], a                                    ; $5ab7: $02
    ld [$000a], sp                                ; $5ab8: $08 $0a $00
    rst $38                                       ; $5abb: $ff
    dec e                                         ; $5abc: $1d
    inc c                                         ; $5abd: $0c
    rst $30                                       ; $5abe: $f7
    ld a, [bc]                                    ; $5abf: $0a
    jp $db00                                      ; $5ac0: $c3 $00 $db


    db $f4                                        ; $5ac3: $f4
    ret c                                         ; $5ac4: $d8

    db $fc                                        ; $5ac5: $fc
    db $d3                                        ; $5ac6: $d3
    inc b                                         ; $5ac7: $04
    reti                                          ; $5ac8: $d9


jr_0f1_5ac9:
    ld a, [bc]                                    ; $5ac9: $0a
    ld [$e3e6], a                                 ; $5aca: $ea $e6 $e3
    xor $eb                                       ; $5acd: $ee $eb
    or $e3                                        ; $5acf: $f6 $e3
    inc b                                         ; $5ad1: $04
    jp hl                                         ; $5ad2: $e9


    rlca                                          ; $5ad3: $07
    di                                            ; $5ad4: $f3
    push af                                       ; $5ad5: $f5
    di                                            ; $5ad6: $f3
    db $fd                                        ; $5ad7: $fd
    di                                            ; $5ad8: $f3
    nop                                           ; $5ad9: $00
    ld [bc], a                                    ; $5ada: $02
    ld bc, $029e                                  ; $5adb: $01 $9e $02

jr_0f1_5ade:
    inc bc                                        ; $5ade: $03
    dec b                                         ; $5adf: $05
    ld b, $0b                                     ; $5ae0: $06 $0b
    inc c                                         ; $5ae2: $0c
    rla                                           ; $5ae3: $17
    jr jr_0f1_5b15                                ; $5ae4: $18 $2f

    jr nc, jr_0f1_5b47                            ; $5ae6: $30 $5f

    ld h, b                                       ; $5ae8: $60
    jp c, Jump_000_25e5                           ; $5ae9: $da $e5 $25

    ld a, [$3fd2]                                 ; $5aec: $fa $d2 $3f
    db $ed                                        ; $5aef: $ed
    rra                                           ; $5af0: $1f
    ld [hl], a                                    ; $5af1: $77
    adc a                                         ; $5af2: $8f
    ld a, [hl-]                                   ; $5af3: $3a
    add $de                                       ; $5af4: $c6 $de
    ld [hl+], a                                   ; $5af6: $22
    or $0e                                        ; $5af7: $f6 $0e
    xor $1e                                       ; $5af9: $ee $1e
    ld [bc], a                                    ; $5afb: $02
    inc bc                                        ; $5afc: $03
    sbc b                                         ; $5afd: $98
    ld e, $1f                                     ; $5afe: $1e $1f
    ld h, e                                       ; $5b00: $63
    ld a, [hl]                                    ; $5b01: $7e
    cp [hl]                                       ; $5b02: $be
    db $e3                                        ; $5b03: $e3
    ld l, h                                       ; $5b04: $6c
    or e                                          ; $5b05: $b3
    sub $39                                       ; $5b06: $d6 $39
    jp hl                                         ; $5b08: $e9


    ld e, $f6                                     ; $5b09: $1e $f6
    rrca                                          ; $5b0b: $0f
    ld sp, hl                                     ; $5b0c: $f9
    rlca                                          ; $5b0d: $07
    call nc, $a52b                                ; $5b0e: $d4 $2b $a5
    ld e, [hl]                                    ; $5b11: $5e
    ld d, a                                       ; $5b12: $57
    rst $38                                       ; $5b13: $ff
    cp b                                          ; $5b14: $b8

jr_0f1_5b15:
    ld hl, sp+$02                                 ; $5b15: $f8 $02
    ret nz                                        ; $5b17: $c0

    inc b                                         ; $5b18: $04
    nop                                           ; $5b19: $00
    ld [bc], a                                    ; $5b1a: $02
    ld [bc], a                                    ; $5b1b: $02
    ld [bc], a                                    ; $5b1c: $02
    ld b, $94                                     ; $5b1d: $06 $94
    ld c, $0a                                     ; $5b1f: $0e $0a
    ld d, $1a                                     ; $5b21: $16 $1a
    ld l, [hl]                                    ; $5b23: $6e
    ld [hl], d                                    ; $5b24: $72
    db $dd                                        ; $5b25: $dd
    rst $20                                       ; $5b26: $e7
    ld e, a                                       ; $5b27: $5f
    rst $20                                       ; $5b28: $e7
    db $db                                        ; $5b29: $db
    daa                                           ; $5b2a: $27
    ld a, [c]                                     ; $5b2b: $f2
    rrca                                          ; $5b2c: $0f
    call c, $a43f                                 ; $5b2d: $dc $3f $a4
    ld h, a                                       ; $5b30: $67
    ld b, e                                       ; $5b31: $43
    jp $8002                                      ; $5b32: $c3 $02 $80


    ld [bc], a                                    ; $5b35: $02
    cp $84                                        ; $5b36: $fe $84
    add c                                         ; $5b38: $81
    rst $38                                       ; $5b39: $ff
    ld a, [hl]                                    ; $5b3a: $7e
    rst $38                                       ; $5b3b: $ff
    ld [bc], a                                    ; $5b3c: $02
    jr c, jr_0f1_5ac9                             ; $5b3d: $38 $8a

    db $10                                        ; $5b3f: $10
    jr nc, jr_0f1_5b6a                            ; $5b40: $30 $28

    jr jr_0f1_5b7c                                ; $5b42: $18 $38

    ld [$2c14], sp                                ; $5b44: $08 $14 $2c

jr_0f1_5b47:
    inc d                                         ; $5b47: $14
    inc a                                         ; $5b48: $3c
    ld [bc], a                                    ; $5b49: $02
    jr c, jr_0f1_5b4e                             ; $5b4a: $38 $02

    nop                                           ; $5b4c: $00
    ld [bc], a                                    ; $5b4d: $02

jr_0f1_5b4e:
    jr nz, jr_0f1_5ade                            ; $5b4e: $20 $8e

    db $10                                        ; $5b50: $10
    jr nc, @+$4e                                  ; $5b51: $30 $4c

    ld a, h                                       ; $5b53: $7c
    ld [hl+], a                                   ; $5b54: $22
    ld a, $91                                     ; $5b55: $3e $91
    sbc a                                         ; $5b57: $9f
    ret                                           ; $5b58: $c9


    ld c, a                                       ; $5b59: $4f
    and $26                                       ; $5b5a: $e6 $26
    ldh [$a0], a                                  ; $5b5c: $e0 $a0
    ld [bc], a                                    ; $5b5e: $02
    rlca                                          ; $5b5f: $07
    add h                                         ; $5b60: $84
    dec de                                        ; $5b61: $1b
    rra                                           ; $5b62: $1f
    ld l, $3e                                     ; $5b63: $2e $3e
    ld [bc], a                                    ; $5b65: $02
    ld a, b                                       ; $5b66: $78
    add d                                         ; $5b67: $82
    ld d, b                                       ; $5b68: $50
    ld [hl], b                                    ; $5b69: $70

jr_0f1_5b6a:
    ld [bc], a                                    ; $5b6a: $02
    ldh [$82], a                                  ; $5b6b: $e0 $82
    and b                                         ; $5b6d: $a0
    ldh [rDIV], a                                 ; $5b6e: $e0 $04
    ret nz                                        ; $5b70: $c0

    ld [bc], a                                    ; $5b71: $02
    add b                                         ; $5b72: $80
    inc c                                         ; $5b73: $0c
    nop                                           ; $5b74: $00
    ld [bc], a                                    ; $5b75: $02
    inc b                                         ; $5b76: $04
    sbc d                                         ; $5b77: $9a
    ld [$100c], sp                                ; $5b78: $08 $0c $10
    inc e                                         ; $5b7b: $1c

jr_0f1_5b7c:
    jr z, jr_0f1_5bb2                             ; $5b7c: $28 $34

    inc a                                         ; $5b7e: $3c
    jr nz, jr_0f1_5bdd                            ; $5b7f: $20 $5c

    ld h, b                                       ; $5b81: $60
    ld e, h                                       ; $5b82: $5c
    ld h, b                                       ; $5b83: $60
    ret z                                         ; $5b84: $c8

    db $f4                                        ; $5b85: $f4
    push af                                       ; $5b86: $f5
    ld [$352a], a                                 ; $5b87: $ea $2a $35
    dec d                                         ; $5b8a: $15
    dec de                                        ; $5b8b: $1b
    dec bc                                        ; $5b8c: $0b
    rrca                                          ; $5b8d: $0f
    ld b, $07                                     ; $5b8e: $06 $07
    ld [bc], a                                    ; $5b90: $02
    inc bc                                        ; $5b91: $03
    inc b                                         ; $5b92: $04
    ld bc, $689a                                  ; $5b93: $01 $9a $68
    ld hl, sp-$38                                 ; $5b96: $f8 $c8
    ld hl, sp-$78                                 ; $5b98: $f8 $88
    ld hl, sp+$28                                 ; $5b9a: $f8 $28
    ret c                                         ; $5b9c: $d8

    ld [$b0f8], sp                                ; $5b9d: $08 $f8 $b0
    ld d, b                                       ; $5ba0: $50
    ld [hl], b                                    ; $5ba1: $70
    sub b                                         ; $5ba2: $90
    or b                                          ; $5ba3: $b0
    ret nc                                        ; $5ba4: $d0

    ld c, b                                       ; $5ba5: $48
    ld hl, sp+$2c                                 ; $5ba6: $f8 $2c
    db $f4                                        ; $5ba8: $f4
    sub e                                         ; $5ba9: $93
    rst $38                                       ; $5baa: $ff
    ld c, e                                       ; $5bab: $4b
    ld a, h                                       ; $5bac: $7c
    ld c, l                                       ; $5bad: $4d
    ld a, [hl]                                    ; $5bae: $7e
    ld [bc], a                                    ; $5baf: $02
    rst $38                                       ; $5bb0: $ff
    adc h                                         ; $5bb1: $8c

jr_0f1_5bb2:
    add b                                         ; $5bb2: $80
    rst $38                                       ; $5bb3: $ff
    inc hl                                        ; $5bb4: $23
    rst $38                                       ; $5bb5: $ff
    ldh a, [$30]                                  ; $5bb6: $f0 $30
    cp b                                          ; $5bb8: $b8
    ret z                                         ; $5bb9: $c8

    ld l, h                                       ; $5bba: $6c
    ld [hl], h                                    ; $5bbb: $74
    inc d                                         ; $5bbc: $14
    jr jr_0f1_5bc1                                ; $5bbd: $18 $02

    inc c                                         ; $5bbf: $0c
    ld [bc], a                                    ; $5bc0: $02

jr_0f1_5bc1:
    nop                                           ; $5bc1: $00
    add h                                         ; $5bc2: $84
    ld [bc], a                                    ; $5bc3: $02
    inc bc                                        ; $5bc4: $03
    ld [bc], a                                    ; $5bc5: $02
    inc bc                                        ; $5bc6: $03

jr_0f1_5bc7:
    inc b                                         ; $5bc7: $04
    ld bc, $000c                                  ; $5bc8: $01 $0c $00
    adc b                                         ; $5bcb: $88

jr_0f1_5bcc:
    ld b, $02                                     ; $5bcc: $06 $02
    ld b, $02                                     ; $5bce: $06 $02
    inc bc                                        ; $5bd0: $03
    dec b                                         ; $5bd1: $05
    ld bc, $0207                                  ; $5bd2: $01 $07 $02
    ld b, $12                                     ; $5bd5: $06 $12
    nop                                           ; $5bd7: $00
    ld [$0a80], sp                                ; $5bd8: $08 $80 $0a
    nop                                           ; $5bdb: $00
    ld [bc], a                                    ; $5bdc: $02

jr_0f1_5bdd:
    add b                                         ; $5bdd: $80
    adc d                                         ; $5bde: $8a
    xor a                                         ; $5bdf: $af
    cp $97                                        ; $5be0: $fe $97
    add sp, -$53                                  ; $5be2: $e8 $ad
    jp c, Jump_0f1_7d4a                           ; $5be4: $da $4a $7d

    dec a                                         ; $5be7: $3d
    ld a, $02                                     ; $5be8: $3e $02
    inc bc                                        ; $5bea: $03
    ld [$0200], sp                                ; $5beb: $08 $00 $02
    ccf                                           ; $5bee: $3f
    sub h                                         ; $5bef: $94
    ld h, b                                       ; $5bf0: $60
    ld a, a                                       ; $5bf1: $7f
    ld h, b                                       ; $5bf2: $60
    ccf                                           ; $5bf3: $3f
    ld h, c                                       ; $5bf4: $61
    ld a, a                                       ; $5bf5: $7f
    ld e, $7f                                     ; $5bf6: $1e $7f
    ld a, b                                       ; $5bf8: $78
    ld h, a                                       ; $5bf9: $67
    or $0b                                        ; $5bfa: $f6 $0b
    ld a, [$d507]                                 ; $5bfc: $fa $07 $d5
    dec hl                                        ; $5bff: $2b
    and a                                         ; $5c00: $a7
    ld e, a                                       ; $5c01: $5f
    ld a, b                                       ; $5c02: $78
    ld hl, sp+$02                                 ; $5c03: $f8 $02
    add b                                         ; $5c05: $80
    ld a, [bc]                                    ; $5c06: $0a
    nop                                           ; $5c07: $00
    inc b                                         ; $5c08: $04
    ld b, $8a                                     ; $5c09: $06 $8a
    ld [bc], a                                    ; $5c0b: $02
    ld b, $05                                     ; $5c0c: $06 $05
    rlca                                          ; $5c0e: $07
    inc bc                                        ; $5c0f: $03
    rlca                                          ; $5c10: $07
    ld bc, $0207                                  ; $5c11: $01 $07 $02
    ld b, $02                                     ; $5c14: $06 $02
    inc b                                         ; $5c16: $04
    ld a, [bc]                                    ; $5c17: $0a
    nop                                           ; $5c18: $00
    rst $38                                       ; $5c19: $ff
    rra                                           ; $5c1a: $1f
    dec c                                         ; $5c1b: $0d
    rst $30                                       ; $5c1c: $f7
    ld a, [bc]                                    ; $5c1d: $0a
    jp $ea00                                      ; $5c1e: $c3 $00 $ea


    ld [$f2d9], a                                 ; $5c21: $ea $d9 $f2
    jp hl                                         ; $5c24: $e9


    ld a, [c]                                     ; $5c25: $f2
    ld sp, hl                                     ; $5c26: $f9
    rst $30                                       ; $5c27: $f7
    ld a, [$d1f6]                                 ; $5c28: $fa $f6 $d1
    ld a, [$fae1]                                 ; $5c2b: $fa $e1 $fa
    pop af                                        ; $5c2e: $f1
    ld a, [$02cc]                                 ; $5c2f: $fa $cc $02
    call c, $f702                                 ; $5c32: $dc $02 $f7
    ld [bc], a                                    ; $5c35: $02
    ret nc                                        ; $5c36: $d0

    ld a, [bc]                                    ; $5c37: $0a
    ldh [$0a], a                                  ; $5c38: $e0 $0a
    ld [bc], a                                    ; $5c3a: $02
    rlca                                          ; $5c3b: $07
    add e                                         ; $5c3c: $83
    dec bc                                        ; $5c3d: $0b
    rrca                                          ; $5c3e: $0f
    inc d                                         ; $5c3f: $14
    inc bc                                        ; $5c40: $03
    inc e                                         ; $5c41: $1c
    inc b                                         ; $5c42: $04
    jr c, jr_0f1_5bc7                             ; $5c43: $38 $82

    jr z, jr_0f1_5c7f                             ; $5c45: $28 $38

    ld [bc], a                                    ; $5c47: $02
    jr jr_0f1_5bcc                                ; $5c48: $18 $82

    inc d                                         ; $5c4a: $14
    inc e                                         ; $5c4b: $1c
    ld [bc], a                                    ; $5c4c: $02
    ld c, $02                                     ; $5c4d: $0e $02
    rlca                                          ; $5c4f: $07
    ld a, [bc]                                    ; $5c50: $0a
    nop                                           ; $5c51: $00
    inc b                                         ; $5c52: $04
    ld bc, $0281                                  ; $5c53: $01 $81 $02
    ld [bc], a                                    ; $5c56: $02
    inc bc                                        ; $5c57: $03
    sbc [hl]                                      ; $5c58: $9e
    ld [bc], a                                    ; $5c59: $02
    dec b                                         ; $5c5a: $05
    ld b, $05                                     ; $5c5b: $06 $05
    ld b, $07                                     ; $5c5d: $06 $07
    inc b                                         ; $5c5f: $04
    add hl, bc                                    ; $5c60: $09
    ld c, $0b                                     ; $5c61: $0e $0b
    inc c                                         ; $5c63: $0c
    jr jr_0f1_5c85                                ; $5c64: $18 $1f

    ld h, $3f                                     ; $5c66: $26 $3f
    dec a                                         ; $5c68: $3d
    inc hl                                        ; $5c69: $23
    ld e, a                                       ; $5c6a: $5f
    ld h, b                                       ; $5c6b: $60
    ld c, a                                       ; $5c6c: $4f
    ld [hl], b                                    ; $5c6d: $70
    and e                                         ; $5c6e: $a3
    call c, $86f9                                 ; $5c6f: $dc $f9 $86
    cp a                                          ; $5c72: $bf
    ret nz                                        ; $5c73: $c0

    sbc [hl]                                      ; $5c74: $9e
    pop hl                                        ; $5c75: $e1
    ld l, d                                       ; $5c76: $6a
    ld [bc], a                                    ; $5c77: $02
    ld d, l                                       ; $5c78: $55
    adc d                                         ; $5c79: $8a
    ld l, e                                       ; $5c7a: $6b
    dec hl                                        ; $5c7b: $2b
    scf                                           ; $5c7c: $37
    ld d, $1f                                     ; $5c7d: $16 $1f

jr_0f1_5c7f:
    inc c                                         ; $5c7f: $0c
    rrca                                          ; $5c80: $0f
    dec b                                         ; $5c81: $05
    ld b, $02                                     ; $5c82: $06 $02
    dec b                                         ; $5c84: $05

jr_0f1_5c85:
    inc bc                                        ; $5c85: $03
    add [hl]                                      ; $5c86: $86
    inc b                                         ; $5c87: $04
    rlca                                          ; $5c88: $07
    inc b                                         ; $5c89: $04
    rlca                                          ; $5c8a: $07
    ld [bc], a                                    ; $5c8b: $02
    inc bc                                        ; $5c8c: $03
    ld [bc], a                                    ; $5c8d: $02
    ld bc, $0302                                  ; $5c8e: $01 $02 $03
    adc [hl]                                      ; $5c91: $8e
    add c                                         ; $5c92: $81
    rst $38                                       ; $5c93: $ff
    jr nz, @+$01                                  ; $5c94: $20 $ff

    ld e, a                                       ; $5c96: $5f
    rst $38                                       ; $5c97: $ff
    cpl                                           ; $5c98: $2f
    ret nc                                        ; $5c99: $d0

    db $db                                        ; $5c9a: $db
    or h                                          ; $5c9b: $b4
    ld b, a                                       ; $5c9c: $47
    ld a, b                                       ; $5c9d: $78
    ld a, [hl-]                                   ; $5c9e: $3a
    dec [hl]                                      ; $5c9f: $35
    ld [bc], a                                    ; $5ca0: $02
    rrca                                          ; $5ca1: $0f
    stop                                          ; $5ca2: $10 $00
    ld b, $80                                     ; $5ca4: $06 $80
    ld a, [de]                                    ; $5ca6: $1a
    nop                                           ; $5ca7: $00
    ld [bc], a                                    ; $5ca8: $02
    ld bc, $02ab                                  ; $5ca9: $01 $ab $02
    inc bc                                        ; $5cac: $03
    rlca                                          ; $5cad: $07
    ld b, $09                                     ; $5cae: $06 $09
    rrca                                          ; $5cb0: $0f
    inc de                                        ; $5cb1: $13
    inc e                                         ; $5cb2: $1c
    dec hl                                        ; $5cb3: $2b
    inc a                                         ; $5cb4: $3c
    ld c, l                                       ; $5cb5: $4d
    halt                                          ; $5cb6: $76
    xor [hl]                                      ; $5cb7: $ae
    pop af                                        ; $5cb8: $f1
    ld d, a                                       ; $5cb9: $57
    cp b                                          ; $5cba: $b8
    jp hl                                         ; $5cbb: $e9


    ld e, $f7                                     ; $5cbc: $1e $f7
    rrca                                          ; $5cbe: $0f
    db $fc                                        ; $5cbf: $fc
    inc bc                                        ; $5cc0: $03
    rst $38                                       ; $5cc1: $ff
    nop                                           ; $5cc2: $00
    db $fc                                        ; $5cc3: $fc
    inc bc                                        ; $5cc4: $03
    ret nc                                        ; $5cc5: $d0

    cpl                                           ; $5cc6: $2f
    and d                                         ; $5cc7: $a2

jr_0f1_5cc8:
    ld e, a                                       ; $5cc8: $5f
    ld d, l                                       ; $5cc9: $55
    cp a                                          ; $5cca: $bf
    xor [hl]                                      ; $5ccb: $ae
    ld a, [hl]                                    ; $5ccc: $7e
    ld e, b                                       ; $5ccd: $58
    ld hl, sp-$50                                 ; $5cce: $f8 $b0

jr_0f1_5cd0:
    ldh a, [$60]                                  ; $5cd0: $f0 $60
    ldh [$a0], a                                  ; $5cd2: $e0 $a0
    ld h, b                                       ; $5cd4: $60
    and b                                         ; $5cd5: $a0
    ld [bc], a                                    ; $5cd6: $02
    ld h, b                                       ; $5cd7: $60
    and c                                         ; $5cd8: $a1
    ldh [$50], a                                  ; $5cd9: $e0 $50
    ldh a, [$d0]                                  ; $5cdb: $f0 $d0
    ldh a, [$90]                                  ; $5cdd: $f0 $90
    ldh a, [$90]                                  ; $5cdf: $f0 $90
    ldh a, [rNR10]                                ; $5ce1: $f0 $10
    ldh a, [$50]                                  ; $5ce3: $f0 $50
    or b                                          ; $5ce5: $b0
    jr nz, jr_0f1_5cc8                            ; $5ce6: $20 $e0

    and b                                         ; $5ce8: $a0
    ld h, b                                       ; $5ce9: $60
    ldh [rNR41], a                                ; $5cea: $e0 $20
    ld h, b                                       ; $5cec: $60
    and b                                         ; $5ced: $a0
    jr nz, jr_0f1_5cd0                            ; $5cee: $20 $e0

    sub b                                         ; $5cf0: $90
    ldh a, [$58]                                  ; $5cf1: $f0 $58
    add sp, $24                                   ; $5cf3: $e8 $24
    db $fc                                        ; $5cf5: $fc
    cpl                                           ; $5cf6: $2f
    di                                            ; $5cf7: $f3
    rst $30                                       ; $5cf8: $f7
    ld sp, hl                                     ; $5cf9: $f9
    ld [bc], a                                    ; $5cfa: $02
    rlca                                          ; $5cfb: $07
    add c                                         ; $5cfc: $81
    nop                                           ; $5cfd: $00
    inc b                                         ; $5cfe: $04
    rlca                                          ; $5cff: $07
    add a                                         ; $5d00: $87
    nop                                           ; $5d01: $00
    rlca                                          ; $5d02: $07
    nop                                           ; $5d03: $00
    ld b, $01                                     ; $5d04: $06 $01
    dec b                                         ; $5d06: $05
    ld [bc], a                                    ; $5d07: $02
    ld [bc], a                                    ; $5d08: $02
    rlca                                          ; $5d09: $07
    ld b, $40                                     ; $5d0a: $06 $40
    sub a                                         ; $5d0c: $97
    ldh [$a0], a                                  ; $5d0d: $e0 $a0
    ld sp, hl                                     ; $5d0f: $f9
    sbc c                                         ; $5d10: $99
    ld h, a                                       ; $5d11: $67
    cp a                                          ; $5d12: $bf
    ld a, [$fd3e]                                 ; $5d13: $fa $3e $fd
    rra                                           ; $5d16: $1f
    halt                                          ; $5d17: $76
    adc l                                         ; $5d18: $8d
    dec hl                                        ; $5d19: $2b
    call c, Call_000_3fd8                         ; $5d1a: $dc $d8 $3f
    and $27                                       ; $5d1d: $e6 $27
    and c                                         ; $5d1f: $a1
    ld h, c                                       ; $5d20: $61
    ret nz                                        ; $5d21: $c0

    ld b, b                                       ; $5d22: $40
    ret nz                                        ; $5d23: $c0

    ld [bc], a                                    ; $5d24: $02
    ld b, b                                       ; $5d25: $40
    add c                                         ; $5d26: $81
    ret nz                                        ; $5d27: $c0

    ld [bc], a                                    ; $5d28: $02
    rst $38                                       ; $5d29: $ff
    add c                                         ; $5d2a: $81
    and b                                         ; $5d2b: $a0
    ld [bc], a                                    ; $5d2c: $02
    ld a, a                                       ; $5d2d: $7f
    ld [bc], a                                    ; $5d2e: $02
    sbc a                                         ; $5d2f: $9f
    adc c                                         ; $5d30: $89
    rst $20                                       ; $5d31: $e7
    or $f9                                        ; $5d32: $f6 $f9
    rrca                                          ; $5d34: $0f
    ld c, $02                                     ; $5d35: $0e $02
    inc bc                                        ; $5d37: $03
    ld [bc], a                                    ; $5d38: $02
    inc bc                                        ; $5d39: $03
    ld b, $01                                     ; $5d3a: $06 $01
    add h                                         ; $5d3c: $84
    ld [bc], a                                    ; $5d3d: $02
    inc bc                                        ; $5d3e: $03
    ld [bc], a                                    ; $5d3f: $02
    inc bc                                        ; $5d40: $03
    ld [bc], a                                    ; $5d41: $02

jr_0f1_5d42:
    ld bc, $0004                                  ; $5d42: $01 $04 $00
    ld [bc], a                                    ; $5d45: $02
    ldh [$90], a                                  ; $5d46: $e0 $90
    jr jr_0f1_5d42                                ; $5d48: $18 $f8

    inc b                                         ; $5d4a: $04
    db $fc                                        ; $5d4b: $fc
    ld e, $fe                                     ; $5d4c: $1e $fe
    and $fe                                       ; $5d4e: $e6 $fe
    adc d                                         ; $5d50: $8a
    ld a, [hl]                                    ; $5d51: $7e
    ld h, h                                       ; $5d52: $64
    cp h                                          ; $5d53: $bc

jr_0f1_5d54:
    xor b                                         ; $5d54: $a8
    ld a, b                                       ; $5d55: $78
    ld [hl], b                                    ; $5d56: $70
    or b                                          ; $5d57: $b0
    ld [bc], a                                    ; $5d58: $02
    ldh [$0c], a                                  ; $5d59: $e0 $0c
    nop                                           ; $5d5b: $00
    ld [bc], a                                    ; $5d5c: $02
    add b                                         ; $5d5d: $80
    ld b, $00                                     ; $5d5e: $06 $00
    ld [bc], a                                    ; $5d60: $02
    ret nz                                        ; $5d61: $c0

    add [hl]                                      ; $5d62: $86
    and b                                         ; $5d63: $a0
    ld h, b                                       ; $5d64: $60
    and b                                         ; $5d65: $a0
    ldh [rLCDC], a                                ; $5d66: $e0 $40
    ret nz                                        ; $5d68: $c0

    ld [bc], a                                    ; $5d69: $02
    add b                                         ; $5d6a: $80
    ld b, $00                                     ; $5d6b: $06 $00
    ld [bc], a                                    ; $5d6d: $02
    add b                                         ; $5d6e: $80
    sub l                                         ; $5d6f: $95
    ld b, b                                       ; $5d70: $40
    ret nz                                        ; $5d71: $c0

    jr nz, jr_0f1_5d54                            ; $5d72: $20 $e0

    and b                                         ; $5d74: $a0
    ldh [$90], a                                  ; $5d75: $e0 $90
    ldh a, [$d0]                                  ; $5d77: $f0 $d0
    ldh a, [$c8]                                  ; $5d79: $f0 $c8
    ld hl, sp-$38                                 ; $5d7b: $f8 $c8
    ld hl, sp-$38                                 ; $5d7d: $f8 $c8
    ld a, b                                       ; $5d7f: $78
    ldh a, [rSVBK]                                ; $5d80: $f0 $70
    ret nz                                        ; $5d82: $c0

    ld b, b                                       ; $5d83: $40
    ret nz                                        ; $5d84: $c0

    ld [bc], a                                    ; $5d85: $02
    ld b, b                                       ; $5d86: $40
    inc bc                                        ; $5d87: $03
    ret nz                                        ; $5d88: $c0

    inc c                                         ; $5d89: $0c
    nop                                           ; $5d8a: $00
    rst $38                                       ; $5d8b: $ff
    inc hl                                        ; $5d8c: $23
    rrca                                          ; $5d8d: $0f
    rst $30                                       ; $5d8e: $f7
    ld a, [bc]                                    ; $5d8f: $0a
    jp $c200                                      ; $5d90: $c3 $00 $c2


    cp $b7                                        ; $5d93: $fe $b7
    inc b                                         ; $5d95: $04
    ret z                                         ; $5d96: $c8

    or $d2                                        ; $5d97: $f6 $d2
    cp $c7                                        ; $5d99: $fe $c7
    ld b, $d1                                     ; $5d9b: $06 $d1
    ld [$f9d8], sp                                ; $5d9d: $08 $d8 $f9
    rst $10                                       ; $5da0: $d7
    ld bc, $f5e8                                  ; $5da1: $01 $e8 $f5
    rst $20                                       ; $5da4: $e7
    db $fd                                        ; $5da5: $fd
    rst $20                                       ; $5da6: $e7
    dec b                                         ; $5da7: $05
    rst $30                                       ; $5da8: $f7
    di                                            ; $5da9: $f3
    rst $30                                       ; $5daa: $f7
    ei                                            ; $5dab: $fb
    rst $30                                       ; $5dac: $f7
    inc bc                                        ; $5dad: $03
    rst $30                                       ; $5dae: $f7
    rlca                                          ; $5daf: $07
    ld [bc], a                                    ; $5db0: $02
    ld [hl], b                                    ; $5db1: $70
    add l                                         ; $5db2: $85
    ld hl, sp-$28                                 ; $5db3: $f8 $d8
    ld hl, sp-$78                                 ; $5db5: $f8 $88
    xor b                                         ; $5db7: $a8
    ld [bc], a                                    ; $5db8: $02
    ret c                                         ; $5db9: $d8

    sub a                                         ; $5dba: $97
    ld hl, sp+$67                                 ; $5dbb: $f8 $67
    ld a, a                                       ; $5dbd: $7f
    cp [hl]                                       ; $5dbe: $be
    pop bc                                        ; $5dbf: $c1
    rra                                           ; $5dc0: $1f
    ldh [rIE], a                                  ; $5dc1: $e0 $ff
    nop                                           ; $5dc3: $00
    dec hl                                        ; $5dc4: $2b
    call nc, $e9d6                                ; $5dc5: $d4 $d6 $e9
    dec bc                                        ; $5dc8: $0b
    push af                                       ; $5dc9: $f5
    add c                                         ; $5dca: $81
    rst $38                                       ; $5dcb: $ff
    di                                            ; $5dcc: $f3
    rst $38                                       ; $5dcd: $ff
    inc c                                         ; $5dce: $0c
    rst $38                                       ; $5dcf: $ff
    ccf                                           ; $5dd0: $3f
    ret nz                                        ; $5dd1: $c0

    ld [bc], a                                    ; $5dd2: $02
    db $10                                        ; $5dd3: $10
    sbc [hl]                                      ; $5dd4: $9e
    jr c, @+$2a                                   ; $5dd5: $38 $28

    jr c, jr_0f1_5e01                             ; $5dd7: $38 $28

    inc a                                         ; $5dd9: $3c
    inc h                                         ; $5dda: $24
    inc a                                         ; $5ddb: $3c
    inc h                                         ; $5ddc: $24
    inc a                                         ; $5ddd: $3c
    inc h                                         ; $5dde: $24
    ld l, $32                                     ; $5ddf: $2e $32
    ld l, $32                                     ; $5de1: $2e $32
    ld l, $32                                     ; $5de3: $2e $32
    ld e, $12                                     ; $5de5: $1e $12
    ld e, $12                                     ; $5de7: $1e $12
    ld e, $12                                     ; $5de9: $1e $12
    rra                                           ; $5deb: $1f
    ld de, $1917                                  ; $5dec: $11 $17 $19
    rla                                           ; $5def: $17
    add hl, de                                    ; $5df0: $19
    rla                                           ; $5df1: $17
    add hl, de                                    ; $5df2: $19
    ld [bc], a                                    ; $5df3: $02
    ld bc, $0286                                  ; $5df4: $01 $86 $02
    inc bc                                        ; $5df7: $03
    ld [bc], a                                    ; $5df8: $02
    inc bc                                        ; $5df9: $03
    ld [bc], a                                    ; $5dfa: $02
    inc bc                                        ; $5dfb: $03
    inc b                                         ; $5dfc: $04

jr_0f1_5dfd:
    ld bc, $1c02                                  ; $5dfd: $01 $02 $1c
    sub a                                         ; $5e00: $97

jr_0f1_5e01:
    ccf                                           ; $5e01: $3f
    inc hl                                        ; $5e02: $23
    ld a, l                                       ; $5e03: $7d
    ld b, e                                       ; $5e04: $43
    ld sp, hl                                     ; $5e05: $f9
    add a                                         ; $5e06: $87

jr_0f1_5e07:
    cp d                                          ; $5e07: $ba
    rst $00                                       ; $5e08: $c7
    add l                                         ; $5e09: $85
    rst $38                                       ; $5e0a: $ff
    ld a, c                                       ; $5e0b: $79
    ld a, a                                       ; $5e0c: $7f
    ld h, $39                                     ; $5e0d: $26 $39
    dec l                                         ; $5e0f: $2d
    ld [hl-], a                                   ; $5e10: $32
    rla                                           ; $5e11: $17
    jr @+$01                                      ; $5e12: $18 $ff

    nop                                           ; $5e14: $00
    ld a, [hl]                                    ; $5e15: $7e
    add c                                         ; $5e16: $81
    rra                                           ; $5e17: $1f
    ld [bc], a                                    ; $5e18: $02
    rst $38                                       ; $5e19: $ff
    cp c                                          ; $5e1a: $b9
    ldh a, [$f7]                                  ; $5e1b: $f0 $f7
    jr jr_0f1_5e07                                ; $5e1d: $18 $e8

    rra                                           ; $5e1f: $1f
    adc c                                         ; $5e20: $89
    ld a, a                                       ; $5e21: $7f
    ld a, [hl]                                    ; $5e22: $7e
    rst $38                                       ; $5e23: $ff
    adc d                                         ; $5e24: $8a
    rst $38                                       ; $5e25: $ff
    srl [hl]                                      ; $5e26: $cb $3e
    xor $1b                                       ; $5e28: $ee $1b
    rst $30                                       ; $5e2a: $f7
    add hl, de                                    ; $5e2b: $19
    cp a                                          ; $5e2c: $bf
    ld a, a                                       ; $5e2d: $7f
    rst $08                                       ; $5e2e: $cf
    ldh a, [$fe]                                  ; $5e2f: $f0 $fe
    ld bc, $2bd5                                  ; $5e31: $01 $d5 $2b
    ld e, h                                       ; $5e34: $5c
    ld h, h                                       ; $5e35: $64
    call c, $bce4                                 ; $5e36: $dc $e4 $bc
    and h                                         ; $5e39: $a4
    cp [hl]                                       ; $5e3a: $be
    and d                                         ; $5e3b: $a2
    xor [hl]                                      ; $5e3c: $ae
    or d                                          ; $5e3d: $b2
    xor [hl]                                      ; $5e3e: $ae
    or d                                          ; $5e3f: $b2
    ld l, $32                                     ; $5e40: $2e $32
    halt                                          ; $5e42: $76
    ld a, d                                       ; $5e43: $7a
    sub a                                         ; $5e44: $97
    ld sp, hl                                     ; $5e45: $f9
    ccf                                           ; $5e46: $3f
    ld sp, hl                                     ; $5e47: $f9
    ld c, a                                       ; $5e48: $4f
    di                                            ; $5e49: $f3
    cp l                                          ; $5e4a: $bd
    ld a, [hl]                                    ; $5e4b: $7e
    rst $28                                       ; $5e4c: $ef
    di                                            ; $5e4d: $f3
    ld a, a                                       ; $5e4e: $7f
    add c                                         ; $5e4f: $81
    rst $38                                       ; $5e50: $ff
    ld bc, $b34d                                  ; $5e51: $01 $4d $b3
    ld [bc], a                                    ; $5e54: $02
    ld [bc], a                                    ; $5e55: $02
    add d                                         ; $5e56: $82
    inc bc                                        ; $5e57: $03
    ld bc, $0202                                  ; $5e58: $01 $02 $02
    inc b                                         ; $5e5b: $04
    nop                                           ; $5e5c: $00
    ld [bc], a                                    ; $5e5d: $02
    ld [bc], a                                    ; $5e5e: $02
    adc b                                         ; $5e5f: $88
    adc d                                         ; $5e60: $8a
    cp $7e                                        ; $5e61: $fe $7e
    ld a, [c]                                     ; $5e63: $f2
    adc d                                         ; $5e64: $8a
    or $c4                                        ; $5e65: $f6 $c4
    db $fc                                        ; $5e67: $fc
    ld [bc], a                                    ; $5e68: $02
    cp b                                          ; $5e69: $b8
    inc b                                         ; $5e6a: $04
    add b                                         ; $5e6b: $80
    ld [bc], a                                    ; $5e6c: $02
    nop                                           ; $5e6d: $00
    inc b                                         ; $5e6e: $04
    add b                                         ; $5e6f: $80
    add h                                         ; $5e70: $84
    sbc b                                         ; $5e71: $98
    ldh [rLCDC], a                                ; $5e72: $e0 $40
    ld a, b                                       ; $5e74: $78
    ld [bc], a                                    ; $5e75: $02
    jr c, jr_0f1_5dfd                             ; $5e76: $38 $85

    jr nz, jr_0f1_5eb2                            ; $5e78: $20 $38

    jr z, jr_0f1_5eac                             ; $5e7a: $28 $30

    jr jr_0f1_5e80                                ; $5e7c: $18 $02

    db $10                                        ; $5e7e: $10
    sub h                                         ; $5e7f: $94

jr_0f1_5e80:
    jr jr_0f1_5eaa                                ; $5e80: $18 $28

    jr c, jr_0f1_5ea4                             ; $5e82: $38 $20

    jr c, @+$4a                                   ; $5e84: $38 $48

    ld [hl], b                                    ; $5e86: $70
    ld d, l                                       ; $5e87: $55
    ld l, d                                       ; $5e88: $6a
    ld c, e                                       ; $5e89: $4b
    ld [hl], h                                    ; $5e8a: $74
    ld b, e                                       ; $5e8b: $43
    ld a, a                                       ; $5e8c: $7f
    ld a, h                                       ; $5e8d: $7c
    ld a, a                                       ; $5e8e: $7f
    ld b, e                                       ; $5e8f: $43
    ld a, a                                       ; $5e90: $7f
    ld e, c                                       ; $5e91: $59
    ld h, a                                       ; $5e92: $67
    nop                                           ; $5e93: $00
    inc bc                                        ; $5e94: $03
    ld b, $a9                                     ; $5e95: $06 $a9
    nop                                           ; $5e97: $00
    ld b, $04                                     ; $5e98: $06 $04
    ld [bc], a                                    ; $5e9a: $02
    ld b, $00                                     ; $5e9b: $06 $00
    ld b, $00                                     ; $5e9d: $06 $00
    ld b, $00                                     ; $5e9f: $06 $00
    inc b                                         ; $5ea1: $04
    ld b, $02                                     ; $5ea2: $06 $02

jr_0f1_5ea4:
    ld b, $04                                     ; $5ea4: $06 $04
    ld b, $03                                     ; $5ea6: $06 $03
    dec b                                         ; $5ea8: $05
    rst $10                                       ; $5ea9: $d7

jr_0f1_5eaa:
    add hl, sp                                    ; $5eaa: $39
    ld l, a                                       ; $5eab: $6f

jr_0f1_5eac:
    pop af                                        ; $5eac: $f1
    sub c                                         ; $5ead: $91

jr_0f1_5eae:
    rst $38                                       ; $5eae: $ff
    rst $28                                       ; $5eaf: $ef
    rra                                           ; $5eb0: $1f
    pop af                                        ; $5eb1: $f1

jr_0f1_5eb2:
    rst $38                                       ; $5eb2: $ff
    rlca                                          ; $5eb3: $07
    inc b                                         ; $5eb4: $04
    dec bc                                        ; $5eb5: $0b
    inc c                                         ; $5eb6: $0c
    rrca                                          ; $5eb7: $0f
    ld [$080f], sp                                ; $5eb8: $08 $0f $08
    dec bc                                        ; $5ebb: $0b
    inc c                                         ; $5ebc: $0c
    add hl, bc                                    ; $5ebd: $09
    ld c, $06                                     ; $5ebe: $0e $06
    ld [bc], a                                    ; $5ec0: $02
    dec b                                         ; $5ec1: $05
    add c                                         ; $5ec2: $81
    ld b, $02                                     ; $5ec3: $06 $02
    rlca                                          ; $5ec5: $07
    add c                                         ; $5ec6: $81
    inc bc                                        ; $5ec7: $03
    ld [bc], a                                    ; $5ec8: $02
    ld [bc], a                                    ; $5ec9: $02
    add c                                         ; $5eca: $81
    inc bc                                        ; $5ecb: $03
    inc b                                         ; $5ecc: $04
    ld bc, $1f02                                  ; $5ecd: $01 $02 $1f
    adc e                                         ; $5ed0: $8b
    rst $28                                       ; $5ed1: $ef
    db $fc                                        ; $5ed2: $fc
    ld e, l                                       ; $5ed3: $5d
    cp $04                                        ; $5ed4: $fe $04
    rlca                                          ; $5ed6: $07
    and e                                         ; $5ed7: $a3
    ld h, d                                       ; $5ed8: $62
    and d                                         ; $5ed9: $a2
    ld h, e                                       ; $5eda: $63
    pop bc                                        ; $5edb: $c1
    ld [bc], a                                    ; $5edc: $02
    ld b, c                                       ; $5edd: $41
    add d                                         ; $5ede: $82
    pop bc                                        ; $5edf: $c1
    ld b, c                                       ; $5ee0: $41
    ld [bc], a                                    ; $5ee1: $02
    pop bc                                        ; $5ee2: $c1
    add h                                         ; $5ee3: $84
    ld b, c                                       ; $5ee4: $41
    and d                                         ; $5ee5: $a2
    ld h, e                                       ; $5ee6: $63
    ld [hl+], a                                   ; $5ee7: $22
    inc bc                                        ; $5ee8: $03
    db $e3                                        ; $5ee9: $e3

jr_0f1_5eea:
    sbc [hl]                                      ; $5eea: $9e
    and d                                         ; $5eeb: $a2
    ld h, e                                       ; $5eec: $63
    db $e3                                        ; $5eed: $e3
    ld [hl+], a                                   ; $5eee: $22
    db $e3                                        ; $5eef: $e3
    ld [hl+], a                                   ; $5ef0: $22
    ld h, e                                       ; $5ef1: $63
    and d                                         ; $5ef2: $a2
    ld e, l                                       ; $5ef3: $5d
    cp [hl]                                       ; $5ef4: $be
    push de                                       ; $5ef5: $d5
    ld a, $d0                                     ; $5ef6: $3e $d0
    jr nc, jr_0f1_5eea                            ; $5ef8: $30 $f0

    db $10                                        ; $5efa: $10
    add sp, $18                                   ; $5efb: $e8 $18
    add sp, $18                                   ; $5efd: $e8 $18
    ld l, b                                       ; $5eff: $68
    sbc b                                         ; $5f00: $98
    ld l, b                                       ; $5f01: $68
    sbc b                                         ; $5f02: $98
    add sp, $18                                   ; $5f03: $e8 $18
    ret nc                                        ; $5f05: $d0

    jr nc, jr_0f1_5f18                            ; $5f06: $30 $10

    ldh a, [$03]                                  ; $5f08: $f0 $03
    ldh [$8b], a                                  ; $5f0a: $e0 $8b
    jr nz, jr_0f1_5eae                            ; $5f0c: $20 $a0

    ld h, b                                       ; $5f0e: $60
    ret nz                                        ; $5f0f: $c0

    ld b, b                                       ; $5f10: $40
    ret nz                                        ; $5f11: $c0

    ld b, b                                       ; $5f12: $40
    ld hl, sp+$78                                 ; $5f13: $f8 $78
    rst $38                                       ; $5f15: $ff
    rra                                           ; $5f16: $1f
    ld [bc], a                                    ; $5f17: $02

jr_0f1_5f18:
    ld b, b                                       ; $5f18: $40
    sub b                                         ; $5f19: $90
    xor a                                         ; $5f1a: $af
    rst $38                                       ; $5f1b: $ff
    sub a                                         ; $5f1c: $97
    rst $38                                       ; $5f1d: $ff
    adc e                                         ; $5f1e: $8b
    db $f4                                        ; $5f1f: $f4
    sub a                                         ; $5f20: $97
    db $ec                                        ; $5f21: $ec
    xor c                                         ; $5f22: $a9
    sub $76                                       ; $5f23: $d6 $76
    ld l, l                                       ; $5f25: $6d
    ld de, $0e1e                                  ; $5f26: $11 $1e $0e
    dec c                                         ; $5f29: $0d
    ld [bc], a                                    ; $5f2a: $02
    inc bc                                        ; $5f2b: $03
    inc c                                         ; $5f2c: $0c
    nop                                           ; $5f2d: $00
    add d                                         ; $5f2e: $82
    jr z, jr_0f1_5f50                             ; $5f2f: $28 $1f

    inc b                                         ; $5f31: $04
    rst $38                                       ; $5f32: $ff
    adc h                                         ; $5f33: $8c
    db $fd                                        ; $5f34: $fd
    ld [bc], a                                    ; $5f35: $02
    ld a, [$f705]                                 ; $5f36: $fa $05 $f7
    ld [$00ff], sp                                ; $5f39: $08 $ff $00
    rst $38                                       ; $5f3c: $ff
    nop                                           ; $5f3d: $00
    xor [hl]                                      ; $5f3e: $ae
    ld d, c                                       ; $5f3f: $51
    ld [bc], a                                    ; $5f40: $02
    rst $38                                       ; $5f41: $ff
    inc c                                         ; $5f42: $0c
    nop                                           ; $5f43: $00
    add d                                         ; $5f44: $82
    or a                                          ; $5f45: $b7
    rst $08                                       ; $5f46: $cf
    ld [bc], a                                    ; $5f47: $02
    rst $38                                       ; $5f48: $ff
    adc [hl]                                      ; $5f49: $8e
    cp $ff                                        ; $5f4a: $fe $ff
    ld a, b                                       ; $5f4c: $78
    add a                                         ; $5f4d: $87
    db $fc                                        ; $5f4e: $fc
    inc bc                                        ; $5f4f: $03

jr_0f1_5f50:
    ld a, [$f607]                                 ; $5f50: $fa $07 $f6
    dec bc                                        ; $5f53: $0b
    xor d                                         ; $5f54: $aa
    ld d, a                                       ; $5f55: $57
    rst $10                                       ; $5f56: $d7
    dec hl                                        ; $5f57: $2b
    ld [bc], a                                    ; $5f58: $02
    db $fc                                        ; $5f59: $fc
    inc c                                         ; $5f5a: $0c
    nop                                           ; $5f5b: $00
    add d                                         ; $5f5c: $82
    ld b, $0e                                     ; $5f5d: $06 $0e
    ld [bc], a                                    ; $5f5f: $02
    rrca                                          ; $5f60: $0f
    adc d                                         ; $5f61: $8a
    dec bc                                        ; $5f62: $0b
    rrca                                          ; $5f63: $0f
    dec b                                         ; $5f64: $05
    rrca                                          ; $5f65: $0f
    inc bc                                        ; $5f66: $03
    rrca                                          ; $5f67: $0f
    dec b                                         ; $5f68: $05
    rrca                                          ; $5f69: $0f
    ld b, $0e                                     ; $5f6a: $06 $0e
    ld [bc], a                                    ; $5f6c: $02
    ld [$0010], sp                                ; $5f6d: $08 $10 $00
    rst $38                                       ; $5f70: $ff
    inc hl                                        ; $5f71: $23
    rrca                                          ; $5f72: $0f
    rst $30                                       ; $5f73: $f7
    ld a, [bc]                                    ; $5f74: $0a
    jp $c200                                      ; $5f75: $c3 $00 $c2


    db $fd                                        ; $5f78: $fd
    or a                                          ; $5f79: $b7
    inc bc                                        ; $5f7a: $03
    ret z                                         ; $5f7b: $c8

    push af                                       ; $5f7c: $f5
    jp nc, $c7fd                                  ; $5f7d: $d2 $fd $c7

    dec b                                         ; $5f80: $05
    jp nc, $d806                                  ; $5f81: $d2 $06 $d8

    ld hl, sp-$29                                 ; $5f84: $f8 $d7
    nop                                           ; $5f86: $00
    add sp, -$0b                                  ; $5f87: $e8 $f5
    rst $20                                       ; $5f89: $e7
    db $fd                                        ; $5f8a: $fd
    rst $20                                       ; $5f8b: $e7
    dec b                                         ; $5f8c: $05
    rst $30                                       ; $5f8d: $f7
    di                                            ; $5f8e: $f3
    rst $30                                       ; $5f8f: $f7
    ei                                            ; $5f90: $fb
    rst $30                                       ; $5f91: $f7
    inc bc                                        ; $5f92: $03
    rst $30                                       ; $5f93: $f7
    rlca                                          ; $5f94: $07
    ld [bc], a                                    ; $5f95: $02
    ld [hl], b                                    ; $5f96: $70
    add l                                         ; $5f97: $85
    ld hl, sp-$28                                 ; $5f98: $f8 $d8
    ld hl, sp-$78                                 ; $5f9a: $f8 $88
    xor b                                         ; $5f9c: $a8
    ld [bc], a                                    ; $5f9d: $02
    ret c                                         ; $5f9e: $d8

    sub a                                         ; $5f9f: $97
    ld hl, sp+$67                                 ; $5fa0: $f8 $67
    ld a, a                                       ; $5fa2: $7f
    cp [hl]                                       ; $5fa3: $be
    pop bc                                        ; $5fa4: $c1
    rra                                           ; $5fa5: $1f
    ldh [rIE], a                                  ; $5fa6: $e0 $ff
    nop                                           ; $5fa8: $00
    dec hl                                        ; $5fa9: $2b
    call nc, $e9d6                                ; $5faa: $d4 $d6 $e9
    dec bc                                        ; $5fad: $0b
    push af                                       ; $5fae: $f5
    add c                                         ; $5faf: $81
    rst $38                                       ; $5fb0: $ff
    di                                            ; $5fb1: $f3
    rst $38                                       ; $5fb2: $ff
    inc c                                         ; $5fb3: $0c
    rst $38                                       ; $5fb4: $ff
    ccf                                           ; $5fb5: $3f
    ret nz                                        ; $5fb6: $c0

    ld [bc], a                                    ; $5fb7: $02
    ld [$1c9e], sp                                ; $5fb8: $08 $9e $1c
    inc d                                         ; $5fbb: $14
    inc e                                         ; $5fbc: $1c
    inc d                                         ; $5fbd: $14
    inc e                                         ; $5fbe: $1c
    inc d                                         ; $5fbf: $14
    ld e, $12                                     ; $5fc0: $1e $12
    ld e, $12                                     ; $5fc2: $1e $12
    ld e, $12                                     ; $5fc4: $1e $12
    ld e, $12                                     ; $5fc6: $1e $12
    ld e, $12                                     ; $5fc8: $1e $12
    ld d, $1a                                     ; $5fca: $16 $1a
    ld d, $1a                                     ; $5fcc: $16 $1a
    rla                                           ; $5fce: $17
    add hl, de                                    ; $5fcf: $19
    rla                                           ; $5fd0: $17
    add hl, de                                    ; $5fd1: $19
    rla                                           ; $5fd2: $17
    add hl, de                                    ; $5fd3: $19
    rla                                           ; $5fd4: $17
    add hl, de                                    ; $5fd5: $19
    rla                                           ; $5fd6: $17
    add hl, de                                    ; $5fd7: $19
    ld [bc], a                                    ; $5fd8: $02
    ld bc, $0286                                  ; $5fd9: $01 $86 $02
    inc bc                                        ; $5fdc: $03
    ld [bc], a                                    ; $5fdd: $02
    inc bc                                        ; $5fde: $03
    ld [bc], a                                    ; $5fdf: $02
    inc bc                                        ; $5fe0: $03
    inc b                                         ; $5fe1: $04

jr_0f1_5fe2:
    ld bc, $1c02                                  ; $5fe2: $01 $02 $1c
    sub a                                         ; $5fe5: $97
    ccf                                           ; $5fe6: $3f
    inc hl                                        ; $5fe7: $23
    ld a, l                                       ; $5fe8: $7d
    ld b, e                                       ; $5fe9: $43
    ld sp, hl                                     ; $5fea: $f9
    add a                                         ; $5feb: $87
    cp d                                          ; $5fec: $ba
    rst $00                                       ; $5fed: $c7
    add l                                         ; $5fee: $85
    rst $38                                       ; $5fef: $ff
    ld a, c                                       ; $5ff0: $79
    ld a, a                                       ; $5ff1: $7f
    daa                                           ; $5ff2: $27
    add hl, sp                                    ; $5ff3: $39
    dec l                                         ; $5ff4: $2d
    ld [hl-], a                                   ; $5ff5: $32
    rla                                           ; $5ff6: $17
    jr @+$01                                      ; $5ff7: $18 $ff

    nop                                           ; $5ff9: $00
    ld a, [hl]                                    ; $5ffa: $7e
    add c                                         ; $5ffb: $81
    rra                                           ; $5ffc: $1f
    ld [bc], a                                    ; $5ffd: $02
    rst $38                                       ; $5ffe: $ff
    cp c                                          ; $5fff: $b9
    ldh [$ee], a                                  ; $6000: $e0 $ee
    ld sp, $3fd0                                  ; $6002: $31 $d0 $3f
    inc de                                        ; $6005: $13
    rst $38                                       ; $6006: $ff
    cp $ff                                        ; $6007: $fe $ff
    ld [de], a                                    ; $6009: $12
    rst $38                                       ; $600a: $ff
    sub e                                         ; $600b: $93
    ld a, [hl]                                    ; $600c: $7e
    sbc $33                                       ; $600d: $de $33
    rst $28                                       ; $600f: $ef
    ld sp, $ff7f                                  ; $6010: $31 $7f $ff
    sbc [hl]                                      ; $6013: $9e
    pop hl                                        ; $6014: $e1
    db $fd                                        ; $6015: $fd
    inc bc                                        ; $6016: $03
    xor d                                         ; $6017: $aa
    ld d, a                                       ; $6018: $57
    inc a                                         ; $6019: $3c
    inc h                                         ; $601a: $24
    cp h                                          ; $601b: $bc
    and h                                         ; $601c: $a4
    cp h                                          ; $601d: $bc
    and h                                         ; $601e: $a4
    cp h                                          ; $601f: $bc
    and h                                         ; $6020: $a4
    xor h                                         ; $6021: $ac
    or h                                          ; $6022: $b4
    xor [hl]                                      ; $6023: $ae
    or d                                          ; $6024: $b2
    ld l, $32                                     ; $6025: $2e $32
    ld l, [hl]                                    ; $6027: $6e
    ld [hl], d                                    ; $6028: $72
    xor [hl]                                      ; $6029: $ae
    ld a, [c]                                     ; $602a: $f2
    ld a, [hl]                                    ; $602b: $7e
    ld a, [c]                                     ; $602c: $f2
    sbc a                                         ; $602d: $9f
    rst $20                                       ; $602e: $e7
    rst $38                                       ; $602f: $ff
    ld a, b                                       ; $6030: $78
    ld e, a                                       ; $6031: $5f
    rst $20                                       ; $6032: $e7
    cp $82                                        ; $6033: $fe $82
    cp $02                                        ; $6035: $fe $02
    sbc e                                         ; $6037: $9b
    ld h, a                                       ; $6038: $67
    ld [bc], a                                    ; $6039: $02
    ld bc, $0008                                  ; $603a: $01 $08 $00
    sub b                                         ; $603d: $90
    adc c                                         ; $603e: $89
    rst $38                                       ; $603f: $ff
    ld [hl], a                                    ; $6040: $77
    ld sp, hl                                     ; $6041: $f9
    ld b, l                                       ; $6042: $45
    ei                                            ; $6043: $fb
    ld h, d                                       ; $6044: $62
    cp $dc                                        ; $6045: $fe $dc
    ld e, h                                       ; $6047: $5c
    ret nz                                        ; $6048: $c0

    ld b, b                                       ; $6049: $40
    ret nz                                        ; $604a: $c0

    ld b, b                                       ; $604b: $40
    nop                                           ; $604c: $00
    add b                                         ; $604d: $80
    ld [bc], a                                    ; $604e: $02
    ret nz                                        ; $604f: $c0

    add c                                         ; $6050: $81
    ld b, b                                       ; $6051: $40
    ld [bc], a                                    ; $6052: $02
    ret nz                                        ; $6053: $c0

    add l                                         ; $6054: $85
    ld b, b                                       ; $6055: $40
    sbc b                                         ; $6056: $98
    ldh [rLCDC], a                                ; $6057: $e0 $40
    ld a, b                                       ; $6059: $78
    ld [bc], a                                    ; $605a: $02
    jr c, jr_0f1_5fe2                             ; $605b: $38 $85

    jr nz, jr_0f1_6097                            ; $605d: $20 $38

    jr z, jr_0f1_6091                             ; $605f: $28 $30

    jr jr_0f1_6065                                ; $6061: $18 $02

    db $10                                        ; $6063: $10
    sub h                                         ; $6064: $94

jr_0f1_6065:
    jr jr_0f1_608f                                ; $6065: $18 $28

    jr c, jr_0f1_6089                             ; $6067: $38 $20

    jr c, jr_0f1_60b3                             ; $6069: $38 $48

    ld [hl], b                                    ; $606b: $70
    ld c, e                                       ; $606c: $4b
    ld [hl], h                                    ; $606d: $74
    ld b, [hl]                                    ; $606e: $46
    ld a, c                                       ; $606f: $79
    ld b, a                                       ; $6070: $47
    ld a, a                                       ; $6071: $7f
    ld a, h                                       ; $6072: $7c
    ld a, a                                       ; $6073: $7f
    ld b, e                                       ; $6074: $43
    ld a, a                                       ; $6075: $7f
    ld e, c                                       ; $6076: $59
    ld h, a                                       ; $6077: $67
    nop                                           ; $6078: $00
    inc bc                                        ; $6079: $03
    inc b                                         ; $607a: $04

jr_0f1_607b:
    add c                                         ; $607b: $81
    nop                                           ; $607c: $00
    ld [bc], a                                    ; $607d: $02
    inc b                                         ; $607e: $04
    add a                                         ; $607f: $87
    nop                                           ; $6080: $00
    inc b                                         ; $6081: $04
    nop                                           ; $6082: $00
    inc b                                         ; $6083: $04
    nop                                           ; $6084: $00
    inc b                                         ; $6085: $04
    nop                                           ; $6086: $00
    inc b                                         ; $6087: $04
    inc b                                         ; $6088: $04

jr_0f1_6089:
    add c                                         ; $6089: $81
    nop                                           ; $608a: $00
    ld [bc], a                                    ; $608b: $02
    inc b                                         ; $608c: $04
    sbc b                                         ; $608d: $98
    nop                                           ; $608e: $00

jr_0f1_608f:
    xor a                                         ; $608f: $af
    ld [hl], c                                    ; $6090: $71

jr_0f1_6091:
    rst $18                                       ; $6091: $df
    pop hl                                        ; $6092: $e1
    ld hl, $efff                                  ; $6093: $21 $ff $ef
    rra                                           ; $6096: $1f

jr_0f1_6097:
    pop af                                        ; $6097: $f1
    rst $38                                       ; $6098: $ff
    rla                                           ; $6099: $17
    jr jr_0f1_60bb                                ; $609a: $18 $1f

    db $10                                        ; $609c: $10
    rra                                           ; $609d: $1f
    db $10                                        ; $609e: $10
    ld e, $11                                     ; $609f: $1e $11
    ld d, $19                                     ; $60a1: $16 $19
    inc de                                        ; $60a3: $13
    inc e                                         ; $60a4: $1c
    dec c                                         ; $60a5: $0d
    ld [bc], a                                    ; $60a6: $02
    ld a, [bc]                                    ; $60a7: $0a
    add c                                         ; $60a8: $81
    dec c                                         ; $60a9: $0d
    ld [bc], a                                    ; $60aa: $02
    rrca                                          ; $60ab: $0f
    add [hl]                                      ; $60ac: $86
    rlca                                          ; $60ad: $07
    inc b                                         ; $60ae: $04
    dec b                                         ; $60af: $05
    ld b, $03                                     ; $60b0: $06 $03
    ld [bc], a                                    ; $60b2: $02

jr_0f1_60b3:
    ld [bc], a                                    ; $60b3: $02
    ld bc, $1f02                                  ; $60b4: $01 $02 $1f

jr_0f1_60b7:
    adc l                                         ; $60b7: $8d
    rst $28                                       ; $60b8: $ef

jr_0f1_60b9:
    db $fc                                        ; $60b9: $fc
    ld e, l                                       ; $60ba: $5d

jr_0f1_60bb:
    cp $09                                        ; $60bb: $fe $09
    ld c, $4b                                     ; $60bd: $0e $4b
    call z, $c447                                 ; $60bf: $cc $47 $c4
    add l                                         ; $60c2: $85
    add [hl]                                      ; $60c3: $86
    add e                                         ; $60c4: $83
    ld [bc], a                                    ; $60c5: $02
    add d                                         ; $60c6: $82
    add [hl]                                      ; $60c7: $86
    add e                                         ; $60c8: $83
    add d                                         ; $60c9: $82
    add e                                         ; $60ca: $83
    ld b, e                                       ; $60cb: $43
    jp nz, Jump_000_0442                          ; $60cc: $c2 $42 $04

    jp Jump_0f1_429c                              ; $60cf: $c3 $9c $42


    jp $a542                                      ; $60d2: $c3 $42 $a5


    ld h, [hl]                                    ; $60d5: $66
    push hl                                       ; $60d6: $e5
    ld h, $5d                                     ; $60d7: $26 $5d
    cp [hl]                                       ; $60d9: $be
    push de                                       ; $60da: $d5
    ld a, $a0                                     ; $60db: $3e $a0
    ld h, b                                       ; $60dd: $60
    ldh [rNR41], a                                ; $60de: $e0 $20
    ret nc                                        ; $60e0: $d0

    jr nc, jr_0f1_60b3                            ; $60e1: $30 $d0

    jr nc, @-$2e                                  ; $60e3: $30 $d0

    jr nc, jr_0f1_60b7                            ; $60e5: $30 $d0

    jr nc, jr_0f1_60b9                            ; $60e7: $30 $d0

    jr nc, jr_0f1_607b                            ; $60e9: $30 $90

    ld [hl], b                                    ; $60eb: $70
    jr nz, jr_0f1_60f1                            ; $60ec: $20 $03

    ldh [$8c], a                                  ; $60ee: $e0 $8c
    and b                                         ; $60f0: $a0

jr_0f1_60f1:
    ld h, b                                       ; $60f1: $60
    and b                                         ; $60f2: $a0
    ld h, b                                       ; $60f3: $60
    ret nz                                        ; $60f4: $c0

    ld b, b                                       ; $60f5: $40
    ret nz                                        ; $60f6: $c0

    ld b, b                                       ; $60f7: $40
    ld hl, sp+$78                                 ; $60f8: $f8 $78
    rst $38                                       ; $60fa: $ff
    rra                                           ; $60fb: $1f
    ld [bc], a                                    ; $60fc: $02
    ld b, b                                       ; $60fd: $40
    sub b                                         ; $60fe: $90
    xor a                                         ; $60ff: $af
    rst $38                                       ; $6100: $ff
    sub a                                         ; $6101: $97
    rst $38                                       ; $6102: $ff
    adc e                                         ; $6103: $8b
    db $f4                                        ; $6104: $f4
    sub a                                         ; $6105: $97
    db $ec                                        ; $6106: $ec
    xor c                                         ; $6107: $a9
    sub $76                                       ; $6108: $d6 $76
    ld l, l                                       ; $610a: $6d
    ld de, $0e1e                                  ; $610b: $11 $1e $0e
    dec c                                         ; $610e: $0d
    ld [bc], a                                    ; $610f: $02
    inc bc                                        ; $6110: $03
    inc c                                         ; $6111: $0c
    nop                                           ; $6112: $00
    add d                                         ; $6113: $82
    jr z, jr_0f1_6135                             ; $6114: $28 $1f

    inc b                                         ; $6116: $04
    rst $38                                       ; $6117: $ff
    adc h                                         ; $6118: $8c
    db $fd                                        ; $6119: $fd
    ld [bc], a                                    ; $611a: $02
    ld a, [$f705]                                 ; $611b: $fa $05 $f7
    ld [$00ff], sp                                ; $611e: $08 $ff $00
    rst $38                                       ; $6121: $ff
    nop                                           ; $6122: $00
    xor [hl]                                      ; $6123: $ae
    ld d, c                                       ; $6124: $51
    ld [bc], a                                    ; $6125: $02
    rst $38                                       ; $6126: $ff
    inc c                                         ; $6127: $0c
    nop                                           ; $6128: $00
    add d                                         ; $6129: $82
    or a                                          ; $612a: $b7
    rst $08                                       ; $612b: $cf
    ld [bc], a                                    ; $612c: $02
    rst $38                                       ; $612d: $ff
    adc [hl]                                      ; $612e: $8e
    cp $ff                                        ; $612f: $fe $ff
    ld a, b                                       ; $6131: $78
    add a                                         ; $6132: $87
    db $fc                                        ; $6133: $fc
    inc bc                                        ; $6134: $03

jr_0f1_6135:
    ld a, [$f607]                                 ; $6135: $fa $07 $f6
    dec bc                                        ; $6138: $0b
    xor d                                         ; $6139: $aa
    ld d, a                                       ; $613a: $57
    rst $10                                       ; $613b: $d7
    dec hl                                        ; $613c: $2b
    ld [bc], a                                    ; $613d: $02
    db $fc                                        ; $613e: $fc
    inc c                                         ; $613f: $0c
    nop                                           ; $6140: $00
    add d                                         ; $6141: $82
    ld b, $0e                                     ; $6142: $06 $0e
    ld [bc], a                                    ; $6144: $02
    rrca                                          ; $6145: $0f
    adc d                                         ; $6146: $8a
    dec bc                                        ; $6147: $0b
    rrca                                          ; $6148: $0f
    dec b                                         ; $6149: $05
    rrca                                          ; $614a: $0f
    inc bc                                        ; $614b: $03
    rrca                                          ; $614c: $0f
    dec b                                         ; $614d: $05
    rrca                                          ; $614e: $0f
    ld b, $0e                                     ; $614f: $06 $0e
    ld [bc], a                                    ; $6151: $02
    ld [$0010], sp                                ; $6152: $08 $10 $00
    rst $38                                       ; $6155: $ff
    dec h                                         ; $6156: $25
    db $10                                        ; $6157: $10
    rst $30                                       ; $6158: $f7
    ld a, [bc]                                    ; $6159: $0a
    jp $c300                                      ; $615a: $c3 $00 $c3


    db $fc                                        ; $615d: $fc
    or a                                          ; $615e: $b7
    ld [bc], a                                    ; $615f: $02
    jp z, $c9f3                                   ; $6160: $ca $f3 $c9

    ei                                            ; $6163: $fb
    rst $00                                       ; $6164: $c7
    inc bc                                        ; $6165: $03
    db $d3                                        ; $6166: $d3
    dec b                                         ; $6167: $05
    reti                                          ; $6168: $d9


    or $d7                                        ; $6169: $f6 $d7
    cp $e3                                        ; $616b: $fe $e3
    nop                                           ; $616d: $00
    jp hl                                         ; $616e: $e9


    push af                                       ; $616f: $f5
    rst $20                                       ; $6170: $e7
    db $fd                                        ; $6171: $fd
    di                                            ; $6172: $f3
    dec b                                         ; $6173: $05
    rst $30                                       ; $6174: $f7
    di                                            ; $6175: $f3
    rst $30                                       ; $6176: $f7
    ei                                            ; $6177: $fb
    rst $30                                       ; $6178: $f7
    db $fd                                        ; $6179: $fd
    rst $30                                       ; $617a: $f7
    rlca                                          ; $617b: $07
    ld [bc], a                                    ; $617c: $02
    ld [hl], b                                    ; $617d: $70
    add l                                         ; $617e: $85
    ld hl, sp-$28                                 ; $617f: $f8 $d8
    ld hl, sp-$78                                 ; $6181: $f8 $88
    xor b                                         ; $6183: $a8
    ld [bc], a                                    ; $6184: $02
    ret c                                         ; $6185: $d8

    sub a                                         ; $6186: $97
    ld hl, sp+$67                                 ; $6187: $f8 $67
    ld a, a                                       ; $6189: $7f
    cp [hl]                                       ; $618a: $be
    pop bc                                        ; $618b: $c1
    rra                                           ; $618c: $1f
    ldh [rIE], a                                  ; $618d: $e0 $ff
    nop                                           ; $618f: $00
    dec hl                                        ; $6190: $2b
    call nc, $e9d6                                ; $6191: $d4 $d6 $e9
    dec bc                                        ; $6194: $0b
    push af                                       ; $6195: $f5
    add c                                         ; $6196: $81
    rst $38                                       ; $6197: $ff
    di                                            ; $6198: $f3
    rst $38                                       ; $6199: $ff
    inc c                                         ; $619a: $0c
    rst $38                                       ; $619b: $ff
    ld a, a                                       ; $619c: $7f
    add c                                         ; $619d: $81
    ld [bc], a                                    ; $619e: $02
    ld [$1c9e], sp                                ; $619f: $08 $9e $1c
    inc d                                         ; $61a2: $14
    inc e                                         ; $61a3: $1c
    inc d                                         ; $61a4: $14
    ld e, $12                                     ; $61a5: $1e $12
    ld e, $12                                     ; $61a7: $1e $12
    ld e, $12                                     ; $61a9: $1e $12
    ld e, $12                                     ; $61ab: $1e $12
    ld e, $12                                     ; $61ad: $1e $12
    ld e, $12                                     ; $61af: $1e $12
    ld e, $12                                     ; $61b1: $1e $12
    ld e, $12                                     ; $61b3: $1e $12
    ld e, $12                                     ; $61b5: $1e $12
    rra                                           ; $61b7: $1f
    ld de, $111f                                  ; $61b8: $11 $1f $11
    rla                                           ; $61bb: $17
    add hl, de                                    ; $61bc: $19
    rla                                           ; $61bd: $17
    add hl, de                                    ; $61be: $19
    ld b, $01                                     ; $61bf: $06 $01
    inc b                                         ; $61c1: $04
    nop                                           ; $61c2: $00
    ld [bc], a                                    ; $61c3: $02
    inc e                                         ; $61c4: $1c
    sub h                                         ; $61c5: $94
    ccf                                           ; $61c6: $3f
    inc hl                                        ; $61c7: $23
    ld a, l                                       ; $61c8: $7d
    ld b, e                                       ; $61c9: $43
    ld sp, hl                                     ; $61ca: $f9
    add a                                         ; $61cb: $87
    cp d                                          ; $61cc: $ba
    rst $00                                       ; $61cd: $c7
    add l                                         ; $61ce: $85
    rst $38                                       ; $61cf: $ff
    ld a, c                                       ; $61d0: $79
    ld a, a                                       ; $61d1: $7f
    daa                                           ; $61d2: $27
    add hl, sp                                    ; $61d3: $39
    dec l                                         ; $61d4: $2d
    ld [hl-], a                                   ; $61d5: $32
    cpl                                           ; $61d6: $2f
    jr nc, jr_0f1_61f0                            ; $61d7: $30 $17

    jr jr_0f1_61dd                                ; $61d9: $18 $02

    add b                                         ; $61db: $80
    add l                                         ; $61dc: $85

jr_0f1_61dd:
    nop                                           ; $61dd: $00
    add b                                         ; $61de: $80
    nop                                           ; $61df: $00
    add b                                         ; $61e0: $80
    nop                                           ; $61e1: $00
    dec b                                         ; $61e2: $05
    add b                                         ; $61e3: $80
    ld [bc], a                                    ; $61e4: $02
    nop                                           ; $61e5: $00
    ld [bc], a                                    ; $61e6: $02
    add b                                         ; $61e7: $80
    adc c                                         ; $61e8: $89
    nop                                           ; $61e9: $00
    add b                                         ; $61ea: $80
    nop                                           ; $61eb: $00
    add b                                         ; $61ec: $80
    rst $38                                       ; $61ed: $ff
    nop                                           ; $61ee: $00
    ld a, [hl]                                    ; $61ef: $7e

jr_0f1_61f0:
    add c                                         ; $61f0: $81
    rra                                           ; $61f1: $1f
    ld [bc], a                                    ; $61f2: $02
    rst $38                                       ; $61f3: $ff
    and l                                         ; $61f4: $a5
    ldh [$ed], a                                  ; $61f5: $e0 $ed
    ld [hl-], a                                   ; $61f7: $32
    ret nc                                        ; $61f8: $d0

    ccf                                           ; $61f9: $3f
    ld l, $32                                     ; $61fa: $2e $32
    ld l, $32                                     ; $61fc: $2e $32
    ld l, [hl]                                    ; $61fe: $6e
    ld [hl], d                                    ; $61ff: $72
    ld l, [hl]                                    ; $6200: $6e
    ld [hl], d                                    ; $6201: $72
    ld l, [hl]                                    ; $6202: $6e
    ld [hl], d                                    ; $6203: $72
    ld l, [hl]                                    ; $6204: $6e
    ld [hl], d                                    ; $6205: $72
    ld l, [hl]                                    ; $6206: $6e
    ld [hl], d                                    ; $6207: $72
    ld l, $32                                     ; $6208: $2e $32
    ld l, $32                                     ; $620a: $2e $32
    ld l, [hl]                                    ; $620c: $6e
    ld [hl], d                                    ; $620d: $72
    ld a, [hl]                                    ; $620e: $7e
    ld [hl], d                                    ; $620f: $72
    rra                                           ; $6210: $1f
    ld h, a                                       ; $6211: $67
    ei                                            ; $6212: $fb
    ld a, h                                       ; $6213: $7c
    ld e, a                                       ; $6214: $5f
    rst $20                                       ; $6215: $e7
    cp $82                                        ; $6216: $fe $82
    rst $38                                       ; $6218: $ff
    inc bc                                        ; $6219: $03
    ld [bc], a                                    ; $621a: $02
    ld [bc], a                                    ; $621b: $02
    ld b, $00                                     ; $621c: $06 $00
    sub c                                         ; $621e: $91
    ld l, d                                       ; $621f: $6a
    sbc [hl]                                      ; $6220: $9e
    dec d                                         ; $6221: $15
    ei                                            ; $6222: $fb
    rst $28                                       ; $6223: $ef
    pop af                                        ; $6224: $f1
    ld b, l                                       ; $6225: $45
    ei                                            ; $6226: $fb
    ld h, d                                       ; $6227: $62
    cp $dc                                        ; $6228: $fe $dc
    ld e, h                                       ; $622a: $5c
    ret nz                                        ; $622b: $c0

    ld b, b                                       ; $622c: $40
    ret nz                                        ; $622d: $c0

    ld b, b                                       ; $622e: $40
    nop                                           ; $622f: $00
    inc bc                                        ; $6230: $03
    add b                                         ; $6231: $80
    add c                                         ; $6232: $81
    ld b, b                                       ; $6233: $40
    ld [bc], a                                    ; $6234: $02
    ret nz                                        ; $6235: $c0

    and d                                         ; $6236: $a2
    ld b, b                                       ; $6237: $40
    nop                                           ; $6238: $00
    rlca                                          ; $6239: $07
    add a                                         ; $623a: $87
    rst $38                                       ; $623b: $ff
    ld a, b                                       ; $623c: $78
    ld a, a                                       ; $623d: $7f
    ld [de], a                                    ; $623e: $12
    dec e                                         ; $623f: $1d
    rla                                           ; $6240: $17
    jr jr_0f1_6252                                ; $6241: $18 $0f

    ld [$0f09], sp                                ; $6243: $08 $09 $0f
    ld d, $1f                                     ; $6246: $16 $1f
    inc de                                        ; $6248: $13
    inc e                                         ; $6249: $1c
    ld h, $39                                     ; $624a: $26 $39
    dec h                                         ; $624c: $25
    ld a, [hl-]                                   ; $624d: $3a
    inc hl                                        ; $624e: $23
    inc a                                         ; $624f: $3c
    inc hl                                        ; $6250: $23
    ccf                                           ; $6251: $3f

jr_0f1_6252:
    inc a                                         ; $6252: $3c
    ccf                                           ; $6253: $3f
    ld hl, $3c3f                                  ; $6254: $21 $3f $3c
    inc hl                                        ; $6257: $23
    nop                                           ; $6258: $00
    inc bc                                        ; $6259: $03
    ld b, $8c                                     ; $625a: $06 $8c
    sbc b                                         ; $625c: $98
    cp $e8                                        ; $625d: $fe $e8
    cp $4a                                        ; $625f: $fe $4a
    db $fc                                        ; $6261: $fc
    ld c, [hl]                                    ; $6262: $4e
    ld hl, sp+$7a                                 ; $6263: $f8 $7a
    call z, $c4be                                 ; $6265: $cc $be $c4
    ld [bc], a                                    ; $6268: $02
    cp $8e                                        ; $6269: $fe $8e
    ld a, d                                       ; $626b: $7a
    add [hl]                                      ; $626c: $86
    db $f4                                        ; $626d: $f4
    ld c, $aa                                     ; $626e: $0e $aa
    ld e, h                                       ; $6270: $5c
    rst $10                                       ; $6271: $d7
    jr c, jr_0f1_62e3                             ; $6272: $38 $6f

    ldh a, [$90]                                  ; $6274: $f0 $90
    rst $38                                       ; $6276: $ff
    rst $28                                       ; $6277: $ef
    rra                                           ; $6278: $1f
    ld [$9102], sp                                ; $6279: $08 $02 $91
    ld [c], a                                     ; $627c: $e2
    cp $9a                                        ; $627d: $fe $9a
    and $7d                                       ; $627f: $e6 $7d
    ld b, e                                       ; $6281: $43
    dec a                                         ; $6282: $3d
    inc hl                                        ; $6283: $23
    cpl                                           ; $6284: $2f
    ld sp, $111f                                  ; $6285: $31 $1f $11
    dec e                                         ; $6288: $1d
    inc de                                        ; $6289: $13
    add hl, de                                    ; $628a: $19
    rla                                           ; $628b: $17
    ld [hl+], a                                   ; $628c: $22
    inc bc                                        ; $628d: $03
    ld a, $94                                     ; $628e: $3e $94
    ld h, $3a                                     ; $6290: $26 $3a
    ld l, $32                                     ; $6292: $2e $32
    ld e, $11                                     ; $6294: $1e $11
    ld l, $31                                     ; $6296: $2e $31
    ld l, $31                                     ; $6298: $2e $31
    ccf                                           ; $629a: $3f
    ld hl, $332d                                  ; $629b: $21 $2d $33
    dec h                                         ; $629e: $25
    dec sp                                        ; $629f: $3b
    jr z, jr_0f1_62d9                             ; $62a0: $28 $37

    inc d                                         ; $62a2: $14
    dec de                                        ; $62a3: $1b
    ld [bc], a                                    ; $62a4: $02
    rra                                           ; $62a5: $1f
    add [hl]                                      ; $62a6: $86
    add hl, bc                                    ; $62a7: $09
    ld c, $07                                     ; $62a8: $0e $07
    inc b                                         ; $62aa: $04
    ld [bc], a                                    ; $62ab: $02
    inc bc                                        ; $62ac: $03
    ld [bc], a                                    ; $62ad: $02
    rra                                           ; $62ae: $1f
    add [hl]                                      ; $62af: $86
    rst $28                                       ; $62b0: $ef
    db $fc                                        ; $62b1: $fc
    ld e, l                                       ; $62b2: $5d
    cp $bf                                        ; $62b3: $fe $bf
    rst $38                                       ; $62b5: $ff
    ld [bc], a                                    ; $62b6: $02
    ld h, b                                       ; $62b7: $60
    ld [bc], a                                    ; $62b8: $02
    ld b, b                                       ; $62b9: $40
    ld b, $80                                     ; $62ba: $06 $80
    ld b, $00                                     ; $62bc: $06 $00
    ld [$9280], sp                                ; $62be: $08 $80 $92
    rst $00                                       ; $62c1: $c7
    ld b, h                                       ; $62c2: $44
    and a                                         ; $62c3: $a7
    ld h, h                                       ; $62c4: $64
    ld e, a                                       ; $62c5: $5f
    cp h                                          ; $62c6: $bc
    push de                                       ; $62c7: $d5
    ld a, $c0                                     ; $62c8: $3e $c0
    ld b, b                                       ; $62ca: $40
    ret nz                                        ; $62cb: $c0

    ld b, b                                       ; $62cc: $40
    ld hl, sp+$78                                 ; $62cd: $f8 $78
    rst $38                                       ; $62cf: $ff
    rra                                           ; $62d0: $1f
    db $dd                                        ; $62d1: $dd
    ccf                                           ; $62d2: $3f
    ld [bc], a                                    ; $62d3: $02
    rst $38                                       ; $62d4: $ff
    adc [hl]                                      ; $62d5: $8e
    ld a, [$e1ff]                                 ; $62d6: $fa $ff $e1

jr_0f1_62d9:
    rra                                           ; $62d9: $1f
    ldh a, [rIF]                                  ; $62da: $f0 $0f
    jp hl                                         ; $62dc: $e9


    rra                                           ; $62dd: $1f
    reti                                          ; $62de: $d9


    cpl                                           ; $62df: $2f
    xor d                                         ; $62e0: $aa
    ld e, [hl]                                    ; $62e1: $5e
    ld e, h                                       ; $62e2: $5c

jr_0f1_62e3:
    xor h                                         ; $62e3: $ac
    ld [bc], a                                    ; $62e4: $02
    ldh a, [rDIV]                                 ; $62e5: $f0 $04
    nop                                           ; $62e7: $00
    ld [bc], a                                    ; $62e8: $02
    ld b, b                                       ; $62e9: $40
    sub b                                         ; $62ea: $90
    add b                                         ; $62eb: $80
    ret nz                                        ; $62ec: $c0

    sub a                                         ; $62ed: $97
    rst $38                                       ; $62ee: $ff
    adc e                                         ; $62ef: $8b
    db $f4                                        ; $62f0: $f4
    sub a                                         ; $62f1: $97
    db $ec                                        ; $62f2: $ec
    xor c                                         ; $62f3: $a9
    sub $76                                       ; $62f4: $d6 $76
    ld l, l                                       ; $62f6: $6d
    ld de, $0e1e                                  ; $62f7: $11 $1e $0e
    dec c                                         ; $62fa: $0d
    ld [bc], a                                    ; $62fb: $02
    inc bc                                        ; $62fc: $03
    inc c                                         ; $62fd: $0c
    nop                                           ; $62fe: $00
    add d                                         ; $62ff: $82
    jr z, jr_0f1_6321                             ; $6300: $28 $1f

    ld [bc], a                                    ; $6302: $02
    ccf                                           ; $6303: $3f
    ld [bc], a                                    ; $6304: $02
    rst $38                                       ; $6305: $ff
    adc h                                         ; $6306: $8c
    db $fd                                        ; $6307: $fd
    ld [bc], a                                    ; $6308: $02
    ld a, [$f705]                                 ; $6309: $fa $05 $f7
    ld [$00ff], sp                                ; $630c: $08 $ff $00
    rst $38                                       ; $630f: $ff
    nop                                           ; $6310: $00
    xor [hl]                                      ; $6311: $ae
    ld d, c                                       ; $6312: $51
    ld [bc], a                                    ; $6313: $02
    rst $38                                       ; $6314: $ff
    inc c                                         ; $6315: $0c
    nop                                           ; $6316: $00
    add c                                         ; $6317: $81
    ld [bc], a                                    ; $6318: $02
    dec b                                         ; $6319: $05
    inc bc                                        ; $631a: $03
    adc h                                         ; $631b: $8c
    ld bc, $0302                                  ; $631c: $01 $02 $03
    nop                                           ; $631f: $00
    inc bc                                        ; $6320: $03

jr_0f1_6321:
    nop                                           ; $6321: $00
    inc bc                                        ; $6322: $03
    nop                                           ; $6323: $00
    ld [bc], a                                    ; $6324: $02
    ld bc, $0003                                  ; $6325: $01 $03 $00
    ld [bc], a                                    ; $6328: $02
    inc bc                                        ; $6329: $03
    inc c                                         ; $632a: $0c
    nop                                           ; $632b: $00
    ld [bc], a                                    ; $632c: $02
    ld [bc], a                                    ; $632d: $02
    inc b                                         ; $632e: $04
    inc bc                                        ; $632f: $03
    add c                                         ; $6330: $81
    ld bc, $0303                                  ; $6331: $01 $03 $03
    add d                                         ; $6334: $82
    ld bc, $0203                                  ; $6335: $01 $03 $02
    ld [bc], a                                    ; $6338: $02
    ld [de], a                                    ; $6339: $12
    nop                                           ; $633a: $00
    rst $38                                       ; $633b: $ff
    inc hl                                        ; $633c: $23
    rrca                                          ; $633d: $0f
    rst $30                                       ; $633e: $f7
    ld a, [bc]                                    ; $633f: $0a
    jp $c200                                      ; $6340: $c3 $00 $c2


    db $fd                                        ; $6343: $fd
    or a                                          ; $6344: $b7
    ld [bc], a                                    ; $6345: $02
    ret                                           ; $6346: $c9


    db $f4                                        ; $6347: $f4
    ret z                                         ; $6348: $c8

    db $fc                                        ; $6349: $fc
    rst $00                                       ; $634a: $c7
    inc b                                         ; $634b: $04
    pop de                                        ; $634c: $d1
    ld b, $d8                                     ; $634d: $06 $d8
    ld hl, sp-$29                                 ; $634f: $f8 $d7
    nop                                           ; $6351: $00
    add sp, -$0b                                  ; $6352: $e8 $f5
    rst $20                                       ; $6354: $e7
    db $fd                                        ; $6355: $fd
    rst $20                                       ; $6356: $e7
    dec b                                         ; $6357: $05
    rst $30                                       ; $6358: $f7
    di                                            ; $6359: $f3
    rst $30                                       ; $635a: $f7
    ei                                            ; $635b: $fb
    rst $30                                       ; $635c: $f7

Jump_0f1_635d:
    inc bc                                        ; $635d: $03
    rst $30                                       ; $635e: $f7
    rlca                                          ; $635f: $07
    ld [bc], a                                    ; $6360: $02
    ld [hl], b                                    ; $6361: $70
    add l                                         ; $6362: $85
    ld hl, sp-$28                                 ; $6363: $f8 $d8
    ld hl, sp-$78                                 ; $6365: $f8 $88
    xor b                                         ; $6367: $a8
    ld [bc], a                                    ; $6368: $02
    ret c                                         ; $6369: $d8

    sub a                                         ; $636a: $97
    ld hl, sp+$67                                 ; $636b: $f8 $67
    ld a, a                                       ; $636d: $7f
    cp [hl]                                       ; $636e: $be
    pop bc                                        ; $636f: $c1
    rra                                           ; $6370: $1f
    ldh [rIE], a                                  ; $6371: $e0 $ff
    nop                                           ; $6373: $00
    dec hl                                        ; $6374: $2b
    call nc, $e9d6                                ; $6375: $d4 $d6 $e9
    dec bc                                        ; $6378: $0b
    push af                                       ; $6379: $f5
    add c                                         ; $637a: $81
    rst $38                                       ; $637b: $ff
    di                                            ; $637c: $f3
    rst $38                                       ; $637d: $ff
    inc c                                         ; $637e: $0c
    rst $38                                       ; $637f: $ff
    ld a, a                                       ; $6380: $7f
    add b                                         ; $6381: $80
    ld [bc], a                                    ; $6382: $02
    ld [$1c9e], sp                                ; $6383: $08 $9e $1c
    inc d                                         ; $6386: $14
    inc e                                         ; $6387: $1c
    inc d                                         ; $6388: $14
    ld e, $12                                     ; $6389: $1e $12
    ld e, $12                                     ; $638b: $1e $12
    ld e, $12                                     ; $638d: $1e $12
    ld e, $12                                     ; $638f: $1e $12
    ld e, $12                                     ; $6391: $1e $12
    ld e, $12                                     ; $6393: $1e $12
    ld d, $1a                                     ; $6395: $16 $1a
    rla                                           ; $6397: $17
    add hl, de                                    ; $6398: $19
    rla                                           ; $6399: $17
    add hl, de                                    ; $639a: $19
    rla                                           ; $639b: $17
    add hl, de                                    ; $639c: $19
    rrca                                          ; $639d: $0f
    add hl, bc                                    ; $639e: $09
    rrca                                          ; $639f: $0f
    add hl, bc                                    ; $63a0: $09
    rrca                                          ; $63a1: $0f
    add hl, bc                                    ; $63a2: $09
    ld b, $01                                     ; $63a3: $06 $01
    inc b                                         ; $63a5: $04
    nop                                           ; $63a6: $00
    ld [bc], a                                    ; $63a7: $02
    inc e                                         ; $63a8: $1c
    sub h                                         ; $63a9: $94
    ccf                                           ; $63aa: $3f
    inc hl                                        ; $63ab: $23
    ld a, l                                       ; $63ac: $7d
    ld b, e                                       ; $63ad: $43
    ld sp, hl                                     ; $63ae: $f9
    add a                                         ; $63af: $87
    cp d                                          ; $63b0: $ba
    rst $00                                       ; $63b1: $c7
    add l                                         ; $63b2: $85
    rst $38                                       ; $63b3: $ff
    ld a, c                                       ; $63b4: $79
    ld a, a                                       ; $63b5: $7f
    daa                                           ; $63b6: $27
    jr c, jr_0f1_63e7                             ; $63b7: $38 $2e

    ld sp, $1817                                  ; $63b9: $31 $17 $18
    inc de                                        ; $63bc: $13
    inc e                                         ; $63bd: $1c
    ld [bc], a                                    ; $63be: $02
    add b                                         ; $63bf: $80
    add l                                         ; $63c0: $85
    nop                                           ; $63c1: $00
    add b                                         ; $63c2: $80
    nop                                           ; $63c3: $00
    add b                                         ; $63c4: $80
    nop                                           ; $63c5: $00
    dec b                                         ; $63c6: $05
    add b                                         ; $63c7: $80
    ld [bc], a                                    ; $63c8: $02
    nop                                           ; $63c9: $00
    ld [bc], a                                    ; $63ca: $02
    add b                                         ; $63cb: $80
    adc c                                         ; $63cc: $89
    nop                                           ; $63cd: $00
    add b                                         ; $63ce: $80
    nop                                           ; $63cf: $00
    add b                                         ; $63d0: $80
    rst $38                                       ; $63d1: $ff
    nop                                           ; $63d2: $00
    ld a, a                                       ; $63d3: $7f
    add b                                         ; $63d4: $80
    rrca                                          ; $63d5: $0f
    ld [bc], a                                    ; $63d6: $02
    rst $38                                       ; $63d7: $ff
    and l                                         ; $63d8: $a5
    ldh a, [$f6]                                  ; $63d9: $f0 $f6
    add hl, de                                    ; $63db: $19
    add sp, $1f                                   ; $63dc: $e8 $1f
    inc a                                         ; $63de: $3c
    inc h                                         ; $63df: $24
    ld l, [hl]                                    ; $63e0: $6e
    ld [hl], d                                    ; $63e1: $72
    ld l, [hl]                                    ; $63e2: $6e
    ld [hl], d                                    ; $63e3: $72
    ld l, [hl]                                    ; $63e4: $6e
    ld [hl], d                                    ; $63e5: $72
    ld l, [hl]                                    ; $63e6: $6e

jr_0f1_63e7:
    ld [hl], d                                    ; $63e7: $72
    ld e, [hl]                                    ; $63e8: $5e
    ld d, d                                       ; $63e9: $52
    ld e, $12                                     ; $63ea: $1e $12
    scf                                           ; $63ec: $37
    add hl, sp                                    ; $63ed: $39
    ld d, a                                       ; $63ee: $57
    ld a, c                                       ; $63ef: $79
    ccf                                           ; $63f0: $3f
    ld a, c                                       ; $63f1: $79
    ld c, a                                       ; $63f2: $4f
    ld [hl], e                                    ; $63f3: $73
    db $fd                                        ; $63f4: $fd
    ld a, $2f                                     ; $63f5: $3e $2f
    di                                            ; $63f7: $f3
    rst $38                                       ; $63f8: $ff
    pop bc                                        ; $63f9: $c1
    rst $38                                       ; $63fa: $ff
    ld bc, $738d                                  ; $63fb: $01 $8d $73
    ld [bc], a                                    ; $63fe: $02
    ld [bc], a                                    ; $63ff: $02
    add d                                         ; $6400: $82
    inc bc                                        ; $6401: $03
    ld bc, $0202                                  ; $6402: $01 $02 $02
    inc b                                         ; $6405: $04
    nop                                           ; $6406: $00
    ld [bc], a                                    ; $6407: $02
    ld [bc], a                                    ; $6408: $02
    sub b                                         ; $6409: $90
    adc c                                         ; $640a: $89
    rst $38                                       ; $640b: $ff
    ld [hl], a                                    ; $640c: $77
    ld sp, hl                                     ; $640d: $f9
    ld b, l                                       ; $640e: $45
    ei                                            ; $640f: $fb
    ld h, d                                       ; $6410: $62
    cp $dc                                        ; $6411: $fe $dc
    ld e, h                                       ; $6413: $5c
    ret nz                                        ; $6414: $c0

    ld b, b                                       ; $6415: $40
    ret nz                                        ; $6416: $c0

    ld b, b                                       ; $6417: $40
    nop                                           ; $6418: $00
    add b                                         ; $6419: $80
    ld [bc], a                                    ; $641a: $02
    ret nz                                        ; $641b: $c0

    or b                                          ; $641c: $b0
    ld b, b                                       ; $641d: $40
    ret nz                                        ; $641e: $c0

    ld [$8707], sp                                ; $641f: $08 $07 $87
    rst $38                                       ; $6422: $ff
    ld a, b                                       ; $6423: $78
    ld a, a                                       ; $6424: $7f
    ld h, $39                                     ; $6425: $26 $39
    cpl                                           ; $6427: $2f
    jr nc, @+$21                                  ; $6428: $30 $1f

    db $10                                        ; $642a: $10
    dec d                                         ; $642b: $15
    dec de                                        ; $642c: $1b
    ld l, $3f                                     ; $642d: $2e $3f
    daa                                           ; $642f: $27
    jr c, jr_0f1_6480                             ; $6430: $38 $4e

    ld [hl], c                                    ; $6432: $71
    ld d, l                                       ; $6433: $55
    ld l, d                                       ; $6434: $6a
    ld c, e                                       ; $6435: $4b
    ld [hl], h                                    ; $6436: $74
    ld b, e                                       ; $6437: $43
    ld a, a                                       ; $6438: $7f
    ld a, h                                       ; $6439: $7c
    ld a, a                                       ; $643a: $7f
    ld b, e                                       ; $643b: $43
    ld a, a                                       ; $643c: $7f
    ld a, c                                       ; $643d: $79
    ld b, a                                       ; $643e: $47
    inc b                                         ; $643f: $04

jr_0f1_6440:
    inc c                                         ; $6440: $0c
    sbc b                                         ; $6441: $98
    db $fc                                        ; $6442: $fc
    ldh a, [$fc]                                  ; $6443: $f0 $fc
    ld d, h                                       ; $6445: $54
    ld hl, sp+$5c                                 ; $6446: $f8 $5c
    ldh a, [$74]                                  ; $6448: $f0 $74
    ret c                                         ; $644a: $d8

    cp h                                          ; $644b: $bc
    ret z                                         ; $644c: $c8

    ld [bc], a                                    ; $644d: $02
    db $fc                                        ; $644e: $fc
    sbc l                                         ; $644f: $9d
    ld a, b                                       ; $6450: $78
    add h                                         ; $6451: $84
    db $f4                                        ; $6452: $f4
    inc c                                         ; $6453: $0c
    xor e                                         ; $6454: $ab
    ld e, l                                       ; $6455: $5d
    rst $10                                       ; $6456: $d7

jr_0f1_6457:
    add hl, sp                                    ; $6457: $39
    ld l, a                                       ; $6458: $6f
    pop af                                        ; $6459: $f1
    sub c                                         ; $645a: $91
    rst $38                                       ; $645b: $ff
    rst $28                                       ; $645c: $ef
    rra                                           ; $645d: $1f
    pop af                                        ; $645e: $f1
    rst $38                                       ; $645f: $ff
    rla                                           ; $6460: $17
    jr jr_0f1_6482                                ; $6461: $18 $1f

    db $10                                        ; $6463: $10
    rra                                           ; $6464: $1f
    db $10                                        ; $6465: $10
    rra                                           ; $6466: $1f
    db $10                                        ; $6467: $10
    rla                                           ; $6468: $17
    jr @+$15                                      ; $6469: $18 $13

    inc e                                         ; $646b: $1c
    dec c                                         ; $646c: $0d
    ld [bc], a                                    ; $646d: $02
    ld a, [bc]                                    ; $646e: $0a
    add c                                         ; $646f: $81
    dec c                                         ; $6470: $0d
    ld [bc], a                                    ; $6471: $02
    rrca                                          ; $6472: $0f
    add e                                         ; $6473: $83
    dec b                                         ; $6474: $05
    ld b, $03                                     ; $6475: $06 $03
    ld [bc], a                                    ; $6477: $02
    ld [bc], a                                    ; $6478: $02
    add c                                         ; $6479: $81
    inc bc                                        ; $647a: $03
    ld [bc], a                                    ; $647b: $02
    ld bc, $1f02                                  ; $647c: $01 $02 $1f
    adc h                                         ; $647f: $8c

jr_0f1_6480:
    rst $28                                       ; $6480: $ef
    db $fc                                        ; $6481: $fc

jr_0f1_6482:
    ld e, l                                       ; $6482: $5d
    cp $09                                        ; $6483: $fe $09
    ld c, $47                                     ; $6485: $0e $47
    call nz, $c645                                ; $6487: $c4 $45 $c6
    add e                                         ; $648a: $83
    add d                                         ; $648b: $82
    ld b, $81                                     ; $648c: $06 $81
    add e                                         ; $648e: $83
    ld b, d                                       ; $648f: $42
    jp Jump_000_0342                              ; $6490: $c3 $42 $03


    jp $c29d                                      ; $6493: $c3 $9d $c2


    ld b, e                                       ; $6496: $43
    jp $a342                                      ; $6497: $c3 $42 $a3


    ld h, d                                       ; $649a: $62
    push hl                                       ; $649b: $e5
    ld h, $5d                                     ; $649c: $26 $5d
    cp [hl]                                       ; $649e: $be
    push de                                       ; $649f: $d5
    ld a, $a0                                     ; $64a0: $3e $a0
    ld h, b                                       ; $64a2: $60
    ldh [rNR41], a                                ; $64a3: $e0 $20
    ret nc                                        ; $64a5: $d0

    jr nc, @-$0e                                  ; $64a6: $30 $f0

    db $10                                        ; $64a8: $10
    ldh a, [rNR10]                                ; $64a9: $f0 $10
    ldh a, [rNR10]                                ; $64ab: $f0 $10
    ret nc                                        ; $64ad: $d0

    jr nc, jr_0f1_6440                            ; $64ae: $30 $90

    ld [hl], b                                    ; $64b0: $70
    jr nz, jr_0f1_64b7                            ; $64b1: $20 $04

    ldh [$8b], a                                  ; $64b3: $e0 $8b
    jr nz, jr_0f1_6457                            ; $64b5: $20 $a0

jr_0f1_64b7:
    ld h, b                                       ; $64b7: $60
    ret nz                                        ; $64b8: $c0

    ld b, b                                       ; $64b9: $40
    ret nz                                        ; $64ba: $c0

    ld b, b                                       ; $64bb: $40
    ld hl, sp+$78                                 ; $64bc: $f8 $78
    rst $38                                       ; $64be: $ff
    rra                                           ; $64bf: $1f
    ld [bc], a                                    ; $64c0: $02
    ld b, b                                       ; $64c1: $40
    sub b                                         ; $64c2: $90
    xor a                                         ; $64c3: $af
    rst $38                                       ; $64c4: $ff
    sub a                                         ; $64c5: $97
    rst $38                                       ; $64c6: $ff
    adc e                                         ; $64c7: $8b
    db $f4                                        ; $64c8: $f4
    sub a                                         ; $64c9: $97
    db $ec                                        ; $64ca: $ec
    xor c                                         ; $64cb: $a9
    sub $76                                       ; $64cc: $d6 $76
    ld l, l                                       ; $64ce: $6d
    ld de, $0e1e                                  ; $64cf: $11 $1e $0e
    dec c                                         ; $64d2: $0d
    ld [bc], a                                    ; $64d3: $02
    inc bc                                        ; $64d4: $03
    inc c                                         ; $64d5: $0c
    nop                                           ; $64d6: $00
    add d                                         ; $64d7: $82
    jr z, jr_0f1_64f9                             ; $64d8: $28 $1f

    inc b                                         ; $64da: $04
    rst $38                                       ; $64db: $ff
    adc h                                         ; $64dc: $8c
    db $fd                                        ; $64dd: $fd
    ld [bc], a                                    ; $64de: $02
    ld a, [$f705]                                 ; $64df: $fa $05 $f7
    ld [$00ff], sp                                ; $64e2: $08 $ff $00
    rst $38                                       ; $64e5: $ff
    nop                                           ; $64e6: $00
    xor [hl]                                      ; $64e7: $ae
    ld d, c                                       ; $64e8: $51
    ld [bc], a                                    ; $64e9: $02
    rst $38                                       ; $64ea: $ff
    inc c                                         ; $64eb: $0c
    nop                                           ; $64ec: $00
    add d                                         ; $64ed: $82
    or a                                          ; $64ee: $b7
    rst $08                                       ; $64ef: $cf
    ld [bc], a                                    ; $64f0: $02
    rst $38                                       ; $64f1: $ff
    adc [hl]                                      ; $64f2: $8e
    cp $ff                                        ; $64f3: $fe $ff
    ld a, b                                       ; $64f5: $78
    add a                                         ; $64f6: $87
    db $fc                                        ; $64f7: $fc
    inc bc                                        ; $64f8: $03

jr_0f1_64f9:
    ld a, [$f607]                                 ; $64f9: $fa $07 $f6
    dec bc                                        ; $64fc: $0b
    xor d                                         ; $64fd: $aa
    ld d, a                                       ; $64fe: $57
    rst $10                                       ; $64ff: $d7
    dec hl                                        ; $6500: $2b
    ld [bc], a                                    ; $6501: $02
    db $fc                                        ; $6502: $fc
    inc c                                         ; $6503: $0c
    nop                                           ; $6504: $00
    add d                                         ; $6505: $82
    ld b, $0e                                     ; $6506: $06 $0e
    ld [bc], a                                    ; $6508: $02
    rrca                                          ; $6509: $0f
    adc d                                         ; $650a: $8a
    dec bc                                        ; $650b: $0b
    rrca                                          ; $650c: $0f
    dec b                                         ; $650d: $05
    rrca                                          ; $650e: $0f
    inc bc                                        ; $650f: $03
    rrca                                          ; $6510: $0f
    dec b                                         ; $6511: $05
    rrca                                          ; $6512: $0f
    ld b, $0e                                     ; $6513: $06 $0e
    ld [bc], a                                    ; $6515: $02
    ld [$0010], sp                                ; $6516: $08 $10 $00
    rst $38                                       ; $6519: $ff
    inc hl                                        ; $651a: $23
    rrca                                          ; $651b: $0f
    rst $30                                       ; $651c: $f7
    ld a, [bc]                                    ; $651d: $0a
    jp $c200                                      ; $651e: $c3 $00 $c2


    cp $b7                                        ; $6521: $fe $b7
    inc b                                         ; $6523: $04
    ret                                           ; $6524: $c9


    push af                                       ; $6525: $f5
    ret z                                         ; $6526: $c8

    db $fd                                        ; $6527: $fd
    rst $00                                       ; $6528: $c7
    dec b                                         ; $6529: $05
    rst $08                                       ; $652a: $cf
    ld [$fad8], sp                                ; $652b: $08 $d8 $fa
    rst $10                                       ; $652e: $d7
    ld bc, $f5e7                                  ; $652f: $01 $e7 $f5
    rst $20                                       ; $6532: $e7
    db $fd                                        ; $6533: $fd
    rst $20                                       ; $6534: $e7
    dec b                                         ; $6535: $05
    rst $30                                       ; $6536: $f7
    di                                            ; $6537: $f3
    rst $30                                       ; $6538: $f7
    ei                                            ; $6539: $fb
    rst $30                                       ; $653a: $f7
    inc bc                                        ; $653b: $03
    rst $30                                       ; $653c: $f7
    rlca                                          ; $653d: $07
    ld [bc], a                                    ; $653e: $02
    ld [hl], b                                    ; $653f: $70
    add l                                         ; $6540: $85
    ld hl, sp-$28                                 ; $6541: $f8 $d8
    ld hl, sp-$78                                 ; $6543: $f8 $88
    xor b                                         ; $6545: $a8
    ld [bc], a                                    ; $6546: $02
    ret c                                         ; $6547: $d8

    sub a                                         ; $6548: $97
    ld hl, sp+$67                                 ; $6549: $f8 $67
    ld a, a                                       ; $654b: $7f
    cp [hl]                                       ; $654c: $be
    pop bc                                        ; $654d: $c1
    rra                                           ; $654e: $1f
    ldh [rIE], a                                  ; $654f: $e0 $ff
    nop                                           ; $6551: $00
    dec hl                                        ; $6552: $2b
    call nc, $e9d6                                ; $6553: $d4 $d6 $e9
    dec bc                                        ; $6556: $0b
    push af                                       ; $6557: $f5
    add c                                         ; $6558: $81
    rst $38                                       ; $6559: $ff
    di                                            ; $655a: $f3
    rst $38                                       ; $655b: $ff
    inc c                                         ; $655c: $0c
    rst $38                                       ; $655d: $ff
    ld a, a                                       ; $655e: $7f
    add b                                         ; $655f: $80
    ld [bc], a                                    ; $6560: $02
    db $10                                        ; $6561: $10
    sbc [hl]                                      ; $6562: $9e
    jr c, jr_0f1_658d                             ; $6563: $38 $28

    jr c, jr_0f1_658f                             ; $6565: $38 $28

    inc a                                         ; $6567: $3c
    inc h                                         ; $6568: $24
    inc a                                         ; $6569: $3c
    inc h                                         ; $656a: $24
    inc a                                         ; $656b: $3c
    inc h                                         ; $656c: $24
    inc a                                         ; $656d: $3c
    inc h                                         ; $656e: $24
    ld l, $32                                     ; $656f: $2e $32
    ld l, $32                                     ; $6571: $2e $32
    ld l, $32                                     ; $6573: $2e $32
    ld e, $12                                     ; $6575: $1e $12
    ld e, $12                                     ; $6577: $1e $12
    ld e, $12                                     ; $6579: $1e $12
    ld d, $1a                                     ; $657b: $16 $1a
    rla                                           ; $657d: $17
    add hl, de                                    ; $657e: $19
    rla                                           ; $657f: $17
    add hl, de                                    ; $6580: $19
    ld b, $01                                     ; $6581: $06 $01
    inc b                                         ; $6583: $04
    nop                                           ; $6584: $00
    ld [bc], a                                    ; $6585: $02
    inc e                                         ; $6586: $1c
    sub h                                         ; $6587: $94
    ccf                                           ; $6588: $3f
    inc hl                                        ; $6589: $23
    ld a, l                                       ; $658a: $7d
    ld b, e                                       ; $658b: $43
    ld sp, hl                                     ; $658c: $f9

jr_0f1_658d:
    add a                                         ; $658d: $87
    cp e                                          ; $658e: $bb

jr_0f1_658f:
    rst $00                                       ; $658f: $c7
    add h                                         ; $6590: $84
    rst $38                                       ; $6591: $ff
    ld a, b                                       ; $6592: $78
    ld a, a                                       ; $6593: $7f
    daa                                           ; $6594: $27
    jr c, jr_0f1_65ae                             ; $6595: $38 $17

    jr jr_0f1_65ac                                ; $6597: $18 $13

    inc e                                         ; $6599: $1c
    add hl, bc                                    ; $659a: $09
    ld c, $02                                     ; $659b: $0e $02
    add b                                         ; $659d: $80
    add l                                         ; $659e: $85
    nop                                           ; $659f: $00
    add b                                         ; $65a0: $80
    nop                                           ; $65a1: $00
    add b                                         ; $65a2: $80
    nop                                           ; $65a3: $00
    dec b                                         ; $65a4: $05
    add b                                         ; $65a5: $80
    ld [bc], a                                    ; $65a6: $02
    nop                                           ; $65a7: $00
    ld [bc], a                                    ; $65a8: $02
    add b                                         ; $65a9: $80
    adc c                                         ; $65aa: $89
    nop                                           ; $65ab: $00

jr_0f1_65ac:
    add b                                         ; $65ac: $80
    nop                                           ; $65ad: $00

jr_0f1_65ae:
    add b                                         ; $65ae: $80
    ld a, a                                       ; $65af: $7f
    add b                                         ; $65b0: $80
    cp a                                          ; $65b1: $bf
    ret nz                                        ; $65b2: $c0

    adc e                                         ; $65b3: $8b
    ld [bc], a                                    ; $65b4: $02
    rst $38                                       ; $65b5: $ff
    and l                                         ; $65b6: $a5
    ld a, b                                       ; $65b7: $78
    ld a, e                                       ; $65b8: $7b
    adc h                                         ; $65b9: $8c
    db $f4                                        ; $65ba: $f4
    rrca                                          ; $65bb: $0f
    ld e, $12                                     ; $65bc: $1e $12
    ld e, [hl]                                    ; $65be: $5e
    ld d, d                                       ; $65bf: $52
    ld e, [hl]                                    ; $65c0: $5e
    ld d, d                                       ; $65c1: $52
    ld d, a                                       ; $65c2: $57
    ld e, c                                       ; $65c3: $59
    ld d, a                                       ; $65c4: $57
    ld e, c                                       ; $65c5: $59
    ld d, a                                       ; $65c6: $57
    ld e, c                                       ; $65c7: $59
    rrca                                          ; $65c8: $0f
    add hl, bc                                    ; $65c9: $09
    ccf                                           ; $65ca: $3f
    add hl, sp                                    ; $65cb: $39
    ld c, e                                       ; $65cc: $4b
    ld a, h                                       ; $65cd: $7c
    rra                                           ; $65ce: $1f
    ld a, h                                       ; $65cf: $7c
    daa                                           ; $65d0: $27
    ld a, c                                       ; $65d1: $79
    sbc $3f                                       ; $65d2: $de $3f
    sub a                                         ; $65d4: $97
    ld a, c                                       ; $65d5: $79
    rst $38                                       ; $65d6: $ff
    ldh [rIE], a                                  ; $65d7: $e0 $ff
    nop                                           ; $65d9: $00

Jump_0f1_65da:
    and [hl]                                      ; $65da: $a6
    ld e, c                                       ; $65db: $59
    inc b                                         ; $65dc: $04
    inc b                                         ; $65dd: $04
    ld [bc], a                                    ; $65de: $02
    ld b, $82                                     ; $65df: $06 $82
    rlca                                          ; $65e1: $07
    ld bc, $0602                                  ; $65e2: $01 $02 $06
    inc b                                         ; $65e5: $04
    inc b                                         ; $65e6: $04
    ld [bc], a                                    ; $65e7: $02
    ld b, $81                                     ; $65e8: $06 $81
    adc d                                         ; $65ea: $8a
    ld [bc], a                                    ; $65eb: $02
    cp $85                                        ; $65ec: $fe $85
    ld a, [c]                                     ; $65ee: $f2
    adc d                                         ; $65ef: $8a
    or $c4                                        ; $65f0: $f6 $c4
    db $fc                                        ; $65f2: $fc
    ld [bc], a                                    ; $65f3: $02
    cp b                                          ; $65f4: $b8
    inc b                                         ; $65f5: $04
    add b                                         ; $65f6: $80
    ld [bc], a                                    ; $65f7: $02
    nop                                           ; $65f8: $00
    ret nz                                        ; $65f9: $c0

    jr jr_0f1_6603                                ; $65fa: $18 $07

    add a                                         ; $65fc: $87
    rst $38                                       ; $65fd: $ff
    ld a, b                                       ; $65fe: $78
    ld a, a                                       ; $65ff: $7f
    ld c, [hl]                                    ; $6600: $4e
    ld [hl], c                                    ; $6601: $71
    ld e, a                                       ; $6602: $5f

jr_0f1_6603:
    ld h, b                                       ; $6603: $60
    ccf                                           ; $6604: $3f
    jr nz, jr_0f1_6630                            ; $6605: $20 $29

    scf                                           ; $6607: $37
    ld e, [hl]                                    ; $6608: $5e
    ld a, a                                       ; $6609: $7f
    ld c, a                                       ; $660a: $4f
    ld [hl], b                                    ; $660b: $70
    sbc [hl]                                      ; $660c: $9e
    pop hl                                        ; $660d: $e1
    or l                                          ; $660e: $b5
    jp z, $e49b                                   ; $660f: $ca $9b $e4

    add e                                         ; $6612: $83
    rst $38                                       ; $6613: $ff
    ld sp, hl                                     ; $6614: $f9
    cp $87                                        ; $6615: $fe $87
    rst $38                                       ; $6617: $ff
    ld [hl], d                                    ; $6618: $72
    adc [hl]                                      ; $6619: $8e
    ld [bc], a                                    ; $661a: $02
    ld c, $4c                                     ; $661b: $0e $4c
    ld a, [hl]                                    ; $661d: $7e
    ld [hl], b                                    ; $661e: $70
    ld a, [hl]                                    ; $661f: $7e
    jr z, jr_0f1_66a0                             ; $6620: $28 $7e

    ld l, $78                                     ; $6622: $2e $78
    ld a, [hl-]                                   ; $6624: $3a
    ld l, h                                       ; $6625: $6c
    ld e, [hl]                                    ; $6626: $5e
    ld h, h                                       ; $6627: $64
    ld a, h                                       ; $6628: $7c
    ld a, [hl]                                    ; $6629: $7e
    dec sp                                        ; $662a: $3b
    ld b, a                                       ; $662b: $47
    ld a, e                                       ; $662c: $7b
    rlca                                          ; $662d: $07
    ld d, l                                       ; $662e: $55
    cpl                                           ; $662f: $2f

jr_0f1_6630:
    ld l, e                                       ; $6630: $6b
    dec e                                         ; $6631: $1d
    scf                                           ; $6632: $37
    ld a, c                                       ; $6633: $79
    ld c, c                                       ; $6634: $49
    ld a, a                                       ; $6635: $7f

jr_0f1_6636:
    ld l, a                                       ; $6636: $6f
    rra                                           ; $6637: $1f
    ld [hl], c                                    ; $6638: $71
    ld a, a                                       ; $6639: $7f
    ld [bc], a                                    ; $663a: $02
    ld [$0f8d], sp                                ; $663b: $08 $8d $0f
    ld [$080f], sp                                ; $663e: $08 $0f $08
    rla                                           ; $6641: $17
    jr jr_0f1_6663                                ; $6642: $18 $1f

    db $10                                        ; $6644: $10
    rla                                           ; $6645: $17
    jr @+$15                                      ; $6646: $18 $13

    inc e                                         ; $6648: $1c
    dec c                                         ; $6649: $0d
    ld [bc], a                                    ; $664a: $02
    ld a, [bc]                                    ; $664b: $0a
    add c                                         ; $664c: $81
    dec c                                         ; $664d: $0d
    ld [bc], a                                    ; $664e: $02
    rrca                                          ; $664f: $0f
    add e                                         ; $6650: $83
    dec b                                         ; $6651: $05
    ld b, $03                                     ; $6652: $06 $03
    ld [bc], a                                    ; $6654: $02
    ld [bc], a                                    ; $6655: $02
    add c                                         ; $6656: $81
    inc bc                                        ; $6657: $03
    ld [bc], a                                    ; $6658: $02
    ld bc, $1f02                                  ; $6659: $01 $02 $1f
    adc h                                         ; $665c: $8c
    rst $28                                       ; $665d: $ef
    db $fc                                        ; $665e: $fc
    inc b                                         ; $665f: $04
    rlca                                          ; $6660: $07
    and e                                         ; $6661: $a3
    ld h, d                                       ; $6662: $62

jr_0f1_6663:
    and d                                         ; $6663: $a2
    ld h, e                                       ; $6664: $63
    pop bc                                        ; $6665: $c1
    ld b, c                                       ; $6666: $41
    ld b, b                                       ; $6667: $40
    ret nz                                        ; $6668: $c0

    inc b                                         ; $6669: $04
    add b                                         ; $666a: $80
    add e                                         ; $666b: $83
    ld b, b                                       ; $666c: $40
    ret nz                                        ; $666d: $c0

    ld b, c                                       ; $666e: $41
    inc b                                         ; $666f: $04

jr_0f1_6670:
    pop bc                                        ; $6670: $c1
    sbc h                                         ; $6671: $9c
    ld b, c                                       ; $6672: $41
    pop bc                                        ; $6673: $c1

jr_0f1_6674:
    ld b, c                                       ; $6674: $41
    and d                                         ; $6675: $a2
    ld h, e                                       ; $6676: $63
    db $e3                                        ; $6677: $e3
    ld [hl+], a                                   ; $6678: $22
    ld e, l                                       ; $6679: $5d
    cp [hl]                                       ; $667a: $be
    push de                                       ; $667b: $d5
    ld a, $d0                                     ; $667c: $3e $d0
    jr nc, jr_0f1_6670                            ; $667e: $30 $f0

    db $10                                        ; $6680: $10
    add sp, $18                                   ; $6681: $e8 $18
    ld a, b                                       ; $6683: $78
    adc b                                         ; $6684: $88
    ld hl, sp-$78                                 ; $6685: $f8 $88
    ld hl, sp-$78                                 ; $6687: $f8 $88
    add sp, -$68                                  ; $6689: $e8 $98
    ret z                                         ; $668b: $c8

    cp b                                          ; $668c: $b8
    db $10                                        ; $668d: $10
    inc bc                                        ; $668e: $03
    ldh a, [$9e]                                  ; $668f: $f0 $9e
    ret nc                                        ; $6691: $d0

    jr nc, jr_0f1_6674                            ; $6692: $30 $e0

    jr nz, jr_0f1_6636                            ; $6694: $20 $a0

    ld h, b                                       ; $6696: $60
    ret nz                                        ; $6697: $c0

    ld b, b                                       ; $6698: $40
    ld hl, sp+$78                                 ; $6699: $f8 $78
    rst $38                                       ; $669b: $ff
    rra                                           ; $669c: $1f
    ld d, a                                       ; $669d: $57
    ld a, a                                       ; $669e: $7f
    xor a                                         ; $669f: $af

jr_0f1_66a0:
    rst $38                                       ; $66a0: $ff
    sub a                                         ; $66a1: $97
    rst $38                                       ; $66a2: $ff
    adc e                                         ; $66a3: $8b
    db $f4                                        ; $66a4: $f4
    sub a                                         ; $66a5: $97
    db $ec                                        ; $66a6: $ec
    xor c                                         ; $66a7: $a9
    sub $76                                       ; $66a8: $d6 $76
    ld l, l                                       ; $66aa: $6d
    ld de, $0e1e                                  ; $66ab: $11 $1e $0e
    dec c                                         ; $66ae: $0d
    ld [bc], a                                    ; $66af: $02
    inc bc                                        ; $66b0: $03
    inc c                                         ; $66b1: $0c
    nop                                           ; $66b2: $00
    add d                                         ; $66b3: $82
    ld l, b                                       ; $66b4: $68
    sbc a                                         ; $66b5: $9f
    inc b                                         ; $66b6: $04
    rst $38                                       ; $66b7: $ff
    adc h                                         ; $66b8: $8c
    db $fd                                        ; $66b9: $fd
    ld [bc], a                                    ; $66ba: $02
    ld a, [$f705]                                 ; $66bb: $fa $05 $f7
    ld [$00ff], sp                                ; $66be: $08 $ff $00
    rst $38                                       ; $66c1: $ff
    nop                                           ; $66c2: $00
    xor [hl]                                      ; $66c3: $ae
    ld d, c                                       ; $66c4: $51
    ld [bc], a                                    ; $66c5: $02
    rst $38                                       ; $66c6: $ff
    inc c                                         ; $66c7: $0c
    nop                                           ; $66c8: $00
    add d                                         ; $66c9: $82
    or a                                          ; $66ca: $b7
    rst $08                                       ; $66cb: $cf
    ld [bc], a                                    ; $66cc: $02
    rst $38                                       ; $66cd: $ff
    adc [hl]                                      ; $66ce: $8e
    cp $ff                                        ; $66cf: $fe $ff
    ld a, b                                       ; $66d1: $78
    add a                                         ; $66d2: $87
    db $fc                                        ; $66d3: $fc
    inc bc                                        ; $66d4: $03
    ld a, [$f607]                                 ; $66d5: $fa $07 $f6
    dec bc                                        ; $66d8: $0b
    xor d                                         ; $66d9: $aa
    ld d, a                                       ; $66da: $57
    rst $10                                       ; $66db: $d7
    dec hl                                        ; $66dc: $2b

jr_0f1_66dd:
    ld [bc], a                                    ; $66dd: $02
    db $fc                                        ; $66de: $fc
    inc c                                         ; $66df: $0c
    nop                                           ; $66e0: $00
    add d                                         ; $66e1: $82
    ld b, $0e                                     ; $66e2: $06 $0e
    ld [bc], a                                    ; $66e4: $02
    rrca                                          ; $66e5: $0f
    adc d                                         ; $66e6: $8a
    dec bc                                        ; $66e7: $0b
    rrca                                          ; $66e8: $0f
    dec b                                         ; $66e9: $05
    rrca                                          ; $66ea: $0f
    inc bc                                        ; $66eb: $03
    rrca                                          ; $66ec: $0f
    dec b                                         ; $66ed: $05
    rrca                                          ; $66ee: $0f
    ld b, $0e                                     ; $66ef: $06 $0e
    ld [bc], a                                    ; $66f1: $02
    ld [$0010], sp                                ; $66f2: $08 $10 $00
    rst $38                                       ; $66f5: $ff
    inc hl                                        ; $66f6: $23
    rrca                                          ; $66f7: $0f
    rst $30                                       ; $66f8: $f7
    ld a, [bc]                                    ; $66f9: $0a
    jp $c300                                      ; $66fa: $c3 $00 $c3


    rst $38                                       ; $66fd: $ff
    or a                                          ; $66fe: $b7
    ld b, $c9                                     ; $66ff: $06 $c9
    rst $30                                       ; $6701: $f7
    db $d3                                        ; $6702: $d3
    rst $38                                       ; $6703: $ff
    rst $00                                       ; $6704: $c7
    rlca                                          ; $6705: $07
    rst $08                                       ; $6706: $cf
    ld a, [bc]                                    ; $6707: $0a
    reti                                          ; $6708: $d9


    ei                                            ; $6709: $fb
    rst $10                                       ; $670a: $d7
    ld [bc], a                                    ; $670b: $02
    rst $20                                       ; $670c: $e7
    push af                                       ; $670d: $f5
    rst $20                                       ; $670e: $e7
    db $fd                                        ; $670f: $fd
    rst $20                                       ; $6710: $e7
    dec b                                         ; $6711: $05
    rst $30                                       ; $6712: $f7
    di                                            ; $6713: $f3
    rst $30                                       ; $6714: $f7
    ei                                            ; $6715: $fb
    rst $30                                       ; $6716: $f7
    inc bc                                        ; $6717: $03
    rst $30                                       ; $6718: $f7
    rlca                                          ; $6719: $07
    ld [bc], a                                    ; $671a: $02
    ld [hl], b                                    ; $671b: $70
    add l                                         ; $671c: $85
    ld hl, sp-$28                                 ; $671d: $f8 $d8
    ld hl, sp-$78                                 ; $671f: $f8 $88
    xor b                                         ; $6721: $a8
    ld [bc], a                                    ; $6722: $02
    ret c                                         ; $6723: $d8

    sub a                                         ; $6724: $97
    ld hl, sp+$67                                 ; $6725: $f8 $67
    ld a, a                                       ; $6727: $7f
    cp [hl]                                       ; $6728: $be
    pop bc                                        ; $6729: $c1
    rra                                           ; $672a: $1f
    ldh [rIE], a                                  ; $672b: $e0 $ff
    nop                                           ; $672d: $00
    dec hl                                        ; $672e: $2b
    call nc, $e9d6                                ; $672f: $d4 $d6 $e9
    dec bc                                        ; $6732: $0b
    push af                                       ; $6733: $f5
    add c                                         ; $6734: $81
    rst $38                                       ; $6735: $ff
    di                                            ; $6736: $f3
    rst $38                                       ; $6737: $ff
    inc c                                         ; $6738: $0c
    rst $38                                       ; $6739: $ff
    ccf                                           ; $673a: $3f
    ret nz                                        ; $673b: $c0

    ld [bc], a                                    ; $673c: $02
    jr nz, jr_0f1_66dd                            ; $673d: $20 $9e

    ld [hl], b                                    ; $673f: $70
    ld d, b                                       ; $6740: $50
    ld [hl], b                                    ; $6741: $70
    ld d, b                                       ; $6742: $50
    ld a, b                                       ; $6743: $78
    ld c, b                                       ; $6744: $48
    ld e, b                                       ; $6745: $58
    ld l, b                                       ; $6746: $68
    ld e, b                                       ; $6747: $58
    ld l, b                                       ; $6748: $68
    inc a                                         ; $6749: $3c
    inc h                                         ; $674a: $24
    inc a                                         ; $674b: $3c
    inc h                                         ; $674c: $24
    inc l                                         ; $674d: $2c
    inc [hl]                                      ; $674e: $34
    ld l, $32                                     ; $674f: $2e $32
    ld l, $32                                     ; $6751: $2e $32
    ld e, $12                                     ; $6753: $1e $12
    ld e, $12                                     ; $6755: $1e $12
    ld d, $1a                                     ; $6757: $16 $1a
    rla                                           ; $6759: $17
    add hl, de                                    ; $675a: $19
    rla                                           ; $675b: $17
    add hl, de                                    ; $675c: $19
    ld [bc], a                                    ; $675d: $02
    ld bc, $0286                                  ; $675e: $01 $86 $02
    inc bc                                        ; $6761: $03
    ld [bc], a                                    ; $6762: $02
    inc bc                                        ; $6763: $03
    ld [bc], a                                    ; $6764: $02
    inc bc                                        ; $6765: $03
    inc b                                         ; $6766: $04
    ld bc, $1c02                                  ; $6767: $01 $02 $1c
    sub a                                         ; $676a: $97
    ccf                                           ; $676b: $3f
    inc hl                                        ; $676c: $23
    ld a, l                                       ; $676d: $7d
    ld b, e                                       ; $676e: $43
    ld sp, hl                                     ; $676f: $f9
    add a                                         ; $6770: $87
    cp e                                          ; $6771: $bb
    rst $00                                       ; $6772: $c7
    add h                                         ; $6773: $84
    rst $38                                       ; $6774: $ff
    ld a, b                                       ; $6775: $78
    ld a, a                                       ; $6776: $7f
    daa                                           ; $6777: $27
    jr c, jr_0f1_67a9                             ; $6778: $38 $2f

    jr nc, jr_0f1_6793                            ; $677a: $30 $17

jr_0f1_677c:
    jr @+$81                                      ; $677c: $18 $7f

    add b                                         ; $677e: $80
    cp a                                          ; $677f: $bf
    ret nz                                        ; $6780: $c0

    adc a                                         ; $6781: $8f
    ld [bc], a                                    ; $6782: $02
    rst $38                                       ; $6783: $ff
    cp c                                          ; $6784: $b9
    ld a, b                                       ; $6785: $78
    ld a, e                                       ; $6786: $7b
    adc h                                         ; $6787: $8c
    db $f4                                        ; $6788: $f4
    rrca                                          ; $6789: $0f
    call nz, Call_0f1_7f3f                        ; $678a: $c4 $3f $7f
    rst $38                                       ; $678d: $ff
    add l                                         ; $678e: $85
    rst $38                                       ; $678f: $ff
    push hl                                       ; $6790: $e5
    rra                                           ; $6791: $1f
    rst $30                                       ; $6792: $f7

jr_0f1_6793:
    dec c                                         ; $6793: $0d
    ei                                            ; $6794: $fb
    inc c                                         ; $6795: $0c
    rst $18                                       ; $6796: $df
    ccf                                           ; $6797: $3f
    rst $20                                       ; $6798: $e7
    ld hl, sp-$01                                 ; $6799: $f8 $ff
    nop                                           ; $679b: $00
    ld [$2e15], a                                 ; $679c: $ea $15 $2e
    ld [hl-], a                                   ; $679f: $32
    ld e, $12                                     ; $67a0: $1e $12
    sbc [hl]                                      ; $67a2: $9e
    sub d                                         ; $67a3: $92
    sbc a                                         ; $67a4: $9f
    sub c                                         ; $67a5: $91
    sub a                                         ; $67a6: $97
    sbc c                                         ; $67a7: $99
    sub a                                         ; $67a8: $97

jr_0f1_67a9:
    sbc c                                         ; $67a9: $99
    sub a                                         ; $67aa: $97
    sbc c                                         ; $67ab: $99
    rrca                                          ; $67ac: $0f
    add hl, bc                                    ; $67ad: $09
    ld l, a                                       ; $67ae: $6f
    ld l, b                                       ; $67af: $68
    sbc e                                         ; $67b0: $9b
    db $fc                                        ; $67b1: $fc
    rra                                           ; $67b2: $1f
    db $fc                                        ; $67b3: $fc
    and a                                         ; $67b4: $a7
    ld a, c                                       ; $67b5: $79
    sbc $3f                                       ; $67b6: $de $3f
    sub a                                         ; $67b8: $97
    ld a, c                                       ; $67b9: $79
    rst $38                                       ; $67ba: $ff
    ldh [rIE], a                                  ; $67bb: $e0 $ff
    nop                                           ; $67bd: $00
    ld b, $04                                     ; $67be: $06 $04
    ld [bc], a                                    ; $67c0: $02
    ld b, $82                                     ; $67c1: $06 $82
    rlca                                          ; $67c3: $07
    ld bc, $0602                                  ; $67c4: $01 $02 $06
    inc b                                         ; $67c7: $04
    inc b                                         ; $67c8: $04
    adc d                                         ; $67c9: $8a
    inc [hl]                                      ; $67ca: $34
    call z, $f888                                 ; $67cb: $cc $88 $f8
    ld a, b                                       ; $67ce: $78
    ld hl, sp+$18                                 ; $67cf: $f8 $18
    add sp, $10                                   ; $67d1: $e8 $10
    ldh a, [rSC]                                  ; $67d3: $f0 $02
    ldh [rDIV], a                                 ; $67d5: $e0 $04
    nop                                           ; $67d7: $00
    add e                                         ; $67d8: $83
    sub b                                         ; $67d9: $90
    ldh [rLCDC], a                                ; $67da: $e0 $40
    inc bc                                        ; $67dc: $03
    ld [hl], b                                    ; $67dd: $70
    add l                                         ; $67de: $85
    ld b, b                                       ; $67df: $40
    ld [hl], b                                    ; $67e0: $70
    ld d, b                                       ; $67e1: $50
    ld h, b                                       ; $67e2: $60
    jr nc, jr_0f1_67e7                            ; $67e3: $30 $02

    jr nz, jr_0f1_67ea                            ; $67e5: $20 $03

jr_0f1_67e7:
    jr nc, jr_0f1_677c                            ; $67e7: $30 $93

    ld b, b                                       ; $67e9: $40

jr_0f1_67ea:
    ld [hl], b                                    ; $67ea: $70
    ld d, b                                       ; $67eb: $50
    ld h, b                                       ; $67ec: $60
    or l                                          ; $67ed: $b5
    jp z, $e49b                                   ; $67ee: $ca $9b $e4

    add a                                         ; $67f1: $87
    rst $38                                       ; $67f2: $ff
    ld sp, hl                                     ; $67f3: $f9
    cp $07                                        ; $67f4: $fe $07
    rst $38                                       ; $67f6: $ff
    ld a, [c]                                     ; $67f7: $f2
    ld c, $05                                     ; $67f8: $0e $05
    ld [bc], a                                    ; $67fa: $02
    ld bc, $0703                                  ; $67fb: $01 $03 $07
    add e                                         ; $67fe: $83
    ld bc, $0107                                  ; $67ff: $01 $07 $01
    ld [bc], a                                    ; $6802: $02
    rlca                                          ; $6803: $07
    sub l                                         ; $6804: $95
    ld bc, $0503                                  ; $6805: $01 $03 $05
    rlca                                          ; $6808: $07
    dec b                                         ; $6809: $05
    inc b                                         ; $680a: $04
    ld b, $02                                     ; $680b: $06 $02
    ld b, $03                                     ; $680d: $06 $03
    rlca                                          ; $680f: $07
    dec b                                         ; $6810: $05
    rlca                                          ; $6811: $07
    ld l, e                                       ; $6812: $6b
    dec e                                         ; $6813: $1d
    scf                                           ; $6814: $37
    ld a, c                                       ; $6815: $79
    ld c, c                                       ; $6816: $49
    ld a, a                                       ; $6817: $7f
    ld l, a                                       ; $6818: $6f
    rra                                           ; $6819: $1f
    inc b                                         ; $681a: $04
    inc b                                         ; $681b: $04
    adc e                                         ; $681c: $8b
    rlca                                          ; $681d: $07
    inc b                                         ; $681e: $04
    dec bc                                        ; $681f: $0b
    inc c                                         ; $6820: $0c
    rrca                                          ; $6821: $0f
    ld [$0c0b], sp                                ; $6822: $08 $0b $0c
    add hl, bc                                    ; $6825: $09
    ld c, $06                                     ; $6826: $0e $06
    ld [bc], a                                    ; $6828: $02
    dec b                                         ; $6829: $05
    add c                                         ; $682a: $81
    ld b, $02                                     ; $682b: $06 $02
    rlca                                          ; $682d: $07
    add c                                         ; $682e: $81
    inc bc                                        ; $682f: $03
    ld [bc], a                                    ; $6830: $02
    ld [bc], a                                    ; $6831: $02
    add c                                         ; $6832: $81
    inc bc                                        ; $6833: $03
    inc b                                         ; $6834: $04
    ld bc, $1f02                                  ; $6835: $01 $02 $1f
    add d                                         ; $6838: $82
    rst $28                                       ; $6839: $ef
    db $fc                                        ; $683a: $fc
    ld [bc], a                                    ; $683b: $02
    inc bc                                        ; $683c: $03
    adc a                                         ; $683d: $8f
    ld [bc], a                                    ; $683e: $02
    inc bc                                        ; $683f: $03
    pop de                                        ; $6840: $d1
    ld sp, $31d1                                  ; $6841: $31 $d1 $31
    ldh [rNR41], a                                ; $6844: $e0 $20
    and b                                         ; $6846: $a0
    ld h, b                                       ; $6847: $60
    ret nz                                        ; $6848: $c0

    ld b, b                                       ; $6849: $40
    and b                                         ; $684a: $a0
    ld h, b                                       ; $684b: $60
    jr nz, jr_0f1_6851                            ; $684c: $20 $03

    ldh [$9f], a                                  ; $684e: $e0 $9f
    and b                                         ; $6850: $a0

jr_0f1_6851:
    ld h, b                                       ; $6851: $60
    ldh [rNR41], a                                ; $6852: $e0 $20
    pop hl                                        ; $6854: $e1
    ld hl, $a362                                  ; $6855: $21 $62 $a3
    ld e, l                                       ; $6858: $5d
    cp [hl]                                       ; $6859: $be
    push de                                       ; $685a: $d5
    ld a, $88                                     ; $685b: $3e $88
    ld hl, sp+$68                                 ; $685d: $f8 $68
    sbc b                                         ; $685f: $98
    db $f4                                        ; $6860: $f4
    inc c                                         ; $6861: $0c
    ld a, h                                       ; $6862: $7c
    add h                                         ; $6863: $84
    cp h                                          ; $6864: $bc
    call nz, $447c                                ; $6865: $c4 $7c $44
    ld e, h                                       ; $6868: $5c
    ld h, h                                       ; $6869: $64
    ld d, h                                       ; $686a: $54
    ld l, h                                       ; $686b: $6c
    ld [hl], h                                    ; $686c: $74
    ld c, h                                       ; $686d: $4c
    adc b                                         ; $686e: $88
    inc bc                                        ; $686f: $03
    ld hl, sp-$64                                 ; $6870: $f8 $9c
    add sp, -$68                                  ; $6872: $e8 $98
    ldh a, [rNR10]                                ; $6874: $f0 $10
    ldh [rNR41], a                                ; $6876: $e0 $20
    ld hl, sp+$78                                 ; $6878: $f8 $78
    rst $38                                       ; $687a: $ff
    rra                                           ; $687b: $1f
    ld d, a                                       ; $687c: $57
    ld a, a                                       ; $687d: $7f
    xor a                                         ; $687e: $af
    rst $38                                       ; $687f: $ff
    sub a                                         ; $6880: $97
    rst $38                                       ; $6881: $ff
    adc e                                         ; $6882: $8b
    db $f4                                        ; $6883: $f4
    sub a                                         ; $6884: $97
    db $ec                                        ; $6885: $ec
    xor c                                         ; $6886: $a9
    sub $76                                       ; $6887: $d6 $76
    ld l, l                                       ; $6889: $6d
    ld de, $0e1e                                  ; $688a: $11 $1e $0e
    dec c                                         ; $688d: $0d
    ld [bc], a                                    ; $688e: $02
    inc bc                                        ; $688f: $03
    inc c                                         ; $6890: $0c
    nop                                           ; $6891: $00
    add d                                         ; $6892: $82
    ld l, b                                       ; $6893: $68
    sbc a                                         ; $6894: $9f
    inc b                                         ; $6895: $04
    rst $38                                       ; $6896: $ff
    adc h                                         ; $6897: $8c
    db $fd                                        ; $6898: $fd
    ld [bc], a                                    ; $6899: $02
    ld a, [$f705]                                 ; $689a: $fa $05 $f7
    ld [$00ff], sp                                ; $689d: $08 $ff $00
    rst $38                                       ; $68a0: $ff
    nop                                           ; $68a1: $00
    xor [hl]                                      ; $68a2: $ae
    ld d, c                                       ; $68a3: $51
    ld [bc], a                                    ; $68a4: $02
    rst $38                                       ; $68a5: $ff
    inc c                                         ; $68a6: $0c
    nop                                           ; $68a7: $00
    add d                                         ; $68a8: $82
    or a                                          ; $68a9: $b7
    rst $08                                       ; $68aa: $cf
    ld [bc], a                                    ; $68ab: $02
    rst $38                                       ; $68ac: $ff
    adc [hl]                                      ; $68ad: $8e
    cp $ff                                        ; $68ae: $fe $ff
    ld a, b                                       ; $68b0: $78
    add a                                         ; $68b1: $87
    db $fc                                        ; $68b2: $fc
    inc bc                                        ; $68b3: $03
    ld a, [$f607]                                 ; $68b4: $fa $07 $f6
    dec bc                                        ; $68b7: $0b
    xor d                                         ; $68b8: $aa
    ld d, a                                       ; $68b9: $57
    rst $10                                       ; $68ba: $d7
    dec hl                                        ; $68bb: $2b
    ld [bc], a                                    ; $68bc: $02
    db $fc                                        ; $68bd: $fc
    inc c                                         ; $68be: $0c
    nop                                           ; $68bf: $00
    add d                                         ; $68c0: $82
    ld b, $0e                                     ; $68c1: $06 $0e
    ld [bc], a                                    ; $68c3: $02
    rrca                                          ; $68c4: $0f
    adc d                                         ; $68c5: $8a
    dec bc                                        ; $68c6: $0b
    rrca                                          ; $68c7: $0f
    dec b                                         ; $68c8: $05
    rrca                                          ; $68c9: $0f
    inc bc                                        ; $68ca: $03
    rrca                                          ; $68cb: $0f
    dec b                                         ; $68cc: $05
    rrca                                          ; $68cd: $0f
    ld b, $0e                                     ; $68ce: $06 $0e
    ld [bc], a                                    ; $68d0: $02
    ld [$0010], sp                                ; $68d1: $08 $10 $00
    rst $38                                       ; $68d4: $ff
    dec h                                         ; $68d5: $25
    db $10                                        ; $68d6: $10
    rst $30                                       ; $68d7: $f7
    ld a, [bc]                                    ; $68d8: $0a
    jp $b800                                      ; $68d9: $c3 $00 $b8


    or $bd                                        ; $68dc: $f6 $bd
    cp $c4                                        ; $68de: $fe $c4
    ld b, $c8                                     ; $68e0: $06 $c8
    push af                                       ; $68e2: $f5
    ret z                                         ; $68e3: $c8

    db $fd                                        ; $68e4: $fd
    adc $05                                       ; $68e5: $ce $05
    rlc a                                         ; $68e7: $cb $07
    ret c                                         ; $68e9: $d8

    ld sp, hl                                     ; $68ea: $f9
    ret c                                         ; $68eb: $d8

    ld bc, $f4e8                                  ; $68ec: $01 $e8 $f4
    add sp, -$04                                  ; $68ef: $e8 $fc
    add sp, $04                                   ; $68f1: $e8 $04
    or $07                                        ; $68f3: $f6 $07
    ld hl, sp-$0d                                 ; $68f5: $f8 $f3
    ld hl, sp-$05                                 ; $68f7: $f8 $fb
    ld hl, sp-$01                                 ; $68f9: $f8 $ff
    ld [bc], a                                    ; $68fb: $02
    ld h, b                                       ; $68fc: $60
    sub b                                         ; $68fd: $90
    or b                                          ; $68fe: $b0
    ret nc                                        ; $68ff: $d0

    ld e, h                                       ; $6900: $5c
    ld l, h                                       ; $6901: $6c
    ld l, $32                                     ; $6902: $2e $32
    rla                                           ; $6904: $17
    add hl, de                                    ; $6905: $19
    rrca                                          ; $6906: $0f
    ld [$0c0b], sp                                ; $6907: $08 $0b $0c
    dec b                                         ; $690a: $05
    ld b, $02                                     ; $690b: $06 $02
    inc bc                                        ; $690d: $03
    ld [bc], a                                    ; $690e: $02
    ld bc, $0302                                  ; $690f: $01 $02 $03
    add l                                         ; $6912: $85
    rlca                                          ; $6913: $07
    ld b, $07                                     ; $6914: $06 $07
    inc b                                         ; $6916: $04
    dec b                                         ; $6917: $05
    ld [bc], a                                    ; $6918: $02
    ld b, $83                                     ; $6919: $06 $83
    rlca                                          ; $691b: $07
    ld [bc], a                                    ; $691c: $02
    inc bc                                        ; $691d: $03
    ld [bc], a                                    ; $691e: $02
    add b                                         ; $691f: $80
    sbc [hl]                                      ; $6920: $9e
    ret nz                                        ; $6921: $c0

    ld b, b                                       ; $6922: $40
    ldh [rNR41], a                                ; $6923: $e0 $20
    ld hl, sp+$18                                 ; $6925: $f8 $18
    ld a, h                                       ; $6927: $7c
    add h                                         ; $6928: $84
    sbc [hl]                                      ; $6929: $9e
    ld [c], a                                     ; $692a: $e2
    rst $08                                       ; $692b: $cf
    pop af                                        ; $692c: $f1
    rst $20                                       ; $692d: $e7
    ld a, b                                       ; $692e: $78
    ld [hl], e                                    ; $692f: $73
    db $fc                                        ; $6930: $fc
    adc c                                         ; $6931: $89
    cp $7c                                        ; $6932: $fe $7c
    add a                                         ; $6934: $87
    cp $03                                        ; $6935: $fe $03
    rst $38                                       ; $6937: $ff
    inc bc                                        ; $6938: $03
    ld e, a                                       ; $6939: $5f
    and d                                         ; $693a: $a2
    xor d                                         ; $693b: $aa
    ld d, a                                       ; $693c: $57
    ld d, e                                       ; $693d: $53
    xor a                                         ; $693e: $af
    ld [bc], a                                    ; $693f: $02
    add b                                         ; $6940: $80
    xor b                                         ; $6941: $a8
    ret z                                         ; $6942: $c8

    ld c, b                                       ; $6943: $48
    db $fc                                        ; $6944: $fc
    inc [hl]                                      ; $6945: $34
    ld hl, sp+$48                                 ; $6946: $f8 $48
    db $fc                                        ; $6948: $fc
    sbc h                                         ; $6949: $9c
    xor d                                         ; $694a: $aa
    halt                                          ; $694b: $76
    ld a, l                                       ; $694c: $7d
    db $e3                                        ; $694d: $e3
    rst $18                                       ; $694e: $df
    pop hl                                        ; $694f: $e1
    ld a, a                                       ; $6950: $7f
    ld b, c                                       ; $6951: $41
    cp l                                          ; $6952: $bd
    jp $8f72                                      ; $6953: $c3 $72 $8f


    db $ec                                        ; $6956: $ec
    rra                                           ; $6957: $1f
    ld d, a                                       ; $6958: $57
    cp c                                          ; $6959: $b9
    or a                                          ; $695a: $b7
    ld a, c                                       ; $695b: $79
    ld h, $f9                                     ; $695c: $26 $f9
    ld h, [hl]                                    ; $695e: $66
    ld sp, hl                                     ; $695f: $f9
    ld [bc], a                                    ; $6960: $02
    inc bc                                        ; $6961: $03
    dec b                                         ; $6962: $05
    ld b, $04                                     ; $6963: $06 $04
    rlca                                          ; $6965: $07
    dec b                                         ; $6966: $05
    rlca                                          ; $6967: $07
    ld [bc], a                                    ; $6968: $02
    inc bc                                        ; $6969: $03
    ld [bc], a                                    ; $696a: $02
    dec e                                         ; $696b: $1d
    sub l                                         ; $696c: $95
    ccf                                           ; $696d: $3f
    inc hl                                        ; $696e: $23
    ld a, l                                       ; $696f: $7d
    ld b, e                                       ; $6970: $43
    ld sp, hl                                     ; $6971: $f9
    add a                                         ; $6972: $87
    cp e                                          ; $6973: $bb
    rst $00                                       ; $6974: $c7
    add h                                         ; $6975: $84
    rst $38                                       ; $6976: $ff
    ld a, e                                       ; $6977: $7b
    ld a, h                                       ; $6978: $7c
    inc de                                        ; $6979: $13
    inc e                                         ; $697a: $1c
    add hl, bc                                    ; $697b: $09
    ld c, $0c                                     ; $697c: $0e $0c
    rrca                                          ; $697e: $0f
    dec bc                                        ; $697f: $0b
    rrca                                          ; $6980: $0f
    nop                                           ; $6981: $00
    ld [bc], a                                    ; $6982: $02
    add b                                         ; $6983: $80
    ld [bc], a                                    ; $6984: $02
    nop                                           ; $6985: $00
    inc bc                                        ; $6986: $03
    add b                                         ; $6987: $80
    add h                                         ; $6988: $84
    nop                                           ; $6989: $00
    add b                                         ; $698a: $80
    ld [bc], a                                    ; $698b: $02
    cp $02                                        ; $698c: $fe $02
    rst $38                                       ; $698e: $ff
    sub d                                         ; $698f: $92
    ld bc, $3aff                                  ; $6990: $01 $ff $3a
    rst $00                                       ; $6993: $c7
    ld [hl], l                                    ; $6994: $75
    adc [hl]                                      ; $6995: $8e
    adc h                                         ; $6996: $8c
    rst $38                                       ; $6997: $ff
    ld d, [hl]                                    ; $6998: $56
    ei                                            ; $6999: $fb
    xor l                                         ; $699a: $ad
    ld [hl], e                                    ; $699b: $73
    cp [hl]                                       ; $699c: $be
    ld b, c                                       ; $699d: $41
    ld sp, hl                                     ; $699e: $f9
    rlca                                          ; $699f: $07
    ld [hl-], a                                   ; $69a0: $32
    rst $08                                       ; $69a1: $cf

jr_0f1_69a2:
    ld [bc], a                                    ; $69a2: $02
    add b                                         ; $69a3: $80
    add c                                         ; $69a4: $81
    nop                                           ; $69a5: $00
    ld [bc], a                                    ; $69a6: $02
    add b                                         ; $69a7: $80
    ld [bc], a                                    ; $69a8: $02
    nop                                           ; $69a9: $00
    ld [bc], a                                    ; $69aa: $02
    add b                                         ; $69ab: $80
    ld [bc], a                                    ; $69ac: $02
    nop                                           ; $69ad: $00
    sub e                                         ; $69ae: $93
    add b                                         ; $69af: $80
    ret c                                         ; $69b0: $d8

    rst $38                                       ; $69b1: $ff
    sub a                                         ; $69b2: $97
    rst $38                                       ; $69b3: $ff
    db $10                                        ; $69b4: $10
    rst $38                                       ; $69b5: $ff
    ld e, b                                       ; $69b6: $58
    cp a                                          ; $69b7: $bf
    rst $30                                       ; $69b8: $f7
    rla                                           ; $69b9: $17
    ldh a, [rNR10]                                ; $69ba: $f0 $10
    ret nc                                        ; $69bc: $d0

    jr nc, jr_0f1_6a1f                            ; $69bd: $30 $60

    and b                                         ; $69bf: $a0
    jr nz, jr_0f1_69a2                            ; $69c0: $20 $e0

    ld [bc], a                                    ; $69c2: $02
    ret nz                                        ; $69c3: $c0

    ld a, [bc]                                    ; $69c4: $0a
    ld bc, $0004                                  ; $69c5: $01 $04 $00
    inc b                                         ; $69c8: $04
    ld bc, $0302                                  ; $69c9: $01 $02 $03
    add h                                         ; $69cc: $84
    ld bc, $0103                                  ; $69cd: $01 $03 $01
    inc bc                                        ; $69d0: $03
    ld [bc], a                                    ; $69d1: $02
    ld [bc], a                                    ; $69d2: $02
    ld b, $00                                     ; $69d3: $06 $00
    call $ff88                                    ; $69d5: $cd $88 $ff
    sub a                                         ; $69d8: $97
    rst $28                                       ; $69d9: $ef
    ld a, c                                       ; $69da: $79
    ld b, a                                       ; $69db: $47
    ld a, l                                       ; $69dc: $7d
    ld b, e                                       ; $69dd: $43
    ld e, [hl]                                    ; $69de: $5e
    ld h, e                                       ; $69df: $63
    daa                                           ; $69e0: $27
    ccf                                           ; $69e1: $3f
    jr c, jr_0f1_6a23                             ; $69e2: $38 $3f

    daa                                           ; $69e4: $27
    jr c, @+$50                                   ; $69e5: $38 $4e

    ld [hl], c                                    ; $69e7: $71
    ld d, l                                       ; $69e8: $55
    ld l, d                                       ; $69e9: $6a
    ld c, e                                       ; $69ea: $4b
    ld [hl], h                                    ; $69eb: $74
    ld b, e                                       ; $69ec: $43
    ld a, a                                       ; $69ed: $7f
    ld a, h                                       ; $69ee: $7c
    ld a, a                                       ; $69ef: $7f
    ld b, e                                       ; $69f0: $43
    ld a, a                                       ; $69f1: $7f
    ld e, c                                       ; $69f2: $59
    ld h, a                                       ; $69f3: $67
    ld a, d                                       ; $69f4: $7a
    ld b, [hl]                                    ; $69f5: $46
    ld h, b                                       ; $69f6: $60
    ldh a, [$a0]                                  ; $69f7: $f0 $a0
    ldh a, [rNR10]                                ; $69f9: $f0 $10
    ldh a, [$50]                                  ; $69fb: $f0 $50
    or b                                          ; $69fd: $b0
    ldh a, [rNR10]                                ; $69fe: $f0 $10
    ldh [$f0], a                                  ; $6a00: $e0 $f0
    ld a, d                                       ; $6a02: $7a
    add [hl]                                      ; $6a03: $86
    push af                                       ; $6a04: $f5
    rrca                                          ; $6a05: $0f
    xor e                                         ; $6a06: $ab
    ld e, l                                       ; $6a07: $5d
    rst $10                                       ; $6a08: $d7
    add hl, sp                                    ; $6a09: $39
    ld l, a                                       ; $6a0a: $6f
    pop af                                        ; $6a0b: $f1
    sub c                                         ; $6a0c: $91
    rst $38                                       ; $6a0d: $ff
    rst $28                                       ; $6a0e: $ef
    rra                                           ; $6a0f: $1f
    pop af                                        ; $6a10: $f1
    rst $38                                       ; $6a11: $ff
    ld c, l                                       ; $6a12: $4d
    ld [hl], e                                    ; $6a13: $73
    dec a                                         ; $6a14: $3d
    inc hl                                        ; $6a15: $23
    dec b                                         ; $6a16: $05
    ld b, $05                                     ; $6a17: $06 $05
    ld b, $07                                     ; $6a19: $06 $07
    inc b                                         ; $6a1b: $04
    dec b                                         ; $6a1c: $05
    ld b, $05                                     ; $6a1d: $06 $05

jr_0f1_6a1f:
    ld b, $04                                     ; $6a1f: $06 $04
    rlca                                          ; $6a21: $07
    inc bc                                        ; $6a22: $03

jr_0f1_6a23:
    ld [bc], a                                    ; $6a23: $02
    ld [bc], a                                    ; $6a24: $02
    inc bc                                        ; $6a25: $03
    inc bc                                        ; $6a26: $03
    inc b                                         ; $6a27: $04
    ld bc, $0004                                  ; $6a28: $01 $04 $00
    ld [bc], a                                    ; $6a2b: $02
    rrca                                          ; $6a2c: $0f
    sub h                                         ; $6a2d: $94
    ld [hl], a                                    ; $6a2e: $77
    ld a, [hl]                                    ; $6a2f: $7e
    xor [hl]                                      ; $6a30: $ae
    rst $38                                       ; $6a31: $ff
    pop de                                        ; $6a32: $d1
    ld sp, $20e0                                  ; $6a33: $31 $e0 $20
    ldh [rNR41], a                                ; $6a36: $e0 $20
    and b                                         ; $6a38: $a0
    ld h, b                                       ; $6a39: $60
    ldh [rNR41], a                                ; $6a3a: $e0 $20
    ldh [rNR41], a                                ; $6a3c: $e0 $20
    ld d, c                                       ; $6a3e: $51
    or c                                          ; $6a3f: $b1
    sub c                                         ; $6a40: $91
    ld [hl], c                                    ; $6a41: $71
    ld [bc], a                                    ; $6a42: $02
    pop af                                        ; $6a43: $f1
    sbc [hl]                                      ; $6a44: $9e
    pop de                                        ; $6a45: $d1
    ld sp, $9171                                  ; $6a46: $31 $71 $91
    pop af                                        ; $6a49: $f1
    sub c                                         ; $6a4a: $91

jr_0f1_6a4b:
    or c                                          ; $6a4b: $b1
    pop de                                        ; $6a4c: $d1

jr_0f1_6a4d:
    xor [hl]                                      ; $6a4d: $ae
    rst $18                                       ; $6a4e: $df
    ld [$d11f], a                                 ; $6a4f: $ea $1f $d1
    ccf                                           ; $6a52: $3f
    ld [hl], h                                    ; $6a53: $74
    adc h                                         ; $6a54: $8c
    db $f4                                        ; $6a55: $f4
    adc h                                         ; $6a56: $8c
    db $f4                                        ; $6a57: $f4
    adc h                                         ; $6a58: $8c
    or h                                          ; $6a59: $b4
    call z, $8cf4                                 ; $6a5a: $cc $f4 $8c
    db $e4                                        ; $6a5d: $e4
    sbc h                                         ; $6a5e: $9c
    ld l, b                                       ; $6a5f: $68
    sbc b                                         ; $6a60: $98
    ld [$02f8], sp                                ; $6a61: $08 $f8 $02
    ldh a, [$8e]                                  ; $6a64: $f0 $8e
    ld [hl], b                                    ; $6a66: $70
    sub b                                         ; $6a67: $90
    ret nc                                        ; $6a68: $d0

    jr nc, jr_0f1_6a4b                            ; $6a69: $30 $e0

jr_0f1_6a6b:
    jr nz, jr_0f1_6a4d                            ; $6a6b: $20 $e0

    jr nz, jr_0f1_6a6b                            ; $6a6d: $20 $fc

    inc a                                         ; $6a6f: $3c
    rst $38                                       ; $6a70: $ff
    rrca                                          ; $6a71: $0f
    ld l, [hl]                                    ; $6a72: $6e
    sbc a                                         ; $6a73: $9f
    ld [bc], a                                    ; $6a74: $02
    inc b                                         ; $6a75: $04
    ld [bc], a                                    ; $6a76: $02
    ld b, $02                                     ; $6a77: $06 $02
    rst $38                                       ; $6a79: $ff
    adc [hl]                                      ; $6a7a: $8e
    db $eb                                        ; $6a7b: $eb
    rst $38                                       ; $6a7c: $ff
    add l                                         ; $6a7d: $85
    ld a, a                                       ; $6a7e: $7f
    jp $a53f                                      ; $6a7f: $c3 $3f $a5


    ld a, a                                       ; $6a82: $7f
    ld h, [hl]                                    ; $6a83: $66
    cp [hl]                                       ; $6a84: $be
    xor b                                         ; $6a85: $a8
    ld a, b                                       ; $6a86: $78
    ld [hl], b                                    ; $6a87: $70
    or b                                          ; $6a88: $b0
    ld [bc], a                                    ; $6a89: $02
    ret nz                                        ; $6a8a: $c0

    ld a, [bc]                                    ; $6a8b: $0a
    nop                                           ; $6a8c: $00
    sub b                                         ; $6a8d: $90
    xor a                                         ; $6a8e: $af
    rst $38                                       ; $6a8f: $ff
    sub a                                         ; $6a90: $97
    rst $38                                       ; $6a91: $ff
    adc e                                         ; $6a92: $8b
    db $f4                                        ; $6a93: $f4
    sub a                                         ; $6a94: $97
    db $ec                                        ; $6a95: $ec
    xor c                                         ; $6a96: $a9
    sub $76                                       ; $6a97: $d6 $76
    ld l, l                                       ; $6a99: $6d
    ld de, $0e1e                                  ; $6a9a: $11 $1e $0e
    dec c                                         ; $6a9d: $0d
    ld [bc], a                                    ; $6a9e: $02
    inc bc                                        ; $6a9f: $03
    ld c, $00                                     ; $6aa0: $0e $00
    inc b                                         ; $6aa2: $04
    rst $38                                       ; $6aa3: $ff
    adc h                                         ; $6aa4: $8c
    db $fd                                        ; $6aa5: $fd
    ld [bc], a                                    ; $6aa6: $02
    ld a, [$f705]                                 ; $6aa7: $fa $05 $f7
    ld [$00ff], sp                                ; $6aaa: $08 $ff $00
    rst $38                                       ; $6aad: $ff
    nop                                           ; $6aae: $00
    xor [hl]                                      ; $6aaf: $ae
    ld d, c                                       ; $6ab0: $51
    ld [bc], a                                    ; $6ab1: $02
    rst $38                                       ; $6ab2: $ff
    ld c, $00                                     ; $6ab3: $0e $00
    inc b                                         ; $6ab5: $04
    rrca                                          ; $6ab6: $0f
    adc h                                         ; $6ab7: $8c
    rlca                                          ; $6ab8: $07
    ld [$000f], sp                                ; $6ab9: $08 $0f $00
    rrca                                          ; $6abc: $0f
    nop                                           ; $6abd: $00
    rrca                                          ; $6abe: $0f
    nop                                           ; $6abf: $00
    ld a, [bc]                                    ; $6ac0: $0a

jr_0f1_6ac1:
    dec b                                         ; $6ac1: $05
    dec c                                         ; $6ac2: $0d
    ld [bc], a                                    ; $6ac3: $02
    ld [bc], a                                    ; $6ac4: $02
    rrca                                          ; $6ac5: $0f
    ld c, $00                                     ; $6ac6: $0e $00
    rst $38                                       ; $6ac8: $ff
    daa                                           ; $6ac9: $27
    ld de, $0af7                                  ; $6aca: $11 $f7 $0a
    jp $bb00                                      ; $6acd: $c3 $00 $bb


    ld [$f2bd], a                                 ; $6ad0: $ea $bd $f2
    cp a                                          ; $6ad3: $bf
    ld a, [$02bf]                                 ; $6ad4: $fa $bf $02
    call $cff4                                    ; $6ad7: $cd $f4 $cf
    db $fc                                        ; $6ada: $fc
    call z, $cf04                                 ; $6adb: $cc $04 $cf
    dec b                                         ; $6ade: $05
    db $dd                                        ; $6adf: $dd
    ld sp, hl                                     ; $6ae0: $f9
    call c, $ed00                                 ; $6ae1: $dc $00 $ed
    di                                            ; $6ae4: $f3
    db $ed                                        ; $6ae5: $ed
    ei                                            ; $6ae6: $fb
    db $ec                                        ; $6ae7: $ec
    inc bc                                        ; $6ae8: $03
    or $07                                        ; $6ae9: $f6 $07
    ei                                            ; $6aeb: $fb
    db $f4                                        ; $6aec: $f4
    ei                                            ; $6aed: $fb
    db $fc                                        ; $6aee: $fc
    ei                                            ; $6aef: $fb
    rst $38                                       ; $6af0: $ff
    ld [bc], a                                    ; $6af1: $02
    ld [hl], b                                    ; $6af2: $70
    adc b                                         ; $6af3: $88
    cp a                                          ; $6af4: $bf
    rst $08                                       ; $6af5: $cf
    ld h, a                                       ; $6af6: $67
    ld a, b                                       ; $6af7: $78
    jr @+$21                                      ; $6af8: $18 $1f

    ld b, $07                                     ; $6afa: $06 $07
    ld [bc], a                                    ; $6afc: $02
    ld bc, $0014                                  ; $6afd: $01 $14 $00
    ld [bc], a                                    ; $6b00: $02
    ldh a, [$8a]                                  ; $6b01: $f0 $8a
    cp $0e                                        ; $6b03: $fe $0e
    ccf                                           ; $6b05: $3f
    pop bc                                        ; $6b06: $c1
    add a                                         ; $6b07: $87
    ld hl, sp+$70                                 ; $6b08: $f8 $70
    ld a, a                                       ; $6b0a: $7f
    ld c, $0f                                     ; $6b0b: $0e $0f
    ld b, $01                                     ; $6b0d: $06 $01
    inc b                                         ; $6b0f: $04
    nop                                           ; $6b10: $00
    ld b, $01                                     ; $6b11: $06 $01
    ld [bc], a                                    ; $6b13: $02
    nop                                           ; $6b14: $00
    ld [bc], a                                    ; $6b15: $02
    rlca                                          ; $6b16: $07
    ld [bc], a                                    ; $6b17: $02
    ldh [$9e], a                                  ; $6b18: $e0 $9e
    db $fc                                        ; $6b1a: $fc
    inc e                                         ; $6b1b: $1c
    rst $38                                       ; $6b1c: $ff
    inc bc                                        ; $6b1d: $03
    rra                                           ; $6b1e: $1f
    ldh [$c3], a                                  ; $6b1f: $e0 $c3
    db $fc                                        ; $6b21: $fc
    ld sp, hl                                     ; $6b22: $f9
    ld a, a                                       ; $6b23: $7f
    ld l, a                                       ; $6b24: $6f
    cp a                                          ; $6b25: $bf
    db $db                                        ; $6b26: $db
    rst $20                                       ; $6b27: $e7
    cp a                                          ; $6b28: $bf
    jp $837d                                      ; $6b29: $c3 $7d $83


    ld b, a                                       ; $6b2c: $47
    cp c                                          ; $6b2d: $b9
    ld a, l                                       ; $6b2e: $7d
    db $e3                                        ; $6b2f: $e3
    add c                                         ; $6b30: $81
    rst $38                                       ; $6b31: $ff
    ld b, a                                       ; $6b32: $47
    ld a, a                                       ; $6b33: $7f
    ld a, [$42ff]                                 ; $6b34: $fa $ff $42
    rst $38                                       ; $6b37: $ff
    ld [bc], a                                    ; $6b38: $02
    jr nz, jr_0f1_6ac1                            ; $6b39: $20 $86

    ld [hl], b                                    ; $6b3b: $70
    ld d, b                                       ; $6b3c: $50
    ret nc                                        ; $6b3d: $d0

    or b                                          ; $6b3e: $b0
    ldh [$a0], a                                  ; $6b3f: $e0 $a0
    ld [bc], a                                    ; $6b41: $02
    ldh a, [$a4]                                  ; $6b42: $f0 $a4
    add sp, $18                                   ; $6b44: $e8 $18
    db $ec                                        ; $6b46: $ec
    inc e                                         ; $6b47: $1c
    ld l, d                                       ; $6b48: $6a
    sbc [hl]                                      ; $6b49: $9e
    xor [hl]                                      ; $6b4a: $ae
    jp c, $9a6e                                   ; $6b4b: $da $6e $9a

    ld c, [hl]                                    ; $6b4e: $4e
    cp d                                          ; $6b4f: $ba
    push de                                       ; $6b50: $d5
    dec sp                                        ; $6b51: $3b
    sub a                                         ; $6b52: $97
    ld a, c                                       ; $6b53: $79
    ld d, a                                       ; $6b54: $57
    cp b                                          ; $6b55: $b8
    sbc e                                         ; $6b56: $9b
    ld a, h                                       ; $6b57: $7c
    add hl, de                                    ; $6b58: $19
    cp $3c                                        ; $6b59: $fe $3c
    jr nz, jr_0f1_6bd9                            ; $6b5b: $20 $7c

    ld b, b                                       ; $6b5d: $40
    ld a, [$ad87]                                 ; $6b5e: $fa $87 $ad
    sbc $97                                       ; $6b61: $de $97
    ld hl, sp+$62                                 ; $6b63: $f8 $62
    ld a, l                                       ; $6b65: $7d
    jr @+$21                                      ; $6b66: $18 $1f

    ld [bc], a                                    ; $6b68: $02
    rrca                                          ; $6b69: $0f
    adc [hl]                                      ; $6b6a: $8e
    ld [$080f], sp                                ; $6b6b: $08 $0f $08
    rrca                                          ; $6b6e: $0f
    add hl, bc                                    ; $6b6f: $09
    ld c, $0b                                     ; $6b70: $0e $0b
    inc c                                         ; $6b72: $0c
    rlca                                          ; $6b73: $07
    inc b                                         ; $6b74: $04
    dec b                                         ; $6b75: $05
    ld b, $02                                     ; $6b76: $06 $02
    inc bc                                        ; $6b78: $03
    ld [bc], a                                    ; $6b79: $02
    ld bc, $cca0                                  ; $6b7a: $01 $a0 $cc
    rst $38                                       ; $6b7d: $ff
    cp e                                          ; $6b7e: $bb
    ld [hl], a                                    ; $6b7f: $77
    xor $11                                       ; $6b80: $ee $11
    cp $01                                        ; $6b82: $fe $01
    ld e, a                                       ; $6b84: $5f
    and c                                         ; $6b85: $a1
    ld bc, $feff                                  ; $6b86: $01 $ff $fe
    rst $38                                       ; $6b89: $ff
    ld a, [bc]                                    ; $6b8a: $0a
    rst $38                                       ; $6b8b: $ff
    sub d                                         ; $6b8c: $92
    ld a, a                                       ; $6b8d: $7f
    pop af                                        ; $6b8e: $f1
    rra                                           ; $6b8f: $1f
    push de                                       ; $6b90: $d5
    dec sp                                        ; $6b91: $3b
    xor a                                         ; $6b92: $af
    ld [hl], c                                    ; $6b93: $71
    ld a, [hl]                                    ; $6b94: $7e
    rst $38                                       ; $6b95: $ff
    add b                                         ; $6b96: $80
    rst $38                                       ; $6b97: $ff
    rlca                                          ; $6b98: $07
    ld hl, sp+$7f                                 ; $6b99: $f8 $7f

jr_0f1_6b9b:
    add b                                         ; $6b9b: $80
    ld [bc], a                                    ; $6b9c: $02
    ld [bc], a                                    ; $6b9d: $02
    sbc h                                         ; $6b9e: $9c
    ld bc, $0103                                  ; $6b9f: $01 $03 $01
    inc bc                                        ; $6ba2: $03
    ld h, d                                       ; $6ba3: $62
    rst $38                                       ; $6ba4: $ff
    sbc h                                         ; $6ba5: $9c
    rst $38                                       ; $6ba6: $ff
    sub b                                         ; $6ba7: $90
    rst $38                                       ; $6ba8: $ff
    or b                                          ; $6ba9: $b0
    rst $38                                       ; $6baa: $ff
    add hl, hl                                    ; $6bab: $29
    rst $38                                       ; $6bac: $ff
    ld e, $fe                                     ; $6bad: $1e $fe
    ld d, b                                       ; $6baf: $50
    or b                                          ; $6bb0: $b0
    ldh a, [rNR10]                                ; $6bb1: $f0 $10
    ldh a, [rNR10]                                ; $6bb3: $f0 $10
    ret nc                                        ; $6bb5: $d0

    jr nc, jr_0f1_6c08                            ; $6bb6: $30 $50

    or b                                          ; $6bb8: $b0
    jr nz, jr_0f1_6b9b                            ; $6bb9: $20 $e0

    ld [bc], a                                    ; $6bbb: $02
    ret nz                                        ; $6bbc: $c0

    ld [$1201], sp                                ; $6bbd: $08 $01 $12
    nop                                           ; $6bc0: $00
    ld [bc], a                                    ; $6bc1: $02
    add b                                         ; $6bc2: $80
    and l                                         ; $6bc3: $a5
    ld b, b                                       ; $6bc4: $40
    ret nz                                        ; $6bc5: $c0

    and b                                         ; $6bc6: $a0
    ldh [rLCDC], a                                ; $6bc7: $e0 $40
    ld h, b                                       ; $6bc9: $60
    ld b, b                                       ; $6bca: $40
    ld h, b                                       ; $6bcb: $60
    sbc l                                         ; $6bcc: $9d
    ld [c], a                                     ; $6bcd: $e2
    xor e                                         ; $6bce: $ab
    call nc, $e996                                ; $6bcf: $d4 $96 $e9
    add a                                         ; $6bd2: $87
    rst $38                                       ; $6bd3: $ff
    ld sp, hl                                     ; $6bd4: $f9
    cp $87                                        ; $6bd5: $fe $87
    rst $38                                       ; $6bd7: $ff
    or d                                          ; $6bd8: $b2

jr_0f1_6bd9:
    adc $ba                                       ; $6bd9: $ce $ba
    add $fa                                       ; $6bdb: $c6 $fa
    add [hl]                                      ; $6bdd: $86
    db $fc                                        ; $6bde: $fc
    add h                                         ; $6bdf: $84
    db $f4                                        ; $6be0: $f4
    adc h                                         ; $6be1: $8c
    db $fc                                        ; $6be2: $fc
    add h                                         ; $6be3: $84
    or h                                          ; $6be4: $b4
    call z, $d4ac                                 ; $6be5: $cc $ac $d4
    nop                                           ; $6be8: $00
    ld [bc], a                                    ; $6be9: $02
    ld [$0002], sp                                ; $6bea: $08 $02 $00
    sbc l                                         ; $6bed: $9d
    ld [$5d2b], sp                                ; $6bee: $08 $2b $5d
    ld d, a                                       ; $6bf1: $57
    add hl, sp                                    ; $6bf2: $39
    ld l, a                                       ; $6bf3: $6f
    ld [hl], c                                    ; $6bf4: $71
    ld de, $6f7f                                  ; $6bf5: $11 $7f $6f
    rra                                           ; $6bf8: $1f
    ld [hl], c                                    ; $6bf9: $71
    ld a, a                                       ; $6bfa: $7f
    ld c, l                                       ; $6bfb: $4d
    ld [hl], e                                    ; $6bfc: $73
    ld e, l                                       ; $6bfd: $5d
    ld h, e                                       ; $6bfe: $63
    ld e, a                                       ; $6bff: $5f
    ld h, c                                       ; $6c00: $61
    ccf                                           ; $6c01: $3f
    ld hl, $312f                                  ; $6c02: $21 $2f $31
    daa                                           ; $6c05: $27
    add hl, sp                                    ; $6c06: $39
    cpl                                           ; $6c07: $2f

jr_0f1_6c08:
    ld sp, $0302                                  ; $6c08: $31 $02 $03
    ld b, $01                                     ; $6c0b: $06 $01
    ld [$0200], sp                                ; $6c0d: $08 $00 $02
    rlca                                          ; $6c10: $07
    adc a                                         ; $6c11: $8f
    dec sp                                        ; $6c12: $3b
    ccf                                           ; $6c13: $3f
    ld d, a                                       ; $6c14: $57
    ld a, a                                       ; $6c15: $7f
    xor a                                         ; $6c16: $af
    rst $38                                       ; $6c17: $ff
    sub a                                         ; $6c18: $97
    rst $38                                       ; $6c19: $ff
    adc e                                         ; $6c1a: $8b
    db $f4                                        ; $6c1b: $f4
    sub a                                         ; $6c1c: $97
    db $ec                                        ; $6c1d: $ec
    xor c                                         ; $6c1e: $a9
    sub $10                                       ; $6c1f: $d6 $10
    inc bc                                        ; $6c21: $03
    ldh a, [$92]                                  ; $6c22: $f0 $92
    db $10                                        ; $6c24: $10
    ldh a, [rSVBK]                                ; $6c25: $f0 $70
    sub b                                         ; $6c27: $90
    add sp, -$68                                  ; $6c28: $e8 $98
    cp b                                          ; $6c2a: $b8
    ret z                                         ; $6c2b: $c8

    ld a, b                                       ; $6c2c: $78
    ld c, b                                       ; $6c2d: $48
    ld e, b                                       ; $6c2e: $58
    ld l, b                                       ; $6c2f: $68
    rst $10                                       ; $6c30: $d7
    rst $28                                       ; $6c31: $ef
    push af                                       ; $6c32: $f5
    rrca                                          ; $6c33: $0f
    ld l, b                                       ; $6c34: $68
    sbc a                                         ; $6c35: $9f
    inc b                                         ; $6c36: $04
    rst $38                                       ; $6c37: $ff
    adc e                                         ; $6c38: $8b
    db $fd                                        ; $6c39: $fd
    ld [bc], a                                    ; $6c3a: $02
    ld a, [$f705]                                 ; $6c3b: $fa $05 $f7

Jump_0f1_6c3e:
    ld [$98e8], sp                                ; $6c3e: $08 $e8 $98
    xor b                                         ; $6c41: $a8
    ret c                                         ; $6c42: $d8

    adc b                                         ; $6c43: $88
    inc bc                                        ; $6c44: $03
    ld hl, sp-$70                                 ; $6c45: $f8 $90
    add sp, -$68                                  ; $6c47: $e8 $98
    add sp, -$68                                  ; $6c49: $e8 $98
    ldh a, [$90]                                  ; $6c4b: $f0 $90
    ldh a, [$90]                                  ; $6c4d: $f0 $90
    ldh a, [$90]                                  ; $6c4f: $f0 $90
    ld a, [hl]                                    ; $6c51: $7e
    sbc [hl]                                      ; $6c52: $9e
    ld a, a                                       ; $6c53: $7f
    add a                                         ; $6c54: $87
    or a                                          ; $6c55: $b7
    rst $08                                       ; $6c56: $cf
    ld [bc], a                                    ; $6c57: $02
    rst $38                                       ; $6c58: $ff
    add [hl]                                      ; $6c59: $86
    cp $ff                                        ; $6c5a: $fe $ff
    ld a, b                                       ; $6c5c: $78
    add a                                         ; $6c5d: $87
    db $fc                                        ; $6c5e: $fc
    inc bc                                        ; $6c5f: $03
    ld [bc], a                                    ; $6c60: $02
    inc c                                         ; $6c61: $0c
    add d                                         ; $6c62: $82
    ld b, $0e                                     ; $6c63: $06 $0e
    ld [bc], a                                    ; $6c65: $02
    rrca                                          ; $6c66: $0f
    adc [hl]                                      ; $6c67: $8e
    dec bc                                        ; $6c68: $0b
    rrca                                          ; $6c69: $0f
    dec b                                         ; $6c6a: $05
    rrca                                          ; $6c6b: $0f
    inc bc                                        ; $6c6c: $03
    rrca                                          ; $6c6d: $0f
    and l                                         ; $6c6e: $a5
    ld a, a                                       ; $6c6f: $7f
    ld h, [hl]                                    ; $6c70: $66
    cp [hl]                                       ; $6c71: $be
    xor b                                         ; $6c72: $a8
    ld a, b                                       ; $6c73: $78
    ld [hl], b                                    ; $6c74: $70
    or b                                          ; $6c75: $b0
    ld [bc], a                                    ; $6c76: $02
    ret nz                                        ; $6c77: $c0

    ld c, $00                                     ; $6c78: $0e $00
    add [hl]                                      ; $6c7a: $86
    db $ed                                        ; $6c7b: $ed
    jp c, $3c23                                   ; $6c7c: $da $23 $3c

    dec e                                         ; $6c7f: $1d
    ld a, [de]                                    ; $6c80: $1a
    ld [bc], a                                    ; $6c81: $02
    rlca                                          ; $6c82: $07
    ld d, $00                                     ; $6c83: $16 $00
    adc b                                         ; $6c85: $88
    ld bc, $ff00                                  ; $6c86: $01 $00 $ff
    nop                                           ; $6c89: $00
    rst $38                                       ; $6c8a: $ff
    nop                                           ; $6c8b: $00
    ld e, l                                       ; $6c8c: $5d
    and d                                         ; $6c8d: $a2
    ld [bc], a                                    ; $6c8e: $02
    rst $38                                       ; $6c8f: $ff
    ld d, $00                                     ; $6c90: $16 $00
    add l                                         ; $6c92: $85
    rlca                                          ; $6c93: $07
    nop                                           ; $6c94: $00
    rlca                                          ; $6c95: $07
    nop                                           ; $6c96: $00
    ld [bc], a                                    ; $6c97: $02
    ld [bc], a                                    ; $6c98: $02
    dec b                                         ; $6c99: $05
    add c                                         ; $6c9a: $81
    ld [bc], a                                    ; $6c9b: $02
    ld [bc], a                                    ; $6c9c: $02
    rlca                                          ; $6c9d: $07
    inc d                                         ; $6c9e: $14
    nop                                           ; $6c9f: $00
    rst $38                                       ; $6ca0: $ff
    dec h                                         ; $6ca1: $25
    db $10                                        ; $6ca2: $10
    rst $30                                       ; $6ca3: $f7
    ld a, [bc]                                    ; $6ca4: $0a
    jp $c400                                      ; $6ca5: $c3 $00 $c4


    db $e4                                        ; $6ca8: $e4
    cp e                                          ; $6ca9: $bb
    db $ec                                        ; $6caa: $ec
    cp l                                          ; $6cab: $bd
    db $f4                                        ; $6cac: $f4
    cp a                                          ; $6cad: $bf
    db $fc                                        ; $6cae: $fc
    jp $cb02                                      ; $6caf: $c3 $02 $cb


    ld [c], a                                     ; $6cb2: $e2
    call $cdf3                                    ; $6cb3: $cd $f3 $cd
    ei                                            ; $6cb6: $fb
    db $d3                                        ; $6cb7: $d3
    nop                                           ; $6cb8: $00
    db $dd                                        ; $6cb9: $dd
    ld sp, hl                                     ; $6cba: $f9
    db $e3                                        ; $6cbb: $e3
    nop                                           ; $6cbc: $00
    push af                                       ; $6cbd: $f5
    di                                            ; $6cbe: $f3
    db $ed                                        ; $6cbf: $ed
    ei                                            ; $6cc0: $fb
    di                                            ; $6cc1: $f3
    inc bc                                        ; $6cc2: $03
    or $07                                        ; $6cc3: $f6 $07
    ei                                            ; $6cc5: $fb
    ei                                            ; $6cc6: $fb
    ld [bc], a                                    ; $6cc7: $02
    ld bc, $0790                                  ; $6cc8: $01 $90 $07
    ld b, $0f                                     ; $6ccb: $06 $0f
    ld [$131c], sp                                ; $6ccd: $08 $1c $13
    add hl, sp                                    ; $6cd0: $39
    daa                                           ; $6cd1: $27
    ld [hl], d                                    ; $6cd2: $72
    ld c, [hl]                                    ; $6cd3: $4e
    db $e4                                        ; $6cd4: $e4
    sbc h                                         ; $6cd5: $9c
    ret c                                         ; $6cd6: $d8

jr_0f1_6cd7:
    jr c, jr_0f1_6d39                             ; $6cd7: $38 $60

    ldh [rSC], a                                  ; $6cd9: $e0 $02
    add b                                         ; $6cdb: $80
    inc c                                         ; $6cdc: $0c
    nop                                           ; $6cdd: $00
    ld [bc], a                                    ; $6cde: $02
    ld [bc], a                                    ; $6cdf: $02

jr_0f1_6ce0:
    sbc b                                         ; $6ce0: $98
    rlca                                          ; $6ce1: $07
    dec b                                         ; $6ce2: $05
    inc bc                                        ; $6ce3: $03
    ld [bc], a                                    ; $6ce4: $02
    inc bc                                        ; $6ce5: $03
    ld [bc], a                                    ; $6ce6: $02
    rlca                                          ; $6ce7: $07
    dec b                                         ; $6ce8: $05
    rrca                                          ; $6ce9: $0f
    ld [$131c], sp                                ; $6cea: $08 $1c $13
    ld a, c                                       ; $6ced: $79
    ld h, a                                       ; $6cee: $67
    ld a, [c]                                     ; $6cef: $f2
    adc [hl]                                      ; $6cf0: $8e
    call nz, $983c                                ; $6cf1: $c4 $3c $98
    ld a, b                                       ; $6cf4: $78
    jr nz, jr_0f1_6cd7                            ; $6cf5: $20 $e0

    ld b, b                                       ; $6cf7: $40
    ret nz                                        ; $6cf8: $c0

    ld [bc], a                                    ; $6cf9: $02
    add b                                         ; $6cfa: $80
    inc b                                         ; $6cfb: $04
    nop                                           ; $6cfc: $00
    ld [bc], a                                    ; $6cfd: $02
    ld hl, sp-$62                                 ; $6cfe: $f8 $9e
    or [hl]                                       ; $6d00: $b6
    adc $fd                                       ; $6d01: $ce $fd
    add a                                         ; $6d03: $87
    cp [hl]                                       ; $6d04: $be
    jp $e19f                                      ; $6d05: $c3 $9f $e1


    ld l, e                                       ; $6d08: $6b
    ld [hl], h                                    ; $6d09: $74
    dec d                                         ; $6d0a: $15
    ld a, [de]                                    ; $6d0b: $1a
    ld [$0c0f], sp                                ; $6d0c: $08 $0f $0c
    rrca                                          ; $6d0f: $0f
    ld b, $07                                     ; $6d10: $06 $07
    dec b                                         ; $6d12: $05
    rlca                                          ; $6d13: $07
    dec bc                                        ; $6d14: $0b
    dec c                                         ; $6d15: $0d
    ld c, $09                                     ; $6d16: $0e $09
    dec bc                                        ; $6d18: $0b
    rrca                                          ; $6d19: $0f
    ld b, $07                                     ; $6d1a: $06 $07
    dec a                                         ; $6d1c: $3d
    ld a, $02                                     ; $6d1d: $3e $02
    ret nz                                        ; $6d1f: $c0

    sbc [hl]                                      ; $6d20: $9e
    or b                                          ; $6d21: $b0
    ld [hl], b                                    ; $6d22: $70
    ld l, h                                       ; $6d23: $6c
    sbc h                                         ; $6d24: $9c
    db $d3                                        ; $6d25: $d3
    rst $28                                       ; $6d26: $ef
    or l                                          ; $6d27: $b5
    ld a, [hl]                                    ; $6d28: $7e
    cp l                                          ; $6d29: $bd
    ld a, [hl]                                    ; $6d2a: $7e
    ld d, h                                       ; $6d2b: $54
    rst $28                                       ; $6d2c: $ef
    cp d                                          ; $6d2d: $ba
    rst $00                                       ; $6d2e: $c7
    ld e, l                                       ; $6d2f: $5d
    and e                                         ; $6d30: $a3
    dec a                                         ; $6d31: $3d
    jp $e79b                                      ; $6d32: $c3 $9b $e7


    ld [hl], d                                    ; $6d35: $72
    adc a                                         ; $6d36: $8f
    and $1f                                       ; $6d37: $e6 $1f

jr_0f1_6d39:
    jp z, $963f                                   ; $6d39: $ca $3f $96

    ld a, a                                       ; $6d3c: $7f
    ld [hl+], a                                   ; $6d3d: $22
    rst $38                                       ; $6d3e: $ff
    ld [bc], a                                    ; $6d3f: $02
    jr nc, jr_0f1_6ce0                            ; $6d40: $30 $9e

    jr c, jr_0f1_6d4c                             ; $6d42: $38 $08

    inc a                                         ; $6d44: $3c
    inc b                                         ; $6d45: $04
    ld e, $22                                     ; $6d46: $1e $22
    dec a                                         ; $6d48: $3d
    inc hl                                        ; $6d49: $23
    dec c                                         ; $6d4a: $0d
    inc sp                                        ; $6d4b: $33

jr_0f1_6d4c:
    add hl, bc                                    ; $6d4c: $09
    scf                                           ; $6d4d: $37
    ld [bc], a                                    ; $6d4e: $02
    ld a, $02                                     ; $6d4f: $3e $02
    ld a, $04                                     ; $6d51: $3e $04
    inc a                                         ; $6d53: $3c
    inc b                                         ; $6d54: $04
    inc a                                         ; $6d55: $3c
    ld [$0838], sp                                ; $6d56: $08 $38 $08
    ld hl, sp+$50                                 ; $6d59: $f8 $50
    ldh a, [$30]                                  ; $6d5b: $f0 $30
    ldh a, [rNR10]                                ; $6d5d: $f0 $10
    ldh a, [rSC]                                  ; $6d5f: $f0 $02
    ld b, b                                       ; $6d61: $40
    add d                                         ; $6d62: $82
    ret nz                                        ; $6d63: $c0

    add b                                         ; $6d64: $80
    ld [bc], a                                    ; $6d65: $02
    ld b, b                                       ; $6d66: $40
    ld a, [de]                                    ; $6d67: $1a
    nop                                           ; $6d68: $00
    sbc h                                         ; $6d69: $9c
    dec sp                                        ; $6d6a: $3b
    inc h                                         ; $6d6b: $24
    ld [hl], d                                    ; $6d6c: $72
    ld c, l                                       ; $6d6d: $4d
    jp hl                                         ; $6d6e: $e9


    sbc [hl]                                      ; $6d6f: $9e
    or b                                          ; $6d70: $b0
    rst $18                                       ; $6d71: $df
    sub c                                         ; $6d72: $91
    rst $38                                       ; $6d73: $ff
    ld a, [hl]                                    ; $6d74: $7e
    ld a, a                                       ; $6d75: $7f
    db $10                                        ; $6d76: $10
    rra                                           ; $6d77: $1f
    ld de, $091e                                  ; $6d78: $11 $1e $09
    ld c, $0b                                     ; $6d7b: $0e $0b
    inc c                                         ; $6d7d: $0c
    dec bc                                        ; $6d7e: $0b
    inc c                                         ; $6d7f: $0c

jr_0f1_6d80:
    dec b                                         ; $6d80: $05
    ld b, $05                                     ; $6d81: $06 $05
    ld b, $02                                     ; $6d83: $06 $02
    inc bc                                        ; $6d85: $03
    inc b                                         ; $6d86: $04
    ld bc, $0081                                  ; $6d87: $01 $81 $00
    ld [bc], a                                    ; $6d8a: $02
    add b                                         ; $6d8b: $80
    xor e                                         ; $6d8c: $ab
    nop                                           ; $6d8d: $00

jr_0f1_6d8e:
    jr nz, jr_0f1_6d8e                            ; $6d8e: $20 $fe

    ld c, b                                       ; $6d90: $48
    cp $88                                        ; $6d91: $fe $88
    cp $0c                                        ; $6d93: $fe $0c
    cp $cd                                        ; $6d95: $fe $cd
    ld a, $ea                                     ; $6d97: $3e $ea
    rra                                           ; $6d99: $1f
    ld a, [c]                                     ; $6d9a: $f2
    rra                                           ; $6d9b: $1f
    pop af                                        ; $6d9c: $f1
    rra                                           ; $6d9d: $1f
    push af                                       ; $6d9e: $f5
    dec de                                        ; $6d9f: $1b
    rst $10                                       ; $6da0: $d7
    add hl, sp                                    ; $6da1: $39
    rst $28                                       ; $6da2: $ef
    ld sp, $7ffe                                  ; $6da3: $31 $fe $7f
    add b                                         ; $6da6: $80
    rst $38                                       ; $6da7: $ff
    inc bc                                        ; $6da8: $03
    db $fc                                        ; $6da9: $fc
    inc d                                         ; $6daa: $14
    inc c                                         ; $6dab: $0c
    ld a, [de]                                    ; $6dac: $1a
    ld b, $1e                                     ; $6dad: $06 $1e
    ld [bc], a                                    ; $6daf: $02
    ld e, $02                                     ; $6db0: $1e $02
    ld c, $12                                     ; $6db2: $0e $12
    ld a, [bc]                                    ; $6db4: $0a
    ld d, $04                                     ; $6db5: $16 $04
    inc e                                         ; $6db7: $1c
    ld [bc], a                                    ; $6db8: $02
    jr jr_0f1_6d80                                ; $6db9: $18 $c5

    ld [$1418], sp                                ; $6dbb: $08 $18 $14
    inc c                                         ; $6dbe: $0c
    ld a, [c]                                     ; $6dbf: $f2
    ld c, $aa                                     ; $6dc0: $0e $aa
    ld e, [hl]                                    ; $6dc2: $5e
    ld [$d71e], a                                 ; $6dc3: $ea $1e $d7
    add hl, sp                                    ; $6dc6: $39
    ld l, a                                       ; $6dc7: $6f
    pop af                                        ; $6dc8: $f1
    sub c                                         ; $6dc9: $91
    rst $38                                       ; $6dca: $ff
    ld c, [hl]                                    ; $6dcb: $4e
    ld [hl], b                                    ; $6dcc: $70
    sbc h                                         ; $6dcd: $9c
    ld [c], a                                     ; $6dce: $e2
    sbc [hl]                                      ; $6dcf: $9e
    ldh [$aa], a                                  ; $6dd0: $e0 $aa
    call nc, $e896                                ; $6dd2: $d4 $96 $e8
    add [hl]                                      ; $6dd5: $86
    cp $f9                                        ; $6dd6: $fe $f9
    cp $87                                        ; $6dd8: $fe $87
    rst $38                                       ; $6dda: $ff
    or d                                          ; $6ddb: $b2
    adc $fa                                       ; $6ddc: $ce $fa
    add [hl]                                      ; $6dde: $86
    ld a, [$ba86]                                 ; $6ddf: $fa $86 $ba
    add $5e                                       ; $6de2: $c6 $5e
    ld h, d                                       ; $6de4: $62
    ld a, [hl]                                    ; $6de5: $7e
    ld b, d                                       ; $6de6: $42
    ld e, [hl]                                    ; $6de7: $5e
    ld h, d                                       ; $6de8: $62
    ld a, [hl+]                                   ; $6de9: $2a
    ld [hl], $6f                                  ; $6dea: $36 $6f
    rra                                           ; $6dec: $1f
    ld [hl], c                                    ; $6ded: $71
    ld a, a                                       ; $6dee: $7f
    ld c, l                                       ; $6def: $4d
    ld [hl], e                                    ; $6df0: $73
    ld e, a                                       ; $6df1: $5f
    ld h, c                                       ; $6df2: $61
    ld e, a                                       ; $6df3: $5f
    ld h, c                                       ; $6df4: $61
    ld e, a                                       ; $6df5: $5f
    ld h, c                                       ; $6df6: $61
    ccf                                           ; $6df7: $3f
    ld hl, $233d                                  ; $6df8: $21 $3d $23
    dec l                                         ; $6dfb: $2d
    inc sp                                        ; $6dfc: $33
    ld h, $3a                                     ; $6dfd: $26 $3a
    and d                                         ; $6dff: $a2
    inc b                                         ; $6e00: $04
    cp [hl]                                       ; $6e01: $be
    add a                                         ; $6e02: $87
    and d                                         ; $6e03: $a2
    cp d                                          ; $6e04: $ba
    and [hl]                                      ; $6e05: $a6
    cp d                                          ; $6e06: $ba
    and [hl]                                      ; $6e07: $a6
    cp h                                          ; $6e08: $bc
    and h                                         ; $6e09: $a4
    ld [bc], a                                    ; $6e0a: $02
    rlca                                          ; $6e0b: $07
    sub h                                         ; $6e0c: $94
    dec sp                                        ; $6e0d: $3b
    ccf                                           ; $6e0e: $3f
    ld d, a                                       ; $6e0f: $57
    ld a, a                                       ; $6e10: $7f
    xor a                                         ; $6e11: $af
    rst $38                                       ; $6e12: $ff
    sub a                                         ; $6e13: $97
    rst $38                                       ; $6e14: $ff
    adc e                                         ; $6e15: $8b
    db $f4                                        ; $6e16: $f4
    sub a                                         ; $6e17: $97
    db $ec                                        ; $6e18: $ec
    xor c                                         ; $6e19: $a9
    sub $76                                       ; $6e1a: $d6 $76
    ld l, l                                       ; $6e1c: $6d
    ld de, $0e1e                                  ; $6e1d: $11 $1e $0e
    dec c                                         ; $6e20: $0d
    ld [bc], a                                    ; $6e21: $02
    inc bc                                        ; $6e22: $03
    ld [$8100], sp                                ; $6e23: $08 $00 $81
    add b                                         ; $6e26: $80
    inc bc                                        ; $6e27: $03
    ld hl, sp-$6e                                 ; $6e28: $f8 $92
    cp b                                          ; $6e2a: $b8
    ret nz                                        ; $6e2b: $c0

    ld a, b                                       ; $6e2c: $78
    ld b, b                                       ; $6e2d: $40
    ld e, b                                       ; $6e2e: $58
    ld h, b                                       ; $6e2f: $60
    ld e, b                                       ; $6e30: $58
    ld h, b                                       ; $6e31: $60
    dec a                                         ; $6e32: $3d
    dec h                                         ; $6e33: $25
    dec a                                         ; $6e34: $3d
    dec h                                         ; $6e35: $25
    rst $10                                       ; $6e36: $d7
    rst $28                                       ; $6e37: $ef
    push af                                       ; $6e38: $f5
    rrca                                          ; $6e39: $0f
    ld l, b                                       ; $6e3a: $68
    sbc a                                         ; $6e3b: $9f
    inc b                                         ; $6e3c: $04
    rst $38                                       ; $6e3d: $ff
    sub b                                         ; $6e3e: $90
    db $fd                                        ; $6e3f: $fd
    ld [bc], a                                    ; $6e40: $02
    ld a, [$f705]                                 ; $6e41: $fa $05 $f7
    ld [$20e0], sp                                ; $6e44: $08 $e0 $20
    ldh [rNR41], a                                ; $6e47: $e0 $20
    ld a, [hl]                                    ; $6e49: $7e
    sbc [hl]                                      ; $6e4a: $9e
    ld a, a                                       ; $6e4b: $7f
    add a                                         ; $6e4c: $87
    or a                                          ; $6e4d: $b7

jr_0f1_6e4e:
    rst $08                                       ; $6e4e: $cf
    ld [bc], a                                    ; $6e4f: $02
    rst $38                                       ; $6e50: $ff
    adc [hl]                                      ; $6e51: $8e

Call_0f1_6e52:
    cp $ff                                        ; $6e52: $fe $ff
    ld a, b                                       ; $6e54: $78
    add a                                         ; $6e55: $87
    db $fc                                        ; $6e56: $fc
    inc bc                                        ; $6e57: $03
    ld a, [$f607]                                 ; $6e58: $fa $07 $f6
    dec bc                                        ; $6e5b: $0b
    xor d                                         ; $6e5c: $aa
    ld d, a                                       ; $6e5d: $57
    rst $10                                       ; $6e5e: $d7
    dec hl                                        ; $6e5f: $2b
    ld [bc], a                                    ; $6e60: $02
    db $fc                                        ; $6e61: $fc
    inc b                                         ; $6e62: $04
    nop                                           ; $6e63: $00
    ld [bc], a                                    ; $6e64: $02
    inc c                                         ; $6e65: $0c
    add d                                         ; $6e66: $82
    ld b, $0e                                     ; $6e67: $06 $0e
    ld [bc], a                                    ; $6e69: $02
    rrca                                          ; $6e6a: $0f
    adc d                                         ; $6e6b: $8a
    dec bc                                        ; $6e6c: $0b
    rrca                                          ; $6e6d: $0f
    dec b                                         ; $6e6e: $05
    rrca                                          ; $6e6f: $0f
    inc bc                                        ; $6e70: $03
    rrca                                          ; $6e71: $0f
    dec b                                         ; $6e72: $05
    rrca                                          ; $6e73: $0f
    ld b, $0e                                     ; $6e74: $06 $0e
    ld [bc], a                                    ; $6e76: $02
    ld [$0012], sp                                ; $6e77: $08 $12 $00
    add [hl]                                      ; $6e7a: $86
    rst $38                                       ; $6e7b: $ff
    nop                                           ; $6e7c: $00
    rst $38                                       ; $6e7d: $ff
    nop                                           ; $6e7e: $00
    xor [hl]                                      ; $6e7f: $ae
    ld d, c                                       ; $6e80: $51
    ld [bc], a                                    ; $6e81: $02
    rst $38                                       ; $6e82: $ff
    inc d                                         ; $6e83: $14
    nop                                           ; $6e84: $00
    rst $38                                       ; $6e85: $ff
    add hl, hl                                    ; $6e86: $29
    ld [de], a                                    ; $6e87: $12
    rst $30                                       ; $6e88: $f7
    ld a, [bc]                                    ; $6e89: $0a
    jp $c200                                      ; $6e8a: $c3 $00 $c2


    inc b                                         ; $6e8d: $04
    ret z                                         ; $6e8e: $c8

    inc c                                         ; $6e8f: $0c
    cp a                                          ; $6e90: $bf
    jr jr_0f1_6e4e                                ; $6e91: $18 $bb

    inc e                                         ; $6e93: $1c
    call $cffb                                    ; $6e94: $cd $fb $cf
    inc bc                                        ; $6e97: $03
    jp nc, $cb0b                                  ; $6e98: $d2 $0b $cb

    inc de                                        ; $6e9b: $13
    db $dd                                        ; $6e9c: $dd
    ld hl, sp-$23                                 ; $6e9d: $f8 $dd
    nop                                           ; $6e9f: $00
    rst $18                                       ; $6ea0: $df

jr_0f1_6ea1:
    inc b                                         ; $6ea1: $04
    db $ed                                        ; $6ea2: $ed
    di                                            ; $6ea3: $f3
    db $ed                                        ; $6ea4: $ed
    ei                                            ; $6ea5: $fb
    rst $28                                       ; $6ea6: $ef
    inc bc                                        ; $6ea7: $03
    or $07                                        ; $6ea8: $f6 $07
    ei                                            ; $6eaa: $fb
    db $f4                                        ; $6eab: $f4
    ei                                            ; $6eac: $fb
    db $fc                                        ; $6ead: $fc
    ei                                            ; $6eae: $fb
    rst $38                                       ; $6eaf: $ff
    ld [bc], a                                    ; $6eb0: $02
    ld c, $85                                     ; $6eb1: $0e $85
    rra                                           ; $6eb3: $1f
    dec de                                        ; $6eb4: $1b
    rra                                           ; $6eb5: $1f
    ld de, $0215                                  ; $6eb6: $11 $15 $02
    dec de                                        ; $6eb9: $1b
    add c                                         ; $6eba: $81
    rra                                           ; $6ebb: $1f
    ld [bc], a                                    ; $6ebc: $02
    ccf                                           ; $6ebd: $3f
    sub h                                         ; $6ebe: $94
    ld c, h                                       ; $6ebf: $4c
    ld [hl], e                                    ; $6ec0: $73
    cp a                                          ; $6ec1: $bf
    ret nz                                        ; $6ec2: $c0

    cp a                                          ; $6ec3: $bf
    ret nz                                        ; $6ec4: $c0

    rst $18                                       ; $6ec5: $df
    ldh [$b3], a                                  ; $6ec6: $e0 $b3
    db $fc                                        ; $6ec8: $fc
    sub l                                         ; $6ec9: $95
    ld [$754a], a                                 ; $6eca: $ea $4a $75
    pop af                                        ; $6ecd: $f1
    rst $38                                       ; $6ece: $ff
    rrca                                          ; $6ecf: $0f
    rst $38                                       ; $6ed0: $ff
    pop bc                                        ; $6ed1: $c1
    rst $38                                       ; $6ed2: $ff
    ld [bc], a                                    ; $6ed3: $02
    ret nz                                        ; $6ed4: $c0

    adc h                                         ; $6ed5: $8c
    and b                                         ; $6ed6: $a0
    ld h, b                                       ; $6ed7: $60
    ldh [rNR41], a                                ; $6ed8: $e0 $20
    and b                                         ; $6eda: $a0
    ld h, b                                       ; $6edb: $60
    ret nz                                        ; $6edc: $c0

    ld b, b                                       ; $6edd: $40
    ld b, e                                       ; $6ede: $43
    jp $8685                                      ; $6edf: $c3 $85 $86


    ld [bc], a                                    ; $6ee2: $02
    inc bc                                        ; $6ee3: $03
    ld [bc], a                                    ; $6ee4: $02
    pop hl                                        ; $6ee5: $e1
    adc [hl]                                      ; $6ee6: $8e
    ld d, d                                       ; $6ee7: $52
    or e                                          ; $6ee8: $b3
    db $fd                                        ; $6ee9: $fd
    cp $7f                                        ; $6eea: $fe $7f
    add b                                         ; $6eec: $80
    ld e, [hl]                                    ; $6eed: $5e
    and c                                         ; $6eee: $a1
    inc bc                                        ; $6eef: $03
    rst $38                                       ; $6ef0: $ff
    db $fc                                        ; $6ef1: $fc
    rst $38                                       ; $6ef2: $ff
    ret nz                                        ; $6ef3: $c0

    rst $38                                       ; $6ef4: $ff
    ld [bc], a                                    ; $6ef5: $02

jr_0f1_6ef6:
    ld bc, $039e                                  ; $6ef6: $01 $9e $03
    ld [bc], a                                    ; $6ef9: $02
    inc bc                                        ; $6efa: $03
    ld [bc], a                                    ; $6efb: $02
    rlca                                          ; $6efc: $07
    inc b                                         ; $6efd: $04
    ld c, $09                                     ; $6efe: $0e $09
    dec c                                         ; $6f00: $0d
    dec bc                                        ; $6f01: $0b
    dec e                                         ; $6f02: $1d
    inc de                                        ; $6f03: $13
    ld a, [hl-]                                   ; $6f04: $3a
    ld h, $32                                     ; $6f05: $26 $32
    ld l, $74                                     ; $6f07: $2e $74
    ld c, h                                       ; $6f09: $4c
    db $e4                                        ; $6f0a: $e4
    sbc h                                         ; $6f0b: $9c
    ret z                                         ; $6f0c: $c8

    cp b                                          ; $6f0d: $b8
    ret nc                                        ; $6f0e: $d0

    jr nc, jr_0f1_6ea1                            ; $6f0f: $30 $90

    ld [hl], b                                    ; $6f11: $70
    and b                                         ; $6f12: $a0
    ld h, b                                       ; $6f13: $60
    jr nz, jr_0f1_6ef6                            ; $6f14: $20 $e0

    ld [bc], a                                    ; $6f16: $02
    ld [bc], a                                    ; $6f17: $02
    adc [hl]                                      ; $6f18: $8e
    rlca                                          ; $6f19: $07
    dec b                                         ; $6f1a: $05
    dec c                                         ; $6f1b: $0d
    dec bc                                        ; $6f1c: $0b
    dec c                                         ; $6f1d: $0d
    dec bc                                        ; $6f1e: $0b
    ld a, [bc]                                    ; $6f1f: $0a
    ld b, $0a                                     ; $6f20: $06 $0a
    ld b, $04                                     ; $6f22: $06 $04
    inc c                                         ; $6f24: $0c
    inc b                                         ; $6f25: $04
    inc c                                         ; $6f26: $0c
    ld [bc], a                                    ; $6f27: $02
    ld [$000e], sp                                ; $6f28: $08 $0e $00
    ld [bc], a                                    ; $6f2b: $02
    ld e, $9e                                     ; $6f2c: $1e $9e
    ccf                                           ; $6f2e: $3f
    ld hl, $407f                                  ; $6f2f: $21 $7f $40
    cp [hl]                                       ; $6f32: $be
    pop bc                                        ; $6f33: $c1
    sbc l                                         ; $6f34: $9d
    db $e3                                        ; $6f35: $e3
    ld b, e                                       ; $6f36: $43
    ld a, [hl]                                    ; $6f37: $7e
    inc a                                         ; $6f38: $3c
    ccf                                           ; $6f39: $3f
    ld c, $0f                                     ; $6f3a: $0e $0f
    ld de, $101f                                  ; $6f3c: $11 $1f $10
    rra                                           ; $6f3f: $1f
    ld h, $39                                     ; $6f40: $26 $39
    cpl                                           ; $6f42: $2f
    jr nc, jr_0f1_6f84                            ; $6f43: $30 $3f

    jr nz, jr_0f1_6f86                            ; $6f45: $20 $3f

    jr nz, jr_0f1_6f78                            ; $6f47: $20 $2f

    jr nc, jr_0f1_6fc1                            ; $6f49: $30 $76

    ld a, c                                       ; $6f4b: $79
    inc b                                         ; $6f4c: $04
    add b                                         ; $6f4d: $80
    sbc d                                         ; $6f4e: $9a
    nop                                           ; $6f4f: $00
    add b                                         ; $6f50: $80
    rst $18                                       ; $6f51: $df
    ccf                                           ; $6f52: $3f
    ld a, [$2f05]                                 ; $6f53: $fa $05 $2f
    ret nc                                        ; $6f56: $d0

    add b                                         ; $6f57: $80
    rst $38                                       ; $6f58: $ff
    ld h, e                                       ; $6f59: $63
    rst $38                                       ; $6f5a: $ff
    inc a                                         ; $6f5b: $3c
    rst $38                                       ; $6f5c: $ff
    xor e                                         ; $6f5d: $ab
    ld a, h                                       ; $6f5e: $7c
    xor a                                         ; $6f5f: $af
    ld a, b                                       ; $6f60: $78
    sub $79                                       ; $6f61: $d6 $79
    ld d, a                                       ; $6f63: $57
    ld sp, hl                                     ; $6f64: $f9
    or l                                          ; $6f65: $b5
    db $db                                        ; $6f66: $db
    ld [hl], d                                    ; $6f67: $72
    sbc [hl]                                      ; $6f68: $9e
    ld [bc], a                                    ; $6f69: $02
    db $fc                                        ; $6f6a: $fc
    ld a, [bc]                                    ; $6f6b: $0a
    add b                                         ; $6f6c: $80
    add h                                         ; $6f6d: $84
    nop                                           ; $6f6e: $00
    add b                                         ; $6f6f: $80
    ld d, c                                       ; $6f70: $51
    rst $18                                       ; $6f71: $df
    ld [bc], a                                    ; $6f72: $02
    adc [hl]                                      ; $6f73: $8e
    ld [bc], a                                    ; $6f74: $02
    add b                                         ; $6f75: $80
    ld c, $00                                     ; $6f76: $0e $00

jr_0f1_6f78:
    ld [bc], a                                    ; $6f78: $02
    ld [$1896], sp                                ; $6f79: $08 $96 $18
    db $10                                        ; $6f7c: $10
    jr jr_0f1_6f8f                                ; $6f7d: $18 $10

    ld a, b                                       ; $6f7f: $78
    ld h, b                                       ; $6f80: $60
    ld [hl-], a                                   ; $6f81: $32
    ld c, [hl]                                    ; $6f82: $4e
    ld a, h                                       ; $6f83: $7c

jr_0f1_6f84:
    ld h, h                                       ; $6f84: $64
    ld d, [hl]                                    ; $6f85: $56

jr_0f1_6f86:
    ld a, [hl-]                                   ; $6f86: $3a
    ld c, e                                       ; $6f87: $4b
    dec a                                         ; $6f88: $3d
    ld l, $5e                                     ; $6f89: $2e $5e
    inc d                                         ; $6f8b: $14
    ld a, h                                       ; $6f8c: $7c
    ld l, b                                       ; $6f8d: $68
    ld a, b                                       ; $6f8e: $78

jr_0f1_6f8f:
    db $10                                        ; $6f8f: $10
    ld [hl], b                                    ; $6f90: $70
    ld [bc], a                                    ; $6f91: $02
    ld h, b                                       ; $6f92: $60
    ld [bc], a                                    ; $6f93: $02
    add b                                         ; $6f94: $80
    inc b                                         ; $6f95: $04
    nop                                           ; $6f96: $00
    and b                                         ; $6f97: $a0
    add hl, bc                                    ; $6f98: $09
    rrca                                          ; $6f99: $0f
    inc de                                        ; $6f9a: $13
    inc e                                         ; $6f9b: $1c
    rla                                           ; $6f9c: $17

jr_0f1_6f9d:
    jr @+$2d                                      ; $6f9d: $18 $2b

    inc [hl]                                      ; $6f9f: $34
    scf                                           ; $6fa0: $37
    jr z, @+$2d                                   ; $6fa1: $28 $2b

    inc [hl]                                      ; $6fa3: $34
    ld sp, $2c3e                                  ; $6fa4: $31 $3e $2c
    ccf                                           ; $6fa7: $3f
    inc hl                                        ; $6fa8: $23
    ccf                                           ; $6fa9: $3f
    ld e, b                                       ; $6faa: $58
    ld h, a                                       ; $6fab: $67
    ld a, l                                       ; $6fac: $7d
    ld b, e                                       ; $6fad: $43
    ld a, l                                       ; $6fae: $7d
    ld b, e                                       ; $6faf: $43
    cp d                                          ; $6fb0: $ba
    add $ba                                       ; $6fb1: $c6 $ba
    add $f4                                       ; $6fb3: $c6 $f4
    adc h                                         ; $6fb5: $8c
    db $e4                                        ; $6fb6: $e4
    sbc h                                         ; $6fb7: $9c
    ld [bc], a                                    ; $6fb8: $02
    ldh [$9e], a                                  ; $6fb9: $e0 $9e
    jr nz, jr_0f1_6f9d                            ; $6fbb: $20 $e0

    db $fc                                        ; $6fbd: $fc
    inc bc                                        ; $6fbe: $03
    cp $01                                        ; $6fbf: $fe $01

jr_0f1_6fc1:
    push af                                       ; $6fc1: $f5
    dec bc                                        ; $6fc2: $0b
    xor d                                         ; $6fc3: $aa
    ld d, a                                       ; $6fc4: $57
    inc b                                         ; $6fc5: $04
    rst $38                                       ; $6fc6: $ff
    ld a, [hl-]                                   ; $6fc7: $3a
    db $fd                                        ; $6fc8: $fd
    call $bef3                                    ; $6fc9: $cd $f3 $be
    cp a                                          ; $6fcc: $bf
    ld de, $0b1e                                  ; $6fcd: $11 $1e $0b
    inc c                                         ; $6fd0: $0c
    dec bc                                        ; $6fd1: $0b
    inc c                                         ; $6fd2: $0c
    dec b                                         ; $6fd3: $05
    ld b, $05                                     ; $6fd4: $06 $05
    ld b, $02                                     ; $6fd6: $06 $02
    inc bc                                        ; $6fd8: $03
    db $10                                        ; $6fd9: $10
    ld [$0481], sp                                ; $6fda: $08 $81 $04
    ld [bc], a                                    ; $6fdd: $02
    inc c                                         ; $6fde: $0c
    adc [hl]                                      ; $6fdf: $8e
    inc b                                         ; $6fe0: $04
    ld a, [bc]                                    ; $6fe1: $0a
    ld b, $0e                                     ; $6fe2: $06 $0e
    ld [bc], a                                    ; $6fe4: $02
    dec c                                         ; $6fe5: $0d
    inc bc                                        ; $6fe6: $03
    rrca                                          ; $6fe7: $0f
    ld bc, $312f                                  ; $6fe8: $01 $2f $31
    ld l, l                                       ; $6feb: $6d
    ld [hl], e                                    ; $6fec: $73

jr_0f1_6fed:
    ld b, $02                                     ; $6fed: $06 $02
    dec b                                         ; $6fef: $05
    add e                                         ; $6ff0: $83
    ld b, $02                                     ; $6ff1: $06 $02
    inc bc                                        ; $6ff3: $03
    inc b                                         ; $6ff4: $04
    ld bc, $0006                                  ; $6ff5: $01 $06 $00
    ld [bc], a                                    ; $6ff8: $02
    rlca                                          ; $6ff9: $07
    and h                                         ; $6ffa: $a4
    dec sp                                        ; $6ffb: $3b
    ccf                                           ; $6ffc: $3f
    ld d, a                                       ; $6ffd: $57
    ld a, a                                       ; $6ffe: $7f
    xor a                                         ; $6fff: $af
    rst $38                                       ; $7000: $ff
    sub a                                         ; $7001: $97
    rst $38                                       ; $7002: $ff
    adc e                                         ; $7003: $8b
    db $f4                                        ; $7004: $f4
    sub a                                         ; $7005: $97
    db $ec                                        ; $7006: $ec
    xor c                                         ; $7007: $a9
    sub $a0                                       ; $7008: $d6 $a0
    ld h, b                                       ; $700a: $60
    jr nz, jr_0f1_6fed                            ; $700b: $20 $e0

    ld [hl], b                                    ; $700d: $70
    ldh a, [$d0]                                  ; $700e: $f0 $d0
    or b                                          ; $7010: $b0
    ld [hl], b                                    ; $7011: $70
    sub b                                         ; $7012: $90
    xor b                                         ; $7013: $a8
    ret c                                         ; $7014: $d8

    ld a, b                                       ; $7015: $78
    ld c, b                                       ; $7016: $48
    ld [hl], l                                    ; $7017: $75
    ld c, l                                       ; $7018: $4d
    rst $10                                       ; $7019: $d7
    rst $28                                       ; $701a: $ef
    push af                                       ; $701b: $f5
    rrca                                          ; $701c: $0f
    ld l, b                                       ; $701d: $68
    sbc a                                         ; $701e: $9f
    inc b                                         ; $701f: $04
    rst $38                                       ; $7020: $ff
    sbc b                                         ; $7021: $98
    db $fd                                        ; $7022: $fd
    ld [bc], a                                    ; $7023: $02
    ld a, [$f705]                                 ; $7024: $fa $05 $f7
    ld [$3f31], sp                                ; $7027: $08 $31 $3f
    ld e, [hl]                                    ; $702a: $5e
    ld l, [hl]                                    ; $702b: $6e
    ld [hl], h                                    ; $702c: $74
    ld c, h                                       ; $702d: $4c
    cp b                                          ; $702e: $b8
    ret z                                         ; $702f: $c8

    ldh a, [$90]                                  ; $7030: $f0 $90
    ld h, b                                       ; $7032: $60
    and b                                         ; $7033: $a0
    ld a, [hl]                                    ; $7034: $7e
    sbc [hl]                                      ; $7035: $9e
    ld a, a                                       ; $7036: $7f
    add a                                         ; $7037: $87
    or a                                          ; $7038: $b7
    rst $08                                       ; $7039: $cf
    ld [bc], a                                    ; $703a: $02
    rst $38                                       ; $703b: $ff
    adc h                                         ; $703c: $8c
    cp $ff                                        ; $703d: $fe $ff
    ld a, b                                       ; $703f: $78
    add a                                         ; $7040: $87
    db $fc                                        ; $7041: $fc
    inc bc                                        ; $7042: $03
    ld a, [$f607]                                 ; $7043: $fa $07 $f6
    dec bc                                        ; $7046: $0b
    xor d                                         ; $7047: $aa
    ld d, a                                       ; $7048: $57
    ld [bc], a                                    ; $7049: $02
    inc c                                         ; $704a: $0c
    add d                                         ; $704b: $82
    ld b, $0e                                     ; $704c: $06 $0e
    ld [bc], a                                    ; $704e: $02
    rrca                                          ; $704f: $0f
    adc d                                         ; $7050: $8a
    dec bc                                        ; $7051: $0b
    rrca                                          ; $7052: $0f
    dec b                                         ; $7053: $05
    rrca                                          ; $7054: $0f
    inc bc                                        ; $7055: $03
    rrca                                          ; $7056: $0f
    dec b                                         ; $7057: $05
    rrca                                          ; $7058: $0f
    ld b, $0e                                     ; $7059: $06 $0e
    ld [bc], a                                    ; $705b: $02
    ld [$7082], sp                                ; $705c: $08 $82 $70
    or b                                          ; $705f: $b0
    ld [bc], a                                    ; $7060: $02
    ret nz                                        ; $7061: $c0

    ld c, $00                                     ; $7062: $0e $00
    add [hl]                                      ; $7064: $86
    db $ed                                        ; $7065: $ed
    jp c, $3c23                                   ; $7066: $da $23 $3c

    dec e                                         ; $7069: $1d
    ld a, [de]                                    ; $706a: $1a
    ld [bc], a                                    ; $706b: $02
    rlca                                          ; $706c: $07
    jr jr_0f1_706f                                ; $706d: $18 $00

Jump_0f1_706f:
jr_0f1_706f:
    add [hl]                                      ; $706f: $86
    cp $00                                        ; $7070: $fe $00
    cp $00                                        ; $7072: $fe $00
    ld e, l                                       ; $7074: $5d
    and d                                         ; $7075: $a2
    ld [bc], a                                    ; $7076: $02
    rst $38                                       ; $7077: $ff
    inc e                                         ; $7078: $1c
    nop                                           ; $7079: $00
    add d                                         ; $707a: $82
    dec b                                         ; $707b: $05
    ld [bc], a                                    ; $707c: $02
    ld [bc], a                                    ; $707d: $02
    rlca                                          ; $707e: $07
    inc d                                         ; $707f: $14
    nop                                           ; $7080: $00
    rst $38                                       ; $7081: $ff
    daa                                           ; $7082: $27
    ld de, $0af7                                  ; $7083: $11 $f7 $0a
    jp $d600                                      ; $7086: $c3 $00 $d6


    ld [bc], a                                    ; $7089: $02
    ret nc                                        ; $708a: $d0

    ld a, [bc]                                    ; $708b: $0a
    rst $08                                       ; $708c: $cf
    ld [de], a                                    ; $708d: $12
    db $db                                        ; $708e: $db
    ld a, [de]                                    ; $708f: $1a
    db $e3                                        ; $7090: $e3
    or $e0                                        ; $7091: $f6 $e0
    cp $e0                                        ; $7093: $fe $e0
    ld b, $df                                     ; $7095: $06 $df
    ld c, $df                                     ; $7097: $0e $df
    ld d, $ea                                     ; $7099: $16 $ea
    ld e, $eb                                     ; $709b: $1e $eb
    ld h, $ee                                     ; $709d: $26 $ee
    dec l                                         ; $709f: $2d
    di                                            ; $70a0: $f3
    di                                            ; $70a1: $f3
    ld a, [c]                                     ; $70a2: $f2
    ei                                            ; $70a3: $fb
    ldh a, [$03]                                  ; $70a4: $f0 $03
    rst $28                                       ; $70a6: $ef
    ld [$01ff], sp                                ; $70a7: $08 $ff $01
    ld [bc], a                                    ; $70aa: $02
    ld c, $8a                                     ; $70ab: $0e $8a
    ccf                                           ; $70ad: $3f
    ld sp, $407f                                  ; $70ae: $31 $7f $40
    cp a                                          ; $70b1: $bf
    ret nz                                        ; $70b2: $c0

    sbc [hl]                                      ; $70b3: $9e
    pop hl                                        ; $70b4: $e1
    ld b, b                                       ; $70b5: $40
    ld a, a                                       ; $70b6: $7f
    ld [bc], a                                    ; $70b7: $02
    ccf                                           ; $70b8: $3f
    sub d                                         ; $70b9: $92
    add hl, hl                                    ; $70ba: $29
    ld a, $44                                     ; $70bb: $3e $44
    ld a, a                                       ; $70bd: $7f
    ld d, d                                       ; $70be: $52
    ld l, a                                       ; $70bf: $6f
    cp c                                          ; $70c0: $b9
    rst $00                                       ; $70c1: $c7
    db $fd                                        ; $70c2: $fd
    add e                                         ; $70c3: $83
    cp d                                          ; $70c4: $ba
    rst $00                                       ; $70c5: $c7
    ld h, [hl]                                    ; $70c6: $66
    db $fd                                        ; $70c7: $fd
    rst $18                                       ; $70c8: $df
    add hl, sp                                    ; $70c9: $39
    rst $30                                       ; $70ca: $f7
    rrca                                          ; $70cb: $0f
    ld b, $01                                     ; $70cc: $06 $01
    ld [bc], a                                    ; $70ce: $02
    rlca                                          ; $70cf: $07
    sbc b                                         ; $70d0: $98
    ld [$170f], sp                                ; $70d1: $08 $0f $17
    jr @+$19                                      ; $70d4: $18 $17

    jr jr_0f1_7103                                ; $70d6: $18 $2b

    inc a                                         ; $70d8: $3c
    push hl                                       ; $70d9: $e5
    cp $70                                        ; $70da: $fe $70
    rst $38                                       ; $70dc: $ff
    ld c, d                                       ; $70dd: $4a
    db $fd                                        ; $70de: $fd
    push de                                       ; $70df: $d5
    xor $3b                                       ; $70e0: $ee $3b
    rst $20                                       ; $70e2: $e7

jr_0f1_70e3:
    ld l, [hl]                                    ; $70e3: $6e
    or c                                          ; $70e4: $b1
    or a                                          ; $70e5: $b7
    ld e, b                                       ; $70e6: $58
    ld a, d                                       ; $70e7: $7a
    adc l                                         ; $70e8: $8d
    ld [bc], a                                    ; $70e9: $02
    ldh [$85], a                                  ; $70ea: $e0 $85
    ldh a, [$b0]                                  ; $70ec: $f0 $b0
    ldh a, [rNR10]                                ; $70ee: $f0 $10
    ld d, b                                       ; $70f0: $50
    ld [bc], a                                    ; $70f1: $02
    or b                                          ; $70f2: $b0
    add c                                         ; $70f3: $81
    ldh a, [rSC]                                  ; $70f4: $f0 $02
    ldh [$94], a                                  ; $70f6: $e0 $94
    ret nc                                        ; $70f8: $d0

    jr nc, jr_0f1_70e3                            ; $70f9: $30 $e8

    jr @-$06                                      ; $70fb: $18 $f8

    ld [$08f8], sp                                ; $70fd: $08 $f8 $08
    xor $1e                                       ; $7100: $ee $1e
    sub a                                         ; $7102: $97

jr_0f1_7103:
    ld a, c                                       ; $7103: $79
    ld l, a                                       ; $7104: $6f
    ldh a, [$a6]                                  ; $7105: $f0 $a6
    ld sp, hl                                     ; $7107: $f9
    ld de, $4eff                                  ; $7108: $11 $ff $4e
    cp a                                          ; $710b: $bf
    inc c                                         ; $710c: $0c
    add b                                         ; $710d: $80
    add c                                         ; $710e: $81

jr_0f1_710f:
    ld b, b                                       ; $710f: $40
    ld [bc], a                                    ; $7110: $02
    ret nz                                        ; $7111: $c0

    add c                                         ; $7112: $81
    ld b, b                                       ; $7113: $40
    ld [bc], a                                    ; $7114: $02
    ret nz                                        ; $7115: $c0

    adc [hl]                                      ; $7116: $8e
    and h                                         ; $7117: $a4
    ld h, h                                       ; $7118: $64
    xor $2a                                       ; $7119: $ee $2a
    ld e, d                                       ; $711b: $5a
    or [hl]                                       ; $711c: $b6
    db $fc                                        ; $711d: $fc
    db $e4                                        ; $711e: $e4
    db $f4                                        ; $711f: $f4
    ld c, h                                       ; $7120: $4c
    rst $38                                       ; $7121: $ff
    ld b, a                                       ; $7122: $47
    rst $38                                       ; $7123: $ff
    ld d, b                                       ; $7124: $50
    ld b, $01                                     ; $7125: $06 $01
    ld [bc], a                                    ; $7127: $02
    inc bc                                        ; $7128: $03
    sbc b                                         ; $7129: $98
    inc b                                         ; $712a: $04
    rlca                                          ; $712b: $07
    dec bc                                        ; $712c: $0b
    inc c                                         ; $712d: $0c
    ld d, $19                                     ; $712e: $16 $19
    rra                                           ; $7130: $1f
    db $10                                        ; $7131: $10
    ccf                                           ; $7132: $3f
    jr nz, jr_0f1_71b3                            ; $7133: $20 $7e

    ld b, c                                       ; $7135: $41
    cp l                                          ; $7136: $bd
    jp $86fa                                      ; $7137: $c3 $fa $86


    and h                                         ; $713a: $a4
    call c, Call_0f1_6e52                         ; $713b: $dc $52 $6e
    inc hl                                        ; $713e: $23
    ccf                                           ; $713f: $3f
    rra                                           ; $7140: $1f
    inc e                                         ; $7141: $1c
    ld [bc], a                                    ; $7142: $02
    db $10                                        ; $7143: $10
    sub [hl]                                      ; $7144: $96
    ld h, b                                       ; $7145: $60
    ld [hl], b                                    ; $7146: $70
    add b                                         ; $7147: $80
    ldh a, [$30]                                  ; $7148: $f0 $30
    ret nz                                        ; $714a: $c0

    ld [hl], b                                    ; $714b: $70
    add b                                         ; $714c: $80
    jr nc, jr_0f1_710f                            ; $714d: $30 $c0

    ld e, a                                       ; $714f: $5f
    and b                                         ; $7150: $a0
    xor d                                         ; $7151: $aa
    push de                                       ; $7152: $d5
    ld h, h                                       ; $7153: $64
    ei                                            ; $7154: $fb
    sbc a                                         ; $7155: $9f
    ld a, a                                       ; $7156: $7f
    rra                                           ; $7157: $1f
    rst $38                                       ; $7158: $ff
    ld [hl+], a                                   ; $7159: $22
    db $e3                                        ; $715a: $e3
    ld [bc], a                                    ; $715b: $02
    pop bc                                        ; $715c: $c1
    ld b, $00                                     ; $715d: $06 $00
    adc d                                         ; $715f: $8a
    inc bc                                        ; $7160: $03
    inc c                                         ; $7161: $0c
    add hl, bc                                    ; $7162: $09
    ld c, $04                                     ; $7163: $0e $04
    rrca                                          ; $7165: $0f
    dec bc                                        ; $7166: $0b
    rrca                                          ; $7167: $0f
    ld bc, $020f                                  ; $7168: $01 $0f $02
    ld c, $88                                     ; $716b: $0e $88
    ld d, h                                       ; $716d: $54
    cp h                                          ; $716e: $bc
    and h                                         ; $716f: $a4
    ld a, h                                       ; $7170: $7c
    ret z                                         ; $7171: $c8

    ld hl, sp+$68                                 ; $7172: $f8 $68
    sbc b                                         ; $7174: $98

jr_0f1_7175:
    ld [bc], a                                    ; $7175: $02
    db $fc                                        ; $7176: $fc
    sbc h                                         ; $7177: $9c
    ld [de], a                                    ; $7178: $12
    xor $2d                                       ; $7179: $ee $2d
    db $d3                                        ; $717b: $d3
    sbc [hl]                                      ; $717c: $9e
    pop hl                                        ; $717d: $e1
    ld h, a                                       ; $717e: $67
    ld a, b                                       ; $717f: $78
    inc de                                        ; $7180: $13
    inc e                                         ; $7181: $1c
    dec bc                                        ; $7182: $0b
    rlca                                          ; $7183: $07
    call z, $f07c                                 ; $7184: $cc $7c $f0
    jr nc, jr_0f1_7175                            ; $7187: $30 $ec

    inc e                                         ; $7189: $1c
    ld [hl], e                                    ; $718a: $73
    sbc a                                         ; $718b: $9f
    sbc [hl]                                      ; $718c: $9e
    pop af                                        ; $718d: $f1
    ld l, a                                       ; $718e: $6f
    ld [hl], b                                    ; $718f: $70
    inc hl                                        ; $7190: $23
    inc a                                         ; $7191: $3c
    inc e                                         ; $7192: $1c
    rra                                           ; $7193: $1f
    ld [bc], a                                    ; $7194: $02
    inc bc                                        ; $7195: $03
    ld [$0200], sp                                ; $7196: $08 $00 $02
    add b                                         ; $7199: $80
    adc h                                         ; $719a: $8c
    ld b, b                                       ; $719b: $40
    ret nz                                        ; $719c: $c0

    or b                                          ; $719d: $b0
    ret nz                                        ; $719e: $c0

    or b                                          ; $719f: $b0
    ret nz                                        ; $71a0: $c0

    sub b                                         ; $71a1: $90
    ldh [$50], a                                  ; $71a2: $e0 $50
    ld h, b                                       ; $71a4: $60
    ld b, b                                       ; $71a5: $40
    ld [hl], b                                    ; $71a6: $70
    ld [bc], a                                    ; $71a7: $02
    or b                                          ; $71a8: $b0
    adc c                                         ; $71a9: $89
    ldh [rSVBK], a                                ; $71aa: $e0 $70
    ldh a, [$30]                                  ; $71ac: $f0 $30
    ldh a, [rP1]                                  ; $71ae: $f0 $00
    ld [hl], b                                    ; $71b0: $70
    add b                                         ; $71b1: $80
    ret nc                                        ; $71b2: $d0

jr_0f1_71b3:
    ld [bc], a                                    ; $71b3: $02
    and b                                         ; $71b4: $a0
    add a                                         ; $71b5: $87
    ret nc                                        ; $71b6: $d0

    ld c, a                                       ; $71b7: $4f
    ld a, e                                       ; $71b8: $7b
    ld a, [hl-]                                   ; $71b9: $3a
    ld [hl], $14                                  ; $71ba: $36 $14
    inc e                                         ; $71bc: $1c
    ld [bc], a                                    ; $71bd: $02
    ld [$0e02], sp                                ; $71be: $08 $02 $0e
    add [hl]                                      ; $71c1: $86
    ccf                                           ; $71c2: $3f
    pop bc                                        ; $71c3: $c1
    rst $20                                       ; $71c4: $e7
    ld hl, sp+$1c                                 ; $71c5: $f8 $1c
    rra                                           ; $71c7: $1f
    ld [bc], a                                    ; $71c8: $02
    inc bc                                        ; $71c9: $03
    ld d, $00                                     ; $71ca: $16 $00
    ld [bc], a                                    ; $71cc: $02
    ret nz                                        ; $71cd: $c0

    adc b                                         ; $71ce: $88
    ld hl, sp+$38                                 ; $71cf: $f8 $38
    rst $38                                       ; $71d1: $ff
    rlca                                          ; $71d2: $07
    sbc a                                         ; $71d3: $9f
    ldh [$79], a                                  ; $71d4: $e0 $79
    ld a, [hl]                                    ; $71d6: $7e
    ld [bc], a                                    ; $71d7: $02

jr_0f1_71d8:
    rlca                                          ; $71d8: $07
    inc d                                         ; $71d9: $14
    nop                                           ; $71da: $00
    ld [bc], a                                    ; $71db: $02
    ld [hl], b                                    ; $71dc: $70
    add [hl]                                      ; $71dd: $86
    ld a, h                                       ; $71de: $7c
    inc c                                         ; $71df: $0c
    ld e, $62                                     ; $71e0: $1e $62
    ld [hl], c                                    ; $71e2: $71
    ld a, a                                       ; $71e3: $7f
    ld [bc], a                                    ; $71e4: $02
    ld c, $16                                     ; $71e5: $0e $16
    nop                                           ; $71e7: $00
    ld [bc], a                                    ; $71e8: $02
    ld bc, $0002                                  ; $71e9: $01 $02 $00
    ld [bc], a                                    ; $71ec: $02
    rlca                                          ; $71ed: $07
    sub h                                         ; $71ee: $94
    dec sp                                        ; $71ef: $3b
    ccf                                           ; $71f0: $3f
    ld d, a                                       ; $71f1: $57
    ld a, a                                       ; $71f2: $7f
    xor a                                         ; $71f3: $af
    rst $38                                       ; $71f4: $ff
    sub a                                         ; $71f5: $97
    rst $38                                       ; $71f6: $ff
    adc e                                         ; $71f7: $8b
    db $f4                                        ; $71f8: $f4
    sub a                                         ; $71f9: $97
    db $ec                                        ; $71fa: $ec
    xor c                                         ; $71fb: $a9
    sub $76                                       ; $71fc: $d6 $76
    ld l, l                                       ; $71fe: $6d
    ld de, $0e1e                                  ; $71ff: $11 $1e $0e
    dec c                                         ; $7202: $0d
    ld [bc], a                                    ; $7203: $02
    inc bc                                        ; $7204: $03
    inc b                                         ; $7205: $04
    nop                                           ; $7206: $00
    ld [bc], a                                    ; $7207: $02
    db $10                                        ; $7208: $10
    adc d                                         ; $7209: $8a
    ld a, b                                       ; $720a: $78
    adc b                                         ; $720b: $88
    cp h                                          ; $720c: $bc
    call nz, $efd7                                ; $720d: $c4 $d7 $ef
    push af                                       ; $7210: $f5
    rrca                                          ; $7211: $0f
    ld l, b                                       ; $7212: $68
    sbc a                                         ; $7213: $9f
    inc b                                         ; $7214: $04
    rst $38                                       ; $7215: $ff
    adc h                                         ; $7216: $8c
    db $fd                                        ; $7217: $fd
    ld [bc], a                                    ; $7218: $02
    ld a, [$f705]                                 ; $7219: $fa $05 $f7
    ld [$00ff], sp                                ; $721c: $08 $ff $00
    rst $38                                       ; $721f: $ff
    nop                                           ; $7220: $00
    xor [hl]                                      ; $7221: $ae
    ld d, c                                       ; $7222: $51
    ld [bc], a                                    ; $7223: $02
    rst $38                                       ; $7224: $ff
    ld [bc], a                                    ; $7225: $02
    nop                                           ; $7226: $00
    sub b                                         ; $7227: $90
    inc b                                         ; $7228: $04
    rlca                                          ; $7229: $07
    dec de                                        ; $722a: $1b
    inc e                                         ; $722b: $1c
    inc a                                         ; $722c: $3c
    daa                                           ; $722d: $27
    ld [hl], a                                    ; $722e: $77
    ld c, a                                       ; $722f: $4f
    add sp, -$68                                  ; $7230: $e8 $98
    ld a, [hl]                                    ; $7232: $7e
    sbc [hl]                                      ; $7233: $9e
    ld a, a                                       ; $7234: $7f
    add a                                         ; $7235: $87
    or a                                          ; $7236: $b7
    rst $08                                       ; $7237: $cf
    ld [bc], a                                    ; $7238: $02
    rst $38                                       ; $7239: $ff
    sub h                                         ; $723a: $94
    cp $ff                                        ; $723b: $fe $ff
    ld a, b                                       ; $723d: $78
    add a                                         ; $723e: $87
    db $fc                                        ; $723f: $fc
    inc bc                                        ; $7240: $03
    ld a, [$f607]                                 ; $7241: $fa $07 $f6
    dec bc                                        ; $7244: $0b
    xor d                                         ; $7245: $aa
    ld d, a                                       ; $7246: $57
    rst $10                                       ; $7247: $d7
    dec hl                                        ; $7248: $2b
    inc bc                                        ; $7249: $03
    ld bc, $0719                                  ; $724a: $01 $19 $07
    ld b, $1e                                     ; $724d: $06 $1e
    ld [bc], a                                    ; $724f: $02
    jr jr_0f1_7258                                ; $7250: $18 $06

    nop                                           ; $7252: $00
    ld [bc], a                                    ; $7253: $02
    jr jr_0f1_71d8                                ; $7254: $18 $82

    inc c                                         ; $7256: $0c
    inc e                                         ; $7257: $1c

jr_0f1_7258:
    ld [bc], a                                    ; $7258: $02
    ld e, $8a                                     ; $7259: $1e $8a
    ld d, $1e                                     ; $725b: $16 $1e
    ld a, [bc]                                    ; $725d: $0a
    ld e, $06                                     ; $725e: $1e $06
    ld e, $0a                                     ; $7260: $1e $0a
    ld e, $0c                                     ; $7262: $1e $0c
    inc e                                         ; $7264: $1c
    ld [bc], a                                    ; $7265: $02
    db $10                                        ; $7266: $10
    ld [bc], a                                    ; $7267: $02
    nop                                           ; $7268: $00
    ld [bc], a                                    ; $7269: $02
    ccf                                           ; $726a: $3f
    inc e                                         ; $726b: $1c
    nop                                           ; $726c: $00
    rst $38                                       ; $726d: $ff

Call_0f1_726e:
    dec h                                         ; $726e: $25
    db $10                                        ; $726f: $10
    rst $30                                       ; $7270: $f7
    ld a, [bc]                                    ; $7271: $0a
    jp $cf00                                      ; $7272: $c3 $00 $cf


    db $fc                                        ; $7275: $fc
    push bc                                       ; $7276: $c5
    inc b                                         ; $7277: $04
    add $0c                                       ; $7278: $c6 $0c
    call $c715                                    ; $727a: $cd $15 $c7
    dec e                                         ; $727d: $1d
    push de                                       ; $727e: $d5
    db $fd                                        ; $727f: $fd
    push de                                       ; $7280: $d5
    dec b                                         ; $7281: $05
    push de                                       ; $7282: $d5
    dec c                                         ; $7283: $0d
    db $dd                                        ; $7284: $dd
    rrca                                          ; $7285: $0f
    push hl                                       ; $7286: $e5
    ld sp, hl                                     ; $7287: $f9
    push hl                                       ; $7288: $e5
    ld bc, $05e5                                  ; $7289: $01 $e5 $05
    push af                                       ; $728c: $f5
    di                                            ; $728d: $f3
    push af                                       ; $728e: $f5
    ei                                            ; $728f: $fb
    push af                                       ; $7290: $f5
    inc bc                                        ; $7291: $03
    push af                                       ; $7292: $f5
    rlca                                          ; $7293: $07
    ld [bc], a                                    ; $7294: $02
    ld c, $9e                                     ; $7295: $0e $9e

jr_0f1_7297:
    ccf                                           ; $7297: $3f
    ld sp, $417e                                  ; $7298: $31 $7e $41
    db $fc                                        ; $729b: $fc
    add e                                         ; $729c: $83
    cp c                                          ; $729d: $b9
    rst $00                                       ; $729e: $c7
    ld b, d                                       ; $729f: $42
    ld a, a                                       ; $72a0: $7f
    dec a                                         ; $72a1: $3d
    ld a, $0b                                     ; $72a2: $3e $0b
    inc c                                         ; $72a4: $0c
    add hl, bc                                    ; $72a5: $09
    ld c, $05                                     ; $72a6: $0e $05
    ld b, $04                                     ; $72a8: $06 $04
    rlca                                          ; $72aa: $07
    ld b, $07                                     ; $72ab: $06 $07
    ld b, $07                                     ; $72ad: $06 $07
    add hl, bc                                    ; $72af: $09
    rrca                                          ; $72b0: $0f
    dec bc                                        ; $72b1: $0b
    inc c                                         ; $72b2: $0c
    dec bc                                        ; $72b3: $0b
    inc c                                         ; $72b4: $0c
    ld [bc], a                                    ; $72b5: $02

jr_0f1_72b6:
    rlca                                          ; $72b6: $07
    add l                                         ; $72b7: $85
    rrca                                          ; $72b8: $0f
    dec c                                         ; $72b9: $0d
    rrca                                          ; $72ba: $0f
    ld [$020a], sp                                ; $72bb: $08 $0a $02
    dec c                                         ; $72be: $0d
    add c                                         ; $72bf: $81
    rrca                                          ; $72c0: $0f
    ld [bc], a                                    ; $72c1: $02
    rra                                           ; $72c2: $1f
    sub h                                         ; $72c3: $94
    cpl                                           ; $72c4: $2f
    jr nc, jr_0f1_7326                            ; $72c5: $30 $5f

    ld h, b                                       ; $72c7: $60
    ld [hl], a                                    ; $72c8: $77
    ld a, b                                       ; $72c9: $78
    ld c, h                                       ; $72ca: $4c
    ld a, a                                       ; $72cb: $7f
    dec h                                         ; $72cc: $25
    ld a, [hl-]                                   ; $72cd: $3a
    ld a, [c]                                     ; $72ce: $f2
    db $fd                                        ; $72cf: $fd
    adc b                                         ; $72d0: $88
    rst $38                                       ; $72d1: $ff

jr_0f1_72d2:
    or a                                          ; $72d2: $b7
    rst $08                                       ; $72d3: $cf
    cp d                                          ; $72d4: $ba
    rst $00                                       ; $72d5: $c7
    cp d                                          ; $72d6: $ba
    rst $00                                       ; $72d7: $c7
    ld [$0280], sp                                ; $72d8: $08 $80 $02
    ret nz                                        ; $72db: $c0

    sub [hl]                                      ; $72dc: $96
    and b                                         ; $72dd: $a0
    ld h, b                                       ; $72de: $60
    ret nc                                        ; $72df: $d0

    jr nc, jr_0f1_72d2                            ; $72e0: $30 $f0

    db $10                                        ; $72e2: $10
    ldh a, [rNR10]                                ; $72e3: $f0 $10
    call c, $9e3c                                 ; $72e5: $dc $3c $9e
    ld [hl], d                                    ; $72e8: $72
    ld h, a                                       ; $72e9: $67

jr_0f1_72ea:
    ld sp, hl                                     ; $72ea: $f9
    sub c                                         ; $72eb: $91
    rst $38                                       ; $72ec: $ff
    sbc $3e                                       ; $72ed: $de $3e
    rst $10                                       ; $72ef: $d7
    add hl, sp                                    ; $72f0: $39
    call nc, $023f                                ; $72f1: $d4 $3f $02
    ld bc, $0394                                  ; $72f4: $01 $94 $03
    ld [bc], a                                    ; $72f7: $02
    rlca                                          ; $72f8: $07
    inc b                                         ; $72f9: $04
    ld c, $09                                     ; $72fa: $0e $09
    inc e                                         ; $72fc: $1c
    inc de                                        ; $72fd: $13
    add hl, sp                                    ; $72fe: $39
    daa                                           ; $72ff: $27
    ld [hl], d                                    ; $7300: $72
    ld c, [hl]                                    ; $7301: $4e
    db $e4                                        ; $7302: $e4
    sbc h                                         ; $7303: $9c
    ret z                                         ; $7304: $c8

    jr c, jr_0f1_7297                             ; $7305: $38 $90

    ld [hl], b                                    ; $7307: $70
    jr nz, jr_0f1_72ea                            ; $7308: $20 $e0

    ld [bc], a                                    ; $730a: $02
    ret nz                                        ; $730b: $c0

    add c                                         ; $730c: $81
    ldh [rSC], a                                  ; $730d: $e0 $02
    ld h, b                                       ; $730f: $60
    ld [bc], a                                    ; $7310: $02
    and b                                         ; $7311: $a0
    add e                                         ; $7312: $83

jr_0f1_7313:
    ldh [$60], a                                  ; $7313: $e0 $60
    ldh [rSC], a                                  ; $7315: $e0 $02
    ld b, $92                                     ; $7317: $06 $92
    dec c                                         ; $7319: $0d
    dec bc                                        ; $731a: $0b
    ld e, $12                                     ; $731b: $1e $12
    ld a, [hl-]                                   ; $731d: $3a
    ld h, $74                                     ; $731e: $26 $74
    ld c, h                                       ; $7320: $4c
    add sp, -$68                                  ; $7321: $e8 $98
    ret nc                                        ; $7323: $d0

    jr nc, jr_0f1_72b6                            ; $7324: $30 $90

jr_0f1_7326:
    ld [hl], b                                    ; $7326: $70
    jr nz, @-$1e                                  ; $7327: $20 $e0

    ld b, b                                       ; $7329: $40
    ret nz                                        ; $732a: $c0

    ld [bc], a                                    ; $732b: $02
    add b                                         ; $732c: $80
    dec bc                                        ; $732d: $0b
    nop                                           ; $732e: $00
    ld [bc], a                                    ; $732f: $02
    ld bc, $0088                                  ; $7330: $01 $88 $00
    ld bc, $0100                                  ; $7333: $01 $00 $01
    nop                                           ; $7336: $00
    ld bc, $0100                                  ; $7337: $01 $00 $01
    ld [bc], a                                    ; $733a: $02
    nop                                           ; $733b: $00
    add d                                         ; $733c: $82
    ld bc, $0400                                  ; $733d: $01 $00 $04
    ld bc, $009c                                  ; $7340: $01 $9c $00
    ld a, [hl+]                                   ; $7343: $2a
    dec a                                         ; $7344: $3d
    ld d, a                                       ; $7345: $57
    ld l, a                                       ; $7346: $6f
    ld a, h                                       ; $7347: $7c
    ld b, e                                       ; $7348: $43
    sbc a                                         ; $7349: $9f
    ldh [$ab], a                                  ; $734a: $e0 $ab
    call nc, $e897                                ; $734c: $d4 $97 $e8
    or [hl]                                       ; $734f: $b6
    adc $b6                                       ; $7350: $ce $b6
    rst $08                                       ; $7352: $cf
    ld e, d                                       ; $7353: $5a
    rst $28                                       ; $7354: $ef
    rst $08                                       ; $7355: $cf
    ld a, a                                       ; $7356: $7f
    cp b                                          ; $7357: $b8
    ld a, a                                       ; $7358: $7f
    rst $30                                       ; $7359: $f7
    jr jr_0f1_7313                                ; $735a: $18 $b7

    ld e, b                                       ; $735c: $58
    db $10                                        ; $735d: $10
    inc bc                                        ; $735e: $03
    rst $38                                       ; $735f: $ff
    adc [hl]                                      ; $7360: $8e
    ld d, c                                       ; $7361: $51
    rst $38                                       ; $7362: $ff
    sub d                                         ; $7363: $92
    cp $6c                                        ; $7364: $fe $6c
    sbc h                                         ; $7366: $9c
    db $f4                                        ; $7367: $f4
    db $fc                                        ; $7368: $fc
    db $e4                                        ; $7369: $e4
    inc e                                         ; $736a: $1c
    call nc, Call_000_343c                        ; $736b: $d4 $3c $34
    db $ec                                        ; $736e: $ec
    ld [bc], a                                    ; $736f: $02
    ld bc, $df8e                                  ; $7370: $01 $8e $df
    ld d, [hl]                                    ; $7373: $56
    ld d, a                                       ; $7374: $57
    ret c                                         ; $7375: $d8

    ld e, a                                       ; $7376: $5f
    call c, $f3ee                                 ; $7377: $dc $ee $f3
    db $fd                                        ; $737a: $fd
    inc bc                                        ; $737b: $03
    db $dd                                        ; $737c: $dd
    inc hl                                        ; $737d: $23
    ld [c], a                                     ; $737e: $e2
    rst $38                                       ; $737f: $ff
    ld [bc], a                                    ; $7380: $02
    dec e                                         ; $7381: $1d
    ld c, $00                                     ; $7382: $0e $00
    ld [bc], a                                    ; $7384: $02
    inc bc                                        ; $7385: $03
    ld e, $00                                     ; $7386: $1e $00
    sub a                                         ; $7388: $97
    inc d                                         ; $7389: $14
    rra                                           ; $738a: $1f
    dec de                                        ; $738b: $1b
    rla                                           ; $738c: $17
    inc l                                         ; $738d: $2c
    inc sp                                        ; $738e: $33
    ld a, [hl-]                                   ; $738f: $3a
    dec h                                         ; $7390: $25
    ld e, h                                       ; $7391: $5c
    ld h, e                                       ; $7392: $63
    ld a, l                                       ; $7393: $7d
    ld b, e                                       ; $7394: $43
    cp d                                          ; $7395: $ba
    add $fa                                       ; $7396: $c6 $fa
    add [hl]                                      ; $7398: $86
    db $f4                                        ; $7399: $f4
    adc h                                         ; $739a: $8c
    or h                                          ; $739b: $b4
    call z, Call_0f1_7c44                         ; $739c: $cc $44 $7c
    ld c, h                                       ; $739f: $4c
    ld [bc], a                                    ; $73a0: $02
    ld a, h                                       ; $73a1: $7c
    xor b                                         ; $73a2: $a8
    ld [hl], h                                    ; $73a3: $74
    ld a, [hl-]                                   ; $73a4: $3a
    ld h, $2e                                     ; $73a5: $26 $2e
    ld [hl-], a                                   ; $73a7: $32
    dec e                                         ; $73a8: $1d
    inc de                                        ; $73a9: $13
    rrca                                          ; $73aa: $0f
    db $fc                                        ; $73ab: $fc
    pop af                                        ; $73ac: $f1
    rst $38                                       ; $73ad: $ff
    ld a, $ff                                     ; $73ae: $3e $ff
    ld d, d                                       ; $73b0: $52
    db $dd                                        ; $73b1: $dd
    sub l                                         ; $73b2: $95
    sbc d                                         ; $73b3: $9a
    dec bc                                        ; $73b4: $0b
    inc c                                         ; $73b5: $0c
    dec bc                                        ; $73b6: $0b
    inc c                                         ; $73b7: $0c
    dec b                                         ; $73b8: $05
    ld b, $02                                     ; $73b9: $06 $02
    inc bc                                        ; $73bb: $03
    ld [bc], a                                    ; $73bc: $02
    inc bc                                        ; $73bd: $03
    inc b                                         ; $73be: $04
    rlca                                          ; $73bf: $07
    ld c, $0f                                     ; $73c0: $0e $0f
    rla                                           ; $73c2: $17
    add hl, de                                    ; $73c3: $19
    dec e                                         ; $73c4: $1d
    inc de                                        ; $73c5: $13
    ld l, $32                                     ; $73c6: $2e $32
    inc a                                         ; $73c8: $3c
    inc h                                         ; $73c9: $24
    inc b                                         ; $73ca: $04
    inc bc                                        ; $73cb: $03
    inc c                                         ; $73cc: $0c
    add c                                         ; $73cd: $81
    inc b                                         ; $73ce: $04
    ld [bc], a                                    ; $73cf: $02
    inc c                                         ; $73d0: $0c
    sub c                                         ; $73d1: $91
    inc b                                         ; $73d2: $04
    ld a, [bc]                                    ; $73d3: $0a
    ld b, $0e                                     ; $73d4: $06 $0e
    ld [bc], a                                    ; $73d6: $02
    ld c, $02                                     ; $73d7: $0e $02
    dec c                                         ; $73d9: $0d
    inc bc                                        ; $73da: $03
    rrca                                          ; $73db: $0f
    ld bc, $0b05                                  ; $73dc: $01 $05 $0b
    ld a, [bc]                                    ; $73df: $0a
    ld b, $04                                     ; $73e0: $06 $04
    inc c                                         ; $73e2: $0c
    ld [bc], a                                    ; $73e3: $02
    ld [$0006], sp                                ; $73e4: $08 $06 $00
    ld [bc], a                                    ; $73e7: $02
    rlca                                          ; $73e8: $07
    sub h                                         ; $73e9: $94
    dec sp                                        ; $73ea: $3b
    ccf                                           ; $73eb: $3f
    ld d, a                                       ; $73ec: $57
    ld a, a                                       ; $73ed: $7f
    xor a                                         ; $73ee: $af
    rst $38                                       ; $73ef: $ff
    sub a                                         ; $73f0: $97
    rst $38                                       ; $73f1: $ff
    adc e                                         ; $73f2: $8b
    db $f4                                        ; $73f3: $f4
    sub a                                         ; $73f4: $97
    db $ec                                        ; $73f5: $ec
    xor c                                         ; $73f6: $a9
    sub $76                                       ; $73f7: $d6 $76
    ld l, l                                       ; $73f9: $6d
    ld de, $0e1e                                  ; $73fa: $11 $1e $0e
    dec c                                         ; $73fd: $0d
    ld [bc], a                                    ; $73fe: $02
    inc bc                                        ; $73ff: $03
    ld [$8600], sp                                ; $7400: $08 $00 $86
    rst $10                                       ; $7403: $d7
    rst $28                                       ; $7404: $ef
    push af                                       ; $7405: $f5
    rrca                                          ; $7406: $0f
    ld l, b                                       ; $7407: $68
    sbc a                                         ; $7408: $9f
    inc b                                         ; $7409: $04
    rst $38                                       ; $740a: $ff
    adc h                                         ; $740b: $8c
    db $fd                                        ; $740c: $fd
    ld [bc], a                                    ; $740d: $02
    ld a, [$f705]                                 ; $740e: $fa $05 $f7
    ld [$00ff], sp                                ; $7411: $08 $ff $00
    rst $38                                       ; $7414: $ff
    nop                                           ; $7415: $00
    xor [hl]                                      ; $7416: $ae
    ld d, c                                       ; $7417: $51
    ld [bc], a                                    ; $7418: $02
    rst $38                                       ; $7419: $ff
    ld [$8600], sp                                ; $741a: $08 $00 $86
    ld a, [hl]                                    ; $741d: $7e
    sbc [hl]                                      ; $741e: $9e
    ld a, a                                       ; $741f: $7f
    add a                                         ; $7420: $87
    or a                                          ; $7421: $b7
    rst $08                                       ; $7422: $cf
    ld [bc], a                                    ; $7423: $02
    rst $38                                       ; $7424: $ff
    adc [hl]                                      ; $7425: $8e
    cp $ff                                        ; $7426: $fe $ff
    ld a, b                                       ; $7428: $78
    add a                                         ; $7429: $87
    db $fc                                        ; $742a: $fc
    inc bc                                        ; $742b: $03
    ld a, [$f607]                                 ; $742c: $fa $07 $f6
    dec bc                                        ; $742f: $0b
    xor d                                         ; $7430: $aa
    ld d, a                                       ; $7431: $57
    rst $10                                       ; $7432: $d7
    dec hl                                        ; $7433: $2b
    ld [bc], a                                    ; $7434: $02
    db $fc                                        ; $7435: $fc
    ld a, [bc]                                    ; $7436: $0a
    nop                                           ; $7437: $00
    ld [bc], a                                    ; $7438: $02

jr_0f1_7439:
    inc c                                         ; $7439: $0c
    add d                                         ; $743a: $82
    ld b, $0e                                     ; $743b: $06 $0e
    ld [bc], a                                    ; $743d: $02
    rrca                                          ; $743e: $0f
    adc d                                         ; $743f: $8a
    dec bc                                        ; $7440: $0b
    rrca                                          ; $7441: $0f
    dec b                                         ; $7442: $05
    rrca                                          ; $7443: $0f
    inc bc                                        ; $7444: $03
    rrca                                          ; $7445: $0f
    dec b                                         ; $7446: $05
    rrca                                          ; $7447: $0f
    ld b, $0e                                     ; $7448: $06 $0e
    ld [bc], a                                    ; $744a: $02
    ld [$000c], sp                                ; $744b: $08 $0c $00
    rst $38                                       ; $744e: $ff
    daa                                           ; $744f: $27
    ld de, $0af7                                  ; $7450: $11 $f7 $0a
    jp $af00                                      ; $7453: $c3 $00 $af


    rlca                                          ; $7456: $07
    jp $c2f6                                      ; $7457: $c3 $f6 $c2


    cp $bf                                        ; $745a: $fe $bf
    ld b, $cd                                     ; $745c: $06 $cd
    dec bc                                        ; $745e: $0b
    rst $08                                       ; $745f: $cf
    push af                                       ; $7460: $f5
    jp nc, $cffd                                  ; $7461: $d2 $fd $cf

    inc bc                                        ; $7464: $03
    rst $18                                       ; $7465: $df
    ld hl, sp-$21                                 ; $7466: $f8 $df
    nop                                           ; $7468: $00
    add sp, $07                                   ; $7469: $e8 $07
    rst $28                                       ; $746b: $ef
    db $f4                                        ; $746c: $f4
    rst $28                                       ; $746d: $ef
    db $fc                                        ; $746e: $fc
    rst $28                                       ; $746f: $ef
    inc b                                         ; $7470: $04
    ld hl, sp+$07                                 ; $7471: $f8 $07
    rst $38                                       ; $7473: $ff
    rst $30                                       ; $7474: $f7
    rst $38                                       ; $7475: $ff
    cp $02                                        ; $7476: $fe $02
    ld [bc], a                                    ; $7478: $02
    sbc [hl]                                      ; $7479: $9e
    rlca                                          ; $747a: $07
    dec b                                         ; $747b: $05
    rrca                                          ; $747c: $0f
    add hl, bc                                    ; $747d: $09
    dec c                                         ; $747e: $0d
    dec bc                                        ; $747f: $0b
    dec e                                         ; $7480: $1d
    inc de                                        ; $7481: $13
    ld e, $12                                     ; $7482: $1e $12
    ld a, [de]                                    ; $7484: $1a
    ld d, $3a                                     ; $7485: $16 $3a
    ld h, $3a                                     ; $7487: $26 $3a
    ld h, $34                                     ; $7489: $26 $34
    inc l                                         ; $748b: $2c
    ld [hl], h                                    ; $748c: $74
    ld c, h                                       ; $748d: $4c
    ld [hl], h                                    ; $748e: $74
    ld c, h                                       ; $748f: $4c
    ld l, b                                       ; $7490: $68
    ld e, b                                       ; $7491: $58
    add sp, -$68                                  ; $7492: $e8 $98
    add sp, -$68                                  ; $7494: $e8 $98
    ret nc                                        ; $7496: $d0

    or b                                          ; $7497: $b0
    ld [bc], a                                    ; $7498: $02
    jr c, jr_0f1_7439                             ; $7499: $38 $9e

    ld a, h                                       ; $749b: $7c
    ld l, h                                       ; $749c: $6c
    ld a, a                                       ; $749d: $7f
    ld b, a                                       ; $749e: $47
    ld e, l                                       ; $749f: $5d
    ld l, [hl]                                    ; $74a0: $6e
    ld [hl], a                                    ; $74a1: $77
    ld a, b                                       ; $74a2: $78
    add hl, hl                                    ; $74a3: $29
    ld [hl], $3b                                  ; $74a4: $36 $3b
    inc a                                         ; $74a6: $3c
    ld hl, $163f                                  ; $74a7: $21 $3f $16
    rra                                           ; $74aa: $1f
    ld a, [de]                                    ; $74ab: $1a
    rra                                           ; $74ac: $1f
    ld a, [hl]                                    ; $74ad: $7e
    ld [hl], e                                    ; $74ae: $73

jr_0f1_74af:
    cp [hl]                                       ; $74af: $be
    db $e3                                        ; $74b0: $e3

jr_0f1_74b1:
    reti                                          ; $74b1: $d9


    ld h, a                                       ; $74b2: $67
    ld sp, hl                                     ; $74b3: $f9
    ld b, a                                       ; $74b4: $47
    ld [hl], d                                    ; $74b5: $72
    rst $08                                       ; $74b6: $cf
    ld [c], a                                     ; $74b7: $e2
    rst $18                                       ; $74b8: $df
    ld b, $01                                     ; $74b9: $06 $01
    xor a                                         ; $74bb: $af
    jp $f3c2                                      ; $74bc: $c3 $c2 $f3


    ld [hl-], a                                   ; $74bf: $32
    ei                                            ; $74c0: $fb
    ld a, [bc]                                    ; $74c1: $0a
    rst $30                                       ; $74c2: $f7
    inc c                                         ; $74c3: $0c
    rst $20                                       ; $74c4: $e7
    rst $38                                       ; $74c5: $ff
    ld e, e                                       ; $74c6: $5b
    cp h                                          ; $74c7: $bc
    rst $38                                       ; $74c8: $ff
    nop                                           ; $74c9: $00
    rst $30                                       ; $74ca: $f7
    ld [$cc33], sp                                ; $74cb: $08 $33 $cc
    ld [$f7ff], sp                                ; $74ce: $08 $ff $f7
    rst $38                                       ; $74d1: $ff
    ld bc, $40ff                                  ; $74d2: $01 $ff $40
    rst $38                                       ; $74d5: $ff
    add sp, -$68                                  ; $74d6: $e8 $98
    add sp, -$68                                  ; $74d8: $e8 $98
    ldh a, [$90]                                  ; $74da: $f0 $90
    ret nc                                        ; $74dc: $d0

    jr nc, jr_0f1_74af                            ; $74dd: $30 $d0

    jr nc, jr_0f1_74b1                            ; $74df: $30 $d0

    jr nc, @-$5e                                  ; $74e1: $30 $a0

    ld h, b                                       ; $74e3: $60
    and b                                         ; $74e4: $a0
    ld h, b                                       ; $74e5: $60

jr_0f1_74e6:
    and b                                         ; $74e6: $a0
    ld h, b                                       ; $74e7: $60
    ld b, b                                       ; $74e8: $40
    ret nz                                        ; $74e9: $c0

    ld b, b                                       ; $74ea: $40
    inc bc                                        ; $74eb: $03
    ret nz                                        ; $74ec: $c0

    adc b                                         ; $74ed: $88
    ldh [rNR41], a                                ; $74ee: $e0 $20
    and b                                         ; $74f0: $a0
    ld h, b                                       ; $74f1: $60
    ld hl, $43e1                                  ; $74f2: $21 $e1 $43
    jp nz, Jump_000_1c02                          ; $74f5: $c2 $02 $1c

    adc [hl]                                      ; $74f8: $8e
    ld e, $02                                     ; $74f9: $1e $02
    ld e, a                                       ; $74fb: $5f
    ld h, c                                       ; $74fc: $61
    xor a                                         ; $74fd: $af

jr_0f1_74fe:
    pop af                                        ; $74fe: $f1
    push bc                                       ; $74ff: $c5
    dec sp                                        ; $7500: $3b
    jp nz, Jump_0f1_6c3e                          ; $7501: $c2 $3e $6c

    sbc h                                         ; $7504: $9c
    db $10                                        ; $7505: $10
    ldh a, [rSC]                                  ; $7506: $f0 $02
    ldh [$0e], a                                  ; $7508: $e0 $0e
    nop                                           ; $750a: $00
    ld b, $80                                     ; $750b: $06 $80
    ld [bc], a                                    ; $750d: $02
    nop                                           ; $750e: $00
    sub l                                         ; $750f: $95
    ld [hl+], a                                   ; $7510: $22
    ccf                                           ; $7511: $3f
    inc e                                         ; $7512: $1c
    rra                                           ; $7513: $1f
    ld de, $131e                                  ; $7514: $11 $1e $13
    inc e                                         ; $7517: $1c
    inc de                                        ; $7518: $13
    inc e                                         ; $7519: $1c
    rla                                           ; $751a: $17
    jr jr_0f1_7534                                ; $751b: $18 $17

    jr jr_0f1_752e                                ; $751d: $18 $0f

    ld [$0c0b], sp                                ; $751f: $08 $0b $0c
    dec bc                                        ; $7522: $0b
    inc c                                         ; $7523: $0c
    inc b                                         ; $7524: $04
    inc bc                                        ; $7525: $03
    rlca                                          ; $7526: $07
    sub [hl]                                      ; $7527: $96
    nop                                           ; $7528: $00
    ld a, a                                       ; $7529: $7f
    inc h                                         ; $752a: $24
    ei                                            ; $752b: $fb
    ld [hl+], a                                   ; $752c: $22
    db $fd                                        ; $752d: $fd

jr_0f1_752e:
    scf                                           ; $752e: $37
    ld hl, sp-$42                                 ; $752f: $f8 $be
    ld [hl], c                                    ; $7531: $71
    or a                                          ; $7532: $b7
    ld a, b                                       ; $7533: $78

jr_0f1_7534:
    rst $30                                       ; $7534: $f7
    jr c, jr_0f1_74e6                             ; $7535: $38 $af

    ld a, b                                       ; $7537: $78
    xor e                                         ; $7538: $ab
    ld a, h                                       ; $7539: $7c
    push de                                       ; $753a: $d5
    ld l, [hl]                                    ; $753b: $6e
    ld e, h                                       ; $753c: $5c
    rst $20                                       ; $753d: $e7
    ld [bc], a                                    ; $753e: $02
    rst $38                                       ; $753f: $ff
    sub h                                         ; $7540: $94
    ld a, $c3                                     ; $7541: $3e $c3
    db $fd                                        ; $7543: $fd
    ld b, $6b                                     ; $7544: $06 $6b
    sbc h                                         ; $7546: $9c
    sub e                                         ; $7547: $93
    ld a, h                                       ; $7548: $7c
    inc d                                         ; $7549: $14
    inc e                                         ; $754a: $1c
    dec bc                                        ; $754b: $0b
    rla                                           ; $754c: $17
    rrca                                          ; $754d: $0f
    ld [de], a                                    ; $754e: $12
    ld [hl+], a                                   ; $754f: $22
    ccf                                           ; $7550: $3f
    ld [hl-], a                                   ; $7551: $32
    ccf                                           ; $7552: $3f
    ld l, $2f                                     ; $7553: $2e $2f
    ld [bc], a                                    ; $7555: $02
    ld hl, $200e                                  ; $7556: $21 $0e $20
    ld [bc], a                                    ; $7559: $02
    nop                                           ; $755a: $00
    ld [bc], a                                    ; $755b: $02
    jr nz, jr_0f1_74fe                            ; $755c: $20 $a0

    ld e, b                                       ; $755e: $58
    ld h, b                                       ; $755f: $60
    ld c, b                                       ; $7560: $48
    ld [hl], b                                    ; $7561: $70
    ld d, b                                       ; $7562: $50
    ld l, b                                       ; $7563: $68
    xor c                                         ; $7564: $a9
    rst $10                                       ; $7565: $d7
    add [hl]                                      ; $7566: $86
    rst $38                                       ; $7567: $ff
    sbc c                                         ; $7568: $99
    cp $e7                                        ; $7569: $fe $e7
    rst $38                                       ; $756b: $ff
    and d                                         ; $756c: $a2
    sbc $f4                                       ; $756d: $de $f4
    adc h                                         ; $756f: $8c
    db $f4                                        ; $7570: $f4
    adc h                                         ; $7571: $8c
    db $f4                                        ; $7572: $f4
    adc h                                         ; $7573: $8c
    db $fc                                        ; $7574: $fc
    add h                                         ; $7575: $84
    cp h                                          ; $7576: $bc
    call nz, $c4bc                                ; $7577: $c4 $bc $c4
    ld a, d                                       ; $757a: $7a
    ld b, [hl]                                    ; $757b: $46
    ld d, d                                       ; $757c: $52
    ld l, [hl]                                    ; $757d: $6e
    inc b                                         ; $757e: $04
    inc b                                         ; $757f: $04
    sbc d                                         ; $7580: $9a
    ld [bc], a                                    ; $7581: $02
    ld b, $da                                     ; $7582: $06 $da
    and $ae                                       ; $7584: $e6 $ae
    ld e, [hl]                                    ; $7586: $5e
    ld [hl-], a                                   ; $7587: $32
    cp $c2                                        ; $7588: $fe $c2
    cp $8d                                        ; $758a: $fe $8d
    di                                            ; $758c: $f3
    ld e, a                                       ; $758d: $5f
    ld h, c                                       ; $758e: $61
    ld l, $31                                     ; $758f: $2e $31
    ld l, $31                                     ; $7591: $2e $31
    ld e, $11                                     ; $7593: $1e $11
    ld e, $11                                     ; $7595: $1e $11
    rra                                           ; $7597: $1f
    ld de, $3b25                                  ; $7598: $11 $25 $3b
    ld [bc], a                                    ; $759b: $02
    ld a, $08                                     ; $759c: $3e $08
    ld b, b                                       ; $759e: $40
    ld c, $00                                     ; $759f: $0e $00
    ld [bc], a                                    ; $75a1: $02
    add b                                         ; $75a2: $80
    adc c                                         ; $75a3: $89
    db $fc                                        ; $75a4: $fc
    ld a, h                                       ; $75a5: $7c
    halt                                          ; $75a6: $76
    cp $fb                                        ; $75a7: $fe $fb
    rst $38                                       ; $75a9: $ff
    push hl                                       ; $75aa: $e5
    rst $38                                       ; $75ab: $ff
    ld [bc], a                                    ; $75ac: $02
    inc bc                                        ; $75ad: $03
    inc bc                                        ; $75ae: $03
    inc b                                         ; $75af: $04
    ld bc, $0004                                  ; $75b0: $01 $04 $00
    ld [bc], a                                    ; $75b3: $02
    ld bc, $0ec0                                  ; $75b4: $01 $c0 $0e
    rrca                                          ; $75b7: $0f
    ccf                                           ; $75b8: $3f
    ld a, $6f                                     ; $75b9: $3e $6f
    ld a, a                                       ; $75bb: $7f
    rst $30                                       ; $75bc: $f7
    rst $38                                       ; $75bd: $ff
    jp $c5fc                                      ; $75be: $c3 $fc $c5


    cp $6b                                        ; $75c1: $fe $6b
    ld [hl], h                                    ; $75c3: $74
    ld [hl], l                                    ; $75c4: $75
    ld l, [hl]                                    ; $75c5: $6e
    dec hl                                        ; $75c6: $2b
    ld [hl], $62                                  ; $75c7: $36 $62
    db $e3                                        ; $75c9: $e3
    and d                                         ; $75ca: $a2
    db $e3                                        ; $75cb: $e3
    pop de                                        ; $75cc: $d1
    ld sp, $9171                                  ; $75cd: $31 $71 $91
    pop af                                        ; $75d0: $f1
    sub c                                         ; $75d1: $91
    xor $9f                                       ; $75d2: $ee $9f
    ld [$f19f], a                                 ; $75d4: $ea $9f $f1
    rra                                           ; $75d7: $1f
    cp a                                          ; $75d8: $bf
    ld a, a                                       ; $75d9: $7f
    cp $ff                                        ; $75da: $fe $ff
    dec bc                                        ; $75dc: $0b
    db $f4                                        ; $75dd: $f4
    ld d, a                                       ; $75de: $57
    xor b                                         ; $75df: $a8
    rst $28                                       ; $75e0: $ef
    db $10                                        ; $75e1: $10
    rst $38                                       ; $75e2: $ff
    nop                                           ; $75e3: $00
    rst $38                                       ; $75e4: $ff
    nop                                           ; $75e5: $00
    ld d, [hl]                                    ; $75e6: $56
    xor c                                         ; $75e7: $a9
    ldh [rNR41], a                                ; $75e8: $e0 $20
    ldh [rNR41], a                                ; $75ea: $e0 $20
    ldh [rNR41], a                                ; $75ec: $e0 $20
    ldh [rNR41], a                                ; $75ee: $e0 $20
    ldh [rNR41], a                                ; $75f0: $e0 $20
    ldh [rP1], a                                  ; $75f2: $e0 $00
    ld h, b                                       ; $75f4: $60
    add b                                         ; $75f5: $80
    inc b                                         ; $75f6: $04
    ldh [$8e], a                                  ; $75f7: $e0 $8e
    db $10                                        ; $75f9: $10
    rst $28                                       ; $75fa: $ef
    add sp, $17                                   ; $75fb: $e8 $17
    sbc $23                                       ; $75fd: $de $23
    ld a, [$f607]                                 ; $75ff: $fa $07 $f6
    dec bc                                        ; $7602: $0b

jr_0f1_7603:
    db $eb                                        ; $7603: $eb
    rla                                           ; $7604: $17
    cp h                                          ; $7605: $bc
    ld a, h                                       ; $7606: $7c
    ld [bc], a                                    ; $7607: $02
    rlca                                          ; $7608: $07
    add e                                         ; $7609: $83
    inc bc                                        ; $760a: $03
    rlca                                          ; $760b: $07
    ld [bc], a                                    ; $760c: $02
    inc bc                                        ; $760d: $03
    ld b, $02                                     ; $760e: $06 $02
    inc b                                         ; $7610: $04
    ld d, $00                                     ; $7611: $16 $00
    add d                                         ; $7613: $82
    db $f4                                        ; $7614: $f4
    ei                                            ; $7615: $fb
    ld [bc], a                                    ; $7616: $02
    rra                                           ; $7617: $1f
    inc e                                         ; $7618: $1c
    nop                                           ; $7619: $00
    ld [bc], a                                    ; $761a: $02
    ld a, a                                       ; $761b: $7f
    ld e, $00                                     ; $761c: $1e $00
    rst $38                                       ; $761e: $ff
    add hl, hl                                    ; $761f: $29
    ld [de], a                                    ; $7620: $12
    rst $30                                       ; $7621: $f7
    ld a, [bc]                                    ; $7622: $0a
    jp $b200                                      ; $7623: $c3 $00 $b2


    ei                                            ; $7626: $fb
    xor [hl]                                      ; $7627: $ae
    nop                                           ; $7628: $00
    call nz, $beef                                ; $7629: $c4 $ef $be
    rst $30                                       ; $762c: $f7
    jp z, $c9ff                                   ; $762d: $ca $ff $c9

    rlca                                          ; $7630: $07
    rrc l                                         ; $7631: $cb $0d
    adc $f3                                       ; $7633: $ce $f3
    adc $fa                                       ; $7635: $ce $fa
    sbc $f4                                       ; $7637: $de $f4
    sbc $fc                                       ; $7639: $de $fc
    add sp, $04                                   ; $763b: $e8 $04
    xor $f3                                       ; $763d: $ee $f3
    xor $fb                                       ; $763f: $ee $fb
    xor $03                                       ; $7641: $ee $03
    ld a, [c]                                     ; $7643: $f2
    rlca                                          ; $7644: $07
    cp $f4                                        ; $7645: $fe $f4
    cp $fc                                        ; $7647: $fe $fc
    inc b                                         ; $7649: $04
    ld bc, $039c                                  ; $764a: $01 $9c $03
    ld [bc], a                                    ; $764d: $02
    rlca                                          ; $764e: $07
    inc b                                         ; $764f: $04
    rlca                                          ; $7650: $07
    inc b                                         ; $7651: $04
    ld c, $09                                     ; $7652: $0e $09
    dec e                                         ; $7654: $1d
    inc de                                        ; $7655: $13
    dec e                                         ; $7656: $1d
    inc de                                        ; $7657: $13
    ld a, [hl-]                                   ; $7658: $3a
    ld h, $74                                     ; $7659: $26 $74
    ld c, h                                       ; $765b: $4c
    db $f4                                        ; $765c: $f4
    adc h                                         ; $765d: $8c
    add sp, -$68                                  ; $765e: $e8 $98
    ret nc                                        ; $7660: $d0

    jr nc, jr_0f1_7603                            ; $7661: $30 $a0

    ld h, b                                       ; $7663: $60
    and b                                         ; $7664: $a0
    ld h, b                                       ; $7665: $60
    ld b, b                                       ; $7666: $40
    ret nz                                        ; $7667: $c0

    ld [bc], a                                    ; $7668: $02
    ld [bc], a                                    ; $7669: $02
    sub b                                         ; $766a: $90
    rlca                                          ; $766b: $07
    dec b                                         ; $766c: $05
    rrca                                          ; $766d: $0f
    add hl, bc                                    ; $766e: $09

jr_0f1_766f:
    ld e, $12                                     ; $766f: $1e $12
    ld a, [de]                                    ; $7671: $1a
    ld b, $1a                                     ; $7672: $06 $1a
    ld b, $14                                     ; $7674: $06 $14
    inc c                                         ; $7676: $0c
    ld [$0818], sp                                ; $7677: $08 $18 $08
    jr jr_0f1_767e                                ; $767a: $18 $02

    db $10                                        ; $767c: $10
    inc c                                         ; $767d: $0c

jr_0f1_767e:
    nop                                           ; $767e: $00
    ld [bc], a                                    ; $767f: $02
    ld bc, $3a9e                                  ; $7680: $01 $9e $3a

jr_0f1_7683:
    dec sp                                        ; $7683: $3b

jr_0f1_7684:
    ld a, [hl]                                    ; $7684: $7e
    ld l, a                                       ; $7685: $6f
    ld a, l                                       ; $7686: $7d
    ld c, [hl]                                    ; $7687: $4e
    ld [hl], a                                    ; $7688: $77
    ld a, b                                       ; $7689: $78
    ld a, $21                                     ; $768a: $3e $21
    dec a                                         ; $768c: $3d
    ld [hl+], a                                   ; $768d: $22
    jr nc, @+$31                                  ; $768e: $30 $2f

    ld d, c                                       ; $7690: $51
    ld a, a                                       ; $7691: $7f
    xor $9f                                       ; $7692: $ee $9f
    and $9f                                       ; $7694: $e6 $9f
    cp e                                          ; $7696: $bb
    rst $08                                       ; $7697: $cf
    ld [hl], c                                    ; $7698: $71
    ld c, a                                       ; $7699: $4f
    ld b, b                                       ; $769a: $40
    ld a, a                                       ; $769b: $7f
    jr nz, @+$41                                  ; $769c: $20 $3f

    ld de, $021f                                  ; $769e: $11 $1f $02
    db $10                                        ; $76a1: $10
    sbc [hl]                                      ; $76a2: $9e
    jr nc, jr_0f1_76c5                            ; $76a3: $30 $20

    jr nc, jr_0f1_76c7                            ; $76a5: $30 $20

    ld [hl], b                                    ; $76a7: $70
    ld b, b                                       ; $76a8: $40
    add sp, -$68                                  ; $76a9: $e8 $98
    add sp, -$68                                  ; $76ab: $e8 $98
    ret nc                                        ; $76ad: $d0

    or b                                          ; $76ae: $b0
    ldh [$60], a                                  ; $76af: $e0 $60
    ldh a, [$30]                                  ; $76b1: $f0 $30
    call c, $d23c                                 ; $76b3: $dc $3c $d2
    ld a, $95                                     ; $76b6: $3e $95
    ld a, e                                       ; $76b8: $7b
    ld a, a                                       ; $76b9: $7f
    pop hl                                        ; $76ba: $e1
    xor l                                         ; $76bb: $ad
    db $d3                                        ; $76bc: $d3
    ld de, $02ef                                  ; $76bd: $11 $ef $02
    rst $38                                       ; $76c0: $ff
    ld [bc], a                                    ; $76c1: $02
    rst $20                                       ; $76c2: $e7
    sbc [hl]                                      ; $76c3: $9e
    rst $18                                       ; $76c4: $df

jr_0f1_76c5:
    jr c, jr_0f1_7683                             ; $76c5: $38 $bc

jr_0f1_76c7:
    ld h, e                                       ; $76c7: $63
    ret nz                                        ; $76c8: $c0

    rst $38                                       ; $76c9: $ff
    ld c, a                                       ; $76ca: $4f
    rst $38                                       ; $76cb: $ff
    ld d, b                                       ; $76cc: $50
    ldh a, [$60]                                  ; $76cd: $f0 $60
    ldh [rLCDC], a                                ; $76cf: $e0 $40
    ret nz                                        ; $76d1: $c0

    and b                                         ; $76d2: $a0
    ld h, b                                       ; $76d3: $60
    ldh [rNR41], a                                ; $76d4: $e0 $20
    and b                                         ; $76d6: $a0
    ld h, b                                       ; $76d7: $60
    ldh [rNR41], a                                ; $76d8: $e0 $20
    ldh [rNR41], a                                ; $76da: $e0 $20
    ldh [rNR41], a                                ; $76dc: $e0 $20
    ldh [rNR41], a                                ; $76de: $e0 $20
    ldh [rNR41], a                                ; $76e0: $e0 $20
    ld [bc], a                                    ; $76e2: $02
    jr jr_0f1_766f                                ; $76e3: $18 $8a

    xor $f6                                       ; $76e5: $ee $f6
    cp a                                          ; $76e7: $bf
    ld h, c                                       ; $76e8: $61
    ld e, a                                       ; $76e9: $5f
    ldh [$c3], a                                  ; $76ea: $e0 $c3
    db $fc                                        ; $76ec: $fc
    ld [hl], b                                    ; $76ed: $70
    ld a, a                                       ; $76ee: $7f
    ld [bc], a                                    ; $76ef: $02
    rrca                                          ; $76f0: $0f
    ld [bc], a                                    ; $76f1: $02
    ld bc, $0010                                  ; $76f2: $01 $10 $00
    ld [bc], a                                    ; $76f5: $02
    jr nc, jr_0f1_7684                            ; $76f6: $30 $8c

    inc l                                         ; $76f8: $2c
    inc e                                         ; $76f9: $1c
    ld a, $02                                     ; $76fa: $3e $02
    dec e                                         ; $76fc: $1d
    inc hl                                        ; $76fd: $23
    dec e                                         ; $76fe: $1d
    inc hl                                        ; $76ff: $23
    ld a, [bc]                                    ; $7700: $0a
    ld [hl], $24                                  ; $7701: $36 $24
    inc a                                         ; $7703: $3c
    ld [bc], a                                    ; $7704: $02
    jr jr_0f1_7718                                ; $7705: $18 $11

    nop                                           ; $7707: $00
    inc bc                                        ; $7708: $03
    rrca                                          ; $7709: $0f
    or c                                          ; $770a: $b1
    nop                                           ; $770b: $00
    rrca                                          ; $770c: $0f
    ld [$080f], sp                                ; $770d: $08 $0f $08
    rrca                                          ; $7710: $0f
    nop                                           ; $7711: $00
    rrca                                          ; $7712: $0f
    ld [c], a                                     ; $7713: $e2
    db $fd                                        ; $7714: $fd
    ld b, l                                       ; $7715: $45
    ld a, d                                       ; $7716: $7a
    ld c, d                                       ; $7717: $4a

jr_0f1_7718:
    ld [hl], l                                    ; $7718: $75
    ld e, a                                       ; $7719: $5f
    ld h, b                                       ; $771a: $60
    cp [hl]                                       ; $771b: $be
    pop bc                                        ; $771c: $c1
    cp [hl]                                       ; $771d: $be
    pop bc                                        ; $771e: $c1
    cp a                                          ; $771f: $bf
    pop bc                                        ; $7720: $c1
    sbc a                                         ; $7721: $9f
    pop hl                                        ; $7722: $e1
    xor l                                         ; $7723: $ad
    db $d3                                        ; $7724: $d3
    ld d, e                                       ; $7725: $53
    ld l, a                                       ; $7726: $6f
    ld h, b                                       ; $7727: $60
    ld a, b                                       ; $7728: $78
    nop                                           ; $7729: $00
    ld a, b                                       ; $772a: $78
    nop                                           ; $772b: $00
    ld a, b                                       ; $772c: $78
    nop                                           ; $772d: $00
    ld a, b                                       ; $772e: $78
    jr nz, jr_0f1_77a9                            ; $772f: $20 $78

    jr z, @+$72                                   ; $7731: $28 $70

    ld c, b                                       ; $7733: $48
    ld [hl], b                                    ; $7734: $70
    ld l, b                                       ; $7735: $68
    ld [hl], b                                    ; $7736: $70
    ld l, b                                       ; $7737: $68
    ld [hl], b                                    ; $7738: $70
    ld e, b                                       ; $7739: $58
    ld [hl], b                                    ; $773a: $70
    ld e, b                                       ; $773b: $58
    ld [bc], a                                    ; $773c: $02
    ld [hl], b                                    ; $773d: $70
    sbc c                                         ; $773e: $99
    ld e, b                                       ; $773f: $58
    dec [hl]                                      ; $7740: $35
    ld e, e                                       ; $7741: $5b
    ld l, $5a                                     ; $7742: $2e $5a
    ld a, [hl-]                                   ; $7744: $3a
    ld c, [hl]                                    ; $7745: $4e
    ld [hl], h                                    ; $7746: $74
    ld a, h                                       ; $7747: $7c
    sbc l                                         ; $7748: $9d
    cp $6b                                        ; $7749: $fe $6b
    ld [hl], h                                    ; $774b: $74
    sbc a                                         ; $774c: $9f
    ldh [$ba], a                                  ; $774d: $e0 $ba
    push bc                                       ; $774f: $c5
    or l                                          ; $7750: $b5
    res 1, d                                      ; $7751: $cb $8a
    rst $30                                       ; $7753: $f7
    add a                                         ; $7754: $87
    db $fc                                        ; $7755: $fc
    sbc c                                         ; $7756: $99
    rst $38                                       ; $7757: $ff
    ld [bc], a                                    ; $7758: $02
    cp $a9                                        ; $7759: $fe $a9
    add d                                         ; $775b: $82
    cp $b2                                        ; $775c: $fe $b2
    adc $fa                                       ; $775e: $ce $fa
    add [hl]                                      ; $7760: $86
    db $fc                                        ; $7761: $fc
    add h                                         ; $7762: $84
    db $fc                                        ; $7763: $fc
    add h                                         ; $7764: $84
    cp d                                          ; $7765: $ba
    add $7e                                       ; $7766: $c6 $7e
    ld b, d                                       ; $7768: $42
    xor b                                         ; $7769: $a8
    ld a, b                                       ; $776a: $78
    ret c                                         ; $776b: $d8

    ld l, b                                       ; $776c: $68
    ld a, h                                       ; $776d: $7c
    call nz, $c4bc                                ; $776e: $c4 $bc $c4
    or h                                          ; $7771: $b4
    call z, Call_0f1_7c8c                         ; $7772: $cc $8c $7c
    or d                                          ; $7775: $b2
    ld a, [hl]                                    ; $7776: $7e
    adc $f2                                       ; $7777: $ce $f2
    sbc l                                         ; $7779: $9d
    db $e3                                        ; $777a: $e3
    ld e, a                                       ; $777b: $5f
    ld h, c                                       ; $777c: $61
    ld l, $31                                     ; $777d: $2e $31
    ld d, $19                                     ; $777f: $16 $19
    inc de                                        ; $7781: $13
    inc e                                         ; $7782: $1c
    dec c                                         ; $7783: $0d
    ld [bc], a                                    ; $7784: $02
    ld a, [bc]                                    ; $7785: $0a
    add e                                         ; $7786: $83
    dec c                                         ; $7787: $0d
    dec bc                                        ; $7788: $0b
    rrca                                          ; $7789: $0f
    ld [de], a                                    ; $778a: $12
    add b                                         ; $778b: $80
    ld [bc], a                                    ; $778c: $02
    sbc [hl]                                      ; $778d: $9e
    sub [hl]                                      ; $778e: $96
    ld [hl], a                                    ; $778f: $77
    rst $38                                       ; $7790: $ff
    ei                                            ; $7791: $fb
    ccf                                           ; $7792: $3f
    cp [hl]                                       ; $7793: $be
    ld a, a                                       ; $7794: $7f
    ld sp, hl                                     ; $7795: $f9
    rst $38                                       ; $7796: $ff
    ldh [rIE], a                                  ; $7797: $e0 $ff
    ld sp, $2acf                                  ; $7799: $31 $cf $2a
    dec [hl]                                      ; $779c: $35
    inc d                                         ; $779d: $14
    dec de                                        ; $779e: $1b
    add hl, bc                                    ; $779f: $09
    rrca                                          ; $77a0: $0f
    rlca                                          ; $77a1: $07
    ld b, $02                                     ; $77a2: $06 $02
    inc bc                                        ; $77a4: $03
    ld b, $01                                     ; $77a5: $06 $01
    add [hl]                                      ; $77a7: $86
    rrca                                          ; $77a8: $0f

jr_0f1_77a9:
    ld c, $37                                     ; $77a9: $0e $37
    ld a, $6f                                     ; $77ab: $3e $6f
    ld a, a                                       ; $77ad: $7f
    ld [bc], a                                    ; $77ae: $02
    rst $38                                       ; $77af: $ff
    or [hl]                                       ; $77b0: $b6
    call nc, $a1ff                                ; $77b1: $d4 $ff $a1
    cp $cf                                        ; $77b4: $fe $cf
    db $f4                                        ; $77b6: $f4
    ld h, b                                       ; $77b7: $60
    ld a, a                                       ; $77b8: $7f
    add [hl]                                      ; $77b9: $86
    add a                                         ; $77ba: $87
    add l                                         ; $77bb: $85
    add [hl]                                      ; $77bc: $86
    ld b, l                                       ; $77bd: $45
    add $c3                                       ; $77be: $c6 $c3
    ld b, d                                       ; $77c0: $42
    db $e3                                        ; $77c1: $e3
    ld [hl+], a                                   ; $77c2: $22
    push hl                                       ; $77c3: $e5
    ld h, $ff                                     ; $77c4: $26 $ff
    inc e                                         ; $77c6: $1c
    ld [hl], c                                    ; $77c7: $71
    sbc a                                         ; $77c8: $9f
    rst $10                                       ; $77c9: $d7
    ccf                                           ; $77ca: $3f
    ld a, a                                       ; $77cb: $7f
    rst $38                                       ; $77cc: $ff
    ld sp, hl                                     ; $77cd: $f9
    cp $cf                                        ; $77ce: $fe $cf
    ldh a, [rIE]                                  ; $77d0: $f0 $ff
    nop                                           ; $77d2: $00
    rst $38                                       ; $77d3: $ff
    nop                                           ; $77d4: $00
    ld a, a                                       ; $77d5: $7f
    add b                                         ; $77d6: $80
    ld [$8015], a                                 ; $77d7: $ea $15 $80
    nop                                           ; $77da: $00
    add b                                         ; $77db: $80
    nop                                           ; $77dc: $00
    add b                                         ; $77dd: $80
    nop                                           ; $77de: $00
    add b                                         ; $77df: $80
    nop                                           ; $77e0: $00
    add b                                         ; $77e1: $80
    nop                                           ; $77e2: $00
    add b                                         ; $77e3: $80
    nop                                           ; $77e4: $00
    add b                                         ; $77e5: $80
    nop                                           ; $77e6: $00
    ld b, $80                                     ; $77e7: $06 $80
    adc h                                         ; $77e9: $8c
    cp $03                                        ; $77ea: $fe $03
    ld a, [$f607]                                 ; $77ec: $fa $07 $f6
    dec bc                                        ; $77ef: $0b
    jp hl                                         ; $77f0: $e9


    rla                                           ; $77f1: $17
    ld c, [hl]                                    ; $77f2: $4e
    cp [hl]                                       ; $77f3: $be
    ld [hl], b                                    ; $77f4: $70
    ldh a, [rSC]                                  ; $77f5: $f0 $02
    inc b                                         ; $77f7: $04
    inc b                                         ; $77f8: $04
    ld b, $81                                     ; $77f9: $06 $81
    inc bc                                        ; $77fb: $03
    inc bc                                        ; $77fc: $03
    rlca                                          ; $77fd: $07
    add h                                         ; $77fe: $84
    dec b                                         ; $77ff: $05
    rlca                                          ; $7800: $07
    ld b, $0e                                     ; $7801: $06 $0e
    ld [bc], a                                    ; $7803: $02
    inc c                                         ; $7804: $0c
    ld [bc], a                                    ; $7805: $02
    ld [$000e], sp                                ; $7806: $08 $0e $00
    add h                                         ; $7809: $84
    xor d                                         ; $780a: $aa
    push af                                       ; $780b: $f5
    ld [hl], l                                    ; $780c: $75
    ld a, [hl]                                    ; $780d: $7e
    ld [bc], a                                    ; $780e: $02
    rrca                                          ; $780f: $0f
    ld a, [de]                                    ; $7810: $1a
    nop                                           ; $7811: $00
    add h                                         ; $7812: $84
    and a                                         ; $7813: $a7
    ld e, a                                       ; $7814: $5f
    ld a, b                                       ; $7815: $78
    ld hl, sp+$02                                 ; $7816: $f8 $02
    add b                                         ; $7818: $80
    ld a, [de]                                    ; $7819: $1a
    nop                                           ; $781a: $00
    rst $38                                       ; $781b: $ff
    dec h                                         ; $781c: $25
    db $10                                        ; $781d: $10
    rst $30                                       ; $781e: $f7
    ld a, [bc]                                    ; $781f: $0a
    jp $b300                                      ; $7820: $c3 $00 $b3


    push hl                                       ; $7823: $e5
    jp $c7e9                                      ; $7824: $c3 $e9 $c7


    pop af                                        ; $7827: $f1
    set 7, c                                      ; $7828: $cb $f9
    call z, $ce01                                 ; $782a: $cc $01 $ce
    ld b, $d3                                     ; $782d: $06 $d3
    db $ec                                        ; $782f: $ec
    rst $10                                       ; $7830: $d7
    db $f4                                        ; $7831: $f4
    db $db                                        ; $7832: $db
    db $fc                                        ; $7833: $fc
    db $e3                                        ; $7834: $e3
    ld a, [c]                                     ; $7835: $f2
    db $eb                                        ; $7836: $eb
    ld a, [$02eb]                                 ; $7837: $fa $eb $02
    ld a, [c]                                     ; $783a: $f2
    ld b, $f3                                     ; $783b: $06 $f3
    ld a, [c]                                     ; $783d: $f2
    di                                            ; $783e: $f3
    ld a, [$fef3]                                 ; $783f: $fa $f3 $fe
    ld [bc], a                                    ; $7842: $02
    ld b, b                                       ; $7843: $40
    cp [hl]                                       ; $7844: $be
    ldh [$a0], a                                  ; $7845: $e0 $a0
    ldh a, [$90]                                  ; $7847: $f0 $90
    or b                                          ; $7849: $b0
    ret nc                                        ; $784a: $d0

    or b                                          ; $784b: $b0
    ret nc                                        ; $784c: $d0

    cp b                                          ; $784d: $b8
    ret z                                         ; $784e: $c8

    ld a, b                                       ; $784f: $78
    ld c, b                                       ; $7850: $48
    ld e, b                                       ; $7851: $58
    ld l, b                                       ; $7852: $68
    ld e, h                                       ; $7853: $5c
    ld h, h                                       ; $7854: $64
    inc a                                         ; $7855: $3c
    inc h                                         ; $7856: $24
    inc l                                         ; $7857: $2c
    inc [hl]                                      ; $7858: $34
    ld l, $32                                     ; $7859: $2e $32
    ld e, $12                                     ; $785b: $1e $12
    ld d, $1a                                     ; $785d: $16 $1a
    rla                                           ; $785f: $17
    add hl, de                                    ; $7860: $19
    rrca                                          ; $7861: $0f
    add hl, bc                                    ; $7862: $09
    or b                                          ; $7863: $b0
    ret nc                                        ; $7864: $d0

    cp b                                          ; $7865: $b8
    ret z                                         ; $7866: $c8

    ld a, b                                       ; $7867: $78
    ld c, b                                       ; $7868: $48
    ld e, b                                       ; $7869: $58
    ld l, b                                       ; $786a: $68
    ld e, a                                       ; $786b: $5f
    ld h, a                                       ; $786c: $67
    ccf                                           ; $786d: $3f
    ld h, $3f                                     ; $786e: $26 $3f
    inc a                                         ; $7870: $3c
    ld a, [hl+]                                   ; $7871: $2a
    scf                                           ; $7872: $37
    ld e, l                                       ; $7873: $5d
    ld h, e                                       ; $7874: $63
    ld e, a                                       ; $7875: $5f
    ld h, c                                       ; $7876: $61
    ld e, a                                       ; $7877: $5f
    ld h, c                                       ; $7878: $61
    ld l, $31                                     ; $7879: $2e $31
    dec d                                         ; $787b: $15
    ld a, [de]                                    ; $787c: $1a
    ld [de], a                                    ; $787d: $12
    dec e                                         ; $787e: $1d
    ld de, $101e                                  ; $787f: $11 $1e $10
    rra                                           ; $7882: $1f
    ld [bc], a                                    ; $7883: $02
    add b                                         ; $7884: $80

jr_0f1_7885:
    ld [bc], a                                    ; $7885: $02
    ret nz                                        ; $7886: $c0

    sbc h                                         ; $7887: $9c
    ld a, h                                       ; $7888: $7c
    db $fc                                        ; $7889: $fc
    cp a                                          ; $788a: $bf
    jp $817e                                      ; $788b: $c3 $7e $81


    ld c, a                                       ; $788e: $4f
    ldh a, [$af]                                  ; $788f: $f0 $af
    ret nc                                        ; $7891: $d0

    sub [hl]                                      ; $7892: $96
    jp hl                                         ; $7893: $e9


    ld b, c                                       ; $7894: $41
    rst $38                                       ; $7895: $ff
    add $7f                                       ; $7896: $c6 $7f
    ld a, b                                       ; $7898: $78
    rst $38                                       ; $7899: $ff
    ld d, b                                       ; $789a: $50
    rst $38                                       ; $789b: $ff
    ldh a, [$9f]                                  ; $789c: $f0 $9f
    inc [hl]                                      ; $789e: $34
    rst $18                                       ; $789f: $df
    ld [de], a                                    ; $78a0: $12
    rst $38                                       ; $78a1: $ff
    ld a, [hl+]                                   ; $78a2: $2a
    rst $30                                       ; $78a3: $f7
    inc b                                         ; $78a4: $04
    add b                                         ; $78a5: $80
    ld [bc], a                                    ; $78a6: $02
    rst $38                                       ; $78a7: $ff
    sbc d                                         ; $78a8: $9a
    rst $20                                       ; $78a9: $e7
    sbc b                                         ; $78aa: $98
    ccf                                           ; $78ab: $3f
    ldh a, [$dc]                                  ; $78ac: $f0 $dc
    db $e3                                        ; $78ae: $e3
    daa                                           ; $78af: $27
    rst $38                                       ; $78b0: $ff
    ld e, b                                       ; $78b1: $58
    cp b                                          ; $78b2: $b8
    jr nc, jr_0f1_7885                            ; $78b3: $30 $d0

    ld d, b                                       ; $78b5: $50
    or b                                          ; $78b6: $b0
    xor b                                         ; $78b7: $a8
    ld e, b                                       ; $78b8: $58
    ld l, b                                       ; $78b9: $68
    sbc b                                         ; $78ba: $98
    ld hl, sp+$08                                 ; $78bb: $f8 $08
    ld [hl], h                                    ; $78bd: $74
    adc h                                         ; $78be: $8c
    inc [hl]                                      ; $78bf: $34
    call z, $acd4                                 ; $78c0: $cc $d4 $ac
    ld [bc], a                                    ; $78c3: $02
    ld hl, sp-$76                                 ; $78c4: $f8 $8a
    ld h, [hl]                                    ; $78c6: $66
    cp [hl]                                       ; $78c7: $be
    db $fd                                        ; $78c8: $fd
    inc hl                                        ; $78c9: $23
    cpl                                           ; $78ca: $2f
    ldh a, [$e7]                                  ; $78cb: $f0 $e7
    ld hl, sp+$3c                                 ; $78cd: $f8 $3c
    ccf                                           ; $78cf: $3f
    ld [bc], a                                    ; $78d0: $02
    inc bc                                        ; $78d1: $03
    ld [de], a                                    ; $78d2: $12
    nop                                           ; $78d3: $00
    ld [bc], a                                    ; $78d4: $02
    db $10                                        ; $78d5: $10
    adc d                                         ; $78d6: $8a
    ld c, $1e                                     ; $78d7: $0e $1e
    rrca                                          ; $78d9: $0f
    ld de, $110f                                  ; $78da: $11 $0f $11
    dec c                                         ; $78dd: $0d

jr_0f1_78de:
    inc de                                        ; $78de: $13
    ld [de], a                                    ; $78df: $12
    ld e, $02                                     ; $78e0: $1e $02
    inc c                                         ; $78e2: $0c
    ld [de], a                                    ; $78e3: $12
    nop                                           ; $78e4: $00
    sbc b                                         ; $78e5: $98
    ret nz                                        ; $78e6: $c0

    ld hl, sp-$48                                 ; $78e7: $f8 $b8
    ld hl, sp-$60                                 ; $78e9: $f8 $a0
    ld hl, sp+$50                                 ; $78eb: $f8 $50
    ld a, b                                       ; $78ed: $78
    ld a, $3f                                     ; $78ee: $3e $3f
    db $10                                        ; $78f0: $10
    rra                                           ; $78f1: $1f
    ld de, $111e                                  ; $78f2: $11 $1e $11
    ld e, $09                                     ; $78f5: $1e $09
    ld c, $09                                     ; $78f7: $0e $09
    ld c, $08                                     ; $78f9: $0e $08
    rrca                                          ; $78fb: $0f
    inc b                                         ; $78fc: $04

jr_0f1_78fd:
    rlca                                          ; $78fd: $07
    ld [bc], a                                    ; $78fe: $02
    inc bc                                        ; $78ff: $03
    and h                                         ; $7900: $a4
    ld [bc], a                                    ; $7901: $02

jr_0f1_7902:
    inc bc                                        ; $7902: $03
    ld [bc], a                                    ; $7903: $02

jr_0f1_7904:
    inc bc                                        ; $7904: $03
    ld [bc], a                                    ; $7905: $02
    inc bc                                        ; $7906: $03
    ret nc                                        ; $7907: $d0

    jr c, jr_0f1_7902                             ; $7908: $38 $f8

jr_0f1_790a:
    jr jr_0f1_7904                                ; $790a: $18 $f8

    jr jr_0f1_78de                                ; $790c: $18 $d0

    jr c, jr_0f1_78fd                             ; $790e: $38 $ed

    ld [hl], $6a                                  ; $7910: $36 $6a
    or a                                          ; $7912: $b7
    xor a                                         ; $7913: $af
    ld a, a                                       ; $7914: $7f
    halt                                          ; $7915: $76
    ld sp, hl                                     ; $7916: $f9
    xor a                                         ; $7917: $af
    pop de                                        ; $7918: $d1
    ld a, l                                       ; $7919: $7d
    add e                                         ; $791a: $83
    ld [$d217], a                                 ; $791b: $ea $17 $d2
    cpl                                           ; $791e: $2f
    dec h                                         ; $791f: $25
    sbc $0b                                       ; $7920: $de $0b
    db $fc                                        ; $7922: $fc
    inc sp                                        ; $7923: $33
    rst $38                                       ; $7924: $ff
    ld [bc], a                                    ; $7925: $02
    db $fd                                        ; $7926: $fd
    and d                                         ; $7927: $a2
    jr nz, jr_0f1_790a                            ; $7928: $20 $e0

    ld b, b                                       ; $792a: $40
    ret nz                                        ; $792b: $c0

    ld b, b                                       ; $792c: $40
    ret nz                                        ; $792d: $c0

    and b                                         ; $792e: $a0
    ldh [$60], a                                  ; $792f: $e0 $60
    and b                                         ; $7931: $a0

jr_0f1_7932:
    ldh a, [rNR10]                                ; $7932: $f0 $10
    ldh a, [rNR10]                                ; $7934: $f0 $10
    ld d, b                                       ; $7936: $50
    or b                                          ; $7937: $b0
    jr jr_0f1_7932                                ; $7938: $18 $f8

    ld h, h                                       ; $793a: $64
    db $fc                                        ; $793b: $fc
    sbc h                                         ; $793c: $9c
    db $e4                                        ; $793d: $e4
    ld a, [hl-]                                   ; $793e: $3a
    add $be                                       ; $793f: $c6 $be
    jp nz, Jump_0f1_635d                          ; $7941: $c2 $5d $63

    dec l                                         ; $7944: $2d
    inc sp                                        ; $7945: $33
    daa                                           ; $7946: $27
    add hl, sp                                    ; $7947: $39
    add b                                         ; $7948: $80
    ret nz                                        ; $7949: $c0

    ld b, $40                                     ; $794a: $06 $40
    sbc c                                         ; $794c: $99
    ld b, c                                       ; $794d: $41
    ld a, a                                       ; $794e: $7f
    ld e, c                                       ; $794f: $59
    ld h, a                                       ; $7950: $67
    ld a, l                                       ; $7951: $7d
    ld b, e                                       ; $7952: $43
    ld a, [hl]                                    ; $7953: $7e
    ld b, d                                       ; $7954: $42
    ld a, [hl]                                    ; $7955: $7e
    ld b, d                                       ; $7956: $42
    ld e, l                                       ; $7957: $5d
    ld h, e                                       ; $7958: $63
    ccf                                           ; $7959: $3f
    ld hl, $352a                                  ; $795a: $21 $2a $35
    inc d                                         ; $795d: $14
    dec de                                        ; $795e: $1b
    add hl, bc                                    ; $795f: $09
    rrca                                          ; $7960: $0f
    rlca                                          ; $7961: $07
    ld b, $02                                     ; $7962: $06 $02
    inc bc                                        ; $7964: $03
    ld b, $02                                     ; $7965: $06 $02
    dec b                                         ; $7967: $05
    sbc [hl]                                      ; $7968: $9e
    ld b, $05                                     ; $7969: $06 $05
    rlca                                          ; $796b: $07
    add [hl]                                      ; $796c: $86
    add a                                         ; $796d: $87
    add l                                         ; $796e: $85
    add [hl]                                      ; $796f: $86
    ld b, l                                       ; $7970: $45
    add $c3                                       ; $7971: $c6 $c3
    ld b, d                                       ; $7973: $42
    db $e3                                        ; $7974: $e3
    ld [hl+], a                                   ; $7975: $22
    push hl                                       ; $7976: $e5
    ld h, $ff                                     ; $7977: $26 $ff
    inc e                                         ; $7979: $1c
    ld [hl], c                                    ; $797a: $71
    sbc a                                         ; $797b: $9f
    rst $10                                       ; $797c: $d7
    ccf                                           ; $797d: $3f
    ld a, a                                       ; $797e: $7f
    rst $38                                       ; $797f: $ff
    ld sp, hl                                     ; $7980: $f9
    cp $cf                                        ; $7981: $fe $cf
    ldh a, [rIE]                                  ; $7983: $f0 $ff
    nop                                           ; $7985: $00
    ret nz                                        ; $7986: $c0

    ld [bc], a                                    ; $7987: $02
    ld b, b                                       ; $7988: $40
    inc b                                         ; $7989: $04
    ret nz                                        ; $798a: $c0

    sbc c                                         ; $798b: $99
    ld b, b                                       ; $798c: $40
    ret nz                                        ; $798d: $c0

    ld b, b                                       ; $798e: $40
    ret nz                                        ; $798f: $c0

    ld b, b                                       ; $7990: $40
    rst $08                                       ; $7991: $cf
    ld c, a                                       ; $7992: $4f
    cp e                                          ; $7993: $bb
    ld a, a                                       ; $7994: $7f
    db $fd                                        ; $7995: $fd
    rra                                           ; $7996: $1f
    rst $18                                       ; $7997: $df
    ccf                                           ; $7998: $3f
    db $fc                                        ; $7999: $fc
    rst $38                                       ; $799a: $ff
    ldh a, [rIE]                                  ; $799b: $f0 $ff
    sbc b                                         ; $799d: $98
    rst $20                                       ; $799e: $e7
    cp $03                                        ; $799f: $fe $03
    ld a, [$f607]                                 ; $79a1: $fa $07 $f6
    dec bc                                        ; $79a4: $0b
    ld [bc], a                                    ; $79a5: $02
    inc c                                         ; $79a6: $0c
    ld [bc], a                                    ; $79a7: $02
    ld c, $8a                                     ; $79a8: $0e $8a
    ld b, $0e                                     ; $79aa: $06 $0e
    dec bc                                        ; $79ac: $0b
    rrca                                          ; $79ad: $0f
    rlca                                          ; $79ae: $07
    rrca                                          ; $79af: $0f
    dec c                                         ; $79b0: $0d
    rrca                                          ; $79b1: $0f
    ld b, $0e                                     ; $79b2: $06 $0e
    ld [bc], a                                    ; $79b4: $02
    inc c                                         ; $79b5: $0c
    ld [bc], a                                    ; $79b6: $02
    ld [$9082], sp                                ; $79b7: $08 $82 $90
    ld [hl], b                                    ; $79ba: $70
    ld [bc], a                                    ; $79bb: $02
    ldh [$0a], a                                  ; $79bc: $e0 $0a
    nop                                           ; $79be: $00
    ld b, $01                                     ; $79bf: $06 $01
    add [hl]                                      ; $79c1: $86
    rrca                                          ; $79c2: $0f
    ld c, $37                                     ; $79c3: $0e $37
    ld a, $6f                                     ; $79c5: $3e $6f
    ld a, a                                       ; $79c7: $7f
    ld [bc], a                                    ; $79c8: $02
    rst $38                                       ; $79c9: $ff
    adc h                                         ; $79ca: $8c
    call nc, $a1ff                                ; $79cb: $d4 $ff $a1
    cp $cf                                        ; $79ce: $fe $cf
    db $f4                                        ; $79d0: $f4
    ld h, b                                       ; $79d1: $60
    ld a, a                                       ; $79d2: $7f
    ld d, l                                       ; $79d3: $55
    ld a, d                                       ; $79d4: $7a
    ld a, [hl-]                                   ; $79d5: $3a
    ccf                                           ; $79d6: $3f
    ld [bc], a                                    ; $79d7: $02
    rlca                                          ; $79d8: $07
    inc d                                         ; $79d9: $14
    nop                                           ; $79da: $00
    adc d                                         ; $79db: $8a
    rst $38                                       ; $79dc: $ff
    nop                                           ; $79dd: $00
    ld a, a                                       ; $79de: $7f
    add b                                         ; $79df: $80
    ld [$5315], a                                 ; $79e0: $ea $15 $53
    xor a                                         ; $79e3: $af
    cp h                                          ; $79e4: $bc
    ld a, h                                       ; $79e5: $7c
    ld [bc], a                                    ; $79e6: $02
    ret nz                                        ; $79e7: $c0

    inc d                                         ; $79e8: $14
    nop                                           ; $79e9: $00
    add [hl]                                      ; $79ea: $86
    ld c, $01                                     ; $79eb: $0e $01
    inc b                                         ; $79ed: $04
    dec bc                                        ; $79ee: $0b
    rlca                                          ; $79ef: $07
    rrca                                          ; $79f0: $0f
    ld [bc], a                                    ; $79f1: $02
    ld [$0008], sp                                ; $79f2: $08 $08 $00
    rst $38                                       ; $79f5: $ff
    dec h                                         ; $79f6: $25
    db $10                                        ; $79f7: $10
    rst $30                                       ; $79f8: $f7
    ld a, [bc]                                    ; $79f9: $0a
    jp $bb00                                      ; $79fa: $c3 $00 $bb


    xor $c0                                       ; $79fd: $ee $c0
    or $c9                                        ; $79ff: $f6 $c9
    cp $cb                                        ; $7a01: $fe $cb
    pop af                                        ; $7a03: $f1
    ret nc                                        ; $7a04: $d0

    ld sp, hl                                     ; $7a05: $f9
    pop de                                        ; $7a06: $d1
    ld bc, $04d6                                  ; $7a07: $01 $d6 $04
    db $db                                        ; $7a0a: $db
    or $e0                                        ; $7a0b: $f6 $e0
    cp $e8                                        ; $7a0d: $fe $e8
    dec b                                         ; $7a0f: $05
    db $eb                                        ; $7a10: $eb
    ld a, [c]                                     ; $7a11: $f2
    db $eb                                        ; $7a12: $eb
    ld a, [$02f0]                                 ; $7a13: $fa $f0 $02
    ld hl, sp+$05                                 ; $7a16: $f8 $05
    ei                                            ; $7a18: $fb
    ld a, [c]                                     ; $7a19: $f2
    ei                                            ; $7a1a: $fb
    ld a, [$6002]                                 ; $7a1b: $fa $02 $60
    sub c                                         ; $7a1e: $91
    cp b                                          ; $7a1f: $b8
    ret c                                         ; $7a20: $d8

    ld e, h                                       ; $7a21: $5c
    ld h, h                                       ; $7a22: $64
    ld c, [hl]                                    ; $7a23: $4e
    ld [hl], d                                    ; $7a24: $72
    daa                                           ; $7a25: $27
    add hl, sp                                    ; $7a26: $39
    inc de                                        ; $7a27: $13
    inc e                                         ; $7a28: $1c
    add hl, bc                                    ; $7a29: $09
    ld c, $05                                     ; $7a2a: $0e $05
    ld b, $02                                     ; $7a2c: $06 $02
    inc bc                                        ; $7a2e: $03
    ld [bc], a                                    ; $7a2f: $02
    inc bc                                        ; $7a30: $03
    inc bc                                        ; $7a31: $03
    add e                                         ; $7a32: $83
    rlca                                          ; $7a33: $07
    ld b, $05                                     ; $7a34: $06 $05
    ld [bc], a                                    ; $7a36: $02
    ld b, $81                                     ; $7a37: $06 $81
    rlca                                          ; $7a39: $07
    ld [bc], a                                    ; $7a3a: $02
    inc bc                                        ; $7a3b: $03
    add d                                         ; $7a3c: $82
    ld [bc], a                                    ; $7a3d: $02
    inc bc                                        ; $7a3e: $03
    ld [bc], a                                    ; $7a3f: $02
    add b                                         ; $7a40: $80
    sbc [hl]                                      ; $7a41: $9e
    ret nz                                        ; $7a42: $c0

    ld b, b                                       ; $7a43: $40
    ldh [rNR41], a                                ; $7a44: $e0 $20
    ldh [rNR41], a                                ; $7a46: $e0 $20

jr_0f1_7a48:
    ld [hl], b                                    ; $7a48: $70
    sub b                                         ; $7a49: $90
    jr c, @-$36                                   ; $7a4a: $38 $c8

    sbc h                                         ; $7a4c: $9c
    db $e4                                        ; $7a4d: $e4
    adc $72                                       ; $7a4e: $ce $72
    rst $20                                       ; $7a50: $e7
    ld sp, hl                                     ; $7a51: $f9
    inc de                                        ; $7a52: $13
    db $fc                                        ; $7a53: $fc
    ld a, c                                       ; $7a54: $79
    adc [hl]                                      ; $7a55: $8e
    call nc, $3bff                                ; $7a56: $d4 $ff $3b
    rst $00                                       ; $7a59: $c7
    dec d                                         ; $7a5a: $15
    xor $07                                       ; $7a5b: $ee $07
    db $fc                                        ; $7a5d: $fc
    set 7, h                                      ; $7a5e: $cb $fc
    ld [bc], a                                    ; $7a60: $02
    ret nz                                        ; $7a61: $c0

    sbc [hl]                                      ; $7a62: $9e
    ldh [$60], a                                  ; $7a63: $e0 $60
    ldh [$60], a                                  ; $7a65: $e0 $60
    ldh [$a0], a                                  ; $7a67: $e0 $a0
    ld [hl], b                                    ; $7a69: $70
    ldh a, [$d0]                                  ; $7a6a: $f0 $d0

jr_0f1_7a6c:
    jr nc, jr_0f1_7a6c                            ; $7a6c: $30 $fe

    ld e, $15                                     ; $7a6e: $1e $15
    ei                                            ; $7a70: $fb
    ld h, [hl]                                    ; $7a71: $66
    ld sp, hl                                     ; $7a72: $f9
    adc c                                         ; $7a73: $89
    rst $38                                       ; $7a74: $ff
    dec bc                                        ; $7a75: $0b
    cp $1c                                        ; $7a76: $fe $1c
    rst $28                                       ; $7a78: $ef
    dec h                                         ; $7a79: $25
    sbc $56                                       ; $7a7a: $de $56
    xor a                                         ; $7a7c: $af
    cp a                                          ; $7a7d: $bf
    add $de                                       ; $7a7e: $c6 $de
    and a                                         ; $7a80: $a7
    ld [bc], a                                    ; $7a81: $02
    jr @-$7a                                      ; $7a82: $18 $84

    db $10                                        ; $7a84: $10
    jr jr_0f1_7a97                                ; $7a85: $18 $10

    jr @+$04                                      ; $7a87: $18 $02

    ld [$3802], sp                                ; $7a89: $08 $02 $38
    or [hl]                                       ; $7a8c: $b6
    ld [hl], l                                    ; $7a8d: $75
    ld c, a                                       ; $7a8e: $4f
    ld a, [$d5bf]                                 ; $7a8f: $fa $bf $d5
    xor $ff                                       ; $7a92: $ee $ff
    call z, $6f54                                 ; $7a94: $cc $54 $6f

jr_0f1_7a97:
    ld e, d                                       ; $7a97: $5a
    ld h, a                                       ; $7a98: $67
    ld hl, $233f                                  ; $7a99: $21 $3f $23
    ccf                                           ; $7a9c: $3f
    inc e                                         ; $7a9d: $1c
    rra                                           ; $7a9e: $1f
    add hl, bc                                    ; $7a9f: $09
    ld c, $0b                                     ; $7aa0: $0e $0b
    inc c                                         ; $7aa2: $0c
    cp b                                          ; $7aa3: $b8
    ret nz                                        ; $7aa4: $c0

    ret nc                                        ; $7aa5: $d0

    jr z, jr_0f1_7a48                             ; $7aa6: $28 $a0

    ld e, b                                       ; $7aa8: $58
    ld c, b                                       ; $7aa9: $48
    cp b                                          ; $7aaa: $b8

jr_0f1_7aab:
    db $10                                        ; $7aab: $10
    ld hl, sp+$28                                 ; $7aac: $f8 $28
    ld hl, sp-$18                                 ; $7aae: $f8 $e8
    ld hl, sp+$10                                 ; $7ab0: $f8 $10
    ld hl, sp-$30                                 ; $7ab2: $f8 $d0
    jr c, jr_0f1_7aab                             ; $7ab4: $38 $f5

    ld e, $fd                                     ; $7ab6: $1e $fd
    ld d, $da                                     ; $7ab8: $16 $da
    scf                                           ; $7aba: $37
    db $ed                                        ; $7abb: $ed
    inc sp                                        ; $7abc: $33
    cp a                                          ; $7abd: $bf
    ld a, a                                       ; $7abe: $7f
    rst $08                                       ; $7abf: $cf
    ldh a, [rIE]                                  ; $7ac0: $f0 $ff
    ld bc, $0402                                  ; $7ac2: $01 $02 $04
    ld [bc], a                                    ; $7ac5: $02
    ld b, $94                                     ; $7ac6: $06 $94
    dec b                                         ; $7ac8: $05
    inc bc                                        ; $7ac9: $03
    rlca                                          ; $7aca: $07
    ld bc, $0107                                  ; $7acb: $01 $07 $01
    rlca                                          ; $7ace: $07
    ld bc, $0403                                  ; $7acf: $01 $03 $04
    rlca                                          ; $7ad2: $07
    nop                                           ; $7ad3: $00
    db $db                                        ; $7ad4: $db
    inc a                                         ; $7ad5: $3c
    reti                                          ; $7ad6: $d9


    ld a, $d4                                     ; $7ad7: $3e $d4
    scf                                           ; $7ad9: $37
    ld h, e                                       ; $7ada: $63
    and e                                         ; $7adb: $a3
    ld [bc], a                                    ; $7adc: $02
    ret nz                                        ; $7add: $c0

    add [hl]                                      ; $7ade: $86
    and b                                         ; $7adf: $a0
    ldh [$60], a                                  ; $7ae0: $e0 $60
    and b                                         ; $7ae2: $a0
    ldh [rNR41], a                                ; $7ae3: $e0 $20
    ld [bc], a                                    ; $7ae5: $02
    inc b                                         ; $7ae6: $04
    adc b                                         ; $7ae7: $88
    ld [bc], a                                    ; $7ae8: $02
    ld b, $07                                     ; $7ae9: $06 $07
    ld bc, $0305                                  ; $7aeb: $01 $05 $03
    ld [bc], a                                    ; $7aee: $02
    ld b, $02                                     ; $7aef: $06 $02
    inc b                                         ; $7af1: $04
    ld a, [bc]                                    ; $7af2: $0a
    nop                                           ; $7af3: $00
    ld a, [bc]                                    ; $7af4: $0a
    add b                                         ; $7af5: $80
    add l                                         ; $7af6: $85
    ldh [$80], a                                  ; $7af7: $e0 $80
    and b                                         ; $7af9: $a0
    ret nz                                        ; $7afa: $c0

    ld b, b                                       ; $7afb: $40
    inc bc                                        ; $7afc: $03
    ld h, b                                       ; $7afd: $60
    or h                                          ; $7afe: $b4
    ld b, b                                       ; $7aff: $40
    ld h, b                                       ; $7b00: $60
    ld c, e                                       ; $7b01: $4b
    ld [hl], h                                    ; $7b02: $74
    ld d, h                                       ; $7b03: $54
    ld l, e                                       ; $7b04: $6b
    xor c                                         ; $7b05: $a9
    rst $10                                       ; $7b06: $d7
    add [hl]                                      ; $7b07: $86
    rst $38                                       ; $7b08: $ff
    sbc c                                         ; $7b09: $99
    cp $e7                                        ; $7b0a: $fe $e7
    rst $38                                       ; $7b0c: $ff
    and d                                         ; $7b0d: $a2
    sbc $f4                                       ; $7b0e: $de $f4
    adc h                                         ; $7b10: $8c
    db $f4                                        ; $7b11: $f4
    adc h                                         ; $7b12: $8c
    db $f4                                        ; $7b13: $f4
    adc h                                         ; $7b14: $8c
    db $fc                                        ; $7b15: $fc
    add h                                         ; $7b16: $84
    ld b, b                                       ; $7b17: $40
    ldh [$98], a                                  ; $7b18: $e0 $98
    db $e4                                        ; $7b1a: $e4
    ret c                                         ; $7b1b: $d8

    db $e4                                        ; $7b1c: $e4

jr_0f1_7b1d:
    xor h                                         ; $7b1d: $ac
    ld e, h                                       ; $7b1e: $5c
    jr nc, jr_0f1_7b1d                            ; $7b1f: $30 $fc

    ret nz                                        ; $7b21: $c0

    db $fc                                        ; $7b22: $fc
    adc l                                         ; $7b23: $8d
    di                                            ; $7b24: $f3
    ld e, a                                       ; $7b25: $5f
    ld h, c                                       ; $7b26: $61
    ld l, $31                                     ; $7b27: $2e $31
    ld l, $31                                     ; $7b29: $2e $31
    ld e, $11                                     ; $7b2b: $1e $11
    ld e, $11                                     ; $7b2d: $1e $11
    rra                                           ; $7b2f: $1f
    ld de, $3b25                                  ; $7b30: $11 $25 $3b
    ld [bc], a                                    ; $7b33: $02
    ld a, $82                                     ; $7b34: $3e $82
    ld l, $32                                     ; $7b36: $2e $32
    ld [$0e40], sp                                ; $7b38: $08 $40 $0e
    nop                                           ; $7b3b: $00
    ld [bc], a                                    ; $7b3c: $02
    add b                                         ; $7b3d: $80
    sub c                                         ; $7b3e: $91
    db $fc                                        ; $7b3f: $fc
    ld a, h                                       ; $7b40: $7c
    halt                                          ; $7b41: $76
    cp $fb                                        ; $7b42: $fe $fb
    rst $38                                       ; $7b44: $ff
    push hl                                       ; $7b45: $e5
    rst $38                                       ; $7b46: $ff
    dec bc                                        ; $7b47: $0b
    inc c                                         ; $7b48: $0c
    dec bc                                        ; $7b49: $0b
    inc c                                         ; $7b4a: $0c

jr_0f1_7b4b:
    rlca                                          ; $7b4b: $07
    inc b                                         ; $7b4c: $04
    dec b                                         ; $7b4d: $05
    ld b, $02                                     ; $7b4e: $06 $02
    inc bc                                        ; $7b50: $03
    inc bc                                        ; $7b51: $03
    inc b                                         ; $7b52: $04
    ld bc, $0004                                  ; $7b53: $01 $04 $00
    ld [bc], a                                    ; $7b56: $02
    ld bc, $0eb6                                  ; $7b57: $01 $b6 $0e
    rrca                                          ; $7b5a: $0f
    ccf                                           ; $7b5b: $3f
    ld a, $6f                                     ; $7b5c: $3e $6f
    ld a, a                                       ; $7b5e: $7f
    rst $30                                       ; $7b5f: $f7
    rst $38                                       ; $7b60: $ff
    jp $c0fc                                      ; $7b61: $c3 $fc $c0


    ld b, b                                       ; $7b64: $40
    ret nz                                        ; $7b65: $c0

    ld b, b                                       ; $7b66: $40
    and b                                         ; $7b67: $a0
    ld h, b                                       ; $7b68: $60
    jr nz, jr_0f1_7b4b                            ; $7b69: $20 $e0

    ld h, b                                       ; $7b6b: $60
    ldh [$a2], a                                  ; $7b6c: $e0 $a2
    db $e3                                        ; $7b6e: $e3
    pop de                                        ; $7b6f: $d1
    ld sp, $9171                                  ; $7b70: $31 $71 $91
    pop af                                        ; $7b73: $f1
    sub c                                         ; $7b74: $91
    xor $9f                                       ; $7b75: $ee $9f
    ld [$f19f], a                                 ; $7b77: $ea $9f $f1
    rra                                           ; $7b7a: $1f
    cp a                                          ; $7b7b: $bf
    ld a, a                                       ; $7b7c: $7f
    cp $ff                                        ; $7b7d: $fe $ff
    dec bc                                        ; $7b7f: $0b
    db $f4                                        ; $7b80: $f4
    ld d, a                                       ; $7b81: $57
    xor b                                         ; $7b82: $a8
    ldh [rNR41], a                                ; $7b83: $e0 $20
    ldh [rNR41], a                                ; $7b85: $e0 $20
    ldh [rNR41], a                                ; $7b87: $e0 $20
    ldh [rNR41], a                                ; $7b89: $e0 $20
    ldh [rP1], a                                  ; $7b8b: $e0 $00
    ld h, b                                       ; $7b8d: $60
    add b                                         ; $7b8e: $80
    inc b                                         ; $7b8f: $04
    ldh [$8e], a                                  ; $7b90: $e0 $8e
    db $10                                        ; $7b92: $10
    rst $28                                       ; $7b93: $ef
    add sp, $17                                   ; $7b94: $e8 $17
    sbc $23                                       ; $7b96: $de $23
    ld a, [$f607]                                 ; $7b98: $fa $07 $f6
    dec bc                                        ; $7b9b: $0b
    db $eb                                        ; $7b9c: $eb
    rla                                           ; $7b9d: $17
    cp h                                          ; $7b9e: $bc
    ld a, h                                       ; $7b9f: $7c
    ld [bc], a                                    ; $7ba0: $02
    ret nz                                        ; $7ba1: $c0

    ld [bc], a                                    ; $7ba2: $02
    rlca                                          ; $7ba3: $07
    add e                                         ; $7ba4: $83
    inc bc                                        ; $7ba5: $03
    rlca                                          ; $7ba6: $07
    ld [bc], a                                    ; $7ba7: $02
    inc bc                                        ; $7ba8: $03
    ld b, $02                                     ; $7ba9: $06 $02
    inc b                                         ; $7bab: $04
    ld d, $00                                     ; $7bac: $16 $00
    adc d                                         ; $7bae: $8a
    push bc                                       ; $7baf: $c5
    cp $6b                                        ; $7bb0: $fe $6b
    ld [hl], h                                    ; $7bb2: $74
    ld [hl], l                                    ; $7bb3: $75
    ld l, [hl]                                    ; $7bb4: $6e
    dec hl                                        ; $7bb5: $2b
    ld [hl], $1e                                  ; $7bb6: $36 $1e
    rra                                           ; $7bb8: $1f
    ld [bc], a                                    ; $7bb9: $02
    inc bc                                        ; $7bba: $03
    inc d                                         ; $7bbb: $14
    nop                                           ; $7bbc: $00
    adc d                                         ; $7bbd: $8a
    rst $28                                       ; $7bbe: $ef
    db $10                                        ; $7bbf: $10
    rst $38                                       ; $7bc0: $ff
    nop                                           ; $7bc1: $00
    rst $38                                       ; $7bc2: $ff
    nop                                           ; $7bc3: $00
    ld d, [hl]                                    ; $7bc4: $56
    xor c                                         ; $7bc5: $a9
    sbc a                                         ; $7bc6: $9f
    ld a, a                                       ; $7bc7: $7f
    ld [bc], a                                    ; $7bc8: $02
    ldh [rNR14], a                                ; $7bc9: $e0 $14
    nop                                           ; $7bcb: $00
    rst $38                                       ; $7bcc: $ff
    dec bc                                        ; $7bcd: $0b
    inc bc                                        ; $7bce: $03
    ld a, [c]                                     ; $7bcf: $f2
    rrca                                          ; $7bd0: $0f
    jp hl                                         ; $7bd1: $e9


    ld bc, $f9f3                                  ; $7bd2: $01 $f3 $f9
    di                                            ; $7bd5: $f3
    ld bc, $02f3                                  ; $7bd6: $01 $f3 $02
    inc b                                         ; $7bd9: $04
    nop                                           ; $7bda: $00
    ld [bc], a                                    ; $7bdb: $02
    ld d, c                                       ; $7bdc: $51
    sub d                                         ; $7bdd: $92
    rst $38                                       ; $7bde: $ff
    xor a                                         ; $7bdf: $af
    ld a, a                                       ; $7be0: $7f
    ld d, h                                       ; $7be1: $54
    rst $38                                       ; $7be2: $ff
    xor b                                         ; $7be3: $a8
    rst $38                                       ; $7be4: $ff
    ret nz                                        ; $7be5: $c0

    ld a, a                                       ; $7be6: $7f
    ld [hl], c                                    ; $7be7: $71
    ld a, a                                       ; $7be8: $7f
    ld e, [hl]                                    ; $7be9: $5e
    ccf                                           ; $7bea: $3f
    jr z, @+$21                                   ; $7beb: $28 $1f

    db $10                                        ; $7bed: $10
    rrca                                          ; $7bee: $0f
    dec c                                         ; $7bef: $0d
    inc b                                         ; $7bf0: $04
    ld b, $02                                     ; $7bf1: $06 $02
    dec b                                         ; $7bf3: $05
    ld [bc], a                                    ; $7bf4: $02
    nop                                           ; $7bf5: $00
    ld [bc], a                                    ; $7bf6: $02
    ld e, $94                                     ; $7bf7: $1e $94
    ld a, l                                       ; $7bf9: $7d
    ld h, a                                       ; $7bfa: $67
    cp $83                                        ; $7bfb: $fe $83
    db $fd                                        ; $7bfd: $fd
    scf                                           ; $7bfe: $37
    ld a, [$fcce]                                 ; $7bff: $fa $ce $fc
    ld b, h                                       ; $7c02: $44
    db $fc                                        ; $7c03: $fc
    ld b, h                                       ; $7c04: $44
    db $fc                                        ; $7c05: $fc
    add h                                         ; $7c06: $84
    ld hl, sp+$08                                 ; $7c07: $f8 $08
    ld hl, sp+$08                                 ; $7c09: $f8 $08
    ldh a, [$b0]                                  ; $7c0b: $f0 $b0
    inc b                                         ; $7c0d: $04
    ret nz                                        ; $7c0e: $c0

    ld [bc], a                                    ; $7c0f: $02
    and b                                         ; $7c10: $a0
    ld [$0200], sp                                ; $7c11: $08 $00 $02
    ld bc, $001a                                  ; $7c14: $01 $1a $00
    rst $38                                       ; $7c17: $ff
    dec bc                                        ; $7c18: $0b
    inc bc                                        ; $7c19: $03
    ld a, [c]                                     ; $7c1a: $f2
    rrca                                          ; $7c1b: $0f
    jp hl                                         ; $7c1c: $e9


    ld bc, $f9f3                                  ; $7c1d: $01 $f3 $f9
    di                                            ; $7c20: $f3
    ld bc, $02f3                                  ; $7c21: $01 $f3 $02
    inc b                                         ; $7c24: $04
    nop                                           ; $7c25: $00
    ld [bc], a                                    ; $7c26: $02
    ld d, c                                       ; $7c27: $51
    sub d                                         ; $7c28: $92
    rst $38                                       ; $7c29: $ff
    xor a                                         ; $7c2a: $af
    ld a, a                                       ; $7c2b: $7f
    ld b, h                                       ; $7c2c: $44
    rst $38                                       ; $7c2d: $ff
    sbc d                                         ; $7c2e: $9a
    rst $38                                       ; $7c2f: $ff
    and h                                         ; $7c30: $a4
    ld a, a                                       ; $7c31: $7f
    ld d, b                                       ; $7c32: $50
    ld a, a                                       ; $7c33: $7f
    ld e, b                                       ; $7c34: $58
    ccf                                           ; $7c35: $3f

Jump_0f1_7c36:
    cpl                                           ; $7c36: $2f
    rra                                           ; $7c37: $1f
    db $10                                        ; $7c38: $10
    rrca                                          ; $7c39: $0f
    dec c                                         ; $7c3a: $0d
    inc b                                         ; $7c3b: $04
    ld b, $02                                     ; $7c3c: $06 $02
    dec b                                         ; $7c3e: $05
    ld [bc], a                                    ; $7c3f: $02
    nop                                           ; $7c40: $00
    ld [bc], a                                    ; $7c41: $02
    ld e, $94                                     ; $7c42: $1e $94

Call_0f1_7c44:
    ld a, l                                       ; $7c44: $7d
    ld h, a                                       ; $7c45: $67
    cp $83                                        ; $7c46: $fe $83
    db $fd                                        ; $7c48: $fd
    scf                                           ; $7c49: $37
    db $fd                                        ; $7c4a: $fd
    rst $00                                       ; $7c4b: $c7
    cp $46                                        ; $7c4c: $fe $46
    db $fc                                        ; $7c4e: $fc
    inc h                                         ; $7c4f: $24
    db $fc                                        ; $7c50: $fc
    inc h                                         ; $7c51: $24
    ld hl, sp+$48                                 ; $7c52: $f8 $48
    ld hl, sp-$78                                 ; $7c54: $f8 $88
    ldh a, [$b0]                                  ; $7c56: $f0 $b0
    inc b                                         ; $7c58: $04
    ret nz                                        ; $7c59: $c0

    ld [bc], a                                    ; $7c5a: $02
    and b                                         ; $7c5b: $a0
    ld [$0200], sp                                ; $7c5c: $08 $00 $02
    ld bc, $001a                                  ; $7c5f: $01 $1a $00
    rst $38                                       ; $7c62: $ff
    dec bc                                        ; $7c63: $0b
    inc bc                                        ; $7c64: $03
    ld a, [c]                                     ; $7c65: $f2
    rrca                                          ; $7c66: $0f
    jp hl                                         ; $7c67: $e9


    ld bc, $f9f3                                  ; $7c68: $01 $f3 $f9
    di                                            ; $7c6b: $f3
    ld bc, $02f3                                  ; $7c6c: $01 $f3 $02
    inc b                                         ; $7c6f: $04
    nop                                           ; $7c70: $00
    ld [bc], a                                    ; $7c71: $02
    ld d, c                                       ; $7c72: $51
    sub d                                         ; $7c73: $92
    rst $38                                       ; $7c74: $ff
    xor a                                         ; $7c75: $af
    ld a, a                                       ; $7c76: $7f
    ld d, h                                       ; $7c77: $54
    rst $38                                       ; $7c78: $ff
    xor b                                         ; $7c79: $a8
    rst $38                                       ; $7c7a: $ff
    ret nz                                        ; $7c7b: $c0

    ld a, a                                       ; $7c7c: $7f
    ld [hl], c                                    ; $7c7d: $71
    ld a, a                                       ; $7c7e: $7f
    ld e, [hl]                                    ; $7c7f: $5e
    ccf                                           ; $7c80: $3f
    jr z, @+$21                                   ; $7c81: $28 $1f

    db $10                                        ; $7c83: $10
    rrca                                          ; $7c84: $0f
    dec c                                         ; $7c85: $0d
    inc b                                         ; $7c86: $04
    ld b, $02                                     ; $7c87: $06 $02
    dec b                                         ; $7c89: $05
    ld [bc], a                                    ; $7c8a: $02
    nop                                           ; $7c8b: $00

Call_0f1_7c8c:
    ld [bc], a                                    ; $7c8c: $02
    ld e, $94                                     ; $7c8d: $1e $94
    ld a, l                                       ; $7c8f: $7d
    ld h, a                                       ; $7c90: $67
    cp $83                                        ; $7c91: $fe $83
    db $fd                                        ; $7c93: $fd
    rla                                           ; $7c94: $17
    db $fd                                        ; $7c95: $fd
    rst $00                                       ; $7c96: $c7
    cp $46                                        ; $7c97: $fe $46
    db $fc                                        ; $7c99: $fc
    ld b, h                                       ; $7c9a: $44
    db $fc                                        ; $7c9b: $fc
    add h                                         ; $7c9c: $84
    ld hl, sp+$08                                 ; $7c9d: $f8 $08
    ld hl, sp+$08                                 ; $7c9f: $f8 $08
    ldh a, [$b0]                                  ; $7ca1: $f0 $b0
    inc b                                         ; $7ca3: $04
    ret nz                                        ; $7ca4: $c0

    ld [bc], a                                    ; $7ca5: $02
    and b                                         ; $7ca6: $a0
    ld [$0200], sp                                ; $7ca7: $08 $00 $02
    ld bc, $001a                                  ; $7caa: $01 $1a $00
    rst $38                                       ; $7cad: $ff
    add hl, bc                                    ; $7cae: $09
    ld [bc], a                                    ; $7caf: $02
    ld a, [c]                                     ; $7cb0: $f2
    rrca                                          ; $7cb1: $0f
    jp hl                                         ; $7cb2: $e9


    ld bc, $f9f3                                  ; $7cb3: $01 $f3 $f9
    di                                            ; $7cb6: $f3
    ld bc, $0004                                  ; $7cb7: $01 $04 $00
    ld [bc], a                                    ; $7cba: $02
    ld d, b                                       ; $7cbb: $50
    sub d                                         ; $7cbc: $92
    rst $38                                       ; $7cbd: $ff
    xor a                                         ; $7cbe: $af
    ld a, a                                       ; $7cbf: $7f
    ld b, h                                       ; $7cc0: $44
    rst $38                                       ; $7cc1: $ff
    sbc d                                         ; $7cc2: $9a
    rst $38                                       ; $7cc3: $ff
    and h                                         ; $7cc4: $a4
    ld a, a                                       ; $7cc5: $7f
    ld d, b                                       ; $7cc6: $50
    ld a, a                                       ; $7cc7: $7f
    ld e, b                                       ; $7cc8: $58
    ccf                                           ; $7cc9: $3f
    cpl                                           ; $7cca: $2f
    rra                                           ; $7ccb: $1f
    db $10                                        ; $7ccc: $10
    rrca                                          ; $7ccd: $0f
    dec c                                         ; $7cce: $0d
    inc b                                         ; $7ccf: $04
    ld b, $02                                     ; $7cd0: $06 $02
    dec b                                         ; $7cd2: $05
    ld [bc], a                                    ; $7cd3: $02
    nop                                           ; $7cd4: $00
    ld [bc], a                                    ; $7cd5: $02
    inc a                                         ; $7cd6: $3c
    sub h                                         ; $7cd7: $94
    ld a, d                                       ; $7cd8: $7a
    ld c, [hl]                                    ; $7cd9: $4e
    db $fd                                        ; $7cda: $fd
    add a                                         ; $7cdb: $87
    ld a, [$fa2e]                                 ; $7cdc: $fa $2e $fa
    adc $fe                                       ; $7cdf: $ce $fe
    ld b, [hl]                                    ; $7ce1: $46
    db $fc                                        ; $7ce2: $fc
    inc h                                         ; $7ce3: $24

Call_0f1_7ce4:
    db $fc                                        ; $7ce4: $fc
    inc h                                         ; $7ce5: $24
    db $fc                                        ; $7ce6: $fc
    ld b, h                                       ; $7ce7: $44
    ld hl, sp-$78                                 ; $7ce8: $f8 $88
    ldh a, [$b0]                                  ; $7cea: $f0 $b0
    inc b                                         ; $7cec: $04
    ret nz                                        ; $7ced: $c0

    ld [bc], a                                    ; $7cee: $02
    and b                                         ; $7cef: $a0
    inc b                                         ; $7cf0: $04
    nop                                           ; $7cf1: $00
    rst $38                                       ; $7cf2: $ff
    add hl, bc                                    ; $7cf3: $09
    ld [bc], a                                    ; $7cf4: $02
    ld a, [c]                                     ; $7cf5: $f2
    rrca                                          ; $7cf6: $0f
    jp hl                                         ; $7cf7: $e9


    ld bc, $f9f3                                  ; $7cf8: $01 $f3 $f9
    di                                            ; $7cfb: $f3
    ld bc, $0004                                  ; $7cfc: $01 $04 $00
    ld [bc], a                                    ; $7cff: $02
    ld d, b                                       ; $7d00: $50
    sub d                                         ; $7d01: $92
    rst $38                                       ; $7d02: $ff
    xor a                                         ; $7d03: $af
    ld a, a                                       ; $7d04: $7f
    ld b, h                                       ; $7d05: $44
    rst $38                                       ; $7d06: $ff
    sbc d                                         ; $7d07: $9a
    rst $38                                       ; $7d08: $ff
    and h                                         ; $7d09: $a4
    ld a, a                                       ; $7d0a: $7f
    ld d, b                                       ; $7d0b: $50
    ld a, a                                       ; $7d0c: $7f
    ld e, b                                       ; $7d0d: $58
    ccf                                           ; $7d0e: $3f
    cpl                                           ; $7d0f: $2f
    rra                                           ; $7d10: $1f
    db $10                                        ; $7d11: $10
    rrca                                          ; $7d12: $0f
    dec c                                         ; $7d13: $0d
    inc b                                         ; $7d14: $04
    ld b, $02                                     ; $7d15: $06 $02
    dec b                                         ; $7d17: $05
    ld [bc], a                                    ; $7d18: $02
    nop                                           ; $7d19: $00
    ld [bc], a                                    ; $7d1a: $02
    inc a                                         ; $7d1b: $3c
    sub h                                         ; $7d1c: $94
    ld a, d                                       ; $7d1d: $7a
    ld c, [hl]                                    ; $7d1e: $4e
    db $fd                                        ; $7d1f: $fd
    add a                                         ; $7d20: $87
    ld a, [$fa2e]                                 ; $7d21: $fa $2e $fa
    adc $fc                                       ; $7d24: $ce $fc
    ld b, h                                       ; $7d26: $44
    db $fc                                        ; $7d27: $fc
    inc h                                         ; $7d28: $24
    db $fc                                        ; $7d29: $fc
    inc h                                         ; $7d2a: $24
    db $fc                                        ; $7d2b: $fc
    ld b, h                                       ; $7d2c: $44
    ld hl, sp-$78                                 ; $7d2d: $f8 $88
    ldh a, [$b0]                                  ; $7d2f: $f0 $b0
    inc b                                         ; $7d31: $04
    ret nz                                        ; $7d32: $c0

    ld [bc], a                                    ; $7d33: $02
    and b                                         ; $7d34: $a0
    inc b                                         ; $7d35: $04
    nop                                           ; $7d36: $00
    rst $38                                       ; $7d37: $ff
    add hl, bc                                    ; $7d38: $09
    ld [bc], a                                    ; $7d39: $02
    ld a, [c]                                     ; $7d3a: $f2
    rrca                                          ; $7d3b: $0f
    jp hl                                         ; $7d3c: $e9


    ld bc, $faf2                                  ; $7d3d: $01 $f2 $fa
    ld a, [c]                                     ; $7d40: $f2
    ld bc, $0006                                  ; $7d41: $01 $06 $00
    ld [bc], a                                    ; $7d44: $02
    ld bc, $5f02                                  ; $7d45: $01 $02 $5f
    sub b                                         ; $7d48: $90
    rst $38                                       ; $7d49: $ff

Jump_0f1_7d4a:
    and h                                         ; $7d4a: $a4
    rst $38                                       ; $7d4b: $ff
    adc d                                         ; $7d4c: $8a
    ld a, a                                       ; $7d4d: $7f
    ld e, h                                       ; $7d4e: $5c
    rst $38                                       ; $7d4f: $ff
    and b                                         ; $7d50: $a0
    ld a, a                                       ; $7d51: $7f
    ld d, b                                       ; $7d52: $50
    ld a, a                                       ; $7d53: $7f
    ld c, a                                       ; $7d54: $4f
    ccf                                           ; $7d55: $3f
    jr nc, jr_0f1_7d77                            ; $7d56: $30 $1f

    dec e                                         ; $7d58: $1d
    inc b                                         ; $7d59: $04
    ld b, $02                                     ; $7d5a: $06 $02
    ld a, [bc]                                    ; $7d5c: $0a
    ld [bc], a                                    ; $7d5d: $02
    inc e                                         ; $7d5e: $1c
    sub [hl]                                      ; $7d5f: $96
    ld a, [hl-]                                   ; $7d60: $3a
    ld l, $7d                                     ; $7d61: $2e $7d
    ld b, a                                       ; $7d63: $47
    ld a, d                                       ; $7d64: $7a
    ld c, [hl]                                    ; $7d65: $4e
    ld a, l                                       ; $7d66: $7d
    daa                                           ; $7d67: $27
    ld a, [hl]                                    ; $7d68: $7e
    ld h, d                                       ; $7d69: $62
    ld a, [hl]                                    ; $7d6a: $7e
    ld [de], a                                    ; $7d6b: $12
    ld a, [hl]                                    ; $7d6c: $7e
    ld [de], a                                    ; $7d6d: $12
    ld a, [hl]                                    ; $7d6e: $7e
    ld [de], a                                    ; $7d6f: $12
    ld a, h                                       ; $7d70: $7c
    ld h, h                                       ; $7d71: $64
    ld a, b                                       ; $7d72: $78
    jr z, jr_0f1_7de5                             ; $7d73: $28 $70

    ld d, b                                       ; $7d75: $50
    ld [bc], a                                    ; $7d76: $02

jr_0f1_7d77:
    ld [hl], b                                    ; $7d77: $70
    ld [bc], a                                    ; $7d78: $02
    jr nc, jr_0f1_7d7f                            ; $7d79: $30 $04

    nop                                           ; $7d7b: $00
    rst $38                                       ; $7d7c: $ff
    dec bc                                        ; $7d7d: $0b
    inc bc                                        ; $7d7e: $03

jr_0f1_7d7f:
    ld a, [c]                                     ; $7d7f: $f2
    rrca                                          ; $7d80: $0f
    jp hl                                         ; $7d81: $e9


    ld bc, $fbf4                                  ; $7d82: $01 $f4 $fb
    db $f4                                        ; $7d85: $f4
    inc bc                                        ; $7d86: $03
    db $f4                                        ; $7d87: $f4
    ld [$5802], sp                                ; $7d88: $08 $02 $58
    sub h                                         ; $7d8b: $94
    cp $a6                                        ; $7d8c: $fe $a6
    ld a, a                                       ; $7d8e: $7f
    ld b, e                                       ; $7d8f: $43
    rst $38                                       ; $7d90: $ff
    sbc [hl]                                      ; $7d91: $9e
    rst $38                                       ; $7d92: $ff
    and c                                         ; $7d93: $a1
    ld a, a                                       ; $7d94: $7f
    ld e, b                                       ; $7d95: $58
    ld a, a                                       ; $7d96: $7f
    ld c, a                                       ; $7d97: $4f
    ccf                                           ; $7d98: $3f
    ld [hl-], a                                   ; $7d99: $32

Jump_0f1_7d9a:
    rra                                           ; $7d9a: $1f
    jr jr_0f1_7dac                                ; $7d9b: $18 $0f

    ld [$0507], sp                                ; $7d9d: $08 $07 $05
    ld [bc], a                                    ; $7da0: $02
    ld b, $02                                     ; $7da1: $06 $02
    inc c                                         ; $7da3: $0c
    ld [bc], a                                    ; $7da4: $02
    inc d                                         ; $7da5: $14
    ld b, $00                                     ; $7da6: $06 $00
    ld [bc], a                                    ; $7da8: $02
    ret nz                                        ; $7da9: $c0

    adc [hl]                                      ; $7daa: $8e
    rst $38                                       ; $7dab: $ff

jr_0f1_7dac:
    ccf                                           ; $7dac: $3f
    rst $38                                       ; $7dad: $ff
    sub b                                         ; $7dae: $90
    rst $38                                       ; $7daf: $ff
    inc d                                         ; $7db0: $14
    rst $38                                       ; $7db1: $ff
    ld sp, $e0ff                                  ; $7db2: $31 $ff $e0
    rst $38                                       ; $7db5: $ff
    add e                                         ; $7db6: $83
    db $fc                                        ; $7db7: $fc
    inc l                                         ; $7db8: $2c
    ld [bc], a                                    ; $7db9: $02
    ldh a, [rSC]                                  ; $7dba: $f0 $02
    ret nz                                        ; $7dbc: $c0

    ld [bc], a                                    ; $7dbd: $02
    ld h, b                                       ; $7dbe: $60
    ld [bc], a                                    ; $7dbf: $02
    ld d, b                                       ; $7dc0: $50
    ld a, [bc]                                    ; $7dc1: $0a
    nop                                           ; $7dc2: $00
    ld [bc], a                                    ; $7dc3: $02
    inc e                                         ; $7dc4: $1c
    adc b                                         ; $7dc5: $88
    ld a, [de]                                    ; $7dc6: $1a
    ld c, $1d                                     ; $7dc7: $0e $1d
    rlca                                          ; $7dc9: $07
    ld a, [de]                                    ; $7dca: $1a
    ld c, $14                                     ; $7dcb: $0e $14
    inc e                                         ; $7dcd: $1c
    ld [bc], a                                    ; $7dce: $02
    ld [$0010], sp                                ; $7dcf: $08 $10 $00
    rst $38                                       ; $7dd2: $ff
    dec bc                                        ; $7dd3: $0b
    inc bc                                        ; $7dd4: $03
    ld a, [c]                                     ; $7dd5: $f2
    rrca                                          ; $7dd6: $0f
    jp hl                                         ; $7dd7: $e9


    ld bc, $fbf4                                  ; $7dd8: $01 $f4 $fb
    db $f4                                        ; $7ddb: $f4
    inc bc                                        ; $7ddc: $03
    db $f4                                        ; $7ddd: $f4
    dec b                                         ; $7dde: $05
    ld [bc], a                                    ; $7ddf: $02
    nop                                           ; $7de0: $00
    ld [bc], a                                    ; $7de1: $02
    ld d, c                                       ; $7de2: $51
    sub d                                         ; $7de3: $92
    rst $38                                       ; $7de4: $ff

jr_0f1_7de5:
    xor a                                         ; $7de5: $af
    ld a, a                                       ; $7de6: $7f
    ld b, h                                       ; $7de7: $44
    rst $38                                       ; $7de8: $ff
    sbc d                                         ; $7de9: $9a
    rst $38                                       ; $7dea: $ff
    and b                                         ; $7deb: $a0
    ld a, a                                       ; $7dec: $7f
    ld d, b                                       ; $7ded: $50
    ld a, a                                       ; $7dee: $7f
    ld c, a                                       ; $7def: $4f
    ccf                                           ; $7df0: $3f
    jr nc, @+$21                                  ; $7df1: $30 $1f

    db $10                                        ; $7df3: $10
    rrca                                          ; $7df4: $0f
    dec c                                         ; $7df5: $0d
    ld [bc], a                                    ; $7df6: $02
    ld b, $02                                     ; $7df7: $06 $02
    inc c                                         ; $7df9: $0c
    ld [bc], a                                    ; $7dfa: $02
    inc d                                         ; $7dfb: $14
    inc b                                         ; $7dfc: $04
    nop                                           ; $7dfd: $00
    ld [bc], a                                    ; $7dfe: $02
    rra                                           ; $7dff: $1f
    sub d                                         ; $7e00: $92
    cp $e3                                        ; $7e01: $fe $e3
    rst $38                                       ; $7e03: $ff
    ld bc, $ebfe                                  ; $7e04: $01 $fe $eb
    rst $38                                       ; $7e07: $ff
    ld b, c                                       ; $7e08: $41
    cp $22                                        ; $7e09: $fe $22
    cp $62                                        ; $7e0b: $fe $62
    cp $82                                        ; $7e0d: $fe $82
    db $fc                                        ; $7e0f: $fc
    ld h, h                                       ; $7e10: $64
    ld hl, sp-$48                                 ; $7e11: $f8 $b8
    ld [bc], a                                    ; $7e13: $02
    ret nz                                        ; $7e14: $c0

    ld [bc], a                                    ; $7e15: $02
    ld h, b                                       ; $7e16: $60
    ld [bc], a                                    ; $7e17: $02
    ld d, b                                       ; $7e18: $50
    ld [$0200], sp                                ; $7e19: $08 $00 $02
    ld [bc], a                                    ; $7e1c: $02
    add d                                         ; $7e1d: $82
    ld bc, $0203                                  ; $7e1e: $01 $03 $02
    ld [bc], a                                    ; $7e21: $02
    add d                                         ; $7e22: $82
    ld bc, $0203                                  ; $7e23: $01 $03 $02
    ld [bc], a                                    ; $7e26: $02
    inc d                                         ; $7e27: $14
    nop                                           ; $7e28: $00
    rst $38                                       ; $7e29: $ff
    dec bc                                        ; $7e2a: $0b
    inc bc                                        ; $7e2b: $03
    ld a, [c]                                     ; $7e2c: $f2
    rrca                                          ; $7e2d: $0f
    jp hl                                         ; $7e2e: $e9


    ld bc, $fbf4                                  ; $7e2f: $01 $f4 $fb
    db $f4                                        ; $7e32: $f4
    inc bc                                        ; $7e33: $03
    db $f4                                        ; $7e34: $f4
    ld [$5002], sp                                ; $7e35: $08 $02 $50
    sub h                                         ; $7e38: $94
    db $fc                                        ; $7e39: $fc
    xor h                                         ; $7e3a: $ac
    rst $38                                       ; $7e3b: $ff
    add e                                         ; $7e3c: $83
    ld a, a                                       ; $7e3d: $7f
    ld e, h                                       ; $7e3e: $5c
    rst $38                                       ; $7e3f: $ff
    and c                                         ; $7e40: $a1
    ld a, a                                       ; $7e41: $7f
    ld e, b                                       ; $7e42: $58
    ld a, a                                       ; $7e43: $7f
    ld c, a                                       ; $7e44: $4f
    ccf                                           ; $7e45: $3f
    ld [hl-], a                                   ; $7e46: $32
    rra                                           ; $7e47: $1f
    jr jr_0f1_7e59                                ; $7e48: $18 $0f

    ld [$0507], sp                                ; $7e4a: $08 $07 $05
    ld [bc], a                                    ; $7e4d: $02
    ld b, $02                                     ; $7e4e: $06 $02
    inc c                                         ; $7e50: $0c
    ld [bc], a                                    ; $7e51: $02
    inc d                                         ; $7e52: $14
    ld b, $00                                     ; $7e53: $06 $00
    ld [bc], a                                    ; $7e55: $02
    ret nz                                        ; $7e56: $c0

    adc [hl]                                      ; $7e57: $8e
    rst $38                                       ; $7e58: $ff

jr_0f1_7e59:
    ccf                                           ; $7e59: $3f
    rst $38                                       ; $7e5a: $ff
    sub b                                         ; $7e5b: $90
    rst $38                                       ; $7e5c: $ff
    inc d                                         ; $7e5d: $14
    rst $38                                       ; $7e5e: $ff
    ld sp, $e0ff                                  ; $7e5f: $31 $ff $e0
    rst $38                                       ; $7e62: $ff
    add e                                         ; $7e63: $83
    db $fc                                        ; $7e64: $fc
    inc l                                         ; $7e65: $2c
    ld [bc], a                                    ; $7e66: $02
    ldh a, [rSC]                                  ; $7e67: $f0 $02
    ret nz                                        ; $7e69: $c0

    ld [bc], a                                    ; $7e6a: $02
    ld h, b                                       ; $7e6b: $60
    ld [bc], a                                    ; $7e6c: $02
    ld d, b                                       ; $7e6d: $50
    ld a, [bc]                                    ; $7e6e: $0a
    nop                                           ; $7e6f: $00
    ld [bc], a                                    ; $7e70: $02
    inc e                                         ; $7e71: $1c
    adc b                                         ; $7e72: $88
    ld a, [de]                                    ; $7e73: $1a
    ld c, $1d                                     ; $7e74: $0e $1d
    rlca                                          ; $7e76: $07
    ld a, [de]                                    ; $7e77: $1a
    ld c, $14                                     ; $7e78: $0e $14
    inc e                                         ; $7e7a: $1c
    ld [bc], a                                    ; $7e7b: $02
    ld [$0010], sp                                ; $7e7c: $08 $10 $00
    rst $38                                       ; $7e7f: $ff
    dec bc                                        ; $7e80: $0b
    inc bc                                        ; $7e81: $03
    ld a, [c]                                     ; $7e82: $f2
    rrca                                          ; $7e83: $0f
    jp hl                                         ; $7e84: $e9


    ld bc, $faf4                                  ; $7e85: $01 $f4 $fa
    db $f4                                        ; $7e88: $f4
    ld [bc], a                                    ; $7e89: $02
    db $f4                                        ; $7e8a: $f4
    inc b                                         ; $7e8b: $04
    ld [bc], a                                    ; $7e8c: $02
    nop                                           ; $7e8d: $00
    ld [bc], a                                    ; $7e8e: $02
    ld d, c                                       ; $7e8f: $51
    sub d                                         ; $7e90: $92
    rst $38                                       ; $7e91: $ff
    xor a                                         ; $7e92: $af
    ld a, a                                       ; $7e93: $7f
    ld b, h                                       ; $7e94: $44
    rst $38                                       ; $7e95: $ff
    sbc d                                         ; $7e96: $9a
    rst $38                                       ; $7e97: $ff
    and b                                         ; $7e98: $a0
    ld a, a                                       ; $7e99: $7f
    ld d, b                                       ; $7e9a: $50
    ld a, a                                       ; $7e9b: $7f
    ld c, a                                       ; $7e9c: $4f
    ccf                                           ; $7e9d: $3f
    jr nc, jr_0f1_7ebf                            ; $7e9e: $30 $1f

    db $10                                        ; $7ea0: $10
    rrca                                          ; $7ea1: $0f
    dec c                                         ; $7ea2: $0d
    inc b                                         ; $7ea3: $04
    ld b, $02                                     ; $7ea4: $06 $02
    ld a, [bc]                                    ; $7ea6: $0a
    inc b                                         ; $7ea7: $04
    nop                                           ; $7ea8: $00
    ld [bc], a                                    ; $7ea9: $02
    rra                                           ; $7eaa: $1f
    sub d                                         ; $7eab: $92
    cp $e3                                        ; $7eac: $fe $e3
    rst $38                                       ; $7eae: $ff
    ld bc, $ebfe                                  ; $7eaf: $01 $fe $eb
    rst $38                                       ; $7eb2: $ff
    ld b, c                                       ; $7eb3: $41
    cp $22                                        ; $7eb4: $fe $22
    cp $62                                        ; $7eb6: $fe $62
    cp $82                                        ; $7eb8: $fe $82
    db $fc                                        ; $7eba: $fc
    ld h, h                                       ; $7ebb: $64
    ld hl, sp-$48                                 ; $7ebc: $f8 $b8
    ld [bc], a                                    ; $7ebe: $02

jr_0f1_7ebf:
    ldh [rSC], a                                  ; $7ebf: $e0 $02
    ld h, b                                       ; $7ec1: $60
    ld [bc], a                                    ; $7ec2: $02
    jr nc, jr_0f1_7ecd                            ; $7ec3: $30 $08

    nop                                           ; $7ec5: $00
    ld [bc], a                                    ; $7ec6: $02
    ld [bc], a                                    ; $7ec7: $02
    add d                                         ; $7ec8: $82
    ld bc, $0203                                  ; $7ec9: $01 $03 $02
    ld [bc], a                                    ; $7ecc: $02

jr_0f1_7ecd:
    add d                                         ; $7ecd: $82
    ld bc, $0203                                  ; $7ece: $01 $03 $02
    ld [bc], a                                    ; $7ed1: $02
    inc d                                         ; $7ed2: $14
    nop                                           ; $7ed3: $00
    rst $38                                       ; $7ed4: $ff
    dec bc                                        ; $7ed5: $0b
    inc bc                                        ; $7ed6: $03
    ld a, [c]                                     ; $7ed7: $f2
    rrca                                          ; $7ed8: $0f
    jp hl                                         ; $7ed9: $e9


    ld bc, $f9f3                                  ; $7eda: $01 $f3 $f9
    di                                            ; $7edd: $f3
    ld bc, $02f3                                  ; $7ede: $01 $f3 $02
    inc b                                         ; $7ee1: $04
    nop                                           ; $7ee2: $00
    ld [bc], a                                    ; $7ee3: $02
    ld d, b                                       ; $7ee4: $50
    sub d                                         ; $7ee5: $92
    rst $38                                       ; $7ee6: $ff
    xor a                                         ; $7ee7: $af
    ld a, a                                       ; $7ee8: $7f
    ld b, h                                       ; $7ee9: $44
    rst $38                                       ; $7eea: $ff
    sbc d                                         ; $7eeb: $9a
    rst $38                                       ; $7eec: $ff
    and h                                         ; $7eed: $a4
    ld a, a                                       ; $7eee: $7f
    ld d, b                                       ; $7eef: $50
    ld a, a                                       ; $7ef0: $7f
    ld e, b                                       ; $7ef1: $58
    ccf                                           ; $7ef2: $3f
    cpl                                           ; $7ef3: $2f
    rra                                           ; $7ef4: $1f

Jump_0f1_7ef5:
    db $10                                        ; $7ef5: $10
    rrca                                          ; $7ef6: $0f
    dec c                                         ; $7ef7: $0d
    inc b                                         ; $7ef8: $04
    ld b, $02                                     ; $7ef9: $06 $02
    dec b                                         ; $7efb: $05
    ld [bc], a                                    ; $7efc: $02
    nop                                           ; $7efd: $00
    ld [bc], a                                    ; $7efe: $02
    ld e, $94                                     ; $7eff: $1e $94
    dec a                                         ; $7f01: $3d
    daa                                           ; $7f02: $27
    cp $c3                                        ; $7f03: $fe $c3
    db $fd                                        ; $7f05: $fd
    rla                                           ; $7f06: $17
    db $fd                                        ; $7f07: $fd
    rst $00                                       ; $7f08: $c7
    cp $46                                        ; $7f09: $fe $46
    db $fc                                        ; $7f0b: $fc
    inc h                                         ; $7f0c: $24
    db $fc                                        ; $7f0d: $fc
    inc h                                         ; $7f0e: $24
    db $fc                                        ; $7f0f: $fc
    ld b, h                                       ; $7f10: $44
    ld hl, sp-$78                                 ; $7f11: $f8 $88
    ldh a, [$b0]                                  ; $7f13: $f0 $b0
    inc b                                         ; $7f15: $04
    ret nz                                        ; $7f16: $c0

    ld [bc], a                                    ; $7f17: $02
    and b                                         ; $7f18: $a0
    ld [$0200], sp                                ; $7f19: $08 $00 $02
    ld bc, $001a                                  ; $7f1c: $01 $1a $00
    rst $38                                       ; $7f1f: $ff
    rrca                                          ; $7f20: $0f
    dec b                                         ; $7f21: $05
    ld a, [c]                                     ; $7f22: $f2
    rrca                                          ; $7f23: $0f
    jp hl                                         ; $7f24: $e9


    ld bc, $f6ea                                  ; $7f25: $01 $ea $f6
    db $ed                                        ; $7f28: $ed
    cp $ed                                        ; $7f29: $fe $ed
    ld bc, $fafa                                  ; $7f2b: $01 $fa $fa
    ld a, [$02fd]                                 ; $7f2e: $fa $fd $02
    ld [bc], a                                    ; $7f31: $02
    add [hl]                                      ; $7f32: $86
    rlca                                          ; $7f33: $07
    dec b                                         ; $7f34: $05
    rlca                                          ; $7f35: $07
    dec b                                         ; $7f36: $05
    inc bc                                        ; $7f37: $03
    ld [bc], a                                    ; $7f38: $02
    ld [bc], a                                    ; $7f39: $02
    ld bc, $0302                                  ; $7f3a: $01 $02 $03
    adc b                                         ; $7f3d: $88
    rlca                                          ; $7f3e: $07

Call_0f1_7f3f:
    dec b                                         ; $7f3f: $05
    scf                                           ; $7f40: $37
    ld [hl], $7f                                  ; $7f41: $36 $7f
    ld c, b                                       ; $7f43: $48
    rst $30                                       ; $7f44: $f7
    or h                                          ; $7f45: $b4
    ld [bc], a                                    ; $7f46: $02
    ld b, e                                       ; $7f47: $43
    inc bc                                        ; $7f48: $03
    rra                                           ; $7f49: $1f
    add a                                         ; $7f4a: $87
    db $10                                        ; $7f4b: $10
    rrca                                          ; $7f4c: $0f
    ld a, [bc]                                    ; $7f4d: $0a
    rra                                           ; $7f4e: $1f
    dec d                                         ; $7f4f: $15
    rrca                                          ; $7f50: $0f
    ld [$8004], sp                                ; $7f51: $08 $04 $80
    sbc h                                         ; $7f54: $9c
    push bc                                       ; $7f55: $c5
    ld b, l                                       ; $7f56: $45
    xor $2a                                       ; $7f57: $ee $2a
    rst $38                                       ; $7f59: $ff
    sbc a                                         ; $7f5a: $9f
    cp $0b                                        ; $7f5b: $fe $0b
    rst $38                                       ; $7f5d: $ff
    add hl, bc                                    ; $7f5e: $09
    cp $5b                                        ; $7f5f: $fe $5b
    rst $38                                       ; $7f61: $ff
    sub c                                         ; $7f62: $91
    rst $38                                       ; $7f63: $ff
    or c                                          ; $7f64: $b1
    rst $38                                       ; $7f65: $ff
    nop                                           ; $7f66: $00
    rst $38                                       ; $7f67: $ff
    db $10                                        ; $7f68: $10
    rst $38                                       ; $7f69: $ff
    ld [$81ff], sp                                ; $7f6a: $08 $ff $81
    cp $16                                        ; $7f6d: $fe $16
    ld hl, sp-$48                                 ; $7f6f: $f8 $b8
    ld [bc], a                                    ; $7f71: $02
    ld [bc], a                                    ; $7f72: $02
    add h                                         ; $7f73: $84
    rlca                                          ; $7f74: $07
    dec b                                         ; $7f75: $05
    ld b, $02                                     ; $7f76: $06 $02
    ld [bc], a                                    ; $7f78: $02
    inc b                                         ; $7f79: $04
    ld [bc], a                                    ; $7f7a: $02
    nop                                           ; $7f7b: $00
    ld [bc], a                                    ; $7f7c: $02
    inc b                                         ; $7f7d: $04
    add d                                         ; $7f7e: $82
    ld [bc], a                                    ; $7f7f: $02
    ld b, $02                                     ; $7f80: $06 $02
    inc b                                         ; $7f82: $04
    add d                                         ; $7f83: $82
    ld [bc], a                                    ; $7f84: $02
    ld b, $08                                     ; $7f85: $06 $08
    inc b                                         ; $7f87: $04
    ld b, $00                                     ; $7f88: $06 $00
    add h                                         ; $7f8a: $84
    ldh a, [$a0]                                  ; $7f8b: $f0 $a0
    ld [hl], b                                    ; $7f8d: $70
    ld h, b                                       ; $7f8e: $60
    ld [bc], a                                    ; $7f8f: $02
    db $10                                        ; $7f90: $10
    ld [bc], a                                    ; $7f91: $02
    ld b, $02                                     ; $7f92: $06 $02
    inc b                                         ; $7f94: $04
    ld [bc], a                                    ; $7f95: $02
    ld b, $02                                     ; $7f96: $06 $02
    dec b                                         ; $7f98: $05
    jr jr_0f1_7f9b                                ; $7f99: $18 $00

jr_0f1_7f9b:
    ld [bc], a                                    ; $7f9b: $02
    inc b                                         ; $7f9c: $04
    ld [bc], a                                    ; $7f9d: $02
    ld b, $02                                     ; $7f9e: $06 $02
    dec b                                         ; $7fa0: $05
    inc d                                         ; $7fa1: $14
    nop                                           ; $7fa2: $00
    rst $38                                       ; $7fa3: $ff
    dec c                                         ; $7fa4: $0d
    inc b                                         ; $7fa5: $04
    ld hl, sp+$08                                 ; $7fa6: $f8 $08
    rst $20                                       ; $7fa8: $e7
    ld hl, sp-$17                                 ; $7fa9: $f8 $e9
    or $e7                                        ; $7fab: $f6 $e7
    cp $eb                                        ; $7fad: $fe $eb
    nop                                           ; $7faf: $00
    rst $30                                       ; $7fb0: $f7
    ld hl, sp-$75                                 ; $7fb1: $f8 $8b
    ld a, h                                       ; $7fb3: $7c
    nop                                           ; $7fb4: $00
    rst $10                                       ; $7fb5: $d7
    nop                                           ; $7fb6: $00
    ld l, d                                       ; $7fb7: $6a
    nop                                           ; $7fb8: $00
    dec [hl]                                      ; $7fb9: $35
    nop                                           ; $7fba: $00
    ld a, [de]                                    ; $7fbb: $1a
    nop                                           ; $7fbc: $00
    inc bc                                        ; $7fbd: $03
    rrca                                          ; $7fbe: $0f
    nop                                           ; $7fbf: $00
    ld [bc], a                                    ; $7fc0: $02
    ld bc, $0004                                  ; $7fc1: $01 $04 $00
    sbc [hl]                                      ; $7fc4: $9e
    ret nz                                        ; $7fc5: $c0

    nop                                           ; $7fc6: $00
    or b                                          ; $7fc7: $b0
    nop                                           ; $7fc8: $00
    ld l, d                                       ; $7fc9: $6a
    ld a, [bc]                                    ; $7fca: $0a
    ld e, a                                       ; $7fcb: $5f
    rla                                           ; $7fcc: $17
    xor h                                         ; $7fcd: $ac
    rrca                                          ; $7fce: $0f
    ld e, l                                       ; $7fcf: $5d
    rrca                                          ; $7fd0: $0f
    cp e                                          ; $7fd1: $bb
    rra                                           ; $7fd2: $1f
    ld d, h                                       ; $7fd3: $54
    inc c                                         ; $7fd4: $0c
    ld a, b                                       ; $7fd5: $78
    inc l                                         ; $7fd6: $2c
    daa                                           ; $7fd7: $27
    ccf                                           ; $7fd8: $3f
    ld b, h                                       ; $7fd9: $44
    ld a, l                                       ; $7fda: $7d
    add hl, hl                                    ; $7fdb: $29
    dec sp                                        ; $7fdc: $3b
    ld a, c                                       ; $7fdd: $79
    ld a, e                                       ; $7fde: $7b
    ld l, $6e                                     ; $7fdf: $2e $6e
    db $e4                                        ; $7fe1: $e4
    db $ec                                        ; $7fe2: $ec
    ld [bc], a                                    ; $7fe3: $02
    xor h                                         ; $7fe4: $ac
    ld [bc], a                                    ; $7fe5: $02
    ld [bc], a                                    ; $7fe6: $02
    add d                                         ; $7fe7: $82
    ld bc, $0803                                  ; $7fe8: $01 $03 $08
    nop                                           ; $7feb: $00
    inc b                                         ; $7fec: $04
    ld [bc], a                                    ; $7fed: $02
    ld [$0200], sp                                ; $7fee: $08 $00 $02
    and b                                         ; $7ff1: $a0
    ld b, $00                                     ; $7ff2: $06 $00
    ld [bc], a                                    ; $7ff4: $02
    ld bc, $0302                                  ; $7ff5: $01 $02 $03
    inc e                                         ; $7ff8: $1c
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
