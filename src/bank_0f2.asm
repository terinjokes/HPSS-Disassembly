; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f2", ROMX[$4000], BANK[$f2]

    db $f2

    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld a, [c]                                     ; $4003: $f2
    rrca                                          ; $4004: $0f
    jp hl                                         ; $4005: $e9


    ld bc, $f3f0                                  ; $4006: $01 $f0 $f3
    jp hl                                         ; $4009: $e9


    ei                                            ; $400a: $fb
    ld sp, hl                                     ; $400b: $f9
    ei                                            ; $400c: $fb
    xor $03                                       ; $400d: $ee $03
    ld [bc], a                                    ; $400f: $02
    inc bc                                        ; $4010: $03
    add d                                         ; $4011: $82
    rlca                                          ; $4012: $07
    inc b                                         ; $4013: $04
    ld [bc], a                                    ; $4014: $02
    inc bc                                        ; $4015: $03
    ld [bc], a                                    ; $4016: $02
    db $20, $88                                   ; $4017: $20 $88
    ld [hl], e                                    ; $4019: $73
    ld d, e                                       ; $401a: $53
    dec sp                                        ; $401b: $3b
    ld a, [hl+]                                   ; $401c: $2a
    dec sp                                        ; $401d: $3b
    dec hl                                        ; $401e: $2b
    rla                                           ; $401f: $17
    dec d                                         ; $4020: $15
    inc bc                                        ; $4021: $03
    inc bc                                        ; $4022: $03
    add c                                         ; $4023: $81
    ld [bc], a                                    ; $4024: $02
    inc b                                         ; $4025: $04
    inc bc                                        ; $4026: $03
    add h                                         ; $4027: $84
    rlca                                          ; $4028: $07
    dec b                                         ; $4029: $05
    ld c, $0a                                     ; $402a: $0e $0a
    ld [bc], a                                    ; $402c: $02
    inc b                                         ; $402d: $04
    ld [bc], a                                    ; $402e: $02
    nop                                           ; $402f: $00
    ld [bc], a                                    ; $4030: $02
    db $30, $84                                   ; $4031: $30 $84
    ld a, b                                       ; $4033: $78
    ld c, b                                       ; $4034: $48
    ldh a, [$b0]                                  ; $4035: $f0 $b0
    ld [bc], a                                    ; $4037: $02
    ld b, b                                       ; $4038: $40
    ld b, $00                                     ; $4039: $06 $00
    ld [bc], a                                    ; $403b: $02
    add b                                         ; $403c: $80
    ld [bc], a                                    ; $403d: $02
    add c                                         ; $403e: $81
    sub h                                         ; $403f: $94
    inc bc                                        ; $4040: $03
    ld [bc], a                                    ; $4041: $02
    adc a                                         ; $4042: $8f
    adc [hl]                                      ; $4043: $8e
    rst $38                                       ; $4044: $ff
    ld [hl], h                                    ; $4045: $74
    rst $38                                       ; $4046: $ff
    ld a, [hl+]                                   ; $4047: $2a
    rst $38                                       ; $4048: $ff
    sub $ff                                       ; $4049: $d6 $ff
    ld b, $ff                                     ; $404b: $06 $ff
    ld b, l                                       ; $404d: $45
    rst $38                                       ; $404e: $ff
    adc h                                         ; $404f: $8c
    rst $38                                       ; $4050: $ff
    ld [de], a                                    ; $4051: $12
    rst $38                                       ; $4052: $ff
    or a                                          ; $4053: $b7
    ld [bc], a                                    ; $4054: $02
    call $0802                                    ; $4055: $cd $02 $08
    ld [bc], a                                    ; $4058: $02
    jr jr_0f2_405d                                ; $4059: $18 $02

    inc d                                         ; $405b: $14
    ld [de], a                                    ; $405c: $12

jr_0f2_405d:
    nop                                           ; $405d: $00
    ld [bc], a                                    ; $405e: $02
    inc b                                         ; $405f: $04
    sub [hl]                                      ; $4060: $96
    ld c, $0a                                     ; $4061: $0e $0a
    rst $20                                       ; $4063: $e7
    push hl                                       ; $4064: $e5
    jp nc, $e872                                  ; $4065: $d2 $72 $e8

    jr c, @-$2e                                   ; $4068: $38 $d0

    ld [hl], b                                    ; $406a: $70
    add sp, -$48                                  ; $406b: $e8 $b8
    ldh a, [$30]                                  ; $406d: $f0 $30
    ld hl, sp+$18                                 ; $406f: $f8 $18
    db $fc                                        ; $4071: $fc
    inc d                                         ; $4072: $14
    ld hl, sp+$38                                 ; $4073: $f8 $38
    ldh [rNR41], a                                ; $4075: $e0 $20
    ld [bc], a                                    ; $4077: $02
    ret nz                                        ; $4078: $c0

    ld [bc], a                                    ; $4079: $02
    nop                                           ; $407a: $00
    ld [bc], a                                    ; $407b: $02
    ret nz                                        ; $407c: $c0

    ld [bc], a                                    ; $407d: $02
    and b                                         ; $407e: $a0
    rst $38                                       ; $407f: $ff
    rrca                                          ; $4080: $0f
    dec b                                         ; $4081: $05
    ld a, [c]                                     ; $4082: $f2
    rrca                                          ; $4083: $0f
    jp hl                                         ; $4084: $e9


    ld bc, $f2f1                                  ; $4085: $01 $f1 $f2
    ld [$effa], a                                 ; $4088: $ea $fa $ef
    ld [bc], a                                    ; $408b: $02
    pop af                                        ; $408c: $f1
    inc bc                                        ; $408d: $03
    ld a, [$02fa]                                 ; $408e: $fa $fa $02
    inc bc                                        ; $4091: $03
    add h                                         ; $4092: $84
    rlca                                          ; $4093: $07
    dec b                                         ; $4094: $05
    rlca                                          ; $4095: $07
    dec b                                         ; $4096: $05
    ld [bc], a                                    ; $4097: $02
    ld [bc], a                                    ; $4098: $02
    ld [bc], a                                    ; $4099: $02
    ld b, c                                       ; $409a: $41
    add [hl]                                      ; $409b: $86
    pop af                                        ; $409c: $f1
    or c                                          ; $409d: $b1
    ld a, c                                       ; $409e: $79
    ld c, c                                       ; $409f: $49
    inc sp                                        ; $40a0: $33
    ld [hl-], a                                   ; $40a1: $32
    ld [bc], a                                    ; $40a2: $02
    ld bc, $0004                                  ; $40a3: $01 $04 $00
    ld [bc], a                                    ; $40a6: $02
    ld [bc], a                                    ; $40a7: $02
    add h                                         ; $40a8: $84
    rlca                                          ; $40a9: $07
    dec b                                         ; $40aa: $05
    rlca                                          ; $40ab: $07
    dec b                                         ; $40ac: $05
    ld [bc], a                                    ; $40ad: $02
    ld [bc], a                                    ; $40ae: $02
    ld [bc], a                                    ; $40af: $02
    nop                                           ; $40b0: $00
    ld [bc], a                                    ; $40b1: $02
    inc b                                         ; $40b2: $04
    add [hl]                                      ; $40b3: $86
    ld c, $0a                                     ; $40b4: $0e $0a
    rlca                                          ; $40b6: $07
    dec b                                         ; $40b7: $05
    rlca                                          ; $40b8: $07
    dec b                                         ; $40b9: $05
    ld [bc], a                                    ; $40ba: $02
    ld [hl-], a                                   ; $40bb: $32
    sub [hl]                                      ; $40bc: $96
    ld a, b                                       ; $40bd: $78
    ld l, b                                       ; $40be: $68
    db $fc                                        ; $40bf: $fc
    or h                                          ; $40c0: $b4
    rst $38                                       ; $40c1: $ff
    db $d3                                        ; $40c2: $d3
    rst $38                                       ; $40c3: $ff
    ld bc, $81ff                                  ; $40c4: $01 $ff $81
    ld a, a                                       ; $40c7: $7f
    ld l, e                                       ; $40c8: $6b
    rst $38                                       ; $40c9: $ff
    ld sp, hl                                     ; $40ca: $f9
    rst $38                                       ; $40cb: $ff
    dec bc                                        ; $40cc: $0b
    rst $38                                       ; $40cd: $ff
    jr nz, @+$01                                  ; $40ce: $20 $ff

    pop de                                        ; $40d0: $d1
    rst $38                                       ; $40d1: $ff
    add d                                         ; $40d2: $82
    ld [bc], a                                    ; $40d3: $02
    ld b, b                                       ; $40d4: $40
    sbc b                                         ; $40d5: $98
    pop hl                                        ; $40d6: $e1
    and c                                         ; $40d7: $a1
    di                                            ; $40d8: $f3
    ld [hl], d                                    ; $40d9: $72
    db $eb                                        ; $40da: $eb
    cp d                                          ; $40db: $ba
    push af                                       ; $40dc: $f5
    dec e                                         ; $40dd: $1d
    add sp, -$48                                  ; $40de: $e8 $b8
    db $f4                                        ; $40e0: $f4
    inc e                                         ; $40e1: $1c
    ld hl, sp+$18                                 ; $40e2: $f8 $18
    ld hl, sp+$08                                 ; $40e4: $f8 $08
    ld hl, sp+$08                                 ; $40e6: $f8 $08
    ld hl, sp-$78                                 ; $40e8: $f8 $88
    ldh a, [rNR10]                                ; $40ea: $f0 $10
    ldh [$60], a                                  ; $40ec: $e0 $60
    ld [bc], a                                    ; $40ee: $02
    add b                                         ; $40ef: $80
    ld [bc], a                                    ; $40f0: $02
    ret nz                                        ; $40f1: $c0

    ld [bc], a                                    ; $40f2: $02
    and b                                         ; $40f3: $a0
    inc b                                         ; $40f4: $04
    ld bc, $001c                                  ; $40f5: $01 $1c $00
    add [hl]                                      ; $40f8: $86
    rst $38                                       ; $40f9: $ff
    xor b                                         ; $40fa: $a8
    ld a, a                                       ; $40fb: $7f
    ld h, c                                       ; $40fc: $61
    rra                                           ; $40fd: $1f
    dec de                                        ; $40fe: $1b
    ld [bc], a                                    ; $40ff: $02
    ld b, $02                                     ; $4100: $06 $02
    inc c                                         ; $4102: $0c
    ld [bc], a                                    ; $4103: $02
    ld a, [bc]                                    ; $4104: $0a
    inc d                                         ; $4105: $14
    nop                                           ; $4106: $00
    rst $38                                       ; $4107: $ff
    rrca                                          ; $4108: $0f
    dec b                                         ; $4109: $05
    ld a, [c]                                     ; $410a: $f2
    rrca                                          ; $410b: $0f
    jp hl                                         ; $410c: $e9


    ld bc, $f2f3                                  ; $410d: $01 $f3 $f2
    db $ed                                        ; $4110: $ed
    ld a, [$02f3]                                 ; $4111: $fa $f3 $02
    push af                                       ; $4114: $f5
    inc bc                                        ; $4115: $03
    db $fd                                        ; $4116: $fd
    ld a, [$0402]                                 ; $4117: $fa $02 $04
    add h                                         ; $411a: $84
    ld c, $0a                                     ; $411b: $0e $0a
    rlca                                          ; $411d: $07
    dec b                                         ; $411e: $05
    ld [bc], a                                    ; $411f: $02
    ld [bc], a                                    ; $4120: $02
    ld [bc], a                                    ; $4121: $02
    ld bc, $1102                                  ; $4122: $01 $02 $11
    add h                                         ; $4125: $84
    ld a, e                                       ; $4126: $7b
    ld l, d                                       ; $4127: $6a
    pop af                                        ; $4128: $f1
    sub c                                         ; $4129: $91
    ld [bc], a                                    ; $412a: $02
    ld h, b                                       ; $412b: $60
    inc b                                         ; $412c: $04
    nop                                           ; $412d: $00
    ld [bc], a                                    ; $412e: $02
    ld bc, $0382                                  ; $412f: $01 $82 $03
    ld [bc], a                                    ; $4132: $02
    ld [bc], a                                    ; $4133: $02
    ld bc, $0004                                  ; $4134: $01 $04 $00
    ld [bc], a                                    ; $4137: $02
    inc b                                         ; $4138: $04
    add h                                         ; $4139: $84
    ld e, $1a                                     ; $413a: $1e $1a
    inc a                                         ; $413c: $3c
    inc h                                         ; $413d: $24
    ld [bc], a                                    ; $413e: $02
    jr jr_0f2_414b                                ; $413f: $18 $0a

    nop                                           ; $4141: $00
    ld [bc], a                                    ; $4142: $02
    and c                                         ; $4143: $a1
    adc h                                         ; $4144: $8c
    rst $38                                       ; $4145: $ff
    ld e, [hl]                                    ; $4146: $5e
    rst $38                                       ; $4147: $ff
    adc c                                         ; $4148: $89
    rst $38                                       ; $4149: $ff
    inc [hl]                                      ; $414a: $34

jr_0f2_414b:
    rst $38                                       ; $414b: $ff
    ld c, b                                       ; $414c: $48
    rst $38                                       ; $414d: $ff
    and b                                         ; $414e: $a0
    rst $38                                       ; $414f: $ff
    or b                                          ; $4150: $b0
    ld [bc], a                                    ; $4151: $02
    ld [bc], a                                    ; $4152: $02
    sub [hl]                                      ; $4153: $96
    rlca                                          ; $4154: $07
    dec b                                         ; $4155: $05
    ld a, e                                       ; $4156: $7b
    ld a, d                                       ; $4157: $7a
    push af                                       ; $4158: $f5
    sbc l                                         ; $4159: $9d
    ld a, [$f40e]                                 ; $415a: $fa $0e $f4
    ld e, h                                       ; $415d: $5c
    ld a, [$fc8e]                                 ; $415e: $fa $8e $fc
    ld c, h                                       ; $4161: $4c
    ld hl, sp+$48                                 ; $4162: $f8 $48
    ld hl, sp-$78                                 ; $4164: $f8 $88
    ldh a, [rNR10]                                ; $4166: $f0 $10
    ldh [$60], a                                  ; $4168: $e0 $60
    ld [bc], a                                    ; $416a: $02
    add b                                         ; $416b: $80
    ld [bc], a                                    ; $416c: $02
    ld b, b                                       ; $416d: $40
    inc b                                         ; $416e: $04
    nop                                           ; $416f: $00
    ld [bc], a                                    ; $4170: $02
    ld bc, $001e                                  ; $4171: $01 $1e $00
    add [hl]                                      ; $4174: $86
    ld a, a                                       ; $4175: $7f
    ld e, a                                       ; $4176: $5f
    ccf                                           ; $4177: $3f
    ld hl, $9b9f                                  ; $4178: $21 $9f $9b
    ld [bc], a                                    ; $417b: $02
    adc l                                         ; $417c: $8d
    ld [bc], a                                    ; $417d: $02
    ld a, [bc]                                    ; $417e: $0a
    ld d, $00                                     ; $417f: $16 $00
    rst $38                                       ; $4181: $ff
    dec c                                         ; $4182: $0d
    inc b                                         ; $4183: $04
    ld hl, sp+$08                                 ; $4184: $f8 $08
    rst $20                                       ; $4186: $e7
    ld hl, sp-$1b                                 ; $4187: $f8 $e5
    or $e5                                        ; $4189: $f6 $e5
    cp $ea                                        ; $418b: $fe $ea
    nop                                           ; $418d: $00
    push af                                       ; $418e: $f5
    ld hl, sp-$7d                                 ; $418f: $f8 $83
    ld bc, $0100                                  ; $4191: $01 $00 $01
    inc bc                                        ; $4194: $03
    nop                                           ; $4195: $00
    adc e                                         ; $4196: $8b
    ld a, h                                       ; $4197: $7c
    nop                                           ; $4198: $00
    rst $10                                       ; $4199: $d7
    nop                                           ; $419a: $00
    ld l, d                                       ; $419b: $6a
    nop                                           ; $419c: $00
    dec [hl]                                      ; $419d: $35
    nop                                           ; $419e: $00
    ld a, [de]                                    ; $419f: $1a
    nop                                           ; $41a0: $00
    inc bc                                        ; $41a1: $03
    dec bc                                        ; $41a2: $0b
    nop                                           ; $41a3: $00
    ld [bc], a                                    ; $41a4: $02
    ld bc, $0002                                  ; $41a5: $01 $02 $00
    sbc h                                         ; $41a8: $9c
    add b                                         ; $41a9: $80
    nop                                           ; $41aa: $00
    ld h, b                                       ; $41ab: $60
    nop                                           ; $41ac: $00
    ret nc                                        ; $41ad: $d0

    nop                                           ; $41ae: $00
    cp d                                          ; $41af: $ba
    ld a, [bc]                                    ; $41b0: $0a
    ld e, a                                       ; $41b1: $5f
    rla                                           ; $41b2: $17
    cp h                                          ; $41b3: $bc
    rrca                                          ; $41b4: $0f

jr_0f2_41b5:
    ld e, l                                       ; $41b5: $5d
    rra                                           ; $41b6: $1f
    or e                                          ; $41b7: $b3
    rra                                           ; $41b8: $1f
    ld d, h                                       ; $41b9: $54
    inc c                                         ; $41ba: $0c
    ld a, b                                       ; $41bb: $78
    inc l                                         ; $41bc: $2c
    daa                                           ; $41bd: $27
    rra                                           ; $41be: $1f
    ld b, h                                       ; $41bf: $44
    ld a, l                                       ; $41c0: $7d
    ld l, c                                       ; $41c1: $69
    ld a, e                                       ; $41c2: $7b
    cp c                                          ; $41c3: $b9
    ei                                            ; $41c4: $fb
    ld [bc], a                                    ; $41c5: $02
    xor [hl]                                      ; $41c6: $ae

jr_0f2_41c7:
    add d                                         ; $41c7: $82
    ld h, h                                       ; $41c8: $64
    ld l, h                                       ; $41c9: $6c
    ld [bc], a                                    ; $41ca: $02
    ld [bc], a                                    ; $41cb: $02
    add d                                         ; $41cc: $82
    ld bc, $0803                                  ; $41cd: $01 $03 $08
    nop                                           ; $41d0: $00
    inc b                                         ; $41d1: $04
    ld [bc], a                                    ; $41d2: $02
    ld b, $00                                     ; $41d3: $06 $00
    ld [bc], a                                    ; $41d5: $02
    sub b                                         ; $41d6: $90
    add d                                         ; $41d7: $82
    db $10                                        ; $41d8: $10
    sub b                                         ; $41d9: $90
    ld [bc], a                                    ; $41da: $02
    add b                                         ; $41db: $80
    inc b                                         ; $41dc: $04
    nop                                           ; $41dd: $00
    ld [bc], a                                    ; $41de: $02
    ld b, $06                                     ; $41df: $06 $06
    ld bc, $0018                                  ; $41e1: $01 $18 $00
    rst $38                                       ; $41e4: $ff
    add hl, bc                                    ; $41e5: $09
    ld [bc], a                                    ; $41e6: $02
    ld hl, sp+$08                                 ; $41e7: $f8 $08

jr_0f2_41e9:
    rst $20                                       ; $41e9: $e7
    ld hl, sp-$16                                 ; $41ea: $f8 $ea
    ld a, [$02e9]                                 ; $41ec: $fa $e9 $02
    ld [bc], a                                    ; $41ef: $02
    ld bc, $0002                                  ; $41f0: $01 $02 $00
    ld [bc], a                                    ; $41f3: $02
    inc bc                                        ; $41f4: $03
    inc b                                         ; $41f5: $04
    ld bc, $0381                                  ; $41f6: $01 $81 $03
    ld [bc], a                                    ; $41f9: $02
    ld [bc], a                                    ; $41fa: $02
    sub e                                         ; $41fb: $93
    ld bc, $0205                                  ; $41fc: $01 $05 $02
    ld b, $01                                     ; $41ff: $06 $01
    rlca                                          ; $4201: $07
    ld [bc], a                                    ; $4202: $02
    rrca                                          ; $4203: $0f
    add hl, bc                                    ; $4204: $09
    rlca                                          ; $4205: $07
    ld [bc], a                                    ; $4206: $02
    ld e, $18                                     ; $4207: $1e $18
    rlca                                          ; $4209: $07

jr_0f2_420a:
    ld [bc], a                                    ; $420a: $02
    rrca                                          ; $420b: $0f
    inc c                                         ; $420c: $0c
    ld a, [bc]                                    ; $420d: $0a

jr_0f2_420e:
    ld [$a002], sp                                ; $420e: $08 $02 $a0
    ld [bc], a                                    ; $4211: $02
    ld [hl], b                                    ; $4212: $70
    sbc b                                         ; $4213: $98
    ret z                                         ; $4214: $c8

    ld hl, sp-$2c                                 ; $4215: $f8 $d4
    db $fc                                        ; $4217: $fc
    jr nc, jr_0f2_420a                            ; $4218: $30 $f0

    ld b, b                                       ; $421a: $40
    ret nz                                        ; $421b: $c0

    jr nc, jr_0f2_420e                            ; $421c: $30 $f0

    ret z                                         ; $421e: $c8

    ld e, b                                       ; $421f: $58
    ret z                                         ; $4220: $c8

    ld e, b                                       ; $4221: $58
    sub b                                         ; $4222: $90
    jr nc, jr_0f2_41b5                            ; $4223: $30 $90

    jr nc, jr_0f2_41c7                            ; $4225: $30 $a0

    jr nz, jr_0f2_41e9                            ; $4227: $20 $c0

    ld b, b                                       ; $4229: $40
    ret nz                                        ; $422a: $c0

    ld b, b                                       ; $422b: $40
    ld [bc], a                                    ; $422c: $02
    add b                                         ; $422d: $80
    ld [bc], a                                    ; $422e: $02
    nop                                           ; $422f: $00
    rst $38                                       ; $4230: $ff
    dec c                                         ; $4231: $0d
    inc b                                         ; $4232: $04
    ld hl, sp+$08                                 ; $4233: $f8 $08
    rst $20                                       ; $4235: $e7
    ld hl, sp-$1a                                 ; $4236: $f8 $e6
    or $e6                                        ; $4238: $f6 $e6
    cp $ea                                        ; $423a: $fe $ea
    nop                                           ; $423c: $00
    or $f8                                        ; $423d: $f6 $f8
    adc a                                         ; $423f: $8f
    ld bc, $0100                                  ; $4240: $01 $00 $01
    nop                                           ; $4243: $00
    ld a, h                                       ; $4244: $7c
    nop                                           ; $4245: $00
    rst $10                                       ; $4246: $d7
    nop                                           ; $4247: $00
    ld l, d                                       ; $4248: $6a
    nop                                           ; $4249: $00
    dec [hl]                                      ; $424a: $35
    nop                                           ; $424b: $00
    ld a, [de]                                    ; $424c: $1a
    nop                                           ; $424d: $00
    inc bc                                        ; $424e: $03
    ld de, $9c00                                  ; $424f: $11 $00 $9c
    add b                                         ; $4252: $80
    nop                                           ; $4253: $00
    ld h, b                                       ; $4254: $60
    nop                                           ; $4255: $00
    jp c, $b70a                                   ; $4256: $da $0a $b7

    rla                                           ; $4259: $17
    call c, Call_0f2_7d0f                         ; $425a: $dc $0f $7d
    rra                                           ; $425d: $1f
    or e                                          ; $425e: $b3
    rra                                           ; $425f: $1f
    ld d, h                                       ; $4260: $54
    inc c                                         ; $4261: $0c
    ld [hl], e                                    ; $4262: $73
    cpl                                           ; $4263: $2f
    ld h, h                                       ; $4264: $64
    ld e, l                                       ; $4265: $5d
    ld b, h                                       ; $4266: $44
    ld a, l                                       ; $4267: $7d
    add hl, hl                                    ; $4268: $29
    dec sp                                        ; $4269: $3b
    ld e, c                                       ; $426a: $59
    ld a, e                                       ; $426b: $7b
    ld [$02fa], a                                 ; $426c: $ea $fa $02
    ld a, b                                       ; $426f: $78
    ld [bc], a                                    ; $4270: $02
    xor b                                         ; $4271: $a8
    ld [bc], a                                    ; $4272: $02
    ld [bc], a                                    ; $4273: $02
    add d                                         ; $4274: $82
    ld bc, $0603                                  ; $4275: $01 $03 $06
    nop                                           ; $4278: $00
    inc b                                         ; $4279: $04
    ld [bc], a                                    ; $427a: $02
    ld a, [bc]                                    ; $427b: $0a
    nop                                           ; $427c: $00
    ld [bc], a                                    ; $427d: $02

Call_0f2_427e:
    ld h, b                                       ; $427e: $60
    ld [bc], a                                    ; $427f: $02
    jr nz, @+$06                                  ; $4280: $20 $04

    nop                                           ; $4282: $00
    ld [bc], a                                    ; $4283: $02
    ld bc, $0302                                  ; $4284: $01 $02 $03
    ld [bc], a                                    ; $4287: $02
    ld [bc], a                                    ; $4288: $02
    ld a, [de]                                    ; $4289: $1a
    nop                                           ; $428a: $00
    rst $38                                       ; $428b: $ff
    add hl, bc                                    ; $428c: $09
    ld [bc], a                                    ; $428d: $02
    ld hl, sp+$08                                 ; $428e: $f8 $08
    rst $20                                       ; $4290: $e7
    ld hl, sp-$17                                 ; $4291: $f8 $e9
    ld a, [$02e8]                                 ; $4293: $fa $e8 $02
    ld [bc], a                                    ; $4296: $02
    ld bc, $0002                                  ; $4297: $01 $02 $00
    ld [bc], a                                    ; $429a: $02
    inc bc                                        ; $429b: $03
    ld [bc], a                                    ; $429c: $02
    ld bc, $0381                                  ; $429d: $01 $81 $03
    ld [bc], a                                    ; $42a0: $02
    ld [bc], a                                    ; $42a1: $02
    sub d                                         ; $42a2: $92
    ld bc, $0205                                  ; $42a3: $01 $05 $02
    ld b, $01                                     ; $42a6: $06 $01
    rlca                                          ; $42a8: $07
    ld [bc], a                                    ; $42a9: $02
    rlca                                          ; $42aa: $07
    ld bc, $0a0f                                  ; $42ab: $01 $0f $0a
    ld b, $00                                     ; $42ae: $06 $00
    rrca                                          ; $42b0: $0f
    ld a, [bc]                                    ; $42b1: $0a

jr_0f2_42b2:
    rla                                           ; $42b2: $17
    inc d                                         ; $42b3: $14
    ld b, $03                                     ; $42b4: $06 $03
    inc b                                         ; $42b6: $04
    ld [bc], a                                    ; $42b7: $02
    and b                                         ; $42b8: $a0
    ld [bc], a                                    ; $42b9: $02
    ld [hl], b                                    ; $42ba: $70
    sub [hl]                                      ; $42bb: $96
    ret z                                         ; $42bc: $c8

    ld hl, sp-$2c                                 ; $42bd: $f8 $d4
    db $fc                                        ; $42bf: $fc
    jr nc, jr_0f2_42b2                            ; $42c0: $30 $f0

    ld b, b                                       ; $42c2: $40
    ret nz                                        ; $42c3: $c0

    and b                                         ; $42c4: $a0
    ld h, b                                       ; $42c5: $60
    ret nc                                        ; $42c6: $d0

    ld [hl], b                                    ; $42c7: $70
    ret nz                                        ; $42c8: $c0

    ld b, b                                       ; $42c9: $40
    and b                                         ; $42ca: $a0
    ld h, b                                       ; $42cb: $60
    and b                                         ; $42cc: $a0
    ld h, b                                       ; $42cd: $60
    ret nz                                        ; $42ce: $c0

    ld b, b                                       ; $42cf: $40
    ret nz                                        ; $42d0: $c0

    ld b, b                                       ; $42d1: $40
    ld [bc], a                                    ; $42d2: $02
    ret nz                                        ; $42d3: $c0

    ld [bc], a                                    ; $42d4: $02
    add b                                         ; $42d5: $80
    ld [bc], a                                    ; $42d6: $02
    nop                                           ; $42d7: $00
    rst $38                                       ; $42d8: $ff
    dec c                                         ; $42d9: $0d
    inc b                                         ; $42da: $04
    ld hl, sp+$08                                 ; $42db: $f8 $08
    rst $20                                       ; $42dd: $e7
    ld hl, sp-$1c                                 ; $42de: $f8 $e4
    db $f4                                        ; $42e0: $f4
    db $e4                                        ; $42e1: $e4
    db $fc                                        ; $42e2: $fc
    add sp, -$01                                  ; $42e3: $e8 $ff
    db $f4                                        ; $42e5: $f4
    rst $30                                       ; $42e6: $f7
    add e                                         ; $42e7: $83
    ld bc, $0100                                  ; $42e8: $01 $00 $01
    inc bc                                        ; $42eb: $03
    nop                                           ; $42ec: $00
    adc e                                         ; $42ed: $8b
    ld a, h                                       ; $42ee: $7c
    nop                                           ; $42ef: $00
    rst $10                                       ; $42f0: $d7
    nop                                           ; $42f1: $00
    ld l, d                                       ; $42f2: $6a
    nop                                           ; $42f3: $00
    dec [hl]                                      ; $42f4: $35
    nop                                           ; $42f5: $00
    ld a, [de]                                    ; $42f6: $1a
    nop                                           ; $42f7: $00
    inc bc                                        ; $42f8: $03
    rrca                                          ; $42f9: $0f
    nop                                           ; $42fa: $00
    sbc h                                         ; $42fb: $9c

Call_0f2_42fc:
    add b                                         ; $42fc: $80
    nop                                           ; $42fd: $00
    ld h, b                                       ; $42fe: $60
    nop                                           ; $42ff: $00
    ret nc                                        ; $4300: $d0

    nop                                           ; $4301: $00
    or l                                          ; $4302: $b5
    dec b                                         ; $4303: $05
    ld e, e                                       ; $4304: $5b
    inc de                                        ; $4305: $13
    cp [hl]                                       ; $4306: $be
    rrca                                          ; $4307: $0f
    ld e, d                                       ; $4308: $5a
    rra                                           ; $4309: $1f
    cp c                                          ; $430a: $b9
    rra                                           ; $430b: $1f
    ld e, e                                       ; $430c: $5b
    rrca                                          ; $430d: $0f
    halt                                          ; $430e: $76
    ld l, $44                                     ; $430f: $2e $44
    ld a, h                                       ; $4311: $7c
    ld l, c                                       ; $4312: $69
    ld a, e                                       ; $4313: $7b
    dec [hl]                                      ; $4314: $35
    ccf                                           ; $4315: $3f
    ld e, [hl]                                    ; $4316: $5e
    ld a, [hl]                                    ; $4317: $7e
    ld [bc], a                                    ; $4318: $02
    ld [hl], h                                    ; $4319: $74
    ld [bc], a                                    ; $431a: $02
    call nc, $0402                                ; $431b: $d4 $02 $04
    add h                                         ; $431e: $84
    ld [bc], a                                    ; $431f: $02
    ld b, $05                                     ; $4320: $06 $05
    rlca                                          ; $4322: $07
    ld [bc], a                                    ; $4323: $02
    inc b                                         ; $4324: $04
    ld [bc], a                                    ; $4325: $02
    nop                                           ; $4326: $00
    ld [bc], a                                    ; $4327: $02
    inc b                                         ; $4328: $04
    inc c                                         ; $4329: $0c
    nop                                           ; $432a: $00
    ld [bc], a                                    ; $432b: $02
    ret nz                                        ; $432c: $c0

    ld [bc], a                                    ; $432d: $02
    add b                                         ; $432e: $80
    ld b, $00                                     ; $432f: $06 $00
    ld [bc], a                                    ; $4331: $02
    ld bc, $001c                                  ; $4332: $01 $1c $00
    rst $38                                       ; $4335: $ff
    add hl, bc                                    ; $4336: $09
    ld [bc], a                                    ; $4337: $02
    ld hl, sp+$08                                 ; $4338: $f8 $08
    rst $20                                       ; $433a: $e7
    ld hl, sp-$1b                                 ; $433b: $f8 $e5
    ei                                            ; $433d: $fb
    push hl                                       ; $433e: $e5
    db $fd                                        ; $433f: $fd
    ld [bc], a                                    ; $4340: $02
    ld a, [bc]                                    ; $4341: $0a
    ld [bc], a                                    ; $4342: $02
    rla                                           ; $4343: $17
    sbc h                                         ; $4344: $9c
    inc c                                         ; $4345: $0c
    rrca                                          ; $4346: $0f
    dec a                                         ; $4347: $3d
    ccf                                           ; $4348: $3f
    inc de                                        ; $4349: $13
    rra                                           ; $434a: $1f
    inc [hl]                                      ; $434b: $34

jr_0f2_434c:
    inc c                                         ; $434c: $0c
    ld e, e                                       ; $434d: $5b
    ld a, a                                       ; $434e: $7f
    call nc, $f87c                                ; $434f: $d4 $7c $f8
    jr z, jr_0f2_434c                             ; $4352: $28 $f8

    ld c, b                                       ; $4354: $48
    ld hl, sp+$28                                 ; $4355: $f8 $28
    db $f4                                        ; $4357: $f4
    ld c, h                                       ; $4358: $4c
    call c, $f40c                                 ; $4359: $dc $0c $f4
    ld d, h                                       ; $435c: $54
    ld l, h                                       ; $435d: $6c
    inc c                                         ; $435e: $0c
    ld l, b                                       ; $435f: $68
    jr z, jr_0f2_4366                             ; $4360: $28 $04

    nop                                           ; $4362: $00
    ld [bc], a                                    ; $4363: $02
    ld [bc], a                                    ; $4364: $02
    add d                                         ; $4365: $82

jr_0f2_4366:
    ld bc, $1803                                  ; $4366: $01 $03 $18
    nop                                           ; $4369: $00
    rst $38                                       ; $436a: $ff
    dec bc                                        ; $436b: $0b
    inc bc                                        ; $436c: $03
    ld hl, sp+$08                                 ; $436d: $f8 $08
    rst $20                                       ; $436f: $e7
    ld hl, sp-$1d                                 ; $4370: $f8 $e3
    di                                            ; $4372: $f3
    ld [c], a                                     ; $4373: $e2
    ld a, [$f9f2]                                 ; $4374: $fa $f2 $f9
    add c                                         ; $4377: $81
    ld bc, $0003                                  ; $4378: $01 $03 $00
    ld [bc], a                                    ; $437b: $02
    ld bc, $7e8b                                  ; $437c: $01 $8b $7e
    inc bc                                        ; $437f: $03
    sub $03                                       ; $4380: $d6 $03
    ld l, e                                       ; $4382: $6b
    nop                                           ; $4383: $00
    dec [hl]                                      ; $4384: $35
    nop                                           ; $4385: $00
    ld a, [de]                                    ; $4386: $1a
    nop                                           ; $4387: $00
    inc bc                                        ; $4388: $03
    dec bc                                        ; $4389: $0b
    nop                                           ; $438a: $00
    ld [bc], a                                    ; $438b: $02
    ld bc, $0302                                  ; $438c: $01 $02 $03
    sbc [hl]                                      ; $438f: $9e
    ld b, b                                       ; $4390: $40
    nop                                           ; $4391: $00
    jr nz, jr_0f2_4394                            ; $4392: $20 $00

jr_0f2_4394:
    ld d, h                                       ; $4394: $54
    inc b                                         ; $4395: $04
    ld a, d                                       ; $4396: $7a
    ld l, $3e                                     ; $4397: $2e $3e
    ld e, $32                                     ; $4399: $1e $32
    ld a, $55                                     ; $439b: $3e $55
    ld e, a                                       ; $439d: $5f
    ld e, h                                       ; $439e: $5c
    inc a                                         ; $439f: $3c
    ld [hl], d                                    ; $43a0: $72
    ld a, $7a                                     ; $43a1: $3e $7a
    ld e, [hl]                                    ; $43a3: $5e
    ld a, [hl-]                                   ; $43a4: $3a
    ld e, $6e                                     ; $43a5: $1e $6e
    ld a, [hl]                                    ; $43a7: $7e
    inc l                                         ; $43a8: $2c
    inc a                                         ; $43a9: $3c
    ld e, d                                       ; $43aa: $5a
    ld a, [hl]                                    ; $43ab: $7e
    ld [hl], d                                    ; $43ac: $72
    halt                                          ; $43ad: $76
    ld [bc], a                                    ; $43ae: $02
    ld d, [hl]                                    ; $43af: $56
    ld [bc], a                                    ; $43b0: $02
    add hl, de                                    ; $43b1: $19
    ld [bc], a                                    ; $43b2: $02
    db $10                                        ; $43b3: $10
    inc e                                         ; $43b4: $1c
    nop                                           ; $43b5: $00
    rst $38                                       ; $43b6: $ff
    dec bc                                        ; $43b7: $0b
    inc bc                                        ; $43b8: $03
    ld hl, sp+$08                                 ; $43b9: $f8 $08
    rst $20                                       ; $43bb: $e7
    ld hl, sp-$1f                                 ; $43bc: $f8 $e1
    ld hl, sp-$1d                                 ; $43be: $f8 $e3
    rst $38                                       ; $43c0: $ff
    pop af                                        ; $43c1: $f1
    ld a, [$4096]                                 ; $43c2: $fa $96 $40
    nop                                           ; $43c5: $00
    ldh a, [rP1]                                  ; $43c6: $f0 $00
    xor b                                         ; $43c8: $a8
    nop                                           ; $43c9: $00
    sub $02                                       ; $43ca: $d6 $02
    ld l, h                                       ; $43cc: $6c
    ld b, $54                                     ; $43cd: $06 $54
    ld b, $2b                                     ; $43cf: $06 $2b
    ld [bc], a                                    ; $43d1: $02
    inc d                                         ; $43d2: $14
    ld bc, $010f                                  ; $43d3: $01 $0f $01
    rlca                                          ; $43d6: $07
    dec b                                         ; $43d7: $05
    inc bc                                        ; $43d8: $03
    ld [bc], a                                    ; $43d9: $02
    ld [bc], a                                    ; $43da: $02
    rlca                                          ; $43db: $07
    ld [bc], a                                    ; $43dc: $02
    inc bc                                        ; $43dd: $03
    add [hl]                                      ; $43de: $86
    ld c, l                                       ; $43df: $4d
    ld c, a                                       ; $43e0: $4f
    dec h                                         ; $43e1: $25
    ccf                                           ; $43e2: $3f
    dec de                                        ; $43e3: $1b
    rra                                           ; $43e4: $1f
    ld [bc], a                                    ; $43e5: $02
    ld [bc], a                                    ; $43e6: $02
    add h                                         ; $43e7: $84
    inc b                                         ; $43e8: $04
    ld b, $04                                     ; $43e9: $06 $04
    ld b, $02                                     ; $43eb: $06 $02
    inc d                                         ; $43ed: $14
    ld [bc], a                                    ; $43ee: $02
    inc l                                         ; $43ef: $2c
    adc e                                         ; $43f0: $8b
    ld [hl], d                                    ; $43f1: $72
    ld a, [hl]                                    ; $43f2: $7e
    ld [hl], l                                    ; $43f3: $75
    ld a, a                                       ; $43f4: $7f
    ld e, [hl]                                    ; $43f5: $5e
    ld a, [hl]                                    ; $43f6: $7e
    jr nz, @+$62                                  ; $43f7: $20 $60

    jr nz, jr_0f2_445b                            ; $43f9: $20 $60

    jr nz, jr_0f2_4400                            ; $43fb: $20 $03

    ld h, b                                       ; $43fd: $60
    ld [bc], a                                    ; $43fe: $02

Call_0f2_43ff:
    ld b, b                                       ; $43ff: $40

jr_0f2_4400:
    adc b                                         ; $4400: $88
    jr nz, jr_0f2_4463                            ; $4401: $20 $60

    db $10                                        ; $4403: $10
    ld [hl], b                                    ; $4404: $70
    db $10                                        ; $4405: $10
    jr nc, jr_0f2_4430                            ; $4406: $30 $28

    jr c, jr_0f2_440c                             ; $4408: $38 $02

    jr nc, jr_0f2_440e                            ; $440a: $30 $02

jr_0f2_440c:
    ld b, c                                       ; $440c: $41
    ld [bc], a                                    ; $440d: $02

jr_0f2_440e:
    ld bc, $0018                                  ; $440e: $01 $18 $00
    rst $38                                       ; $4411: $ff
    dec bc                                        ; $4412: $0b
    inc bc                                        ; $4413: $03
    ld hl, sp+$08                                 ; $4414: $f8 $08
    rst $20                                       ; $4416: $e7
    ld hl, sp-$20                                 ; $4417: $f8 $e0
    ei                                            ; $4419: $fb
    db $e3                                        ; $441a: $e3
    inc bc                                        ; $441b: $03
    ldh a, [$fb]                                  ; $441c: $f0 $fb
    sbc h                                         ; $441e: $9c
    inc c                                         ; $441f: $0c
    nop                                           ; $4420: $00
    ld a, [de]                                    ; $4421: $1a
    nop                                           ; $4422: $00
    dec d                                         ; $4423: $15
    nop                                           ; $4424: $00
    dec de                                        ; $4425: $1b
    nop                                           ; $4426: $00
    dec d                                         ; $4427: $15
    nop                                           ; $4428: $00
    ld a, [de]                                    ; $4429: $1a
    nop                                           ; $442a: $00
    dec c                                         ; $442b: $0d
    nop                                           ; $442c: $00
    ld a, [bc]                                    ; $442d: $0a
    nop                                           ; $442e: $00
    dec c                                         ; $442f: $0d

jr_0f2_4430:
    nop                                           ; $4430: $00
    ld b, $00                                     ; $4431: $06 $00
    rlca                                          ; $4433: $07
    inc b                                         ; $4434: $04
    inc de                                        ; $4435: $13
    ld [de], a                                    ; $4436: $12
    inc c                                         ; $4437: $0c
    rrca                                          ; $4438: $0f
    ld [$020f], sp                                ; $4439: $08 $0f $02
    rra                                           ; $443c: $1f
    sub b                                         ; $443d: $90
    cp e                                          ; $443e: $bb
    rst $38                                       ; $443f: $ff
    ld b, b                                       ; $4440: $40
    nop                                           ; $4441: $00
    and b                                         ; $4442: $a0
    nop                                           ; $4443: $00
    and b                                         ; $4444: $a0
    nop                                           ; $4445: $00
    add b                                         ; $4446: $80
    nop                                           ; $4447: $00
    and b                                         ; $4448: $a0
    nop                                           ; $4449: $00
    ret nc                                        ; $444a: $d0

    ld d, b                                       ; $444b: $50
    ld [$022a], a                                 ; $444c: $ea $2a $02
    db $fc                                        ; $444f: $fc
    add h                                         ; $4450: $84
    jp nc, Jump_0f2_75fe                          ; $4451: $d2 $fe $75

    rst $38                                       ; $4454: $ff
    ld [bc], a                                    ; $4455: $02
    xor $02                                       ; $4456: $ee $02
    jr nc, jr_0f2_445c                            ; $4458: $30 $02

    sbc b                                         ; $445a: $98

jr_0f2_445b:
    add d                                         ; $445b: $82

jr_0f2_445c:
    add h                                         ; $445c: $84
    sbc h                                         ; $445d: $9c
    ld [bc], a                                    ; $445e: $02
    adc b                                         ; $445f: $88
    ld [bc], a                                    ; $4460: $02
    nop                                           ; $4461: $00
    add [hl]                                      ; $4462: $86

jr_0f2_4463:
    ld l, d                                       ; $4463: $6a
    ld a, [hl]                                    ; $4464: $7e
    ld a, [hl+]                                   ; $4465: $2a
    ld a, $b2                                     ; $4466: $3e $b2
    or [hl]                                       ; $4468: $b6
    ld [bc], a                                    ; $4469: $02
    ld h, [hl]                                    ; $446a: $66
    ld [bc], a                                    ; $446b: $02
    inc e                                         ; $446c: $1c
    ld d, $00                                     ; $446d: $16 $00
    rst $38                                       ; $446f: $ff
    add hl, bc                                    ; $4470: $09
    ld [bc], a                                    ; $4471: $02
    ld hl, sp+$08                                 ; $4472: $f8 $08
    rst $20                                       ; $4474: $e7
    ld hl, sp-$19                                 ; $4475: $f8 $e7
    db $fd                                        ; $4477: $fd
    rst $20                                       ; $4478: $e7
    nop                                           ; $4479: $00
    ld [bc], a                                    ; $447a: $02
    dec b                                         ; $447b: $05
    ld [bc], a                                    ; $447c: $02
    dec bc                                        ; $447d: $0b
    sbc d                                         ; $447e: $9a
    ld b, $07                                     ; $447f: $06 $07
    ld [de], a                                    ; $4481: $12
    rla                                           ; $4482: $17
    dec l                                         ; $4483: $2d
    inc hl                                        ; $4484: $23
    rla                                           ; $4485: $17
    dec bc                                        ; $4486: $0b
    dec a                                         ; $4487: $3d
    inc de                                        ; $4488: $13
    ld [hl], $0a                                  ; $4489: $36 $0a
    ld a, $13                                     ; $448b: $3e $13
    inc a                                         ; $448d: $3c
    add hl, bc                                    ; $448e: $09
    dec a                                         ; $448f: $3d
    dec d                                         ; $4490: $15
    db $f4                                        ; $4491: $f4
    ret z                                         ; $4492: $c8

    inc l                                         ; $4493: $2c
    inc d                                         ; $4494: $14
    call c, Call_000_38c4                         ; $4495: $dc $c4 $38
    jr z, jr_0f2_449c                             ; $4498: $28 $02

    ld b, b                                       ; $449a: $40
    ld [bc], a                                    ; $449b: $02

jr_0f2_449c:
    nop                                           ; $449c: $00
    ld [bc], a                                    ; $449d: $02
    inc b                                         ; $449e: $04
    add h                                         ; $449f: $84
    ld [bc], a                                    ; $44a0: $02
    ld b, $05                                     ; $44a1: $06 $05
    rlca                                          ; $44a3: $07
    ld [bc], a                                    ; $44a4: $02
    inc b                                         ; $44a5: $04
    ld [bc], a                                    ; $44a6: $02
    nop                                           ; $44a7: $00

jr_0f2_44a8:
    ld [bc], a                                    ; $44a8: $02
    inc b                                         ; $44a9: $04
    add d                                         ; $44aa: $82
    ld [bc], a                                    ; $44ab: $02
    ld b, $04                                     ; $44ac: $06 $04
    inc b                                         ; $44ae: $04
    inc c                                         ; $44af: $0c
    nop                                           ; $44b0: $00
    rst $38                                       ; $44b1: $ff
    dec c                                         ; $44b2: $0d
    inc b                                         ; $44b3: $04
    ld hl, sp+$08                                 ; $44b4: $f8 $08
    rst $20                                       ; $44b6: $e7
    ld hl, sp-$1b                                 ; $44b7: $f8 $e5
    push af                                       ; $44b9: $f5
    push hl                                       ; $44ba: $e5
    db $fd                                        ; $44bb: $fd
    db $ed                                        ; $44bc: $ed
    cp $f5                                        ; $44bd: $fe $f5
    or $8f                                        ; $44bf: $f6 $8f
    ld bc, $0100                                  ; $44c1: $01 $00 $01
    nop                                           ; $44c4: $00
    ld a, h                                       ; $44c5: $7c
    nop                                           ; $44c6: $00
    rst $10                                       ; $44c7: $d7
    nop                                           ; $44c8: $00
    ld l, d                                       ; $44c9: $6a
    nop                                           ; $44ca: $00
    dec [hl]                                      ; $44cb: $35
    nop                                           ; $44cc: $00
    ld a, [de]                                    ; $44cd: $1a
    nop                                           ; $44ce: $00
    inc bc                                        ; $44cf: $03
    ld de, $9e00                                  ; $44d0: $11 $00 $9e
    ret nz                                        ; $44d3: $c0

    nop                                           ; $44d4: $00
    ld h, b                                       ; $44d5: $60
    nop                                           ; $44d6: $00
    cp h                                          ; $44d7: $bc
    inc a                                         ; $44d8: $3c
    ld a, d                                       ; $44d9: $7a
    ld a, [hl-]                                   ; $44da: $3a
    db $e4                                        ; $44db: $e4
    ld a, h                                       ; $44dc: $7c
    ld d, h                                       ; $44dd: $54
    inc a                                         ; $44de: $3c
    cp h                                          ; $44df: $bc
    inc e                                         ; $44e0: $1c
    db $db                                        ; $44e1: $db
    xor a                                         ; $44e2: $af
    halt                                          ; $44e3: $76
    cpl                                           ; $44e4: $2f
    call nz, Call_0f2_69fc                        ; $44e5: $c4 $fc $69
    ld a, e                                       ; $44e8: $7b
    add hl, sp                                    ; $44e9: $39
    dec sp                                        ; $44ea: $3b
    ld d, $3e                                     ; $44eb: $16 $3e

jr_0f2_44ed:
    ld d, h                                       ; $44ed: $54
    ld a, h                                       ; $44ee: $7c
    ld l, d                                       ; $44ef: $6a
    ld l, [hl]                                    ; $44f0: $6e
    ld [bc], a                                    ; $44f1: $02
    ld b, [hl]                                    ; $44f2: $46
    ld [bc], a                                    ; $44f3: $02
    ld bc, $000e                                  ; $44f4: $01 $0e $00
    ld [bc], a                                    ; $44f7: $02
    ld [$000e], sp                                ; $44f8: $08 $0e $00
    ld [bc], a                                    ; $44fb: $02
    ld bc, $001e                                  ; $44fc: $01 $1e $00
    rst $38                                       ; $44ff: $ff
    rlca                                          ; $4500: $07
    ld bc, $08f8                                  ; $4501: $01 $f8 $08
    rst $20                                       ; $4504: $e7
    ld hl, sp-$19                                 ; $4505: $f8 $e7
    ld hl, sp+$02                                 ; $4507: $f8 $02
    jr z, jr_0f2_450d                             ; $4509: $28 $02

    ld [hl], h                                    ; $450b: $74
    add h                                         ; $450c: $84

jr_0f2_450d:
    ld c, b                                       ; $450d: $48
    ld a, b                                       ; $450e: $78
    xor b                                         ; $450f: $a8
    ld hl, sp+$02                                 ; $4510: $f8 $02
    jr c, jr_0f2_44a8                             ; $4512: $38 $94

    halt                                          ; $4514: $76
    ld c, [hl]                                    ; $4515: $4e
    ld e, h                                       ; $4516: $5c
    inc l                                         ; $4517: $2c
    ld a, [$da4e]                                 ; $4518: $fa $4e $da
    ld l, $f8                                     ; $451b: $2e $f8
    ld c, b                                       ; $451d: $48
    ld a, [hl]                                    ; $451e: $7e
    ld d, $5a                                     ; $451f: $16 $5a
    ld h, $6f                                     ; $4521: $26 $6f
    rla                                           ; $4523: $17
    ld a, l                                       ; $4524: $7d
    ld c, l                                       ; $4525: $4d
    ld [hl], $06                                  ; $4526: $36 $06
    ld [bc], a                                    ; $4528: $02
    db $10                                        ; $4529: $10
    rst $38                                       ; $452a: $ff
    dec c                                         ; $452b: $0d
    inc b                                         ; $452c: $04
    ld hl, sp+$08                                 ; $452d: $f8 $08
    rst $20                                       ; $452f: $e7
    ld hl, sp-$19                                 ; $4530: $f8 $e7
    db $ec                                        ; $4532: $ec
    add sp, -$0c                                  ; $4533: $e8 $f4
    ldh a, [$f5]                                  ; $4535: $f0 $f5
    rst $30                                       ; $4537: $f7
    db $ed                                        ; $4538: $ed
    adc a                                         ; $4539: $8f
    ld c, $00                                     ; $453a: $0e $00
    dec b                                         ; $453c: $05
    nop                                           ; $453d: $00
    ld a, l                                       ; $453e: $7d
    nop                                           ; $453f: $00
    rst $10                                       ; $4540: $d7
    nop                                           ; $4541: $00
    ld l, d                                       ; $4542: $6a
    nop                                           ; $4543: $00
    dec [hl]                                      ; $4544: $35
    nop                                           ; $4545: $00
    ld a, [de]                                    ; $4546: $1a
    nop                                           ; $4547: $00
    inc bc                                        ; $4548: $03
    ld de, $9600                                  ; $4549: $11 $00 $96
    add b                                         ; $454c: $80
    nop                                           ; $454d: $00
    ld l, b                                       ; $454e: $68
    jr z, jr_0f2_44ed                             ; $454f: $28 $9c

    inc e                                         ; $4551: $1c
    ld a, [c]                                     ; $4552: $f2
    ld a, [hl]                                    ; $4553: $7e
    ld [hl], l                                    ; $4554: $75
    ccf                                           ; $4555: $3f
    cp h                                          ; $4556: $bc
    inc e                                         ; $4557: $1c
    ld a, d                                       ; $4558: $7a
    ld l, $77                                     ; $4559: $2e $77
    cpl                                           ; $455b: $2f
    ld h, h                                       ; $455c: $64
    ld a, l                                       ; $455d: $7d
    ld b, l                                       ; $455e: $45
    ld a, a                                       ; $455f: $7f
    add hl, hl                                    ; $4560: $29
    dec sp                                        ; $4561: $3b
    ld [bc], a                                    ; $4562: $02
    inc a                                         ; $4563: $3c
    add h                                         ; $4564: $84
    ld c, d                                       ; $4565: $4a
    ld l, [hl]                                    ; $4566: $6e
    ld l, l                                       ; $4567: $6d
    ld l, a                                       ; $4568: $6f
    ld [bc], a                                    ; $4569: $02
    ld c, c                                       ; $456a: $49
    ld [bc], a                                    ; $456b: $02
    jp c, $0104                                   ; $456c: $da $04 $01

    inc c                                         ; $456f: $0c
    nop                                           ; $4570: $00
    ld [bc], a                                    ; $4571: $02
    jr nz, jr_0f2_4584                            ; $4572: $20 $10

    nop                                           ; $4574: $00
    ld [bc], a                                    ; $4575: $02
    ld bc, $001c                                  ; $4576: $01 $1c $00
    rst $38                                       ; $4579: $ff
    add hl, bc                                    ; $457a: $09
    ld [bc], a                                    ; $457b: $02
    ld hl, sp+$08                                 ; $457c: $f8 $08
    rst $20                                       ; $457e: $e7
    ld hl, sp-$17                                 ; $457f: $f8 $e9
    ld hl, sp-$17                                 ; $4581: $f8 $e9
    ei                                            ; $4583: $fb

jr_0f2_4584:
    ld [bc], a                                    ; $4584: $02
    dec b                                         ; $4585: $05
    ld [bc], a                                    ; $4586: $02
    inc bc                                        ; $4587: $03
    sbc d                                         ; $4588: $9a
    ld c, $0f                                     ; $4589: $0e $0f
    ld b, $07                                     ; $458b: $06 $07
    rrca                                          ; $458d: $0f
    add hl, bc                                    ; $458e: $09
    ld a, [bc]                                    ; $458f: $0a
    inc b                                         ; $4590: $04
    scf                                           ; $4591: $37
    add hl, hl                                    ; $4592: $29
    ld a, [de]                                    ; $4593: $1a
    inc b                                         ; $4594: $04
    ccf                                           ; $4595: $3f
    add hl, hl                                    ; $4596: $29
    ld a, [de]                                    ; $4597: $1a
    inc b                                         ; $4598: $04
    ld e, $08                                     ; $4599: $1e $08
    ld e, $24                                     ; $459b: $1e $24
    halt                                          ; $459d: $76
    ld l, d                                       ; $459e: $6a
    sbc $d2                                       ; $459f: $de $d2
    inc a                                         ; $45a1: $3c
    inc [hl]                                      ; $45a2: $34
    ld [bc], a                                    ; $45a3: $02
    ld h, b                                       ; $45a4: $60
    ld [bc], a                                    ; $45a5: $02
    nop                                           ; $45a6: $00
    ld [bc], a                                    ; $45a7: $02
    inc b                                         ; $45a8: $04
    add h                                         ; $45a9: $84
    ld [bc], a                                    ; $45aa: $02
    ld b, $05                                     ; $45ab: $06 $05
    rlca                                          ; $45ad: $07
    ld [bc], a                                    ; $45ae: $02
    inc b                                         ; $45af: $04
    ld [bc], a                                    ; $45b0: $02
    nop                                           ; $45b1: $00
    inc b                                         ; $45b2: $04
    inc b                                         ; $45b3: $04
    add h                                         ; $45b4: $84
    ld [bc], a                                    ; $45b5: $02
    ld b, $02                                     ; $45b6: $06 $02
    ld b, $02                                     ; $45b8: $06 $02
    inc b                                         ; $45ba: $04
    ld a, [bc]                                    ; $45bb: $0a
    nop                                           ; $45bc: $00
    rst $38                                       ; $45bd: $ff
    dec c                                         ; $45be: $0d
    inc b                                         ; $45bf: $04
    push af                                       ; $45c0: $f5
    db $10                                        ; $45c1: $10
    xor $ff                                       ; $45c2: $ee $ff
    pop af                                        ; $45c4: $f1
    push af                                       ; $45c5: $f5
    pop af                                        ; $45c6: $f1
    db $fd                                        ; $45c7: $fd
    pop af                                        ; $45c8: $f1
    dec b                                         ; $45c9: $05
    pop af                                        ; $45ca: $f1
    add hl, bc                                    ; $45cb: $09
    ld [bc], a                                    ; $45cc: $02
    nop                                           ; $45cd: $00
    ld [bc], a                                    ; $45ce: $02
    inc bc                                        ; $45cf: $03
    add d                                         ; $45d0: $82
    ld [bc], a                                    ; $45d1: $02
    inc bc                                        ; $45d2: $03
    ld [bc], a                                    ; $45d3: $02
    rla                                           ; $45d4: $17
    sub h                                         ; $45d5: $94
    dec l                                         ; $45d6: $2d
    ccf                                           ; $45d7: $3f
    ld a, [hl-]                                   ; $45d8: $3a
    ccf                                           ; $45d9: $3f
    ld [hl], c                                    ; $45da: $71
    ld a, a                                       ; $45db: $7f
    cp e                                          ; $45dc: $bb
    rst $38                                       ; $45dd: $ff
    ld e, [hl]                                    ; $45de: $5e
    ld a, a                                       ; $45df: $7f
    ld [hl], a                                    ; $45e0: $77
    ld a, a                                       ; $45e1: $7f
    dec e                                         ; $45e2: $1d
    rra                                           ; $45e3: $1f
    ccf                                           ; $45e4: $3f
    inc hl                                        ; $45e5: $23
    ld a, $22                                     ; $45e6: $3e $22
    ld a, h                                       ; $45e8: $7c
    ld c, h                                       ; $45e9: $4c
    ld [bc], a                                    ; $45ea: $02
    jr c, jr_0f2_45ef                             ; $45eb: $38 $02

    nop                                           ; $45ed: $00
    ld [bc], a                                    ; $45ee: $02

jr_0f2_45ef:
    inc sp                                        ; $45ef: $33
    sub c                                         ; $45f0: $91
    ld l, l                                       ; $45f1: $6d
    ld a, a                                       ; $45f2: $7f
    cp c                                          ; $45f3: $b9
    rst $38                                       ; $45f4: $ff
    xor $ff                                       ; $45f5: $ee $ff
    ld b, [hl]                                    ; $45f7: $46
    rst $38                                       ; $45f8: $ff
    ld b, l                                       ; $45f9: $45
    rst $38                                       ; $45fa: $ff
    ret z                                         ; $45fb: $c8

    rst $38                                       ; $45fc: $ff
    ld a, c                                       ; $45fd: $79
    rst $38                                       ; $45fe: $ff
    ld c, b                                       ; $45ff: $48
    rst $38                                       ; $4600: $ff
    adc l                                         ; $4601: $8d
    inc bc                                        ; $4602: $03
    rst $38                                       ; $4603: $ff
    add c                                         ; $4604: $81
    inc l                                         ; $4605: $2c
    inc bc                                        ; $4606: $03
    rst $38                                       ; $4607: $ff
    ld b, $00                                     ; $4608: $06 $00
    ld [bc], a                                    ; $460a: $02
    ld bc, $0302                                  ; $460b: $01 $02 $03
    ld [bc], a                                    ; $460e: $02
    rst $00                                       ; $460f: $c7
    sub [hl]                                      ; $4610: $96
    ld [hl], a                                    ; $4611: $77
    push af                                       ; $4612: $f5
    rst $38                                       ; $4613: $ff
    ld a, [$fb1f]                                 ; $4614: $fa $1f $fb
    rst $38                                       ; $4617: $ff
    ld sp, hl                                     ; $4618: $f9
    or [hl]                                       ; $4619: $b6
    cp $e4                                        ; $461a: $fe $e4
    db $fc                                        ; $461c: $fc
    sbc h                                         ; $461d: $9c
    db $fc                                        ; $461e: $fc
    ld a, b                                       ; $461f: $78
    add sp, -$04                                  ; $4620: $e8 $fc
    call nz, Call_0f2_427e                        ; $4622: $c4 $7e $42
    ccf                                           ; $4625: $3f
    add hl, sp                                    ; $4626: $39
    ld [bc], a                                    ; $4627: $02
    ld c, $02                                     ; $4628: $0e $02
    nop                                           ; $462a: $00
    ld [bc], a                                    ; $462b: $02
    ld [$0688], sp                                ; $462c: $08 $88 $06
    ld c, $07                                     ; $462f: $0e $07
    dec c                                         ; $4631: $0d
    rrca                                          ; $4632: $0f
    add hl, bc                                    ; $4633: $09
    rrca                                          ; $4634: $0f
    inc bc                                        ; $4635: $03
    ld [bc], a                                    ; $4636: $02
    ld c, $14                                     ; $4637: $0e $14
    nop                                           ; $4639: $00
    rst $38                                       ; $463a: $ff
    dec c                                         ; $463b: $0d
    inc b                                         ; $463c: $04
    push af                                       ; $463d: $f5
    db $10                                        ; $463e: $10
    xor $ff                                       ; $463f: $ee $ff
    ldh a, [$f5]                                  ; $4641: $f0 $f5
    ldh a, [$fd]                                  ; $4643: $f0 $fd
    ldh a, [rTIMA]                                ; $4645: $f0 $05
    ldh a, [$09]                                  ; $4647: $f0 $09
    ld [bc], a                                    ; $4649: $02
    nop                                           ; $464a: $00
    ld [bc], a                                    ; $464b: $02
    inc bc                                        ; $464c: $03
    add d                                         ; $464d: $82
    ld [bc], a                                    ; $464e: $02
    inc bc                                        ; $464f: $03
    ld [bc], a                                    ; $4650: $02
    rla                                           ; $4651: $17
    adc l                                         ; $4652: $8d
    dec l                                         ; $4653: $2d
    ccf                                           ; $4654: $3f
    ld a, [hl-]                                   ; $4655: $3a
    ccf                                           ; $4656: $3f
    ld [hl], c                                    ; $4657: $71
    ld a, a                                       ; $4658: $7f
    cp e                                          ; $4659: $bb
    rst $38                                       ; $465a: $ff
    ld e, [hl]                                    ; $465b: $5e
    ld a, a                                       ; $465c: $7f
    ld [hl], a                                    ; $465d: $77
    ld a, a                                       ; $465e: $7f
    dec e                                         ; $465f: $1d
    ld [bc], a                                    ; $4660: $02
    rra                                           ; $4661: $1f
    add a                                         ; $4662: $87
    inc de                                        ; $4663: $13
    ld a, $22                                     ; $4664: $3e $22
    ld a, $22                                     ; $4666: $3e $22
    ld a, h                                       ; $4668: $7c
    ld c, h                                       ; $4669: $4c
    ld [bc], a                                    ; $466a: $02
    jr c, jr_0f2_466f                             ; $466b: $38 $02

    inc sp                                        ; $466d: $33
    sub c                                         ; $466e: $91

jr_0f2_466f:
    ld l, l                                       ; $466f: $6d
    ld a, a                                       ; $4670: $7f
    cp c                                          ; $4671: $b9
    rst $38                                       ; $4672: $ff
    xor $ff                                       ; $4673: $ee $ff
    ld b, [hl]                                    ; $4675: $46
    rst $38                                       ; $4676: $ff
    ld b, l                                       ; $4677: $45
    rst $38                                       ; $4678: $ff
    ret z                                         ; $4679: $c8

    rst $38                                       ; $467a: $ff
    ld a, c                                       ; $467b: $79
    rst $38                                       ; $467c: $ff
    ld c, b                                       ; $467d: $48
    rst $38                                       ; $467e: $ff
    adc l                                         ; $467f: $8d
    inc bc                                        ; $4680: $03
    rst $38                                       ; $4681: $ff
    add c                                         ; $4682: $81
    inc l                                         ; $4683: $2c
    inc bc                                        ; $4684: $03
    rst $38                                       ; $4685: $ff
    ld [$0200], sp                                ; $4686: $08 $00 $02
    ld bc, $c302                                  ; $4689: $01 $02 $c3
    sbc b                                         ; $468c: $98
    ld [hl], a                                    ; $468d: $77
    rst $30                                       ; $468e: $f7
    rst $38                                       ; $468f: $ff
    db $fd                                        ; $4690: $fd
    rra                                           ; $4691: $1f
    ld a, [$fbff]                                 ; $4692: $fa $ff $fb
    or [hl]                                       ; $4695: $b6
    cp $e4                                        ; $4696: $fe $e4
    db $fc                                        ; $4698: $fc
    sbc b                                         ; $4699: $98
    ld hl, sp+$78                                 ; $469a: $f8 $78
    add sp, -$08                                  ; $469c: $e8 $f8
    add sp, $7c                                   ; $469e: $e8 $7c
    ld b, h                                       ; $46a0: $44
    ld a, [hl]                                    ; $46a1: $7e
    ld b, d                                       ; $46a2: $42
    ccf                                           ; $46a3: $3f
    add hl, sp                                    ; $46a4: $39
    ld [bc], a                                    ; $46a5: $02
    ld c, $02                                     ; $46a6: $0e $02
    nop                                           ; $46a8: $00
    ld [bc], a                                    ; $46a9: $02
    ld [$0688], sp                                ; $46aa: $08 $88 $06
    ld c, $07                                     ; $46ad: $0e $07
    dec c                                         ; $46af: $0d
    rrca                                          ; $46b0: $0f
    add hl, bc                                    ; $46b1: $09
    rrca                                          ; $46b2: $0f
    inc bc                                        ; $46b3: $03
    ld [bc], a                                    ; $46b4: $02
    ld c, $12                                     ; $46b5: $0e $12
    nop                                           ; $46b7: $00
    rst $38                                       ; $46b8: $ff
    dec c                                         ; $46b9: $0d
    inc b                                         ; $46ba: $04
    push af                                       ; $46bb: $f5
    db $10                                        ; $46bc: $10
    xor $ff                                       ; $46bd: $ee $ff
    ldh a, [$f5]                                  ; $46bf: $f0 $f5
    rst $28                                       ; $46c1: $ef
    db $fd                                        ; $46c2: $fd
    pop af                                        ; $46c3: $f1
    dec b                                         ; $46c4: $05
    pop af                                        ; $46c5: $f1
    add hl, bc                                    ; $46c6: $09
    ld [bc], a                                    ; $46c7: $02
    inc bc                                        ; $46c8: $03
    add d                                         ; $46c9: $82
    ld [bc], a                                    ; $46ca: $02
    inc bc                                        ; $46cb: $03
    ld [bc], a                                    ; $46cc: $02
    rla                                           ; $46cd: $17
    sbc b                                         ; $46ce: $98
    dec l                                         ; $46cf: $2d
    ccf                                           ; $46d0: $3f
    ld a, [hl-]                                   ; $46d1: $3a
    ccf                                           ; $46d2: $3f
    ld [hl], c                                    ; $46d3: $71
    ld a, a                                       ; $46d4: $7f
    cp e                                          ; $46d5: $bb
    rst $38                                       ; $46d6: $ff
    ld e, [hl]                                    ; $46d7: $5e
    ld a, a                                       ; $46d8: $7f
    ld [hl], a                                    ; $46d9: $77
    ld a, a                                       ; $46da: $7f
    dec e                                         ; $46db: $1d
    rra                                           ; $46dc: $1f
    rrca                                          ; $46dd: $0f
    dec bc                                        ; $46de: $0b
    ld e, $12                                     ; $46df: $1e $12
    ld a, $22                                     ; $46e1: $3e $22
    ld a, $22                                     ; $46e3: $3e $22
    ld a, h                                       ; $46e5: $7c
    ld c, h                                       ; $46e6: $4c
    ld [bc], a                                    ; $46e7: $02
    jr c, jr_0f2_46ec                             ; $46e8: $38 $02

    inc sp                                        ; $46ea: $33
    sub c                                         ; $46eb: $91

jr_0f2_46ec:
    ld l, l                                       ; $46ec: $6d
    ld a, a                                       ; $46ed: $7f
    cp c                                          ; $46ee: $b9
    rst $38                                       ; $46ef: $ff
    xor $ff                                       ; $46f0: $ee $ff
    ld b, [hl]                                    ; $46f2: $46
    rst $38                                       ; $46f3: $ff
    ld b, l                                       ; $46f4: $45
    rst $38                                       ; $46f5: $ff
    ret z                                         ; $46f6: $c8

    rst $38                                       ; $46f7: $ff
    ld a, c                                       ; $46f8: $79
    rst $38                                       ; $46f9: $ff
    ld c, b                                       ; $46fa: $48
    rst $38                                       ; $46fb: $ff
    adc l                                         ; $46fc: $8d
    inc bc                                        ; $46fd: $03
    rst $38                                       ; $46fe: $ff
    add c                                         ; $46ff: $81
    inc l                                         ; $4700: $2c
    inc bc                                        ; $4701: $03
    rst $38                                       ; $4702: $ff
    ld b, $00                                     ; $4703: $06 $00
    ld [bc], a                                    ; $4705: $02
    pop bc                                        ; $4706: $c1
    add d                                         ; $4707: $82
    ld [hl], e                                    ; $4708: $73
    di                                            ; $4709: $f3
    ld [bc], a                                    ; $470a: $02
    rst $38                                       ; $470b: $ff
    sub [hl]                                      ; $470c: $96
    rra                                           ; $470d: $1f
    db $fd                                        ; $470e: $fd
    rst $38                                       ; $470f: $ff
    ld a, [$fbb7]                                 ; $4710: $fa $b7 $fb
    and $fe                                       ; $4713: $e6 $fe
    sbc h                                         ; $4715: $9c
    db $fc                                        ; $4716: $fc
    ld a, b                                       ; $4717: $78
    ld hl, sp-$48                                 ; $4718: $f8 $b8
    xor b                                         ; $471a: $a8
    ld a, b                                       ; $471b: $78
    ld l, b                                       ; $471c: $68
    ld a, h                                       ; $471d: $7c
    ld b, h                                       ; $471e: $44
    ld a, $22                                     ; $471f: $3e $22
    rra                                           ; $4721: $1f
    add hl, de                                    ; $4722: $19
    ld [bc], a                                    ; $4723: $02
    ld c, $02                                     ; $4724: $0e $02
    nop                                           ; $4726: $00
    ld [bc], a                                    ; $4727: $02
    ld [$0688], sp                                ; $4728: $08 $88 $06
    ld c, $07                                     ; $472b: $0e $07
    dec c                                         ; $472d: $0d
    rrca                                          ; $472e: $0f
    add hl, bc                                    ; $472f: $09
    rrca                                          ; $4730: $0f

jr_0f2_4731:
    inc bc                                        ; $4731: $03
    ld [bc], a                                    ; $4732: $02
    ld c, $14                                     ; $4733: $0e $14
    nop                                           ; $4735: $00
    rst $38                                       ; $4736: $ff
    dec c                                         ; $4737: $0d
    inc b                                         ; $4738: $04
    push af                                       ; $4739: $f5
    db $10                                        ; $473a: $10
    xor $ff                                       ; $473b: $ee $ff
    ldh a, [$f4]                                  ; $473d: $f0 $f4
    rst $28                                       ; $473f: $ef
    db $fc                                        ; $4740: $fc
    pop af                                        ; $4741: $f1
    inc b                                         ; $4742: $04
    ld a, [c]                                     ; $4743: $f2
    add hl, bc                                    ; $4744: $09
    ld [bc], a                                    ; $4745: $02
    inc bc                                        ; $4746: $03
    add d                                         ; $4747: $82
    ld [bc], a                                    ; $4748: $02
    inc bc                                        ; $4749: $03
    ld [bc], a                                    ; $474a: $02
    rla                                           ; $474b: $17
    adc [hl]                                      ; $474c: $8e
    dec l                                         ; $474d: $2d
    ccf                                           ; $474e: $3f
    ld a, [hl-]                                   ; $474f: $3a
    ccf                                           ; $4750: $3f
    ld [hl], c                                    ; $4751: $71
    ld a, a                                       ; $4752: $7f
    cp e                                          ; $4753: $bb
    rst $38                                       ; $4754: $ff
    ld e, [hl]                                    ; $4755: $5e
    ld a, a                                       ; $4756: $7f
    ld [hl], a                                    ; $4757: $77
    ld a, a                                       ; $4758: $7f
    dec e                                         ; $4759: $1d
    rra                                           ; $475a: $1f
    ld [bc], a                                    ; $475b: $02
    rrca                                          ; $475c: $0f
    adc b                                         ; $475d: $88
    ld e, $12                                     ; $475e: $1e $12
    ld a, $22                                     ; $4760: $3e $22
    ld a, $22                                     ; $4762: $3e $22
    ld a, $26                                     ; $4764: $3e $26
    ld [bc], a                                    ; $4766: $02
    inc e                                         ; $4767: $1c
    ld [bc], a                                    ; $4768: $02
    inc sp                                        ; $4769: $33
    sub c                                         ; $476a: $91
    ld l, l                                       ; $476b: $6d
    ld a, a                                       ; $476c: $7f
    cp c                                          ; $476d: $b9
    rst $38                                       ; $476e: $ff
    xor $ff                                       ; $476f: $ee $ff
    ld b, [hl]                                    ; $4771: $46
    rst $38                                       ; $4772: $ff
    ld b, l                                       ; $4773: $45
    rst $38                                       ; $4774: $ff
    ret z                                         ; $4775: $c8

    rst $38                                       ; $4776: $ff
    ld a, c                                       ; $4777: $79
    rst $38                                       ; $4778: $ff
    ld c, b                                       ; $4779: $48
    rst $38                                       ; $477a: $ff
    adc l                                         ; $477b: $8d
    inc bc                                        ; $477c: $03
    rst $38                                       ; $477d: $ff
    add c                                         ; $477e: $81
    inc l                                         ; $477f: $2c
    inc bc                                        ; $4780: $03
    rst $38                                       ; $4781: $ff
    ld b, $00                                     ; $4782: $06 $00
    ld [bc], a                                    ; $4784: $02
    ret nz                                        ; $4785: $c0

    add d                                         ; $4786: $82
    ld [hl], b                                    ; $4787: $70
    ldh a, [rSC]                                  ; $4788: $f0 $02
    ld sp, hl                                     ; $478a: $f9
    sub [hl]                                      ; $478b: $96
    dec de                                        ; $478c: $1b
    ei                                            ; $478d: $fb
    rst $38                                       ; $478e: $ff
    cp $b7                                        ; $478f: $fe $b7
    db $fd                                        ; $4791: $fd
    rst $20                                       ; $4792: $e7
    ld sp, hl                                     ; $4793: $f9
    sbc a                                         ; $4794: $9f
    pop af                                        ; $4795: $f1
    ld a, [hl]                                    ; $4796: $7e
    cp $fc                                        ; $4797: $fe $fc
    db $f4                                        ; $4799: $f4
    cp h                                          ; $479a: $bc
    or h                                          ; $479b: $b4
    ld a, $22                                     ; $479c: $3e $22
    rra                                           ; $479e: $1f
    ld de, $0c0f                                  ; $479f: $11 $0f $0c
    ld [bc], a                                    ; $47a2: $02
    rlca                                          ; $47a3: $07
    ld [bc], a                                    ; $47a4: $02
    nop                                           ; $47a5: $00
    ld [bc], a                                    ; $47a6: $02
    jr jr_0f2_4731                                ; $47a7: $18 $88

    ld d, $1e                                     ; $47a9: $16 $1e
    rla                                           ; $47ab: $17
    dec e                                         ; $47ac: $1d
    rra                                           ; $47ad: $1f
    add hl, de                                    ; $47ae: $19
    rra                                           ; $47af: $1f
    inc bc                                        ; $47b0: $03
    ld [bc], a                                    ; $47b1: $02
    ld e, $02                                     ; $47b2: $1e $02
    db $10                                        ; $47b4: $10
    ld a, [bc]                                    ; $47b5: $0a
    nop                                           ; $47b6: $00
    ld [bc], a                                    ; $47b7: $02
    db $10                                        ; $47b8: $10
    ld b, $00                                     ; $47b9: $06 $00
    rst $38                                       ; $47bb: $ff
    dec c                                         ; $47bc: $0d
    inc b                                         ; $47bd: $04
    push af                                       ; $47be: $f5
    db $10                                        ; $47bf: $10
    xor $ff                                       ; $47c0: $ee $ff
    ldh a, [$f4]                                  ; $47c2: $f0 $f4
    ldh a, [$fc]                                  ; $47c4: $f0 $fc
    ldh a, [rDIV]                                 ; $47c6: $f0 $04
    ldh a, [$09]                                  ; $47c8: $f0 $09
    ld [bc], a                                    ; $47ca: $02
    nop                                           ; $47cb: $00
    ld [bc], a                                    ; $47cc: $02
    inc bc                                        ; $47cd: $03
    add d                                         ; $47ce: $82
    ld [bc], a                                    ; $47cf: $02
    inc bc                                        ; $47d0: $03
    ld [bc], a                                    ; $47d1: $02
    rla                                           ; $47d2: $17
    sub [hl]                                      ; $47d3: $96
    dec l                                         ; $47d4: $2d
    ccf                                           ; $47d5: $3f
    ld a, [hl-]                                   ; $47d6: $3a
    ccf                                           ; $47d7: $3f
    ld [hl], c                                    ; $47d8: $71
    ld a, a                                       ; $47d9: $7f
    cp e                                          ; $47da: $bb
    rst $38                                       ; $47db: $ff
    ld e, [hl]                                    ; $47dc: $5e
    ld a, a                                       ; $47dd: $7f
    ld [hl], a                                    ; $47de: $77
    ld a, a                                       ; $47df: $7f
    dec e                                         ; $47e0: $1d
    rra                                           ; $47e1: $1f
    rrca                                          ; $47e2: $0f
    dec bc                                        ; $47e3: $0b
    rra                                           ; $47e4: $1f
    ld de, $213f                                  ; $47e5: $11 $3f $21
    ld a, $26                                     ; $47e8: $3e $26
    ld [bc], a                                    ; $47ea: $02
    inc e                                         ; $47eb: $1c
    ld [bc], a                                    ; $47ec: $02
    inc sp                                        ; $47ed: $33
    sub c                                         ; $47ee: $91
    ld l, l                                       ; $47ef: $6d
    ld a, a                                       ; $47f0: $7f
    cp c                                          ; $47f1: $b9
    rst $38                                       ; $47f2: $ff
    xor $ff                                       ; $47f3: $ee $ff
    ld b, [hl]                                    ; $47f5: $46
    rst $38                                       ; $47f6: $ff
    ld b, l                                       ; $47f7: $45
    rst $38                                       ; $47f8: $ff
    ret z                                         ; $47f9: $c8

    rst $38                                       ; $47fa: $ff
    ld a, c                                       ; $47fb: $79
    rst $38                                       ; $47fc: $ff
    ld c, b                                       ; $47fd: $48
    rst $38                                       ; $47fe: $ff
    adc l                                         ; $47ff: $8d
    inc bc                                        ; $4800: $03
    rst $38                                       ; $4801: $ff
    add c                                         ; $4802: $81
    inc l                                         ; $4803: $2c
    inc bc                                        ; $4804: $03
    rst $38                                       ; $4805: $ff
    ld a, [bc]                                    ; $4806: $0a
    nop                                           ; $4807: $00
    ld [bc], a                                    ; $4808: $02
    ret nz                                        ; $4809: $c0

    add d                                         ; $480a: $82
    ld [hl], c                                    ; $480b: $71
    pop af                                        ; $480c: $f1
    ld [bc], a                                    ; $480d: $02
    ei                                            ; $480e: $fb
    sub h                                         ; $480f: $94
    rra                                           ; $4810: $1f
    cp $ff                                        ; $4811: $fe $ff
    ld sp, hl                                     ; $4813: $f9
    or a                                          ; $4814: $b7
    ld sp, hl                                     ; $4815: $f9
    rst $20                                       ; $4816: $e7
    ld sp, hl                                     ; $4817: $f9
    sbc [hl]                                      ; $4818: $9e
    ld a, [c]                                     ; $4819: $f2
    ld a, h                                       ; $481a: $7c
    db $ec                                        ; $481b: $ec
    db $fc                                        ; $481c: $fc
    db $e4                                        ; $481d: $e4
    ld a, $22                                     ; $481e: $3e $22
    rra                                           ; $4820: $1f
    ld de, $0c0f                                  ; $4821: $11 $0f $0c
    ld [bc], a                                    ; $4824: $02
    rlca                                          ; $4825: $07
    inc b                                         ; $4826: $04
    nop                                           ; $4827: $00
    ld [bc], a                                    ; $4828: $02
    jr @-$76                                      ; $4829: $18 $88

    ld d, $1e                                     ; $482b: $16 $1e
    rla                                           ; $482d: $17
    dec e                                         ; $482e: $1d
    rra                                           ; $482f: $1f
    add hl, de                                    ; $4830: $19
    rra                                           ; $4831: $1f
    inc bc                                        ; $4832: $03
    ld [bc], a                                    ; $4833: $02
    ld e, $02                                     ; $4834: $1e $02
    db $10                                        ; $4836: $10
    ld a, [bc]                                    ; $4837: $0a
    nop                                           ; $4838: $00
    ld [bc], a                                    ; $4839: $02
    db $10                                        ; $483a: $10
    ld [bc], a                                    ; $483b: $02
    nop                                           ; $483c: $00
    rst $38                                       ; $483d: $ff
    dec c                                         ; $483e: $0d
    inc b                                         ; $483f: $04
    push af                                       ; $4840: $f5
    db $10                                        ; $4841: $10
    xor $ff                                       ; $4842: $ee $ff
    pop af                                        ; $4844: $f1
    db $f4                                        ; $4845: $f4
    pop af                                        ; $4846: $f1
    db $fc                                        ; $4847: $fc
    pop af                                        ; $4848: $f1
    inc b                                         ; $4849: $04
    pop af                                        ; $484a: $f1
    add hl, bc                                    ; $484b: $09
    ld [bc], a                                    ; $484c: $02
    nop                                           ; $484d: $00
    ld [bc], a                                    ; $484e: $02
    inc bc                                        ; $484f: $03
    add d                                         ; $4850: $82
    ld [bc], a                                    ; $4851: $02
    inc bc                                        ; $4852: $03
    ld [bc], a                                    ; $4853: $02
    rla                                           ; $4854: $17
    adc l                                         ; $4855: $8d
    dec l                                         ; $4856: $2d
    ccf                                           ; $4857: $3f
    ld a, [hl-]                                   ; $4858: $3a
    ccf                                           ; $4859: $3f
    ld [hl], c                                    ; $485a: $71
    ld a, a                                       ; $485b: $7f
    cp e                                          ; $485c: $bb
    rst $38                                       ; $485d: $ff
    ld e, [hl]                                    ; $485e: $5e
    ld a, a                                       ; $485f: $7f
    ld [hl], a                                    ; $4860: $77
    ld a, a                                       ; $4861: $7f
    dec e                                         ; $4862: $1d
    ld [bc], a                                    ; $4863: $02
    rra                                           ; $4864: $1f
    add l                                         ; $4865: $85
    inc de                                        ; $4866: $13
    ccf                                           ; $4867: $3f
    ld hl, $263e                                  ; $4868: $21 $3e $26
    ld [bc], a                                    ; $486b: $02
    inc e                                         ; $486c: $1c
    ld [bc], a                                    ; $486d: $02
    nop                                           ; $486e: $00
    ld [bc], a                                    ; $486f: $02
    inc sp                                        ; $4870: $33
    sub c                                         ; $4871: $91
    ld l, l                                       ; $4872: $6d
    ld a, a                                       ; $4873: $7f
    cp c                                          ; $4874: $b9
    rst $38                                       ; $4875: $ff
    xor $ff                                       ; $4876: $ee $ff
    ld b, [hl]                                    ; $4878: $46
    rst $38                                       ; $4879: $ff
    ld b, l                                       ; $487a: $45
    rst $38                                       ; $487b: $ff
    ret z                                         ; $487c: $c8

    rst $38                                       ; $487d: $ff
    ld a, c                                       ; $487e: $79
    rst $38                                       ; $487f: $ff
    ld c, b                                       ; $4880: $48
    rst $38                                       ; $4881: $ff
    adc l                                         ; $4882: $8d
    inc bc                                        ; $4883: $03
    rst $38                                       ; $4884: $ff
    add c                                         ; $4885: $81
    inc l                                         ; $4886: $2c
    inc bc                                        ; $4887: $03
    rst $38                                       ; $4888: $ff
    ld [$0200], sp                                ; $4889: $08 $00 $02
    ld bc, $c302                                  ; $488c: $01 $02 $c3
    sub [hl]                                      ; $488f: $96
    ld [hl], e                                    ; $4890: $73
    ld a, [c]                                     ; $4891: $f2

jr_0f2_4892:
    rst $38                                       ; $4892: $ff
    db $fd                                        ; $4893: $fd
    rra                                           ; $4894: $1f
    ld sp, hl                                     ; $4895: $f9
    rst $38                                       ; $4896: $ff
    ld hl, sp-$49                                 ; $4897: $f8 $b7
    ld sp, hl                                     ; $4899: $f9
    and $fe                                       ; $489a: $e6 $fe
    sbc h                                         ; $489c: $9c
    db $fc                                        ; $489d: $fc
    ld a, h                                       ; $489e: $7c

jr_0f2_489f:
    db $e4                                        ; $489f: $e4
    cp $e2                                        ; $48a0: $fe $e2
    ccf                                           ; $48a2: $3f
    ld hl, $1c1f                                  ; $48a3: $21 $1f $1c
    ld [bc], a                                    ; $48a6: $02
    rlca                                          ; $48a7: $07
    ld [bc], a                                    ; $48a8: $02
    nop                                           ; $48a9: $00
    ld [bc], a                                    ; $48aa: $02
    jr @-$76                                      ; $48ab: $18 $88

    ld d, $1e                                     ; $48ad: $16 $1e
    rla                                           ; $48af: $17
    dec e                                         ; $48b0: $1d
    rra                                           ; $48b1: $1f
    add hl, de                                    ; $48b2: $19
    rra                                           ; $48b3: $1f
    inc bc                                        ; $48b4: $03
    ld [bc], a                                    ; $48b5: $02
    ld e, $02                                     ; $48b6: $1e $02
    db $10                                        ; $48b8: $10
    inc c                                         ; $48b9: $0c
    nop                                           ; $48ba: $00
    ld [bc], a                                    ; $48bb: $02
    db $10                                        ; $48bc: $10
    inc b                                         ; $48bd: $04
    nop                                           ; $48be: $00
    rst $38                                       ; $48bf: $ff
    dec bc                                        ; $48c0: $0b
    inc bc                                        ; $48c1: $03
    push af                                       ; $48c2: $f5
    db $10                                        ; $48c3: $10
    xor $ff                                       ; $48c4: $ee $ff
    ld a, [c]                                     ; $48c6: $f2
    or $f2                                        ; $48c7: $f6 $f2
    cp $f2                                        ; $48c9: $fe $f2
    inc b                                         ; $48cb: $04
    inc b                                         ; $48cc: $04
    nop                                           ; $48cd: $00
    ld [bc], a                                    ; $48ce: $02
    dec b                                         ; $48cf: $05
    sub d                                         ; $48d0: $92
    ld a, [bc]                                    ; $48d1: $0a
    rrca                                          ; $48d2: $0f
    dec a                                         ; $48d3: $3d
    ccf                                           ; $48d4: $3f
    ld a, [hl+]                                   ; $48d5: $2a
    ccf                                           ; $48d6: $3f
    ld [hl], $3f                                  ; $48d7: $36 $3f
    ld [hl], l                                    ; $48d9: $75
    ld a, a                                       ; $48da: $7f
    ld e, h                                       ; $48db: $5c
    ld a, a                                       ; $48dc: $7f
    rst $28                                       ; $48dd: $ef
    rst $38                                       ; $48de: $ff
    ld hl, sp-$41                                 ; $48df: $f8 $bf
    rst $38                                       ; $48e1: $ff
    sbc a                                         ; $48e2: $9f
    ld [bc], a                                    ; $48e3: $02
    ld h, c                                       ; $48e4: $61
    ld b, $00                                     ; $48e5: $06 $00
    ld [bc], a                                    ; $48e7: $02
    rlca                                          ; $48e8: $07
    sub c                                         ; $48e9: $91
    sbc $db                                       ; $48ea: $de $db
    ld l, $fb                                     ; $48ec: $2e $fb
    rst $10                                       ; $48ee: $d7
    rst $38                                       ; $48ef: $ff
    adc d                                         ; $48f0: $8a
    rst $38                                       ; $48f1: $ff
    ld [hl], c                                    ; $48f2: $71
    rst $38                                       ; $48f3: $ff
    adc c                                         ; $48f4: $89
    rst $38                                       ; $48f5: $ff
    sbc c                                         ; $48f6: $99
    rst $38                                       ; $48f7: $ff
    ld c, a                                       ; $48f8: $4f
    rst $38                                       ; $48f9: $ff
    db $fc                                        ; $48fa: $fc
    ld [bc], a                                    ; $48fb: $02
    rst $38                                       ; $48fc: $ff
    adc c                                         ; $48fd: $89
    adc a                                         ; $48fe: $8f
    db $fc                                        ; $48ff: $fc
    inc b                                         ; $4900: $04
    db $fc                                        ; $4901: $fc
    add h                                         ; $4902: $84
    ld a, h                                       ; $4903: $7c
    ld c, h                                       ; $4904: $4c
    ld hl, sp-$78                                 ; $4905: $f8 $88
    ld [bc], a                                    ; $4907: $02
    ld [hl], b                                    ; $4908: $70
    ld [bc], a                                    ; $4909: $02
    jr nz, jr_0f2_490e                            ; $490a: $20 $02

    jr nc, jr_0f2_4892                            ; $490c: $30 $84

jr_0f2_490e:
    jr c, jr_0f2_4938                             ; $490e: $38 $28

    jr c, @+$0a                                   ; $4910: $38 $08

    ld [bc], a                                    ; $4912: $02
    jr nc, jr_0f2_489f                            ; $4913: $30 $8a

    jr jr_0f2_494f                                ; $4915: $18 $38

    ld d, $3e                                     ; $4917: $16 $3e
    ld l, $3a                                     ; $4919: $2e $3a
    rra                                           ; $491b: $1f
    add hl, sp                                    ; $491c: $39
    ld a, $32                                     ; $491d: $3e $32
    ld [bc], a                                    ; $491f: $02
    inc c                                         ; $4920: $0c
    ld a, [bc]                                    ; $4921: $0a
    nop                                           ; $4922: $00
    rst $38                                       ; $4923: $ff
    dec bc                                        ; $4924: $0b

jr_0f2_4925:
    inc bc                                        ; $4925: $03
    push af                                       ; $4926: $f5
    db $10                                        ; $4927: $10
    xor $ff                                       ; $4928: $ee $ff
    di                                            ; $492a: $f3
    ld a, [$02f3]                                 ; $492b: $fa $f3 $02
    di                                            ; $492e: $f3
    ld [$0102], sp                                ; $492f: $08 $02 $01
    sub h                                         ; $4932: $94
    ld b, $07                                     ; $4933: $06 $07
    rrca                                          ; $4935: $0f
    dec bc                                        ; $4936: $0b
    rrca                                          ; $4937: $0f

jr_0f2_4938:
    dec bc                                        ; $4938: $0b
    dec c                                         ; $4939: $0d
    rrca                                          ; $493a: $0f
    ld [de], a                                    ; $493b: $12
    rra                                           ; $493c: $1f
    ld a, l                                       ; $493d: $7d
    ld a, a                                       ; $493e: $7f
    rst $38                                       ; $493f: $ff
    and e                                         ; $4940: $a3
    rst $38                                       ; $4941: $ff
    pop bc                                        ; $4942: $c1
    ld a, a                                       ; $4943: $7f
    ld b, l                                       ; $4944: $45
    ld a, [hl]                                    ; $4945: $7e
    ld c, a                                       ; $4946: $4f
    ld [bc], a                                    ; $4947: $02
    ld sp, $0008                                  ; $4948: $31 $08 $00
    ld [bc], a                                    ; $494b: $02
    ret nz                                        ; $494c: $c0

    sub [hl]                                      ; $494d: $96
    db $f4                                        ; $494e: $f4

jr_0f2_494f:
    or h                                          ; $494f: $b4
    ld a, [$4dfe]                                 ; $4950: $fa $fe $4d
    rst $38                                       ; $4953: $ff
    db $10                                        ; $4954: $10
    rst $38                                       ; $4955: $ff
    rst $28                                       ; $4956: $ef
    rst $38                                       ; $4957: $ff
    ld de, $3aff                                  ; $4958: $11 $ff $3a
    rst $38                                       ; $495b: $ff
    call nz, Call_0f2_7fff                        ; $495c: $c4 $ff $7f
    rst $38                                       ; $495f: $ff
    inc e                                         ; $4960: $1c
    rst $38                                       ; $4961: $ff
    add b                                         ; $4962: $80
    rst $38                                       ; $4963: $ff
    ld [bc], a                                    ; $4964: $02
    ld a, a                                       ; $4965: $7f
    inc c                                         ; $4966: $0c
    nop                                           ; $4967: $00
    ld [bc], a                                    ; $4968: $02
    db $10                                        ; $4969: $10
    sub b                                         ; $496a: $90
    jr z, jr_0f2_49a5                             ; $496b: $28 $38

    inc c                                         ; $496d: $0c
    inc a                                         ; $496e: $3c
    ld [hl+], a                                   ; $496f: $22
    ld a, $1f                                     ; $4970: $3e $1f
    ccf                                           ; $4972: $3f
    ld hl, $063f                                  ; $4973: $21 $3f $06
    ld a, $1f                                     ; $4976: $3e $1f
    add hl, sp                                    ; $4978: $39
    ccf                                           ; $4979: $3f
    add hl, sp                                    ; $497a: $39
    ld [bc], a                                    ; $497b: $02
    ld b, $06                                     ; $497c: $06 $06
    nop                                           ; $497e: $00
    rst $38                                       ; $497f: $ff
    rrca                                          ; $4980: $0f
    dec b                                         ; $4981: $05
    push af                                       ; $4982: $f5
    db $10                                        ; $4983: $10
    xor $ff                                       ; $4984: $ee $ff
    ld a, [c]                                     ; $4986: $f2
    nop                                           ; $4987: $00
    ld a, [c]                                     ; $4988: $f2
    ld [$10f3], sp                                ; $4989: $08 $f3 $10
    ld hl, sp+$13                                 ; $498c: $f8 $13
    ld [bc], a                                    ; $498e: $02
    rlca                                          ; $498f: $07
    ld [bc], a                                    ; $4990: $02
    jr nc, jr_0f2_4925                            ; $4991: $30 $92

    ld l, h                                       ; $4993: $6c
    ld a, h                                       ; $4994: $7c
    xor $ba                                       ; $4995: $ee $ba
    rst $38                                       ; $4997: $ff

jr_0f2_4998:
    sub e                                         ; $4998: $93
    ld a, [hl]                                    ; $4999: $7e
    ld h, a                                       ; $499a: $67
    ld e, $1f                                     ; $499b: $1e $1f
    ld a, $2f                                     ; $499d: $3e $2f
    ld a, e                                       ; $499f: $7b
    ld c, a                                       ; $49a0: $4f
    ld a, c                                       ; $49a1: $79
    ld c, a                                       ; $49a2: $4f
    or $97                                        ; $49a3: $f6 $97

jr_0f2_49a5:
    ld [bc], a                                    ; $49a5: $02
    ld [hl], c                                    ; $49a6: $71
    ld a, [bc]                                    ; $49a7: $0a
    nop                                           ; $49a8: $00
    ld [bc], a                                    ; $49a9: $02
    inc sp                                        ; $49aa: $33
    sub c                                         ; $49ab: $91
    xor l                                         ; $49ac: $ad
    cp a                                          ; $49ad: $bf
    rst $20                                       ; $49ae: $e7
    rst $38                                       ; $49af: $ff
    sub l                                         ; $49b0: $95
    rst $38                                       ; $49b1: $ff
    ret c                                         ; $49b2: $d8

    rst $38                                       ; $49b3: $ff
    jr z, @+$01                                   ; $49b4: $28 $ff

    ld b, h                                       ; $49b6: $44
    rst $38                                       ; $49b7: $ff
    ld b, e                                       ; $49b8: $43
    rst $38                                       ; $49b9: $ff
    call nz, Call_0f2_6cff                        ; $49ba: $c4 $ff $6c
    ld [bc], a                                    ; $49bd: $02
    rst $38                                       ; $49be: $ff
    adc e                                         ; $49bf: $8b
    rst $08                                       ; $49c0: $cf
    rst $38                                       ; $49c1: $ff
    add e                                         ; $49c2: $83
    ld a, a                                       ; $49c3: $7f
    ld b, e                                       ; $49c4: $43
    ccf                                           ; $49c5: $3f
    ld sp, $111f                                  ; $49c6: $31 $1f $11
    rrca                                          ; $49c9: $0f
    add hl, bc                                    ; $49ca: $09
    ld [bc], a                                    ; $49cb: $02
    or b                                          ; $49cc: $b0
    add d                                         ; $49cd: $82
    ld d, b                                       ; $49ce: $50
    ldh a, [rSC]                                  ; $49cf: $f0 $02
    ld a, [$ad90]                                 ; $49d1: $fa $90 $ad
    rst $38                                       ; $49d4: $ff
    sub a                                         ; $49d5: $97
    rst $38                                       ; $49d6: $ff
    ld b, e                                       ; $49d7: $43
    rst $38                                       ; $49d8: $ff
    cp a                                          ; $49d9: $bf
    rst $38                                       ; $49da: $ff

jr_0f2_49db:
    adc c                                         ; $49db: $89
    rst $38                                       ; $49dc: $ff
    ld a, c                                       ; $49dd: $79
    rst $38                                       ; $49de: $ff
    add $fe                                       ; $49df: $c6 $fe
    jr c, jr_0f2_49db                             ; $49e1: $38 $f8

    ld [bc], a                                    ; $49e3: $02
    ret nz                                        ; $49e4: $c0

    ld [$0200], sp                                ; $49e5: $08 $00 $02
    inc b                                         ; $49e8: $04
    ld [bc], a                                    ; $49e9: $02
    ld b, $84                                     ; $49ea: $06 $84
    rlca                                          ; $49ec: $07
    dec b                                         ; $49ed: $05
    rlca                                          ; $49ee: $07
    dec b                                         ; $49ef: $05
    ld [bc], a                                    ; $49f0: $02
    ld b, $16                                     ; $49f1: $06 $16
    nop                                           ; $49f3: $00
    ld [bc], a                                    ; $49f4: $02
    inc bc                                        ; $49f5: $03
    ld e, $00                                     ; $49f6: $1e $00
    rst $38                                       ; $49f8: $ff
    dec c                                         ; $49f9: $0d
    inc b                                         ; $49fa: $04
    push af                                       ; $49fb: $f5
    db $10                                        ; $49fc: $10
    xor $ff                                       ; $49fd: $ee $ff
    ldh a, [rIE]                                  ; $49ff: $f0 $ff
    ldh a, [rTAC]                                 ; $4a01: $f0 $07
    ldh a, [rIF]                                  ; $4a03: $f0 $0f
    ldh a, [rNR12]                                ; $4a05: $f0 $12
    inc b                                         ; $4a07: $04
    nop                                           ; $4a08: $00
    ld [bc], a                                    ; $4a09: $02
    jr jr_0f2_4998                                ; $4a0a: $18 $8c

    ld l, h                                       ; $4a0c: $6c
    ld a, h                                       ; $4a0d: $7c
    xor $be                                       ; $4a0e: $ee $be
    rst $38                                       ; $4a10: $ff
    sbc e                                         ; $4a11: $9b
    rst $38                                       ; $4a12: $ff
    call nz, Call_0f2_7c7f                        ; $4a13: $c4 $7f $7c
    inc bc                                        ; $4a16: $03
    ld [bc], a                                    ; $4a17: $02
    ld [bc], a                                    ; $4a18: $02
    ld bc, $0002                                  ; $4a19: $01 $02 $00
    ld [bc], a                                    ; $4a1c: $02
    ld bc, $0386                                  ; $4a1d: $01 $86 $03
    ld [bc], a                                    ; $4a20: $02
    inc bc                                        ; $4a21: $03
    ld [bc], a                                    ; $4a22: $02
    rlca                                          ; $4a23: $07
    inc b                                         ; $4a24: $04
    ld [bc], a                                    ; $4a25: $02
    inc bc                                        ; $4a26: $03
    ld [bc], a                                    ; $4a27: $02
    ld [bc], a                                    ; $4a28: $02
    sbc h                                         ; $4a29: $9c
    dec b                                         ; $4a2a: $05
    rlca                                          ; $4a2b: $07
    dec de                                        ; $4a2c: $1b
    rra                                           ; $4a2d: $1f
    ld a, [hl+]                                   ; $4a2e: $2a
    ccf                                           ; $4a2f: $3f
    rst $30                                       ; $4a30: $f7
    rst $38                                       ; $4a31: $ff
    adc c                                         ; $4a32: $89
    rst $38                                       ; $4a33: $ff
    ret z                                         ; $4a34: $c8

    rst $38                                       ; $4a35: $ff
    call nz, $a5ff                                ; $4a36: $c4 $ff $a5
    rst $38                                       ; $4a39: $ff
    jp c, $e77f                                   ; $4a3a: $da $7f $e7

    cp a                                          ; $4a3d: $bf
    ld hl, sp-$61                                 ; $4a3e: $f8 $9f
    rst $20                                       ; $4a40: $e7
    daa                                           ; $4a41: $27
    ldh [rNR41], a                                ; $4a42: $e0 $20
    ret nz                                        ; $4a44: $c0

    ld b, b                                       ; $4a45: $40
    ld [bc], a                                    ; $4a46: $02
    add b                                         ; $4a47: $80
    ld [bc], a                                    ; $4a48: $02
    ld b, b                                       ; $4a49: $40
    sbc b                                         ; $4a4a: $98
    or h                                          ; $4a4b: $b4
    db $f4                                        ; $4a4c: $f4
    ld c, e                                       ; $4a4d: $4b
    rst $38                                       ; $4a4e: $ff
    ld d, [hl]                                    ; $4a4f: $56
    rst $38                                       ; $4a50: $ff
    or d                                          ; $4a51: $b2
    rst $38                                       ; $4a52: $ff
    inc c                                         ; $4a53: $0c
    rst $38                                       ; $4a54: $ff
    add a                                         ; $4a55: $87
    rst $38                                       ; $4a56: $ff
    adc a                                         ; $4a57: $8f
    ld hl, sp+$4f                                 ; $4a58: $f8 $4f
    ld hl, sp+$3f                                 ; $4a5a: $f8 $3f
    ldh a, [$df]                                  ; $4a5c: $f0 $df
    db $f4                                        ; $4a5e: $f4
    ccf                                           ; $4a5f: $3f
    db $fc                                        ; $4a60: $fc
    rst $00                                       ; $4a61: $c7
    call nz, Call_000_0302                        ; $4a62: $c4 $02 $03
    ld a, [bc]                                    ; $4a65: $0a
    nop                                           ; $4a66: $00
    ld [bc], a                                    ; $4a67: $02
    ld b, $86                                     ; $4a68: $06 $86
    dec b                                         ; $4a6a: $05
    rlca                                          ; $4a6b: $07
    inc bc                                        ; $4a6c: $03
    rlca                                          ; $4a6d: $07
    dec b                                         ; $4a6e: $05
    rlca                                          ; $4a6f: $07
    inc bc                                        ; $4a70: $03
    ld b, $87                                     ; $4a71: $06 $87
    ld [bc], a                                    ; $4a73: $02
    ld b, $02                                     ; $4a74: $06 $02
    ld b, $02                                     ; $4a76: $06 $02
    ld b, $02                                     ; $4a78: $06 $02
    ld [bc], a                                    ; $4a7a: $02
    inc b                                         ; $4a7b: $04
    ld b, $00                                     ; $4a7c: $06 $00
    rst $38                                       ; $4a7e: $ff
    dec c                                         ; $4a7f: $0d
    inc b                                         ; $4a80: $04
    push af                                       ; $4a81: $f5

jr_0f2_4a82:
    db $10                                        ; $4a82: $10
    xor $ff                                       ; $4a83: $ee $ff
    pop af                                        ; $4a85: $f1
    cp $f1                                        ; $4a86: $fe $f1
    ld b, $f1                                     ; $4a88: $06 $f1
    ld c, $f1                                     ; $4a8a: $0e $f1
    inc de                                        ; $4a8c: $13
    inc b                                         ; $4a8d: $04
    nop                                           ; $4a8e: $00
    ld [bc], a                                    ; $4a8f: $02
    jr @-$72                                      ; $4a90: $18 $8c

    ld l, h                                       ; $4a92: $6c
    ld a, h                                       ; $4a93: $7c
    xor $be                                       ; $4a94: $ee $be
    rst $38                                       ; $4a96: $ff
    sbc e                                         ; $4a97: $9b
    rst $38                                       ; $4a98: $ff
    call nz, Call_0f2_7c7f                        ; $4a99: $c4 $7f $7c
    inc bc                                        ; $4a9c: $03
    ld [bc], a                                    ; $4a9d: $02
    ld [bc], a                                    ; $4a9e: $02
    ld bc, $0002                                  ; $4a9f: $01 $02 $00
    ld [bc], a                                    ; $4aa2: $02
    ld bc, $0384                                  ; $4aa3: $01 $84 $03
    ld [bc], a                                    ; $4aa6: $02
    rlca                                          ; $4aa7: $07
    inc b                                         ; $4aa8: $04
    ld [bc], a                                    ; $4aa9: $02
    inc bc                                        ; $4aaa: $03
    ld [bc], a                                    ; $4aab: $02
    nop                                           ; $4aac: $00
    ld [bc], a                                    ; $4aad: $02
    ld b, $9a                                     ; $4aae: $06 $9a
    dec b                                         ; $4ab0: $05
    rlca                                          ; $4ab1: $07
    jr @+$21                                      ; $4ab2: $18 $1f

    dec [hl]                                      ; $4ab4: $35
    ccf                                           ; $4ab5: $3f
    db $db                                        ; $4ab6: $db
    rst $38                                       ; $4ab7: $ff
    adc h                                         ; $4ab8: $8c
    rst $38                                       ; $4ab9: $ff
    db $e4                                        ; $4aba: $e4
    rst $38                                       ; $4abb: $ff
    jp nz, $b6ff                                  ; $4abc: $c2 $ff $b6

    rst $38                                       ; $4abf: $ff
    call $f7ff                                    ; $4ac0: $cd $ff $f7
    cp a                                          ; $4ac3: $bf
    db $fc                                        ; $4ac4: $fc
    sbc a                                         ; $4ac5: $9f
    db $e3                                        ; $4ac6: $e3
    inc hl                                        ; $4ac7: $23
    ret nz                                        ; $4ac8: $c0

    ld b, b                                       ; $4ac9: $40
    ld [bc], a                                    ; $4aca: $02
    add b                                         ; $4acb: $80
    ld [bc], a                                    ; $4acc: $02
    nop                                           ; $4acd: $00
    ld [bc], a                                    ; $4ace: $02
    ld h, b                                       ; $4acf: $60
    sub c                                         ; $4ad0: $91
    call nc, Call_000_0bf4                        ; $4ad1: $d4 $f4 $0b
    rst $38                                       ; $4ad4: $ff
    ld l, $ff                                     ; $4ad5: $2e $ff
    reti                                          ; $4ad7: $d9


    rst $38                                       ; $4ad8: $ff
    add c                                         ; $4ad9: $81
    rst $38                                       ; $4ada: $ff
    ld a, d                                       ; $4adb: $7a
    rst $38                                       ; $4adc: $ff
    ld b, h                                       ; $4add: $44
    rst $38                                       ; $4ade: $ff
    and d                                         ; $4adf: $a2
    rst $38                                       ; $4ae0: $ff
    add hl, de                                    ; $4ae1: $19
    inc bc                                        ; $4ae2: $03
    rst $38                                       ; $4ae3: $ff
    add d                                         ; $4ae4: $82
    add l                                         ; $4ae5: $85
    rst $38                                       ; $4ae6: $ff
    ld [bc], a                                    ; $4ae7: $02
    cp $0c                                        ; $4ae8: $fe $0c
    nop                                           ; $4aea: $00
    ld [bc], a                                    ; $4aeb: $02
    jr jr_0f2_4a82                                ; $4aec: $18 $94

    inc b                                         ; $4aee: $04
    inc e                                         ; $4aef: $1c
    ld b, $1e                                     ; $4af0: $06 $1e
    ld a, [bc]                                    ; $4af2: $0a
    ld e, $0c                                     ; $4af3: $1e $0c
    inc e                                         ; $4af5: $1c
    ld c, $1a                                     ; $4af6: $0e $1a
    ld e, $12                                     ; $4af8: $1e $12
    ld e, $02                                     ; $4afa: $1e $02
    rra                                           ; $4afc: $1f
    ld de, $111f                                  ; $4afd: $11 $1f $11
    ld e, $12                                     ; $4b00: $1e $12
    ld [bc], a                                    ; $4b02: $02
    inc c                                         ; $4b03: $0c
    ld [bc], a                                    ; $4b04: $02
    nop                                           ; $4b05: $00

jr_0f2_4b06:
    rst $38                                       ; $4b06: $ff
    dec c                                         ; $4b07: $0d
    inc b                                         ; $4b08: $04
    push af                                       ; $4b09: $f5
    db $10                                        ; $4b0a: $10
    xor $ff                                       ; $4b0b: $ee $ff
    pop af                                        ; $4b0d: $f1
    db $fd                                        ; $4b0e: $fd
    pop af                                        ; $4b0f: $f1
    dec b                                         ; $4b10: $05
    pop af                                        ; $4b11: $f1
    dec c                                         ; $4b12: $0d
    pop af                                        ; $4b13: $f1
    inc de                                        ; $4b14: $13
    ld b, $00                                     ; $4b15: $06 $00
    ld [bc], a                                    ; $4b17: $02
    jr @-$74                                      ; $4b18: $18 $8a

    ld l, h                                       ; $4b1a: $6c
    ld a, h                                       ; $4b1b: $7c
    rst $28                                       ; $4b1c: $ef
    cp a                                          ; $4b1d: $bf
    rst $38                                       ; $4b1e: $ff
    sbc d                                         ; $4b1f: $9a
    rst $38                                       ; $4b20: $ff
    call nz, Call_0f2_7e7f                        ; $4b21: $c4 $7f $7e
    ld [bc], a                                    ; $4b24: $02
    ld bc, $0004                                  ; $4b25: $01 $04 $00
    ld [bc], a                                    ; $4b28: $02
    ld bc, $0382                                  ; $4b29: $01 $82 $03
    ld [bc], a                                    ; $4b2c: $02
    ld [bc], a                                    ; $4b2d: $02
    ld bc, $0002                                  ; $4b2e: $01 $02 $00
    ld [bc], a                                    ; $4b31: $02
    ld b, $9a                                     ; $4b32: $06 $9a
    dec b                                         ; $4b34: $05
    rlca                                          ; $4b35: $07
    jr @+$21                                      ; $4b36: $18 $1f

    dec [hl]                                      ; $4b38: $35
    ccf                                           ; $4b39: $3f
    db $db                                        ; $4b3a: $db
    rst $38                                       ; $4b3b: $ff
    adc h                                         ; $4b3c: $8c
    rst $38                                       ; $4b3d: $ff
    db $e4                                        ; $4b3e: $e4
    rst $38                                       ; $4b3f: $ff
    jp nz, $b6ff                                  ; $4b40: $c2 $ff $b6

    rst $38                                       ; $4b43: $ff
    call Call_0f2_77ff                            ; $4b44: $cd $ff $77
    ld a, a                                       ; $4b47: $7f
    cp $cf                                        ; $4b48: $fe $cf
    pop af                                        ; $4b4a: $f1
    ld de, $20e0                                  ; $4b4b: $11 $e0 $20
    ld [bc], a                                    ; $4b4e: $02
    ret nz                                        ; $4b4f: $c0

    ld [bc], a                                    ; $4b50: $02
    nop                                           ; $4b51: $00
    ld [bc], a                                    ; $4b52: $02
    ld h, b                                       ; $4b53: $60
    sub c                                         ; $4b54: $91
    call nc, Call_000_09f4                        ; $4b55: $d4 $f4 $09
    rst $38                                       ; $4b58: $ff
    ld l, $ff                                     ; $4b59: $2e $ff
    reti                                          ; $4b5b: $d9


    rst $38                                       ; $4b5c: $ff
    add c                                         ; $4b5d: $81
    rst $38                                       ; $4b5e: $ff
    ld a, d                                       ; $4b5f: $7a
    rst $38                                       ; $4b60: $ff
    ld b, h                                       ; $4b61: $44
    rst $38                                       ; $4b62: $ff
    and d                                         ; $4b63: $a2
    rst $38                                       ; $4b64: $ff
    add hl, de                                    ; $4b65: $19
    inc bc                                        ; $4b66: $03
    rst $38                                       ; $4b67: $ff
    add d                                         ; $4b68: $82
    dec b                                         ; $4b69: $05
    rst $38                                       ; $4b6a: $ff
    ld [bc], a                                    ; $4b6b: $02
    cp $0c                                        ; $4b6c: $fe $0c
    nop                                           ; $4b6e: $00
    ld [bc], a                                    ; $4b6f: $02
    jr nc, jr_0f2_4b06                            ; $4b70: $30 $94

    ld [$0c38], sp                                ; $4b72: $08 $38 $0c
    inc a                                         ; $4b75: $3c
    inc d                                         ; $4b76: $14
    inc a                                         ; $4b77: $3c
    inc e                                         ; $4b78: $1c
    inc a                                         ; $4b79: $3c
    ld c, $3a                                     ; $4b7a: $0e $3a
    ld a, $32                                     ; $4b7c: $3e $32
    ld a, $22                                     ; $4b7e: $3e $22
    ccf                                           ; $4b80: $3f
    ld sp, $111f                                  ; $4b81: $31 $1f $11
    ld e, $12                                     ; $4b84: $1e $12
    ld [bc], a                                    ; $4b86: $02
    inc c                                         ; $4b87: $0c
    ld [bc], a                                    ; $4b88: $02
    nop                                           ; $4b89: $00
    rst $38                                       ; $4b8a: $ff
    dec c                                         ; $4b8b: $0d

jr_0f2_4b8c:
    inc b                                         ; $4b8c: $04
    push af                                       ; $4b8d: $f5
    db $10                                        ; $4b8e: $10
    xor $ff                                       ; $4b8f: $ee $ff
    pop af                                        ; $4b91: $f1
    cp $f1                                        ; $4b92: $fe $f1
    ld b, $f1                                     ; $4b94: $06 $f1
    ld c, $f1                                     ; $4b96: $0e $f1
    inc de                                        ; $4b98: $13
    inc b                                         ; $4b99: $04
    nop                                           ; $4b9a: $00
    ld [bc], a                                    ; $4b9b: $02
    jr @-$72                                      ; $4b9c: $18 $8c

    ld l, [hl]                                    ; $4b9e: $6e
    ld a, [hl]                                    ; $4b9f: $7e
    rst $28                                       ; $4ba0: $ef
    cp e                                          ; $4ba1: $bb
    rst $38                                       ; $4ba2: $ff
    pop af                                        ; $4ba3: $f1
    rrca                                          ; $4ba4: $0f
    dec bc                                        ; $4ba5: $0b
    ccf                                           ; $4ba6: $3f
    dec sp                                        ; $4ba7: $3b
    ld a, l                                       ; $4ba8: $7d
    ld b, l                                       ; $4ba9: $45
    ld [bc], a                                    ; $4baa: $02
    inc a                                         ; $4bab: $3c
    ld [bc], a                                    ; $4bac: $02
    ld bc, $0386                                  ; $4bad: $01 $86 $03
    ld [bc], a                                    ; $4bb0: $02
    inc bc                                        ; $4bb1: $03
    ld [bc], a                                    ; $4bb2: $02
    rlca                                          ; $4bb3: $07
    inc b                                         ; $4bb4: $04
    ld [bc], a                                    ; $4bb5: $02
    inc bc                                        ; $4bb6: $03
    ld [bc], a                                    ; $4bb7: $02
    nop                                           ; $4bb8: $00
    ld [bc], a                                    ; $4bb9: $02
    ld b, $9a                                     ; $4bba: $06 $9a
    add hl, bc                                    ; $4bbc: $09
    rrca                                          ; $4bbd: $0f
    ld a, [hl-]                                   ; $4bbe: $3a
    ccf                                           ; $4bbf: $3f
    rst $30                                       ; $4bc0: $f7
    rst $38                                       ; $4bc1: $ff
    add hl, de                                    ; $4bc2: $19
    rst $38                                       ; $4bc3: $ff
    ld c, b                                       ; $4bc4: $48
    rst $38                                       ; $4bc5: $ff
    add h                                         ; $4bc6: $84
    rst $38                                       ; $4bc7: $ff
    ld h, l                                       ; $4bc8: $65
    rst $38                                       ; $4bc9: $ff
    cp d                                          ; $4bca: $ba
    rst $38                                       ; $4bcb: $ff
    add $ff                                       ; $4bcc: $c6 $ff
    ld sp, hl                                     ; $4bce: $f9
    ld a, a                                       ; $4bcf: $7f
    cp $1f                                        ; $4bd0: $fe $1f
    pop af                                        ; $4bd2: $f1
    ld sp, $40c0                                  ; $4bd3: $31 $c0 $40
    ld [bc], a                                    ; $4bd6: $02
    add b                                         ; $4bd7: $80
    ld [bc], a                                    ; $4bd8: $02
    nop                                           ; $4bd9: $00
    ld [bc], a                                    ; $4bda: $02
    ld h, b                                       ; $4bdb: $60
    sub c                                         ; $4bdc: $91
    adc h                                         ; $4bdd: $8c
    db $ec                                        ; $4bde: $ec
    ld e, h                                       ; $4bdf: $5c
    db $fc                                        ; $4be0: $fc
    or e                                          ; $4be1: $b3
    rst $38                                       ; $4be2: $ff
    ld [bc], a                                    ; $4be3: $02
    rst $38                                       ; $4be4: $ff
    db $f4                                        ; $4be5: $f4
    rst $38                                       ; $4be6: $ff
    adc b                                         ; $4be7: $88
    rst $38                                       ; $4be8: $ff
    ld b, [hl]                                    ; $4be9: $46
    rst $38                                       ; $4bea: $ff
    ld sp, $10ff                                  ; $4beb: $31 $ff $10
    inc bc                                        ; $4bee: $03
    rst $38                                       ; $4bef: $ff
    add d                                         ; $4bf0: $82
    inc bc                                        ; $4bf1: $03
    rst $38                                       ; $4bf2: $ff
    ld [bc], a                                    ; $4bf3: $02
    db $fc                                        ; $4bf4: $fc
    ld c, $00                                     ; $4bf5: $0e $00
    ld [bc], a                                    ; $4bf7: $02
    db $10                                        ; $4bf8: $10
    ld [bc], a                                    ; $4bf9: $02
    jr jr_0f2_4b8c                                ; $4bfa: $18 $90

    inc d                                         ; $4bfc: $14
    inc e                                         ; $4bfd: $1c
    inc c                                         ; $4bfe: $0c
    inc e                                         ; $4bff: $1c
    inc d                                         ; $4c00: $14
    inc e                                         ; $4c01: $1c
    ld e, $1a                                     ; $4c02: $1e $1a
    ld c, $1a                                     ; $4c04: $0e $1a
    rra                                           ; $4c06: $1f
    ld de, $111f                                  ; $4c07: $11 $1f $11
    ld e, $12                                     ; $4c0a: $1e $12
    ld [bc], a                                    ; $4c0c: $02
    inc c                                         ; $4c0d: $0c
    ld [bc], a                                    ; $4c0e: $02
    nop                                           ; $4c0f: $00
    rst $38                                       ; $4c10: $ff
    dec c                                         ; $4c11: $0d
    inc b                                         ; $4c12: $04
    push af                                       ; $4c13: $f5
    db $10                                        ; $4c14: $10
    xor $ff                                       ; $4c15: $ee $ff
    pop af                                        ; $4c17: $f1
    cp $f1                                        ; $4c18: $fe $f1
    ld b, $f1                                     ; $4c1a: $06 $f1
    ld c, $f1                                     ; $4c1c: $0e $f1
    inc de                                        ; $4c1e: $13
    ld [bc], a                                    ; $4c1f: $02
    nop                                           ; $4c20: $00
    ld [bc], a                                    ; $4c21: $02
    db $10                                        ; $4c22: $10
    adc [hl]                                      ; $4c23: $8e
    ld l, b                                       ; $4c24: $68
    ld a, b                                       ; $4c25: $78
    rst $28                                       ; $4c26: $ef
    cp a                                          ; $4c27: $bf
    rst $38                                       ; $4c28: $ff
    di                                            ; $4c29: $f3
    rrca                                          ; $4c2a: $0f
    add hl, bc                                    ; $4c2b: $09
    ld c, $0b                                     ; $4c2c: $0e $0b
    ccf                                           ; $4c2e: $3f
    dec sp                                        ; $4c2f: $3b
    ld a, l                                       ; $4c30: $7d
    ld b, l                                       ; $4c31: $45
    ld [bc], a                                    ; $4c32: $02
    inc a                                         ; $4c33: $3c
    ld [bc], a                                    ; $4c34: $02
    ld bc, $0386                                  ; $4c35: $01 $86 $03
    ld [bc], a                                    ; $4c38: $02
    inc bc                                        ; $4c39: $03
    ld [bc], a                                    ; $4c3a: $02
    rlca                                          ; $4c3b: $07
    inc b                                         ; $4c3c: $04
    ld [bc], a                                    ; $4c3d: $02
    inc bc                                        ; $4c3e: $03
    ld [bc], a                                    ; $4c3f: $02
    nop                                           ; $4c40: $00
    ld [bc], a                                    ; $4c41: $02
    dec c                                         ; $4c42: $0d
    sbc d                                         ; $4c43: $9a
    ld [hl-], a                                   ; $4c44: $32
    ccf                                           ; $4c45: $3f
    adc $ff                                       ; $4c46: $ce $ff
    ld sp, $49ff                                  ; $4c48: $31 $ff $49
    rst $38                                       ; $4c4b: $ff
    adc b                                         ; $4c4c: $88
    rst $38                                       ; $4c4d: $ff
    adc c                                         ; $4c4e: $89
    rst $38                                       ; $4c4f: $ff
    jp z, Jump_0f2_7aff                           ; $4c50: $ca $ff $7a

    rst $38                                       ; $4c53: $ff
    adc h                                         ; $4c54: $8c
    rst $38                                       ; $4c55: $ff
    di                                            ; $4c56: $f3
    rst $38                                       ; $4c57: $ff
    db $fc                                        ; $4c58: $fc
    ccf                                           ; $4c59: $3f
    di                                            ; $4c5a: $f3
    inc sp                                        ; $4c5b: $33
    ret nz                                        ; $4c5c: $c0

    ld b, b                                       ; $4c5d: $40
    ld [bc], a                                    ; $4c5e: $02
    add b                                         ; $4c5f: $80
    ld [bc], a                                    ; $4c60: $02
    nop                                           ; $4c61: $00
    ld [bc], a                                    ; $4c62: $02
    or b                                          ; $4c63: $b0
    sub [hl]                                      ; $4c64: $96
    ld b, [hl]                                    ; $4c65: $46
    or $fc                                        ; $4c66: $f6 $fc
    cp $13                                        ; $4c68: $fe $13
    rst $38                                       ; $4c6a: $ff
    ld [bc], a                                    ; $4c6b: $02
    rst $38                                       ; $4c6c: $ff
    ld a, [c]                                     ; $4c6d: $f2
    rst $38                                       ; $4c6e: $ff
    adc h                                         ; $4c6f: $8c
    rst $38                                       ; $4c70: $ff
    ld h, d                                       ; $4c71: $62
    rst $38                                       ; $4c72: $ff
    ld de, $17ff                                  ; $4c73: $11 $ff $17
    rst $38                                       ; $4c76: $ff
    ld hl, sp-$01                                 ; $4c77: $f8 $ff
    rra                                           ; $4c79: $1f
    rst $38                                       ; $4c7a: $ff
    ld [bc], a                                    ; $4c7b: $02
    ldh a, [$0c]                                  ; $4c7c: $f0 $0c
    nop                                           ; $4c7e: $00
    ld [bc], a                                    ; $4c7f: $02
    db $10                                        ; $4c80: $10
    sub h                                         ; $4c81: $94
    ld [$1418], sp                                ; $4c82: $08 $18 $14
    inc e                                         ; $4c85: $1c
    inc c                                         ; $4c86: $0c
    inc e                                         ; $4c87: $1c
    inc c                                         ; $4c88: $0c
    inc e                                         ; $4c89: $1c
    inc d                                         ; $4c8a: $14
    inc e                                         ; $4c8b: $1c
    ld c, $1a                                     ; $4c8c: $0e $1a
    ld e, $1a                                     ; $4c8e: $1e $1a
    rra                                           ; $4c90: $1f
    ld de, $111f                                  ; $4c91: $11 $1f $11
    ld e, $12                                     ; $4c94: $1e $12
    ld [bc], a                                    ; $4c96: $02
    inc c                                         ; $4c97: $0c
    ld [bc], a                                    ; $4c98: $02
    nop                                           ; $4c99: $00
    rst $38                                       ; $4c9a: $ff
    dec c                                         ; $4c9b: $0d
    inc b                                         ; $4c9c: $04
    push af                                       ; $4c9d: $f5
    db $10                                        ; $4c9e: $10
    xor $ff                                       ; $4c9f: $ee $ff
    ldh a, [rP1]                                  ; $4ca1: $f0 $00
    ldh a, [$08]                                  ; $4ca3: $f0 $08
    ldh a, [rNR10]                                ; $4ca5: $f0 $10
    ldh a, [rNR13]                                ; $4ca7: $f0 $13
    ld b, $00                                     ; $4ca9: $06 $00
    ld [bc], a                                    ; $4cab: $02
    ld bc, $1e8c                                  ; $4cac: $01 $8c $1e
    rra                                           ; $4caf: $1f
    ld a, [hl]                                    ; $4cb0: $7e
    ld h, e                                       ; $4cb1: $63
    sbc [hl]                                      ; $4cb2: $9e
    di                                            ; $4cb3: $f3
    ld e, [hl]                                    ; $4cb4: $5e
    ld [hl], a                                    ; $4cb5: $77
    rst $38                                       ; $4cb6: $ff
    xor e                                         ; $4cb7: $ab
    cp $cf                                        ; $4cb8: $fe $cf
    ld [bc], a                                    ; $4cba: $02
    inc sp                                        ; $4cbb: $33
    adc b                                         ; $4cbc: $88
    rlca                                          ; $4cbd: $07
    inc b                                         ; $4cbe: $04
    rrca                                          ; $4cbf: $0f
    ld [$080f], sp                                ; $4cc0: $08 $0f $08
    rra                                           ; $4cc3: $1f
    ld de, $0e02                                  ; $4cc4: $11 $02 $0e
    ld [bc], a                                    ; $4cc7: $02
    ld e, $98                                     ; $4cc8: $1e $98
    ld l, c                                       ; $4cca: $69
    ld a, a                                       ; $4ccb: $7f
    cp e                                          ; $4ccc: $bb
    rst $38                                       ; $4ccd: $ff
    call nz, $34ff                                ; $4cce: $c4 $ff $34
    rst $38                                       ; $4cd1: $ff
    ld b, d                                       ; $4cd2: $42
    rst $38                                       ; $4cd3: $ff
    ld b, d                                       ; $4cd4: $42
    rst $38                                       ; $4cd5: $ff
    ld b, l                                       ; $4cd6: $45
    rst $38                                       ; $4cd7: $ff
    call z, Call_0f2_70ff                         ; $4cd8: $cc $ff $70
    rst $38                                       ; $4cdb: $ff
    and e                                         ; $4cdc: $a3
    rst $38                                       ; $4cdd: $ff
    db $fc                                        ; $4cde: $fc
    ld a, a                                       ; $4cdf: $7f
    di                                            ; $4ce0: $f3
    ccf                                           ; $4ce1: $3f
    ld [bc], a                                    ; $4ce2: $02
    call z, Call_000_0006                         ; $4ce3: $cc $06 $00
    ld [bc], a                                    ; $4ce6: $02
    ret nz                                        ; $4ce7: $c0

    ld [bc], a                                    ; $4ce8: $02
    ldh a, [$98]                                  ; $4ce9: $f0 $98
    ld c, [hl]                                    ; $4ceb: $4e
    cp $29                                        ; $4cec: $fe $29
    rst $38                                       ; $4cee: $ff
    ld c, d                                       ; $4cef: $4a
    rst $38                                       ; $4cf0: $ff
    cp c                                          ; $4cf1: $b9
    rst $38                                       ; $4cf2: $ff
    add l                                         ; $4cf3: $85
    rst $38                                       ; $4cf4: $ff
    ld b, a                                       ; $4cf5: $47
    rst $38                                       ; $4cf6: $ff
    ld a, a                                       ; $4cf7: $7f
    rst $38                                       ; $4cf8: $ff
    rst $00                                       ; $4cf9: $c7
    cp $3b                                        ; $4cfa: $fe $3b
    ld a, [$c2c3]                                 ; $4cfc: $fa $c3 $c2
    inc bc                                        ; $4cff: $03
    ld [bc], a                                    ; $4d00: $02
    inc bc                                        ; $4d01: $03
    ld [bc], a                                    ; $4d02: $02
    ld [bc], a                                    ; $4d03: $02
    ld bc, $0008                                  ; $4d04: $01 $08 $00
    ld [bc], a                                    ; $4d07: $02
    inc b                                         ; $4d08: $04
    add c                                         ; $4d09: $81
    ld [bc], a                                    ; $4d0a: $02
    inc bc                                        ; $4d0b: $03
    ld b, $82                                     ; $4d0c: $06 $82
    ld [bc], a                                    ; $4d0e: $02
    ld b, $04                                     ; $4d0f: $06 $04
    inc b                                         ; $4d11: $04
    adc d                                         ; $4d12: $8a
    ld b, $02                                     ; $4d13: $06 $02
    rlca                                          ; $4d15: $07
    ld bc, $0107                                  ; $4d16: $01 $07 $01
    rlca                                          ; $4d19: $07
    ld bc, $0206                                  ; $4d1a: $01 $06 $02
    ld [bc], a                                    ; $4d1d: $02
    inc b                                         ; $4d1e: $04
    rst $38                                       ; $4d1f: $ff
    dec c                                         ; $4d20: $0d
    inc b                                         ; $4d21: $04
    push af                                       ; $4d22: $f5
    db $10                                        ; $4d23: $10
    xor $ff                                       ; $4d24: $ee $ff
    ldh a, [rSB]                                  ; $4d26: $f0 $01
    ldh a, [$09]                                  ; $4d28: $f0 $09
    ldh a, [rNR11]                                ; $4d2a: $f0 $11
    ldh a, [rNR14]                                ; $4d2c: $f0 $14
    ld [$0200], sp                                ; $4d2e: $08 $00 $02
    rra                                           ; $4d31: $1f
    sub h                                         ; $4d32: $94
    ld a, h                                       ; $4d33: $7c
    ld h, a                                       ; $4d34: $67
    sbc h                                         ; $4d35: $9c
    rst $30                                       ; $4d36: $f7
    ld e, a                                       ; $4d37: $5f
    ld [hl], a                                    ; $4d38: $77
    db $fd                                        ; $4d39: $fd
    xor a                                         ; $4d3a: $af
    rst $38                                       ; $4d3b: $ff
    rst $08                                       ; $4d3c: $cf
    scf                                           ; $4d3d: $37
    dec [hl]                                      ; $4d3e: $35
    rrca                                          ; $4d3f: $0f
    ld [$101f], sp                                ; $4d40: $08 $1f $10
    rra                                           ; $4d43: $1f
    ld de, $223e                                  ; $4d44: $11 $3e $22
    ld [bc], a                                    ; $4d47: $02
    inc e                                         ; $4d48: $1c

jr_0f2_4d49:
    ld [bc], a                                    ; $4d49: $02
    rlca                                          ; $4d4a: $07
    sbc b                                         ; $4d4b: $98
    ld [$3b0f], sp                                ; $4d4c: $08 $0f $3b
    ccf                                           ; $4d4f: $3f
    call nz, Call_000_3cff                        ; $4d50: $c4 $ff $3c
    rst $38                                       ; $4d53: $ff
    inc h                                         ; $4d54: $24
    rst $38                                       ; $4d55: $ff
    ld b, d                                       ; $4d56: $42
    rst $38                                       ; $4d57: $ff
    ld c, l                                       ; $4d58: $4d
    rst $38                                       ; $4d59: $ff
    ret z                                         ; $4d5a: $c8

    rst $38                                       ; $4d5b: $ff
    ld [hl], b                                    ; $4d5c: $70

jr_0f2_4d5d:
    rst $38                                       ; $4d5d: $ff
    xor h                                         ; $4d5e: $ac
    rst $38                                       ; $4d5f: $ff
    di                                            ; $4d60: $f3
    rst $38                                       ; $4d61: $ff
    call z, Call_000_024f                         ; $4d62: $cc $4f $02
    add e                                         ; $4d65: $83
    inc b                                         ; $4d66: $04
    nop                                           ; $4d67: $00
    ld [bc], a                                    ; $4d68: $02
    ret nz                                        ; $4d69: $c0

    sbc h                                         ; $4d6a: $9c
    jr nc, jr_0f2_4d5d                            ; $4d6b: $30 $f0

    call z, Call_0f2_42fc                         ; $4d6d: $cc $fc $42
    cp $29                                        ; $4d70: $fe $29
    rst $38                                       ; $4d72: $ff
    ld a, [hl+]                                   ; $4d73: $2a
    rst $38                                       ; $4d74: $ff
    ld a, c                                       ; $4d75: $79
    rst $38                                       ; $4d76: $ff
    add l                                         ; $4d77: $85
    rst $38                                       ; $4d78: $ff
    ld b, a                                       ; $4d79: $47
    rst $38                                       ; $4d7a: $ff
    dec a                                         ; $4d7b: $3d
    rst $38                                       ; $4d7c: $ff
    ld h, e                                       ; $4d7d: $63
    cp $9f                                        ; $4d7e: $fe $9f
    db $fc                                        ; $4d80: $fc
    ld [hl], a                                    ; $4d81: $77
    db $f4                                        ; $4d82: $f4
    rst $00                                       ; $4d83: $c7
    call nz, Call_000_0407                        ; $4d84: $c4 $07 $04
    ld [bc], a                                    ; $4d87: $02
    inc bc                                        ; $4d88: $03

jr_0f2_4d89:
    ld [$0200], sp                                ; $4d89: $08 $00 $02
    inc b                                         ; $4d8c: $04
    add [hl]                                      ; $4d8d: $86
    inc bc                                        ; $4d8e: $03
    rlca                                          ; $4d8f: $07
    ld [bc], a                                    ; $4d90: $02
    ld b, $03                                     ; $4d91: $06 $03
    rlca                                          ; $4d93: $07
    ld [bc], a                                    ; $4d94: $02
    ld b, $04                                     ; $4d95: $06 $04
    inc b                                         ; $4d97: $04
    add [hl]                                      ; $4d98: $86
    ld b, $02                                     ; $4d99: $06 $02
    ld b, $02                                     ; $4d9b: $06 $02
    ld b, $02                                     ; $4d9d: $06 $02
    ld [bc], a                                    ; $4d9f: $02
    inc b                                         ; $4da0: $04
    ld [bc], a                                    ; $4da1: $02
    nop                                           ; $4da2: $00
    rst $38                                       ; $4da3: $ff
    dec c                                         ; $4da4: $0d
    inc b                                         ; $4da5: $04
    push af                                       ; $4da6: $f5
    db $10                                        ; $4da7: $10
    xor $ff                                       ; $4da8: $ee $ff
    ldh a, [rP1]                                  ; $4daa: $f0 $00
    ldh a, [$08]                                  ; $4dac: $f0 $08
    ldh a, [rNR10]                                ; $4dae: $f0 $10
    ldh a, [rNR14]                                ; $4db0: $f0 $14
    ld a, [bc]                                    ; $4db2: $0a
    nop                                           ; $4db3: $00
    ld [bc], a                                    ; $4db4: $02
    jr jr_0f2_4d49                                ; $4db5: $18 $92

    ld l, a                                       ; $4db7: $6f
    ld a, a                                       ; $4db8: $7f
    rst $28                                       ; $4db9: $ef
    cp l                                          ; $4dba: $bd
    rst $38                                       ; $4dbb: $ff
    sbc c                                         ; $4dbc: $99
    rst $38                                       ; $4dbd: $ff
    rst $00                                       ; $4dbe: $c7
    ccf                                           ; $4dbf: $3f
    ld a, $07                                     ; $4dc0: $3e $07
    inc b                                         ; $4dc2: $04
    rrca                                          ; $4dc3: $0f
    ld [$080f], sp                                ; $4dc4: $08 $0f $08
    rra                                           ; $4dc7: $1f
    ld de, $0e02                                  ; $4dc8: $11 $02 $0e
    ld [bc], a                                    ; $4dcb: $02
    nop                                           ; $4dcc: $00
    ld [bc], a                                    ; $4dcd: $02
    ld bc, $0696                                  ; $4dce: $01 $96 $06
    rlca                                          ; $4dd1: $07
    ld e, $1f                                     ; $4dd2: $1e $1f
    ld [hl], c                                    ; $4dd4: $71
    ld a, a                                       ; $4dd5: $7f
    ret                                           ; $4dd6: $c9


    rst $38                                       ; $4dd7: $ff
    adc b                                         ; $4dd8: $88
    rst $38                                       ; $4dd9: $ff
    adc c                                         ; $4dda: $89
    rst $38                                       ; $4ddb: $ff
    jp z, $faff                                   ; $4ddc: $ca $ff $fa

    rst $38                                       ; $4ddf: $ff
    adc $ff                                       ; $4de0: $ce $ff
    ld sp, hl                                     ; $4de2: $f9
    ld a, a                                       ; $4de3: $7f
    rst $20                                       ; $4de4: $e7
    daa                                           ; $4de5: $27
    ld [bc], a                                    ; $4de6: $02
    ret nz                                        ; $4de7: $c0

    inc b                                         ; $4de8: $04
    nop                                           ; $4de9: $00
    ld [bc], a                                    ; $4dea: $02
    jr c, jr_0f2_4d89                             ; $4deb: $38 $9c

    add $fe                                       ; $4ded: $c6 $fe
    ld c, c                                       ; $4def: $49
    rst $38                                       ; $4df0: $ff
    db $f4                                        ; $4df1: $f4
    rst $38                                       ; $4df2: $ff
    ld [bc], a                                    ; $4df3: $02
    rst $38                                       ; $4df4: $ff
    ld [bc], a                                    ; $4df5: $02
    rst $38                                       ; $4df6: $ff
    di                                            ; $4df7: $f3
    rst $38                                       ; $4df8: $ff
    adc h                                         ; $4df9: $8c
    rst $38                                       ; $4dfa: $ff
    ld b, d                                       ; $4dfb: $42
    rst $38                                       ; $4dfc: $ff
    ld b, c                                       ; $4dfd: $41
    rst $38                                       ; $4dfe: $ff
    inc sp                                        ; $4dff: $33
    rst $38                                       ; $4e00: $ff
    db $fc                                        ; $4e01: $fc
    rst $38                                       ; $4e02: $ff
    add e                                         ; $4e03: $83
    rst $38                                       ; $4e04: $ff
    ld a, a                                       ; $4e05: $7f
    ld a, [hl]                                    ; $4e06: $7e
    inc bc                                        ; $4e07: $03
    ld [bc], a                                    ; $4e08: $02
    ld [bc], a                                    ; $4e09: $02
    ld bc, $0006                                  ; $4e0a: $01 $06 $00
    ld [bc], a                                    ; $4e0d: $02
    ld [$058a], sp                                ; $4e0e: $08 $8a $05
    dec c                                         ; $4e11: $0d
    dec bc                                        ; $4e12: $0b
    rrca                                          ; $4e13: $0f
    ld a, [bc]                                    ; $4e14: $0a
    ld c, $06                                     ; $4e15: $0e $06
    ld c, $07                                     ; $4e17: $0e $07
    rrca                                          ; $4e19: $0f
    ld [bc], a                                    ; $4e1a: $02
    dec c                                         ; $4e1b: $0d
    add d                                         ; $4e1c: $82
    inc b                                         ; $4e1d: $04
    inc c                                         ; $4e1e: $0c
    inc bc                                        ; $4e1f: $03
    ld c, $85                                     ; $4e20: $0e $85
    ld [bc], a                                    ; $4e22: $02
    ld c, $02                                     ; $4e23: $0e $02
    inc c                                         ; $4e25: $0c
    inc b                                         ; $4e26: $04
    ld [bc], a                                    ; $4e27: $02
    ld [$0dff], sp                                ; $4e28: $08 $ff $0d
    inc b                                         ; $4e2b: $04
    push af                                       ; $4e2c: $f5
    db $10                                        ; $4e2d: $10
    xor $ff                                       ; $4e2e: $ee $ff
    pop af                                        ; $4e30: $f1
    cp $f1                                        ; $4e31: $fe $f1
    ld b, $f1                                     ; $4e33: $06 $f1
    ld c, $f1                                     ; $4e35: $0e $f1
    ld d, $08                                     ; $4e37: $16 $08
    nop                                           ; $4e39: $00
    ld [bc], a                                    ; $4e3a: $02
    jr @-$76                                      ; $4e3b: $18 $88

    ld l, a                                       ; $4e3d: $6f
    ld a, a                                       ; $4e3e: $7f
    rst $28                                       ; $4e3f: $ef
    cp [hl]                                       ; $4e40: $be
    rst $38                                       ; $4e41: $ff
    sbc d                                         ; $4e42: $9a
    rst $38                                       ; $4e43: $ff
    rst $00                                       ; $4e44: $c7
    ld [bc], a                                    ; $4e45: $02
    inc a                                         ; $4e46: $3c
    inc b                                         ; $4e47: $04
    ld bc, $0384                                  ; $4e48: $01 $84 $03
    ld [bc], a                                    ; $4e4b: $02
    rlca                                          ; $4e4c: $07
    inc b                                         ; $4e4d: $04
    ld [bc], a                                    ; $4e4e: $02
    inc bc                                        ; $4e4f: $03
    inc b                                         ; $4e50: $04
    nop                                           ; $4e51: $00
    ld [bc], a                                    ; $4e52: $02
    inc b                                         ; $4e53: $04
    ld [bc], a                                    ; $4e54: $02
    rrca                                          ; $4e55: $0f
    sub [hl]                                      ; $4e56: $96
    dec sp                                        ; $4e57: $3b
    ccf                                           ; $4e58: $3f
    ld c, h                                       ; $4e59: $4c
    ld a, a                                       ; $4e5a: $7f
    db $e4                                        ; $4e5b: $e4
    rst $38                                       ; $4e5c: $ff
    add d                                         ; $4e5d: $82
    rst $38                                       ; $4e5e: $ff
    or $7f                                        ; $4e5f: $f6 $7f
    rst $18                                       ; $4e61: $df
    rst $38                                       ; $4e62: $ff
    ld a, b                                       ; $4e63: $78
    ld a, a                                       ; $4e64: $7f
    rst $38                                       ; $4e65: $ff
    adc a                                         ; $4e66: $8f
    ld hl, sp+$08                                 ; $4e67: $f8 $08
    ldh a, [$30]                                  ; $4e69: $f0 $30
    ret nz                                        ; $4e6b: $c0

    ld b, b                                       ; $4e6c: $40
    ld [bc], a                                    ; $4e6d: $02
    add b                                         ; $4e6e: $80

jr_0f2_4e6f:
    ld [bc], a                                    ; $4e6f: $02
    nop                                           ; $4e70: $00
    ld [bc], a                                    ; $4e71: $02
    ld c, b                                       ; $4e72: $48
    adc l                                         ; $4e73: $8d
    or h                                          ; $4e74: $b4
    db $fc                                        ; $4e75: $fc
    cpl                                           ; $4e76: $2f
    rst $38                                       ; $4e77: $ff
    reti                                          ; $4e78: $d9


    rst $38                                       ; $4e79: $ff
    add c                                         ; $4e7a: $81
    rst $38                                       ; $4e7b: $ff
    ld a, d                                       ; $4e7c: $7a
    rst $38                                       ; $4e7d: $ff
    ld b, h                                       ; $4e7e: $44
    rst $38                                       ; $4e7f: $ff
    and d                                         ; $4e80: $a2
    inc bc                                        ; $4e81: $03
    rst $38                                       ; $4e82: $ff
    add c                                         ; $4e83: $81
    inc c                                         ; $4e84: $0c
    inc bc                                        ; $4e85: $03
    rst $38                                       ; $4e86: $ff
    stop                                          ; $4e87: $10 $00
    ld [bc], a                                    ; $4e89: $02
    rst $00                                       ; $4e8a: $c7
    adc b                                         ; $4e8b: $88
    ld a, [hl-]                                   ; $4e8c: $3a
    cp $54                                        ; $4e8d: $fe $54
    db $fc                                        ; $4e8f: $fc
    ld h, h                                       ; $4e90: $64
    db $fc                                        ; $4e91: $fc
    ld a, [$02fe]                                 ; $4e92: $fa $fe $02
    rst $30                                       ; $4e95: $f7
    adc d                                         ; $4e96: $8a
    ldh a, [$d0]                                  ; $4e97: $f0 $d0
    ldh a, [$90]                                  ; $4e99: $f0 $90
    ld hl, sp-$78                                 ; $4e9b: $f8 $88
    ld hl, sp-$78                                 ; $4e9d: $f8 $88
    ld a, b                                       ; $4e9f: $78
    ld c, b                                       ; $4ea0: $48
    ld [bc], a                                    ; $4ea1: $02
    ld [hl], b                                    ; $4ea2: $70
    ld [bc], a                                    ; $4ea3: $02
    nop                                           ; $4ea4: $00
    rst $38                                       ; $4ea5: $ff
    dec bc                                        ; $4ea6: $0b
    inc bc                                        ; $4ea7: $03
    push af                                       ; $4ea8: $f5
    db $10                                        ; $4ea9: $10
    xor $ff                                       ; $4eaa: $ee $ff
    ldh a, [$f6]                                  ; $4eac: $f0 $f6
    ldh a, [$fe]                                  ; $4eae: $f0 $fe
    ldh a, [rDIV]                                 ; $4eb0: $f0 $04
    ld [bc], a                                    ; $4eb2: $02
    nop                                           ; $4eb3: $00
    ld [bc], a                                    ; $4eb4: $02
    inc bc                                        ; $4eb5: $03
    add d                                         ; $4eb6: $82
    ld [bc], a                                    ; $4eb7: $02
    inc bc                                        ; $4eb8: $03
    ld [bc], a                                    ; $4eb9: $02
    rla                                           ; $4eba: $17
    adc [hl]                                      ; $4ebb: $8e
    dec l                                         ; $4ebc: $2d
    ccf                                           ; $4ebd: $3f
    ld a, [hl-]                                   ; $4ebe: $3a
    ccf                                           ; $4ebf: $3f
    ld [hl], c                                    ; $4ec0: $71
    ld a, a                                       ; $4ec1: $7f
    cp e                                          ; $4ec2: $bb
    rst $38                                       ; $4ec3: $ff
    ld e, [hl]                                    ; $4ec4: $5e
    ld a, a                                       ; $4ec5: $7f
    ld [hl], a                                    ; $4ec6: $77
    ld e, a                                       ; $4ec7: $5f
    ld a, l                                       ; $4ec8: $7d
    ld c, a                                       ; $4ec9: $4f
    ld [bc], a                                    ; $4eca: $02
    ccf                                           ; $4ecb: $3f
    ld [$0200], sp                                ; $4ecc: $08 $00 $02
    inc sp                                        ; $4ecf: $33
    sub c                                         ; $4ed0: $91
    ld l, l                                       ; $4ed1: $6d
    ld a, a                                       ; $4ed2: $7f
    cp c                                          ; $4ed3: $b9
    rst $38                                       ; $4ed4: $ff
    xor $ff                                       ; $4ed5: $ee $ff
    ld b, [hl]                                    ; $4ed7: $46
    rst $38                                       ; $4ed8: $ff
    ld b, l                                       ; $4ed9: $45
    rst $38                                       ; $4eda: $ff
    ret z                                         ; $4edb: $c8

    rst $38                                       ; $4edc: $ff
    ld a, c                                       ; $4edd: $79
    rst $38                                       ; $4ede: $ff
    ld c, b                                       ; $4edf: $48
    rst $38                                       ; $4ee0: $ff
    adc l                                         ; $4ee1: $8d
    inc bc                                        ; $4ee2: $03
    rst $38                                       ; $4ee3: $ff
    add c                                         ; $4ee4: $81
    inc l                                         ; $4ee5: $2c
    inc bc                                        ; $4ee6: $03
    rst $38                                       ; $4ee7: $ff
    ld a, [bc]                                    ; $4ee8: $0a
    nop                                           ; $4ee9: $00
    ld [bc], a                                    ; $4eea: $02
    jr nc, jr_0f2_4e6f                            ; $4eeb: $30 $82

    inc e                                         ; $4eed: $1c
    inc a                                         ; $4eee: $3c
    ld [bc], a                                    ; $4eef: $02
    ld a, $81                                     ; $4ef0: $3e $81
    rlca                                          ; $4ef2: $07
    inc bc                                        ; $4ef3: $03
    ccf                                           ; $4ef4: $3f
    adc b                                         ; $4ef5: $88
    dec l                                         ; $4ef6: $2d
    ccf                                           ; $4ef7: $3f
    add hl, sp                                    ; $4ef8: $39
    ccf                                           ; $4ef9: $3f
    cpl                                           ; $4efa: $2f
    dec sp                                        ; $4efb: $3b
    ld e, $32                                     ; $4efc: $1e $32
    ld [bc], a                                    ; $4efe: $02
    inc a                                         ; $4eff: $3c
    ld [$ff00], sp                                ; $4f00: $08 $00 $ff
    dec bc                                        ; $4f03: $0b
    inc bc                                        ; $4f04: $03
    push af                                       ; $4f05: $f5
    db $10                                        ; $4f06: $10
    xor $ff                                       ; $4f07: $ee $ff
    db $f4                                        ; $4f09: $f4
    rst $30                                       ; $4f0a: $f7
    db $f4                                        ; $4f0b: $f4
    rst $38                                       ; $4f0c: $ff
    db $f4                                        ; $4f0d: $f4
    inc b                                         ; $4f0e: $04
    ld [bc], a                                    ; $4f0f: $02
    inc bc                                        ; $4f10: $03
    add d                                         ; $4f11: $82
    ld [bc], a                                    ; $4f12: $02
    inc bc                                        ; $4f13: $03
    ld [bc], a                                    ; $4f14: $02
    rla                                           ; $4f15: $17
    adc [hl]                                      ; $4f16: $8e
    dec l                                         ; $4f17: $2d
    ccf                                           ; $4f18: $3f
    ld [hl-], a                                   ; $4f19: $32
    ccf                                           ; $4f1a: $3f
    ld [hl], c                                    ; $4f1b: $71
    ld a, a                                       ; $4f1c: $7f
    cp e                                          ; $4f1d: $bb
    rst $38                                       ; $4f1e: $ff
    ld e, [hl]                                    ; $4f1f: $5e
    ld a, a                                       ; $4f20: $7f
    ld [hl], a                                    ; $4f21: $77
    ld a, a                                       ; $4f22: $7f
    ld a, l                                       ; $4f23: $7d
    ld e, a                                       ; $4f24: $5f
    ld [bc], a                                    ; $4f25: $02
    dec sp                                        ; $4f26: $3b
    ld a, [bc]                                    ; $4f27: $0a
    nop                                           ; $4f28: $00
    sub c                                         ; $4f29: $91
    ld l, h                                       ; $4f2a: $6c
    ld a, h                                       ; $4f2b: $7c
    cp e                                          ; $4f2c: $bb
    rst $38                                       ; $4f2d: $ff
    adc $ff                                       ; $4f2e: $ce $ff
    ld b, [hl]                                    ; $4f30: $46
    rst $38                                       ; $4f31: $ff
    ld c, c                                       ; $4f32: $49
    rst $38                                       ; $4f33: $ff
    ret z                                         ; $4f34: $c8

    rst $38                                       ; $4f35: $ff
    ld a, c                                       ; $4f36: $79
    rst $38                                       ; $4f37: $ff
    ld c, b                                       ; $4f38: $48
    rst $38                                       ; $4f39: $ff
    adc l                                         ; $4f3a: $8d
    inc bc                                        ; $4f3b: $03
    rst $38                                       ; $4f3c: $ff

Jump_0f2_4f3d:
    add c                                         ; $4f3d: $81
    inc l                                         ; $4f3e: $2c
    inc bc                                        ; $4f3f: $03
    rst $38                                       ; $4f40: $ff
    inc c                                         ; $4f41: $0c
    nop                                           ; $4f42: $00
    ld [bc], a                                    ; $4f43: $02
    db $10                                        ; $4f44: $10
    ld [bc], a                                    ; $4f45: $02
    inc e                                         ; $4f46: $1c
    add c                                         ; $4f47: $81
    inc bc                                        ; $4f48: $03
    inc bc                                        ; $4f49: $03
    rra                                           ; $4f4a: $1f
    add a                                         ; $4f4b: $87
    ld d, $1f                                     ; $4f4c: $16 $1f
    inc e                                         ; $4f4e: $1c
    rra                                           ; $4f4f: $1f
    inc de                                        ; $4f50: $13
    rra                                           ; $4f51: $1f
    ld c, $02                                     ; $4f52: $0e $02
    ld e, $81                                     ; $4f54: $1e $81
    ld a, [de]                                    ; $4f56: $1a
    ld [bc], a                                    ; $4f57: $02
    inc d                                         ; $4f58: $14
    ld [$ff00], sp                                ; $4f59: $08 $00 $ff
    dec c                                         ; $4f5c: $0d
    inc b                                         ; $4f5d: $04
    push af                                       ; $4f5e: $f5
    db $10                                        ; $4f5f: $10
    xor $ff                                       ; $4f60: $ee $ff
    ld a, [c]                                     ; $4f62: $f2
    rst $30                                       ; $4f63: $f7
    ld a, [c]                                     ; $4f64: $f2
    rst $38                                       ; $4f65: $ff
    ld a, [c]                                     ; $4f66: $f2
    rlca                                          ; $4f67: $07
    ld a, [c]                                     ; $4f68: $f2
    add hl, bc                                    ; $4f69: $09
    ld [bc], a                                    ; $4f6a: $02
    nop                                           ; $4f6b: $00
    ld [bc], a                                    ; $4f6c: $02
    inc bc                                        ; $4f6d: $03
    add d                                         ; $4f6e: $82
    ld [bc], a                                    ; $4f6f: $02
    inc bc                                        ; $4f70: $03
    ld [bc], a                                    ; $4f71: $02
    rla                                           ; $4f72: $17
    sub d                                         ; $4f73: $92
    dec l                                         ; $4f74: $2d
    ccf                                           ; $4f75: $3f
    ld a, [hl-]                                   ; $4f76: $3a
    ccf                                           ; $4f77: $3f
    ld [hl], c                                    ; $4f78: $71
    ld a, a                                       ; $4f79: $7f
    cp e                                          ; $4f7a: $bb
    rst $38                                       ; $4f7b: $ff
    ld e, [hl]                                    ; $4f7c: $5e
    ld a, a                                       ; $4f7d: $7f
    ld [hl], a                                    ; $4f7e: $77
    ld a, a                                       ; $4f7f: $7f
    ld a, l                                       ; $4f80: $7d
    ld e, a                                       ; $4f81: $5f
    ei                                            ; $4f82: $fb
    adc e                                         ; $4f83: $8b
    ldh a, [$90]                                  ; $4f84: $f0 $90
    ld [bc], a                                    ; $4f86: $02
    ld h, b                                       ; $4f87: $60
    inc b                                         ; $4f88: $04
    nop                                           ; $4f89: $00
    ld [bc], a                                    ; $4f8a: $02
    inc sp                                        ; $4f8b: $33
    sub c                                         ; $4f8c: $91
    ld l, l                                       ; $4f8d: $6d
    ld a, a                                       ; $4f8e: $7f
    cp c                                          ; $4f8f: $b9
    rst $38                                       ; $4f90: $ff
    xor $ff                                       ; $4f91: $ee $ff
    ld b, [hl]                                    ; $4f93: $46
    rst $38                                       ; $4f94: $ff
    ld b, l                                       ; $4f95: $45
    rst $38                                       ; $4f96: $ff
    ret z                                         ; $4f97: $c8

    rst $38                                       ; $4f98: $ff
    ld a, c                                       ; $4f99: $79
    rst $38                                       ; $4f9a: $ff
    ld c, b                                       ; $4f9b: $48
    rst $38                                       ; $4f9c: $ff
    adc l                                         ; $4f9d: $8d
    inc bc                                        ; $4f9e: $03
    rst $38                                       ; $4f9f: $ff
    add c                                         ; $4fa0: $81
    inc l                                         ; $4fa1: $2c
    inc bc                                        ; $4fa2: $03
    rst $38                                       ; $4fa3: $ff
    ld a, [bc]                                    ; $4fa4: $0a
    nop                                           ; $4fa5: $00
    ld [bc], a                                    ; $4fa6: $02
    ret nz                                        ; $4fa7: $c0

    add l                                         ; $4fa8: $85
    halt                                          ; $4fa9: $76
    or $fd                                        ; $4faa: $f6 $fd
    rst $38                                       ; $4fac: $ff
    dec e                                         ; $4fad: $1d
    ld [bc], a                                    ; $4fae: $02
    rst $38                                       ; $4faf: $ff
    adc b                                         ; $4fb0: $88
    cp $bf                                        ; $4fb1: $fe $bf
    ld hl, sp-$11                                 ; $4fb3: $f8 $ef
    rst $30                                       ; $4fb5: $f7
    sbc b                                         ; $4fb6: $98
    ld hl, sp+$70                                 ; $4fb7: $f8 $70
    ld [bc], a                                    ; $4fb9: $02
    ldh a, [$83]                                  ; $4fba: $f0 $83
    ret nc                                        ; $4fbc: $d0

    ld hl, sp-$78                                 ; $4fbd: $f8 $88
    ld [bc], a                                    ; $4fbf: $02
    ld a, b                                       ; $4fc0: $78
    inc c                                         ; $4fc1: $0c
    nop                                           ; $4fc2: $00
    ld [bc], a                                    ; $4fc3: $02
    ld [bc], a                                    ; $4fc4: $02
    add h                                         ; $4fc5: $84
    inc bc                                        ; $4fc6: $03
    ld bc, $0103                                  ; $4fc7: $01 $03 $01
    ld [bc], a                                    ; $4fca: $02
    inc bc                                        ; $4fcb: $03
    ld [bc], a                                    ; $4fcc: $02
    ld [bc], a                                    ; $4fcd: $02
    ld c, $00                                     ; $4fce: $0e $00
    rst $38                                       ; $4fd0: $ff
    dec c                                         ; $4fd1: $0d
    inc b                                         ; $4fd2: $04
    push af                                       ; $4fd3: $f5
    db $10                                        ; $4fd4: $10
    xor $ff                                       ; $4fd5: $ee $ff
    pop af                                        ; $4fd7: $f1
    or $f1                                        ; $4fd8: $f6 $f1
    cp $f1                                        ; $4fda: $fe $f1
    ld b, $f1                                     ; $4fdc: $06 $f1
    add hl, bc                                    ; $4fde: $09
    ld [bc], a                                    ; $4fdf: $02
    nop                                           ; $4fe0: $00
    inc b                                         ; $4fe1: $04
    ld bc, $0b02                                  ; $4fe2: $01 $02 $0b
    sub h                                         ; $4fe5: $94
    ld d, $1f                                     ; $4fe6: $16 $1f
    dec e                                         ; $4fe8: $1d
    rra                                           ; $4fe9: $1f
    jr c, jr_0f2_502b                             ; $4fea: $38 $3f

    ld e, l                                       ; $4fec: $5d
    ld a, a                                       ; $4fed: $7f
    cpl                                           ; $4fee: $2f
    ccf                                           ; $4fef: $3f
    dec sp                                        ; $4ff0: $3b
    ccf                                           ; $4ff1: $3f
    ld a, $2f                                     ; $4ff2: $3e $2f
    ld a, a                                       ; $4ff4: $7f
    ld b, e                                       ; $4ff5: $43
    ld a, h                                       ; $4ff6: $7c
    ld b, h                                       ; $4ff7: $44
    ld hl, sp-$68                                 ; $4ff8: $f8 $98
    ld [bc], a                                    ; $4ffa: $02
    ld [hl], b                                    ; $4ffb: $70
    ld [bc], a                                    ; $4ffc: $02
    nop                                           ; $4ffd: $00
    ld [bc], a                                    ; $4ffe: $02
    add hl, de                                    ; $4fff: $19
    sub c                                         ; $5000: $91
    or [hl]                                       ; $5001: $b6
    cp a                                          ; $5002: $bf
    ld e, h                                       ; $5003: $5c
    rst $38                                       ; $5004: $ff
    rst $30                                       ; $5005: $f7
    rst $38                                       ; $5006: $ff
    and e                                         ; $5007: $a3
    rst $38                                       ; $5008: $ff
    ld [hl+], a                                   ; $5009: $22
    rst $38                                       ; $500a: $ff
    db $e4                                        ; $500b: $e4
    rst $38                                       ; $500c: $ff
    cp h                                          ; $500d: $bc
    rst $38                                       ; $500e: $ff
    inc h                                         ; $500f: $24
    rst $38                                       ; $5010: $ff
    add $03                                       ; $5011: $c6 $03
    rst $38                                       ; $5013: $ff
    add d                                         ; $5014: $82
    sub [hl]                                      ; $5015: $96
    rst $38                                       ; $5016: $ff
    ld [bc], a                                    ; $5017: $02
    ld a, a                                       ; $5018: $7f
    ld b, $00                                     ; $5019: $06 $00
    ld [bc], a                                    ; $501b: $02
    add b                                         ; $501c: $80
    ld [bc], a                                    ; $501d: $02
    ret nz                                        ; $501e: $c0

    ld [bc], a                                    ; $501f: $02
    di                                            ; $5020: $f3
    adc [hl]                                      ; $5021: $8e
    ld a, $ff                                     ; $5022: $3e $ff
    ld a, [hl]                                    ; $5024: $7e
    rst $38                                       ; $5025: $ff
    adc a                                         ; $5026: $8f
    ei                                            ; $5027: $fb
    ld a, a                                       ; $5028: $7f
    db $fc                                        ; $5029: $fc
    rst $18                                       ; $502a: $df

jr_0f2_502b:
    rst $38                                       ; $502b: $ff
    halt                                          ; $502c: $76
    cp $cc                                        ; $502d: $fe $cc
    db $fc                                        ; $502f: $fc
    inc bc                                        ; $5030: $03
    ld hl, sp-$7b                                 ; $5031: $f8 $85
    add sp, -$04                                  ; $5033: $e8 $fc
    add h                                         ; $5035: $84
    ld a, [hl]                                    ; $5036: $7e
    ld [hl], d                                    ; $5037: $72
    ld [bc], a                                    ; $5038: $02
    inc e                                         ; $5039: $1c
    ld [$0200], sp                                ; $503a: $08 $00 $02
    ld b, $86                                     ; $503d: $06 $86
    rlca                                          ; $503f: $07
    dec b                                         ; $5040: $05
    rlca                                          ; $5041: $07
    ld bc, $0307                                  ; $5042: $01 $07 $03
    ld [bc], a                                    ; $5045: $02
    ld b, $10                                     ; $5046: $06 $10
    nop                                           ; $5048: $00
    rst $38                                       ; $5049: $ff
    rlca                                          ; $504a: $07
    ld bc, $00e5                                  ; $504b: $01 $e5 $00
    db $fd                                        ; $504e: $fd
    ld [bc], a                                    ; $504f: $02
    db $fd                                        ; $5050: $fd
    jp hl                                         ; $5051: $e9


    adc d                                         ; $5052: $8a
    ld [$0100], sp                                ; $5053: $08 $00 $01
    nop                                           ; $5056: $00
    dec d                                         ; $5057: $15
    db $10                                        ; $5058: $10
    ld [$0200], sp                                ; $5059: $08 $00 $02
    nop                                           ; $505c: $00
    ld [bc], a                                    ; $505d: $02
    ld [$0014], sp                                ; $505e: $08 $14 $00
    rst $38                                       ; $5061: $ff
    rlca                                          ; $5062: $07
    ld bc, $00e5                                  ; $5063: $01 $e5 $00
    db $fd                                        ; $5066: $fd
    ld [bc], a                                    ; $5067: $02
    db $fc                                        ; $5068: $fc
    db $ed                                        ; $5069: $ed
    adc l                                         ; $506a: $8d
    ld [$6a00], sp                                ; $506b: $08 $00 $6a
    ld b, b                                       ; $506e: $40
    dec d                                         ; $506f: $15
    ld [hl-], a                                   ; $5070: $32
    ld c, d                                       ; $5071: $4a
    ld b, b                                       ; $5072: $40
    jr nz, jr_0f2_5075                            ; $5073: $20 $00

jr_0f2_5075:
    dec [hl]                                      ; $5075: $35
    ld hl, $026a                                  ; $5076: $21 $6a $02
    db $10                                        ; $5079: $10
    ld de, $ff00                                  ; $507a: $11 $00 $ff
    add hl, bc                                    ; $507d: $09
    ld [bc], a                                    ; $507e: $02
    push hl                                       ; $507f: $e5
    nop                                           ; $5080: $00
    db $fd                                        ; $5081: $fd
    ld [bc], a                                    ; $5082: $02
    ei                                            ; $5083: $fb
    db $ed                                        ; $5084: $ed
    ei                                            ; $5085: $fb
    rst $28                                       ; $5086: $ef
    ld [bc], a                                    ; $5087: $02
    ld [hl+], a                                   ; $5088: $22
    sub b                                         ; $5089: $90
    ld de, $4c00                                  ; $508a: $11 $00 $4c
    ld a, [hl+]                                   ; $508d: $2a
    cp e                                          ; $508e: $bb
    ld b, h                                       ; $508f: $44
    ld e, h                                       ; $5090: $5c
    db $10                                        ; $5091: $10
    db $db                                        ; $5092: $db
    jr nz, jr_0f2_50fa                            ; $5093: $20 $65

    ld c, d                                       ; $5095: $4a
    ld e, c                                       ; $5096: $59
    ld bc, $2024                                  ; $5097: $01 $24 $20
    ld [bc], a                                    ; $509a: $02
    ld [$0012], sp                                ; $509b: $08 $12 $00
    ld [bc], a                                    ; $509e: $02
    ld bc, $0281                                  ; $509f: $01 $81 $02
    inc bc                                        ; $50a2: $03
    nop                                           ; $50a3: $00
    add c                                         ; $50a4: $81
    ld [bc], a                                    ; $50a5: $02
    inc de                                        ; $50a6: $13
    nop                                           ; $50a7: $00
    rst $38                                       ; $50a8: $ff
    dec bc                                        ; $50a9: $0b
    inc bc                                        ; $50aa: $03
    push hl                                       ; $50ab: $e5
    nop                                           ; $50ac: $00
    db $fd                                        ; $50ad: $fd
    ld [bc], a                                    ; $50ae: $02
    db $fd                                        ; $50af: $fd
    rst $28                                       ; $50b0: $ef
    db $fd                                        ; $50b1: $fd
    rst $30                                       ; $50b2: $f7
    db $fd                                        ; $50b3: $fd
    ld sp, hl                                     ; $50b4: $f9
    ld [bc], a                                    ; $50b5: $02
    nop                                           ; $50b6: $00
    ld [bc], a                                    ; $50b7: $02
    ld a, [bc]                                    ; $50b8: $0a
    add h                                         ; $50b9: $84
    ld a, a                                       ; $50ba: $7f
    ld [hl], l                                    ; $50bb: $75
    cp a                                          ; $50bc: $bf
    cp e                                          ; $50bd: $bb
    ld [bc], a                                    ; $50be: $02
    dec b                                         ; $50bf: $05
    ld d, $00                                     ; $50c0: $16 $00
    adc h                                         ; $50c2: $8c
    ld c, $0c                                     ; $50c3: $0e $0c
    call c, $26d3                                 ; $50c5: $dc $d3 $26
    reti                                          ; $50c8: $d9


    or h                                          ; $50c9: $b4
    ld c, e                                       ; $50ca: $4b
    ld hl, sp+$27                                 ; $50cb: $f8 $27
    xor [hl]                                      ; $50cd: $ae
    xor h                                         ; $50ce: $ac
    ld d, $00                                     ; $50cf: $16 $00
    add l                                         ; $50d1: $85
    ld [bc], a                                    ; $50d2: $02
    nop                                           ; $50d3: $00
    ld bc, $0102                                  ; $50d4: $01 $02 $01
    ld [bc], a                                    ; $50d7: $02
    ld [bc], a                                    ; $50d8: $02
    rla                                           ; $50d9: $17
    nop                                           ; $50da: $00
    rst $38                                       ; $50db: $ff
    dec bc                                        ; $50dc: $0b
    inc bc                                        ; $50dd: $03
    push hl                                       ; $50de: $e5
    nop                                           ; $50df: $00
    db $fd                                        ; $50e0: $fd
    ld [bc], a                                    ; $50e1: $02
    db $fd                                        ; $50e2: $fd
    xor $fd                                       ; $50e3: $ee $fd
    or $fd                                        ; $50e5: $f6 $fd
    ld sp, hl                                     ; $50e7: $f9
    ld [bc], a                                    ; $50e8: $02
    nop                                           ; $50e9: $00
    ld [bc], a                                    ; $50ea: $02
    rlca                                          ; $50eb: $07
    add h                                         ; $50ec: $84
    cpl                                           ; $50ed: $2f
    ld a, [hl+]                                   ; $50ee: $2a
    rst $38                                       ; $50ef: $ff
    db $fc                                        ; $50f0: $fc
    ld [bc], a                                    ; $50f1: $02
    dec bc                                        ; $50f2: $0b
    ld d, $00                                     ; $50f3: $16 $00
    adc h                                         ; $50f5: $8c
    rlca                                          ; $50f6: $07
    ld b, $6e                                     ; $50f7: $06 $6e
    ld l, c                                       ; $50f9: $69

jr_0f2_50fa:
    or l                                          ; $50fa: $b5
    jp z, $25da                                   ; $50fb: $ca $da $25

    db $fd                                        ; $50fe: $fd
    sub d                                         ; $50ff: $92
    ld [hl], a                                    ; $5100: $77
    halt                                          ; $5101: $76
    ld d, $00                                     ; $5102: $16 $00
    adc b                                         ; $5104: $88
    ld [bc], a                                    ; $5105: $02
    inc b                                         ; $5106: $04
    ld bc, $0106                                  ; $5107: $01 $06 $01
    ld b, $02                                     ; $510a: $06 $02
    inc b                                         ; $510c: $04
    ld d, $00                                     ; $510d: $16 $00
    rst $38                                       ; $510f: $ff
    dec bc                                        ; $5110: $0b
    inc bc                                        ; $5111: $03
    push hl                                       ; $5112: $e5
    nop                                           ; $5113: $00
    db $fd                                        ; $5114: $fd
    ld [bc], a                                    ; $5115: $02
    db $fd                                        ; $5116: $fd
    db $ec                                        ; $5117: $ec
    db $fd                                        ; $5118: $fd
    db $f4                                        ; $5119: $f4
    db $fd                                        ; $511a: $fd
    ld sp, hl                                     ; $511b: $f9
    ld [bc], a                                    ; $511c: $02
    nop                                           ; $511d: $00
    ld [bc], a                                    ; $511e: $02
    inc bc                                        ; $511f: $03
    add d                                         ; $5120: $82
    dec bc                                        ; $5121: $0b
    add hl, bc                                    ; $5122: $09
    ld [bc], a                                    ; $5123: $02
    sbc a                                         ; $5124: $9f
    ld [bc], a                                    ; $5125: $02
    ld [$0016], sp                                ; $5126: $08 $16 $00
    ld [bc], a                                    ; $5129: $02
    inc bc                                        ; $512a: $03
    adc b                                         ; $512b: $88
    db $db                                        ; $512c: $db
    jp c, $e4fb                                   ; $512d: $da $fb $e4

    and $19                                       ; $5130: $e6 $19
    rst $38                                       ; $5132: $ff
    db $e4                                        ; $5133: $e4
    ld [bc], a                                    ; $5134: $02
    ld e, l                                       ; $5135: $5d
    inc d                                         ; $5136: $14
    nop                                           ; $5137: $00
    adc d                                         ; $5138: $8a
    jr jr_0f2_514b                                ; $5139: $18 $10

    ld [bc], a                                    ; $513b: $02
    inc e                                         ; $513c: $1c
    add hl, de                                    ; $513d: $19
    ld b, $09                                     ; $513e: $06 $09
    ld d, $0a                                     ; $5140: $16 $0a
    inc d                                         ; $5142: $14
    ld [bc], a                                    ; $5143: $02
    inc e                                         ; $5144: $1c
    inc d                                         ; $5145: $14
    nop                                           ; $5146: $00
    rst $38                                       ; $5147: $ff
    dec bc                                        ; $5148: $0b
    inc bc                                        ; $5149: $03
    push hl                                       ; $514a: $e5

jr_0f2_514b:
    nop                                           ; $514b: $00
    db $fd                                        ; $514c: $fd
    ld [bc], a                                    ; $514d: $02
    db $fd                                        ; $514e: $fd
    db $ed                                        ; $514f: $ed
    db $fd                                        ; $5150: $fd
    push af                                       ; $5151: $f5
    db $fd                                        ; $5152: $fd
    ld sp, hl                                     ; $5153: $f9
    ld [bc], a                                    ; $5154: $02
    nop                                           ; $5155: $00
    ld [bc], a                                    ; $5156: $02
    ld b, e                                       ; $5157: $43
    add h                                         ; $5158: $84
    rla                                           ; $5159: $17
    dec b                                         ; $515a: $05
    ccf                                           ; $515b: $3f
    ld a, $02                                     ; $515c: $3e $02
    add a                                         ; $515e: $87
    ld [bc], a                                    ; $515f: $02
    ld [bc], a                                    ; $5160: $02
    inc d                                         ; $5161: $14
    nop                                           ; $5162: $00
    ld [bc], a                                    ; $5163: $02
    inc de                                        ; $5164: $13
    adc b                                         ; $5165: $88
    or a                                          ; $5166: $b7
    or h                                          ; $5167: $b4
    rst $30                                       ; $5168: $f7
    ld c, b                                       ; $5169: $48
    ld e, h                                       ; $516a: $5c
    and e                                         ; $516b: $a3
    rst $30                                       ; $516c: $f7
    ret z                                         ; $516d: $c8

    ld [bc], a                                    ; $516e: $02
    dec sp                                        ; $516f: $3b
    inc d                                         ; $5170: $14
    nop                                           ; $5171: $00
    add a                                         ; $5172: $87
    ld [$0a00], sp                                ; $5173: $08 $00 $0a
    inc b                                         ; $5176: $04
    ld bc, $050e                                  ; $5177: $01 $0e $05
    ld [bc], a                                    ; $517a: $02
    ld a, [bc]                                    ; $517b: $0a
    add d                                         ; $517c: $82
    inc b                                         ; $517d: $04
    ld [$0015], sp                                ; $517e: $08 $15 $00
    rst $38                                       ; $5181: $ff
    dec bc                                        ; $5182: $0b
    inc bc                                        ; $5183: $03
    push hl                                       ; $5184: $e5
    nop                                           ; $5185: $00
    db $fd                                        ; $5186: $fd
    ld [bc], a                                    ; $5187: $02
    db $fd                                        ; $5188: $fd
    ld [$f2fd], a                                 ; $5189: $ea $fd $f2
    db $fd                                        ; $518c: $fd
    ld sp, hl                                     ; $518d: $f9
    ld [bc], a                                    ; $518e: $02
    nop                                           ; $518f: $00
    ld [bc], a                                    ; $5190: $02
    add b                                         ; $5191: $80
    ld [bc], a                                    ; $5192: $02
    dec b                                         ; $5193: $05

jr_0f2_5194:
    ld [bc], a                                    ; $5194: $02
    rrca                                          ; $5195: $0f
    ld [bc], a                                    ; $5196: $02
    inc bc                                        ; $5197: $03
    ld d, $00                                     ; $5198: $16 $00
    ld [bc], a                                    ; $519a: $02
    ld [bc], a                                    ; $519b: $02
    ld [bc], a                                    ; $519c: $02
    or [hl]                                       ; $519d: $b6
    add [hl]                                      ; $519e: $86
    ld a, [hl]                                    ; $519f: $7e
    ld l, c                                       ; $51a0: $69
    db $ed                                        ; $51a1: $ed
    sub d                                         ; $51a2: $92
    ld [hl], a                                    ; $51a3: $77
    ld a, c                                       ; $51a4: $79
    ld [bc], a                                    ; $51a5: $02
    ld b, a                                       ; $51a6: $47
    inc d                                         ; $51a7: $14
    nop                                           ; $51a8: $00
    adc h                                         ; $51a9: $8c
    jr c, jr_0f2_51dc                             ; $51aa: $38 $30

    ld a, d                                       ; $51ac: $7a
    ld b, h                                       ; $51ad: $44
    ld h, l                                       ; $51ae: $65
    ld a, [de]                                    ; $51af: $1a
    ld sp, $6a4e                                  ; $51b0: $31 $4e $6a
    inc d                                         ; $51b3: $14
    jr c, jr_0f2_51e6                             ; $51b4: $38 $30

    inc d                                         ; $51b6: $14
    nop                                           ; $51b7: $00
    rst $38                                       ; $51b8: $ff
    dec c                                         ; $51b9: $0d
    inc b                                         ; $51ba: $04
    or $1c                                        ; $51bb: $f6 $1c
    db $eb                                        ; $51bd: $eb
    ld bc, $f6f3                                  ; $51be: $01 $f3 $f6
    pop af                                        ; $51c1: $f1
    cp $f2                                        ; $51c2: $fe $f2
    dec b                                         ; $51c4: $05
    ld bc, $02fb                                  ; $51c5: $01 $fb $02
    ld sp, $399a                                  ; $51c8: $31 $9a $39
    add hl, hl                                    ; $51cb: $29
    dec e                                         ; $51cc: $1d
    dec d                                         ; $51cd: $15
    rra                                           ; $51ce: $1f
    rla                                           ; $51cf: $17
    inc a                                         ; $51d0: $3c
    scf                                           ; $51d1: $37
    ld d, [hl]                                    ; $51d2: $56
    ld a, e                                       ; $51d3: $7b
    xor l                                         ; $51d4: $ad
    db $db                                        ; $51d5: $db
    ld a, [$f59d]                                 ; $51d6: $fa $9d $f5
    sub [hl]                                      ; $51d9: $96
    rst $38                                       ; $51da: $ff
    adc a                                         ; $51db: $8f

jr_0f2_51dc:
    ei                                            ; $51dc: $fb
    sub a                                         ; $51dd: $97
    cp a                                          ; $51de: $bf
    call nz, $615f                                ; $51df: $c4 $5f $61
    scf                                           ; $51e2: $37
    jr c, jr_0f2_51e7                             ; $51e3: $38 $02

    rrca                                          ; $51e5: $0f

jr_0f2_51e6:
    ld [bc], a                                    ; $51e6: $02

jr_0f2_51e7:
    nop                                           ; $51e7: $00
    ld [bc], a                                    ; $51e8: $02
    ld [hl], b                                    ; $51e9: $70
    sbc [hl]                                      ; $51ea: $9e
    db $fc                                        ; $51eb: $fc
    adc h                                         ; $51ec: $8c
    ei                                            ; $51ed: $fb
    ld b, a                                       ; $51ee: $47

jr_0f2_51ef:
    rst $30                                       ; $51ef: $f7
    jr jr_0f2_51ef                                ; $51f0: $18 $fd

    ld e, a                                       ; $51f2: $5f
    rst $30                                       ; $51f3: $f7
    cpl                                           ; $51f4: $2f
    rst $38                                       ; $51f5: $ff
    add b                                         ; $51f6: $80
    rst $18                                       ; $51f7: $df
    db $e3                                        ; $51f8: $e3
    rst $38                                       ; $51f9: $ff
    db $fc                                        ; $51fa: $fc
    ld h, a                                       ; $51fb: $67
    cp $f7                                        ; $51fc: $fe $f7
    ld c, $6f                                     ; $51fe: $0e $6f
    sbc l                                         ; $5200: $9d
    push af                                       ; $5201: $f5
    ld a, [$90ff]                                 ; $5202: $fa $ff $90
    rst $38                                       ; $5205: $ff
    ld b, c                                       ; $5206: $41
    or $0e                                        ; $5207: $f6 $0e

jr_0f2_5209:
    ld [bc], a                                    ; $5209: $02
    jr nc, jr_0f2_5194                            ; $520a: $30 $88

    ld a, h                                       ; $520c: $7c
    ld c, h                                       ; $520d: $4c
    ld a, a                                       ; $520e: $7f
    inc bc                                        ; $520f: $03
    rra                                           ; $5210: $1f
    ld a, c                                       ; $5211: $79
    ld a, $46                                     ; $5212: $3e $46
    ld [bc], a                                    ; $5214: $02
    ld a, b                                       ; $5215: $78
    adc [hl]                                      ; $5216: $8e
    ld h, b                                       ; $5217: $60
    jr nz, jr_0f2_528a                            ; $5218: $20 $70

jr_0f2_521a:
    db $10                                        ; $521a: $10
    jr nc, jr_0f2_526d                            ; $521b: $30 $50

    ld [hl], b                                    ; $521d: $70
    ld d, b                                       ; $521e: $50
    ld [hl], b                                    ; $521f: $70
    db $10                                        ; $5220: $10
    ld d, b                                       ; $5221: $50
    jr nc, jr_0f2_5244                            ; $5222: $30 $20

    ld h, b                                       ; $5224: $60
    ld [bc], a                                    ; $5225: $02
    ld b, b                                       ; $5226: $40
    inc b                                         ; $5227: $04
    nop                                           ; $5228: $00
    ld [bc], a                                    ; $5229: $02
    rra                                           ; $522a: $1f
    ld e, $00                                     ; $522b: $1e $00
    rst $38                                       ; $522d: $ff
    dec c                                         ; $522e: $0d
    inc b                                         ; $522f: $04
    or $1c                                        ; $5230: $f6 $1c
    db $eb                                        ; $5232: $eb
    ld bc, $f6f2                                  ; $5233: $01 $f2 $f6
    pop af                                        ; $5236: $f1
    cp $f2                                        ; $5237: $fe $f2
    inc b                                         ; $5239: $04
    ld bc, $02fb                                  ; $523a: $01 $fb $02
    ld de, $399c                                  ; $523d: $11 $9c $39
    add hl, hl                                    ; $5240: $29
    rra                                           ; $5241: $1f
    ld d, $1e                                     ; $5242: $16 $1e

jr_0f2_5244:
    rla                                           ; $5244: $17
    rra                                           ; $5245: $1f
    rla                                           ; $5246: $17
    ld a, [hl-]                                   ; $5247: $3a
    scf                                           ; $5248: $37
    ld c, [hl]                                    ; $5249: $4e
    ld a, e                                       ; $524a: $7b
    xor l                                         ; $524b: $ad
    db $db                                        ; $524c: $db
    ld a, [$f59d]                                 ; $524d: $fa $9d $f5
    sub [hl]                                      ; $5250: $96
    cp $8f                                        ; $5251: $fe $8f
    ei                                            ; $5253: $fb
    sub a                                         ; $5254: $97
    cp a                                          ; $5255: $bf
    call nz, $615f                                ; $5256: $c4 $5f $61
    inc sp                                        ; $5259: $33
    inc a                                         ; $525a: $3c
    ld [bc], a                                    ; $525b: $02
    rrca                                          ; $525c: $0f
    ld [bc], a                                    ; $525d: $02
    ldh a, [$9e]                                  ; $525e: $f0 $9e
    db $fc                                        ; $5260: $fc
    inc c                                         ; $5261: $0c
    rst $38                                       ; $5262: $ff
    add e                                         ; $5263: $83
    db $d3                                        ; $5264: $d3
    inc a                                         ; $5265: $3c
    cp $1f                                        ; $5266: $fe $1f
    or $6f                                        ; $5268: $f6 $6f
    rst $38                                       ; $526a: $ff
    add c                                         ; $526b: $81
    rst $08                                       ; $526c: $cf

jr_0f2_526d:
    di                                            ; $526d: $f3
    rst $38                                       ; $526e: $ff
    db $fc                                        ; $526f: $fc
    ld h, a                                       ; $5270: $67
    cp $f7                                        ; $5271: $fe $f7
    ld c, $6f                                     ; $5273: $0e $6f
    sbc l                                         ; $5275: $9d
    rst $30                                       ; $5276: $f7
    ld hl, sp-$01                                 ; $5277: $f8 $ff
    sub b                                         ; $5279: $90
    rst $38                                       ; $527a: $ff
    ld b, c                                       ; $527b: $41
    or $0e                                        ; $527c: $f6 $0e

jr_0f2_527e:
    ld [bc], a                                    ; $527e: $02
    jr nc, jr_0f2_5209                            ; $527f: $30 $88

    inc a                                         ; $5281: $3c
    inc c                                         ; $5282: $0c
    ccf                                           ; $5283: $3f
    inc bc                                        ; $5284: $03
    rra                                           ; $5285: $1f
    add hl, sp                                    ; $5286: $39
    ld a, $06                                     ; $5287: $3e $06
    ld [bc], a                                    ; $5289: $02

jr_0f2_528a:
    jr c, jr_0f2_521a                             ; $528a: $38 $8e

    jr nc, jr_0f2_529e                            ; $528c: $30 $10

jr_0f2_528e:
    jr c, jr_0f2_5298                             ; $528e: $38 $08

    jr c, @+$2a                                   ; $5290: $38 $28

    jr c, jr_0f2_52bc                             ; $5292: $38 $28

    jr c, jr_0f2_529e                             ; $5294: $38 $08

    jr z, @+$1a                                   ; $5296: $28 $18

jr_0f2_5298:
    db $10                                        ; $5298: $10
    jr nc, jr_0f2_529d                            ; $5299: $30 $02

    jr nz, @+$06                                  ; $529b: $20 $04

jr_0f2_529d:
    nop                                           ; $529d: $00

jr_0f2_529e:
    ld [bc], a                                    ; $529e: $02
    rra                                           ; $529f: $1f
    ld e, $00                                     ; $52a0: $1e $00
    rst $38                                       ; $52a2: $ff
    dec c                                         ; $52a3: $0d
    inc b                                         ; $52a4: $04
    or $1c                                        ; $52a5: $f6 $1c
    db $eb                                        ; $52a7: $eb
    ld bc, $f6f2                                  ; $52a8: $01 $f2 $f6
    pop af                                        ; $52ab: $f1
    cp $f1                                        ; $52ac: $fe $f1
    inc b                                         ; $52ae: $04
    ld bc, $02fc                                  ; $52af: $01 $fc $02
    add hl, bc                                    ; $52b2: $09
    sbc h                                         ; $52b3: $9c
    rra                                           ; $52b4: $1f
    ld d, $1f                                     ; $52b5: $16 $1f
    ld d, $1f                                     ; $52b7: $16 $1f
    ld d, $1f                                     ; $52b9: $16 $1f
    rla                                           ; $52bb: $17

jr_0f2_52bc:
    ld [hl], $3b                                  ; $52bc: $36 $3b
    ld c, [hl]                                    ; $52be: $4e
    ld a, e                                       ; $52bf: $7b
    ld l, l                                       ; $52c0: $6d
    ld e, e                                       ; $52c1: $5b
    ld a, [$f59d]                                 ; $52c2: $fa $9d $f5
    sub [hl]                                      ; $52c5: $96
    cp $8f                                        ; $52c6: $fe $8f
    db $eb                                        ; $52c8: $eb
    sub a                                         ; $52c9: $97
    cp a                                          ; $52ca: $bf
    call nz, $615f                                ; $52cb: $c4 $5f $61
    dec sp                                        ; $52ce: $3b
    inc a                                         ; $52cf: $3c
    ld [bc], a                                    ; $52d0: $02
    rlca                                          ; $52d1: $07
    ld [bc], a                                    ; $52d2: $02
    ldh [$9e], a                                  ; $52d3: $e0 $9e
    rst $38                                       ; $52d5: $ff
    rra                                           ; $52d6: $1f
    db $fd                                        ; $52d7: $fd
    ld [bc], a                                    ; $52d8: $02
    ld a, [c]                                     ; $52d9: $f2
    cp a                                          ; $52da: $bf
    cp $1f                                        ; $52db: $fe $1f
    di                                            ; $52dd: $f3
    cpl                                           ; $52de: $2f
    cp $91                                        ; $52df: $fe $91
    rst $28                                       ; $52e1: $ef
    pop af                                        ; $52e2: $f1
    db $fd                                        ; $52e3: $fd
    cp $e7                                        ; $52e4: $fe $e7
    cp $f6                                        ; $52e6: $fe $f6
    rrca                                          ; $52e8: $0f
    rst $28                                       ; $52e9: $ef
    dec e                                         ; $52ea: $1d
    rst $30                                       ; $52eb: $f7
    ld hl, sp-$01                                 ; $52ec: $f8 $ff
    ret z                                         ; $52ee: $c8

    cp $21                                        ; $52ef: $fe $21
    di                                            ; $52f1: $f3
    rrca                                          ; $52f2: $0f
    ld [bc], a                                    ; $52f3: $02
    jr nc, jr_0f2_527e                            ; $52f4: $30 $88

jr_0f2_52f6:
    inc a                                         ; $52f6: $3c
    inc c                                         ; $52f7: $0c
    ccf                                           ; $52f8: $3f
    inc bc                                        ; $52f9: $03
    rra                                           ; $52fa: $1f
    add hl, sp                                    ; $52fb: $39
    ld a, $06                                     ; $52fc: $3e $06
    ld [bc], a                                    ; $52fe: $02
    jr c, jr_0f2_5303                             ; $52ff: $38 $02

    jr nz, jr_0f2_528e                            ; $5301: $20 $8b

jr_0f2_5303:
    db $10                                        ; $5303: $10
    jr nc, jr_0f2_533e                            ; $5304: $30 $38

    jr z, jr_0f2_5340                             ; $5306: $28 $38

    ld [$2818], sp                                ; $5308: $08 $18 $28
    jr c, jr_0f2_5315                             ; $530b: $38 $08

    jr nc, jr_0f2_5311                            ; $530d: $30 $02

    db $10                                        ; $530f: $10
    add c                                         ; $5310: $81

jr_0f2_5311:
    jr nc, jr_0f2_5315                            ; $5311: $30 $02

    jr nz, jr_0f2_5317                            ; $5313: $20 $02

jr_0f2_5315:
    nop                                           ; $5315: $00
    ld [bc], a                                    ; $5316: $02

jr_0f2_5317:
    ccf                                           ; $5317: $3f
    ld e, $00                                     ; $5318: $1e $00
    rst $38                                       ; $531a: $ff
    dec c                                         ; $531b: $0d
    inc b                                         ; $531c: $04
    or $1c                                        ; $531d: $f6 $1c
    db $eb                                        ; $531f: $eb
    ld bc, $f6f3                                  ; $5320: $01 $f3 $f6
    pop af                                        ; $5323: $f1
    cp $f0                                        ; $5324: $fe $f0
    dec b                                         ; $5326: $05
    nop                                           ; $5327: $00
    db $fc                                        ; $5328: $fc
    ld [bc], a                                    ; $5329: $02
    dec c                                         ; $532a: $0d
    sbc d                                         ; $532b: $9a
    dec e                                         ; $532c: $1d
    dec d                                         ; $532d: $15
    dec e                                         ; $532e: $1d
    dec d                                         ; $532f: $15
    rra                                           ; $5330: $1f
    rla                                           ; $5331: $17
    inc a                                         ; $5332: $3c
    scf                                           ; $5333: $37
    ld d, [hl]                                    ; $5334: $56
    ld a, e                                       ; $5335: $7b
    ld l, l                                       ; $5336: $6d
    ld e, e                                       ; $5337: $5b
    cp d                                          ; $5338: $ba
    db $dd                                        ; $5339: $dd
    push af                                       ; $533a: $f5
    sub [hl]                                      ; $533b: $96
    cp $8f                                        ; $533c: $fe $8f

jr_0f2_533e:
    db $eb                                        ; $533e: $eb
    sub a                                         ; $533f: $97

jr_0f2_5340:
    cp a                                          ; $5340: $bf
    call nz, Call_0f2_605f                        ; $5341: $c4 $5f $60
    inc sp                                        ; $5344: $33
    inc a                                         ; $5345: $3c
    ld [bc], a                                    ; $5346: $02
    rrca                                          ; $5347: $0f
    ld [bc], a                                    ; $5348: $02
    nop                                           ; $5349: $00
    ld [bc], a                                    ; $534a: $02
    ld a, a                                       ; $534b: $7f
    sbc [hl]                                      ; $534c: $9e
    rst $38                                       ; $534d: $ff
    add b                                         ; $534e: $80
    rst $38                                       ; $534f: $ff
    ld c, a                                       ; $5350: $4f
    pop af                                        ; $5351: $f1
    ld de, $1cfc                                  ; $5352: $11 $fc $1c
    ei                                            ; $5355: $fb
    daa                                           ; $5356: $27
    cp $91                                        ; $5357: $fe $91
    rst $08                                       ; $5359: $cf
    pop af                                        ; $535a: $f1
    db $fd                                        ; $535b: $fd
    cp $ef                                        ; $535c: $fe $ef
    or $f7                                        ; $535e: $f6 $f7
    rrca                                          ; $5360: $0f
    ld l, a                                       ; $5361: $6f
    sbc l                                         ; $5362: $9d
    push af                                       ; $5363: $f5
    ld a, [$48ff]                                 ; $5364: $fa $ff $48
    cp $a1                                        ; $5367: $fe $a1
    ei                                            ; $5369: $fb
    rlca                                          ; $536a: $07
    ld [bc], a                                    ; $536b: $02
    jr nc, jr_0f2_52f6                            ; $536c: $30 $88

jr_0f2_536e:
    ld a, h                                       ; $536e: $7c
    ld c, h                                       ; $536f: $4c
    ld a, a                                       ; $5370: $7f
    inc bc                                        ; $5371: $03
    rra                                           ; $5372: $1f
    ld a, c                                       ; $5373: $79
    ld a, $46                                     ; $5374: $3e $46
    ld [bc], a                                    ; $5376: $02
    ld a, b                                       ; $5377: $78
    ld [bc], a                                    ; $5378: $02
    nop                                           ; $5379: $00
    ld [bc], a                                    ; $537a: $02
    ld b, b                                       ; $537b: $40
    adc e                                         ; $537c: $8b
    ld h, b                                       ; $537d: $60
    jr nz, jr_0f2_53f0                            ; $537e: $20 $70

    ld d, b                                       ; $5380: $50
    ld [hl], b                                    ; $5381: $70
    db $10                                        ; $5382: $10
    ld [hl], b                                    ; $5383: $70
    db $10                                        ; $5384: $10
    ld [hl], b                                    ; $5385: $70
    db $10                                        ; $5386: $10
    ld h, b                                       ; $5387: $60
    ld [bc], a                                    ; $5388: $02
    jr nz, @-$7d                                  ; $5389: $20 $81

    ld h, b                                       ; $538b: $60
    ld [bc], a                                    ; $538c: $02
    ld b, b                                       ; $538d: $40
    ld [bc], a                                    ; $538e: $02
    nop                                           ; $538f: $00
    ld [bc], a                                    ; $5390: $02
    ccf                                           ; $5391: $3f
    inc e                                         ; $5392: $1c
    nop                                           ; $5393: $00
    rst $38                                       ; $5394: $ff
    dec c                                         ; $5395: $0d
    inc b                                         ; $5396: $04
    or $1c                                        ; $5397: $f6 $1c
    db $eb                                        ; $5399: $eb
    ld bc, $f6f4                                  ; $539a: $01 $f4 $f6
    pop af                                        ; $539d: $f1
    cp $f1                                        ; $539e: $fe $f1
    ld b, $01                                     ; $53a0: $06 $01
    ei                                            ; $53a2: $fb
    ld [bc], a                                    ; $53a3: $02
    ld [$1c98], sp                                ; $53a4: $08 $98 $1c
    inc d                                         ; $53a7: $14
    rra                                           ; $53a8: $1f
    rla                                           ; $53a9: $17
    inc a                                         ; $53aa: $3c
    scf                                           ; $53ab: $37
    ld d, [hl]                                    ; $53ac: $56
    ld a, e                                       ; $53ad: $7b
    ld l, l                                       ; $53ae: $6d
    ld e, e                                       ; $53af: $5b
    ld a, [$f59d]                                 ; $53b0: $fa $9d $f5

jr_0f2_53b3:
    sub [hl]                                      ; $53b3: $96
    rst $38                                       ; $53b4: $ff
    adc a                                         ; $53b5: $8f
    ei                                            ; $53b6: $fb
    sub a                                         ; $53b7: $97
    cp a                                          ; $53b8: $bf
    call nz, $615f                                ; $53b9: $c4 $5f $61
    scf                                           ; $53bc: $37
    jr c, jr_0f2_53c1                             ; $53bd: $38 $02

    rrca                                          ; $53bf: $0f
    inc b                                         ; $53c0: $04

jr_0f2_53c1:
    nop                                           ; $53c1: $00
    ld [bc], a                                    ; $53c2: $02
    rra                                           ; $53c3: $1f
    sbc [hl]                                      ; $53c4: $9e
    ld a, a                                       ; $53c5: $7f
    ld h, b                                       ; $53c6: $60
    cp c                                          ; $53c7: $b9
    sub $f7                                       ; $53c8: $d6 $f7
    adc a                                         ; $53ca: $8f
    db $fc                                        ; $53cb: $fc
    xor h                                         ; $53cc: $ac
    rst $38                                       ; $53cd: $ff
    and a                                         ; $53ce: $a7
    cp a                                          ; $53cf: $bf
    ret nz                                        ; $53d0: $c0

    rst $08                                       ; $53d1: $cf
    pop af                                        ; $53d2: $f1
    rst $38                                       ; $53d3: $ff
    db $fc                                        ; $53d4: $fc
    ld l, a                                       ; $53d5: $6f
    or $f7                                        ; $53d6: $f6 $f7
    ld c, $6f                                     ; $53d8: $0e $6f
    sbc l                                         ; $53da: $9d
    rst $30                                       ; $53db: $f7
    ld a, [$90ff]                                 ; $53dc: $fa $ff $90
    rst $38                                       ; $53df: $ff
    ld hl, $0ef6                                  ; $53e0: $21 $f6 $0e

jr_0f2_53e3:
    ld [bc], a                                    ; $53e3: $02
    jr nc, jr_0f2_536e                            ; $53e4: $30 $88

    db $fc                                        ; $53e6: $fc
    call z, $03ff                                 ; $53e7: $cc $ff $03
    sbc a                                         ; $53ea: $9f
    ld sp, hl                                     ; $53eb: $f9
    cp [hl]                                       ; $53ec: $be
    add $02                                       ; $53ed: $c6 $02
    ld a, b                                       ; $53ef: $78

jr_0f2_53f0:
    ld [bc], a                                    ; $53f0: $02
    add b                                         ; $53f1: $80
    adc [hl]                                      ; $53f2: $8e
    ret nz                                        ; $53f3: $c0

    ld b, b                                       ; $53f4: $40
    ldh [$a0], a                                  ; $53f5: $e0 $a0
    ldh [rNR41], a                                ; $53f7: $e0 $20
    ldh [$a0], a                                  ; $53f9: $e0 $a0
    ld h, b                                       ; $53fb: $60
    and b                                         ; $53fc: $a0
    ldh [$60], a                                  ; $53fd: $e0 $60
    ld b, b                                       ; $53ff: $40
    ret nz                                        ; $5400: $c0

    ld [bc], a                                    ; $5401: $02
    add b                                         ; $5402: $80
    ld [bc], a                                    ; $5403: $02
    nop                                           ; $5404: $00
    ld [bc], a                                    ; $5405: $02
    rra                                           ; $5406: $1f
    ld e, $00                                     ; $5407: $1e $00
    rst $38                                       ; $5409: $ff
    dec c                                         ; $540a: $0d
    inc b                                         ; $540b: $04
    or $1c                                        ; $540c: $f6 $1c
    db $eb                                        ; $540e: $eb
    ld bc, $f6f4                                  ; $540f: $01 $f4 $f6
    pop af                                        ; $5412: $f1
    cp $f2                                        ; $5413: $fe $f2
    ld b, $01                                     ; $5415: $06 $01
    ei                                            ; $5417: $fb
    ld [bc], a                                    ; $5418: $02
    jr nc, jr_0f2_53b3                            ; $5419: $30 $98

    jr c, jr_0f2_5445                             ; $541b: $38 $28

    rra                                           ; $541d: $1f
    rla                                           ; $541e: $17
    inc a                                         ; $541f: $3c
    scf                                           ; $5420: $37
    ld d, [hl]                                    ; $5421: $56
    ld a, e                                       ; $5422: $7b
    xor l                                         ; $5423: $ad
    db $db                                        ; $5424: $db
    ld a, [$f59d]                                 ; $5425: $fa $9d $f5
    sub [hl]                                      ; $5428: $96
    rst $38                                       ; $5429: $ff
    adc a                                         ; $542a: $8f
    ei                                            ; $542b: $fb
    sub a                                         ; $542c: $97
    cp a                                          ; $542d: $bf
    call nz, $615f                                ; $542e: $c4 $5f $61
    scf                                           ; $5431: $37
    jr c, jr_0f2_5436                             ; $5432: $38 $02

    rrca                                          ; $5434: $0f
    inc b                                         ; $5435: $04

jr_0f2_5436:
    nop                                           ; $5436: $00
    ld [bc], a                                    ; $5437: $02
    inc a                                         ; $5438: $3c
    sbc [hl]                                      ; $5439: $9e
    ld [hl], e                                    ; $543a: $73
    ld c, a                                       ; $543b: $4f
    cp $a1                                        ; $543c: $fe $a1
    pop hl                                        ; $543e: $e1
    sbc [hl]                                      ; $543f: $9e
    rst $28                                       ; $5440: $ef
    cp a                                          ; $5441: $bf
    rst $30                                       ; $5442: $f7
    xor a                                         ; $5443: $af
    rst $38                                       ; $5444: $ff

jr_0f2_5445:
    ret nz                                        ; $5445: $c0

    rst $38                                       ; $5446: $ff
    pop hl                                        ; $5447: $e1
    rst $38                                       ; $5448: $ff
    db $fc                                        ; $5449: $fc
    ld l, a                                       ; $544a: $6f
    or $f7                                        ; $544b: $f6 $f7
    ld c, $6f                                     ; $544d: $0e $6f
    sbc l                                         ; $544f: $9d
    rst $30                                       ; $5450: $f7
    ld a, [$90ff]                                 ; $5451: $fa $ff $90
    rst $38                                       ; $5454: $ff
    ld b, c                                       ; $5455: $41
    or $0e                                        ; $5456: $f6 $0e
    ld [bc], a                                    ; $5458: $02
    jr nc, jr_0f2_53e3                            ; $5459: $30 $88

    db $fc                                        ; $545b: $fc
    call z, $03ff                                 ; $545c: $cc $ff $03
    sbc a                                         ; $545f: $9f
    ld sp, hl                                     ; $5460: $f9
    cp [hl]                                       ; $5461: $be
    add $02                                       ; $5462: $c6 $02
    ld hl, sp-$72                                 ; $5464: $f8 $8e
    ret nz                                        ; $5466: $c0

    ld b, b                                       ; $5467: $40
    ldh [$a0], a                                  ; $5468: $e0 $a0
    ldh [rNR41], a                                ; $546a: $e0 $20
    ldh [$a0], a                                  ; $546c: $e0 $a0
    ldh [rNR41], a                                ; $546e: $e0 $20
    and b                                         ; $5470: $a0
    ld h, b                                       ; $5471: $60
    ld b, b                                       ; $5472: $40
    ret nz                                        ; $5473: $c0

    ld [bc], a                                    ; $5474: $02
    add b                                         ; $5475: $80
    inc b                                         ; $5476: $04
    nop                                           ; $5477: $00
    ld [bc], a                                    ; $5478: $02
    rra                                           ; $5479: $1f
    ld e, $00                                     ; $547a: $1e $00
    rst $38                                       ; $547c: $ff
    dec c                                         ; $547d: $0d
    inc b                                         ; $547e: $04
    or $1c                                        ; $547f: $f6 $1c
    db $eb                                        ; $5481: $eb
    ld bc, $f6f2                                  ; $5482: $01 $f2 $f6
    pop af                                        ; $5485: $f1
    cp $f0                                        ; $5486: $fe $f0
    inc b                                         ; $5488: $04
    nop                                           ; $5489: $00
    db $fc                                        ; $548a: $fc
    ld [bc], a                                    ; $548b: $02
    add hl, bc                                    ; $548c: $09
    sbc h                                         ; $548d: $9c
    rra                                           ; $548e: $1f
    ld d, $1f                                     ; $548f: $16 $1f
    ld d, $1f                                     ; $5491: $16 $1f
    ld d, $1f                                     ; $5493: $16 $1f
    rla                                           ; $5495: $17
    ld [hl], $3b                                  ; $5496: $36 $3b
    ld c, [hl]                                    ; $5498: $4e
    ld a, e                                       ; $5499: $7b
    ld l, l                                       ; $549a: $6d
    ld e, e                                       ; $549b: $5b
    ld a, [$f59d]                                 ; $549c: $fa $9d $f5
    sub [hl]                                      ; $549f: $96
    cp $8f                                        ; $54a0: $fe $8f
    db $eb                                        ; $54a2: $eb
    sub a                                         ; $54a3: $97
    cp a                                          ; $54a4: $bf
    call nz, $615f                                ; $54a5: $c4 $5f $61
    dec sp                                        ; $54a8: $3b
    inc a                                         ; $54a9: $3c
    ld [bc], a                                    ; $54aa: $02
    rlca                                          ; $54ab: $07
    inc bc                                        ; $54ac: $03
    rst $38                                       ; $54ad: $ff
    sbc l                                         ; $54ae: $9d
    nop                                           ; $54af: $00
    cp $1f                                        ; $54b0: $fe $1f
    ld [c], a                                     ; $54b2: $e2
    and e                                         ; $54b3: $a3
    db $fd                                        ; $54b4: $fd
    dec e                                         ; $54b5: $1d
    ei                                            ; $54b6: $fb
    daa                                           ; $54b7: $27
    rst $38                                       ; $54b8: $ff
    sub b                                         ; $54b9: $90
    rst $28                                       ; $54ba: $ef
    ldh a, [$fd]                                  ; $54bb: $f0 $fd
    cp $e7                                        ; $54bd: $fe $e7
    cp $f6                                        ; $54bf: $fe $f6
    rrca                                          ; $54c1: $0f
    rst $28                                       ; $54c2: $ef
    dec e                                         ; $54c3: $1d
    rst $30                                       ; $54c4: $f7
    ld hl, sp-$01                                 ; $54c5: $f8 $ff
    ret z                                         ; $54c7: $c8

    cp $21                                        ; $54c8: $fe $21
    di                                            ; $54ca: $f3
    rrca                                          ; $54cb: $0f
    ld [bc], a                                    ; $54cc: $02
    jr nc, @-$76                                  ; $54cd: $30 $88

    inc a                                         ; $54cf: $3c
    inc c                                         ; $54d0: $0c
    ccf                                           ; $54d1: $3f
    inc bc                                        ; $54d2: $03
    rra                                           ; $54d3: $1f
    add hl, sp                                    ; $54d4: $39
    ld a, $06                                     ; $54d5: $3e $06
    ld [bc], a                                    ; $54d7: $02
    jr c, jr_0f2_54dc                             ; $54d8: $38 $02

    nop                                           ; $54da: $00
    ld [bc], a                                    ; $54db: $02

jr_0f2_54dc:
    jr nz, jr_0f2_54e0                            ; $54dc: $20 $02

    jr nc, @-$75                                  ; $54de: $30 $89

jr_0f2_54e0:
    jr c, jr_0f2_54ea                             ; $54e0: $38 $08

    jr c, jr_0f2_550c                             ; $54e2: $38 $28

    jr jr_0f2_550e                                ; $54e4: $18 $28

    jr c, jr_0f2_54f0                             ; $54e6: $38 $08

    jr nc, jr_0f2_54ec                            ; $54e8: $30 $02

jr_0f2_54ea:
    db $10                                        ; $54ea: $10
    add c                                         ; $54eb: $81

jr_0f2_54ec:
    jr nc, jr_0f2_54f0                            ; $54ec: $30 $02

    jr nz, jr_0f2_54f2                            ; $54ee: $20 $02

jr_0f2_54f0:
    nop                                           ; $54f0: $00
    ld [bc], a                                    ; $54f1: $02

jr_0f2_54f2:
    ccf                                           ; $54f2: $3f
    inc e                                         ; $54f3: $1c
    nop                                           ; $54f4: $00
    rst $38                                       ; $54f5: $ff
    rrca                                          ; $54f6: $0f
    dec b                                         ; $54f7: $05
    or $1c                                        ; $54f8: $f6 $1c
    db $eb                                        ; $54fa: $eb
    ld bc, $f6f1                                  ; $54fb: $01 $f1 $f6
    rst $28                                       ; $54fe: $ef
    cp $ef                                        ; $54ff: $fe $ef
    inc bc                                        ; $5501: $03
    rst $38                                       ; $5502: $ff
    ei                                            ; $5503: $fb
    rst $38                                       ; $5504: $ff
    rst $38                                       ; $5505: $ff
    ld [bc], a                                    ; $5506: $02
    ld bc, $029e                                  ; $5507: $01 $9e $02
    inc bc                                        ; $550a: $03
    dec bc                                        ; $550b: $0b

jr_0f2_550c:
    ld a, [bc]                                    ; $550c: $0a
    rra                                           ; $550d: $1f

jr_0f2_550e:
    ld d, $1f                                     ; $550e: $16 $1f
    ld d, $1e                                     ; $5510: $16 $1e
    rla                                           ; $5512: $17
    scf                                           ; $5513: $37
    dec sp                                        ; $5514: $3b
    ld c, [hl]                                    ; $5515: $4e
    ld a, e                                       ; $5516: $7b
    ld l, l                                       ; $5517: $6d
    ld e, e                                       ; $5518: $5b
    ld a, [$f59d]                                 ; $5519: $fa $9d $f5
    sub [hl]                                      ; $551c: $96
    cp $8f                                        ; $551d: $fe $8f
    db $eb                                        ; $551f: $eb
    sub a                                         ; $5520: $97
    cp a                                          ; $5521: $bf
    call nz, Call_0f2_605f                        ; $5522: $c4 $5f $60
    dec sp                                        ; $5525: $3b
    inc a                                         ; $5526: $3c
    ld [bc], a                                    ; $5527: $02
    ld bc, $7f9e                                  ; $5528: $01 $9e $7f
    ld a, [hl]                                    ; $552b: $7e
    rst $38                                       ; $552c: $ff
    add b                                         ; $552d: $80
    call c, $a53f                                 ; $552e: $dc $3f $a5
    ld h, [hl]                                    ; $5531: $66
    db $e3                                        ; $5532: $e3
    inc hl                                        ; $5533: $23
    call c, $fbbc                                 ; $5534: $dc $bc $fb
    rlca                                          ; $5537: $07
    ld a, a                                       ; $5538: $7f
    or c                                          ; $5539: $b1
    rst $28                                       ; $553a: $ef
    ldh a, [$fd]                                  ; $553b: $f0 $fd
    cp $e7                                        ; $553d: $fe $e7
    cp $f6                                        ; $553f: $fe $f6
    rrca                                          ; $5541: $0f
    ld l, a                                       ; $5542: $6f
    sbc l                                         ; $5543: $9d
    rst $30                                       ; $5544: $f7
    ld hl, sp-$01                                 ; $5545: $f8 $ff
    ld c, b                                       ; $5547: $48
    ld [bc], a                                    ; $5548: $02
    db $10                                        ; $5549: $10
    adc b                                         ; $554a: $88
    inc e                                         ; $554b: $1c
    inc c                                         ; $554c: $0c
    rra                                           ; $554d: $1f
    inc bc                                        ; $554e: $03
    rra                                           ; $554f: $1f
    add hl, de                                    ; $5550: $19
    ld e, $06                                     ; $5551: $1e $06
    ld [bc], a                                    ; $5553: $02
    jr jr_0f2_555a                                ; $5554: $18 $04

    nop                                           ; $5556: $00
    ld [bc], a                                    ; $5557: $02
    db $10                                        ; $5558: $10
    adc e                                         ; $5559: $8b

jr_0f2_555a:
    jr jr_0f2_5564                                ; $555a: $18 $08

    inc e                                         ; $555c: $1c
    inc b                                         ; $555d: $04
    inc e                                         ; $555e: $1c
    inc d                                         ; $555f: $14
    inc c                                         ; $5560: $0c
    inc d                                         ; $5561: $14
    inc e                                         ; $5562: $1c
    inc b                                         ; $5563: $04

jr_0f2_5564:
    jr @+$04                                      ; $5564: $18 $02

    ld [$1885], sp                                ; $5566: $08 $85 $18
    rra                                           ; $5569: $1f
    inc d                                         ; $556a: $14
    ld e, $01                                     ; $556b: $1e $01
    ld [bc], a                                    ; $556d: $02
    rst $38                                       ; $556e: $ff
    ld a, [de]                                    ; $556f: $1a
    nop                                           ; $5570: $00
    add h                                         ; $5571: $84
    dec c                                         ; $5572: $0d
    inc bc                                        ; $5573: $03
    ld b, $0e                                     ; $5574: $06 $0e
    ld [bc], a                                    ; $5576: $02
    ld [$001a], sp                                ; $5577: $08 $1a $00
    rst $38                                       ; $557a: $ff
    rrca                                          ; $557b: $0f
    dec b                                         ; $557c: $05
    or $1c                                        ; $557d: $f6 $1c
    db $eb                                        ; $557f: $eb
    ld bc, $f6f0                                  ; $5580: $01 $f0 $f6
    db $ec                                        ; $5583: $ec
    cp $ed                                        ; $5584: $fe $ed
    ld bc, $f8fc                                  ; $5586: $01 $fc $f8
    db $fc                                        ; $5589: $fc
    nop                                           ; $558a: $00
    ld [bc], a                                    ; $558b: $02
    ld bc, $039e                                  ; $558c: $01 $9e $03
    ld [bc], a                                    ; $558f: $02
    rlca                                          ; $5590: $07
    inc b                                         ; $5591: $04
    rlca                                          ; $5592: $07
    inc b                                         ; $5593: $04
    rrca                                          ; $5594: $0f
    inc c                                         ; $5595: $0c
    rra                                           ; $5596: $1f
    ld d, $1f                                     ; $5597: $16 $1f
    ld d, $3f                                     ; $5599: $16 $3f
    scf                                           ; $559b: $37
    ld d, [hl]                                    ; $559c: $56
    ld a, e                                       ; $559d: $7b
    ld l, l                                       ; $559e: $6d
    ld e, e                                       ; $559f: $5b
    ld a, [$f59d]                                 ; $55a0: $fa $9d $f5
    sub [hl]                                      ; $55a3: $96
    rst $38                                       ; $55a4: $ff
    adc a                                         ; $55a5: $8f
    db $eb                                        ; $55a6: $eb
    sub a                                         ; $55a7: $97
    cp a                                          ; $55a8: $bf
    call nz, Call_0f2_605f                        ; $55a9: $c4 $5f $60
    ld [bc], a                                    ; $55ac: $02
    ld b, $8a                                     ; $55ad: $06 $8a
    dec e                                         ; $55af: $1d
    dec de                                        ; $55b0: $1b
    ld a, a                                       ; $55b1: $7f
    ld h, b                                       ; $55b2: $60
    and $9f                                       ; $55b3: $e6 $9f
    xor d                                         ; $55b5: $aa
    halt                                          ; $55b6: $76
    ld l, l                                       ; $55b7: $6d
    di                                            ; $55b8: $f3
    ld [bc], a                                    ; $55b9: $02
    sbc [hl]                                      ; $55ba: $9e
    ld [bc], a                                    ; $55bb: $02
    add b                                         ; $55bc: $80
    sub b                                         ; $55bd: $90
    ld b, b                                       ; $55be: $40
    ret nz                                        ; $55bf: $c0

    ld hl, sp-$48                                 ; $55c0: $f8 $b8
    cp $06                                        ; $55c2: $fe $06
    rst $38                                       ; $55c4: $ff
    ld sp, $e0df                                  ; $55c5: $31 $df $e0
    rst $38                                       ; $55c8: $ff
    db $fc                                        ; $55c9: $fc
    ld h, a                                       ; $55ca: $67
    cp $f6                                        ; $55cb: $fe $f6
    rrca                                          ; $55cd: $0f
    ld [bc], a                                    ; $55ce: $02
    ld b, $82                                     ; $55cf: $06 $82
    ld [bc], a                                    ; $55d1: $02
    ld b, $02                                     ; $55d2: $06 $02
    inc b                                         ; $55d4: $04
    ld c, $00                                     ; $55d5: $0e $00
    ld [bc], a                                    ; $55d7: $02
    inc b                                         ; $55d8: $04
    adc h                                         ; $55d9: $8c
    ld b, $02                                     ; $55da: $06 $02
    rlca                                          ; $55dc: $07
    ld bc, $0507                                  ; $55dd: $01 $07 $05
    inc bc                                        ; $55e0: $03
    dec b                                         ; $55e1: $05
    ld a, a                                       ; $55e2: $7f
    jp hl                                         ; $55e3: $e9


    ld bc, $0302                                  ; $55e4: $01 $02 $03
    inc bc                                        ; $55e7: $03
    add l                                         ; $55e8: $85
    ld bc, $0203                                  ; $55e9: $01 $03 $02
    rst $28                                       ; $55ec: $ef
    ldh a, [rSC]                                  ; $55ed: $f0 $02
    rra                                           ; $55ef: $1f
    inc d                                         ; $55f0: $14
    nop                                           ; $55f1: $00
    adc d                                         ; $55f2: $8a
    add b                                         ; $55f3: $80
    nop                                           ; $55f4: $00
    rst $18                                       ; $55f5: $df
    pop hl                                        ; $55f6: $e1
    db $fd                                        ; $55f7: $fd
    inc hl                                        ; $55f8: $23
    ld a, [$cc86]                                 ; $55f9: $fa $86 $cc
    inc a                                         ; $55fc: $3c
    ld [bc], a                                    ; $55fd: $02
    ldh a, [rNR14]                                ; $55fe: $f0 $14
    nop                                           ; $5600: $00
    rst $38                                       ; $5601: $ff
    rrca                                          ; $5602: $0f
    dec b                                         ; $5603: $05
    or $1c                                        ; $5604: $f6 $1c

jr_0f2_5606:
    db $eb                                        ; $5606: $eb
    ld bc, $f4f4                                  ; $5607: $01 $f4 $f4
    di                                            ; $560a: $f3
    db $fc                                        ; $560b: $fc
    db $ec                                        ; $560c: $ec
    inc b                                         ; $560d: $04
    db $fc                                        ; $560e: $fc
    inc b                                         ; $560f: $04
    db $eb                                        ; $5610: $eb
    inc c                                         ; $5611: $0c
    ld [bc], a                                    ; $5612: $02
    ld bc, $0398                                  ; $5613: $01 $98 $03
    ld [bc], a                                    ; $5616: $02
    rlca                                          ; $5617: $07
    dec b                                         ; $5618: $05
    rrca                                          ; $5619: $0f
    dec c                                         ; $561a: $0d
    ld d, $1d                                     ; $561b: $16 $1d
    dec hl                                        ; $561d: $2b
    ld [hl], $3e                                  ; $561e: $36 $3e
    daa                                           ; $5620: $27
    dec a                                         ; $5621: $3d
    dec h                                         ; $5622: $25
    ccf                                           ; $5623: $3f
    inc hl                                        ; $5624: $23
    ld a, $25                                     ; $5625: $3e $25
    cpl                                           ; $5627: $2f
    ld sp, $1817                                  ; $5628: $31 $17 $18
    dec c                                         ; $562b: $0d
    ld c, $02                                     ; $562c: $0e $02
    inc bc                                        ; $562e: $03
    inc b                                         ; $562f: $04
    nop                                           ; $5630: $00
    inc b                                         ; $5631: $04
    ld bc, $8102                                  ; $5632: $01 $02 $81
    ld [bc], a                                    ; $5635: $02
    rst $38                                       ; $5636: $ff
    sub h                                         ; $5637: $94
    xor a                                         ; $5638: $af
    ld d, c                                       ; $5639: $51
    pop de                                        ; $563a: $d1
    cp a                                          ; $563b: $bf
    ld a, l                                       ; $563c: $7d
    cp $db                                        ; $563d: $fe $db
    inc a                                         ; $563f: $3c
    ld a, [hl]                                    ; $5640: $7e
    add c                                         ; $5641: $81
    db $db                                        ; $5642: $db
    rst $20                                       ; $5643: $e7
    db $fc                                        ; $5644: $fc
    rst $38                                       ; $5645: $ff
    rst $28                                       ; $5646: $ef
    inc [hl]                                      ; $5647: $34
    rst $38                                       ; $5648: $ff
    ld c, b                                       ; $5649: $48
    cp $01                                        ; $564a: $fe $01
    ld [bc], a                                    ; $564c: $02
    rst $38                                       ; $564d: $ff
    ld [bc], a                                    ; $564e: $02
    nop                                           ; $564f: $00
    ld [bc], a                                    ; $5650: $02
    inc bc                                        ; $5651: $03

jr_0f2_5652:
    xor b                                         ; $5652: $a8
    rlca                                          ; $5653: $07
    inc b                                         ; $5654: $04
    dec e                                         ; $5655: $1d
    dec de                                        ; $5656: $1b
    dec l                                         ; $5657: $2d
    ld [hl], $7d                                  ; $5658: $36 $7d
    ld c, [hl]                                    ; $565a: $4e
    di                                            ; $565b: $f3
    sub e                                         ; $565c: $93
    ldh [$a0], a                                  ; $565d: $e0 $a0
    ldh [rNR41], a                                ; $565f: $e0 $20
    ld h, b                                       ; $5661: $60
    and b                                         ; $5662: $a0
    ldh [rNR41], a                                ; $5663: $e0 $20
    ldh [rNR41], a                                ; $5665: $e0 $20
    ret nc                                        ; $5667: $d0

    jr nc, jr_0f2_5652                            ; $5668: $30 $e8

    ld e, b                                       ; $566a: $58
    ld hl, sp-$78                                 ; $566b: $f8 $88
    ld [hl], h                                    ; $566d: $74
    call z, $c4fc                                 ; $566e: $cc $fc $c4
    db $fc                                        ; $5671: $fc
    and h                                         ; $5672: $a4
    call c, Call_0f2_7864                         ; $5673: $dc $64 $78
    adc b                                         ; $5676: $88
    ret nc                                        ; $5677: $d0

    jr nc, jr_0f2_56da                            ; $5678: $30 $60

    ldh [rSC], a                                  ; $567a: $e0 $02
    add b                                         ; $567c: $80
    inc d                                         ; $567d: $14
    nop                                           ; $567e: $00
    ld [bc], a                                    ; $567f: $02
    jr nc, jr_0f2_5606                            ; $5680: $30 $84

    add sp, -$28                                  ; $5682: $e8 $d8
    ret nc                                        ; $5684: $d0

    jr nc, jr_0f2_5689                            ; $5685: $30 $02

    ret nc                                        ; $5687: $d0

    ld [bc], a                                    ; $5688: $02

jr_0f2_5689:
    add b                                         ; $5689: $80
    add h                                         ; $568a: $84
    ld b, b                                       ; $568b: $40
    ret nz                                        ; $568c: $c0

    and b                                         ; $568d: $a0
    ld h, b                                       ; $568e: $60
    ld [bc], a                                    ; $568f: $02
    ret nz                                        ; $5690: $c0

    stop                                          ; $5691: $10 $00
    rst $38                                       ; $5693: $ff
    rrca                                          ; $5694: $0f
    dec b                                         ; $5695: $05
    or $1c                                        ; $5696: $f6 $1c
    db $eb                                        ; $5698: $eb
    ld bc, $f6f3                                  ; $5699: $01 $f3 $f6
    di                                            ; $569c: $f3
    cp $f3                                        ; $569d: $fe $f3
    ld b, $f3                                     ; $569f: $06 $f3
    ld c, $f3                                     ; $56a1: $0e $f3
    dec d                                         ; $56a3: $15
    ld [bc], a                                    ; $56a4: $02
    ld [$1c9a], sp                                ; $56a5: $08 $9a $1c
    inc d                                         ; $56a8: $14
    inc e                                         ; $56a9: $1c
    inc d                                         ; $56aa: $14
    rra                                           ; $56ab: $1f
    rla                                           ; $56ac: $17
    ld a, $35                                     ; $56ad: $3e $35
    ld e, e                                       ; $56af: $5b
    halt                                          ; $56b0: $76
    xor l                                         ; $56b1: $ad
    db $db                                        ; $56b2: $db
    ei                                            ; $56b3: $fb
    sbc h                                         ; $56b4: $9c
    push af                                       ; $56b5: $f5
    sub [hl]                                      ; $56b6: $96
    rst $38                                       ; $56b7: $ff
    adc a                                         ; $56b8: $8f
    ei                                            ; $56b9: $fb
    sub a                                         ; $56ba: $97

jr_0f2_56bb:
    cp a                                          ; $56bb: $bf
    call nz, $615f                                ; $56bc: $c4 $5f $61
    scf                                           ; $56bf: $37
    jr c, @+$04                                   ; $56c0: $38 $02

    rrca                                          ; $56c2: $0f
    ld [$0200], sp                                ; $56c3: $08 $00 $02
    ld hl, sp-$6c                                 ; $56c6: $f8 $94
    cp [hl]                                       ; $56c8: $be
    ld b, [hl]                                    ; $56c9: $46
    ld b, a                                       ; $56ca: $47
    ld sp, hl                                     ; $56cb: $f9
    or $f9                                        ; $56cc: $f6 $f9
    ld l, h                                       ; $56ce: $6c
    di                                            ; $56cf: $f3
    ld sp, hl                                     ; $56d0: $f9
    rlca                                          ; $56d1: $07
    ld l, a                                       ; $56d2: $6f
    sbc a                                         ; $56d3: $9f
    db $fd                                        ; $56d4: $fd
    cp $ff                                        ; $56d5: $fe $ff
    sub c                                         ; $56d7: $91
    db $fd                                        ; $56d8: $fd
    ld b, d                                       ; $56d9: $42

jr_0f2_56da:
    db $fc                                        ; $56da: $fc
    inc bc                                        ; $56db: $03
    ld [bc], a                                    ; $56dc: $02
    rst $38                                       ; $56dd: $ff
    ld c, $00                                     ; $56de: $0e $00
    ld [bc], a                                    ; $56e0: $02
    add a                                         ; $56e1: $87
    adc h                                         ; $56e2: $8c
    sbc l                                         ; $56e3: $9d
    sbc d                                         ; $56e4: $9a
    cp $e1                                        ; $56e5: $fe $e1
    rst $28                                       ; $56e7: $ef
    db $d3                                        ; $56e8: $d3
    call c, $e824                                 ; $56e9: $dc $24 $e8
    sbc b                                         ; $56ec: $98
    or b                                          ; $56ed: $b0
    ld [hl], b                                    ; $56ee: $70
    ld [bc], a                                    ; $56ef: $02
    ret nz                                        ; $56f0: $c0

    ld c, $00                                     ; $56f1: $0e $00
    ld [bc], a                                    ; $56f3: $02
    ld a, a                                       ; $56f4: $7f
    add h                                         ; $56f5: $84
    db $fd                                        ; $56f6: $fd
    add d                                         ; $56f7: $82
    rst $18                                       ; $56f8: $df
    ccf                                           ; $56f9: $3f
    ld [bc], a                                    ; $56fa: $02
    pop hl                                        ; $56fb: $e1
    inc d                                         ; $56fc: $14
    nop                                           ; $56fd: $00
    ld [bc], a                                    ; $56fe: $02
    ld b, $8c                                     ; $56ff: $06 $8c
    ld a, l                                       ; $5701: $7d
    ld a, e                                       ; $5702: $7b
    ld a, d                                       ; $5703: $7a
    ld b, $3a                                     ; $5704: $06 $3a
    ld a, d                                       ; $5706: $7a

jr_0f2_5707:
    jr nc, jr_0f2_5759                            ; $5707: $30 $50

    jr z, jr_0f2_5763                             ; $5709: $28 $58

    ld [hl], h                                    ; $570b: $74
    ld l, h                                       ; $570c: $6c
    ld [bc], a                                    ; $570d: $02
    jr jr_0f2_571a                                ; $570e: $18 $0a

    nop                                           ; $5710: $00
    rst $38                                       ; $5711: $ff
    dec c                                         ; $5712: $0d
    inc b                                         ; $5713: $04
    or $1c                                        ; $5714: $f6 $1c
    db $eb                                        ; $5716: $eb
    ld bc, $f6f4                                  ; $5717: $01 $f4 $f6

jr_0f2_571a:
    db $f4                                        ; $571a: $f4
    cp $f4                                        ; $571b: $fe $f4
    ld b, $f4                                     ; $571d: $06 $f4
    inc c                                         ; $571f: $0c
    ld [bc], a                                    ; $5720: $02
    jr nc, jr_0f2_56bb                            ; $5721: $30 $98

    jr c, jr_0f2_574d                             ; $5723: $38 $28

    rra                                           ; $5725: $1f
    rla                                           ; $5726: $17
    inc a                                         ; $5727: $3c
    scf                                           ; $5728: $37
    ld d, a                                       ; $5729: $57
    ld a, d                                       ; $572a: $7a
    xor l                                         ; $572b: $ad
    db $db                                        ; $572c: $db
    ld a, [$f59d]                                 ; $572d: $fa $9d $f5
    sub [hl]                                      ; $5730: $96
    rst $38                                       ; $5731: $ff
    adc a                                         ; $5732: $8f
    ei                                            ; $5733: $fb
    sub a                                         ; $5734: $97
    cp a                                          ; $5735: $bf
    call nz, $615f                                ; $5736: $c4 $5f $61
    scf                                           ; $5739: $37
    jr c, @+$04                                   ; $573a: $38 $02

    rrca                                          ; $573c: $0f
    ld b, $00                                     ; $573d: $06 $00
    ld [bc], a                                    ; $573f: $02
    ld bc, $fb8f                                  ; $5740: $01 $8f $fb
    ld a, [$4eb7]                                 ; $5743: $fa $b7 $4e
    ld b, e                                       ; $5746: $43
    cp $f5                                        ; $5747: $fe $f5
    ei                                            ; $5749: $fb
    ld l, h                                       ; $574a: $6c
    di                                            ; $574b: $f3
    ld sp, hl                                     ; $574c: $f9

jr_0f2_574d:
    rlca                                          ; $574d: $07
    ld l, a                                       ; $574e: $6f
    sbc a                                         ; $574f: $9f
    db $fd                                        ; $5750: $fd
    ld [bc], a                                    ; $5751: $02
    cp $85                                        ; $5752: $fe $85
    sub c                                         ; $5754: $91
    rst $38                                       ; $5755: $ff
    ld b, b                                       ; $5756: $40
    cp $01                                        ; $5757: $fe $01

jr_0f2_5759:
    ld [bc], a                                    ; $5759: $02
    rst $38                                       ; $575a: $ff
    inc b                                         ; $575b: $04
    nop                                           ; $575c: $00
    ld [bc], a                                    ; $575d: $02
    ldh [$98], a                                  ; $575e: $e0 $98
    ld hl, sp+$18                                 ; $5760: $f8 $18
    ld e, a                                       ; $5762: $5f

jr_0f2_5763:
    and a                                         ; $5763: $a7
    or a                                          ; $5764: $b7
    ld a, b                                       ; $5765: $78
    cp $3f                                        ; $5766: $fe $3f
    ld a, [c]                                     ; $5768: $f2
    inc de                                        ; $5769: $13
    reti                                          ; $576a: $d9


    xor c                                         ; $576b: $a9
    ld hl, sp-$38                                 ; $576c: $f8 $c8
    ld hl, sp-$78                                 ; $576e: $f8 $88
    ld hl, sp+$48                                 ; $5770: $f8 $48
    add sp, -$68                                  ; $5772: $e8 $98
    ret nc                                        ; $5774: $d0

    jr nc, jr_0f2_57d7                            ; $5775: $30 $60

    ldh [rSC], a                                  ; $5777: $e0 $02
    add b                                         ; $5779: $80
    ld b, $00                                     ; $577a: $06 $00
    ld [bc], a                                    ; $577c: $02
    jr nc, jr_0f2_5707                            ; $577d: $30 $88

    inc a                                         ; $577f: $3c
    inc c                                         ; $5780: $0c
    ccf                                           ; $5781: $3f
    inc bc                                        ; $5782: $03
    rra                                           ; $5783: $1f
    add hl, sp                                    ; $5784: $39
    ld a, $06                                     ; $5785: $3e $06
    ld [bc], a                                    ; $5787: $02
    jr c, jr_0f2_579c                             ; $5788: $38 $12

    nop                                           ; $578a: $00
    rst $38                                       ; $578b: $ff
    rrca                                          ; $578c: $0f
    dec b                                         ; $578d: $05
    or $1c                                        ; $578e: $f6 $1c
    db $eb                                        ; $5790: $eb
    ld bc, $f6f0                                  ; $5791: $01 $f0 $f6
    db $eb                                        ; $5794: $eb
    cp $ec                                        ; $5795: $fe $ec
    ld bc, $fbfb                                  ; $5797: $01 $fb $fb
    ei                                            ; $579a: $fb
    nop                                           ; $579b: $00

jr_0f2_579c:
    ld [bc], a                                    ; $579c: $02
    ld bc, $039e                                  ; $579d: $01 $9e $03
    ld [bc], a                                    ; $57a0: $02
    rlca                                          ; $57a1: $07
    inc b                                         ; $57a2: $04
    rlca                                          ; $57a3: $07
    ld b, $07                                     ; $57a4: $06 $07
    inc b                                         ; $57a6: $04
    cpl                                           ; $57a7: $2f
    inc l                                         ; $57a8: $2c
    ld a, l                                       ; $57a9: $7d
    ld e, [hl]                                    ; $57aa: $5e
    halt                                          ; $57ab: $76
    ld l, a                                       ; $57ac: $6f
    sbc e                                         ; $57ad: $9b
    rst $30                                       ; $57ae: $f7
    cp $99                                        ; $57af: $fe $99
    push af                                       ; $57b1: $f5
    sub [hl]                                      ; $57b2: $96
    rst $38                                       ; $57b3: $ff
    adc a                                         ; $57b4: $8f
    db $eb                                        ; $57b5: $eb
    sub a                                         ; $57b6: $97
    rst $38                                       ; $57b7: $ff
    add h                                         ; $57b8: $84
    ld e, a                                       ; $57b9: $5f
    ld h, c                                       ; $57ba: $61
    dec sp                                        ; $57bb: $3b
    inc a                                         ; $57bc: $3c
    ld [bc], a                                    ; $57bd: $02
    ld b, $8c                                     ; $57be: $06 $8c
    dec e                                         ; $57c0: $1d
    rra                                           ; $57c1: $1f
    ccf                                           ; $57c2: $3f
    ld [hl-], a                                   ; $57c3: $32
    ld l, [hl]                                    ; $57c4: $6e
    ld [hl], a                                    ; $57c5: $77
    add sp, -$64                                  ; $57c6: $e8 $9c
    cp d                                          ; $57c8: $ba
    halt                                          ; $57c9: $76
    ld c, l                                       ; $57ca: $4d
    rlc d                                         ; $57cb: $cb $02
    add [hl]                                      ; $57cd: $86
    ld [bc], a                                    ; $57ce: $02
    add b                                         ; $57cf: $80
    adc c                                         ; $57d0: $89
    ld c, [hl]                                    ; $57d1: $4e
    adc $ff                                       ; $57d2: $ce $ff
    or c                                          ; $57d4: $b1
    db $fd                                        ; $57d5: $fd
    ld b, [hl]                                    ; $57d6: $46

jr_0f2_57d7:
    rst $30                                       ; $57d7: $f7
    ld [$02c5], sp                                ; $57d8: $08 $c5 $02
    cp $83                                        ; $57db: $fe $83
    rst $38                                       ; $57dd: $ff
    rst $30                                       ; $57de: $f7
    dec c                                         ; $57df: $0d
    inc bc                                        ; $57e0: $03
    ld b, $81                                     ; $57e1: $06 $81
    ld [bc], a                                    ; $57e3: $02
    ld [bc], a                                    ; $57e4: $02
    inc b                                         ; $57e5: $04
    inc c                                         ; $57e6: $0c
    nop                                           ; $57e7: $00
    ld [bc], a                                    ; $57e8: $02
    inc b                                         ; $57e9: $04
    adc a                                         ; $57ea: $8f
    ld b, $02                                     ; $57eb: $06 $02
    rlca                                          ; $57ed: $07
    ld bc, $0507                                  ; $57ee: $01 $07 $05
    rlca                                          ; $57f1: $07
    dec b                                         ; $57f2: $05
    rlca                                          ; $57f3: $07
    ld bc, $c27e                                  ; $57f4: $01 $7e $c2
    ld [$1e14], sp                                ; $57f7: $08 $14 $1e
    ld [bc], a                                    ; $57fa: $02
    rra                                           ; $57fb: $1f
    add l                                         ; $57fc: $85
    add hl, bc                                    ; $57fd: $09
    rra                                           ; $57fe: $1f
    inc b                                         ; $57ff: $04
    dec e                                         ; $5800: $1d
    inc bc                                        ; $5801: $03
    ld [bc], a                                    ; $5802: $02
    cp $16                                        ; $5803: $fe $16
    nop                                           ; $5805: $00
    add [hl]                                      ; $5806: $86
    dec e                                         ; $5807: $1d
    inc bc                                        ; $5808: $03
    ld a, [de]                                    ; $5809: $1a
    ld b, $0c                                     ; $580a: $06 $0c
    inc e                                         ; $580c: $1c
    ld [bc], a                                    ; $580d: $02
    db $10                                        ; $580e: $10
    ld d, $00                                     ; $580f: $16 $00
    rst $38                                       ; $5811: $ff
    rrca                                          ; $5812: $0f
    dec b                                         ; $5813: $05
    or $1c                                        ; $5814: $f6 $1c
    db $eb                                        ; $5816: $eb
    ld bc, $f6f2                                  ; $5817: $01 $f2 $f6
    db $eb                                        ; $581a: $eb
    cp $ec                                        ; $581b: $fe $ec
    ld bc, $fefb                                  ; $581d: $01 $fb $fe
    ei                                            ; $5820: $fb
    ld bc, $0108                                  ; $5821: $01 $08 $01
    ld [bc], a                                    ; $5824: $02
    ccf                                           ; $5825: $3f
    sub h                                         ; $5826: $94
    ld a, d                                       ; $5827: $7a
    ld c, l                                       ; $5828: $4d
    ld l, h                                       ; $5829: $6c
    ld [hl], a                                    ; $582a: $77
    sub a                                         ; $582b: $97
    ei                                            ; $582c: $fb
    rst $38                                       ; $582d: $ff
    sbc h                                         ; $582e: $9c
    push af                                       ; $582f: $f5
    sub [hl]                                      ; $5830: $96
    rst $38                                       ; $5831: $ff
    adc a                                         ; $5832: $8f
    db $eb                                        ; $5833: $eb
    sub a                                         ; $5834: $97
    rst $38                                       ; $5835: $ff
    add h                                         ; $5836: $84
    ld e, [hl]                                    ; $5837: $5e
    ld h, c                                       ; $5838: $61
    dec sp                                        ; $5839: $3b
    inc a                                         ; $583a: $3c
    ld [bc], a                                    ; $583b: $02
    rrca                                          ; $583c: $0f
    ld [bc], a                                    ; $583d: $02
    inc bc                                        ; $583e: $03
    sbc [hl]                                      ; $583f: $9e
    ld c, $0f                                     ; $5840: $0e $0f
    rra                                           ; $5842: $1f
    add hl, de                                    ; $5843: $19
    scf                                           ; $5844: $37
    dec hl                                        ; $5845: $2b
    ld [hl], l                                    ; $5846: $75
    ld e, a                                       ; $5847: $5f
    sbc $b9                                       ; $5848: $de $b9
    rst $20                                       ; $584a: $e7
    and a                                         ; $584b: $a7
    ld h, b                                       ; $584c: $60
    and b                                         ; $584d: $a0
    ldh [rNR41], a                                ; $584e: $e0 $20
    ldh [rNR41], a                                ; $5850: $e0 $20
    cp a                                          ; $5852: $bf
    ld e, a                                       ; $5853: $5f
    rst $10                                       ; $5854: $d7
    jr z, @+$01                                   ; $5855: $28 $ff

    add e                                         ; $5857: $83
    ld e, a                                       ; $5858: $5f
    db $e4                                        ; $5859: $e4
    rst $38                                       ; $585a: $ff
    cp $67                                        ; $585b: $fe $67
    cp $03                                        ; $585d: $fe $03
    rlca                                          ; $585f: $07
    add e                                         ; $5860: $83
    ld bc, $0602                                  ; $5861: $01 $02 $06
    ld [bc], a                                    ; $5864: $02
    nop                                           ; $5865: $00
    ld [bc], a                                    ; $5866: $02

jr_0f2_5867:
    inc b                                         ; $5867: $04
    ld a, [bc]                                    ; $5868: $0a
    nop                                           ; $5869: $00
    ld [bc], a                                    ; $586a: $02
    inc b                                         ; $586b: $04
    sub [hl]                                      ; $586c: $96
    ld b, $02                                     ; $586d: $06 $02
    rlca                                          ; $586f: $07
    ld bc, $0503                                  ; $5870: $01 $03 $05
    rlca                                          ; $5873: $07
    dec b                                         ; $5874: $05
    cp a                                          ; $5875: $bf
    ld l, c                                       ; $5876: $69
    ldh [rP1], a                                  ; $5877: $e0 $00
    ld l, l                                       ; $5879: $6d
    sbc d                                         ; $587a: $9a
    rst $30                                       ; $587b: $f7
    ld hl, sp-$02                                 ; $587c: $f8 $fe
    ld c, c                                       ; $587e: $49
    ld a, e                                       ; $587f: $7b
    and a                                         ; $5880: $a7
    db $fc                                        ; $5881: $fc
    inc c                                         ; $5882: $0c
    ld [bc], a                                    ; $5883: $02
    ldh a, [rNR14]                                ; $5884: $f0 $14
    nop                                           ; $5886: $00
    add h                                         ; $5887: $84
    dec b                                         ; $5888: $05
    inc bc                                        ; $5889: $03
    ld [bc], a                                    ; $588a: $02
    ld b, $02                                     ; $588b: $06 $02
    inc b                                         ; $588d: $04
    jr jr_0f2_5890                                ; $588e: $18 $00

jr_0f2_5890:
    rst $38                                       ; $5890: $ff
    rrca                                          ; $5891: $0f
    dec b                                         ; $5892: $05
    or $1c                                        ; $5893: $f6 $1c
    db $eb                                        ; $5895: $eb
    ld bc, $f6f3                                  ; $5896: $01 $f3 $f6
    rst $28                                       ; $5899: $ef
    cp $ee                                        ; $589a: $fe $ee
    inc bc                                        ; $589c: $03
    cp $fe                                        ; $589d: $fe $fe
    cp $00                                        ; $589f: $fe $00
    ld [bc], a                                    ; $58a1: $02
    ld bc, $2102                                  ; $58a2: $01 $02 $21
    sbc b                                         ; $58a5: $98
    ld [hl], c                                    ; $58a6: $71
    ld d, c                                       ; $58a7: $51
    ccf                                           ; $58a8: $3f
    cpl                                           ; $58a9: $2f
    ld l, $35                                     ; $58aa: $2e $35
    ld d, [hl]                                    ; $58ac: $56
    ld a, e                                       ; $58ad: $7b
    xor l                                         ; $58ae: $ad
    db $db                                        ; $58af: $db
    ld a, [$f59d]                                 ; $58b0: $fa $9d $f5
    sub [hl]                                      ; $58b3: $96
    cp $8f                                        ; $58b4: $fe $8f
    ei                                            ; $58b6: $fb
    sub a                                         ; $58b7: $97
    cp a                                          ; $58b8: $bf
    call nz, Call_0f2_605f                        ; $58b9: $c4 $5f $60
    scf                                           ; $58bc: $37
    jr c, jr_0f2_58c1                             ; $58bd: $38 $02

    rrca                                          ; $58bf: $0f
    ld [bc], a                                    ; $58c0: $02

jr_0f2_58c1:
    nop                                           ; $58c1: $00
    ld [bc], a                                    ; $58c2: $02
    inc bc                                        ; $58c3: $03
    sbc [hl]                                      ; $58c4: $9e
    rra                                           ; $58c5: $1f
    ld e, $7d                                     ; $58c6: $1e $7d
    ld h, d                                       ; $58c8: $62
    db $fd                                        ; $58c9: $fd
    adc a                                         ; $58ca: $8f
    rst $30                                       ; $58cb: $f7
    ld d, [hl]                                    ; $58cc: $56
    pop af                                        ; $58cd: $f1
    ld de, $1cfc                                  ; $58ce: $11 $fc $1c
    ei                                            ; $58d1: $fb
    daa                                           ; $58d2: $27
    cp $91                                        ; $58d3: $fe $91
    rst $08                                       ; $58d5: $cf
    pop af                                        ; $58d6: $f1
    db $fd                                        ; $58d7: $fd
    cp $ef                                        ; $58d8: $fe $ef
    or $f7                                        ; $58da: $f6 $f7
    rrca                                          ; $58dc: $0f
    ld l, a                                       ; $58dd: $6f
    sbc l                                         ; $58de: $9d
    push af                                       ; $58df: $f5
    ld a, [$48ff]                                 ; $58e0: $fa $ff $48
    ld [bc], a                                    ; $58e3: $02
    jr jr_0f2_5867                                ; $58e4: $18 $81

    rla                                           ; $58e6: $17
    ld [bc], a                                    ; $58e7: $02
    rra                                           ; $58e8: $1f
    add a                                         ; $58e9: $87
    add hl, bc                                    ; $58ea: $09
    ld a, [de]                                    ; $58eb: $1a
    ld e, $08                                     ; $58ec: $1e $08
    jr jr_0f2_5904                                ; $58ee: $18 $14

    inc c                                         ; $58f0: $0c
    ld [bc], a                                    ; $58f1: $02

jr_0f2_58f2:
    jr jr_0f2_58f8                                ; $58f2: $18 $04

    nop                                           ; $58f4: $00
    ld [bc], a                                    ; $58f5: $02
    db $10                                        ; $58f6: $10
    adc h                                         ; $58f7: $8c

jr_0f2_58f8:
    jr jr_0f2_5902                                ; $58f8: $18 $08

    inc e                                         ; $58fa: $1c
    inc d                                         ; $58fb: $14
    inc e                                         ; $58fc: $1c
    inc b                                         ; $58fd: $04
    inc e                                         ; $58fe: $1c
    inc b                                         ; $58ff: $04
    inc e                                         ; $5900: $1c
    inc b                                         ; $5901: $04

jr_0f2_5902:
    inc e                                         ; $5902: $1c
    inc c                                         ; $5903: $0c

jr_0f2_5904:
    ld [bc], a                                    ; $5904: $02
    nop                                           ; $5905: $00
    add h                                         ; $5906: $84
    rst $38                                       ; $5907: $ff
    and c                                         ; $5908: $a1
    or $0e                                        ; $5909: $f6 $0e
    ld [bc], a                                    ; $590b: $02
    ld hl, sp+$18                                 ; $590c: $f8 $18
    nop                                           ; $590e: $00
    add d                                         ; $590f: $82
    ld bc, $0203                                  ; $5910: $01 $03 $02
    ld [bc], a                                    ; $5913: $02
    inc e                                         ; $5914: $1c
    nop                                           ; $5915: $00
    rst $38                                       ; $5916: $ff
    dec c                                         ; $5917: $0d
    inc b                                         ; $5918: $04
    or $1c                                        ; $5919: $f6 $1c
    db $eb                                        ; $591b: $eb
    ld bc, $f6f3                                  ; $591c: $01 $f3 $f6
    pop af                                        ; $591f: $f1
    cp $f2                                        ; $5920: $fe $f2
    dec b                                         ; $5922: $05
    ld bc, $02fb                                  ; $5923: $01 $fb $02
    ld sp, $399a                                  ; $5926: $31 $9a $39
    add hl, hl                                    ; $5929: $29
    dec e                                         ; $592a: $1d
    dec d                                         ; $592b: $15
    rra                                           ; $592c: $1f
    rla                                           ; $592d: $17
    inc a                                         ; $592e: $3c
    scf                                           ; $592f: $37
    ld d, [hl]                                    ; $5930: $56
    ld a, e                                       ; $5931: $7b
    xor l                                         ; $5932: $ad
    db $db                                        ; $5933: $db
    ld a, [$f59d]                                 ; $5934: $fa $9d $f5
    sub [hl]                                      ; $5937: $96
    rst $38                                       ; $5938: $ff
    adc a                                         ; $5939: $8f
    ei                                            ; $593a: $fb
    sub a                                         ; $593b: $97
    cp a                                          ; $593c: $bf
    call nz, $615f                                ; $593d: $c4 $5f $61
    scf                                           ; $5940: $37
    jr c, jr_0f2_5945                             ; $5941: $38 $02

    rrca                                          ; $5943: $0f
    ld [bc], a                                    ; $5944: $02

jr_0f2_5945:
    nop                                           ; $5945: $00
    ld [bc], a                                    ; $5946: $02
    ld [hl], b                                    ; $5947: $70
    sbc [hl]                                      ; $5948: $9e
    db $fc                                        ; $5949: $fc
    adc h                                         ; $594a: $8c
    ei                                            ; $594b: $fb
    ld b, a                                       ; $594c: $47

jr_0f2_594d:
    rst $30                                       ; $594d: $f7
    jr jr_0f2_594d                                ; $594e: $18 $fd

    ld e, a                                       ; $5950: $5f
    rst $30                                       ; $5951: $f7
    cpl                                           ; $5952: $2f
    rst $38                                       ; $5953: $ff
    add b                                         ; $5954: $80
    rst $18                                       ; $5955: $df
    db $e3                                        ; $5956: $e3
    rst $38                                       ; $5957: $ff
    db $fc                                        ; $5958: $fc
    ld h, a                                       ; $5959: $67
    cp $f7                                        ; $595a: $fe $f7
    ld c, $6f                                     ; $595c: $0e $6f
    sbc l                                         ; $595e: $9d
    push af                                       ; $595f: $f5
    ld a, [$90ff]                                 ; $5960: $fa $ff $90
    cp a                                          ; $5963: $bf
    ld h, c                                       ; $5964: $61
    or $0e                                        ; $5965: $f6 $0e
    ld [bc], a                                    ; $5967: $02
    jr nc, jr_0f2_58f2                            ; $5968: $30 $88

    ld a, h                                       ; $596a: $7c
    ld c, h                                       ; $596b: $4c
    ld a, a                                       ; $596c: $7f
    inc bc                                        ; $596d: $03
    rra                                           ; $596e: $1f
    ld a, c                                       ; $596f: $79
    ld a, $46                                     ; $5970: $3e $46
    ld [bc], a                                    ; $5972: $02
    ld a, b                                       ; $5973: $78
    adc [hl]                                      ; $5974: $8e
    ld h, b                                       ; $5975: $60
    jr nz, jr_0f2_59e8                            ; $5976: $20 $70

    db $10                                        ; $5978: $10
    jr nc, jr_0f2_59cb                            ; $5979: $30 $50

    ld [hl], b                                    ; $597b: $70
    ld d, b                                       ; $597c: $50
    ld [hl], b                                    ; $597d: $70
    db $10                                        ; $597e: $10
    ld d, b                                       ; $597f: $50
    jr nc, jr_0f2_59a2                            ; $5980: $30 $20

jr_0f2_5982:
    ld h, b                                       ; $5982: $60
    ld [bc], a                                    ; $5983: $02
    ld b, b                                       ; $5984: $40
    inc b                                         ; $5985: $04
    nop                                           ; $5986: $00
    ld [bc], a                                    ; $5987: $02
    rra                                           ; $5988: $1f
    ld e, $00                                     ; $5989: $1e $00
    rst $38                                       ; $598b: $ff
    inc de                                        ; $598c: $13
    rlca                                          ; $598d: $07
    or $0d                                        ; $598e: $f6 $0d
    add sp, -$01                                  ; $5990: $e8 $ff
    rst $20                                       ; $5992: $e7
    ld sp, hl                                     ; $5993: $f9
    db $e3                                        ; $5994: $e3
    ld bc, $09e4                                  ; $5995: $01 $e4 $09
    di                                            ; $5998: $f3
    pop af                                        ; $5999: $f1
    di                                            ; $599a: $f3
    ld sp, hl                                     ; $599b: $f9
    di                                            ; $599c: $f3
    ld bc, $07f3                                  ; $599d: $01 $f3 $07
    ld [bc], a                                    ; $59a0: $02
    dec b                                         ; $59a1: $05

jr_0f2_59a2:
    ld [bc], a                                    ; $59a2: $02
    rlca                                          ; $59a3: $07
    sub [hl]                                      ; $59a4: $96
    ld c, $0f                                     ; $59a5: $0e $0f
    add hl, de                                    ; $59a7: $19
    rra                                           ; $59a8: $1f
    jr nc, @+$41                                  ; $59a9: $30 $3f

    ld h, h                                       ; $59ab: $64
    ld a, a                                       ; $59ac: $7f
    inc hl                                        ; $59ad: $23
    ccf                                           ; $59ae: $3f
    ld b, e                                       ; $59af: $43
    ld a, a                                       ; $59b0: $7f
    inc h                                         ; $59b1: $24
    ccf                                           ; $59b2: $3f
    ld h, b                                       ; $59b3: $60
    ld a, a                                       ; $59b4: $7f
    ld d, e                                       ; $59b5: $53
    ld a, a                                       ; $59b6: $7f
    cp [hl]                                       ; $59b7: $be
    rst $38                                       ; $59b8: $ff
    ei                                            ; $59b9: $fb
    rst $38                                       ; $59ba: $ff
    ld [bc], a                                    ; $59bb: $02
    ld a, a                                       ; $59bc: $7f
    add h                                         ; $59bd: $84
    or b                                          ; $59be: $b0
    rst $38                                       ; $59bf: $ff
    ld b, b                                       ; $59c0: $40
    ld a, a                                       ; $59c1: $7f
    ld [bc], a                                    ; $59c2: $02
    ld h, e                                       ; $59c3: $63
    sbc [hl]                                      ; $59c4: $9e
    rst $38                                       ; $59c5: $ff
    sbc h                                         ; $59c6: $9c
    ld a, a                                       ; $59c7: $7f
    ld b, a                                       ; $59c8: $47
    db $fd                                        ; $59c9: $fd
    add a                                         ; $59ca: $87

jr_0f2_59cb:
    rst $38                                       ; $59cb: $ff
    adc $61                                       ; $59cc: $ce $61
    rst $38                                       ; $59ce: $ff
    or b                                          ; $59cf: $b0
    rst $38                                       ; $59d0: $ff
    dec sp                                        ; $59d1: $3b
    rst $38                                       ; $59d2: $ff
    sub [hl]                                      ; $59d3: $96
    rst $38                                       ; $59d4: $ff
    set 7, a                                      ; $59d5: $cb $ff
    ld d, [hl]                                    ; $59d7: $56
    cp $ec                                        ; $59d8: $fe $ec
    db $fc                                        ; $59da: $fc
    ld a, $fe                                     ; $59db: $3e $fe
    rst $38                                       ; $59dd: $ff
    pop hl                                        ; $59de: $e1
    ld a, a                                       ; $59df: $7f
    ld a, [c]                                     ; $59e0: $f2
    xor a                                         ; $59e1: $af
    rst $38                                       ; $59e2: $ff
    ld [bc], a                                    ; $59e3: $02
    add b                                         ; $59e4: $80
    ld [bc], a                                    ; $59e5: $02
    ret nc                                        ; $59e6: $d0

    adc c                                         ; $59e7: $89

jr_0f2_59e8:
    sub [hl]                                      ; $59e8: $96
    or $ef                                        ; $59e9: $f6 $ef
    ld a, c                                       ; $59eb: $79
    add [hl]                                      ; $59ec: $86
    ld a, [hl]                                    ; $59ed: $7e
    ld b, $fe                                     ; $59ee: $06 $fe
    inc e                                         ; $59f0: $1c
    ld [bc], a                                    ; $59f1: $02
    db $fc                                        ; $59f2: $fc
    add e                                         ; $59f3: $83
    db $f4                                        ; $59f4: $f4
    jr c, jr_0f2_5a17                             ; $59f5: $38 $20

    ld b, $00                                     ; $59f7: $06 $00
    ld [bc], a                                    ; $59f9: $02
    ret nz                                        ; $59fa: $c0

    ld [bc], a                                    ; $59fb: $02
    ldh [rSC], a                                  ; $59fc: $e0 $02
    jr nc, jr_0f2_5982                            ; $59fe: $30 $82

    jr c, jr_0f2_5a2a                             ; $5a00: $38 $28

    ld a, [bc]                                    ; $5a02: $0a
    nop                                           ; $5a03: $00
    ld [bc], a                                    ; $5a04: $02
    rrca                                          ; $5a05: $0f
    adc b                                         ; $5a06: $88
    ccf                                           ; $5a07: $3f
    ld sp, $dfff                                  ; $5a08: $31 $ff $df
    rst $38                                       ; $5a0b: $ff
    adc a                                         ; $5a0c: $8f
    ld a, a                                       ; $5a0d: $7f
    ld b, c                                       ; $5a0e: $41
    ld [bc], a                                    ; $5a0f: $02
    ccf                                           ; $5a10: $3f
    ld [de], a                                    ; $5a11: $12
    nop                                           ; $5a12: $00
    sub b                                         ; $5a13: $90
    sbc $ff                                       ; $5a14: $de $ff
    or b                                          ; $5a16: $b0

jr_0f2_5a17:
    rst $38                                       ; $5a17: $ff
    jp z, $ddff                                   ; $5a18: $ca $ff $dd

    rst $38                                       ; $5a1b: $ff
    xor d                                         ; $5a1c: $aa
    rst $38                                       ; $5a1d: $ff
    push de                                       ; $5a1e: $d5
    rst $38                                       ; $5a1f: $ff
    xor d                                         ; $5a20: $aa
    rst $38                                       ; $5a21: $ff
    rst $18                                       ; $5a22: $df
    rst $38                                       ; $5a23: $ff
    ld [bc], a                                    ; $5a24: $02
    dec a                                         ; $5a25: $3d
    ld [bc], a                                    ; $5a26: $02
    db $10                                        ; $5a27: $10
    inc b                                         ; $5a28: $04
    nop                                           ; $5a29: $00

jr_0f2_5a2a:
    sub l                                         ; $5a2a: $95
    ld b, d                                       ; $5a2b: $42
    cp $e1                                        ; $5a2c: $fe $e1
    rst $38                                       ; $5a2e: $ff
    jr c, @+$01                                   ; $5a2f: $38 $ff

    ld [$06ff], sp                                ; $5a31: $08 $ff $06
    rst $38                                       ; $5a34: $ff
    dec h                                         ; $5a35: $25
    rst $38                                       ; $5a36: $ff
    ld [hl-], a                                   ; $5a37: $32
    rst $18                                       ; $5a38: $df
    ei                                            ; $5a39: $fb
    adc a                                         ; $5a3a: $8f
    ld a, [$23df]                                 ; $5a3b: $fa $df $23
    rst $38                                       ; $5a3e: $ff
    rst $08                                       ; $5a3f: $cf
    ld [bc], a                                    ; $5a40: $02
    rst $38                                       ; $5a41: $ff
    add e                                         ; $5a42: $83
    or b                                          ; $5a43: $b0
    rst $38                                       ; $5a44: $ff
    cp $02                                        ; $5a45: $fe $02
    ld b, c                                       ; $5a47: $41
    ld b, $00                                     ; $5a48: $06 $00
    adc h                                         ; $5a4a: $8c
    ld l, $2a                                     ; $5a4b: $2e $2a
    daa                                           ; $5a4d: $27
    dec h                                         ; $5a4e: $25
    scf                                           ; $5a4f: $37
    dec [hl]                                      ; $5a50: $35
    rla                                           ; $5a51: $17
    dec [hl]                                      ; $5a52: $35
    ld e, $3a                                     ; $5a53: $1e $3a
    ld a, $3a                                     ; $5a55: $3e $3a
    ld [bc], a                                    ; $5a57: $02
    inc a                                         ; $5a58: $3c
    add h                                         ; $5a59: $84
    ld a, $22                                     ; $5a5a: $3e $22
    ccf                                           ; $5a5c: $3f
    dec a                                         ; $5a5d: $3d
    ld [bc], a                                    ; $5a5e: $02
    ld [hl-], a                                   ; $5a5f: $32
    add h                                         ; $5a60: $84
    jr c, jr_0f2_5a6b                             ; $5a61: $38 $08

    jr c, jr_0f2_5a8d                             ; $5a63: $38 $28

    ld [bc], a                                    ; $5a65: $02
    db $10                                        ; $5a66: $10
    inc b                                         ; $5a67: $04
    nop                                           ; $5a68: $00
    rst $38                                       ; $5a69: $ff
    inc de                                        ; $5a6a: $13

jr_0f2_5a6b:
    rlca                                          ; $5a6b: $07
    or $0d                                        ; $5a6c: $f6 $0d
    add sp, -$01                                  ; $5a6e: $e8 $ff
    ld a, [c]                                     ; $5a70: $f2
    ld a, [c]                                     ; $5a71: $f2
    and $fa                                       ; $5a72: $e6 $fa
    or $fa                                        ; $5a74: $f6 $fa
    db $e3                                        ; $5a76: $e3
    ld [bc], a                                    ; $5a77: $02
    di                                            ; $5a78: $f3
    ld [bc], a                                    ; $5a79: $02
    db $e4                                        ; $5a7a: $e4
    ld a, [bc]                                    ; $5a7b: $0a
    db $f4                                        ; $5a7c: $f4
    ld a, [bc]                                    ; $5a7d: $0a
    inc b                                         ; $5a7e: $04
    ld bc, $0002                                  ; $5a7f: $01 $02 $00
    ld [bc], a                                    ; $5a82: $02
    ld bc, $0002                                  ; $5a83: $01 $02 $00
    ld [bc], a                                    ; $5a86: $02
    ld bc, $0f02                                  ; $5a87: $01 $02 $0f
    adc b                                         ; $5a8a: $88
    ld a, $33                                     ; $5a8b: $3e $33

jr_0f2_5a8d:
    rst $38                                       ; $5a8d: $ff
    rst $18                                       ; $5a8e: $df
    rst $38                                       ; $5a8f: $ff
    adc a                                         ; $5a90: $8f
    ld a, a                                       ; $5a91: $7f
    ld b, e                                       ; $5a92: $43
    ld [bc], a                                    ; $5a93: $02
    ccf                                           ; $5a94: $3f
    ld [bc], a                                    ; $5a95: $02
    ld bc, $0006                                  ; $5a96: $01 $06 $00
    ld [bc], a                                    ; $5a99: $02
    ld [bc], a                                    ; $5a9a: $02
    ld [bc], a                                    ; $5a9b: $02
    rlca                                          ; $5a9c: $07
    add d                                         ; $5a9d: $82
    ld e, $1f                                     ; $5a9e: $1e $1f
    ld [bc], a                                    ; $5aa0: $02
    rrca                                          ; $5aa1: $0f
    sub e                                         ; $5aa2: $93
    ld [hl-], a                                   ; $5aa3: $32
    ccf                                           ; $5aa4: $3f
    ld h, l                                       ; $5aa5: $65
    ld a, a                                       ; $5aa6: $7f
    ld hl, $433f                                  ; $5aa7: $21 $3f $43
    ld a, a                                       ; $5aaa: $7f
    ld [c], a                                     ; $5aab: $e2
    rst $38                                       ; $5aac: $ff
    ld b, a                                       ; $5aad: $47
    ld a, a                                       ; $5aae: $7f
    adc b                                         ; $5aaf: $88
    rst $38                                       ; $5ab0: $ff
    ret nz                                        ; $5ab1: $c0

    rst $38                                       ; $5ab2: $ff
    ld d, a                                       ; $5ab3: $57
    rst $38                                       ; $5ab4: $ff
    db $fc                                        ; $5ab5: $fc
    inc bc                                        ; $5ab6: $03
    rst $38                                       ; $5ab7: $ff
    sub c                                         ; $5ab8: $91
    ld h, b                                       ; $5ab9: $60
    rst $38                                       ; $5aba: $ff
    add b                                         ; $5abb: $80
    rst $38                                       ; $5abc: $ff
    cp h                                          ; $5abd: $bc
    rst $38                                       ; $5abe: $ff
    ld l, b                                       ; $5abf: $68
    rst $38                                       ; $5ac0: $ff
    or h                                          ; $5ac1: $b4
    rst $38                                       ; $5ac2: $ff
    rst $10                                       ; $5ac3: $d7
    rst $38                                       ; $5ac4: $ff
    add hl, hl                                    ; $5ac5: $29
    rst $38                                       ; $5ac6: $ff
    ld d, [hl]                                    ; $5ac7: $56
    rst $38                                       ; $5ac8: $ff
    cp l                                          ; $5ac9: $bd
    inc bc                                        ; $5aca: $03
    rst $38                                       ; $5acb: $ff
    ld [bc], a                                    ; $5acc: $02
    ld a, e                                       ; $5acd: $7b
    ld [bc], a                                    ; $5ace: $02
    jr nz, jr_0f2_5adb                            ; $5acf: $20 $0a

    nop                                           ; $5ad1: $00
    ld [bc], a                                    ; $5ad2: $02
    ld h, e                                       ; $5ad3: $63
    sbc b                                         ; $5ad4: $98
    rst $38                                       ; $5ad5: $ff
    sbc h                                         ; $5ad6: $9c
    ld a, a                                       ; $5ad7: $7f
    ld b, a                                       ; $5ad8: $47
    db $fd                                        ; $5ad9: $fd
    add a                                         ; $5ada: $87

jr_0f2_5adb:
    rst $38                                       ; $5adb: $ff
    adc $61                                       ; $5adc: $ce $61
    rst $38                                       ; $5ade: $ff
    jr nc, @+$01                                  ; $5adf: $30 $ff

    dec sp                                        ; $5ae1: $3b
    rst $38                                       ; $5ae2: $ff
    ld d, $ff                                     ; $5ae3: $16 $ff
    dec bc                                        ; $5ae5: $0b
    rst $38                                       ; $5ae6: $ff
    call c, $b8fc                                 ; $5ae7: $dc $fc $b8
    ld hl, sp+$51                                 ; $5aea: $f8 $51
    pop af                                        ; $5aec: $f1
    ld [bc], a                                    ; $5aed: $02
    cp $99                                        ; $5aee: $fe $99
    ld a, l                                       ; $5af0: $7d
    add a                                         ; $5af1: $87
    rst $38                                       ; $5af2: $ff
    add $7f                                       ; $5af3: $c6 $7f
    xor $c3                                       ; $5af5: $ee $c3
    rst $38                                       ; $5af7: $ff
    ld sp, $10ff                                  ; $5af8: $31 $ff $10
    rst $38                                       ; $5afb: $ff
    add hl, bc                                    ; $5afc: $09
    rst $38                                       ; $5afd: $ff
    ld c, d                                       ; $5afe: $4a
    rst $38                                       ; $5aff: $ff
    ld h, l                                       ; $5b00: $65
    cp a                                          ; $5b01: $bf
    rst $30                                       ; $5b02: $f7
    rra                                           ; $5b03: $1f
    push af                                       ; $5b04: $f5
    cp a                                          ; $5b05: $bf
    ld b, a                                       ; $5b06: $47
    rst $38                                       ; $5b07: $ff
    sbc a                                         ; $5b08: $9f
    ld [bc], a                                    ; $5b09: $02
    rst $38                                       ; $5b0a: $ff
    add e                                         ; $5b0b: $83
    ld h, b                                       ; $5b0c: $60
    rst $38                                       ; $5b0d: $ff
    db $fd                                        ; $5b0e: $fd
    ld [bc], a                                    ; $5b0f: $02
    add d                                         ; $5b10: $82
    inc b                                         ; $5b11: $04
    nop                                           ; $5b12: $00
    ld [bc], a                                    ; $5b13: $02
    add b                                         ; $5b14: $80
    ld [bc], a                                    ; $5b15: $02
    ret nc                                        ; $5b16: $d0

    adc c                                         ; $5b17: $89
    sub [hl]                                      ; $5b18: $96
    or $ef                                        ; $5b19: $f6 $ef
    ld a, c                                       ; $5b1b: $79
    add [hl]                                      ; $5b1c: $86
    ld a, [hl]                                    ; $5b1d: $7e
    ld b, $fe                                     ; $5b1e: $06 $fe
    inc e                                         ; $5b20: $1c
    ld [bc], a                                    ; $5b21: $02
    db $fc                                        ; $5b22: $fc
    add e                                         ; $5b23: $83
    db $f4                                        ; $5b24: $f4
    jr c, jr_0f2_5b47                             ; $5b25: $38 $20

    inc b                                         ; $5b27: $04
    nop                                           ; $5b28: $00
    ld [bc], a                                    ; $5b29: $02
    add b                                         ; $5b2a: $80
    ld [bc], a                                    ; $5b2b: $02
    ret nz                                        ; $5b2c: $c0

    ld [bc], a                                    ; $5b2d: $02
    ld h, b                                       ; $5b2e: $60
    sub b                                         ; $5b2f: $90
    ldh a, [$d0]                                  ; $5b30: $f0 $d0
    ldh a, [$d0]                                  ; $5b32: $f0 $d0
    cp b                                          ; $5b34: $b8
    xor b                                         ; $5b35: $a8
    jr c, @+$2a                                   ; $5b36: $38 $28

    cp b                                          ; $5b38: $b8
    xor b                                         ; $5b39: $a8
    cp b                                          ; $5b3a: $b8
    xor b                                         ; $5b3b: $a8
    ldh a, [$d0]                                  ; $5b3c: $f0 $d0
    ldh a, [$d0]                                  ; $5b3e: $f0 $d0
    ld [bc], a                                    ; $5b40: $02
    ldh [$84], a                                  ; $5b41: $e0 $84
    ldh a, [rNR10]                                ; $5b43: $f0 $10
    ld hl, sp-$18                                 ; $5b45: $f8 $e8

jr_0f2_5b47:
    ld [bc], a                                    ; $5b47: $02
    sub b                                         ; $5b48: $90
    add h                                         ; $5b49: $84
    ret nz                                        ; $5b4a: $c0

    ld b, b                                       ; $5b4b: $40
    ret nz                                        ; $5b4c: $c0

    ld b, b                                       ; $5b4d: $40
    ld [bc], a                                    ; $5b4e: $02
    add b                                         ; $5b4f: $80

jr_0f2_5b50:
    ld b, $00                                     ; $5b50: $06 $00
    rst $38                                       ; $5b52: $ff
    dec d                                         ; $5b53: $15
    ld [$0df6], sp                                ; $5b54: $08 $f6 $0d
    add sp, -$01                                  ; $5b57: $e8 $ff
    rst $20                                       ; $5b59: $e7
    ld hl, sp-$1c                                 ; $5b5a: $f8 $e4
    nop                                           ; $5b5c: $00
    db $e4                                        ; $5b5d: $e4
    ld [$0be7], sp                                ; $5b5e: $08 $e7 $0b
    db $f4                                        ; $5b61: $f4
    ld a, [c]                                     ; $5b62: $f2
    db $f4                                        ; $5b63: $f4
    ld a, [$02f4]                                 ; $5b64: $fa $f4 $02
    db $f4                                        ; $5b67: $f4
    rlca                                          ; $5b68: $07
    ld [bc], a                                    ; $5b69: $02
    ld [bc], a                                    ; $5b6a: $02
    ld [bc], a                                    ; $5b6b: $02
    rlca                                          ; $5b6c: $07
    adc a                                         ; $5b6d: $8f
    dec e                                         ; $5b6e: $1d
    rra                                           ; $5b6f: $1f
    ld [$390f], sp                                ; $5b70: $08 $0f $39
    ccf                                           ; $5b73: $3f
    ld h, $3f                                     ; $5b74: $26 $3f
    ld b, e                                       ; $5b76: $43
    ld a, a                                       ; $5b77: $7f
    ret nz                                        ; $5b78: $c0

    rst $38                                       ; $5b79: $ff
    jr z, jr_0f2_5bbb                             ; $5b7a: $28 $3f

    ld e, l                                       ; $5b7c: $5d
    inc bc                                        ; $5b7d: $03
    ld a, a                                       ; $5b7e: $7f
    add h                                         ; $5b7f: $84
    sbc [hl]                                      ; $5b80: $9e
    rst $38                                       ; $5b81: $ff
    db $fd                                        ; $5b82: $fd
    rst $38                                       ; $5b83: $ff
    ld [bc], a                                    ; $5b84: $02
    ld a, a                                       ; $5b85: $7f
    add h                                         ; $5b86: $84
    cp h                                          ; $5b87: $bc
    rst $38                                       ; $5b88: $ff
    ld h, b                                       ; $5b89: $60
    ld a, a                                       ; $5b8a: $7f
    ld [bc], a                                    ; $5b8b: $02
    inc c                                         ; $5b8c: $0c
    sub l                                         ; $5b8d: $95
    rra                                           ; $5b8e: $1f
    inc de                                        ; $5b8f: $13
    ld c, a                                       ; $5b90: $4f
    ld c, b                                       ; $5b91: $48
    rst $38                                       ; $5b92: $ff
    ldh a, [$9f]                                  ; $5b93: $f0 $9f
    ld sp, hl                                     ; $5b95: $f9
    call z, $8eff                                 ; $5b96: $cc $ff $8e
    rst $38                                       ; $5b99: $ff
    ld d, a                                       ; $5b9a: $57
    rst $38                                       ; $5b9b: $ff
    ld h, h                                       ; $5b9c: $64
    rst $38                                       ; $5b9d: $ff
    db $d3                                        ; $5b9e: $d3
    rst $38                                       ; $5b9f: $ff
    ld l, h                                       ; $5ba0: $6c
    db $fc                                        ; $5ba1: $fc
    ld a, h                                       ; $5ba2: $7c
    ld [bc], a                                    ; $5ba3: $02
    db $fc                                        ; $5ba4: $fc
    add a                                         ; $5ba5: $87
    add h                                         ; $5ba6: $84
    ld a, a                                       ; $5ba7: $7f
    rst $00                                       ; $5ba8: $c7
    ld a, a                                       ; $5ba9: $7f

jr_0f2_5baa:
    rst $38                                       ; $5baa: $ff
    add b                                         ; $5bab: $80
    rst $38                                       ; $5bac: $ff
    ld [bc], a                                    ; $5bad: $02
    ld h, b                                       ; $5bae: $60
    add d                                         ; $5baf: $82
    ldh a, [$90]                                  ; $5bb0: $f0 $90
    ld [bc], a                                    ; $5bb2: $02
    ld a, [$b28e]                                 ; $5bb3: $fa $8e $b2
    cp $fd                                        ; $5bb6: $fe $fd
    rst $08                                       ; $5bb8: $cf
    jr nc, jr_0f2_5baa                            ; $5bb9: $30 $ef

jr_0f2_5bbb:
    nop                                           ; $5bbb: $00
    rst $38                                       ; $5bbc: $ff
    ld h, e                                       ; $5bbd: $63
    rst $38                                       ; $5bbe: $ff
    rst $18                                       ; $5bbf: $df
    cp $67                                        ; $5bc0: $fe $67
    ld h, h                                       ; $5bc2: $64
    ld [bc], a                                    ; $5bc3: $02
    nop                                           ; $5bc4: $00
    ld [bc], a                                    ; $5bc5: $02
    ld h, b                                       ; $5bc6: $60
    ld [bc], a                                    ; $5bc7: $02
    jr nc, jr_0f2_5bcc                            ; $5bc8: $30 $02

    jr jr_0f2_5b50                                ; $5bca: $18 $84

jr_0f2_5bcc:
    call c, $bcd4                                 ; $5bcc: $dc $d4 $bc
    db $fc                                        ; $5bcf: $fc
    ld [bc], a                                    ; $5bd0: $02
    ld b, $82                                     ; $5bd1: $06 $82
    rlca                                          ; $5bd3: $07
    ld bc, $0604                                  ; $5bd4: $01 $04 $06
    inc b                                         ; $5bd7: $04
    inc b                                         ; $5bd8: $04
    ld c, $00                                     ; $5bd9: $0e $00
    add [hl]                                      ; $5bdb: $86
    ldh a, [$50]                                  ; $5bdc: $f0 $50
    ldh a, [$50]                                  ; $5bde: $f0 $50
    ldh a, [$d0]                                  ; $5be0: $f0 $d0
    ld b, $00                                     ; $5be2: $06 $00
    ld [bc], a                                    ; $5be4: $02
    inc bc                                        ; $5be5: $03
    adc d                                         ; $5be6: $8a
    ld c, $0f                                     ; $5be7: $0e $0f
    ccf                                           ; $5be9: $3f
    inc sp                                        ; $5bea: $33
    rst $38                                       ; $5beb: $ff
    rst $18                                       ; $5bec: $df
    rst $38                                       ; $5bed: $ff
    adc a                                         ; $5bee: $8f
    ld a, a                                       ; $5bef: $7f
    ld b, e                                       ; $5bf0: $43
    ld [bc], a                                    ; $5bf1: $02
    ccf                                           ; $5bf2: $3f
    ld [bc], a                                    ; $5bf3: $02
    ld bc, $000a                                  ; $5bf4: $01 $0a $00
    ld [bc], a                                    ; $5bf7: $02
    inc bc                                        ; $5bf8: $03
    sub h                                         ; $5bf9: $94
    nop                                           ; $5bfa: $00
    inc bc                                        ; $5bfb: $03
    nop                                           ; $5bfc: $00
    inc bc                                        ; $5bfd: $03
    ld [hl], b                                    ; $5bfe: $70
    rst $38                                       ; $5bff: $ff
    add b                                         ; $5c00: $80
    rst $38                                       ; $5c01: $ff
    jr z, @+$01                                   ; $5c02: $28 $ff

    scf                                           ; $5c04: $37
    cp $ab                                        ; $5c05: $fe $ab
    rst $38                                       ; $5c07: $ff
    ld d, h                                       ; $5c08: $54
    rst $38                                       ; $5c09: $ff
    xor e                                         ; $5c0a: $ab
    rst $38                                       ; $5c0b: $ff
    rst $18                                       ; $5c0c: $df
    cp $02                                        ; $5c0d: $fe $02
    di                                            ; $5c0f: $f3
    ld [bc], a                                    ; $5c10: $02
    ld b, b                                       ; $5c11: $40
    ld b, $00                                     ; $5c12: $06 $00
    sub e                                         ; $5c14: $93
    pop bc                                        ; $5c15: $c1
    rst $38                                       ; $5c16: $ff
    jr nc, @+$01                                  ; $5c17: $30 $ff

    db $10                                        ; $5c19: $10
    rst $38                                       ; $5c1a: $ff
    add hl, bc                                    ; $5c1b: $09
    rst $38                                       ; $5c1c: $ff
    adc d                                         ; $5c1d: $8a
    rst $38                                       ; $5c1e: $ff
    call $ef7f                                    ; $5c1f: $cd $7f $ef
    ccf                                           ; $5c22: $3f
    push hl                                       ; $5c23: $e5

jr_0f2_5c24:
    ld a, a                                       ; $5c24: $7f
    add a                                         ; $5c25: $87
    rst $38                                       ; $5c26: $ff
    sbc a                                         ; $5c27: $9f
    ld [bc], a                                    ; $5c28: $02
    rst $38                                       ; $5c29: $ff
    add e                                         ; $5c2a: $83
    ld h, b                                       ; $5c2b: $60
    rst $38                                       ; $5c2c: $ff
    db $fd                                        ; $5c2d: $fd
    ld [bc], a                                    ; $5c2e: $02
    add d                                         ; $5c2f: $82
    ld b, $00                                     ; $5c30: $06 $00
    add d                                         ; $5c32: $82
    stop                                          ; $5c33: $10 $00
    inc b                                         ; $5c35: $04
    db $10                                        ; $5c36: $10
    add [hl]                                      ; $5c37: $86
    rla                                           ; $5c38: $17
    dec d                                         ; $5c39: $15
    ld e, $1a                                     ; $5c3a: $1e $1a
    ld e, $1a                                     ; $5c3c: $1e $1a
    ld [bc], a                                    ; $5c3e: $02
    inc e                                         ; $5c3f: $1c
    add h                                         ; $5c40: $84
    ld e, $02                                     ; $5c41: $1e $02
    rra                                           ; $5c43: $1f
    dec e                                         ; $5c44: $1d
    ld [bc], a                                    ; $5c45: $02
    ld [de], a                                    ; $5c46: $12
    add h                                         ; $5c47: $84
    jr jr_0f2_5c52                                ; $5c48: $18 $08

    jr @+$0a                                      ; $5c4a: $18 $08

    ld [bc], a                                    ; $5c4c: $02
    db $10                                        ; $5c4d: $10
    ld b, $00                                     ; $5c4e: $06 $00
    rst $38                                       ; $5c50: $ff
    dec d                                         ; $5c51: $15

jr_0f2_5c52:
    ld [$0df6], sp                                ; $5c52: $08 $f6 $0d
    add sp, -$01                                  ; $5c55: $e8 $ff
    rst $20                                       ; $5c57: $e7
    ld hl, sp-$1c                                 ; $5c58: $f8 $e4
    nop                                           ; $5c5a: $00
    db $e4                                        ; $5c5b: $e4
    ld [$0ae7], sp                                ; $5c5c: $08 $e7 $0a
    db $f4                                        ; $5c5f: $f4
    ld a, [c]                                     ; $5c60: $f2
    db $f4                                        ; $5c61: $f4
    ld a, [$02f4]                                 ; $5c62: $fa $f4 $02
    db $f4                                        ; $5c65: $f4
    rlca                                          ; $5c66: $07
    ld [bc], a                                    ; $5c67: $02
    ld [bc], a                                    ; $5c68: $02
    ld [bc], a                                    ; $5c69: $02
    inc bc                                        ; $5c6a: $03
    sub [hl]                                      ; $5c6b: $96
    inc b                                         ; $5c6c: $04
    rlca                                          ; $5c6d: $07
    inc e                                         ; $5c6e: $1c
    rra                                           ; $5c6f: $1f
    inc c                                         ; $5c70: $0c
    rrca                                          ; $5c71: $0f
    inc de                                        ; $5c72: $13
    rra                                           ; $5c73: $1f
    ld h, b                                       ; $5c74: $60
    ld a, a                                       ; $5c75: $7f
    jr nc, jr_0f2_5cb7                            ; $5c76: $30 $3f

    ld a, [hl-]                                   ; $5c78: $3a
    ccf                                           ; $5c79: $3f
    ld c, a                                       ; $5c7a: $4f
    ld a, a                                       ; $5c7b: $7f
    ld a, [hl]                                    ; $5c7c: $7e
    ld a, a                                       ; $5c7d: $7f
    cp h                                          ; $5c7e: $bc
    rst $38                                       ; $5c7f: $ff
    ei                                            ; $5c80: $fb
    rst $38                                       ; $5c81: $ff
    ld [bc], a                                    ; $5c82: $02
    ld a, a                                       ; $5c83: $7f
    add h                                         ; $5c84: $84
    cp b                                          ; $5c85: $b8
    rst $38                                       ; $5c86: $ff
    ld b, b                                       ; $5c87: $40
    ld a, a                                       ; $5c88: $7f
    ld [bc], a                                    ; $5c89: $02
    jr jr_0f2_5c24                                ; $5c8a: $18 $98

    ccf                                           ; $5c8c: $3f
    daa                                           ; $5c8d: $27
    ld e, a                                       ; $5c8e: $5f
    ld [hl], c                                    ; $5c8f: $71
    rst $38                                       ; $5c90: $ff
    pop hl                                        ; $5c91: $e1
    cp a                                          ; $5c92: $bf
    di                                            ; $5c93: $f3
    ret c                                         ; $5c94: $d8

    rst $38                                       ; $5c95: $ff
    call z, Call_0f2_6eff                         ; $5c96: $cc $ff $6e
    rst $38                                       ; $5c99: $ff
    ld e, e                                       ; $5c9a: $5b
    rst $38                                       ; $5c9b: $ff
    rst $30                                       ; $5c9c: $f7
    rst $38                                       ; $5c9d: $ff
    inc a                                         ; $5c9e: $3c
    db $fc                                        ; $5c9f: $fc
    ld a, $c2                                     ; $5ca0: $3e $c2
    cp $e2                                        ; $5ca2: $fe $e2
    ld [bc], a                                    ; $5ca4: $02
    cp $84                                        ; $5ca5: $fe $84
    db $db                                        ; $5ca7: $db
    rst $38                                       ; $5ca8: $ff
    dec b                                         ; $5ca9: $05
    rst $38                                       ; $5caa: $ff
    ld [bc], a                                    ; $5cab: $02
    ret nz                                        ; $5cac: $c0

    add d                                         ; $5cad: $82
    ldh [rNR41], a                                ; $5cae: $e0 $20
    ld [bc], a                                    ; $5cb0: $02
    db $f4                                        ; $5cb1: $f4
    adc [hl]                                      ; $5cb2: $8e
    ld h, l                                       ; $5cb3: $65
    db $fd                                        ; $5cb4: $fd
    ei                                            ; $5cb5: $fb
    sbc [hl]                                      ; $5cb6: $9e

jr_0f2_5cb7:
    ld h, c                                       ; $5cb7: $61
    rst $18                                       ; $5cb8: $df
    ld bc, $c7ff                                  ; $5cb9: $01 $ff $c7
    rst $38                                       ; $5cbc: $ff
    cp a                                          ; $5cbd: $bf
    db $fd                                        ; $5cbe: $fd
    adc $c8                                       ; $5cbf: $ce $c8
    ld b, $00                                     ; $5cc1: $06 $00
    ld [bc], a                                    ; $5cc3: $02
    ld h, b                                       ; $5cc4: $60
    ld [bc], a                                    ; $5cc5: $02
    ldh a, [$82]                                  ; $5cc6: $f0 $82
    cp b                                          ; $5cc8: $b8
    ld hl, sp+$02                                 ; $5cc9: $f8 $02
    ld [bc], a                                    ; $5ccb: $02
    add d                                         ; $5ccc: $82
    inc bc                                        ; $5ccd: $03
    ld bc, $0302                                  ; $5cce: $01 $02 $03
    ld [bc], a                                    ; $5cd1: $02
    ld [bc], a                                    ; $5cd2: $02
    ld [de], a                                    ; $5cd3: $12
    nop                                           ; $5cd4: $00
    add [hl]                                      ; $5cd5: $86
    ldh a, [$50]                                  ; $5cd6: $f0 $50
    ldh a, [$d0]                                  ; $5cd8: $f0 $d0
    cp b                                          ; $5cda: $b8
    xor b                                         ; $5cdb: $a8
    ld b, $00                                     ; $5cdc: $06 $00
    add d                                         ; $5cde: $82
    ld [bc], a                                    ; $5cdf: $02
    inc bc                                        ; $5ce0: $03
    ld [bc], a                                    ; $5ce1: $02
    rrca                                          ; $5ce2: $0f
    adc b                                         ; $5ce3: $88
    ccf                                           ; $5ce4: $3f
    inc sp                                        ; $5ce5: $33
    rst $38                                       ; $5ce6: $ff
    rst $18                                       ; $5ce7: $df
    rst $38                                       ; $5ce8: $ff
    adc a                                         ; $5ce9: $8f
    ld a, a                                       ; $5cea: $7f
    ld b, e                                       ; $5ceb: $43
    ld [bc], a                                    ; $5cec: $02
    ccf                                           ; $5ced: $3f
    ld [bc], a                                    ; $5cee: $02
    inc bc                                        ; $5cef: $03
    ld [bc], a                                    ; $5cf0: $02
    ld bc, $0008                                  ; $5cf1: $01 $08 $00
    ld [bc], a                                    ; $5cf4: $02
    inc bc                                        ; $5cf5: $03
    sub h                                         ; $5cf6: $94
    nop                                           ; $5cf7: $00
    inc bc                                        ; $5cf8: $03
    nop                                           ; $5cf9: $00
    inc bc                                        ; $5cfa: $03
    ldh a, [rIE]                                  ; $5cfb: $f0 $ff
    add b                                         ; $5cfd: $80
    rst $38                                       ; $5cfe: $ff
    jr z, @+$01                                   ; $5cff: $28 $ff

    scf                                           ; $5d01: $37
    cp $ab                                        ; $5d02: $fe $ab
    rst $38                                       ; $5d04: $ff
    ld d, h                                       ; $5d05: $54
    rst $38                                       ; $5d06: $ff
    xor e                                         ; $5d07: $ab
    rst $38                                       ; $5d08: $ff
    rst $18                                       ; $5d09: $df
    cp $02                                        ; $5d0a: $fe $02
    di                                            ; $5d0c: $f3
    ld [bc], a                                    ; $5d0d: $02
    add b                                         ; $5d0e: $80
    ld b, $00                                     ; $5d0f: $06 $00
    sub e                                         ; $5d11: $93
    add e                                         ; $5d12: $83
    rst $38                                       ; $5d13: $ff
    ld h, c                                       ; $5d14: $61
    rst $38                                       ; $5d15: $ff
    jr nz, @+$01                                  ; $5d16: $20 $ff

    inc d                                         ; $5d18: $14
    rst $38                                       ; $5d19: $ff
    adc b                                         ; $5d1a: $88
    rst $38                                       ; $5d1b: $ff
    call $eb7f                                    ; $5d1c: $cd $7f $eb
    ccf                                           ; $5d1f: $3f
    push hl                                       ; $5d20: $e5
    ld a, a                                       ; $5d21: $7f
    add a                                         ; $5d22: $87
    rst $38                                       ; $5d23: $ff
    sbc a                                         ; $5d24: $9f
    ld [bc], a                                    ; $5d25: $02
    rst $38                                       ; $5d26: $ff
    add e                                         ; $5d27: $83
    ld h, b                                       ; $5d28: $60
    rst $38                                       ; $5d29: $ff
    db $fd                                        ; $5d2a: $fd
    ld [bc], a                                    ; $5d2b: $02
    add d                                         ; $5d2c: $82
    inc c                                         ; $5d2d: $0c
    nop                                           ; $5d2e: $00
    add [hl]                                      ; $5d2f: $86
    rla                                           ; $5d30: $17
    dec d                                         ; $5d31: $15
    rla                                           ; $5d32: $17
    dec d                                         ; $5d33: $15
    rla                                           ; $5d34: $17
    dec d                                         ; $5d35: $15
    inc bc                                        ; $5d36: $03
    ld e, $83                                     ; $5d37: $1e $83
    ld [bc], a                                    ; $5d39: $02
    rra                                           ; $5d3a: $1f
    dec e                                         ; $5d3b: $1d
    ld [bc], a                                    ; $5d3c: $02
    ld [de], a                                    ; $5d3d: $12
    add h                                         ; $5d3e: $84
    jr jr_0f2_5d49                                ; $5d3f: $18 $08

    jr @+$0a                                      ; $5d41: $18 $08

    ld [bc], a                                    ; $5d43: $02
    db $10                                        ; $5d44: $10
    ld b, $00                                     ; $5d45: $06 $00
    rst $38                                       ; $5d47: $ff
    inc de                                        ; $5d48: $13

jr_0f2_5d49:
    rlca                                          ; $5d49: $07
    or $0d                                        ; $5d4a: $f6 $0d
    add sp, -$01                                  ; $5d4c: $e8 $ff
    rst $20                                       ; $5d4e: $e7
    ld sp, hl                                     ; $5d4f: $f9
    db $e4                                        ; $5d50: $e4
    ld bc, $09e5                                  ; $5d51: $01 $e5 $09
    db $f4                                        ; $5d54: $f4
    ld a, [c]                                     ; $5d55: $f2
    db $f4                                        ; $5d56: $f4
    ld a, [$02f4]                                 ; $5d57: $fa $f4 $02
    db $f4                                        ; $5d5a: $f4
    rlca                                          ; $5d5b: $07
    ld [bc], a                                    ; $5d5c: $02
    ld bc, $0302                                  ; $5d5d: $01 $02 $03
    sub b                                         ; $5d60: $90
    ld c, $0f                                     ; $5d61: $0e $0f
    add hl, de                                    ; $5d63: $19
    rra                                           ; $5d64: $1f
    ld a, [bc]                                    ; $5d65: $0a
    rrca                                          ; $5d66: $0f
    ld [hl], e                                    ; $5d67: $73
    ld a, a                                       ; $5d68: $7f
    inc l                                         ; $5d69: $2c
    ccf                                           ; $5d6a: $3f
    ld b, b                                       ; $5d6b: $40
    ld a, a                                       ; $5d6c: $7f
    ld h, b                                       ; $5d6d: $60
    ld a, a                                       ; $5d6e: $7f
    cp a                                          ; $5d6f: $bf
    rst $38                                       ; $5d70: $ff
    ld [bc], a                                    ; $5d71: $02
    ld a, a                                       ; $5d72: $7f
    add h                                         ; $5d73: $84
    cp h                                          ; $5d74: $bc
    rst $38                                       ; $5d75: $ff
    ld a, [$02ff]                                 ; $5d76: $fa $ff $02
    ld a, a                                       ; $5d79: $7f
    add h                                         ; $5d7a: $84
    cp b                                          ; $5d7b: $b8
    rst $38                                       ; $5d7c: $ff
    ld b, b                                       ; $5d7d: $40
    ld a, a                                       ; $5d7e: $7f
    ld [bc], a                                    ; $5d7f: $02
    ld h, e                                       ; $5d80: $63
    sub [hl]                                      ; $5d81: $96
    rst $38                                       ; $5d82: $ff
    sbc h                                         ; $5d83: $9c
    rst $38                                       ; $5d84: $ff
    rst $00                                       ; $5d85: $c7
    db $fd                                        ; $5d86: $fd
    add a                                         ; $5d87: $87
    rst $38                                       ; $5d88: $ff
    adc $e1                                       ; $5d89: $ce $e1
    rst $38                                       ; $5d8b: $ff
    jr nc, @+$01                                  ; $5d8c: $30 $ff

    cp e                                          ; $5d8e: $bb
    rst $38                                       ; $5d8f: $ff
    sbc $ff                                       ; $5d90: $de $ff
    ld a, a                                       ; $5d92: $7f
    rst $38                                       ; $5d93: $ff
    ld a, $c2                                     ; $5d94: $3e $c2
    ld a, $e2                                     ; $5d96: $3e $e2
    ld [bc], a                                    ; $5d98: $02
    db $fc                                        ; $5d99: $fc
    add [hl]                                      ; $5d9a: $86
    ld a, a                                       ; $5d9b: $7f
    rst $38                                       ; $5d9c: $ff
    or d                                          ; $5d9d: $b2
    rst $38                                       ; $5d9e: $ff
    set 7, a                                      ; $5d9f: $cb $ff
    ld [bc], a                                    ; $5da1: $02
    add b                                         ; $5da2: $80
    ld [bc], a                                    ; $5da3: $02
    ret nc                                        ; $5da4: $d0

    adc c                                         ; $5da5: $89
    sub [hl]                                      ; $5da6: $96
    or $ef                                        ; $5da7: $f6 $ef
    ld a, c                                       ; $5da9: $79
    add a                                         ; $5daa: $87
    ld a, a                                       ; $5dab: $7f
    ld b, $fe                                     ; $5dac: $06 $fe
    inc e                                         ; $5dae: $1c
    ld [bc], a                                    ; $5daf: $02
    db $fc                                        ; $5db0: $fc
    add e                                         ; $5db1: $83
    db $f4                                        ; $5db2: $f4
    jr c, jr_0f2_5dd5                             ; $5db3: $38 $20

    ld b, $00                                     ; $5db5: $06 $00
    ld [bc], a                                    ; $5db7: $02
    ret nz                                        ; $5db8: $c0

    ld [bc], a                                    ; $5db9: $02
    ldh [$84], a                                  ; $5dba: $e0 $84
    ldh a, [rSVBK]                                ; $5dbc: $f0 $70
    ld hl, sp-$18                                 ; $5dbe: $f8 $e8
    ld b, $00                                     ; $5dc0: $06 $00
    ld [bc], a                                    ; $5dc2: $02
    ld bc, $0f02                                  ; $5dc3: $01 $02 $0f
    adc b                                         ; $5dc6: $88
    ccf                                           ; $5dc7: $3f
    ld sp, $dfff                                  ; $5dc8: $31 $ff $df
    rst $38                                       ; $5dcb: $ff
    adc a                                         ; $5dcc: $8f
    ld a, a                                       ; $5dcd: $7f
    ld b, c                                       ; $5dce: $41
    ld [bc], a                                    ; $5dcf: $02
    ccf                                           ; $5dd0: $3f
    ld [bc], a                                    ; $5dd1: $02
    ld bc, $000a                                  ; $5dd2: $01 $0a $00

jr_0f2_5dd5:
    ld [bc], a                                    ; $5dd5: $02
    ld bc, $0091                                  ; $5dd6: $01 $91 $00
    ld bc, $0100                                  ; $5dd9: $01 $00 $01
    inc a                                         ; $5ddc: $3c
    rst $38                                       ; $5ddd: $ff
    ld h, b                                       ; $5dde: $60
    rst $38                                       ; $5ddf: $ff
    sub h                                         ; $5de0: $94
    rst $38                                       ; $5de1: $ff
    cp e                                          ; $5de2: $bb
    rst $38                                       ; $5de3: $ff
    ld d, l                                       ; $5de4: $55
    rst $38                                       ; $5de5: $ff
    xor d                                         ; $5de6: $aa
    rst $38                                       ; $5de7: $ff
    push de                                       ; $5de8: $d5
    inc bc                                        ; $5de9: $03
    rst $38                                       ; $5dea: $ff
    ld [bc], a                                    ; $5deb: $02
    ld a, e                                       ; $5dec: $7b
    ld [bc], a                                    ; $5ded: $02
    jr nz, jr_0f2_5df6                            ; $5dee: $20 $06

    nop                                           ; $5df0: $00
    sub e                                         ; $5df1: $93
    jp nz, $30fe                                  ; $5df2: $c2 $fe $30

    rst $38                                       ; $5df5: $ff

jr_0f2_5df6:
    db $10                                        ; $5df6: $10
    rst $38                                       ; $5df7: $ff
    inc c                                         ; $5df8: $0c
    rst $38                                       ; $5df9: $ff
    ld c, d                                       ; $5dfa: $4a
    rst $38                                       ; $5dfb: $ff
    ld h, l                                       ; $5dfc: $65
    cp a                                          ; $5dfd: $bf
    rst $30                                       ; $5dfe: $f7
    rra                                           ; $5dff: $1f
    push af                                       ; $5e00: $f5
    cp a                                          ; $5e01: $bf
    rst $08                                       ; $5e02: $cf
    rst $38                                       ; $5e03: $ff
    sbc a                                         ; $5e04: $9f
    ld [bc], a                                    ; $5e05: $02
    rst $38                                       ; $5e06: $ff
    add e                                         ; $5e07: $83
    ld h, b                                       ; $5e08: $60
    rst $38                                       ; $5e09: $ff
    db $fd                                        ; $5e0a: $fd
    ld [bc], a                                    ; $5e0b: $02
    add d                                         ; $5e0c: $82
    ld [$8a00], sp                                ; $5e0d: $08 $00 $8a
    ld e, $1a                                     ; $5e10: $1e $1a
    rla                                           ; $5e12: $17
    dec d                                         ; $5e13: $15
    rla                                           ; $5e14: $17
    dec d                                         ; $5e15: $15
    rla                                           ; $5e16: $17
    dec d                                         ; $5e17: $15
    rla                                           ; $5e18: $17
    dec d                                         ; $5e19: $15
    inc bc                                        ; $5e1a: $03
    ld e, $83                                     ; $5e1b: $1e $83
    ld [bc], a                                    ; $5e1d: $02
    rra                                           ; $5e1e: $1f
    dec e                                         ; $5e1f: $1d
    ld [bc], a                                    ; $5e20: $02
    ld [de], a                                    ; $5e21: $12

jr_0f2_5e22:
    add h                                         ; $5e22: $84
    jr jr_0f2_5e2d                                ; $5e23: $18 $08

    jr @+$0a                                      ; $5e25: $18 $08

    ld [bc], a                                    ; $5e27: $02
    db $10                                        ; $5e28: $10
    ld b, $00                                     ; $5e29: $06 $00
    rst $38                                       ; $5e2b: $ff
    inc de                                        ; $5e2c: $13

jr_0f2_5e2d:
    rlca                                          ; $5e2d: $07
    or $0d                                        ; $5e2e: $f6 $0d
    add sp, -$01                                  ; $5e30: $e8 $ff
    db $e4                                        ; $5e32: $e4
    ld sp, hl                                     ; $5e33: $f9
    db $e3                                        ; $5e34: $e3
    ld bc, $08e5                                  ; $5e35: $01 $e5 $08
    di                                            ; $5e38: $f3
    ld a, [c]                                     ; $5e39: $f2
    di                                            ; $5e3a: $f3
    ld a, [$02f3]                                 ; $5e3b: $fa $f3 $02
    di                                            ; $5e3e: $f3
    rlca                                          ; $5e3f: $07
    ld [bc], a                                    ; $5e40: $02
    ld bc, $0002                                  ; $5e41: $01 $02 $00
    ld [bc], a                                    ; $5e44: $02
    ld bc, $0502                                  ; $5e45: $01 $02 $05
    ld [bc], a                                    ; $5e48: $02
    rlca                                          ; $5e49: $07
    sub [hl]                                      ; $5e4a: $96
    ld c, $0f                                     ; $5e4b: $0e $0f
    inc de                                        ; $5e4d: $13
    rra                                           ; $5e4e: $1f
    db $10                                        ; $5e4f: $10
    rra                                           ; $5e50: $1f
    ld [hl], h                                    ; $5e51: $74
    ld a, a                                       ; $5e52: $7f
    daa                                           ; $5e53: $27
    ccf                                           ; $5e54: $3f
    ld a, b                                       ; $5e55: $78
    ld a, a                                       ; $5e56: $7f
    ld b, b                                       ; $5e57: $40
    ld a, a                                       ; $5e58: $7f
    add c                                         ; $5e59: $81
    rst $38                                       ; $5e5a: $ff
    ld h, a                                       ; $5e5b: $67
    ld a, a                                       ; $5e5c: $7f
    cp [hl]                                       ; $5e5d: $be
    rst $38                                       ; $5e5e: $ff
    ld hl, sp-$01                                 ; $5e5f: $f8 $ff
    ld [bc], a                                    ; $5e61: $02
    add $9a                                       ; $5e62: $c6 $9a
    rst $38                                       ; $5e64: $ff
    add hl, sp                                    ; $5e65: $39
    rst $38                                       ; $5e66: $ff
    adc a                                         ; $5e67: $8f
    ei                                            ; $5e68: $fb
    rrca                                          ; $5e69: $0f
    rst $38                                       ; $5e6a: $ff
    sbc h                                         ; $5e6b: $9c
    jp $e0fd                                      ; $5e6c: $c3 $fd $e0


    rst $38                                       ; $5e6f: $ff
    halt                                          ; $5e70: $76
    rst $38                                       ; $5e71: $ff
    sbc l                                         ; $5e72: $9d
    rst $38                                       ; $5e73: $ff
    xor [hl]                                      ; $5e74: $ae
    cp $ce                                        ; $5e75: $fe $ce
    cp $7c                                        ; $5e77: $fe $7c
    db $fc                                        ; $5e79: $fc
    ld a, [hl]                                    ; $5e7a: $7e
    jp nz, $e4fe                                  ; $5e7b: $c2 $fe $e4

    ld [bc], a                                    ; $5e7e: $02
    cp $82                                        ; $5e7f: $fe $82
    or e                                          ; $5e81: $b3
    rst $38                                       ; $5e82: $ff
    ld [bc], a                                    ; $5e83: $02
    ld d, b                                       ; $5e84: $50
    adc c                                         ; $5e85: $89
    ld d, $76                                     ; $5e86: $16 $76
    ld l, a                                       ; $5e88: $6f
    ld a, c                                       ; $5e89: $79
    rlca                                          ; $5e8a: $07
    ld a, a                                       ; $5e8b: $7f
    ld b, $7e                                     ; $5e8c: $06 $7e
    inc e                                         ; $5e8e: $1c
    ld [bc], a                                    ; $5e8f: $02
    ld a, h                                       ; $5e90: $7c
    add e                                         ; $5e91: $83
    ld [hl], h                                    ; $5e92: $74
    jr c, jr_0f2_5eb5                             ; $5e93: $38 $20

    ld b, $00                                     ; $5e95: $06 $00
    ld [bc], a                                    ; $5e97: $02
    ld h, b                                       ; $5e98: $60
    ld [bc], a                                    ; $5e99: $02
    jr nc, jr_0f2_5e9e                            ; $5e9a: $30 $02

    jr jr_0f2_5e22                                ; $5e9c: $18 $84

jr_0f2_5e9e:
    call c, $dc54                                 ; $5e9e: $dc $54 $dc
    call nc, Call_000_0004                        ; $5ea1: $d4 $04 $00
    ld [bc], a                                    ; $5ea4: $02
    ld bc, $0002                                  ; $5ea5: $01 $02 $00
    ld [bc], a                                    ; $5ea8: $02
    ld bc, $0f02                                  ; $5ea9: $01 $02 $0f
    adc b                                         ; $5eac: $88
    ld a, $33                                     ; $5ead: $3e $33
    rst $38                                       ; $5eaf: $ff
    rst $18                                       ; $5eb0: $df
    rst $38                                       ; $5eb1: $ff
    adc a                                         ; $5eb2: $8f
    ld a, a                                       ; $5eb3: $7f
    ld b, c                                       ; $5eb4: $41

jr_0f2_5eb5:
    ld [bc], a                                    ; $5eb5: $02
    ccf                                           ; $5eb6: $3f
    ld [bc], a                                    ; $5eb7: $02
    ld bc, $0008                                  ; $5eb8: $01 $08 $00
    ld [bc], a                                    ; $5ebb: $02
    ld bc, $ff02                                  ; $5ebc: $01 $02 $ff
    sub h                                         ; $5ebf: $94
    ld h, b                                       ; $5ec0: $60
    rst $38                                       ; $5ec1: $ff
    ret nz                                        ; $5ec2: $c0

    rst $38                                       ; $5ec3: $ff
    inc a                                         ; $5ec4: $3c
    rst $38                                       ; $5ec5: $ff
    ld h, b                                       ; $5ec6: $60
    rst $38                                       ; $5ec7: $ff
    sub h                                         ; $5ec8: $94
    rst $38                                       ; $5ec9: $ff
    sbc e                                         ; $5eca: $9b
    rst $38                                       ; $5ecb: $ff
    ld a, [hl+]                                   ; $5ecc: $2a
    rst $38                                       ; $5ecd: $ff
    ld [hl], l                                    ; $5ece: $75
    rst $38                                       ; $5ecf: $ff
    xor e                                         ; $5ed0: $ab
    rst $38                                       ; $5ed1: $ff
    rst $18                                       ; $5ed2: $df
    rst $38                                       ; $5ed3: $ff
    ld [bc], a                                    ; $5ed4: $02
    ld a, e                                       ; $5ed5: $7b
    ld [bc], a                                    ; $5ed6: $02
    jr nz, jr_0f2_5edd                            ; $5ed7: $20 $04

    nop                                           ; $5ed9: $00
    sub l                                         ; $5eda: $95
    sub h                                         ; $5edb: $94
    db $fc                                        ; $5edc: $fc

jr_0f2_5edd:
    ldh [$fc], a                                  ; $5edd: $e0 $fc
    add hl, de                                    ; $5edf: $19
    rst $38                                       ; $5ee0: $ff
    ld [$04ff], sp                                ; $5ee1: $08 $ff $04
    rst $38                                       ; $5ee4: $ff
    ld b, [hl]                                    ; $5ee5: $46
    rst $38                                       ; $5ee6: $ff
    ld h, l                                       ; $5ee7: $65
    cp a                                          ; $5ee8: $bf
    rst $30                                       ; $5ee9: $f7
    rra                                           ; $5eea: $1f
    push af                                       ; $5eeb: $f5
    cp a                                          ; $5eec: $bf
    ld c, a                                       ; $5eed: $4f
    rst $38                                       ; $5eee: $ff
    sbc a                                         ; $5eef: $9f
    ld [bc], a                                    ; $5ef0: $02
    rst $38                                       ; $5ef1: $ff
    add e                                         ; $5ef2: $83
    ld h, b                                       ; $5ef3: $60
    rst $38                                       ; $5ef4: $ff
    db $fd                                        ; $5ef5: $fd
    ld [bc], a                                    ; $5ef6: $02
    add d                                         ; $5ef7: $82
    ld [$8a00], sp                                ; $5ef8: $08 $00 $8a
    rlca                                          ; $5efb: $07

jr_0f2_5efc:
    dec b                                         ; $5efc: $05
    rla                                           ; $5efd: $17
    dec d                                         ; $5efe: $15
    rla                                           ; $5eff: $17
    dec d                                         ; $5f00: $15

jr_0f2_5f01:
    rla                                           ; $5f01: $17
    dec d                                         ; $5f02: $15
    ld e, $1a                                     ; $5f03: $1e $1a
    ld [bc], a                                    ; $5f05: $02
    inc e                                         ; $5f06: $1c
    add h                                         ; $5f07: $84
    ld e, $02                                     ; $5f08: $1e $02
    rra                                           ; $5f0a: $1f
    dec e                                         ; $5f0b: $1d
    ld [bc], a                                    ; $5f0c: $02
    ld [de], a                                    ; $5f0d: $12
    add h                                         ; $5f0e: $84
    jr jr_0f2_5f19                                ; $5f0f: $18 $08

    jr @+$0a                                      ; $5f11: $18 $08

    ld [bc], a                                    ; $5f13: $02
    db $10                                        ; $5f14: $10
    inc b                                         ; $5f15: $04
    nop                                           ; $5f16: $00
    rst $38                                       ; $5f17: $ff
    dec d                                         ; $5f18: $15

jr_0f2_5f19:
    ld [$0df6], sp                                ; $5f19: $08 $f6 $0d
    add sp, -$01                                  ; $5f1c: $e8 $ff
    ld [c], a                                     ; $5f1e: $e2
    ld sp, hl                                     ; $5f1f: $f9
    pop hl                                        ; $5f20: $e1
    ld bc, $07e0                                  ; $5f21: $01 $e0 $07
    ld a, [c]                                     ; $5f24: $f2
    ld a, [c]                                     ; $5f25: $f2
    pop af                                        ; $5f26: $f1
    ld a, [$02f1]                                 ; $5f27: $fa $f1 $02
    ldh a, [rTAC]                                 ; $5f2a: $f0 $07
    nop                                           ; $5f2c: $00
    inc bc                                        ; $5f2d: $03
    ld [bc], a                                    ; $5f2e: $02
    inc bc                                        ; $5f2f: $03
    adc b                                         ; $5f30: $88
    rlca                                          ; $5f31: $07
    inc b                                         ; $5f32: $04
    rlca                                          ; $5f33: $07
    inc b                                         ; $5f34: $04
    rrca                                          ; $5f35: $0f
    ld [$0507], sp                                ; $5f36: $08 $07 $05
    ld [bc], a                                    ; $5f39: $02
    rlca                                          ; $5f3a: $07
    sub h                                         ; $5f3b: $94
    ld e, $1f                                     ; $5f3c: $1e $1f
    add hl, de                                    ; $5f3e: $19
    rra                                           ; $5f3f: $1f
    ld h, b                                       ; $5f40: $60
    ld a, a                                       ; $5f41: $7f
    jr nc, @+$41                                  ; $5f42: $30 $3f

    ld b, e                                       ; $5f44: $43
    ld a, a                                       ; $5f45: $7f
    push hl                                       ; $5f46: $e5
    rst $38                                       ; $5f47: $ff
    ld b, e                                       ; $5f48: $43
    ld a, a                                       ; $5f49: $7f
    ret nz                                        ; $5f4a: $c0

    rst $38                                       ; $5f4b: $ff
    jp hl                                         ; $5f4c: $e9


    rst $38                                       ; $5f4d: $ff
    cp a                                          ; $5f4e: $bf
    rst $38                                       ; $5f4f: $ff
    ld [bc], a                                    ; $5f50: $02
    di                                            ; $5f51: $f3
    sub [hl]                                      ; $5f52: $96
    db $fc                                        ; $5f53: $fc
    rst $18                                       ; $5f54: $df
    and $7f                                       ; $5f55: $e6 $7f
    call c, $cc73                                 ; $5f57: $dc $73 $cc
    rst $38                                       ; $5f5a: $ff
    add c                                         ; $5f5b: $81
    rst $38                                       ; $5f5c: $ff
    pop bc                                        ; $5f5d: $c1
    rst $38                                       ; $5f5e: $ff
    or [hl]                                       ; $5f5f: $b6
    rst $38                                       ; $5f60: $ff
    add hl, de                                    ; $5f61: $19

jr_0f2_5f62:
    rst $38                                       ; $5f62: $ff
    cp [hl]                                       ; $5f63: $be
    cp $d8                                        ; $5f64: $fe $d8
    ld hl, sp+$78                                 ; $5f66: $f8 $78
    ld hl, sp+$02                                 ; $5f68: $f8 $02
    db $f4                                        ; $5f6a: $f4
    add [hl]                                      ; $5f6b: $86
    cp $fa                                        ; $5f6c: $fe $fa
    ld a, [hl]                                    ; $5f6e: $7e
    ld a, [c]                                     ; $5f6f: $f2
    cp $9a                                        ; $5f70: $fe $9a
    ld [bc], a                                    ; $5f72: $02
    jr jr_0f2_5efc                                ; $5f73: $18 $87

    jr c, jr_0f2_5f97                             ; $5f75: $38 $20

    inc e                                         ; $5f77: $1c
    inc a                                         ; $5f78: $3c
    inc b                                         ; $5f79: $04
    inc a                                         ; $5f7a: $3c
    jr jr_0f2_5f7f                                ; $5f7b: $18 $02

    jr c, jr_0f2_5f01                             ; $5f7d: $38 $82

jr_0f2_5f7f:
    jr nz, jr_0f2_5fb9                            ; $5f7f: $20 $38

    dec b                                         ; $5f81: $05
    jr nz, jr_0f2_5f90                            ; $5f82: $20 $0c

    nop                                           ; $5f84: $00
    ld [bc], a                                    ; $5f85: $02
    rlca                                          ; $5f86: $07
    add c                                         ; $5f87: $81
    ld [bc], a                                    ; $5f88: $02
    inc bc                                        ; $5f89: $03
    inc bc                                        ; $5f8a: $03
    ld [bc], a                                    ; $5f8b: $02
    ld bc, $0304                                  ; $5f8c: $01 $04 $03
    ld [bc], a                                    ; $5f8f: $02

jr_0f2_5f90:
    ld bc, $0f02                                  ; $5f90: $01 $02 $0f
    adc b                                         ; $5f93: $88
    ld a, $33                                     ; $5f94: $3e $33
    rst $38                                       ; $5f96: $ff

jr_0f2_5f97:
    rst $18                                       ; $5f97: $df
    rst $38                                       ; $5f98: $ff
    adc a                                         ; $5f99: $8f
    ld a, a                                       ; $5f9a: $7f
    ld b, c                                       ; $5f9b: $41
    ld [bc], a                                    ; $5f9c: $02
    ccf                                           ; $5f9d: $3f
    ld [bc], a                                    ; $5f9e: $02
    ld bc, $0006                                  ; $5f9f: $01 $06 $00
    sbc h                                         ; $5fa2: $9c
    ld bc, $7f00                                  ; $5fa3: $01 $00 $7f
    rst $38                                       ; $5fa6: $ff
    add hl, sp                                    ; $5fa7: $39
    rst $38                                       ; $5fa8: $ff
    ldh [rIE], a                                  ; $5fa9: $e0 $ff
    call c, Call_0f2_60ff                         ; $5fab: $dc $ff $60
    rst $38                                       ; $5fae: $ff
    ld a, b                                       ; $5faf: $78
    rst $38                                       ; $5fb0: $ff
    ret nz                                        ; $5fb1: $c0

    rst $38                                       ; $5fb2: $ff
    sub h                                         ; $5fb3: $94
    rst $38                                       ; $5fb4: $ff
    dec sp                                        ; $5fb5: $3b
    rst $38                                       ; $5fb6: $ff
    ld d, h                                       ; $5fb7: $54
    rst $38                                       ; $5fb8: $ff

jr_0f2_5fb9:
    xor d                                         ; $5fb9: $aa
    rst $38                                       ; $5fba: $ff
    ld d, h                                       ; $5fbb: $54
    rst $38                                       ; $5fbc: $ff
    cp a                                          ; $5fbd: $bf
    rst $38                                       ; $5fbe: $ff
    ld [bc], a                                    ; $5fbf: $02
    ld a, e                                       ; $5fc0: $7b
    ld [bc], a                                    ; $5fc1: $02
    jr nz, jr_0f2_5f62                            ; $5fc2: $20 $9e

    ld hl, sp+$38                                 ; $5fc4: $f8 $38
    ld hl, sp+$38                                 ; $5fc6: $f8 $38
    db $ec                                        ; $5fc8: $ec
    db $fc                                        ; $5fc9: $fc
    inc [hl]                                      ; $5fca: $34
    db $fc                                        ; $5fcb: $fc
    ld d, $fe                                     ; $5fcc: $16 $fe
    dec bc                                        ; $5fce: $0b
    rst $38                                       ; $5fcf: $ff
    rrca                                          ; $5fd0: $0f
    cp $0b                                        ; $5fd1: $fe $0b
    rst $38                                       ; $5fd3: $ff
    ld b, [hl]                                    ; $5fd4: $46
    cp $67                                        ; $5fd5: $fe $67
    cp a                                          ; $5fd7: $bf
    rst $30                                       ; $5fd8: $f7
    inc e                                         ; $5fd9: $1c
    rst $28                                       ; $5fda: $ef
    cp a                                          ; $5fdb: $bf
    rst $08                                       ; $5fdc: $cf
    rst $38                                       ; $5fdd: $ff
    ld a, a                                       ; $5fde: $7f
    ldh a, [rIE]                                  ; $5fdf: $f0 $ff
    db $fd                                        ; $5fe1: $fd
    ld [bc], a                                    ; $5fe2: $02
    add d                                         ; $5fe3: $82
    adc [hl]                                      ; $5fe4: $8e
    ld c, $0a                                     ; $5fe5: $0e $0a
    inc e                                         ; $5fe7: $1c
    inc d                                         ; $5fe8: $14
    inc e                                         ; $5fe9: $1c
    inc d                                         ; $5fea: $14
    inc e                                         ; $5feb: $1c
    inc d                                         ; $5fec: $14
    inc e                                         ; $5fed: $1c
    inc d                                         ; $5fee: $14
    inc e                                         ; $5fef: $1c
    inc d                                         ; $5ff0: $14
    jr @+$0a                                      ; $5ff1: $18 $08

    ld [bc], a                                    ; $5ff3: $02
    db $10                                        ; $5ff4: $10
    inc b                                         ; $5ff5: $04
    nop                                           ; $5ff6: $00
    ld [bc], a                                    ; $5ff7: $02
    inc e                                         ; $5ff8: $1c
    add h                                         ; $5ff9: $84
    ld e, $02                                     ; $5ffa: $1e $02
    rra                                           ; $5ffc: $1f
    dec e                                         ; $5ffd: $1d
    ld [bc], a                                    ; $5ffe: $02
    ld [de], a                                    ; $5fff: $12
    add h                                         ; $6000: $84
    jr jr_0f2_600b                                ; $6001: $18 $08

    jr @+$0a                                      ; $6003: $18 $08

    ld [bc], a                                    ; $6005: $02
    ld bc, $001e                                  ; $6006: $01 $1e $00
    rst $38                                       ; $6009: $ff
    dec d                                         ; $600a: $15

jr_0f2_600b:
    ld [$0df6], sp                                ; $600b: $08 $f6 $0d
    add sp, -$01                                  ; $600e: $e8 $ff
    ld [c], a                                     ; $6010: $e2
    rst $30                                       ; $6011: $f7
    pop hl                                        ; $6012: $e1
    rst $38                                       ; $6013: $ff
    ldh [$03], a                                  ; $6014: $e0 $03
    ld a, [c]                                     ; $6016: $f2
    pop af                                        ; $6017: $f1
    pop af                                        ; $6018: $f1
    ld sp, hl                                     ; $6019: $f9
    pop af                                        ; $601a: $f1
    ld bc, $09f6                                  ; $601b: $01 $f6 $09
    ld hl, sp+$0b                                 ; $601e: $f8 $0b
    ld [bc], a                                    ; $6020: $02
    inc bc                                        ; $6021: $03
    adc b                                         ; $6022: $88
    rlca                                          ; $6023: $07
    inc b                                         ; $6024: $04
    rlca                                          ; $6025: $07
    inc b                                         ; $6026: $04
    rrca                                          ; $6027: $0f
    ld [$0507], sp                                ; $6028: $08 $07 $05
    ld [bc], a                                    ; $602b: $02
    rrca                                          ; $602c: $0f
    sub h                                         ; $602d: $94
    ld b, $07                                     ; $602e: $06 $07
    dec e                                         ; $6030: $1d
    rra                                           ; $6031: $1f
    db $10                                        ; $6032: $10
    rra                                           ; $6033: $1f
    ld h, c                                       ; $6034: $61
    ld a, a                                       ; $6035: $7f
    jr nz, jr_0f2_6077                            ; $6036: $20 $3f

    call Call_0f2_43ff                            ; $6038: $cd $ff $43
    ld a, a                                       ; $603b: $7f
    ld h, b                                       ; $603c: $60
    ld a, a                                       ; $603d: $7f
    ld [c], a                                     ; $603e: $e2
    rst $38                                       ; $603f: $ff
    ld [hl], a                                    ; $6040: $77
    ld a, a                                       ; $6041: $7f
    ld [bc], a                                    ; $6042: $02
    di                                            ; $6043: $f3
    sub d                                         ; $6044: $92
    db $fc                                        ; $6045: $fc
    rst $18                                       ; $6046: $df
    and $7f                                       ; $6047: $e6 $7f
    call c, $c973                                 ; $6049: $dc $73 $c9
    rst $38                                       ; $604c: $ff
    add e                                         ; $604d: $83
    rst $38                                       ; $604e: $ff
    jp $a7ff                                      ; $604f: $c3 $ff $a7


    cp $1f                                        ; $6052: $fe $1f
    cp $b9                                        ; $6054: $fe $b9
    rst $38                                       ; $6056: $ff
    ld [bc], a                                    ; $6057: $02
    cp $02                                        ; $6058: $fe $02
    ld hl, sp+$02                                 ; $605a: $f8 $02
    cp $86                                        ; $605c: $fe $86
    rst $38                                       ; $605e: $ff

Call_0f2_605f:
    ret                                           ; $605f: $c9


    ld a, $ca                                     ; $6060: $3e $ca
    db $fc                                        ; $6062: $fc
    call z, $0602                                 ; $6063: $cc $02 $06
    add l                                         ; $6066: $85
    rrca                                          ; $6067: $0f
    add hl, bc                                    ; $6068: $09
    rlca                                          ; $6069: $07
    rrca                                          ; $606a: $0f
    ld bc, $0f03                                  ; $606b: $01 $03 $0f
    add h                                         ; $606e: $84
    ld c, $08                                     ; $606f: $0e $08
    ld c, $08                                     ; $6071: $0e $08
    ld [bc], a                                    ; $6073: $02
    nop                                           ; $6074: $00
    inc bc                                        ; $6075: $03
    inc c                                         ; $6076: $0c

jr_0f2_6077:
    add c                                         ; $6077: $81
    ld [$000c], sp                                ; $6078: $08 $0c $00
    ld [bc], a                                    ; $607b: $02
    inc bc                                        ; $607c: $03
    ld [bc], a                                    ; $607d: $02
    ld bc, $0304                                  ; $607e: $01 $04 $03
    inc b                                         ; $6081: $04
    ld bc, $1f02                                  ; $6082: $01 $02 $1f
    adc d                                         ; $6085: $8a
    ld a, [hl]                                    ; $6086: $7e
    ld h, e                                       ; $6087: $63
    rst $38                                       ; $6088: $ff
    add a                                         ; $6089: $87
    rst $38                                       ; $608a: $ff
    sbc a                                         ; $608b: $9f
    rst $38                                       ; $608c: $ff
    add c                                         ; $608d: $81
    ld a, a                                       ; $608e: $7f
    ld h, c                                       ; $608f: $61
    ld [bc], a                                    ; $6090: $02
    ld e, $06                                     ; $6091: $1e $06
    nop                                           ; $6093: $00
    ld [bc], a                                    ; $6094: $02
    inc bc                                        ; $6095: $03
    sbc d                                         ; $6096: $9a
    ld [hl], a                                    ; $6097: $77
    rst $38                                       ; $6098: $ff
    ld a, $ff                                     ; $6099: $3e $ff
    ldh [rIE], a                                  ; $609b: $e0 $ff
    ret c                                         ; $609d: $d8

    rst $38                                       ; $609e: $ff
    ld h, b                                       ; $609f: $60
    rst $38                                       ; $60a0: $ff
    ld a, b                                       ; $60a1: $78
    rst $38                                       ; $60a2: $ff
    jp nz, $94ff                                  ; $60a3: $c2 $ff $94

    rst $38                                       ; $60a6: $ff
    dec sp                                        ; $60a7: $3b
    rst $38                                       ; $60a8: $ff
    ld d, h                                       ; $60a9: $54
    rst $38                                       ; $60aa: $ff
    xor d                                         ; $60ab: $aa
    rst $38                                       ; $60ac: $ff
    push de                                       ; $60ad: $d5
    rst $38                                       ; $60ae: $ff
    ld a, [$02ff]                                 ; $60af: $fa $ff $02
    ccf                                           ; $60b2: $3f
    ld [bc], a                                    ; $60b3: $02
    db $10                                        ; $60b4: $10
    ld [bc], a                                    ; $60b5: $02
    ldh a, [$97]                                  ; $60b6: $f0 $97
    ld a, b                                       ; $60b8: $78
    ld hl, sp-$14                                 ; $60b9: $f8 $ec
    db $fc                                        ; $60bb: $fc
    inc d                                         ; $60bc: $14
    db $fc                                        ; $60bd: $fc
    ld d, $fe                                     ; $60be: $16 $fe
    dec bc                                        ; $60c0: $0b
    rst $38                                       ; $60c1: $ff
    rrca                                          ; $60c2: $0f
    cp $0f                                        ; $60c3: $fe $0f
    rst $38                                       ; $60c5: $ff
    ld b, [hl]                                    ; $60c6: $46
    cp $67                                        ; $60c7: $fe $67
    cp a                                          ; $60c9: $bf
    rst $30                                       ; $60ca: $f7
    ld e, $ff                                     ; $60cb: $1e $ff
    cp a                                          ; $60cd: $bf
    ld c, a                                       ; $60ce: $4f
    ld [bc], a                                    ; $60cf: $02
    rst $38                                       ; $60d0: $ff
    add e                                         ; $60d1: $83
    ld hl, sp-$01                                 ; $60d2: $f8 $ff
    cp $02                                        ; $60d4: $fe $02
    add c                                         ; $60d6: $81
    ld [bc], a                                    ; $60d7: $02
    ldh a, [$84]                                  ; $60d8: $f0 $84
    cp $0e                                        ; $60da: $fe $0e
    rst $38                                       ; $60dc: $ff
    pop af                                        ; $60dd: $f1
    ld [bc], a                                    ; $60de: $02
    rrca                                          ; $60df: $0f
    ld [bc], a                                    ; $60e0: $02
    ldh a, [$84]                                  ; $60e1: $f0 $84
    ld hl, sp+$08                                 ; $60e3: $f8 $08
    db $fc                                        ; $60e5: $fc
    db $f4                                        ; $60e6: $f4
    ld [bc], a                                    ; $60e7: $02
    ret z                                         ; $60e8: $c8

    add h                                         ; $60e9: $84
    ldh [rNR41], a                                ; $60ea: $e0 $20
    ldh [$a0], a                                  ; $60ec: $e0 $a0
    ld [bc], a                                    ; $60ee: $02
    ld b, b                                       ; $60ef: $40
    ld a, [bc]                                    ; $60f0: $0a
    nop                                           ; $60f1: $00
    ld [bc], a                                    ; $60f2: $02
    ld [bc], a                                    ; $60f3: $02
    ld [bc], a                                    ; $60f4: $02
    inc bc                                        ; $60f5: $03
    inc e                                         ; $60f6: $1c
    nop                                           ; $60f7: $00
    rst $38                                       ; $60f8: $ff
    dec d                                         ; $60f9: $15
    ld [$0df6], sp                                ; $60fa: $08 $f6 $0d
    add sp, -$01                                  ; $60fd: $e8 $ff

Call_0f2_60ff:
    db $e3                                        ; $60ff: $e3
    push af                                       ; $6100: $f5
    ldh [$fd], a                                  ; $6101: $e0 $fd
    rst $18                                       ; $6103: $df
    ld bc, $f0f3                                  ; $6104: $01 $f3 $f0
    ldh a, [$f8]                                  ; $6107: $f0 $f8
    ldh a, [rP1]                                  ; $6109: $f0 $00
    push af                                       ; $610b: $f5
    rlca                                          ; $610c: $07
    rst $38                                       ; $610d: $ff
    ei                                            ; $610e: $fb
    ld [bc], a                                    ; $610f: $02
    inc bc                                        ; $6110: $03
    add h                                         ; $6111: $84
    rlca                                          ; $6112: $07
    inc b                                         ; $6113: $04
    rlca                                          ; $6114: $07
    inc b                                         ; $6115: $04
    ld [bc], a                                    ; $6116: $02
    rrca                                          ; $6117: $0f
    sbc b                                         ; $6118: $98
    ld b, $07                                     ; $6119: $06 $07
    dec e                                         ; $611b: $1d
    rra                                           ; $611c: $1f
    db $10                                        ; $611d: $10
    rra                                           ; $611e: $1f
    ld h, c                                       ; $611f: $61
    ld a, a                                       ; $6120: $7f
    jr nz, jr_0f2_6162                            ; $6121: $20 $3f

    call Call_0f2_43ff                            ; $6123: $cd $ff $43
    ld a, a                                       ; $6126: $7f
    ld h, b                                       ; $6127: $60
    ld a, a                                       ; $6128: $7f
    ld [c], a                                     ; $6129: $e2
    rst $38                                       ; $612a: $ff
    or a                                          ; $612b: $b7
    rst $38                                       ; $612c: $ff
    ld a, l                                       ; $612d: $7d
    ld a, a                                       ; $612e: $7f
    rst $18                                       ; $612f: $df
    rst $38                                       ; $6130: $ff
    ld [bc], a                                    ; $6131: $02
    inc sp                                        ; $6132: $33
    sub d                                         ; $6133: $92
    ld a, h                                       ; $6134: $7c
    ld e, a                                       ; $6135: $5f
    db $e4                                        ; $6136: $e4
    rst $38                                       ; $6137: $ff
    reti                                          ; $6138: $d9


    ld [hl], a                                    ; $6139: $77
    ret                                           ; $613a: $c9


    ld a, a                                       ; $613b: $7f
    add e                                         ; $613c: $83
    rst $38                                       ; $613d: $ff
    jp $a7ff                                      ; $613e: $c3 $ff $a7


    cp $1f                                        ; $6141: $fe $1f
    cp $b9                                        ; $6143: $fe $b9
    rst $38                                       ; $6145: $ff
    ld [bc], a                                    ; $6146: $02
    cp $02                                        ; $6147: $fe $02
    ld hl, sp+$02                                 ; $6149: $f8 $02
    db $fc                                        ; $614b: $fc
    add [hl]                                      ; $614c: $86
    cp $ca                                        ; $614d: $fe $ca
    ld a, $ca                                     ; $614f: $3e $ca
    db $fc                                        ; $6151: $fc
    call z, $0602                                 ; $6152: $cc $02 $06
    add l                                         ; $6155: $85
    rrca                                          ; $6156: $0f
    add hl, bc                                    ; $6157: $09
    rlca                                          ; $6158: $07
    rrca                                          ; $6159: $0f
    ld bc, $0f03                                  ; $615a: $01 $03 $0f
    add h                                         ; $615d: $84
    ld c, $08                                     ; $615e: $0e $08
    ld c, $08                                     ; $6160: $0e $08

jr_0f2_6162:
    ld [bc], a                                    ; $6162: $02
    nop                                           ; $6163: $00
    inc bc                                        ; $6164: $03
    inc c                                         ; $6165: $0c
    add c                                         ; $6166: $81
    ld [$000c], sp                                ; $6167: $08 $0c $00
    add c                                         ; $616a: $81
    ld [bc], a                                    ; $616b: $02
    inc bc                                        ; $616c: $03
    inc bc                                        ; $616d: $03
    ld [bc], a                                    ; $616e: $02
    ld bc, $0292                                  ; $616f: $01 $92 $02
    inc bc                                        ; $6172: $03
    ld b, $07                                     ; $6173: $06 $07
    rra                                           ; $6175: $1f
    dec de                                        ; $6176: $1b
    ccf                                           ; $6177: $3f
    inc hl                                        ; $6178: $23
    ld a, a                                       ; $6179: $7f
    ld b, a                                       ; $617a: $47
    ld sp, hl                                     ; $617b: $f9
    adc c                                         ; $617c: $89
    rst $38                                       ; $617d: $ff
    adc a                                         ; $617e: $8f
    rst $38                                       ; $617f: $ff
    add b                                         ; $6180: $80
    ld a, a                                       ; $6181: $7f
    ld h, b                                       ; $6182: $60
    ld [bc], a                                    ; $6183: $02
    rra                                           ; $6184: $1f
    ld b, $00                                     ; $6185: $06 $00
    inc b                                         ; $6187: $04
    rlca                                          ; $6188: $07
    sub a                                         ; $6189: $97
    dec b                                         ; $618a: $05
    rlca                                          ; $618b: $07
    ld [hl], b                                    ; $618c: $70
    rst $38                                       ; $618d: $ff
    ret c                                         ; $618e: $d8

    rst $38                                       ; $618f: $ff
    ldh [rIE], a                                  ; $6190: $e0 $ff
    ld hl, sp-$01                                 ; $6192: $f8 $ff
    ret nz                                        ; $6194: $c0

    rst $38                                       ; $6195: $ff
    sub h                                         ; $6196: $94
    rst $38                                       ; $6197: $ff
    cp e                                          ; $6198: $bb
    cp $55                                        ; $6199: $fe $55
    rst $38                                       ; $619b: $ff
    xor d                                         ; $619c: $aa
    rst $38                                       ; $619d: $ff
    push de                                       ; $619e: $d5
    rst $38                                       ; $619f: $ff
    ld sp, hl                                     ; $61a0: $f9
    inc bc                                        ; $61a1: $03
    rst $38                                       ; $61a2: $ff
    ld [bc], a                                    ; $61a3: $02

jr_0f2_61a4:
    inc a                                         ; $61a4: $3c
    ld [bc], a                                    ; $61a5: $02
    ldh [rSC], a                                  ; $61a6: $e0 $02
    ldh a, [$95]                                  ; $61a8: $f0 $95
    jr c, jr_0f2_61a4                             ; $61aa: $38 $f8

    add sp, -$08                                  ; $61ac: $e8 $f8
    inc d                                         ; $61ae: $14
    db $fc                                        ; $61af: $fc
    dec bc                                        ; $61b0: $0b
    rst $38                                       ; $61b1: $ff
    dec bc                                        ; $61b2: $0b
    cp $8d                                        ; $61b3: $fe $8d
    rst $38                                       ; $61b5: $ff
    rst $00                                       ; $61b6: $c7
    ld a, a                                       ; $61b7: $7f
    rst $20                                       ; $61b8: $e7
    ccf                                           ; $61b9: $3f
    rst $10                                       ; $61ba: $d7
    ld a, a                                       ; $61bb: $7f
    xor a                                         ; $61bc: $af
    rst $38                                       ; $61bd: $ff
    ld e, a                                       ; $61be: $5f
    inc b                                         ; $61bf: $04
    rst $38                                       ; $61c0: $ff
    add c                                         ; $61c1: $81
    ld e, b                                       ; $61c2: $58
    ld [bc], a                                    ; $61c3: $02
    rst $38                                       ; $61c4: $ff
    ld [bc], a                                    ; $61c5: $02
    ld a, b                                       ; $61c6: $78
    add d                                         ; $61c7: $82
    ld a, [hl]                                    ; $61c8: $7e
    ld b, $02                                     ; $61c9: $06 $02
    ld a, a                                       ; $61cb: $7f
    inc b                                         ; $61cc: $04
    nop                                           ; $61cd: $00
    ld [bc], a                                    ; $61ce: $02
    ld a, h                                       ; $61cf: $7c
    add h                                         ; $61d0: $84
    ld a, [hl]                                    ; $61d1: $7e
    ld [bc], a                                    ; $61d2: $02
    ld a, a                                       ; $61d3: $7f
    ld a, l                                       ; $61d4: $7d
    ld [bc], a                                    ; $61d5: $02
    ld [hl], d                                    ; $61d6: $72
    add h                                         ; $61d7: $84
    ld a, b                                       ; $61d8: $78
    ld [$2878], sp                                ; $61d9: $08 $78 $28
    ld [bc], a                                    ; $61dc: $02
    ld d, b                                       ; $61dd: $50
    ld a, [bc]                                    ; $61de: $0a
    nop                                           ; $61df: $00
    ld [bc], a                                    ; $61e0: $02
    add c                                         ; $61e1: $81
    inc e                                         ; $61e2: $1c
    nop                                           ; $61e3: $00
    rst $38                                       ; $61e4: $ff
    rla                                           ; $61e5: $17
    add hl, bc                                    ; $61e6: $09
    or $0d                                        ; $61e7: $f6 $0d
    add sp, -$01                                  ; $61e9: $e8 $ff
    db $ec                                        ; $61eb: $ec
    rst $30                                       ; $61ec: $f7
    add sp, -$01                                  ; $61ed: $e8 $ff
    add sp, $07                                   ; $61ef: $e8 $07
    add sp, $0f                                   ; $61f1: $e8 $0f
    jp hl                                         ; $61f3: $e9


    inc d                                         ; $61f4: $14
    ld hl, sp-$11                                 ; $61f5: $f8 $ef
    ld hl, sp-$09                                 ; $61f7: $f8 $f7
    ld hl, sp-$01                                 ; $61f9: $f8 $ff
    ld hl, sp+$07                                 ; $61fb: $f8 $07
    ld [bc], a                                    ; $61fd: $02
    ld bc, $0e8a                                  ; $61fe: $01 $8a $0e
    rrca                                          ; $6201: $0f
    ld b, $07                                     ; $6202: $06 $07
    add hl, bc                                    ; $6204: $09
    rrca                                          ; $6205: $0f
    ld [$150f], sp                                ; $6206: $08 $0f $15
    rra                                           ; $6209: $1f
    ld [bc], a                                    ; $620a: $02
    ccf                                           ; $620b: $3f
    sub d                                         ; $620c: $92
    inc e                                         ; $620d: $1c
    rra                                           ; $620e: $1f
    ld [hl], e                                    ; $620f: $73
    ld a, a                                       ; $6210: $7f
    inc a                                         ; $6211: $3c
    ccf                                           ; $6212: $3f
    ld h, b                                       ; $6213: $60
    ld a, a                                       ; $6214: $7f
    ret nz                                        ; $6215: $c0

    rst $38                                       ; $6216: $ff
    and b                                         ; $6217: $a0
    rst $38                                       ; $6218: $ff
    sub l                                         ; $6219: $95
    rst $38                                       ; $621a: $ff
    xor d                                         ; $621b: $aa
    rst $38                                       ; $621c: $ff
    push de                                       ; $621d: $d5
    rst $38                                       ; $621e: $ff
    ld [bc], a                                    ; $621f: $02
    inc b                                         ; $6220: $04
    ld [bc], a                                    ; $6221: $02
    rlca                                          ; $6222: $07
    sbc h                                         ; $6223: $9c
    ld e, d                                       ; $6224: $5a
    ld e, a                                       ; $6225: $5f
    ld h, b                                       ; $6226: $60
    ld a, a                                       ; $6227: $7f
    or c                                          ; $6228: $b1
    rst $38                                       ; $6229: $ff
    db $e3                                        ; $622a: $e3
    rst $38                                       ; $622b: $ff
    ld h, e                                       ; $622c: $63
    rst $38                                       ; $622d: $ff
    ld [hl], e                                    ; $622e: $73
    rst $38                                       ; $622f: $ff
    db $e3                                        ; $6230: $e3
    rst $38                                       ; $6231: $ff
    ldh a, [rIE]                                  ; $6232: $f0 $ff
    db $fc                                        ; $6234: $fc
    rst $38                                       ; $6235: $ff
    rra                                           ; $6236: $1f
    rst $38                                       ; $6237: $ff
    rst $00                                       ; $6238: $c7
    rst $38                                       ; $6239: $ff
    ld bc, $40ff                                  ; $623a: $01 $ff $40
    rst $38                                       ; $623d: $ff
    ld hl, $02ff                                  ; $623e: $21 $ff $02
    and e                                         ; $6241: $a3
    adc e                                         ; $6242: $8b
    rst $38                                       ; $6243: $ff
    db $fc                                        ; $6244: $fc
    rst $18                                       ; $6245: $df
    ld hl, sp-$39                                 ; $6246: $f8 $c7
    db $fc                                        ; $6248: $fc
    xor a                                         ; $6249: $af
    rst $38                                       ; $624a: $ff
    rla                                           ; $624b: $17
    rst $38                                       ; $624c: $ff
    xor [hl]                                      ; $624d: $ae
    inc bc                                        ; $624e: $03
    rst $38                                       ; $624f: $ff
    ld [bc], a                                    ; $6250: $02
    pop af                                        ; $6251: $f1
    add [hl]                                      ; $6252: $86
    ld hl, sp-$18                                 ; $6253: $f8 $e8
    ld hl, sp-$80                                 ; $6255: $f8 $80
    ld hl, sp-$38                                 ; $6257: $f8 $c8
    ld [bc], a                                    ; $6259: $02
    add b                                         ; $625a: $80
    ld [bc], a                                    ; $625b: $02
    ret nz                                        ; $625c: $c0

    ld [bc], a                                    ; $625d: $02
    ld hl, sp-$7e                                 ; $625e: $f8 $82
    cp [hl]                                       ; $6260: $be
    and $02                                       ; $6261: $e6 $02
    ldh a, [rSC]                                  ; $6263: $f0 $02
    cp $8e                                        ; $6265: $fe $8e
    ret nz                                        ; $6267: $c0

    ld a, a                                       ; $6268: $7f
    call c, Call_000_00ff                         ; $6269: $dc $ff $00
    rst $38                                       ; $626c: $ff
    add b                                         ; $626d: $80
    rst $38                                       ; $626e: $ff
    ld a, e                                       ; $626f: $7b
    rst $38                                       ; $6270: $ff
    rst $18                                       ; $6271: $df
    di                                            ; $6272: $f3
    add $fc                                       ; $6273: $c6 $fc
    ld [bc], a                                    ; $6275: $02
    jr c, jr_0f2_6284                             ; $6276: $38 $0c

    nop                                           ; $6278: $00
    ld [bc], a                                    ; $6279: $02
    db $10                                        ; $627a: $10
    ld [bc], a                                    ; $627b: $02
    ld d, $84                                     ; $627c: $16 $84
    rrca                                          ; $627e: $0f
    add hl, de                                    ; $627f: $19
    ld b, $1e                                     ; $6280: $06 $1e
    inc bc                                        ; $6282: $03
    inc e                                         ; $6283: $1c

jr_0f2_6284:
    add d                                         ; $6284: $82
    inc b                                         ; $6285: $04
    jr @+$15                                      ; $6286: $18 $13

    nop                                           ; $6288: $00
    ld [bc], a                                    ; $6289: $02
    rrca                                          ; $628a: $0f
    adc h                                         ; $628b: $8c
    ccf                                           ; $628c: $3f
    jr nc, jr_0f2_630e                            ; $628d: $30 $7f

    ld b, d                                       ; $628f: $42
    rst $38                                       ; $6290: $ff
    sbc a                                         ; $6291: $9f
    rst $38                                       ; $6292: $ff
    adc a                                         ; $6293: $8f
    rst $38                                       ; $6294: $ff
    add b                                         ; $6295: $80
    ld a, a                                       ; $6296: $7f
    ld h, b                                       ; $6297: $60
    ld [bc], a                                    ; $6298: $02
    rra                                           ; $6299: $1f
    jr jr_0f2_629c                                ; $629a: $18 $00

jr_0f2_629c:
    add h                                         ; $629c: $84
    xor $ff                                       ; $629d: $ee $ff
    db $fd                                        ; $629f: $fd
    ccf                                           ; $62a0: $3f
    ld [bc], a                                    ; $62a1: $02
    rst $38                                       ; $62a2: $ff
    ld [bc], a                                    ; $62a3: $02
    dec bc                                        ; $62a4: $0b
    stop                                          ; $62a5: $10 $00
    adc e                                         ; $62a7: $8b
    adc c                                         ; $62a8: $89
    rst $38                                       ; $62a9: $ff
    ld c, h                                       ; $62aa: $4c
    rst $30                                       ; $62ab: $f7
    cp l                                          ; $62ac: $bd
    db $e3                                        ; $62ad: $e3
    rst $18                                       ; $62ae: $df
    rst $30                                       ; $62af: $f7
    xor l                                         ; $62b0: $ad
    rst $38                                       ; $62b1: $ff
    rst $30                                       ; $62b2: $f7
    ld [bc], a                                    ; $62b3: $02
    rst $38                                       ; $62b4: $ff
    add c                                         ; $62b5: $81
    xor h                                         ; $62b6: $ac
    ld [bc], a                                    ; $62b7: $02
    rst $38                                       ; $62b8: $ff
    ld [bc], a                                    ; $62b9: $02
    db $10                                        ; $62ba: $10
    ld c, $00                                     ; $62bb: $0e $00
    add d                                         ; $62bd: $82
    cp a                                          ; $62be: $bf
    rst $38                                       ; $62bf: $ff
    ld [bc], a                                    ; $62c0: $02
    ldh [rSC], a                                  ; $62c1: $e0 $02
    db $fc                                        ; $62c3: $fc
    add h                                         ; $62c4: $84
    cp [hl]                                       ; $62c5: $be
    ld [c], a                                     ; $62c6: $e2
    rst $38                                       ; $62c7: $ff
    db $fd                                        ; $62c8: $fd
    ld [bc], a                                    ; $62c9: $02
    ld a, [c]                                     ; $62ca: $f2
    add h                                         ; $62cb: $84
    ld hl, sp+$08                                 ; $62cc: $f8 $08
    ld hl, sp-$58                                 ; $62ce: $f8 $a8
    ld [bc], a                                    ; $62d0: $02
    ld d, b                                       ; $62d1: $50
    ld c, $00                                     ; $62d2: $0e $00
    rst $38                                       ; $62d4: $ff
    rla                                           ; $62d5: $17
    add hl, bc                                    ; $62d6: $09
    or $0d                                        ; $62d7: $f6 $0d
    add sp, -$01                                  ; $62d9: $e8 $ff
    ld hl, sp-$11                                 ; $62db: $f8 $ef
    rst $28                                       ; $62dd: $ef
    rst $30                                       ; $62de: $f7
    rst $38                                       ; $62df: $ff
    rst $30                                       ; $62e0: $f7
    db $eb                                        ; $62e1: $eb
    rst $38                                       ; $62e2: $ff
    ei                                            ; $62e3: $fb
    rst $38                                       ; $62e4: $ff
    jp hl                                         ; $62e5: $e9


    rlca                                          ; $62e6: $07
    ld sp, hl                                     ; $62e7: $f9
    rlca                                          ; $62e8: $07
    ld [$ed0f], a                                 ; $62e9: $ea $0f $ed
    rla                                           ; $62ec: $17
    ld [bc], a                                    ; $62ed: $02
    ld bc, $0f02                                  ; $62ee: $01 $02 $0f
    adc d                                         ; $62f1: $8a
    ccf                                           ; $62f2: $3f
    ld sp, $417f                                  ; $62f3: $31 $7f $41
    rst $38                                       ; $62f6: $ff
    adc a                                         ; $62f7: $8f
    rst $38                                       ; $62f8: $ff
    add b                                         ; $62f9: $80
    rst $38                                       ; $62fa: $ff
    pop bc                                        ; $62fb: $c1
    ld [bc], a                                    ; $62fc: $02
    ld a, $10                                     ; $62fd: $3e $10
    nop                                           ; $62ff: $00
    ld [bc], a                                    ; $6300: $02
    inc bc                                        ; $6301: $03
    ld [bc], a                                    ; $6302: $02
    ld bc, $0683                                  ; $6303: $01 $83 $06
    rlca                                          ; $6306: $07
    ld c, $03                                     ; $6307: $0e $03
    rrca                                          ; $6309: $0f
    sub [hl]                                      ; $630a: $96
    inc a                                         ; $630b: $3c
    ccf                                           ; $630c: $3f
    ld [hl], a                                    ; $630d: $77

jr_0f2_630e:
    ld a, a                                       ; $630e: $7f
    inc a                                         ; $630f: $3c
    ccf                                           ; $6310: $3f
    ld h, b                                       ; $6311: $60
    ld a, a                                       ; $6312: $7f
    ldh [rIE], a                                  ; $6313: $e0 $ff
    sub b                                         ; $6315: $90
    rst $38                                       ; $6316: $ff
    xor l                                         ; $6317: $ad
    rst $38                                       ; $6318: $ff
    ld e, d                                       ; $6319: $5a
    rst $38                                       ; $631a: $ff
    xor l                                         ; $631b: $ad
    rst $38                                       ; $631c: $ff
    sbc $ff                                       ; $631d: $de $ff
    db $fd                                        ; $631f: $fd
    rst $38                                       ; $6320: $ff
    ld [bc], a                                    ; $6321: $02
    daa                                           ; $6322: $27
    ld e, $00                                     ; $6323: $1e $00
    ld [bc], a                                    ; $6325: $02
    ld bc, $1682                                  ; $6326: $01 $82 $16
    rla                                           ; $6329: $17
    ld [bc], a                                    ; $632a: $02
    rra                                           ; $632b: $1f
    adc c                                         ; $632c: $89
    ld h, [hl]                                    ; $632d: $66
    ld a, a                                       ; $632e: $7f
    xor h                                         ; $632f: $ac
    rst $38                                       ; $6330: $ff
    sbc [hl]                                      ; $6331: $9e
    rst $38                                       ; $6332: $ff
    ld c, h                                       ; $6333: $4c
    rst $38                                       ; $6334: $ff
    ld a, $03                                     ; $6335: $3e $03
    rst $38                                       ; $6337: $ff
    sub [hl]                                      ; $6338: $96
    ccf                                           ; $6339: $3f
    rst $38                                       ; $633a: $ff
    push bc                                       ; $633b: $c5
    rst $38                                       ; $633c: $ff
    inc sp                                        ; $633d: $33
    rst $38                                       ; $633e: $ff
    ld bc, $20ff                                  ; $633f: $01 $ff $20
    rst $38                                       ; $6342: $ff
    sbc c                                         ; $6343: $99
    rst $38                                       ; $6344: $ff
    ld c, h                                       ; $6345: $4c
    rst $30                                       ; $6346: $f7
    cp a                                          ; $6347: $bf
    db $e3                                        ; $6348: $e3
    rst $18                                       ; $6349: $df
    rst $38                                       ; $634a: $ff
    and l                                         ; $634b: $a5
    rst $38                                       ; $634c: $ff
    rst $30                                       ; $634d: $f7
    cp $02                                        ; $634e: $fe $02
    ld a, a                                       ; $6350: $7f
    ld [bc], a                                    ; $6351: $02
    db $10                                        ; $6352: $10
    inc d                                         ; $6353: $14
    nop                                           ; $6354: $00
    ld [bc], a                                    ; $6355: $02
    inc b                                         ; $6356: $04
    ld [bc], a                                    ; $6357: $02
    sbc a                                         ; $6358: $9f
    ld [bc], a                                    ; $6359: $02
    rst $38                                       ; $635a: $ff
    sbc b                                         ; $635b: $98
    dec [hl]                                      ; $635c: $35
    rst $38                                       ; $635d: $ff
    add hl, de                                    ; $635e: $19
    rst $38                                       ; $635f: $ff
    inc [hl]                                      ; $6360: $34
    rst $38                                       ; $6361: $ff
    ld h, d                                       ; $6362: $62
    rst $38                                       ; $6363: $ff
    ld [hl], l                                    ; $6364: $75
    rst $38                                       ; $6365: $ff
    ld a, a                                       ; $6366: $7f
    rst $38                                       ; $6367: $ff
    ld a, a                                       ; $6368: $7f
    rst $38                                       ; $6369: $ff
    ccf                                           ; $636a: $3f
    rst $38                                       ; $636b: $ff
    ccf                                           ; $636c: $3f
    db $fd                                        ; $636d: $fd
    cp $e6                                        ; $636e: $fe $e6
    ld hl, sp-$40                                 ; $6370: $f8 $c0
    ld hl, sp-$18                                 ; $6372: $f8 $e8
    inc b                                         ; $6374: $04
    ldh [$86], a                                  ; $6375: $e0 $86
    cp h                                          ; $6377: $bc
    db $fc                                        ; $6378: $fc
    cp [hl]                                       ; $6379: $be
    ld [c], a                                     ; $637a: $e2
    rst $38                                       ; $637b: $ff
    db $fd                                        ; $637c: $fd
    ld [bc], a                                    ; $637d: $02
    ld a, [c]                                     ; $637e: $f2
    add h                                         ; $637f: $84
    ld hl, sp+$08                                 ; $6380: $f8 $08
    ld hl, sp-$58                                 ; $6382: $f8 $a8
    ld [bc], a                                    ; $6384: $02
    ld d, b                                       ; $6385: $50
    stop                                          ; $6386: $10 $00
    ld [bc], a                                    ; $6388: $02
    ld b, b                                       ; $6389: $40
    ld [bc], a                                    ; $638a: $02
    ldh a, [rSC]                                  ; $638b: $f0 $02
    ei                                            ; $638d: $fb
    adc [hl]                                      ; $638e: $8e
    ld a, a                                       ; $638f: $7f
    rst $08                                       ; $6390: $cf
    db $fc                                        ; $6391: $fc
    add a                                         ; $6392: $87
    db $fd                                        ; $6393: $fd
    rst $08                                       ; $6394: $cf
    ld [hl], b                                    ; $6395: $70

jr_0f2_6396:
    rst $38                                       ; $6396: $ff
    or $ff                                        ; $6397: $f6 $ff
    db $fd                                        ; $6399: $fd
    rst $38                                       ; $639a: $ff
    ld c, $0f                                     ; $639b: $0e $0f
    ld [bc], a                                    ; $639d: $02
    ld bc, $000a                                  ; $639e: $01 $0a $00
    ld [bc], a                                    ; $63a1: $02
    ret nz                                        ; $63a2: $c0

    adc h                                         ; $63a3: $8c
    jr nc, jr_0f2_6396                            ; $63a4: $30 $f0

    ret z                                         ; $63a6: $c8

    ld hl, sp+$46                                 ; $63a7: $f8 $46
    cp $0f                                        ; $63a9: $fe $0f

Call_0f2_63ab:
    ld sp, hl                                     ; $63ab: $f9
    cp [hl]                                       ; $63ac: $be
    cp $4c                                        ; $63ad: $fe $4c
    db $fc                                        ; $63af: $fc
    ld [bc], a                                    ; $63b0: $02
    or b                                          ; $63b1: $b0
    stop                                          ; $63b2: $10 $00
    rst $38                                       ; $63b4: $ff
    dec d                                         ; $63b5: $15
    ld [$0df6], sp                                ; $63b6: $08 $f6 $0d
    add sp, -$01                                  ; $63b9: $e8 $ff
    ld [$e8f5], a                                 ; $63bb: $ea $f5 $e8
    db $fd                                        ; $63be: $fd
    add sp, $05                                   ; $63bf: $e8 $05
    jp hl                                         ; $63c1: $e9


    inc c                                         ; $63c2: $0c
    ld hl, sp-$0f                                 ; $63c3: $f8 $f1
    ld hl, sp-$07                                 ; $63c5: $f8 $f9
    ld hl, sp+$01                                 ; $63c7: $f8 $01
    ld hl, sp+$07                                 ; $63c9: $f8 $07
    ld [bc], a                                    ; $63cb: $02
    ld [bc], a                                    ; $63cc: $02
    ld [bc], a                                    ; $63cd: $02
    rlca                                          ; $63ce: $07
    sbc h                                         ; $63cf: $9c

jr_0f2_63d0:
    dec b                                         ; $63d0: $05
    rlca                                          ; $63d1: $07
    dec de                                        ; $63d2: $1b
    rra                                           ; $63d3: $1f
    ld de, $1b1f                                  ; $63d4: $11 $1f $1b
    rra                                           ; $63d7: $1f
    ld h, a                                       ; $63d8: $67
    ld a, a                                       ; $63d9: $7f
    dec [hl]                                      ; $63da: $35
    ccf                                           ; $63db: $3f
    daa                                           ; $63dc: $27
    ccf                                           ; $63dd: $3f
    ld c, e                                       ; $63de: $4b
    ld a, a                                       ; $63df: $7f
    cp $ff                                        ; $63e0: $fe $ff
    sbc b                                         ; $63e2: $98
    rst $38                                       ; $63e3: $ff
    ld h, b                                       ; $63e4: $60
    ld a, a                                       ; $63e5: $7f
    ldh [rIE], a                                  ; $63e6: $e0 $ff
    pop bc                                        ; $63e8: $c1
    ld a, a                                       ; $63e9: $7f
    ld [$027f], a                                 ; $63ea: $ea $7f $02
    add hl, bc                                    ; $63ed: $09
    ld [bc], a                                    ; $63ee: $02
    ld e, a                                       ; $63ef: $5f
    adc a                                         ; $63f0: $8f
    di                                            ; $63f1: $f3
    rst $38                                       ; $63f2: $ff
    add sp, -$01                                  ; $63f3: $e8 $ff
    push bc                                       ; $63f5: $c5
    rst $38                                       ; $63f6: $ff
    inc h                                         ; $63f7: $24
    rst $38                                       ; $63f8: $ff
    rra                                           ; $63f9: $1f
    rst $38                                       ; $63fa: $ff
    add hl, de                                    ; $63fb: $19
    rst $38                                       ; $63fc: $ff
    adc l                                         ; $63fd: $8d
    rst $38                                       ; $63fe: $ff
    rst $20                                       ; $63ff: $e7
    ld [bc], a                                    ; $6400: $02
    rst $38                                       ; $6401: $ff
    adc e                                         ; $6402: $8b
    ld hl, sp-$09                                 ; $6403: $f8 $f7
    db $fc                                        ; $6405: $fc
    rra                                           ; $6406: $1f
    rst $38                                       ; $6407: $ff
    rlca                                          ; $6408: $07
    rst $38                                       ; $6409: $ff
    ld [bc], a                                    ; $640a: $02
    rst $38                                       ; $640b: $ff
    ld b, c                                       ; $640c: $41
    rst $38                                       ; $640d: $ff
    ld [bc], a                                    ; $640e: $02
    halt                                          ; $640f: $76
    adc [hl]                                      ; $6410: $8e
    rst $38                                       ; $6411: $ff
    adc a                                         ; $6412: $8f
    ld hl, sp+$0f                                 ; $6413: $f8 $0f
    ei                                            ; $6415: $fb
    sbc [hl]                                      ; $6416: $9e
    ld h, c                                       ; $6417: $61
    rst $38                                       ; $6418: $ff
    db $ec                                        ; $6419: $ec
    rst $38                                       ; $641a: $ff
    ei                                            ; $641b: $fb
    rst $38                                       ; $641c: $ff
    adc [hl]                                      ; $641d: $8e
    adc a                                         ; $641e: $8f
    ld [bc], a                                    ; $641f: $02
    pop bc                                        ; $6420: $c1
    adc [hl]                                      ; $6421: $8e
    cp b                                          ; $6422: $b8
    ld hl, sp-$04                                 ; $6423: $f8 $fc
    ld h, h                                       ; $6425: $64
    call c, $ce5c                                 ; $6426: $dc $5c $ce
    ld c, d                                       ; $6429: $4a
    adc [hl]                                      ; $642a: $8e
    adc d                                         ; $642b: $8a
    adc $ca                                       ; $642c: $ce $ca
    ld l, $ea                                     ; $642e: $2e $ea
    ld [bc], a                                    ; $6430: $02
    ld b, b                                       ; $6431: $40
    adc h                                         ; $6432: $8c
    jr z, @+$6a                                   ; $6433: $28 $68

    ld c, b                                       ; $6435: $48
    ld a, b                                       ; $6436: $78
    ld b, [hl]                                    ; $6437: $46
    ld a, [hl]                                    ; $6438: $7e
    rrca                                          ; $6439: $0f
    ld a, c                                       ; $643a: $79
    ld a, $7e                                     ; $643b: $3e $7e
    ld a, h                                       ; $643d: $7c
    ld c, h                                       ; $643e: $4c
    ld [bc], a                                    ; $643f: $02
    ld [hl], b                                    ; $6440: $70
    stop                                          ; $6441: $10 $00
    ld [bc], a                                    ; $6443: $02
    jr nc, jr_0f2_63d0                            ; $6444: $30 $8a

    ld [hl], b                                    ; $6446: $70
    ld b, b                                       ; $6447: $40
    db $fc                                        ; $6448: $fc
    adc a                                         ; $6449: $8f
    ld a, [$fd8f]                                 ; $644a: $fa $8f $fd
    add a                                         ; $644d: $87
    ld a, a                                       ; $644e: $7f
    ld h, a                                       ; $644f: $67
    ld [bc], a                                    ; $6450: $02
    dec e                                         ; $6451: $1d
    ld [de], a                                    ; $6452: $12
    nop                                           ; $6453: $00
    adc [hl]                                      ; $6454: $8e
    ld [bc], a                                    ; $6455: $02
    rrca                                          ; $6456: $0f
    ld [$540f], sp                                ; $6457: $08 $0f $54
    rst $38                                       ; $645a: $ff
    xor e                                         ; $645b: $ab
    cp $7d                                        ; $645c: $fe $7d
    rst $38                                       ; $645e: $ff
    or a                                          ; $645f: $b7
    rst $38                                       ; $6460: $ff
    rst $28                                       ; $6461: $ef
    cp $02                                        ; $6462: $fe $02
    cp l                                          ; $6464: $bd
    stop                                          ; $6465: $10 $00
    adc b                                         ; $6467: $88
    dec de                                        ; $6468: $1b
    rst $38                                       ; $6469: $ff
    sbc e                                         ; $646a: $9b
    rst $38                                       ; $646b: $ff
    rst $10                                       ; $646c: $d7
    ld a, a                                       ; $646d: $7f
    db $fd                                        ; $646e: $fd
    ccf                                           ; $646f: $3f
    ld [bc], a                                    ; $6470: $02
    rst $38                                       ; $6471: $ff
    add c                                         ; $6472: $81
    ccf                                           ; $6473: $3f
    ld [bc], a                                    ; $6474: $02
    rst $38                                       ; $6475: $ff
    add e                                         ; $6476: $83
    or b                                          ; $6477: $b0
    rst $38                                       ; $6478: $ff
    cp $02                                        ; $6479: $fe $02
    ld b, c                                       ; $647b: $41
    ld c, $00                                     ; $647c: $0e $00
    add d                                         ; $647e: $82
    jr nc, jr_0f2_6491                            ; $647f: $30 $10

    ld [bc], a                                    ; $6481: $02
    jr nz, jr_0f2_6486                            ; $6482: $20 $02

    inc a                                         ; $6484: $3c
    add h                                         ; $6485: $84

jr_0f2_6486:
    ld a, $22                                     ; $6486: $3e $22
    ccf                                           ; $6488: $3f
    dec a                                         ; $6489: $3d
    ld [bc], a                                    ; $648a: $02
    ld [hl-], a                                   ; $648b: $32
    add h                                         ; $648c: $84
    jr c, jr_0f2_6497                             ; $648d: $38 $08

    jr c, jr_0f2_64b9                             ; $648f: $38 $28

jr_0f2_6491:
    ld [bc], a                                    ; $6491: $02
    db $10                                        ; $6492: $10
    ld c, $00                                     ; $6493: $0e $00
    rst $38                                       ; $6495: $ff
    inc de                                        ; $6496: $13

jr_0f2_6497:
    rlca                                          ; $6497: $07
    or $0d                                        ; $6498: $f6 $0d
    add sp, -$01                                  ; $649a: $e8 $ff
    and $f7                                       ; $649c: $e6 $f7
    push hl                                       ; $649e: $e5
    rst $38                                       ; $649f: $ff
    and $07                                       ; $64a0: $e6 $07
    push af                                       ; $64a2: $f5
    ld a, [c]                                     ; $64a3: $f2
    push af                                       ; $64a4: $f5
    ld a, [$02f5]                                 ; $64a5: $fa $f5 $02
    push af                                       ; $64a8: $f5
    rlca                                          ; $64a9: $07
    ld [bc], a                                    ; $64aa: $02
    ld bc, $0002                                  ; $64ab: $01 $02 $00
    inc b                                         ; $64ae: $04
    ld bc, $0702                                  ; $64af: $01 $02 $07
    sub [hl]                                      ; $64b2: $96
    add hl, de                                    ; $64b3: $19
    rra                                           ; $64b4: $1f
    add hl, bc                                    ; $64b5: $09
    rrca                                          ; $64b6: $0f
    ld a, [de]                                    ; $64b7: $1a
    rra                                           ; $64b8: $1f

jr_0f2_64b9:
    inc e                                         ; $64b9: $1c
    rra                                           ; $64ba: $1f
    jr z, jr_0f2_64fc                             ; $64bb: $28 $3f

    ld l, c                                       ; $64bd: $69
    ld a, a                                       ; $64be: $7f
    daa                                           ; $64bf: $27
    ccf                                           ; $64c0: $3f
    ld e, [hl]                                    ; $64c1: $5e
    ld a, a                                       ; $64c2: $7f
    ld c, a                                       ; $64c3: $4f
    ld a, a                                       ; $64c4: $7f
    rst $18                                       ; $64c5: $df
    rst $38                                       ; $64c6: $ff
    ld c, b                                       ; $64c7: $48
    ld a, a                                       ; $64c8: $7f
    ld [bc], a                                    ; $64c9: $02
    or $9e                                        ; $64ca: $f6 $9e
    rst $38                                       ; $64cc: $ff
    rrca                                          ; $64cd: $0f
    ld hl, sp-$71                                 ; $64ce: $f8 $8f
    di                                            ; $64d0: $f3
    rst $38                                       ; $64d1: $ff
    rst $10                                       ; $64d2: $d7
    rst $38                                       ; $64d3: $ff
    ld l, [hl]                                    ; $64d4: $6e
    ld sp, hl                                     ; $64d5: $f9
    cp [hl]                                       ; $64d6: $be
    rst $30                                       ; $64d7: $f7
    rst $38                                       ; $64d8: $ff
    db $e3                                        ; $64d9: $e3
    ld e, $f1                                     ; $64da: $1e $f1
    ld a, $ff                                     ; $64dc: $3e $ff
    ld [hl], a                                    ; $64de: $77
    rst $38                                       ; $64df: $ff
    sub $fe                                       ; $64e0: $d6 $fe
    and d                                         ; $64e2: $a2
    cp $d3                                        ; $64e3: $fe $d3
    rst $38                                       ; $64e5: $ff
    xor a                                         ; $64e6: $af
    rst $38                                       ; $64e7: $ff
    cp $ff                                        ; $64e8: $fe $ff
    ld [bc], a                                    ; $64ea: $02
    and b                                         ; $64eb: $a0
    adc c                                         ; $64ec: $89
    ld [hl], b                                    ; $64ed: $70
    ldh a, [rNR32]                                ; $64ee: $f0 $1c
    db $fc                                        ; $64f0: $fc
    adc [hl]                                      ; $64f1: $8e
    ld a, [c]                                     ; $64f2: $f2
    inc c                                         ; $64f3: $0c
    db $fc                                        ; $64f4: $fc
    cp b                                          ; $64f5: $b8
    ld [bc], a                                    ; $64f6: $02
    ld hl, sp-$7d                                 ; $64f7: $f8 $83
    ret z                                         ; $64f9: $c8

    ld b, b                                       ; $64fa: $40
    ret nz                                        ; $64fb: $c0

jr_0f2_64fc:
    ld [bc], a                                    ; $64fc: $02
    add b                                         ; $64fd: $80
    ld [bc], a                                    ; $64fe: $02
    nop                                           ; $64ff: $00
    ld [bc], a                                    ; $6500: $02
    inc c                                         ; $6501: $0c
    inc b                                         ; $6502: $04
    ld b, $86                                     ; $6503: $06 $86
    add a                                         ; $6505: $87
    add l                                         ; $6506: $85
    rst $00                                       ; $6507: $c7
    push bc                                       ; $6508: $c5
    ld h, a                                       ; $6509: $67
    push hl                                       ; $650a: $e5
    ld [bc], a                                    ; $650b: $02
    nop                                           ; $650c: $00
    ld [bc], a                                    ; $650d: $02
    ld bc, $0702                                  ; $650e: $01 $02 $07
    adc d                                         ; $6511: $8a
    ld a, $3b                                     ; $6512: $3e $3b
    ld a, a                                       ; $6514: $7f
    ld b, a                                       ; $6515: $47
    ld sp, hl                                     ; $6516: $f9
    sbc c                                         ; $6517: $99
    rst $38                                       ; $6518: $ff
    adc a                                         ; $6519: $8f
    ld a, a                                       ; $651a: $7f
    ld b, e                                       ; $651b: $43
    ld [bc], a                                    ; $651c: $02
    ccf                                           ; $651d: $3f
    ld [bc], a                                    ; $651e: $02
    ld bc, $000d                                  ; $651f: $01 $0d $00
    sub e                                         ; $6522: $93
    rlca                                          ; $6523: $07
    add b                                         ; $6524: $80
    rst $38                                       ; $6525: $ff
    inc [hl]                                      ; $6526: $34
    rst $38                                       ; $6527: $ff
    ld h, d                                       ; $6528: $62
    rst $38                                       ; $6529: $ff
    inc d                                         ; $652a: $14
    rst $38                                       ; $652b: $ff
    cp e                                          ; $652c: $bb
    rst $38                                       ; $652d: $ff
    ld d, h                                       ; $652e: $54
    rst $38                                       ; $652f: $ff
    xor d                                         ; $6530: $aa
    rst $38                                       ; $6531: $ff
    ld d, a                                       ; $6532: $57
    rst $38                                       ; $6533: $ff
    cp a                                          ; $6534: $bf
    db $fd                                        ; $6535: $fd
    ld [bc], a                                    ; $6536: $02

jr_0f2_6537:
    ld a, e                                       ; $6537: $7b
    ld [bc], a                                    ; $6538: $02
    jr nz, jr_0f2_6543                            ; $6539: $20 $08

    nop                                           ; $653b: $00
    sub c                                         ; $653c: $91
    jr nc, jr_0f2_6537                            ; $653d: $30 $f8

    add hl, bc                                    ; $653f: $09
    rst $38                                       ; $6540: $ff
    add hl, bc                                    ; $6541: $09
    rst $38                                       ; $6542: $ff

jr_0f2_6543:
    ld c, d                                       ; $6543: $4a
    rst $38                                       ; $6544: $ff
    ld h, l                                       ; $6545: $65
    cp a                                          ; $6546: $bf
    rst $30                                       ; $6547: $f7
    rra                                           ; $6548: $1f
    push af                                       ; $6549: $f5
    cp a                                          ; $654a: $bf
    ld c, a                                       ; $654b: $4f
    rst $38                                       ; $654c: $ff
    sbc a                                         ; $654d: $9f
    ld [bc], a                                    ; $654e: $02
    rst $38                                       ; $654f: $ff
    add e                                         ; $6550: $83
    ld h, b                                       ; $6551: $60
    rst $38                                       ; $6552: $ff
    db $fd                                        ; $6553: $fd
    ld [bc], a                                    ; $6554: $02
    add d                                         ; $6555: $82
    ld a, [bc]                                    ; $6556: $0a
    nop                                           ; $6557: $00
    adc b                                         ; $6558: $88
    rlca                                          ; $6559: $07

jr_0f2_655a:
    dec b                                         ; $655a: $05
    rla                                           ; $655b: $17
    dec d                                         ; $655c: $15
    rla                                           ; $655d: $17
    dec d                                         ; $655e: $15
    ld e, $1a                                     ; $655f: $1e $1a
    ld [bc], a                                    ; $6561: $02
    inc e                                         ; $6562: $1c
    add h                                         ; $6563: $84
    ld e, $02                                     ; $6564: $1e $02
    rra                                           ; $6566: $1f
    dec e                                         ; $6567: $1d
    ld [bc], a                                    ; $6568: $02
    ld [de], a                                    ; $6569: $12
    add h                                         ; $656a: $84
    jr jr_0f2_6575                                ; $656b: $18 $08

    jr @+$0a                                      ; $656d: $18 $08

    ld [bc], a                                    ; $656f: $02
    db $10                                        ; $6570: $10
    ld [$ff00], sp                                ; $6571: $08 $00 $ff
    inc de                                        ; $6574: $13

jr_0f2_6575:
    rlca                                          ; $6575: $07
    or $0d                                        ; $6576: $f6 $0d
    add sp, -$01                                  ; $6578: $e8 $ff
    add sp, -$08                                  ; $657a: $e8 $f8
    rst $20                                       ; $657c: $e7
    nop                                           ; $657d: $00
    add sp, $06                                   ; $657e: $e8 $06
    rst $30                                       ; $6580: $f7
    ld a, [c]                                     ; $6581: $f2
    rst $30                                       ; $6582: $f7
    ld a, [$02f7]                                 ; $6583: $fa $f7 $02
    rst $30                                       ; $6586: $f7
    rlca                                          ; $6587: $07
    inc b                                         ; $6588: $04
    ld bc, $0284                                  ; $6589: $01 $84 $02
    inc bc                                        ; $658c: $03
    ld [bc], a                                    ; $658d: $02
    inc bc                                        ; $658e: $03
    ld [bc], a                                    ; $658f: $02
    rrca                                          ; $6590: $0f
    sub [hl]                                      ; $6591: $96
    rla                                           ; $6592: $17
    rra                                           ; $6593: $1f
    ld [hl-], a                                   ; $6594: $32
    ccf                                           ; $6595: $3f
    inc [hl]                                      ; $6596: $34
    ccf                                           ; $6597: $3f
    ld d, h                                       ; $6598: $54
    ld a, a                                       ; $6599: $7f
    ld c, b                                       ; $659a: $48
    ld a, a                                       ; $659b: $7f
    ld e, l                                       ; $659c: $5d
    ld a, a                                       ; $659d: $7f
    cp a                                          ; $659e: $bf
    rst $38                                       ; $659f: $ff
    sbc l                                         ; $65a0: $9d
    rst $38                                       ; $65a1: $ff
    cp a                                          ; $65a2: $bf
    rst $38                                       ; $65a3: $ff
    sub b                                         ; $65a4: $90
    rst $38                                       ; $65a5: $ff
    ldh [rIE], a                                  ; $65a6: $e0 $ff
    ld [bc], a                                    ; $65a8: $02
    ld hl, sp-$62                                 ; $65a9: $f8 $9e
    rst $38                                       ; $65ab: $ff
    rrca                                          ; $65ac: $0f
    rst $38                                       ; $65ad: $ff
    sbc h                                         ; $65ae: $9c
    rst $28                                       ; $65af: $ef
    ld sp, hl                                     ; $65b0: $f9
    cp a                                          ; $65b1: $bf
    pop af                                        ; $65b2: $f1

jr_0f2_65b3:
    sbc $ff                                       ; $65b3: $de $ff
    sbc c                                         ; $65b5: $99
    rst $38                                       ; $65b6: $ff
    ld a, $ff                                     ; $65b7: $3e $ff
    cpl                                           ; $65b9: $2f
    rst $38                                       ; $65ba: $ff
    ld c, l                                       ; $65bb: $4d
    rst $38                                       ; $65bc: $ff
    db $ed                                        ; $65bd: $ed
    rst $38                                       ; $65be: $ff
    push bc                                       ; $65bf: $c5
    rst $38                                       ; $65c0: $ff
    and a                                         ; $65c1: $a7
    rst $38                                       ; $65c2: $ff
    ld e, a                                       ; $65c3: $5f
    rst $38                                       ; $65c4: $ff
    ld sp, hl                                     ; $65c5: $f9
    rst $38                                       ; $65c6: $ff
    ld a, $ff                                     ; $65c7: $3e $ff
    ld [bc], a                                    ; $65c9: $02
    db $10                                        ; $65ca: $10
    add d                                         ; $65cb: $82
    jr c, jr_0f2_65f6                             ; $65cc: $38 $28

    ld [bc], a                                    ; $65ce: $02
    jr nc, jr_0f2_655a                            ; $65cf: $30 $89

    inc e                                         ; $65d1: $1c
    inc a                                         ; $65d2: $3c
    ld e, $32                                     ; $65d3: $1e $32
    inc c                                         ; $65d5: $0c
    inc a                                         ; $65d6: $3c
    jr jr_0f2_6611                                ; $65d7: $18 $38

    jr nc, jr_0f2_65e2                            ; $65d9: $30 $07

    nop                                           ; $65db: $00
    ld [bc], a                                    ; $65dc: $02
    rlca                                          ; $65dd: $07
    adc b                                         ; $65de: $88
    ld c, $0a                                     ; $65df: $0e $0a
    inc a                                         ; $65e1: $3c

jr_0f2_65e2:
    inc [hl]                                      ; $65e2: $34
    inc a                                         ; $65e3: $3c
    inc [hl]                                      ; $65e4: $34
    ld e, h                                       ; $65e5: $5c
    db $f4                                        ; $65e6: $f4
    ld [bc], a                                    ; $65e7: $02
    nop                                           ; $65e8: $00
    ld [bc], a                                    ; $65e9: $02
    rra                                           ; $65ea: $1f
    adc b                                         ; $65eb: $88
    ld a, $23                                     ; $65ec: $3e $23
    rst $38                                       ; $65ee: $ff
    rst $18                                       ; $65ef: $df
    rst $38                                       ; $65f0: $ff
    adc a                                         ; $65f1: $8f
    ld a, [hl]                                    ; $65f2: $7e
    ld b, e                                       ; $65f3: $43
    ld [bc], a                                    ; $65f4: $02
    ccf                                           ; $65f5: $3f

jr_0f2_65f6:
    ld [bc], a                                    ; $65f6: $02
    ld bc, $0011                                  ; $65f7: $01 $11 $00
    adc a                                         ; $65fa: $8f
    inc bc                                        ; $65fb: $03
    inc [hl]                                      ; $65fc: $34
    rst $38                                       ; $65fd: $ff
    ld h, d                                       ; $65fe: $62
    rst $38                                       ; $65ff: $ff
    call nc, Call_000_2bff                        ; $6600: $d4 $ff $2b

jr_0f2_6603:
    rst $38                                       ; $6603: $ff
    db $ec                                        ; $6604: $ec
    rst $38                                       ; $6605: $ff
    ld d, h                                       ; $6606: $54
    rst $38                                       ; $6607: $ff
    rst $28                                       ; $6608: $ef
    rst $38                                       ; $6609: $ff
    ld [bc], a                                    ; $660a: $02
    ld a, e                                       ; $660b: $7b
    ld [bc], a                                    ; $660c: $02
    jr nz, jr_0f2_661b                            ; $660d: $20 $0c

    nop                                           ; $660f: $00
    adc l                                         ; $6610: $8d

jr_0f2_6611:
    jr nc, jr_0f2_6603                            ; $6611: $30 $f0

    dec bc                                        ; $6613: $0b
    rst $38                                       ; $6614: $ff
    ld c, d                                       ; $6615: $4a
    rst $38                                       ; $6616: $ff
    ld h, l                                       ; $6617: $65
    cp a                                          ; $6618: $bf
    rst $30                                       ; $6619: $f7
    rra                                           ; $661a: $1f

jr_0f2_661b:
    push af                                       ; $661b: $f5
    cp a                                          ; $661c: $bf
    ld c, a                                       ; $661d: $4f
    ld [bc], a                                    ; $661e: $02
    rst $38                                       ; $661f: $ff
    add e                                         ; $6620: $83
    ldh a, [rIE]                                  ; $6621: $f0 $ff
    db $fd                                        ; $6623: $fd
    ld [bc], a                                    ; $6624: $02
    add d                                         ; $6625: $82
    ld c, $00                                     ; $6626: $0e $00
    ld [bc], a                                    ; $6628: $02
    jr jr_0f2_662d                                ; $6629: $18 $02

    db $10                                        ; $662b: $10
    ld [bc], a                                    ; $662c: $02

jr_0f2_662d:
    jr jr_0f2_65b3                                ; $662d: $18 $84

    ld e, $16                                     ; $662f: $1e $16
    rra                                           ; $6631: $1f
    add hl, de                                    ; $6632: $19
    ld [bc], a                                    ; $6633: $02
    ld d, $84                                     ; $6634: $16 $84
    jr jr_0f2_6640                                ; $6636: $18 $08

    jr @+$0a                                      ; $6638: $18 $08

    ld [bc], a                                    ; $663a: $02
    db $10                                        ; $663b: $10
    inc c                                         ; $663c: $0c
    nop                                           ; $663d: $00
    rst $38                                       ; $663e: $ff
    inc de                                        ; $663f: $13

jr_0f2_6640:
    rlca                                          ; $6640: $07
    or $0d                                        ; $6641: $f6 $0d
    add sp, -$01                                  ; $6643: $e8 $ff
    db $ed                                        ; $6645: $ed
    push af                                       ; $6646: $f5
    jp hl                                         ; $6647: $e9


    db $fd                                        ; $6648: $fd
    jp hl                                         ; $6649: $e9


    dec b                                         ; $664a: $05
    ld a, [c]                                     ; $664b: $f2
    rlca                                          ; $664c: $07
    ld sp, hl                                     ; $664d: $f9
    pop af                                        ; $664e: $f1
    ld sp, hl                                     ; $664f: $f9
    ld sp, hl                                     ; $6650: $f9
    ld sp, hl                                     ; $6651: $f9
    rst $38                                       ; $6652: $ff
    ld [bc], a                                    ; $6653: $02
    ld bc, $029e                                  ; $6654: $01 $9e $02

jr_0f2_6657:
    inc bc                                        ; $6657: $03
    ld b, $07                                     ; $6658: $06 $07
    ld c, $0f                                     ; $665a: $0e $0f
    ld a, [bc]                                    ; $665c: $0a
    rrca                                          ; $665d: $0f
    dec d                                         ; $665e: $15
    rra                                           ; $665f: $1f
    inc de                                        ; $6660: $13
    rra                                           ; $6661: $1f
    daa                                           ; $6662: $27
    ccf                                           ; $6663: $3f
    dec hl                                        ; $6664: $2b
    ccf                                           ; $6665: $3f
    inc l                                         ; $6666: $2c
    ccf                                           ; $6667: $3f
    jr c, jr_0f2_66a9                             ; $6668: $38 $3f

    pop af                                        ; $666a: $f1
    rst $38                                       ; $666b: $ff
    ld a, [c]                                     ; $666c: $f2
    ccf                                           ; $666d: $3f
    db $ec                                        ; $666e: $ec
    rst $38                                       ; $666f: $ff
    ld a, [$edff]                                 ; $6670: $fa $ff $ed
    ccf                                           ; $6673: $3f
    ld [bc], a                                    ; $6674: $02
    rra                                           ; $6675: $1f
    sbc [hl]                                      ; $6676: $9e
    ccf                                           ; $6677: $3f
    ld hl, $737f                                  ; $6678: $21 $7f $73
    ld c, a                                       ; $667b: $4f
    ld a, [hl]                                    ; $667c: $7e
    rst $18                                       ; $667d: $df
    db $fc                                        ; $667e: $fc
    ld [hl], a                                    ; $667f: $77
    rst $38                                       ; $6680: $ff
    ld b, [hl]                                    ; $6681: $46
    rst $38                                       ; $6682: $ff
    adc a                                         ; $6683: $8f
    rst $38                                       ; $6684: $ff
    sbc e                                         ; $6685: $9b
    rst $38                                       ; $6686: $ff
    dec e                                         ; $6687: $1d
    rst $38                                       ; $6688: $ff
    ld a, c                                       ; $6689: $79
    rst $38                                       ; $668a: $ff
    push af                                       ; $668b: $f5
    rst $38                                       ; $668c: $ff
    ei                                            ; $668d: $fb
    rst $38                                       ; $668e: $ff
    ld c, $ff                                     ; $668f: $0e $ff
    inc bc                                        ; $6691: $03
    rst $38                                       ; $6692: $ff
    pop bc                                        ; $6693: $c1
    rst $38                                       ; $6694: $ff
    ld [bc], a                                    ; $6695: $02
    add b                                         ; $6696: $80
    ld [bc], a                                    ; $6697: $02
    ret nz                                        ; $6698: $c0

    sbc h                                         ; $6699: $9c
    ldh a, [$30]                                  ; $669a: $f0 $30
    ret z                                         ; $669c: $c8

jr_0f2_669d:
    ld a, b                                       ; $669d: $78
    and $7e                                       ; $669e: $e6 $7e
    adc a                                         ; $66a0: $8f
    ld sp, hl                                     ; $66a1: $f9
    ld h, $fe                                     ; $66a2: $26 $fe
    call z, $f8fc                                 ; $66a4: $cc $fc $f8
    ldh [$a3], a                                  ; $66a7: $e0 $a3

jr_0f2_66a9:
    db $e3                                        ; $66a9: $e3
    and a                                         ; $66aa: $a7
    push hl                                       ; $66ab: $e5
    adc $ca                                       ; $66ac: $ce $ca
    xor $ea                                       ; $66ae: $ee $ea
    ld l, [hl]                                    ; $66b0: $6e
    ld [$fa1e], a                                 ; $66b1: $ea $1e $fa
    sbc h                                         ; $66b4: $9c
    db $fc                                        ; $66b5: $fc
    ld [bc], a                                    ; $66b6: $02
    ld [bc], a                                    ; $66b7: $02
    inc c                                         ; $66b8: $0c
    nop                                           ; $66b9: $00
    adc b                                         ; $66ba: $88
    jr nz, jr_0f2_669d                            ; $66bb: $20 $e0

    ld a, b                                       ; $66bd: $78
    ld hl, sp-$02                                 ; $66be: $f8 $fe
    and $ff                                       ; $66c0: $e6 $ff
    ld sp, hl                                     ; $66c2: $f9
    ld [bc], a                                    ; $66c3: $02
    or $84                                        ; $66c4: $f6 $84
    ld hl, sp+$08                                 ; $66c6: $f8 $08
    ldh a, [$50]                                  ; $66c8: $f0 $50
    ld [bc], a                                    ; $66ca: $02
    and b                                         ; $66cb: $a0
    ld [bc], a                                    ; $66cc: $02
    nop                                           ; $66cd: $00
    ld [bc], a                                    ; $66ce: $02
    jr nc, jr_0f2_6657                            ; $66cf: $30 $86

    ldh a, [$d0]                                  ; $66d1: $f0 $d0
    ldh a, [$80]                                  ; $66d3: $f0 $80
    ld [hl], b                                    ; $66d5: $70
    ld b, b                                       ; $66d6: $40
    ld [bc], a                                    ; $66d7: $02
    ccf                                           ; $66d8: $3f
    rla                                           ; $66d9: $17
    nop                                           ; $66da: $00
    adc l                                         ; $66db: $8d
    rrca                                          ; $66dc: $0f

jr_0f2_66dd:
    nop                                           ; $66dd: $00
    rrca                                          ; $66de: $0f
    ld a, [bc]                                    ; $66df: $0a
    rrca                                          ; $66e0: $0f
    dec c                                         ; $66e1: $0d
    rrca                                          ; $66e2: $0f
    ld [$d5ff], a                                 ; $66e3: $ea $ff $d5
    rst $38                                       ; $66e6: $ff
    ld a, h                                       ; $66e7: $7c
    ld a, a                                       ; $66e8: $7f
    ld [bc], a                                    ; $66e9: $02
    cpl                                           ; $66ea: $2f
    stop                                          ; $66eb: $10 $00
    adc b                                         ; $66ed: $88
    inc bc                                        ; $66ee: $03
    ccf                                           ; $66ef: $3f
    add hl, bc                                    ; $66f0: $09
    ccf                                           ; $66f1: $3f
    inc c                                         ; $66f2: $0c
    scf                                           ; $66f3: $37
    ld e, $23                                     ; $66f4: $1e $23
    ld [bc], a                                    ; $66f6: $02
    ccf                                           ; $66f7: $3f
    add d                                         ; $66f8: $82
    dec bc                                        ; $66f9: $0b
    ld a, $02                                     ; $66fa: $3e $02
    ccf                                           ; $66fc: $3f
    ld [bc], a                                    ; $66fd: $02
    jr z, jr_0f2_6710                             ; $66fe: $28 $10

    nop                                           ; $6700: $00
    rst $38                                       ; $6701: $ff
    inc de                                        ; $6702: $13
    rlca                                          ; $6703: $07
    or $0d                                        ; $6704: $f6 $0d
    add sp, -$01                                  ; $6706: $e8 $ff
    push hl                                       ; $6708: $e5
    ld sp, hl                                     ; $6709: $f9
    push hl                                       ; $670a: $e5
    ld bc, $06e9                                  ; $670b: $01 $e9 $06
    push af                                       ; $670e: $f5
    pop af                                        ; $670f: $f1

jr_0f2_6710:
    push af                                       ; $6710: $f5
    ld sp, hl                                     ; $6711: $f9
    push af                                       ; $6712: $f5
    ld bc, $07f5                                  ; $6713: $01 $f5 $07
    ld [bc], a                                    ; $6716: $02
    rrca                                          ; $6717: $0f
    sbc [hl]                                      ; $6718: $9e
    rra                                           ; $6719: $1f
    db $10                                        ; $671a: $10
    rrca                                          ; $671b: $0f
    add hl, bc                                    ; $671c: $09
    ld b, $07                                     ; $671d: $06 $07
    inc c                                         ; $671f: $0c
    rrca                                          ; $6720: $0f
    ld d, $1f                                     ; $6721: $16 $1f
    dec hl                                        ; $6723: $2b
    ccf                                           ; $6724: $3f
    cpl                                           ; $6725: $2f
    ccf                                           ; $6726: $3f
    ld d, e                                       ; $6727: $53
    ld a, [hl]                                    ; $6728: $7e
    ld h, l                                       ; $6729: $65
    ld a, a                                       ; $672a: $7f
    ld l, c                                       ; $672b: $69
    ld a, a                                       ; $672c: $7f
    xor c                                         ; $672d: $a9
    rst $38                                       ; $672e: $ff
    and c                                         ; $672f: $a1
    rst $38                                       ; $6730: $ff
    and e                                         ; $6731: $a3
    rst $38                                       ; $6732: $ff
    or a                                          ; $6733: $b7
    rst $38                                       ; $6734: $ff
    rst $18                                       ; $6735: $df
    rst $38                                       ; $6736: $ff
    ld [bc], a                                    ; $6737: $02
    ld h, b                                       ; $6738: $60
    ld [bc], a                                    ; $6739: $02
    ld hl, sp-$64                                 ; $673a: $f8 $9c
    dec b                                         ; $673c: $05
    db $fd                                        ; $673d: $fd
    ld sp, $78ff                                  ; $673e: $31 $ff $78
    rst $28                                       ; $6741: $ef
    ld h, c                                       ; $6742: $61
    rst $38                                       ; $6743: $ff
    rst $20                                       ; $6744: $e7
    sbc a                                         ; $6745: $9f
    rst $28                                       ; $6746: $ef
    ld a, c                                       ; $6747: $79
    cp $3e                                        ; $6748: $fe $3e
    rst $38                                       ; $674a: $ff
    ld de, $f5ff                                  ; $674b: $11 $ff $f5
    ld e, d                                       ; $674e: $5a
    ld a, [$f8b8]                                 ; $674f: $fa $b8 $f8
    adc h                                         ; $6752: $8c
    db $fc                                        ; $6753: $fc
    ld d, d                                       ; $6754: $52
    cp $e1                                        ; $6755: $fe $e1
    rst $38                                       ; $6757: $ff
    ld [bc], a                                    ; $6758: $02
    jr jr_0f2_66dd                                ; $6759: $18 $82

    inc e                                         ; $675b: $1c
    inc b                                         ; $675c: $04
    ld [bc], a                                    ; $675d: $02
    jr jr_0f2_6762                                ; $675e: $18 $02

    db $10                                        ; $6760: $10
    inc b                                         ; $6761: $04

jr_0f2_6762:
    nop                                           ; $6762: $00
    ld [bc], a                                    ; $6763: $02
    inc bc                                        ; $6764: $03
    ld [bc], a                                    ; $6765: $02
    ld b, $90                                     ; $6766: $06 $90
    ld c, $0a                                     ; $6768: $0e $0a
    ld c, $0a                                     ; $676a: $0e $0a
    ld c, $0a                                     ; $676c: $0e $0a
    ld c, $0a                                     ; $676e: $0e $0a
    ld a, $fa                                     ; $6770: $3e $fa
    inc e                                         ; $6772: $1c
    db $f4                                        ; $6773: $f4
    call c, $a8fc                                 ; $6774: $dc $fc $a8
    ld hl, sp+$06                                 ; $6777: $f8 $06
    ld bc, $0f02                                  ; $6779: $01 $02 $0f
    adc b                                         ; $677c: $88
    ccf                                           ; $677d: $3f
    ld sp, $dfff                                  ; $677e: $31 $ff $df
    rst $38                                       ; $6781: $ff
    adc a                                         ; $6782: $8f
    ld a, a                                       ; $6783: $7f
    ld b, c                                       ; $6784: $41
    ld [bc], a                                    ; $6785: $02
    ccf                                           ; $6786: $3f
    ld c, $00                                     ; $6787: $0e $00
    sub h                                         ; $6789: $94
    jr nz, @+$01                                  ; $678a: $20 $ff

    ldh [rIE], a                                  ; $678c: $e0 $ff
    sbc [hl]                                      ; $678e: $9e
    rst $38                                       ; $678f: $ff
    jr nc, @+$01                                  ; $6790: $30 $ff

    adc d                                         ; $6792: $8a
    rst $38                                       ; $6793: $ff
    db $dd                                        ; $6794: $dd
    rst $38                                       ; $6795: $ff
    xor d                                         ; $6796: $aa
    rst $38                                       ; $6797: $ff
    push de                                       ; $6798: $d5
    rst $38                                       ; $6799: $ff
    xor e                                         ; $679a: $ab
    rst $38                                       ; $679b: $ff
    rst $18                                       ; $679c: $df
    rst $38                                       ; $679d: $ff
    ld [bc], a                                    ; $679e: $02

jr_0f2_679f:
    dec a                                         ; $679f: $3d
    ld [bc], a                                    ; $67a0: $02
    db $10                                        ; $67a1: $10
    ld [$9100], sp                                ; $67a2: $08 $00 $91
    jr c, jr_0f2_679f                             ; $67a5: $38 $f8

    ld [$00f8], sp                                ; $67a7: $08 $f8 $00
    ld hl, sp+$20                                 ; $67aa: $f8 $20
    ld hl, sp+$32                                 ; $67ac: $f8 $32
    rst $18                                       ; $67ae: $df
    ei                                            ; $67af: $fb
    adc a                                         ; $67b0: $8f
    ld a, d                                       ; $67b1: $7a
    rst $18                                       ; $67b2: $df
    daa                                           ; $67b3: $27
    rst $38                                       ; $67b4: $ff
    rst $08                                       ; $67b5: $cf
    ld [bc], a                                    ; $67b6: $02
    rst $38                                       ; $67b7: $ff
    add e                                         ; $67b8: $83
    jr nc, @+$01                                  ; $67b9: $30 $ff

    db $fd                                        ; $67bb: $fd
    ld [bc], a                                    ; $67bc: $02
    ld b, d                                       ; $67bd: $42
    stop                                          ; $67be: $10 $00
    ld [bc], a                                    ; $67c0: $02
    jr nc, jr_0f2_67c5                            ; $67c1: $30 $02

    jr c, @-$7a                                   ; $67c3: $38 $84

jr_0f2_67c5:
    ld a, $26                                     ; $67c5: $3e $26
    ccf                                           ; $67c7: $3f
    add hl, sp                                    ; $67c8: $39
    ld [bc], a                                    ; $67c9: $02
    ld [hl], $84                                  ; $67ca: $36 $84
    jr c, jr_0f2_67d6                             ; $67cc: $38 $08

    jr nc, jr_0f2_67e0                            ; $67ce: $30 $10

jr_0f2_67d0:
    ld [bc], a                                    ; $67d0: $02
    jr nz, jr_0f2_67db                            ; $67d1: $20 $08

    nop                                           ; $67d3: $00
    rst $38                                       ; $67d4: $ff
    dec d                                         ; $67d5: $15

jr_0f2_67d6:
    ld [$0ff3], sp                                ; $67d6: $08 $f3 $0f
    add sp, -$01                                  ; $67d9: $e8 $ff

jr_0f2_67db:
    db $e4                                        ; $67db: $e4
    push af                                       ; $67dc: $f5
    db $ec                                        ; $67dd: $ec
    db $fd                                        ; $67de: $fd
    rst $20                                       ; $67df: $e7

jr_0f2_67e0:
    dec b                                         ; $67e0: $05
    add sp, $09                                   ; $67e1: $e8 $09
    db $f4                                        ; $67e3: $f4
    ld a, [c]                                     ; $67e4: $f2
    db $f4                                        ; $67e5: $f4
    ld a, [$02f4]                                 ; $67e6: $fa $f4 $02
    db $f4                                        ; $67e9: $f4
    add hl, bc                                    ; $67ea: $09
    ld [bc], a                                    ; $67eb: $02
    ld a, h                                       ; $67ec: $7c
    add [hl]                                      ; $67ed: $86
    sub [hl]                                      ; $67ee: $96
    or $b3                                        ; $67ef: $f6 $b3
    db $d3                                        ; $67f1: $d3
    pop af                                        ; $67f2: $f1
    sub c                                         ; $67f3: $91
    ld [bc], a                                    ; $67f4: $02
    ld h, e                                       ; $67f5: $63
    ld [bc], a                                    ; $67f6: $02
    inc bc                                        ; $67f7: $03
    ld [bc], a                                    ; $67f8: $02
    ld b, $02                                     ; $67f9: $06 $02
    inc e                                         ; $67fb: $1c
    ld [bc], a                                    ; $67fc: $02
    jr nc, jr_0f2_6801                            ; $67fd: $30 $02

    jr nz, @+$04                                  ; $67ff: $20 $02

jr_0f2_6801:
    ld hl, $3e8a                                  ; $6801: $21 $8a $3e
    ccf                                           ; $6804: $3f
    dec e                                         ; $6805: $1d
    ld e, $05                                     ; $6806: $1e $05
    ld b, $0a                                     ; $6808: $06 $0a
    dec c                                         ; $680a: $0d
    add hl, bc                                    ; $680b: $09
    ld c, $02                                     ; $680c: $0e $02
    ld [hl], $9e                                  ; $680e: $36 $9e
    db $dd                                        ; $6810: $dd
    rst $38                                       ; $6811: $ff
    ld c, d                                       ; $6812: $4a
    cp l                                          ; $6813: $bd
    ld a, d                                       ; $6814: $7a
    cp l                                          ; $6815: $bd
    and a                                         ; $6816: $a7
    ld a, b                                       ; $6817: $78
    ld [hl], d                                    ; $6818: $72
    cp l                                          ; $6819: $bd
    cp e                                          ; $681a: $bb
    ld a, h                                       ; $681b: $7c
    rst $10                                       ; $681c: $d7
    jr c, jr_0f2_67d0                             ; $681d: $38 $b1

    ld a, [hl]                                    ; $681f: $7e
    jp c, $993d                                   ; $6820: $da $3d $99

    ld a, [hl]                                    ; $6823: $7e
    ld e, d                                       ; $6824: $5a
    cp l                                          ; $6825: $bd
    jr @+$01                                      ; $6826: $18 $ff

    rst $08                                       ; $6828: $cf
    rst $38                                       ; $6829: $ff
    cp h                                          ; $682a: $bc
    ld a, a                                       ; $682b: $7f
    add e                                         ; $682c: $83
    ld a, h                                       ; $682d: $7c
    ld [bc], a                                    ; $682e: $02
    rrca                                          ; $682f: $0f
    ld [bc], a                                    ; $6830: $02
    add hl, sp                                    ; $6831: $39
    ld [bc], a                                    ; $6832: $02
    jr nz, jr_0f2_6837                            ; $6833: $20 $02

    ld h, b                                       ; $6835: $60
    ld [bc], a                                    ; $6836: $02

jr_0f2_6837:
    ld b, b                                       ; $6837: $40
    ld [bc], a                                    ; $6838: $02
    ld h, b                                       ; $6839: $60
    ld [bc], a                                    ; $683a: $02

jr_0f2_683b:
    ld sp, $9802                                  ; $683b: $31 $02 $98
    sub b                                         ; $683e: $90
    ld c, b                                       ; $683f: $48
    ret z                                         ; $6840: $c8

    jr c, jr_0f2_683b                             ; $6841: $38 $f8

    cp b                                          ; $6843: $b8
    ld a, b                                       ; $6844: $78
    ld d, b                                       ; $6845: $50
    or b                                          ; $6846: $b0
    sub b                                         ; $6847: $90
    ld [hl], b                                    ; $6848: $70
    ld e, a                                       ; $6849: $5f
    cp a                                          ; $684a: $bf
    and l                                         ; $684b: $a5
    ld a, d                                       ; $684c: $7a
    jr c, @+$01                                   ; $684d: $38 $ff

    ld [bc], a                                    ; $684f: $02
    ld [$0c02], sp                                ; $6850: $08 $02 $0c
    ld [bc], a                                    ; $6853: $02
    ld b, $86                                     ; $6854: $06 $86
    add hl, bc                                    ; $6856: $09
    rrca                                          ; $6857: $0f
    dec bc                                        ; $6858: $0b
    dec c                                         ; $6859: $0d
    ld c, $02                                     ; $685a: $0e $02
    ld [bc], a                                    ; $685c: $02
    inc c                                         ; $685d: $0c
    ld a, [bc]                                    ; $685e: $0a
    nop                                           ; $685f: $00
    ld [bc], a                                    ; $6860: $02
    ld [$0686], sp                                ; $6861: $08 $86 $06
    ld c, $01                                     ; $6864: $0e $01
    rrca                                          ; $6866: $0f
    ld a, [hl]                                    ; $6867: $7e
    cp $02                                        ; $6868: $fe $02
    rrca                                          ; $686a: $0f
    adc [hl]                                      ; $686b: $8e
    ld a, h                                       ; $686c: $7c
    ld [hl], e                                    ; $686d: $73
    sub e                                         ; $686e: $93
    rst $28                                       ; $686f: $ef
    ld a, h                                       ; $6870: $7c
    ld a, a                                       ; $6871: $7f

jr_0f2_6872:
    add hl, bc                                    ; $6872: $09
    ld c, $34                                     ; $6873: $0e $34
    dec sp                                        ; $6875: $3b
    ld e, b                                       ; $6876: $58
    ld h, a                                       ; $6877: $67
    rst $20                                       ; $6878: $e7
    sbc a                                         ; $6879: $9f
    ld [bc], a                                    ; $687a: $02
    ld a, c                                       ; $687b: $79
    ld [bc], a                                    ; $687c: $02
    ld bc, $0384                                  ; $687d: $01 $84 $03
    ld [bc], a                                    ; $6880: $02
    inc b                                         ; $6881: $04
    rlca                                          ; $6882: $07
    ld [bc], a                                    ; $6883: $02
    inc bc                                        ; $6884: $03
    rlca                                          ; $6885: $07
    nop                                           ; $6886: $00
    adc h                                         ; $6887: $8c
    ldh [$a0], a                                  ; $6888: $e0 $a0
    ret nz                                        ; $688a: $c0

    add b                                         ; $688b: $80
    ldh [rLCDC], a                                ; $688c: $e0 $40

jr_0f2_688e:
    ldh [$60], a                                  ; $688e: $e0 $60
    ldh [$80], a                                  ; $6890: $e0 $80
    ldh [$a0], a                                  ; $6892: $e0 $a0
    ld [bc], a                                    ; $6894: $02
    ret nz                                        ; $6895: $c0

    add a                                         ; $6896: $87
    and b                                         ; $6897: $a0
    ld l, e                                       ; $6898: $6b
    sub a                                         ; $6899: $97
    adc h                                         ; $689a: $8c
    ld a, h                                       ; $689b: $7c
    jr nc, jr_0f2_688e                            ; $689c: $30 $f0

    ld [bc], a                                    ; $689e: $02
    ret nz                                        ; $689f: $c0

    ld c, $00                                     ; $68a0: $0e $00
    sub d                                         ; $68a2: $92
    ld c, $18                                     ; $68a3: $0e $18
    ld de, $081e                                  ; $68a5: $11 $1e $08
    rra                                           ; $68a8: $1f
    inc d                                         ; $68a9: $14
    rrca                                          ; $68aa: $0f
    rla                                           ; $68ab: $17
    rrca                                          ; $68ac: $0f
    ld a, [hl+]                                   ; $68ad: $2a
    sub $c6                                       ; $68ae: $d6 $c6
    ld a, [$3d33]                                 ; $68b0: $fa $33 $3d
    inc c                                         ; $68b3: $0c
    rrca                                          ; $68b4: $0f
    ld [bc], a                                    ; $68b5: $02
    inc bc                                        ; $68b6: $03
    ld c, $00                                     ; $68b7: $0e $00
    adc d                                         ; $68b9: $8a
    ld d, b                                       ; $68ba: $50
    jr nc, jr_0f2_6915                            ; $68bb: $30 $58

    jr z, jr_0f2_68f3                             ; $68bd: $28 $34

    ld c, h                                       ; $68bf: $4c
    ld c, d                                       ; $68c0: $4a
    halt                                          ; $68c1: $76
    ld sp, $023f                                  ; $68c2: $31 $3f $02
    ld c, $02                                     ; $68c5: $0e $02
    nop                                           ; $68c7: $00
    ld [bc], a                                    ; $68c8: $02
    ld b, b                                       ; $68c9: $40
    ld [$ff00], sp                                ; $68ca: $08 $00 $ff
    dec d                                         ; $68cd: $15
    ld [$0ff3], sp                                ; $68ce: $08 $f3 $0f
    add sp, -$01                                  ; $68d1: $e8 $ff
    push hl                                       ; $68d3: $e5
    or $e6                                        ; $68d4: $f6 $e6
    cp $e7                                        ; $68d6: $fe $e7
    ld b, $e7                                     ; $68d8: $06 $e7
    dec bc                                        ; $68da: $0b
    push af                                       ; $68db: $f5
    ld a, [c]                                     ; $68dc: $f2

jr_0f2_68dd:
    push af                                       ; $68dd: $f5
    ld a, [$02f5]                                 ; $68de: $fa $f5 $02
    push af                                       ; $68e1: $f5
    add hl, bc                                    ; $68e2: $09
    ld [bc], a                                    ; $68e3: $02
    rrca                                          ; $68e4: $0f
    ld [bc], a                                    ; $68e5: $02
    add hl, de                                    ; $68e6: $19
    ld [bc], a                                    ; $68e7: $02
    db $10                                        ; $68e8: $10
    ld [bc], a                                    ; $68e9: $02
    jr nc, jr_0f2_6872                            ; $68ea: $30 $86

    ld c, b                                       ; $68ec: $48
    ld a, b                                       ; $68ed: $78
    add sp, -$48                                  ; $68ee: $e8 $b8
    ld sp, hl                                     ; $68f0: $f9
    xor c                                         ; $68f1: $a9
    ld [bc], a                                    ; $68f2: $02

jr_0f2_68f3:
    ld d, e                                       ; $68f3: $53
    ld [bc], a                                    ; $68f4: $02
    ld b, $02                                     ; $68f5: $06 $02
    dec b                                         ; $68f7: $05
    adc h                                         ; $68f8: $8c
    ld c, $0f                                     ; $68f9: $0e $0f
    inc c                                         ; $68fb: $0c
    rrca                                          ; $68fc: $0f
    add hl, bc                                    ; $68fd: $09
    ld c, $0b                                     ; $68fe: $0e $0b
    inc c                                         ; $6900: $0c
    dec d                                         ; $6901: $15
    ld a, [de]                                    ; $6902: $1a
    ld [hl], c                                    ; $6903: $71
    ld a, [hl]                                    ; $6904: $7e
    inc c                                         ; $6905: $0c
    add b                                         ; $6906: $80
    ld [bc], a                                    ; $6907: $02
    nop                                           ; $6908: $00
    ld [bc], a                                    ; $6909: $02
    ld l, h                                       ; $690a: $6c
    sub b                                         ; $690b: $90
    cp d                                          ; $690c: $ba
    cp $d1                                        ; $690d: $fe $d1
    ccf                                           ; $690f: $3f
    db $f4                                        ; $6910: $f4
    ld a, e                                       ; $6911: $7b
    ld c, a                                       ; $6912: $4f
    ldh a, [$65]                                  ; $6913: $f0 $65

jr_0f2_6915:
    ld a, [$f976]                                 ; $6915: $fa $76 $f9
    ld h, l                                       ; $6918: $65
    ld a, [$7db2]                                 ; $6919: $fa $b2 $7d
    ld [bc], a                                    ; $691c: $02
    ld e, $02                                     ; $691d: $1e $02
    inc sp                                        ; $691f: $33
    inc b                                         ; $6920: $04
    jr nz, jr_0f2_6925                            ; $6921: $20 $02

    jr nc, jr_0f2_6927                            ; $6923: $30 $02

jr_0f2_6925:
    jr @+$04                                      ; $6925: $18 $02

jr_0f2_6927:
    ld [$1802], sp                                ; $6927: $08 $02 $18
    ld [bc], a                                    ; $692a: $02
    jr nc, jr_0f2_692f                            ; $692b: $30 $02

    ldh [$8c], a                                  ; $692d: $e0 $8c

jr_0f2_692f:
    ld h, b                                       ; $692f: $60
    ldh [$c0], a                                  ; $6930: $e0 $c0
    ld b, b                                       ; $6932: $40
    and b                                         ; $6933: $a0
    ld h, b                                       ; $6934: $60
    cp d                                          ; $6935: $ba
    ld a, [hl]                                    ; $6936: $7e
    ld c, a                                       ; $6937: $4f
    pop af                                        ; $6938: $f1
    ld [hl], c                                    ; $6939: $71
    cp $02                                        ; $693a: $fe $02
    ld [$1688], sp                                ; $693c: $08 $88 $16
    ld e, $17                                     ; $693f: $1e $17
    add hl, de                                    ; $6941: $19
    dec bc                                        ; $6942: $0b
    dec c                                         ; $6943: $0d
    add hl, bc                                    ; $6944: $09
    rrca                                          ; $6945: $0f
    ld [bc], a                                    ; $6946: $02
    ld b, $10                                     ; $6947: $06 $10
    nop                                           ; $6949: $00
    ld [bc], a                                    ; $694a: $02
    jr jr_0f2_68dd                                ; $694b: $18 $90

    inc b                                         ; $694d: $04
    inc e                                         ; $694e: $1c
    ld [hl], $39                                  ; $694f: $36 $39
    ld b, e                                       ; $6951: $43
    ld a, a                                       ; $6952: $7f
    inc a                                         ; $6953: $3c
    ccf                                           ; $6954: $3f
    dec bc                                        ; $6955: $0b
    inc c                                         ; $6956: $0c
    dec [hl]                                      ; $6957: $35
    ld a, [hl-]                                   ; $6958: $3a
    ld d, b                                       ; $6959: $50
    ld l, a                                       ; $695a: $6f
    rst $28                                       ; $695b: $ef
    sbc a                                         ; $695c: $9f
    ld [bc], a                                    ; $695d: $02
    ld [hl], c                                    ; $695e: $71
    ld [bc], a                                    ; $695f: $02
    ld bc, $0384                                  ; $6960: $01 $84 $03
    ld [bc], a                                    ; $6963: $02
    inc b                                         ; $6964: $04
    rlca                                          ; $6965: $07
    ld [bc], a                                    ; $6966: $02
    inc bc                                        ; $6967: $03
    ld [$9400], sp                                ; $6968: $08 $00 $94
    or b                                          ; $696b: $b0
    ret nz                                        ; $696c: $c0

    sub e                                         ; $696d: $93
    rst $28                                       ; $696e: $ef
    ld c, e                                       ; $696f: $4b
    rst $30                                       ; $6970: $f7
    and e                                         ; $6971: $a3
    ld a, a                                       ; $6972: $7f
    ld e, c                                       ; $6973: $59
    rst $38                                       ; $6974: $ff
    or a                                          ; $6975: $b7
    rst $08                                       ; $6976: $cf

jr_0f2_6977:
    call nc, Call_0f2_63ab                        ; $6977: $d4 $ab $63
    sbc a                                         ; $697a: $9f
    and h                                         ; $697b: $a4
    ld e, h                                       ; $697c: $5c
    jr c, jr_0f2_6977                             ; $697d: $38 $f8

    ld [bc], a                                    ; $697f: $02
    ret nz                                        ; $6980: $c0

    inc c                                         ; $6981: $0c
    nop                                           ; $6982: $00
    sub h                                         ; $6983: $94
    ld d, b                                       ; $6984: $50
    and b                                         ; $6985: $a0
    ld c, d                                       ; $6986: $4a
    cp l                                          ; $6987: $bd
    inc de                                        ; $6988: $13
    db $fc                                        ; $6989: $fc
    add sp, -$01                                  ; $698a: $e8 $ff
    sub h                                         ; $698c: $94
    rst $28                                       ; $698d: $ef
    ld e, a                                       ; $698e: $5f
    and a                                         ; $698f: $a7
    ld a, [bc]                                    ; $6990: $0a
    or $c6                                        ; $6991: $f6 $c6
    ld a, [$3d33]                                 ; $6993: $fa $33 $3d
    inc c                                         ; $6996: $0c
    rrca                                          ; $6997: $0f
    ld [bc], a                                    ; $6998: $02
    inc bc                                        ; $6999: $03
    inc c                                         ; $699a: $0c
    nop                                           ; $699b: $00
    ld [bc], a                                    ; $699c: $02
    ld a, [hl]                                    ; $699d: $7e
    adc d                                         ; $699e: $8a
    jr nz, jr_0f2_6a01                            ; $699f: $20 $60

    ld e, b                                       ; $69a1: $58
    jr c, jr_0f2_69b8                             ; $69a2: $38 $14

    ld l, h                                       ; $69a4: $6c
    ld c, d                                       ; $69a5: $4a
    halt                                          ; $69a6: $76
    ld sp, $023f                                  ; $69a7: $31 $3f $02
    ld c, $02                                     ; $69aa: $0e $02
    nop                                           ; $69ac: $00
    ld [bc], a                                    ; $69ad: $02
    ld b, b                                       ; $69ae: $40
    ld a, [bc]                                    ; $69af: $0a
    nop                                           ; $69b0: $00
    rst $38                                       ; $69b1: $ff
    dec d                                         ; $69b2: $15
    ld [$0ff3], sp                                ; $69b3: $08 $f3 $0f
    add sp, -$01                                  ; $69b6: $e8 $ff

jr_0f2_69b8:
    rst $20                                       ; $69b8: $e7
    ld hl, sp-$13                                 ; $69b9: $f8 $ed
    nop                                           ; $69bb: $00
    db $e4                                        ; $69bc: $e4
    ld [$0ae4], sp                                ; $69bd: $08 $e4 $0a
    db $f4                                        ; $69c0: $f4
    ld a, [c]                                     ; $69c1: $f2
    db $f4                                        ; $69c2: $f4
    ld hl, sp-$0c                                 ; $69c3: $f8 $f4
    ld [bc], a                                    ; $69c5: $02
    db $f4                                        ; $69c6: $f4
    add hl, bc                                    ; $69c7: $09
    ld [bc], a                                    ; $69c8: $02
    ld a, h                                       ; $69c9: $7c
    ld [bc], a                                    ; $69ca: $02
    add $02                                       ; $69cb: $c6 $02
    add d                                         ; $69cd: $82
    ld [bc], a                                    ; $69ce: $02
    jp nz, $6602                                  ; $69cf: $c2 $02 $66

    ld [bc], a                                    ; $69d2: $02
    inc [hl]                                      ; $69d3: $34
    sub h                                         ; $69d4: $94
    ld c, c                                       ; $69d5: $49
    ld a, c                                       ; $69d6: $79
    ld e, [hl]                                    ; $69d7: $5e
    ld l, a                                       ; $69d8: $6f
    ld a, e                                       ; $69d9: $7b
    ld c, h                                       ; $69da: $4c
    inc sp                                        ; $69db: $33
    dec a                                         ; $69dc: $3d
    dec h                                         ; $69dd: $25
    dec sp                                        ; $69de: $3b
    dec l                                         ; $69df: $2d
    inc sp                                        ; $69e0: $33
    ld d, l                                       ; $69e1: $55
    ld l, e                                       ; $69e2: $6b
    push bc                                       ; $69e3: $c5
    ei                                            ; $69e4: $fb
    ld l, $f1                                     ; $69e5: $2e $f1
    db $e4                                        ; $69e7: $e4
    ei                                            ; $69e8: $fb
    ld [bc], a                                    ; $69e9: $02
    or b                                          ; $69ea: $b0
    sbc [hl]                                      ; $69eb: $9e
    add sp, -$08                                  ; $69ec: $e8 $f8
    ld b, h                                       ; $69ee: $44
    db $fc                                        ; $69ef: $fc
    db $d3                                        ; $69f0: $d3
    rst $28                                       ; $69f1: $ef
    dec a                                         ; $69f2: $3d
    jp $e997                                      ; $69f3: $c3 $97 $e9


    jp c, $96e5                                   ; $69f6: $da $e5 $96

    jp hl                                         ; $69f9: $e9


    ret                                           ; $69fa: $c9


    rst $30                                       ; $69fb: $f7

Call_0f2_69fc:
    push de                                       ; $69fc: $d5
    db $eb                                        ; $69fd: $eb
    db $d3                                        ; $69fe: $d3
    xor $c4                                       ; $69ff: $ee $c4

jr_0f2_6a01:
    rst $38                                       ; $6a01: $ff
    ld a, d                                       ; $6a02: $7a
    rst $38                                       ; $6a03: $ff
    push hl                                       ; $6a04: $e5
    ei                                            ; $6a05: $fb
    rla                                           ; $6a06: $17
    jp hl                                         ; $6a07: $e9


    jp nz, Jump_000_02fd                          ; $6a08: $c2 $fd $02

    inc bc                                        ; $6a0b: $03
    add [hl]                                      ; $6a0c: $86
    dec b                                         ; $6a0d: $05
    ld b, $3c                                     ; $6a0e: $06 $3c
    ccf                                           ; $6a10: $3f
    ld h, l                                       ; $6a11: $65
    ld h, [hl]                                    ; $6a12: $66
    ld [bc], a                                    ; $6a13: $02
    ld b, e                                       ; $6a14: $43
    inc b                                         ; $6a15: $04
    ld b, b                                       ; $6a16: $40
    ld [bc], a                                    ; $6a17: $02
    ld h, b                                       ; $6a18: $60
    ld [bc], a                                    ; $6a19: $02
    jr nc, jr_0f2_6a1e                            ; $6a1a: $30 $02

    db $10                                        ; $6a1c: $10
    ld [bc], a                                    ; $6a1d: $02

jr_0f2_6a1e:
    jr nc, jr_0f2_6a22                            ; $6a1e: $30 $02

    ld h, b                                       ; $6a20: $60
    ld [bc], a                                    ; $6a21: $02

jr_0f2_6a22:
    ret nz                                        ; $6a22: $c0

    ld [bc], a                                    ; $6a23: $02
    add b                                         ; $6a24: $80
    ld [bc], a                                    ; $6a25: $02
    nop                                           ; $6a26: $00
    ld [bc], a                                    ; $6a27: $02
    add b                                         ; $6a28: $80
    ld [bc], a                                    ; $6a29: $02
    ld [bc], a                                    ; $6a2a: $02
    add h                                         ; $6a2b: $84
    inc bc                                        ; $6a2c: $03
    ld bc, $0103                                  ; $6a2d: $01 $03 $01
    ld [bc], a                                    ; $6a30: $02
    ld [bc], a                                    ; $6a31: $02
    jr jr_0f2_6a34                                ; $6a32: $18 $00

jr_0f2_6a34:
    ld [bc], a                                    ; $6a34: $02
    inc b                                         ; $6a35: $04
    adc [hl]                                      ; $6a36: $8e
    inc a                                         ; $6a37: $3c
    jr c, jr_0f2_6a82                             ; $6a38: $38 $48

    ld [hl], h                                    ; $6a3a: $74
    inc a                                         ; $6a3b: $3c
    ccf                                           ; $6a3c: $3f
    dec bc                                        ; $6a3d: $0b
    inc c                                         ; $6a3e: $0c
    dec [hl]                                      ; $6a3f: $35
    ld a, [hl-]                                   ; $6a40: $3a
    ld d, b                                       ; $6a41: $50
    ld l, a                                       ; $6a42: $6f
    rst $28                                       ; $6a43: $ef
    sbc a                                         ; $6a44: $9f
    ld [bc], a                                    ; $6a45: $02
    ld [hl], c                                    ; $6a46: $71
    ld [bc], a                                    ; $6a47: $02
    ld bc, $0384                                  ; $6a48: $01 $84 $03
    ld [bc], a                                    ; $6a4b: $02
    inc b                                         ; $6a4c: $04
    rlca                                          ; $6a4d: $07
    ld [bc], a                                    ; $6a4e: $02
    inc bc                                        ; $6a4f: $03
    inc c                                         ; $6a50: $0c
    nop                                           ; $6a51: $00
    sub b                                         ; $6a52: $90
    ld [de], a                                    ; $6a53: $12
    dec a                                         ; $6a54: $3d
    jr z, jr_0f2_6a76                             ; $6a55: $28 $1f

    ld d, $3f                                     ; $6a57: $16 $3f
    dec l                                         ; $6a59: $2d
    inc sp                                        ; $6a5a: $33
    dec [hl]                                      ; $6a5b: $35
    ld a, [hl+]                                   ; $6a5c: $2a
    jr jr_0f2_6a86                                ; $6a5d: $18 $27

    add hl, hl                                    ; $6a5f: $29
    rla                                           ; $6a60: $17
    ld c, $3e                                     ; $6a61: $0e $3e
    ld [bc], a                                    ; $6a63: $02
    jr nc, jr_0f2_6a6e                            ; $6a64: $30 $08

    nop                                           ; $6a66: $00
    ld [bc], a                                    ; $6a67: $02
    inc bc                                        ; $6a68: $03
    add c                                         ; $6a69: $81
    nop                                           ; $6a6a: $00
    inc bc                                        ; $6a6b: $03
    inc bc                                        ; $6a6c: $03
    add e                                         ; $6a6d: $83

jr_0f2_6a6e:
    ld [bc], a                                    ; $6a6e: $02
    ld bc, $0203                                  ; $6a6f: $01 $03 $02
    nop                                           ; $6a72: $00
    add d                                         ; $6a73: $82
    inc bc                                        ; $6a74: $03
    nop                                           ; $6a75: $00

jr_0f2_6a76:
    inc bc                                        ; $6a76: $03
    inc bc                                        ; $6a77: $03
    ld [bc], a                                    ; $6a78: $02
    ld [bc], a                                    ; $6a79: $02
    add [hl]                                      ; $6a7a: $86
    add $fa                                       ; $6a7b: $c6 $fa
    inc sp                                        ; $6a7d: $33
    dec a                                         ; $6a7e: $3d
    inc c                                         ; $6a7f: $0c
    rrca                                          ; $6a80: $0f
    ld [bc], a                                    ; $6a81: $02

jr_0f2_6a82:
    inc bc                                        ; $6a82: $03
    ld b, $00                                     ; $6a83: $06 $00
    ld [bc], a                                    ; $6a85: $02

jr_0f2_6a86:
    ld h, b                                       ; $6a86: $60
    add e                                         ; $6a87: $83
    ld [hl], h                                    ; $6a88: $74
    inc e                                         ; $6a89: $1c
    ld [bc], a                                    ; $6a8a: $02
    inc bc                                        ; $6a8b: $03
    ld a, [hl]                                    ; $6a8c: $7e
    adc d                                         ; $6a8d: $8a
    jr nz, jr_0f2_6af0                            ; $6a8e: $20 $60

    ld e, b                                       ; $6a90: $58
    jr c, jr_0f2_6aa7                             ; $6a91: $38 $14

    ld l, h                                       ; $6a93: $6c
    ld c, d                                       ; $6a94: $4a
    halt                                          ; $6a95: $76
    ld sp, $023f                                  ; $6a96: $31 $3f $02
    ld c, $02                                     ; $6a99: $0e $02
    nop                                           ; $6a9b: $00
    ld [bc], a                                    ; $6a9c: $02
    ld b, b                                       ; $6a9d: $40
    ld [$ff00], sp                                ; $6a9e: $08 $00 $ff
    dec d                                         ; $6aa1: $15
    ld [$0ff3], sp                                ; $6aa2: $08 $f3 $0f
    add sp, -$01                                  ; $6aa5: $e8 $ff

jr_0f2_6aa7:
    jp hl                                         ; $6aa7: $e9


    di                                            ; $6aa8: $f3
    push hl                                       ; $6aa9: $e5
    ei                                            ; $6aaa: $fb
    ld [c], a                                     ; $6aab: $e2
    inc bc                                        ; $6aac: $03
    ld [c], a                                     ; $6aad: $e2
    ld b, $f2                                     ; $6aae: $06 $f2
    ld a, [c]                                     ; $6ab0: $f2
    ld a, [c]                                     ; $6ab1: $f2
    ld a, [$02f2]                                 ; $6ab2: $fa $f2 $02
    ld a, [c]                                     ; $6ab5: $f2
    add hl, bc                                    ; $6ab6: $09
    ld [bc], a                                    ; $6ab7: $02
    inc bc                                        ; $6ab8: $03
    ld [bc], a                                    ; $6ab9: $02
    ld c, $02                                     ; $6aba: $0e $02
    jr c, jr_0f2_6ac0                             ; $6abc: $38 $02

    jr nz, jr_0f2_6ac2                            ; $6abe: $20 $02

jr_0f2_6ac0:
    ld [hl], b                                    ; $6ac0: $70
    add [hl]                                      ; $6ac1: $86

jr_0f2_6ac2:
    adc c                                         ; $6ac2: $89
    ld sp, hl                                     ; $6ac3: $f9
    cp c                                          ; $6ac4: $b9
    jp hl                                         ; $6ac5: $e9


    ld sp, hl                                     ; $6ac6: $f9
    xor c                                         ; $6ac7: $a9
    ld [bc], a                                    ; $6ac8: $02
    ld d, b                                       ; $6ac9: $50
    ld [bc], a                                    ; $6aca: $02
    nop                                           ; $6acb: $00
    ld [bc], a                                    ; $6acc: $02
    ld bc, $0f02                                  ; $6acd: $01 $02 $0f
    adc b                                         ; $6ad0: $88
    ld a, h                                       ; $6ad1: $7c
    ld [hl], e                                    ; $6ad2: $73
    sub e                                         ; $6ad3: $93
    rst $28                                       ; $6ad4: $ef
    ld a, h                                       ; $6ad5: $7c
    ld a, a                                       ; $6ad6: $7f
    rla                                           ; $6ad7: $17
    jr jr_0f2_6ae2                                ; $6ad8: $18 $08

    ld bc, $8102                                  ; $6ada: $01 $02 $81
    ld [bc], a                                    ; $6add: $02
    pop hl                                        ; $6ade: $e1
    ld [bc], a                                    ; $6adf: $02
    jr nz, jr_0f2_6ae4                            ; $6ae0: $20 $02

jr_0f2_6ae2:
    ld h, b                                       ; $6ae2: $60
    ld [bc], a                                    ; $6ae3: $02

jr_0f2_6ae4:
    add $8e                                       ; $6ae4: $c6 $8e
    sbc e                                         ; $6ae6: $9b
    sbc a                                         ; $6ae7: $9f
    ld a, [hl+]                                   ; $6ae8: $2a
    scf                                           ; $6ae9: $37
    rst $18                                       ; $6aea: $df
    and $a5                                       ; $6aeb: $e6 $a5
    sbc $94                                       ; $6aed: $de $94
    rst $28                                       ; $6aef: $ef

jr_0f2_6af0:
    scf                                           ; $6af0: $37
    adc $14                                       ; $6af1: $ce $14
    rst $28                                       ; $6af3: $ef
    ld [bc], a                                    ; $6af4: $02
    ld a, c                                       ; $6af5: $79
    add h                                         ; $6af6: $84
    adc $cf                                       ; $6af7: $ce $cf
    add d                                         ; $6af9: $82
    add e                                         ; $6afa: $83
    ld [bc], a                                    ; $6afb: $02
    add c                                         ; $6afc: $81
    ld [$0200], sp                                ; $6afd: $08 $00 $02
    add b                                         ; $6b00: $80
    ld [bc], a                                    ; $6b01: $02
    ldh [rSC], a                                  ; $6b02: $e0 $02
    jr nz, jr_0f2_6b08                            ; $6b04: $20 $02

    jr nc, jr_0f2_6b0a                            ; $6b06: $30 $02

jr_0f2_6b08:
    sub b                                         ; $6b08: $90
    add [hl]                                      ; $6b09: $86

jr_0f2_6b0a:
    ld d, b                                       ; $6b0a: $50
    ret nc                                        ; $6b0b: $d0

    jr nc, @-$0e                                  ; $6b0c: $30 $f0

    ld d, b                                       ; $6b0e: $50
    or b                                          ; $6b0f: $b0
    ld [bc], a                                    ; $6b10: $02
    ld b, $86                                     ; $6b11: $06 $86
    rlca                                          ; $6b13: $07
    ld bc, $0503                                  ; $6b14: $01 $03 $05
    ld bc, $0207                                  ; $6b17: $01 $07 $02
    ld b, $24                                     ; $6b1a: $06 $24
    nop                                           ; $6b1c: $00
    add [hl]                                      ; $6b1d: $86
    dec [hl]                                      ; $6b1e: $35
    ld a, [hl-]                                   ; $6b1f: $3a
    ld d, b                                       ; $6b20: $50
    ld l, a                                       ; $6b21: $6f
    rst $28                                       ; $6b22: $ef
    sbc a                                         ; $6b23: $9f
    ld [bc], a                                    ; $6b24: $02
    ld [hl], c                                    ; $6b25: $71
    ld [bc], a                                    ; $6b26: $02
    ld bc, $0384                                  ; $6b27: $01 $84 $03
    ld [bc], a                                    ; $6b2a: $02
    inc b                                         ; $6b2b: $04
    rlca                                          ; $6b2c: $07
    ld [bc], a                                    ; $6b2d: $02
    inc bc                                        ; $6b2e: $03
    ld [$9400], sp                                ; $6b2f: $08 $00 $94
    ld d, l                                       ; $6b32: $55
    ld l, e                                       ; $6b33: $6b
    ld c, c                                       ; $6b34: $49
    ld [hl], a                                    ; $6b35: $77
    dec h                                         ; $6b36: $25
    ld a, e                                       ; $6b37: $7b
    ld de, $6d7f                                  ; $6b38: $11 $7f $6d
    rst $38                                       ; $6b3b: $ff
    cp e                                          ; $6b3c: $bb
    rst $00                                       ; $6b3d: $c7

jr_0f2_6b3e:
    call nc, Call_0f2_63ab                        ; $6b3e: $d4 $ab $63
    sbc a                                         ; $6b41: $9f
    and h                                         ; $6b42: $a4
    ld e, h                                       ; $6b43: $5c
    jr c, jr_0f2_6b3e                             ; $6b44: $38 $f8

    ld [bc], a                                    ; $6b46: $02
    ret nz                                        ; $6b47: $c0

    inc b                                         ; $6b48: $04
    nop                                           ; $6b49: $00
    sbc h                                         ; $6b4a: $9c
    ld e, h                                       ; $6b4b: $5c
    inc l                                         ; $6b4c: $2c
    inc [hl]                                      ; $6b4d: $34
    ld c, h                                       ; $6b4e: $4c
    ld [hl], a                                    ; $6b4f: $77
    rrca                                          ; $6b50: $0f
    ret z                                         ; $6b51: $c8

    ccf                                           ; $6b52: $3f
    cpl                                           ; $6b53: $2f
    rst $18                                       ; $6b54: $df
    sub [hl]                                      ; $6b55: $96
    ld a, c                                       ; $6b56: $79
    inc sp                                        ; $6b57: $33
    db $fc                                        ; $6b58: $fc
    ret z                                         ; $6b59: $c8

    rst $38                                       ; $6b5a: $ff
    inc d                                         ; $6b5b: $14
    rst $28                                       ; $6b5c: $ef
    ld e, a                                       ; $6b5d: $5f
    and a                                         ; $6b5e: $a7
    ld a, [bc]                                    ; $6b5f: $0a
    or $c6                                        ; $6b60: $f6 $c6
    ld a, [$3d33]                                 ; $6b62: $fa $33 $3d
    inc c                                         ; $6b65: $0c
    rrca                                          ; $6b66: $0f
    ld [bc], a                                    ; $6b67: $02
    inc bc                                        ; $6b68: $03
    ld b, $00                                     ; $6b69: $06 $00
    ld [bc], a                                    ; $6b6b: $02
    ld h, b                                       ; $6b6c: $60
    add e                                         ; $6b6d: $83
    ld a, h                                       ; $6b6e: $7c
    inc e                                         ; $6b6f: $1c
    ld [bc], a                                    ; $6b70: $02
    inc bc                                        ; $6b71: $03
    ld a, [hl]                                    ; $6b72: $7e
    adc d                                         ; $6b73: $8a
    jr nz, jr_0f2_6bd6                            ; $6b74: $20 $60

    ld [hl], b                                    ; $6b76: $70
    jr nc, @+$2a                                  ; $6b77: $30 $28

    ld e, b                                       ; $6b79: $58
    ld c, [hl]                                    ; $6b7a: $4e
    halt                                          ; $6b7b: $76
    ld sp, $023f                                  ; $6b7c: $31 $3f $02
    ld c, $02                                     ; $6b7f: $0e $02
    nop                                           ; $6b81: $00
    ld [bc], a                                    ; $6b82: $02
    ld b, b                                       ; $6b83: $40
    inc b                                         ; $6b84: $04
    nop                                           ; $6b85: $00
    rst $38                                       ; $6b86: $ff
    dec d                                         ; $6b87: $15
    ld [$0ff3], sp                                ; $6b88: $08 $f3 $0f
    add sp, -$01                                  ; $6b8b: $e8 $ff
    jp hl                                         ; $6b8d: $e9


    xor $e8                                       ; $6b8e: $ee $e8
    or $e4                                        ; $6b90: $f6 $e4

jr_0f2_6b92:
    cp $e4                                        ; $6b92: $fe $e4
    inc bc                                        ; $6b94: $03
    db $f4                                        ; $6b95: $f4
    ld a, [c]                                     ; $6b96: $f2
    db $f4                                        ; $6b97: $f4
    ld a, [$02f4]                                 ; $6b98: $fa $f4 $02
    db $f4                                        ; $6b9b: $f4
    add hl, bc                                    ; $6b9c: $09
    ld [bc], a                                    ; $6b9d: $02
    ld h, b                                       ; $6b9e: $60
    add h                                         ; $6b9f: $84
    ldh a, [$90]                                  ; $6ba0: $f0 $90
    ld l, e                                       ; $6ba2: $6b
    ld a, e                                       ; $6ba3: $7b
    ld [bc], a                                    ; $6ba4: $02
    ld e, $82                                     ; $6ba5: $1e $82
    ret z                                         ; $6ba7: $c8

    cp b                                          ; $6ba8: $b8
    ld [bc], a                                    ; $6ba9: $02
    ld [hl], b                                    ; $6baa: $70
    inc c                                         ; $6bab: $0c
    nop                                           ; $6bac: $00
    ld [bc], a                                    ; $6bad: $02
    inc bc                                        ; $6bae: $03
    add d                                         ; $6baf: $82
    inc b                                         ; $6bb0: $04
    rlca                                          ; $6bb1: $07
    ld [bc], a                                    ; $6bb2: $02
    inc bc                                        ; $6bb3: $03
    ld [bc], a                                    ; $6bb4: $02
    nop                                           ; $6bb5: $00
    ld [bc], a                                    ; $6bb6: $02
    ld e, $02                                     ; $6bb7: $1e $02
    ld [hl], e                                    ; $6bb9: $73
    ld [bc], a                                    ; $6bba: $02
    ret nz                                        ; $6bbb: $c0

    ld [bc], a                                    ; $6bbc: $02
    add c                                         ; $6bbd: $81
    ld [bc], a                                    ; $6bbe: $02
    rrca                                          ; $6bbf: $0f
    ld [bc], a                                    ; $6bc0: $02
    jr @+$04                                      ; $6bc1: $18 $02

    ld de, $1692                                  ; $6bc3: $11 $92 $16
    rla                                           ; $6bc6: $17
    inc e                                         ; $6bc7: $1c
    rra                                           ; $6bc8: $1f
    add hl, bc                                    ; $6bc9: $09
    ld c, $0b                                     ; $6bca: $0e $0b
    inc c                                         ; $6bcc: $0c
    dec d                                         ; $6bcd: $15
    ld a, [de]                                    ; $6bce: $1a
    ld [hl], c                                    ; $6bcf: $71
    ld a, [hl]                                    ; $6bd0: $7e
    res 7, h                                      ; $6bd1: $cb $bc
    sbc c                                         ; $6bd3: $99
    ld a, [hl]                                    ; $6bd4: $7e
    db $e4                                        ; $6bd5: $e4

jr_0f2_6bd6:
    rst $38                                       ; $6bd6: $ff
    ld [bc], a                                    ; $6bd7: $02
    ld bc, $0302                                  ; $6bd8: $01 $02 $03
    inc b                                         ; $6bdb: $04
    ld [bc], a                                    ; $6bdc: $02
    ld [bc], a                                    ; $6bdd: $02
    inc bc                                        ; $6bde: $03
    inc b                                         ; $6bdf: $04
    add c                                         ; $6be0: $81
    ld [bc], a                                    ; $6be1: $02
    add b                                         ; $6be2: $80
    ld [bc], a                                    ; $6be3: $02
    nop                                           ; $6be4: $00
    ld [bc], a                                    ; $6be5: $02
    ld l, h                                       ; $6be6: $6c
    adc h                                         ; $6be7: $8c
    cp d                                          ; $6be8: $ba
    cp $d1                                        ; $6be9: $fe $d1
    ccf                                           ; $6beb: $3f
    db $f4                                        ; $6bec: $f4
    ld a, e                                       ; $6bed: $7b
    ld c, a                                       ; $6bee: $4f
    ldh a, [$65]                                  ; $6bef: $f0 $65
    ld a, [$f976]                                 ; $6bf1: $fa $76 $f9
    ld [bc], a                                    ; $6bf4: $02
    inc e                                         ; $6bf5: $1c
    ld [bc], a                                    ; $6bf6: $02
    ld b, $02                                     ; $6bf7: $06 $02
    ld c, $86                                     ; $6bf9: $0e $86
    dec d                                         ; $6bfb: $15
    rra                                           ; $6bfc: $1f
    add hl, de                                    ; $6bfd: $19
    dec bc                                        ; $6bfe: $0b
    dec de                                        ; $6bff: $1b
    add hl, bc                                    ; $6c00: $09
    ld [bc], a                                    ; $6c01: $02
    ld [de], a                                    ; $6c02: $12
    ld [bc], a                                    ; $6c03: $02
    jr jr_0f2_6c0a                                ; $6c04: $18 $04

    inc b                                         ; $6c06: $04
    ld [bc], a                                    ; $6c07: $02
    inc c                                         ; $6c08: $0c
    inc b                                         ; $6c09: $04

jr_0f2_6c0a:
    jr jr_0f2_6b92                                ; $6c0a: $18 $86

    ld [$1c18], sp                                ; $6c0c: $08 $18 $1c
    inc c                                         ; $6c0f: $0c
    inc d                                         ; $6c10: $14
    inc c                                         ; $6c11: $0c
    ld [$8800], sp                                ; $6c12: $08 $00 $88
    dec bc                                        ; $6c15: $0b
    inc c                                         ; $6c16: $0c
    dec [hl]                                      ; $6c17: $35
    ld a, [hl-]                                   ; $6c18: $3a
    ld d, b                                       ; $6c19: $50
    ld l, a                                       ; $6c1a: $6f
    rst $28                                       ; $6c1b: $ef
    sbc a                                         ; $6c1c: $9f
    ld [bc], a                                    ; $6c1d: $02
    ld [hl], c                                    ; $6c1e: $71
    ld [bc], a                                    ; $6c1f: $02
    ld bc, $0384                                  ; $6c20: $01 $84 $03
    ld [bc], a                                    ; $6c23: $02
    inc b                                         ; $6c24: $04
    rlca                                          ; $6c25: $07
    ld [bc], a                                    ; $6c26: $02
    inc bc                                        ; $6c27: $03
    ld b, $00                                     ; $6c28: $06 $00
    sub [hl]                                      ; $6c2a: $96
    ld b, $0f                                     ; $6c2b: $06 $0f
    dec bc                                        ; $6c2d: $0b
    rlca                                          ; $6c2e: $07
    inc bc                                        ; $6c2f: $03
    rrca                                          ; $6c30: $0f
    dec bc                                        ; $6c31: $0b
    rlca                                          ; $6c32: $07
    and e                                         ; $6c33: $a3
    ld a, a                                       ; $6c34: $7f
    ld a, c                                       ; $6c35: $79
    rst $38                                       ; $6c36: $ff
    or a                                          ; $6c37: $b7
    rst $08                                       ; $6c38: $cf

jr_0f2_6c39:
    call nc, Call_0f2_63ab                        ; $6c39: $d4 $ab $63
    sbc a                                         ; $6c3c: $9f
    and h                                         ; $6c3d: $a4
    ld e, h                                       ; $6c3e: $5c
    jr c, jr_0f2_6c39                             ; $6c3f: $38 $f8

    ld [bc], a                                    ; $6c41: $02
    ret nz                                        ; $6c42: $c0

    ld [$9800], sp                                ; $6c43: $08 $00 $98
    ld e, e                                       ; $6c46: $5b
    and a                                         ; $6c47: $a7
    inc h                                         ; $6c48: $24
    rst $18                                       ; $6c49: $df
    ld d, a                                       ; $6c4a: $57
    xor a                                         ; $6c4b: $af
    ld c, [hl]                                    ; $6c4c: $4e
    cp c                                          ; $6c4d: $b9
    inc de                                        ; $6c4e: $13
    db $fc                                        ; $6c4f: $fc
    add sp, -$01                                  ; $6c50: $e8 $ff
    sub h                                         ; $6c52: $94
    rst $28                                       ; $6c53: $ef
    ld e, a                                       ; $6c54: $5f
    and a                                         ; $6c55: $a7
    ld a, [bc]                                    ; $6c56: $0a
    or $c6                                        ; $6c57: $f6 $c6
    ld a, [$3d33]                                 ; $6c59: $fa $33 $3d
    inc c                                         ; $6c5c: $0c
    rrca                                          ; $6c5d: $0f
    ld [bc], a                                    ; $6c5e: $02
    inc bc                                        ; $6c5f: $03
    ld b, $00                                     ; $6c60: $06 $00
    ld [bc], a                                    ; $6c62: $02
    ld h, b                                       ; $6c63: $60
    add e                                         ; $6c64: $83
    ld a, h                                       ; $6c65: $7c
    inc e                                         ; $6c66: $1c
    ld [bc], a                                    ; $6c67: $02
    inc bc                                        ; $6c68: $03
    ld a, [hl]                                    ; $6c69: $7e
    adc d                                         ; $6c6a: $8a
    jr nz, @+$62                                  ; $6c6b: $20 $60

    ld e, b                                       ; $6c6d: $58
    jr c, jr_0f2_6c84                             ; $6c6e: $38 $14

    ld l, h                                       ; $6c70: $6c
    ld c, d                                       ; $6c71: $4a
    halt                                          ; $6c72: $76
    ld sp, $023f                                  ; $6c73: $31 $3f $02
    ld c, $02                                     ; $6c76: $0e $02
    nop                                           ; $6c78: $00
    ld [bc], a                                    ; $6c79: $02
    ld b, b                                       ; $6c7a: $40
    ld [$ff00], sp                                ; $6c7b: $08 $00 $ff
    rla                                           ; $6c7e: $17
    add hl, bc                                    ; $6c7f: $09
    di                                            ; $6c80: $f3
    rrca                                          ; $6c81: $0f
    add sp, -$01                                  ; $6c82: $e8 $ff

jr_0f2_6c84:
    and $f0                                       ; $6c84: $e6 $f0
    and $f8                                       ; $6c86: $e6 $f8
    and $00                                       ; $6c88: $e6 $00
    push hl                                       ; $6c8a: $e5
    ld [$09ea], sp                                ; $6c8b: $08 $ea $09
    push af                                       ; $6c8e: $f5
    ld a, [c]                                     ; $6c8f: $f2
    push af                                       ; $6c90: $f5
    ld a, [$02f5]                                 ; $6c91: $fa $f5 $02
    push af                                       ; $6c94: $f5
    add hl, bc                                    ; $6c95: $09
    ld [bc], a                                    ; $6c96: $02
    rrca                                          ; $6c97: $0f
    ld [bc], a                                    ; $6c98: $02
    jr c, @-$78                                   ; $6c99: $38 $86

    ld d, h                                       ; $6c9b: $54
    ld a, h                                       ; $6c9c: $7c
    db $e4                                        ; $6c9d: $e4
    xor h                                         ; $6c9e: $ac
    db $ec                                        ; $6c9f: $ec
    and h                                         ; $6ca0: $a4
    ld [bc], a                                    ; $6ca1: $02
    ld c, b                                       ; $6ca2: $48
    stop                                          ; $6ca3: $10 $00
    ld [bc], a                                    ; $6ca5: $02
    inc bc                                        ; $6ca6: $03
    add d                                         ; $6ca7: $82
    rra                                           ; $6ca8: $1f
    inc e                                         ; $6ca9: $1c
    ld [bc], a                                    ; $6caa: $02
    ret nz                                        ; $6cab: $c0

    ld [bc], a                                    ; $6cac: $02
    ldh [rSC], a                                  ; $6cad: $e0 $02
    jr c, jr_0f2_6cb3                             ; $6caf: $38 $02

    inc c                                         ; $6cb1: $0c
    ld [bc], a                                    ; $6cb2: $02

jr_0f2_6cb3:
    inc b                                         ; $6cb3: $04
    ld [bc], a                                    ; $6cb4: $02
    inc a                                         ; $6cb5: $3c
    ld [bc], a                                    ; $6cb6: $02
    pop hl                                        ; $6cb7: $e1
    sub d                                         ; $6cb8: $92
    add [hl]                                      ; $6cb9: $86
    add a                                         ; $6cba: $87
    adc d                                         ; $6cbb: $8a
    adc l                                         ; $6cbc: $8d
    db $d3                                        ; $6cbd: $d3
    db $dd                                        ; $6cbe: $dd
    ld l, l                                       ; $6cbf: $6d
    ld [hl], e                                    ; $6cc0: $73
    dec hl                                        ; $6cc1: $2b
    dec [hl]                                      ; $6cc2: $35
    ld d, l                                       ; $6cc3: $55
    ld l, e                                       ; $6cc4: $6b
    ld c, [hl]                                    ; $6cc5: $4e
    ld [hl], c                                    ; $6cc6: $71
    push bc                                       ; $6cc7: $c5
    ei                                            ; $6cc8: $fb
    ld l, $f1                                     ; $6cc9: $2e $f1
    ld [bc], a                                    ; $6ccb: $02
    ld bc, $0304                                  ; $6ccc: $01 $04 $03
    inc b                                         ; $6ccf: $04
    ld [bc], a                                    ; $6cd0: $02
    ld [bc], a                                    ; $6cd1: $02
    inc bc                                        ; $6cd2: $03
    ld [bc], a                                    ; $6cd3: $02
    or c                                          ; $6cd4: $b1
    sub d                                         ; $6cd5: $92
    add sp, -$08                                  ; $6cd6: $e8 $f8
    ld d, h                                       ; $6cd8: $54
    db $ec                                        ; $6cd9: $ec
    db $d3                                        ; $6cda: $d3
    rst $28                                       ; $6cdb: $ef
    add hl, sp                                    ; $6cdc: $39
    rst $00                                       ; $6cdd: $c7
    sub l                                         ; $6cde: $95
    db $eb                                        ; $6cdf: $eb
    jp c, $bce5                                   ; $6ce0: $da $e5 $bc

    jp $f58a                                      ; $6ce3: $c3 $8a $f5


    push de                                       ; $6ce6: $d5
    db $eb                                        ; $6ce7: $eb
    ld [bc], a                                    ; $6ce8: $02
    ld [hl], b                                    ; $6ce9: $70
    ld [bc], a                                    ; $6cea: $02
    call c, $0402                                 ; $6ceb: $dc $02 $04
    ld [bc], a                                    ; $6cee: $02
    ld c, $86                                     ; $6cef: $0e $86
    dec d                                         ; $6cf1: $15
    rra                                           ; $6cf2: $1f
    inc de                                        ; $6cf3: $13
    ld a, [de]                                    ; $6cf4: $1a
    dec de                                        ; $6cf5: $1b
    ld [de], a                                    ; $6cf6: $12
    ld [bc], a                                    ; $6cf7: $02
    adc c                                         ; $6cf8: $89
    ld [bc], a                                    ; $6cf9: $02
    ret nz                                        ; $6cfa: $c0

    ld [bc], a                                    ; $6cfb: $02
    ld b, b                                       ; $6cfc: $40
    ld [bc], a                                    ; $6cfd: $02
    ret nz                                        ; $6cfe: $c0

Call_0f2_6cff:
    ld [bc], a                                    ; $6cff: $02
    add b                                         ; $6d00: $80
    ld [bc], a                                    ; $6d01: $02
    nop                                           ; $6d02: $00
    inc b                                         ; $6d03: $04
    add b                                         ; $6d04: $80
    ld [bc], a                                    ; $6d05: $02
    db $fc                                        ; $6d06: $fc
    inc b                                         ; $6d07: $04
    ld bc, $0012                                  ; $6d08: $01 $12 $00
    adc d                                         ; $6d0b: $8a
    halt                                          ; $6d0c: $76
    adc [hl]                                      ; $6d0d: $8e
    add c                                         ; $6d0e: $81
    rst $38                                       ; $6d0f: $ff
    ld a, [hl]                                    ; $6d10: $7e
    cp $d0                                        ; $6d11: $fe $d0
    jr nc, jr_0f2_6d8d                            ; $6d13: $30 $78

    adc b                                         ; $6d15: $88
    ld [bc], a                                    ; $6d16: $02
    nop                                           ; $6d17: $00
    adc h                                         ; $6d18: $8c
    or e                                          ; $6d19: $b3
    rst $08                                       ; $6d1a: $cf
    ld a, h                                       ; $6d1b: $7c
    ld a, a                                       ; $6d1c: $7f
    dec bc                                        ; $6d1d: $0b
    inc c                                         ; $6d1e: $0c
    ld [hl], $39                                  ; $6d1f: $36 $39
    ld e, b                                       ; $6d21: $58
    ld h, a                                       ; $6d22: $67
    rst $20                                       ; $6d23: $e7
    sbc a                                         ; $6d24: $9f
    ld [bc], a                                    ; $6d25: $02
    ld a, c                                       ; $6d26: $79
    ld [bc], a                                    ; $6d27: $02
    ld bc, $0384                                  ; $6d28: $01 $84 $03
    ld [bc], a                                    ; $6d2b: $02
    inc b                                         ; $6d2c: $04
    rlca                                          ; $6d2d: $07
    ld [bc], a                                    ; $6d2e: $02
    inc bc                                        ; $6d2f: $03
    ld a, [bc]                                    ; $6d30: $0a
    nop                                           ; $6d31: $00
    sub d                                         ; $6d32: $92
    sub e                                         ; $6d33: $93
    rst $28                                       ; $6d34: $ef

jr_0f2_6d35:
    ld c, e                                       ; $6d35: $4b
    rst $30                                       ; $6d36: $f7
    ld h, e                                       ; $6d37: $63
    rst $38                                       ; $6d38: $ff
    sbc c                                         ; $6d39: $99
    rst $38                                       ; $6d3a: $ff
    cp a                                          ; $6d3b: $bf
    rst $00                                       ; $6d3c: $c7
    or b                                          ; $6d3d: $b0
    rst $08                                       ; $6d3e: $cf
    ld l, e                                       ; $6d3f: $6b
    sub a                                         ; $6d40: $97
    adc h                                         ; $6d41: $8c
    ld a, h                                       ; $6d42: $7c
    jr nc, jr_0f2_6d35                            ; $6d43: $30 $f0

    ld [bc], a                                    ; $6d45: $02
    ret nz                                        ; $6d46: $c0

    dec bc                                        ; $6d47: $0b
    nop                                           ; $6d48: $00
    sub l                                         ; $6d49: $95
    ld [bc], a                                    ; $6d4a: $02
    ld h, $de                                     ; $6d4b: $26 $de
    ld c, [hl]                                    ; $6d4d: $4e
    cp b                                          ; $6d4e: $b8
    ld [de], a                                    ; $6d4f: $12
    db $fc                                        ; $6d50: $fc
    add sp, -$02                                  ; $6d51: $e8 $fe
    sub h                                         ; $6d53: $94
    rst $28                                       ; $6d54: $ef
    ld a, a                                       ; $6d55: $7f
    add a                                         ; $6d56: $87
    ld a, [hl+]                                   ; $6d57: $2a
    sub $c6                                       ; $6d58: $d6 $c6
    ld a, [$3d33]                                 ; $6d5a: $fa $33 $3d
    inc c                                         ; $6d5d: $0c
    rrca                                          ; $6d5e: $0f
    ld [bc], a                                    ; $6d5f: $02
    inc bc                                        ; $6d60: $03
    ld [de], a                                    ; $6d61: $12
    nop                                           ; $6d62: $00
    add [hl]                                      ; $6d63: $86
    inc [hl]                                      ; $6d64: $34
    ld c, h                                       ; $6d65: $4c
    ld c, d                                       ; $6d66: $4a
    halt                                          ; $6d67: $76
    ld sp, $023f                                  ; $6d68: $31 $3f $02
    ld c, $02                                     ; $6d6b: $0e $02
    nop                                           ; $6d6d: $00
    ld [bc], a                                    ; $6d6e: $02
    ld b, b                                       ; $6d6f: $40
    ld a, [bc]                                    ; $6d70: $0a
    nop                                           ; $6d71: $00
    rst $38                                       ; $6d72: $ff
    add hl, de                                    ; $6d73: $19
    ld a, [bc]                                    ; $6d74: $0a
    di                                            ; $6d75: $f3
    rrca                                          ; $6d76: $0f
    add sp, -$01                                  ; $6d77: $e8 $ff
    push hl                                       ; $6d79: $e5
    push af                                       ; $6d7a: $f5
    and $fd                                       ; $6d7b: $e6 $fd
    xor $05                                       ; $6d7d: $ee $05
    xor $0d                                       ; $6d7f: $ee $0d
    db $ed                                        ; $6d81: $ed

Jump_0f2_6d82:
    dec d                                         ; $6d82: $15
    db $ed                                        ; $6d83: $ed
    rla                                           ; $6d84: $17
    push af                                       ; $6d85: $f5
    ld a, [c]                                     ; $6d86: $f2
    push af                                       ; $6d87: $f5
    ld a, [$02f5]                                 ; $6d88: $fa $f5 $02
    push af                                       ; $6d8b: $f5
    inc bc                                        ; $6d8c: $03

jr_0f2_6d8d:
    ld [bc], a                                    ; $6d8d: $02
    inc bc                                        ; $6d8e: $03
    add h                                         ; $6d8f: $84
    rlca                                          ; $6d90: $07
    inc b                                         ; $6d91: $04
    ld a, e                                       ; $6d92: $7b
    ld a, a                                       ; $6d93: $7f
    ld [bc], a                                    ; $6d94: $02
    call c, $8982                                 ; $6d95: $dc $82 $89
    adc [hl]                                      ; $6d98: $8e
    ld [bc], a                                    ; $6d99: $02
    rst $08                                       ; $6d9a: $cf
    ld [bc], a                                    ; $6d9b: $02
    ld a, d                                       ; $6d9c: $7a
    ld [bc], a                                    ; $6d9d: $02
    ld [bc], a                                    ; $6d9e: $02
    ld [bc], a                                    ; $6d9f: $02
    ld c, $02                                     ; $6da0: $0e $02
    inc c                                         ; $6da2: $0c
    ld [bc], a                                    ; $6da3: $02
    add hl, bc                                    ; $6da4: $09
    adc d                                         ; $6da5: $8a
    ld c, $0f                                     ; $6da6: $0e $0f
    dec b                                         ; $6da8: $05
    ld b, $0b                                     ; $6da9: $06 $0b
    inc c                                         ; $6dab: $0c
    dec e                                         ; $6dac: $1d
    ld a, [de]                                    ; $6dad: $1a
    add hl, sp                                    ; $6dae: $39
    ld a, $02                                     ; $6daf: $3e $02
    add b                                         ; $6db1: $80
    inc b                                         ; $6db2: $04
    nop                                           ; $6db3: $00
    ld [bc], a                                    ; $6db4: $02
    add b                                         ; $6db5: $80
    ld [$0200], sp                                ; $6db6: $08 $00 $02

jr_0f2_6db9:
    ld l, h                                       ; $6db9: $6c
    adc [hl]                                      ; $6dba: $8e
    or e                                          ; $6dbb: $b3
    rst $38                                       ; $6dbc: $ff
    push hl                                       ; $6dbd: $e5
    ei                                            ; $6dbe: $fb
    adc a                                         ; $6dbf: $8f
    pop af                                        ; $6dc0: $f1
    call nc, $eeeb                                ; $6dc1: $d4 $eb $ee
    pop af                                        ; $6dc4: $f1
    push bc                                       ; $6dc5: $c5
    ld a, [$75aa]                                 ; $6dc6: $fa $aa $75
    ld [bc], a                                    ; $6dc9: $02
    rlca                                          ; $6dca: $07
    ld [bc], a                                    ; $6dcb: $02
    dec c                                         ; $6dcc: $0d
    ld [bc], a                                    ; $6dcd: $02
    db $ec                                        ; $6dce: $ec
    ld [bc], a                                    ; $6dcf: $02
    cp b                                          ; $6dd0: $b8
    inc b                                         ; $6dd1: $04
    add b                                         ; $6dd2: $80
    add e                                         ; $6dd3: $83
    ld a, l                                       ; $6dd4: $7d
    rst $38                                       ; $6dd5: $ff
    ld b, a                                       ; $6dd6: $47
    ld [bc], a                                    ; $6dd7: $02
    ld hl, sp-$71                                 ; $6dd8: $f8 $8f
    rst $38                                       ; $6dda: $ff
    sub a                                         ; $6ddb: $97
    rst $28                                       ; $6ddc: $ef
    ld a, [de]                                    ; $6ddd: $1a
    and $c5                                       ; $6dde: $e6 $c5
    ei                                            ; $6de0: $fb
    and c                                         ; $6de1: $a1
    ld a, [hl]                                    ; $6de2: $7e
    cp h                                          ; $6de3: $bc
    ld a, a                                       ; $6de4: $7f
    ld d, e                                       ; $6de5: $53
    or e                                          ; $6de6: $b3
    jr nc, jr_0f2_6db9                            ; $6de7: $30 $d0

    ld [bc], a                                    ; $6de9: $02
    ld c, $02                                     ; $6dea: $0e $02
    cp e                                          ; $6dec: $bb
    ld [bc], a                                    ; $6ded: $02
    pop af                                        ; $6dee: $f1
    ld [$0200], sp                                ; $6def: $08 $00 $02
    ldh [$82], a                                  ; $6df2: $e0 $82
    sub b                                         ; $6df4: $90
    ld [hl], b                                    ; $6df5: $70
    ld [bc], a                                    ; $6df6: $02
    ldh [rSC], a                                  ; $6df7: $e0 $02
    nop                                           ; $6df9: $00
    ld [bc], a                                    ; $6dfa: $02
    add b                                         ; $6dfb: $80
    add [hl]                                      ; $6dfc: $86
    ld b, b                                       ; $6dfd: $40
    ret nz                                        ; $6dfe: $c0

    and b                                         ; $6dff: $a0
    ld h, b                                       ; $6e00: $60
    db $10                                        ; $6e01: $10
    ldh a, [rSC]                                  ; $6e02: $f0 $02
    ldh [rSC], a                                  ; $6e04: $e0 $02
    rlca                                          ; $6e06: $07
    add h                                         ; $6e07: $84
    jr c, jr_0f2_6e49                             ; $6e08: $38 $3f

    ld l, l                                       ; $6e0a: $6d
    ld l, [hl]                                    ; $6e0b: $6e
    ld [bc], a                                    ; $6e0c: $02
    jp RST_18                                     ; $6e0d: $c3 $18 $00


    ld [bc], a                                    ; $6e10: $02
    ld [bc], a                                    ; $6e11: $02
    add h                                         ; $6e12: $84
    inc bc                                        ; $6e13: $03
    ld bc, $0103                                  ; $6e14: $01 $03 $01
    ld [bc], a                                    ; $6e17: $02
    ld [bc], a                                    ; $6e18: $02
    jr jr_0f2_6e1b                                ; $6e19: $18 $00

jr_0f2_6e1b:
    adc [hl]                                      ; $6e1b: $8e
    scf                                           ; $6e1c: $37
    add hl, sp                                    ; $6e1d: $39
    ld c, e                                       ; $6e1e: $4b
    ld [hl], a                                    ; $6e1f: $77
    inc a                                         ; $6e20: $3c
    ccf                                           ; $6e21: $3f
    dec bc                                        ; $6e22: $0b
    inc c                                         ; $6e23: $0c
    dec [hl]                                      ; $6e24: $35
    ld a, [hl-]                                   ; $6e25: $3a
    ld d, b                                       ; $6e26: $50
    ld l, a                                       ; $6e27: $6f
    rst $28                                       ; $6e28: $ef
    sbc a                                         ; $6e29: $9f
    ld [bc], a                                    ; $6e2a: $02
    ld [hl], c                                    ; $6e2b: $71
    ld [bc], a                                    ; $6e2c: $02
    ld bc, $0384                                  ; $6e2d: $01 $84 $03
    ld [bc], a                                    ; $6e30: $02
    inc b                                         ; $6e31: $04
    rlca                                          ; $6e32: $07
    ld [bc], a                                    ; $6e33: $02
    inc bc                                        ; $6e34: $03
    ld [$9400], sp                                ; $6e35: $08 $00 $94
    ld h, b                                       ; $6e38: $60
    add b                                         ; $6e39: $80
    inc h                                         ; $6e3a: $24
    rst $18                                       ; $6e3b: $df
    sub [hl]                                      ; $6e3c: $96
    rst $28                                       ; $6e3d: $ef
    add $7f                                       ; $6e3e: $c6 $7f
    ld [hl], e                                    ; $6e40: $73
    rst $38                                       ; $6e41: $ff
    cp a                                          ; $6e42: $bf
    rst $08                                       ; $6e43: $cf

jr_0f2_6e44:
    call nc, Call_0f2_63ab                        ; $6e44: $d4 $ab $63
    sbc a                                         ; $6e47: $9f
    add h                                         ; $6e48: $84

jr_0f2_6e49:
    ld a, h                                       ; $6e49: $7c
    jr c, jr_0f2_6e44                             ; $6e4a: $38 $f8

    ld [bc], a                                    ; $6e4c: $02
    ret nz                                        ; $6e4d: $c0

    inc c                                         ; $6e4e: $0c
    nop                                           ; $6e4f: $00
    sub h                                         ; $6e50: $94
    and b                                         ; $6e51: $a0
    ld b, b                                       ; $6e52: $40
    add b                                         ; $6e53: $80
    ld h, b                                       ; $6e54: $60
    jr nz, @-$1e                                  ; $6e55: $20 $e0

    ret nz                                        ; $6e57: $c0

    ldh [rP1], a                                  ; $6e58: $e0 $00
    ldh [rLCDC], a                                ; $6e5a: $e0 $40
    and b                                         ; $6e5c: $a0
    nop                                           ; $6e5d: $00
    ldh [$c0], a                                  ; $6e5e: $e0 $c0
    ldh [$33], a                                  ; $6e60: $e0 $33
    dec a                                         ; $6e62: $3d
    inc c                                         ; $6e63: $0c
    rrca                                          ; $6e64: $0f
    ld [bc], a                                    ; $6e65: $02
    inc bc                                        ; $6e66: $03
    inc e                                         ; $6e67: $1c
    nop                                           ; $6e68: $00
    ld [bc], a                                    ; $6e69: $02
    ld bc, $000a                                  ; $6e6a: $01 $0a $00
    rst $38                                       ; $6e6d: $ff
    dec d                                         ; $6e6e: $15
    ld [$0ff3], sp                                ; $6e6f: $08 $f3 $0f
    add sp, -$01                                  ; $6e72: $e8 $ff
    db $eb                                        ; $6e74: $eb
    di                                            ; $6e75: $f3
    ld [$e9fb], a                                 ; $6e76: $ea $fb $e9
    inc bc                                        ; $6e79: $03
    add sp, $0b                                   ; $6e7a: $e8 $0b
    ld hl, sp-$0e                                 ; $6e7c: $f8 $f2
    ld hl, sp-$06                                 ; $6e7e: $f8 $fa
    ld hl, sp+$02                                 ; $6e80: $f8 $02
    ld hl, sp+$09                                 ; $6e82: $f8 $09
    ld [bc], a                                    ; $6e84: $02
    inc bc                                        ; $6e85: $03
    ld [bc], a                                    ; $6e86: $02
    ld b, $04                                     ; $6e87: $06 $04
    inc b                                         ; $6e89: $04
    ld [bc], a                                    ; $6e8a: $02
    ld b, $04                                     ; $6e8b: $06 $04
    inc bc                                        ; $6e8d: $03
    sub d                                         ; $6e8e: $92
    ld [bc], a                                    ; $6e8f: $02
    inc bc                                        ; $6e90: $03
    dec b                                         ; $6e91: $05
    ld b, $0e                                     ; $6e92: $06 $0e
    dec c                                         ; $6e94: $0d
    ld l, h                                       ; $6e95: $6c
    ld [hl], a                                    ; $6e96: $77
    sub l                                         ; $6e97: $95
    xor $7a                                       ; $6e98: $ee $7a
    ld a, a                                       ; $6e9a: $7f
    rla                                           ; $6e9b: $17
    add hl, de                                    ; $6e9c: $19
    ld l, d                                       ; $6e9d: $6a
    ld [hl], l                                    ; $6e9e: $75
    and c                                         ; $6e9f: $a1
    rst $18                                       ; $6ea0: $df
    ld [bc], a                                    ; $6ea1: $02
    rlca                                          ; $6ea2: $07
    ld [bc], a                                    ; $6ea3: $02
    db $ec                                        ; $6ea4: $ec
    ld [bc], a                                    ; $6ea5: $02
    ld a, b                                       ; $6ea6: $78
    inc b                                         ; $6ea7: $04
    nop                                           ; $6ea8: $00
    ld [bc], a                                    ; $6ea9: $02
    ld [hl], $94                                  ; $6eaa: $36 $94
    reti                                          ; $6eac: $d9


    rst $38                                       ; $6ead: $ff
    ld [hl], d                                    ; $6eae: $72
    db $fd                                        ; $6eaf: $fd
    rst $00                                       ; $6eb0: $c7
    ld a, b                                       ; $6eb1: $78
    ld l, d                                       ; $6eb2: $6a
    push af                                       ; $6eb3: $f5
    rst $30                                       ; $6eb4: $f7
    ld a, b                                       ; $6eb5: $78
    ld [c], a                                     ; $6eb6: $e2
    ld a, l                                       ; $6eb7: $7d
    ld d, l                                       ; $6eb8: $55
    cp d                                          ; $6eb9: $ba
    jp c, $383d                                   ; $6eba: $da $3d $38

    rst $18                                       ; $6ebd: $df
    rst $08                                       ; $6ebe: $cf

jr_0f2_6ebf:
    rst $38                                       ; $6ebf: $ff
    ld [bc], a                                    ; $6ec0: $02
    rlca                                          ; $6ec1: $07
    ld [bc], a                                    ; $6ec2: $02
    adc $02                                       ; $6ec3: $ce $02
    ld a, b                                       ; $6ec5: $78
    inc b                                         ; $6ec6: $04
    nop                                           ; $6ec7: $00
    ld [bc], a                                    ; $6ec8: $02
    inc a                                         ; $6ec9: $3c
    ld [bc], a                                    ; $6eca: $02
    ld h, $02                                     ; $6ecb: $26 $02
    or e                                          ; $6ecd: $b3
    ld [bc], a                                    ; $6ece: $02
    ret c                                         ; $6ecf: $d8

    ld [bc], a                                    ; $6ed0: $02
    ret z                                         ; $6ed1: $c8

    adc h                                         ; $6ed2: $8c
    ld a, b                                       ; $6ed3: $78
    ld hl, sp+$67                                 ; $6ed4: $f8 $67
    rst $38                                       ; $6ed6: $ff
    cp c                                          ; $6ed7: $b9
    ld a, [hl]                                    ; $6ed8: $7e
    ld h, $ff                                     ; $6ed9: $26 $ff
    ld c, l                                       ; $6edb: $4d
    di                                            ; $6edc: $f3
    and $f9                                       ; $6edd: $e6 $f9
    ld [bc], a                                    ; $6edf: $02
    ld e, $84                                     ; $6ee0: $1e $84
    rst $20                                       ; $6ee2: $e7
    ld sp, hl                                     ; $6ee3: $f9
    inc de                                        ; $6ee4: $13
    dec e                                         ; $6ee5: $1d
    ld [bc], a                                    ; $6ee6: $02
    ld c, $02                                     ; $6ee7: $0e $02
    nop                                           ; $6ee9: $00
    ld [bc], a                                    ; $6eea: $02
    ld h, b                                       ; $6eeb: $60
    add [hl]                                      ; $6eec: $86
    ldh a, [$90]                                  ; $6eed: $f0 $90
    ret nc                                        ; $6eef: $d0

    or b                                          ; $6ef0: $b0
    and b                                         ; $6ef1: $a0
    ldh [rSC], a                                  ; $6ef2: $e0 $02
    ld b, b                                       ; $6ef4: $40
    inc b                                         ; $6ef5: $04
    nop                                           ; $6ef6: $00
    add [hl]                                      ; $6ef7: $86
    ld b, b                                       ; $6ef8: $40
    ret nz                                        ; $6ef9: $c0

    ldh a, [$30]                                  ; $6efa: $f0 $30
    ld [$02f8], sp                                ; $6efc: $08 $f8 $02

Call_0f2_6eff:
    ldh a, [rTMA]                                 ; $6eff: $f0 $06
    nop                                           ; $6f01: $00
    add d                                         ; $6f02: $82
    rst $28                                       ; $6f03: $ef
    sbc a                                         ; $6f04: $9f
    ld [bc], a                                    ; $6f05: $02
    ld [hl], c                                    ; $6f06: $71
    ld [bc], a                                    ; $6f07: $02
    ld bc, $0384                                  ; $6f08: $01 $84 $03
    ld [bc], a                                    ; $6f0b: $02
    inc b                                         ; $6f0c: $04
    rlca                                          ; $6f0d: $07
    ld [bc], a                                    ; $6f0e: $02
    inc bc                                        ; $6f0f: $03
    ld [de], a                                    ; $6f10: $12
    nop                                           ; $6f11: $00
    adc d                                         ; $6f12: $8a
    ld a, $5f                                     ; $6f13: $3e $5f

jr_0f2_6f15:
    sub h                                         ; $6f15: $94
    db $eb                                        ; $6f16: $eb
    ld h, e                                       ; $6f17: $63
    sbc a                                         ; $6f18: $9f
    add h                                         ; $6f19: $84
    ld a, h                                       ; $6f1a: $7c
    jr c, jr_0f2_6f15                             ; $6f1b: $38 $f8

    ld [bc], a                                    ; $6f1d: $02
    ret nz                                        ; $6f1e: $c0

    ld [de], a                                    ; $6f1f: $12
    nop                                           ; $6f20: $00
    adc [hl]                                      ; $6f21: $8e
    ld [$347f], sp                                ; $6f22: $08 $7f $34
    rst $08                                       ; $6f25: $cf
    ld e, a                                       ; $6f26: $5f
    and a                                         ; $6f27: $a7
    ld a, [bc]                                    ; $6f28: $0a
    or $c6                                        ; $6f29: $f6 $c6
    ld a, [$3d33]                                 ; $6f2b: $fa $33 $3d
    inc c                                         ; $6f2e: $0c
    rrca                                          ; $6f2f: $0f
    ld [bc], a                                    ; $6f30: $02
    inc bc                                        ; $6f31: $03
    ld c, $00                                     ; $6f32: $0e $00
    ld [bc], a                                    ; $6f34: $02
    jr nz, jr_0f2_6ebf                            ; $6f35: $20 $88

    ld d, b                                       ; $6f37: $50
    jr nc, jr_0f2_6f56                            ; $6f38: $30 $1c

    ld l, h                                       ; $6f3a: $6c
    ld c, d                                       ; $6f3b: $4a
    halt                                          ; $6f3c: $76
    ld hl, $023f                                  ; $6f3d: $21 $3f $02
    ld e, $02                                     ; $6f40: $1e $02
    nop                                           ; $6f42: $00
    ld [bc], a                                    ; $6f43: $02
    ld b, b                                       ; $6f44: $40
    stop                                          ; $6f45: $10 $00
    rst $38                                       ; $6f47: $ff
    dec d                                         ; $6f48: $15
    ld [$0ff3], sp                                ; $6f49: $08 $f3 $0f
    add sp, -$01                                  ; $6f4c: $e8 $ff
    db $e3                                        ; $6f4e: $e3
    ld hl, sp-$1d                                 ; $6f4f: $f8 $e3
    nop                                           ; $6f51: $00
    jp hl                                         ; $6f52: $e9


    ld [$0cee], sp                                ; $6f53: $08 $ee $0c

jr_0f2_6f56:
    di                                            ; $6f56: $f3
    ld a, [c]                                     ; $6f57: $f2
    di                                            ; $6f58: $f3
    ld a, [$02f3]                                 ; $6f59: $fa $f3 $02
    di                                            ; $6f5c: $f3
    inc b                                         ; $6f5d: $04
    ld [bc], a                                    ; $6f5e: $02
    rra                                           ; $6f5f: $1f
    ld [bc], a                                    ; $6f60: $02
    ld [hl], b                                    ; $6f61: $70
    ld [bc], a                                    ; $6f62: $02
    ld h, b                                       ; $6f63: $60
    inc b                                         ; $6f64: $04
    ret nz                                        ; $6f65: $c0

    ld b, $80                                     ; $6f66: $06 $80
    ld [bc], a                                    ; $6f68: $02
    ret nz                                        ; $6f69: $c0

    ld [bc], a                                    ; $6f6a: $02
    rst $00                                       ; $6f6b: $c7
    adc h                                         ; $6f6c: $8c
    ld h, h                                       ; $6f6d: $64
    ld h, a                                       ; $6f6e: $67
    ld a, e                                       ; $6f6f: $7b
    ld a, h                                       ; $6f70: $7c
    dec [hl]                                      ; $6f71: $35
    ld a, [hl-]                                   ; $6f72: $3a
    ld l, $31                                     ; $6f73: $2e $31
    dec h                                         ; $6f75: $25
    dec sp                                        ; $6f76: $3b
    ld l, c                                       ; $6f77: $69
    ld [hl], a                                    ; $6f78: $77
    ld [bc], a                                    ; $6f79: $02
    ldh [rSC], a                                  ; $6f7a: $e0 $02
    ld [hl], b                                    ; $6f7c: $70
    ld [bc], a                                    ; $6f7d: $02
    jr @+$04                                      ; $6f7e: $18 $02

    ld [$0e02], sp                                ; $6f80: $08 $02 $0e
    add [hl]                                      ; $6f83: $86
    add hl, bc                                    ; $6f84: $09
    rrca                                          ; $6f85: $0f
    dec b                                         ; $6f86: $05
    ld b, $07                                     ; $6f87: $06 $07
    inc b                                         ; $6f89: $04
    ld [bc], a                                    ; $6f8a: $02
    jp Jump_000_2184                              ; $6f8b: $c3 $84 $21


    pop hl                                        ; $6f8e: $e1
    or e                                          ; $6f8f: $b3
    ld [hl], d                                    ; $6f90: $72
    ld [bc], a                                    ; $6f91: $02
    di                                            ; $6f92: $f3
    add h                                         ; $6f93: $84
    ld h, c                                       ; $6f94: $61
    pop hl                                        ; $6f95: $e1
    jp nz, $02c3                                  ; $6f96: $c2 $c3 $02

    rst $20                                       ; $6f99: $e7
    add d                                         ; $6f9a: $82
    db $e4                                        ; $6f9b: $e4
    rst $20                                       ; $6f9c: $e7
    inc b                                         ; $6f9d: $04
    add b                                         ; $6f9e: $80
    ld [bc], a                                    ; $6f9f: $02
    nop                                           ; $6fa0: $00
    ld [bc], a                                    ; $6fa1: $02
    add b                                         ; $6fa2: $80
    add d                                         ; $6fa3: $82
    ret nz                                        ; $6fa4: $c0

    ld b, b                                       ; $6fa5: $40
    ld [bc], a                                    ; $6fa6: $02
    pop af                                        ; $6fa7: $f1
    sub h                                         ; $6fa8: $94
    ld e, e                                       ; $6fa9: $5b
    db $db                                        ; $6faa: $db
    ld c, [hl]                                    ; $6fab: $4e
    adc $20                                       ; $6fac: $ce $20
    ldh [$ae], a                                  ; $6fae: $e0 $ae
    ld l, [hl]                                    ; $6fb0: $6e
    cp e                                          ; $6fb1: $bb
    ld a, e                                       ; $6fb2: $7b
    jr c, @-$06                                   ; $6fb3: $38 $f8

    rst $18                                       ; $6fb5: $df
    ld h, a                                       ; $6fb6: $67
    ld b, h                                       ; $6fb7: $44
    ei                                            ; $6fb8: $fb
    cp a                                          ; $6fb9: $bf
    rst $38                                       ; $6fba: $ff
    sub b                                         ; $6fbb: $90
    ldh a, [rSC]                                  ; $6fbc: $f0 $02
    ld c, $02                                     ; $6fbe: $0e $02
    dec bc                                        ; $6fc0: $0b
    inc b                                         ; $6fc1: $04
    ld bc, $0702                                  ; $6fc2: $01 $02 $07
    ld [bc], a                                    ; $6fc5: $02
    ld c, $04                                     ; $6fc6: $0e $04
    nop                                           ; $6fc8: $00
    ld [bc], a                                    ; $6fc9: $02
    ld [$0004], sp                                ; $6fca: $08 $04 $00
    ld [bc], a                                    ; $6fcd: $02
    ret nz                                        ; $6fce: $c0

    add [hl]                                      ; $6fcf: $86
    and b                                         ; $6fd0: $a0
    ld h, b                                       ; $6fd1: $60
    ld d, b                                       ; $6fd2: $50
    or b                                          ; $6fd3: $b0
    adc b                                         ; $6fd4: $88
    ld hl, sp+$02                                 ; $6fd5: $f8 $02
    ld [hl], b                                    ; $6fd7: $70
    ld [bc], a                                    ; $6fd8: $02
    inc bc                                        ; $6fd9: $03
    ld [bc], a                                    ; $6fda: $02
    rlca                                          ; $6fdb: $07
    adc [hl]                                      ; $6fdc: $8e
    scf                                           ; $6fdd: $37
    add hl, sp                                    ; $6fde: $39
    ld c, e                                       ; $6fdf: $4b
    ld [hl], a                                    ; $6fe0: $77
    inc a                                         ; $6fe1: $3c
    ccf                                           ; $6fe2: $3f
    dec bc                                        ; $6fe3: $0b
    inc c                                         ; $6fe4: $0c
    dec [hl]                                      ; $6fe5: $35
    ld a, [hl-]                                   ; $6fe6: $3a
    ld d, b                                       ; $6fe7: $50
    ld l, a                                       ; $6fe8: $6f
    rst $28                                       ; $6fe9: $ef
    sbc a                                         ; $6fea: $9f
    ld [bc], a                                    ; $6feb: $02
    ld [hl], c                                    ; $6fec: $71
    ld [bc], a                                    ; $6fed: $02
    ld bc, $0384                                  ; $6fee: $01 $84 $03
    ld [bc], a                                    ; $6ff1: $02
    inc b                                         ; $6ff2: $04
    rlca                                          ; $6ff3: $07
    ld [bc], a                                    ; $6ff4: $02
    inc bc                                        ; $6ff5: $03
    inc b                                         ; $6ff6: $04
    nop                                           ; $6ff7: $00
    sbc b                                         ; $6ff8: $98
    ld de, $2bef                                  ; $6ff9: $11 $ef $2b
    rst $10                                       ; $6ffc: $d7
    or e                                          ; $6ffd: $b3
    rst $08                                       ; $6ffe: $cf
    sbc e                                         ; $6fff: $9b
    rst $20                                       ; $7000: $e7
    ld d, a                                       ; $7001: $57
    db $eb                                        ; $7002: $eb
    db $e3                                        ; $7003: $e3
    ld a, l                                       ; $7004: $7d
    ld a, b                                       ; $7005: $78
    rst $38                                       ; $7006: $ff
    adc a                                         ; $7007: $8f
    rst $38                                       ; $7008: $ff

jr_0f2_7009:
    call nc, Call_0f2_63ab                        ; $7009: $d4 $ab $63
    sbc a                                         ; $700c: $9f
    and h                                         ; $700d: $a4
    ld e, h                                       ; $700e: $5c
    jr c, jr_0f2_7009                             ; $700f: $38 $f8

    ld [bc], a                                    ; $7011: $02
    ret nz                                        ; $7012: $c0

    ld b, $00                                     ; $7013: $06 $00
    sbc d                                         ; $7015: $9a
    inc h                                         ; $7016: $24
    jr c, jr_0f2_708d                             ; $7017: $38 $74

    ld a, b                                       ; $7019: $78
    ret z                                         ; $701a: $c8

    db $f4                                        ; $701b: $f4
    sub h                                         ; $701c: $94
    add sp, -$48                                  ; $701d: $e8 $b8
    call nz, $dc24                                ; $701f: $c4 $24 $dc
    add hl, de                                    ; $7022: $19
    cp $e0                                        ; $7023: $fe $e0
    rst $38                                       ; $7025: $ff
    ld b, a                                       ; $7026: $47
    cp a                                          ; $7027: $bf
    ld a, [de]                                    ; $7028: $1a
    and $c6                                       ; $7029: $e6 $c6
    ld a, [$3d33]                                 ; $702b: $fa $33 $3d
    inc c                                         ; $702e: $0c
    rrca                                          ; $702f: $0f
    ld [bc], a                                    ; $7030: $02
    inc bc                                        ; $7031: $03
    stop                                          ; $7032: $10 $00
    add c                                         ; $7034: $81
    ld [bc], a                                    ; $7035: $02
    ld [bc], a                                    ; $7036: $02
    ld bc, $0202                                  ; $7037: $01 $02 $02
    add c                                         ; $703a: $81
    inc bc                                        ; $703b: $03
    ld [bc], a                                    ; $703c: $02
    ld bc, $0004                                  ; $703d: $01 $04 $00
    ld [bc], a                                    ; $7040: $02
    ld [bc], a                                    ; $7041: $02
    ld b, $00                                     ; $7042: $06 $00
    rst $38                                       ; $7044: $ff
    dec d                                         ; $7045: $15
    ld [$0ff3], sp                                ; $7046: $08 $f3 $0f
    add sp, -$01                                  ; $7049: $e8 $ff
    db $e4                                        ; $704b: $e4
    or $e4                                        ; $704c: $f6 $e4
    cp $e8                                        ; $704e: $fe $e8
    ld b, $ec                                     ; $7050: $06 $ec
    add hl, bc                                    ; $7052: $09
    db $f4                                        ; $7053: $f4
    ld a, [c]                                     ; $7054: $f2
    db $f4                                        ; $7055: $f4
    ld a, [$02f4]                                 ; $7056: $fa $f4 $02
    db $f4                                        ; $7059: $f4
    add hl, bc                                    ; $705a: $09
    ld [bc], a                                    ; $705b: $02
    rrca                                          ; $705c: $0f
    ld [bc], a                                    ; $705d: $02
    jr jr_0f2_7062                                ; $705e: $18 $02

    jr nc, jr_0f2_7064                            ; $7060: $30 $02

jr_0f2_7062:
    ld h, b                                       ; $7062: $60
    ld [bc], a                                    ; $7063: $02

jr_0f2_7064:
    ld b, b                                       ; $7064: $40
    ld [bc], a                                    ; $7065: $02
    ret nz                                        ; $7066: $c0

    inc b                                         ; $7067: $04
    add b                                         ; $7068: $80
    inc b                                         ; $7069: $04
    ret nz                                        ; $706a: $c0

    inc b                                         ; $706b: $04
    ld b, b                                       ; $706c: $40
    ld [bc], a                                    ; $706d: $02
    ld l, a                                       ; $706e: $6f
    ld [bc], a                                    ; $706f: $02
    ld a, c                                       ; $7070: $79
    ld [bc], a                                    ; $7071: $02
    nop                                           ; $7072: $00
    ld [bc], a                                    ; $7073: $02
    inc bc                                        ; $7074: $03
    ld [bc], a                                    ; $7075: $02
    add b                                         ; $7076: $80
    inc b                                         ; $7077: $04
    ret nz                                        ; $7078: $c0

    inc b                                         ; $7079: $04
    ld b, b                                       ; $707a: $40
    ld [bc], a                                    ; $707b: $02
    ld h, e                                       ; $707c: $63
    sub h                                         ; $707d: $94
    sub [hl]                                      ; $707e: $96
    rst $30                                       ; $707f: $f7
    cp c                                          ; $7080: $b9
    sbc $f9                                       ; $7081: $de $f9
    sbc [hl]                                      ; $7083: $9e
    ld [hl], d                                    ; $7084: $72
    ld a, l                                       ; $7085: $7d
    dec hl                                        ; $7086: $2b
    inc [hl]                                      ; $7087: $34
    ld b, [hl]                                    ; $7088: $46
    ld a, c                                       ; $7089: $79
    push bc                                       ; $708a: $c5
    ei                                            ; $708b: $fb
    ret                                           ; $708c: $c9


jr_0f2_708d:
    rst $30                                       ; $708d: $f7
    db $e4                                        ; $708e: $e4
    ei                                            ; $708f: $fb
    xor e                                         ; $7090: $ab
    rst $30                                       ; $7091: $f7
    ld [bc], a                                    ; $7092: $02
    ldh [$81], a                                  ; $7093: $e0 $81
    ld d, b                                       ; $7095: $50
    ld [bc], a                                    ; $7096: $02
    or b                                          ; $7097: $b0
    sbc e                                         ; $7098: $9b
    ld [hl], b                                    ; $7099: $70
    ld l, b                                       ; $709a: $68
    ld hl, sp-$5b                                 ; $709b: $f8 $a5
    ld a, l                                       ; $709d: $7d
    rst $28                                       ; $709e: $ef
    ld [hl], a                                    ; $709f: $77
    ld d, [hl]                                    ; $70a0: $56
    xor $ce                                       ; $70a1: $ee $ce
    or $94                                        ; $70a3: $f6 $94
    db $ec                                        ; $70a5: $ec
    inc [hl]                                      ; $70a6: $34
    call z, $ac54                                 ; $70a7: $cc $54 $ac
    ld l, c                                       ; $70aa: $69
    sbc c                                         ; $70ab: $99
    sbc e                                         ; $70ac: $9b
    ld a, a                                       ; $70ad: $7f
    ld h, a                                       ; $70ae: $67
    ld sp, hl                                     ; $70af: $f9
    db $d3                                        ; $70b0: $d3
    rst $38                                       ; $70b1: $ff
    inc l                                         ; $70b2: $2c
    rst $18                                       ; $70b3: $df
    ld [bc], a                                    ; $70b4: $02
    ld b, $02                                     ; $70b5: $06 $02
    inc bc                                        ; $70b7: $03
    ld b, $01                                     ; $70b8: $06 $01
    inc b                                         ; $70ba: $04
    inc bc                                        ; $70bb: $03
    ld [bc], a                                    ; $70bc: $02
    ld b, $02                                     ; $70bd: $06 $02
    inc b                                         ; $70bf: $04
    inc bc                                        ; $70c0: $03
    nop                                           ; $70c1: $00
    add c                                         ; $70c2: $81
    inc b                                         ; $70c3: $04
    ld [bc], a                                    ; $70c4: $02
    ld b, $88                                     ; $70c5: $06 $88
    xor h                                         ; $70c7: $ac
    ld [hl], h                                    ; $70c8: $74
    ld a, h                                       ; $70c9: $7c
    and h                                         ; $70ca: $a4
    inc e                                         ; $70cb: $1c
    db $fc                                        ; $70cc: $fc
    jp z, Jump_000_02f6                           ; $70cd: $ca $f6 $02

    inc bc                                        ; $70d0: $03
    adc [hl]                                      ; $70d1: $8e
    inc a                                         ; $70d2: $3c
    ccf                                           ; $70d3: $3f
    ld c, e                                       ; $70d4: $4b
    ld [hl], a                                    ; $70d5: $77
    inc a                                         ; $70d6: $3c
    ccf                                           ; $70d7: $3f
    dec bc                                        ; $70d8: $0b
    inc c                                         ; $70d9: $0c
    dec [hl]                                      ; $70da: $35
    ld a, [hl-]                                   ; $70db: $3a
    ld d, b                                       ; $70dc: $50
    ld l, a                                       ; $70dd: $6f
    rst $28                                       ; $70de: $ef
    sbc a                                         ; $70df: $9f
    ld [bc], a                                    ; $70e0: $02
    ld [hl], c                                    ; $70e1: $71
    ld [bc], a                                    ; $70e2: $02
    ld bc, $0384                                  ; $70e3: $01 $84 $03
    ld [bc], a                                    ; $70e6: $02
    inc b                                         ; $70e7: $04
    rlca                                          ; $70e8: $07
    ld [bc], a                                    ; $70e9: $02
    inc bc                                        ; $70ea: $03
    ld b, $00                                     ; $70eb: $06 $00
    sub [hl]                                      ; $70ed: $96
    call $b1ff                                    ; $70ee: $cd $ff $b1
    ld a, a                                       ; $70f1: $7f
    sub $ef                                       ; $70f2: $d6 $ef
    ld l, c                                       ; $70f4: $69
    sbc [hl]                                      ; $70f5: $9e
    sub a                                         ; $70f6: $97
    ld a, b                                       ; $70f7: $78
    ld l, h                                       ; $70f8: $6c
    di                                            ; $70f9: $f3
    cp b                                          ; $70fa: $b8

jr_0f2_70fb:
    rst $00                                       ; $70fb: $c7

jr_0f2_70fc:
    call nc, Call_0f2_63ab                        ; $70fc: $d4 $ab $63

Call_0f2_70ff:
    sbc a                                         ; $70ff: $9f
    and h                                         ; $7100: $a4
    ld e, h                                       ; $7101: $5c
    jr c, jr_0f2_70fc                             ; $7102: $38 $f8

    ld [bc], a                                    ; $7104: $02
    ret nz                                        ; $7105: $c0

    ld [$9800], sp                                ; $7106: $08 $00 $98
    jr nz, jr_0f2_70fb                            ; $7109: $20 $f0

    nop                                           ; $710b: $00
    ldh a, [$c0]                                  ; $710c: $f0 $c0
    ldh a, [$30]                                  ; $710e: $f0 $30
    ldh a, [$d2]                                  ; $7110: $f0 $d2
    inc a                                         ; $7112: $3c
    ld l, b                                       ; $7113: $68
    sbc [hl]                                      ; $7114: $9e
    inc [hl]                                      ; $7115: $34
    adc $5e                                       ; $7116: $ce $5e
    and [hl]                                      ; $7118: $a6
    ld a, [bc]                                    ; $7119: $0a
    or $c6                                        ; $711a: $f6 $c6
    ld a, [$3d33]                                 ; $711c: $fa $33 $3d
    inc c                                         ; $711f: $0c
    rrca                                          ; $7120: $0f
    ld [bc], a                                    ; $7121: $02
    inc bc                                        ; $7122: $03
    ld d, $00                                     ; $7123: $16 $00
    add d                                         ; $7125: $82
    ld sp, $023f                                  ; $7126: $31 $3f $02
    ld c, $02                                     ; $7129: $0e $02
    nop                                           ; $712b: $00
    ld [bc], a                                    ; $712c: $02
    ld b, b                                       ; $712d: $40
    ld [$ff00], sp                                ; $712e: $08 $00 $ff
    dec d                                         ; $7131: $15
    ld [$0ff3], sp                                ; $7132: $08 $f3 $0f
    add sp, -$01                                  ; $7135: $e8 $ff
    ld [$eaf3], a                                 ; $7137: $ea $f3 $ea
    ei                                            ; $713a: $fb

jr_0f2_713b:
    ld [$ee03], a                                 ; $713b: $ea $03 $ee
    add hl, bc                                    ; $713e: $09
    ld a, [$faf2]                                 ; $713f: $fa $f2 $fa
    ld a, [$02fa]                                 ; $7142: $fa $fa $02
    ld a, [$0203]                                 ; $7145: $fa $03 $02

jr_0f2_7148:
    inc bc                                        ; $7148: $03
    ld [bc], a                                    ; $7149: $02
    ld b, $02                                     ; $714a: $06 $02
    inc e                                         ; $714c: $1c
    add [hl]                                      ; $714d: $86
    ld a, [hl+]                                   ; $714e: $2a
    ld a, $72                                     ; $714f: $3e $72
    ld d, [hl]                                    ; $7151: $56
    halt                                          ; $7152: $76
    ld d, d                                       ; $7153: $52
    ld [bc], a                                    ; $7154: $02
    inc h                                         ; $7155: $24
    ld b, $00                                     ; $7156: $06 $00
    ld [bc], a                                    ; $7158: $02
    rrca                                          ; $7159: $0f
    adc d                                         ; $715a: $8a
    ld l, l                                       ; $715b: $6d
    ld [hl], d                                    ; $715c: $72
    sub a                                         ; $715d: $97
    rst $28                                       ; $715e: $ef
    ld a, b                                       ; $715f: $78
    ld a, a                                       ; $7160: $7f
    rla                                           ; $7161: $17
    jr jr_0f2_71ce                                ; $7162: $18 $6a

    ld [hl], l                                    ; $7164: $75
    ld [bc], a                                    ; $7165: $02
    add b                                         ; $7166: $80
    ld [bc], a                                    ; $7167: $02
    pop bc                                        ; $7168: $c1
    sbc h                                         ; $7169: $9c
    ld h, d                                       ; $716a: $62
    ld h, e                                       ; $716b: $63
    ld h, h                                       ; $716c: $64
    ld h, a                                       ; $716d: $67
    dec hl                                        ; $716e: $2b
    inc l                                         ; $716f: $2c
    ld l, c                                       ; $7170: $69
    ld l, [hl]                                    ; $7171: $6e
    ld d, d                                       ; $7172: $52
    ld e, l                                       ; $7173: $5d
    ld [hl], h                                    ; $7174: $74
    ld a, e                                       ; $7175: $7b
    ld l, $31                                     ; $7176: $2e $31
    ld h, l                                       ; $7178: $65
    ld a, e                                       ; $7179: $7b
    xor e                                         ; $717a: $ab
    push af                                       ; $717b: $f5
    ld h, h                                       ; $717c: $64
    ei                                            ; $717d: $fb
    sub e                                         ; $717e: $93
    db $fd                                        ; $717f: $fd
    ldh a, [$3f]                                  ; $7180: $f0 $3f
    ld c, h                                       ; $7182: $4c
    rst $38                                       ; $7183: $ff
    sbc e                                         ; $7184: $9b
    rst $20                                       ; $7185: $e7
    ld [bc], a                                    ; $7186: $02
    ld h, b                                       ; $7187: $60
    sbc [hl]                                      ; $7188: $9e
    sub b                                         ; $7189: $90
    ldh a, [$bc]                                  ; $718a: $f0 $bc
    ld a, h                                       ; $718c: $7c
    ld [hl], h                                    ; $718d: $74
    db $fc                                        ; $718e: $fc
    ld h, e                                       ; $718f: $63
    rst $38                                       ; $7190: $ff
    xor d                                         ; $7191: $aa
    halt                                          ; $7192: $76
    dec [hl]                                      ; $7193: $35
    ei                                            ; $7194: $fb
    jp hl                                         ; $7195: $e9


    rst $30                                       ; $7196: $f7
    db $ed                                        ; $7197: $ed
    di                                            ; $7198: $f3
    adc l                                         ; $7199: $8d
    di                                            ; $719a: $f3
    sub l                                         ; $719b: $95
    db $eb                                        ; $719c: $eb
    ld [$94d7], a                                 ; $719d: $ea $d7 $94

jr_0f2_71a0:
    rst $28                                       ; $71a0: $ef
    dec h                                         ; $71a1: $25
    rst $18                                       ; $71a2: $df
    ld a, [de]                                    ; $71a3: $1a
    db $fd                                        ; $71a4: $fd
    di                                            ; $71a5: $f3
    db $fc                                        ; $71a6: $fc
    ld [bc], a                                    ; $71a7: $02
    jr nz, jr_0f2_71ac                            ; $71a8: $20 $02

    jr nc, jr_0f2_71ae                            ; $71aa: $30 $02

jr_0f2_71ac:
    db $10                                        ; $71ac: $10
    ld [bc], a                                    ; $71ad: $02

jr_0f2_71ae:
    jr nc, @-$7a                                  ; $71ae: $30 $84

    jr c, jr_0f2_71ba                             ; $71b0: $38 $08

    jr jr_0f2_71dc                                ; $71b2: $18 $28

    ld [bc], a                                    ; $71b4: $02
    jr nc, jr_0f2_713b                            ; $71b5: $30 $84

    ld a, $0e                                     ; $71b7: $3e $0e
    add hl, bc                                    ; $71b9: $09

jr_0f2_71ba:
    scf                                           ; $71ba: $37
    ld [bc], a                                    ; $71bb: $02
    ld a, $02                                     ; $71bc: $3e $02
    jr nz, jr_0f2_7148                            ; $71be: $20 $88

    jr jr_0f2_71fa                                ; $71c0: $18 $38

    inc d                                         ; $71c2: $14
    db $ec                                        ; $71c3: $ec
    jp z, $31f6                                   ; $71c4: $ca $f6 $31

    ccf                                           ; $71c7: $3f
    ld [bc], a                                    ; $71c8: $02
    ld c, $84                                     ; $71c9: $0e $84
    ld d, b                                       ; $71cb: $50
    ld l, a                                       ; $71cc: $6f
    rst $28                                       ; $71cd: $ef

jr_0f2_71ce:
    sbc a                                         ; $71ce: $9f
    ld [bc], a                                    ; $71cf: $02
    ld [hl], c                                    ; $71d0: $71
    ld [bc], a                                    ; $71d1: $02
    ld bc, $0384                                  ; $71d2: $01 $84 $03
    ld [bc], a                                    ; $71d5: $02
    inc b                                         ; $71d6: $04
    rlca                                          ; $71d7: $07
    ld [bc], a                                    ; $71d8: $02
    inc bc                                        ; $71d9: $03
    ld [de], a                                    ; $71da: $12
    nop                                           ; $71db: $00

jr_0f2_71dc:
    adc d                                         ; $71dc: $8a
    cp b                                          ; $71dd: $b8
    rst $00                                       ; $71de: $c7

jr_0f2_71df:
    call nc, Call_0f2_63ab                        ; $71df: $d4 $ab $63
    sbc a                                         ; $71e2: $9f
    and h                                         ; $71e3: $a4
    ld e, h                                       ; $71e4: $5c
    jr c, jr_0f2_71df                             ; $71e5: $38 $f8

    ld [bc], a                                    ; $71e7: $02
    ret nz                                        ; $71e8: $c0

    inc d                                         ; $71e9: $14
    nop                                           ; $71ea: $00
    adc h                                         ; $71eb: $8c
    inc d                                         ; $71ec: $14
    xor $7e                                       ; $71ed: $ee $7e
    add [hl]                                      ; $71ef: $86
    ld a, [bc]                                    ; $71f0: $0a
    or $c6                                        ; $71f1: $f6 $c6
    ld a, [$3d33]                                 ; $71f3: $fa $33 $3d
    inc c                                         ; $71f6: $0c
    rrca                                          ; $71f7: $0f
    ld [bc], a                                    ; $71f8: $02
    inc bc                                        ; $71f9: $03

jr_0f2_71fa:
    inc e                                         ; $71fa: $1c
    nop                                           ; $71fb: $00
    ld [bc], a                                    ; $71fc: $02
    ld bc, $0014                                  ; $71fd: $01 $14 $00
    rst $38                                       ; $7200: $ff
    dec d                                         ; $7201: $15
    ld [$0ff3], sp                                ; $7202: $08 $f3 $0f
    add sp, -$01                                  ; $7205: $e8 $ff
    jp hl                                         ; $7207: $e9


    pop af                                        ; $7208: $f1
    db $ec                                        ; $7209: $ec
    ld sp, hl                                     ; $720a: $f9
    db $eb                                        ; $720b: $eb
    ld bc, $09ea                                  ; $720c: $01 $ea $09
    ld sp, hl                                     ; $720f: $f9
    ld a, [c]                                     ; $7210: $f2
    ld sp, hl                                     ; $7211: $f9
    ld a, [$02f9]                                 ; $7212: $fa $f9 $02
    ld sp, hl                                     ; $7215: $f9
    add hl, bc                                    ; $7216: $09
    ld [bc], a                                    ; $7217: $02
    jr nc, jr_0f2_71a0                            ; $7218: $30 $86

    ret z                                         ; $721a: $c8

    ld hl, sp-$54                                 ; $721b: $f8 $ac
    or h                                          ; $721d: $b4
    cp h                                          ; $721e: $bc
    and h                                         ; $721f: $a4
    ld [bc], a                                    ; $7220: $02
    sbc b                                         ; $7221: $98
    ld [bc], a                                    ; $7222: $02
    jp $ce02                                      ; $7223: $c3 $02 $ce


    ld [bc], a                                    ; $7226: $02
    ld a, h                                       ; $7227: $7c
    ld b, $00                                     ; $7228: $06 $00
    ld [bc], a                                    ; $722a: $02
    inc bc                                        ; $722b: $03
    adc b                                         ; $722c: $88
    dec de                                        ; $722d: $1b
    inc e                                         ; $722e: $1c
    dec h                                         ; $722f: $25
    dec sp                                        ; $7230: $3b
    ld e, $1f                                     ; $7231: $1e $1f
    dec b                                         ; $7233: $05
    ld b, $02                                     ; $7234: $06 $02
    ld bc, $039e                                  ; $7236: $01 $9e $03
    ld [bc], a                                    ; $7239: $02
    adc l                                         ; $723a: $8d
    adc [hl]                                      ; $723b: $8e
    ret z                                         ; $723c: $c8

    rst $08                                       ; $723d: $cf
    ld d, l                                       ; $723e: $55
    ld e, d                                       ; $723f: $5a
    ld [hl], d                                    ; $7240: $72
    ld a, l                                       ; $7241: $7d
    ld h, a                                       ; $7242: $67
    ld a, b                                       ; $7243: $78
    ld [hl+], a                                   ; $7244: $22
    dec a                                         ; $7245: $3d
    rst $30                                       ; $7246: $f7
    ld hl, sp+$12                                 ; $7247: $f8 $12
    db $fd                                        ; $7249: $fd
    jp hl                                         ; $724a: $e9


    cp $0c                                        ; $724b: $fe $0c
    rst $38                                       ; $724d: $ff
    db $d3                                        ; $724e: $d3
    ccf                                           ; $724f: $3f
    and [hl]                                      ; $7250: $a6
    ld a, c                                       ; $7251: $79
    ld e, l                                       ; $7252: $5d
    ld [c], a                                     ; $7253: $e2
    ld [$02d5], a                                 ; $7254: $ea $d5 $02
    call Call_0f2_739e                            ; $7257: $cd $9e $73
    rst $38                                       ; $725a: $ff
    add hl, hl                                    ; $725b: $29
    rst $30                                       ; $725c: $f7
    jp hl                                         ; $725d: $e9


    rst $30                                       ; $725e: $f7
    sbc h                                         ; $725f: $9c
    db $e3                                        ; $7260: $e3
    jp z, $edf5                                   ; $7261: $ca $f5 $ed

    ld a, [c]                                     ; $7264: $f2
    ld e, [hl]                                    ; $7265: $5e
    pop hl                                        ; $7266: $e1
    push bc                                       ; $7267: $c5
    ld a, [$f56a]                                 ; $7268: $fa $6a $f5
    ld h, h                                       ; $726b: $64
    ei                                            ; $726c: $fb
    ld l, c                                       ; $726d: $69
    rst $30                                       ; $726e: $f7
    ld h, e                                       ; $726f: $63
    rst $38                                       ; $7270: $ff
    ld a, $ff                                     ; $7271: $3e $ff
    db $fc                                        ; $7273: $fc
    rst $38                                       ; $7274: $ff
    ld [de], a                                    ; $7275: $12
    rst $28                                       ; $7276: $ef
    ld [bc], a                                    ; $7277: $02
    ldh [$84], a                                  ; $7278: $e0 $84
    ret nc                                        ; $727a: $d0

    jr nc, @-$62                                  ; $727b: $30 $9c

    ld a, h                                       ; $727d: $7c
    ld [bc], a                                    ; $727e: $02
    and $02                                       ; $727f: $e6 $02
    ld b, $02                                     ; $7281: $06 $02
    add d                                         ; $7283: $82
    ld [bc], a                                    ; $7284: $02
    adc [hl]                                      ; $7285: $8e
    add [hl]                                      ; $7286: $86
    ld e, h                                       ; $7287: $5c
    call c, $d050                                 ; $7288: $dc $50 $d0
    ld e, b                                       ; $728b: $58
    ret c                                         ; $728c: $d8

    ld [bc], a                                    ; $728d: $02
    ld hl, sp-$70                                 ; $728e: $f8 $90
    cp [hl]                                       ; $7290: $be
    cp $c9                                        ; $7291: $fe $c9
    rst $30                                       ; $7293: $f7
    ld a, [hl]                                    ; $7294: $7e
    cp $a0                                        ; $7295: $fe $a0
    ld h, b                                       ; $7297: $60
    ret c                                         ; $7298: $d8

    jr c, @+$36                                   ; $7299: $38 $34

    ld a, [hl-]                                   ; $729b: $3a
    ld d, b                                       ; $729c: $50
    ld l, [hl]                                    ; $729d: $6e
    xor $9e                                       ; $729e: $ee $9e
    ld [bc], a                                    ; $72a0: $02
    ld [hl], c                                    ; $72a1: $71
    ld [bc], a                                    ; $72a2: $02
    ld bc, $0384                                  ; $72a3: $01 $84 $03
    ld [bc], a                                    ; $72a6: $02
    inc b                                         ; $72a7: $04
    rlca                                          ; $72a8: $07
    ld [bc], a                                    ; $72a9: $02
    inc bc                                        ; $72aa: $03
    dec d                                         ; $72ab: $15
    nop                                           ; $72ac: $00

jr_0f2_72ad:
    add a                                         ; $72ad: $87
    ld bc, $9f63                                  ; $72ae: $01 $63 $9f
    and h                                         ; $72b1: $a4
    ld e, h                                       ; $72b2: $5c
    jr c, jr_0f2_72ad                             ; $72b3: $38 $f8

    ld [bc], a                                    ; $72b5: $02
    ret nz                                        ; $72b6: $c0

    dec d                                         ; $72b7: $15
    nop                                           ; $72b8: $00
    adc e                                         ; $72b9: $8b
    ld bc, $877f                                  ; $72ba: $01 $7f $87
    ld a, [hl+]                                   ; $72bd: $2a
    sub $c6                                       ; $72be: $d6 $c6
    ld a, [$3d33]                                 ; $72c0: $fa $33 $3d
    inc c                                         ; $72c3: $0c
    rrca                                          ; $72c4: $0f
    ld [bc], a                                    ; $72c5: $02
    inc bc                                        ; $72c6: $03
    ld [de], a                                    ; $72c7: $12
    nop                                           ; $72c8: $00
    add [hl]                                      ; $72c9: $86
    inc d                                         ; $72ca: $14
    ld l, h                                       ; $72cb: $6c
    ld c, d                                       ; $72cc: $4a
    halt                                          ; $72cd: $76
    ld sp, $023f                                  ; $72ce: $31 $3f $02
    ld c, $02                                     ; $72d1: $0e $02
    nop                                           ; $72d3: $00
    ld [bc], a                                    ; $72d4: $02
    ld b, b                                       ; $72d5: $40
    ld [de], a                                    ; $72d6: $12
    nop                                           ; $72d7: $00
    rst $38                                       ; $72d8: $ff
    ld de, $f306                                  ; $72d9: $11 $06 $f3
    rrca                                          ; $72dc: $0f
    add sp, -$01                                  ; $72dd: $e8 $ff
    and $f9                                       ; $72df: $e6 $f9
    db $e3                                        ; $72e1: $e3
    ld bc, $f2f3                                  ; $72e2: $01 $f3 $f2
    di                                            ; $72e5: $f3
    ld a, [$02f3]                                 ; $72e6: $fa $f3 $02
    di                                            ; $72e9: $f3
    add hl, bc                                    ; $72ea: $09
    ld [bc], a                                    ; $72eb: $02
    ld l, h                                       ; $72ec: $6c
    add [hl]                                      ; $72ed: $86
    ld d, d                                       ; $72ee: $52
    ld e, [hl]                                    ; $72ef: $5e
    sub $da                                       ; $72f0: $d6 $da
    sbc [hl]                                      ; $72f2: $9e
    sub d                                         ; $72f3: $92
    ld [bc], a                                    ; $72f4: $02
    call z, $6002                                 ; $72f5: $cc $02 $60
    ld [bc], a                                    ; $72f8: $02
    jr nz, jr_0f2_72fd                            ; $72f9: $20 $02

    ld h, b                                       ; $72fb: $60
    ld [bc], a                                    ; $72fc: $02

jr_0f2_72fd:
    ldh [rDIV], a                                 ; $72fd: $e0 $04
    add b                                         ; $72ff: $80
    ld [bc], a                                    ; $7300: $02
    add $88                                       ; $7301: $c6 $88
    ei                                            ; $7303: $fb
    rst $38                                       ; $7304: $ff
    ld l, [hl]                                    ; $7305: $6e
    ld a, a                                       ; $7306: $7f
    ld e, b                                       ; $7307: $58
    ld l, a                                       ; $7308: $6f
    xor l                                         ; $7309: $ad
    sbc $02                                       ; $730a: $de $02
    ld a, [bc]                                    ; $730c: $0a
    add [hl]                                      ; $730d: $86
    rla                                           ; $730e: $17
    dec e                                         ; $730f: $1d
    rla                                           ; $7310: $17
    dec e                                         ; $7311: $1d
    ld d, $1a                                     ; $7312: $16 $1a
    ld [bc], a                                    ; $7314: $02
    inc c                                         ; $7315: $0c
    ld [bc], a                                    ; $7316: $02
    ld b, $02                                     ; $7317: $06 $02
    ld [bc], a                                    ; $7319: $02
    ld [bc], a                                    ; $731a: $02
    ld b, $02                                     ; $731b: $06 $02
    inc e                                         ; $731d: $1c
    ld [bc], a                                    ; $731e: $02
    db $10                                        ; $731f: $10
    ld [bc], a                                    ; $7320: $02
    jr jr_0f2_7325                                ; $7321: $18 $02

    ld c, $02                                     ; $7323: $0e $02

jr_0f2_7325:
    ld [bc], a                                    ; $7325: $02
    ld [bc], a                                    ; $7326: $02
    ld b, $02                                     ; $7327: $06 $02
    call z, $2882                                 ; $7329: $cc $82 $28
    add sp, $04                                   ; $732c: $e8 $04
    nop                                           ; $732e: $00
    ld [bc], a                                    ; $732f: $02
    ld c, $82                                     ; $7330: $0e $82
    dec l                                         ; $7332: $2d
    inc sp                                        ; $7333: $33
    ld [bc], a                                    ; $7334: $02
    ld a, a                                       ; $7335: $7f
    adc b                                         ; $7336: $88
    ld [$360f], sp                                ; $7337: $08 $0f $36
    add hl, sp                                    ; $733a: $39
    ld e, c                                       ; $733b: $59
    ld h, a                                       ; $733c: $67
    rst $20                                       ; $733d: $e7
    sbc a                                         ; $733e: $9f
    ld [bc], a                                    ; $733f: $02
    ld a, c                                       ; $7340: $79
    ld [bc], a                                    ; $7341: $02
    ld bc, $0384                                  ; $7342: $01 $84 $03
    ld [bc], a                                    ; $7345: $02
    inc b                                         ; $7346: $04
    rlca                                          ; $7347: $07
    ld [bc], a                                    ; $7348: $02
    inc bc                                        ; $7349: $03
    dec b                                         ; $734a: $05
    nop                                           ; $734b: $00
    ld [bc], a                                    ; $734c: $02
    ld bc, $0002                                  ; $734d: $01 $02 $00
    sub e                                         ; $7350: $93
    ld bc, $de3d                                  ; $7351: $01 $3d $de
    ld d, l                                       ; $7354: $55
    xor [hl]                                      ; $7355: $ae
    or [hl]                                       ; $7356: $b6
    rst $08                                       ; $7357: $cf
    jp z, $f1f7                                   ; $7358: $ca $f7 $f1

    rst $38                                       ; $735b: $ff
    rst $08                                       ; $735c: $cf
    rst $38                                       ; $735d: $ff
    dec sp                                        ; $735e: $3b
    rst $00                                       ; $735f: $c7
    call z, Call_000_303c                         ; $7360: $cc $3c $30
    ldh a, [rSC]                                  ; $7363: $f0 $02
    ret nz                                        ; $7365: $c0

    ld b, $00                                     ; $7366: $06 $00
    sbc d                                         ; $7368: $9a
    cp b                                          ; $7369: $b8
    ld a, b                                       ; $736a: $78
    ld hl, sp+$38                                 ; $736b: $f8 $38
    sbc a                                         ; $736d: $9f
    ld a, a                                       ; $736e: $7f
    jp c, Jump_0f2_4f3d                           ; $736f: $da $3d $4f

    cp a                                          ; $7372: $bf
    sub b                                         ; $7373: $90
    ld a, a                                       ; $7374: $7f
    scf                                           ; $7375: $37
    ld hl, sp-$38                                 ; $7376: $f8 $c8
    rst $38                                       ; $7378: $ff
    ccf                                           ; $7379: $3f
    rst $08                                       ; $737a: $cf
    inc e                                         ; $737b: $1c
    db $e4                                        ; $737c: $e4
    add $fa                                       ; $737d: $c6 $fa
    inc sp                                        ; $737f: $33
    dec a                                         ; $7380: $3d
    inc c                                         ; $7381: $0c
    rrca                                          ; $7382: $0f
    ld [bc], a                                    ; $7383: $02
    inc bc                                        ; $7384: $03
    ld [$0200], sp                                ; $7385: $08 $00 $02
    ld [hl], b                                    ; $7388: $70
    add d                                         ; $7389: $82
    ld l, b                                       ; $738a: $68
    jr jr_0f2_738f                                ; $738b: $18 $02

    ld a, h                                       ; $738d: $7c
    ld [bc], a                                    ; $738e: $02

jr_0f2_738f:
    ld b, b                                       ; $738f: $40
    adc b                                         ; $7390: $88
    jr c, jr_0f2_740b                             ; $7391: $38 $78

    inc [hl]                                      ; $7393: $34
    ld c, h                                       ; $7394: $4c
    ld c, d                                       ; $7395: $4a
    halt                                          ; $7396: $76
    ld sp, $023f                                  ; $7397: $31 $3f $02
    ld c, $02                                     ; $739a: $0e $02
    nop                                           ; $739c: $00
    ld [bc], a                                    ; $739d: $02

Call_0f2_739e:
    ld b, b                                       ; $739e: $40
    ld b, $00                                     ; $739f: $06 $00
    rst $38                                       ; $73a1: $ff
    inc de                                        ; $73a2: $13
    rlca                                          ; $73a3: $07
    di                                            ; $73a4: $f3
    rrca                                          ; $73a5: $0f
    add sp, -$01                                  ; $73a6: $e8 $ff
    ld [c], a                                     ; $73a8: $e2
    ld sp, hl                                     ; $73a9: $f9
    and $01                                       ; $73aa: $e6 $01
    push hl                                       ; $73ac: $e5
    inc b                                         ; $73ad: $04
    ld a, [c]                                     ; $73ae: $f2
    ld a, [c]                                     ; $73af: $f2
    ld a, [c]                                     ; $73b0: $f2
    ld a, [$02f2]                                 ; $73b1: $fa $f2 $02
    ld a, [c]                                     ; $73b4: $f2
    add hl, bc                                    ; $73b5: $09
    ld [bc], a                                    ; $73b6: $02
    ld d, b                                       ; $73b7: $50
    add [hl]                                      ; $73b8: $86
    cp b                                          ; $73b9: $b8
    add sp, -$48                                  ; $73ba: $e8 $b8
    add sp, -$50                                  ; $73bc: $e8 $b0
    ret nc                                        ; $73be: $d0

    ld [bc], a                                    ; $73bf: $02
    ld [hl], b                                    ; $73c0: $70
    ld [bc], a                                    ; $73c1: $02
    jr @+$04                                      ; $73c2: $18 $02

    ld [$1802], sp                                ; $73c4: $08 $02 $18
    ld [bc], a                                    ; $73c7: $02
    jr nc, jr_0f2_73ce                            ; $73c8: $30 $04

    ld h, b                                       ; $73ca: $60
    ld [bc], a                                    ; $73cb: $02
    jr nc, jr_0f2_73d0                            ; $73cc: $30 $02

jr_0f2_73ce:
    db $10                                        ; $73ce: $10
    ld [bc], a                                    ; $73cf: $02

jr_0f2_73d0:
    jr nc, jr_0f2_73d4                            ; $73d0: $30 $02

    ld h, b                                       ; $73d2: $60
    ld [bc], a                                    ; $73d3: $02

jr_0f2_73d4:
    ld l, l                                       ; $73d4: $6d
    inc b                                         ; $73d5: $04
    ld bc, $0c82                                  ; $73d6: $01 $82 $0c
    dec c                                         ; $73d9: $0d
    ld [bc], a                                    ; $73da: $02
    rra                                           ; $73db: $1f
    ld [bc], a                                    ; $73dc: $02
    jr @+$04                                      ; $73dd: $18 $02

    ld [$0c02], sp                                ; $73df: $08 $02 $0c
    ld [bc], a                                    ; $73e2: $02
    inc b                                         ; $73e3: $04
    ld [bc], a                                    ; $73e4: $02
    inc e                                         ; $73e5: $1c
    ld [bc], a                                    ; $73e6: $02
    jr nc, jr_0f2_73eb                            ; $73e7: $30 $02

    jr nz, jr_0f2_73ed                            ; $73e9: $20 $02

jr_0f2_73eb:
    or b                                          ; $73eb: $b0
    ld [bc], a                                    ; $73ec: $02

jr_0f2_73ed:
    sbc b                                         ; $73ed: $98
    add [hl]                                      ; $73ee: $86
    ld e, b                                       ; $73ef: $58
    ret c                                         ; $73f0: $d8

    cp b                                          ; $73f1: $b8
    ld a, b                                       ; $73f2: $78
    sub a                                         ; $73f3: $97
    ld [hl], a                                    ; $73f4: $77
    ld [bc], a                                    ; $73f5: $02
    ld b, $86                                     ; $73f6: $06 $86
    rlca                                          ; $73f8: $07
    ld bc, $0503                                  ; $73f9: $01 $03 $05
    ld b, $02                                     ; $73fc: $06 $02
    ld [bc], a                                    ; $73fe: $02
    inc b                                         ; $73ff: $04
    ld a, [de]                                    ; $7400: $1a
    nop                                           ; $7401: $00
    ld [bc], a                                    ; $7402: $02
    ld bc, $0e84                                  ; $7403: $01 $84 $0e
    rrca                                          ; $7406: $0f
    ld [hl+], a                                   ; $7407: $22
    ccf                                           ; $7408: $3f
    ld [bc], a                                    ; $7409: $02
    ld a, a                                       ; $740a: $7f

jr_0f2_740b:
    adc b                                         ; $740b: $88
    dec bc                                        ; $740c: $0b
    inc c                                         ; $740d: $0c
    ld [hl], $39                                  ; $740e: $36 $39
    ld e, c                                       ; $7410: $59
    ld h, a                                       ; $7411: $67
    rst $20                                       ; $7412: $e7
    sbc a                                         ; $7413: $9f
    ld [bc], a                                    ; $7414: $02
    ld a, c                                       ; $7415: $79
    ld [bc], a                                    ; $7416: $02
    ld bc, $0384                                  ; $7417: $01 $84 $03
    ld [bc], a                                    ; $741a: $02
    inc b                                         ; $741b: $04
    rlca                                          ; $741c: $07
    ld [bc], a                                    ; $741d: $02
    inc bc                                        ; $741e: $03
    ld [bc], a                                    ; $741f: $02
    nop                                           ; $7420: $00
    sub c                                         ; $7421: $91
    db $ec                                        ; $7422: $ec
    cp $98                                        ; $7423: $fe $98
    cp $72                                        ; $7425: $fe $72
    cp h                                          ; $7427: $bc
    or h                                          ; $7428: $b4
    ld a, d                                       ; $7429: $7a
    ld a, e                                       ; $742a: $7b
    cp h                                          ; $742b: $bc
    ld a, [hl+]                                   ; $742c: $2a

jr_0f2_742d:
    db $dd                                        ; $742d: $dd
    or [hl]                                       ; $742e: $b6
    rst $08                                       ; $742f: $cf
    call z, $f1f7                                 ; $7430: $cc $f7 $f1
    ld [bc], a                                    ; $7433: $02
    rst $38                                       ; $7434: $ff
    add a                                         ; $7435: $87
    rst $08                                       ; $7436: $cf
    ld l, e                                       ; $7437: $6b
    sub a                                         ; $7438: $97
    adc h                                         ; $7439: $8c
    ld a, h                                       ; $743a: $7c
    jr nc, jr_0f2_742d                            ; $743b: $30 $f0

    ld [bc], a                                    ; $743d: $02
    ret nz                                        ; $743e: $c0

    ld a, [bc]                                    ; $743f: $0a
    nop                                           ; $7440: $00
    ld [bc], a                                    ; $7441: $02
    ld bc, $b294                                  ; $7442: $01 $94 $b2
    ld a, l                                       ; $7445: $7d
    sub a                                         ; $7446: $97
    ld a, a                                       ; $7447: $7f
    sbc a                                         ; $7448: $9f
    ld a, b                                       ; $7449: $78
    ld sp, $c8fe                                  ; $744a: $31 $fe $c8
    rst $38                                       ; $744d: $ff
    ccf                                           ; $744e: $3f
    rst $08                                       ; $744f: $cf
    inc l                                         ; $7450: $2c
    call nc, $fac6                                ; $7451: $d4 $c6 $fa
    inc sp                                        ; $7454: $33
    dec a                                         ; $7455: $3d
    inc c                                         ; $7456: $0c
    rrca                                          ; $7457: $0f
    ld [bc], a                                    ; $7458: $02
    inc bc                                        ; $7459: $03
    ld [$0200], sp                                ; $745a: $08 $00 $02
    ld [hl], b                                    ; $745d: $70
    add d                                         ; $745e: $82
    ld l, b                                       ; $745f: $68
    jr jr_0f2_7464                                ; $7460: $18 $02

    ld a, h                                       ; $7462: $7c
    adc d                                         ; $7463: $8a

jr_0f2_7464:
    jr nz, jr_0f2_74c6                            ; $7464: $20 $60

    ld a, b                                       ; $7466: $78
    jr jr_0f2_749d                                ; $7467: $18 $34

    ld c, h                                       ; $7469: $4c
    ld c, d                                       ; $746a: $4a
    halt                                          ; $746b: $76
    ld sp, $023f                                  ; $746c: $31 $3f $02
    ld c, $02                                     ; $746f: $0e $02
    nop                                           ; $7471: $00
    ld [bc], a                                    ; $7472: $02
    ld b, b                                       ; $7473: $40
    inc b                                         ; $7474: $04
    nop                                           ; $7475: $00
    rst $38                                       ; $7476: $ff
    inc de                                        ; $7477: $13
    rlca                                          ; $7478: $07
    di                                            ; $7479: $f3
    rrca                                          ; $747a: $0f
    add sp, -$01                                  ; $747b: $e8 $ff
    pop hl                                        ; $747d: $e1
    ld sp, hl                                     ; $747e: $f9
    db $eb                                        ; $747f: $eb
    ld bc, $09e7                                  ; $7480: $01 $e7 $09
    pop af                                        ; $7483: $f1
    ld a, [c]                                     ; $7484: $f2
    pop af                                        ; $7485: $f1
    ld a, [$02f1]                                 ; $7486: $fa $f1 $02
    pop af                                        ; $7489: $f1
    add hl, bc                                    ; $748a: $09
    ld [bc], a                                    ; $748b: $02
    ld h, b                                       ; $748c: $60
    add [hl]                                      ; $748d: $86
    ldh a, [$90]                                  ; $748e: $f0 $90
    ret nc                                        ; $7490: $d0

    or b                                          ; $7491: $b0
    sub b                                         ; $7492: $90
    ldh a, [rSC]                                  ; $7493: $f0 $02
    ld h, b                                       ; $7495: $60
    ld [bc], a                                    ; $7496: $02
    ret nz                                        ; $7497: $c0

    ld [bc], a                                    ; $7498: $02
    add b                                         ; $7499: $80
    ld [bc], a                                    ; $749a: $02
    ret nz                                        ; $749b: $c0

    ld [bc], a                                    ; $749c: $02

jr_0f2_749d:
    ldh [rSC], a                                  ; $749d: $e0 $02
    jr nc, jr_0f2_74a3                            ; $749f: $30 $02

    db $10                                        ; $74a1: $10
    ld [bc], a                                    ; $74a2: $02

jr_0f2_74a3:
    jr nc, jr_0f2_74a7                            ; $74a3: $30 $02

    ldh [rSC], a                                  ; $74a5: $e0 $02

jr_0f2_74a7:
    add b                                         ; $74a7: $80
    ld [bc], a                                    ; $74a8: $02
    jp Jump_0f2_6d82                              ; $74a9: $c3 $82 $6d


    ld l, a                                       ; $74ac: $6f
    ld [bc], a                                    ; $74ad: $02
    inc bc                                        ; $74ae: $03
    ld [bc], a                                    ; $74af: $02
    dec b                                         ; $74b0: $05
    ld [bc], a                                    ; $74b1: $02
    ld b, $02                                     ; $74b2: $06 $02
    inc bc                                        ; $74b4: $03
    ld [bc], a                                    ; $74b5: $02
    ld h, c                                       ; $74b6: $61
    sub [hl]                                      ; $74b7: $96
    sub e                                         ; $74b8: $93
    di                                            ; $74b9: $f3
    ld l, $de                                     ; $74ba: $2e $de
    ld a, [hl]                                    ; $74bc: $7e
    adc [hl]                                      ; $74bd: $8e
    and h                                         ; $74be: $a4
    ld e, h                                       ; $74bf: $5c
    ld [hl], a                                    ; $74c0: $77
    adc a                                         ; $74c1: $8f
    ld a, [hl+]                                   ; $74c2: $2a
    rst $10                                       ; $74c3: $d7
    ld d, e                                       ; $74c4: $53
    xor a                                         ; $74c5: $af

jr_0f2_74c6:
    and h                                         ; $74c6: $a4
    rst $18                                       ; $74c7: $df
    adc c                                         ; $74c8: $89
    cp $f4                                        ; $74c9: $fe $f4
    rst $38                                       ; $74cb: $ff
    jp z, $02f7                                   ; $74cc: $ca $f7 $02

    inc c                                         ; $74cf: $0c
    add [hl]                                      ; $74d0: $86
    ld e, $12                                     ; $74d1: $1e $12
    ld d, $1a                                     ; $74d3: $16 $1a
    inc b                                         ; $74d5: $04
    inc e                                         ; $74d6: $1c
    ld [bc], a                                    ; $74d7: $02
    sbc b                                         ; $74d8: $98
    ld [bc], a                                    ; $74d9: $02
    or b                                          ; $74da: $b0
    ld [bc], a                                    ; $74db: $02
    ldh [$0c], a                                  ; $74dc: $e0 $0c
    nop                                           ; $74de: $00
    ld [bc], a                                    ; $74df: $02
    ld hl, sp-$7c                                 ; $74e0: $f8 $84
    halt                                          ; $74e2: $76
    adc [hl]                                      ; $74e3: $8e
    add c                                         ; $74e4: $81
    rst $38                                       ; $74e5: $ff
    ld b, $00                                     ; $74e6: $06 $00
    ld [bc], a                                    ; $74e8: $02
    ld c, $8e                                     ; $74e9: $0e $8e
    ld a, l                                       ; $74eb: $7d
    ld [hl], e                                    ; $74ec: $73
    or e                                          ; $74ed: $b3
    rst $08                                       ; $74ee: $cf
    ld a, h                                       ; $74ef: $7c
    ld a, a                                       ; $74f0: $7f
    dec bc                                        ; $74f1: $0b
    inc c                                         ; $74f2: $0c
    ld [hl], $39                                  ; $74f3: $36 $39
    ld e, b                                       ; $74f5: $58
    ld h, a                                       ; $74f6: $67
    rst $20                                       ; $74f7: $e7
    sbc a                                         ; $74f8: $9f
    ld [bc], a                                    ; $74f9: $02
    ld a, c                                       ; $74fa: $79
    ld [bc], a                                    ; $74fb: $02
    ld bc, $0384                                  ; $74fc: $01 $84 $03
    ld [bc], a                                    ; $74ff: $02
    inc b                                         ; $7500: $04
    rlca                                          ; $7501: $07
    ld [bc], a                                    ; $7502: $02
    inc bc                                        ; $7503: $03
    sbc h                                         ; $7504: $9c
    xor $fe                                       ; $7505: $ee $fe
    ld e, b                                       ; $7507: $58
    ld l, [hl]                                    ; $7508: $6e
    xor h                                         ; $7509: $ac
    sbc $9e                                       ; $750a: $de $9e
    xor $9c                                       ; $750c: $ee $9c
    xor $aa                                       ; $750e: $ee $aa
    sub $5a                                       ; $7510: $d6 $5a
    and $66                                       ; $7512: $e6 $66
    ld a, [$fe98]                                 ; $7514: $fa $98 $fe
    or [hl]                                       ; $7517: $b6
    adc $90                                       ; $7518: $ce $90
    rst $28                                       ; $751a: $ef
    ld l, e                                       ; $751b: $6b
    sub a                                         ; $751c: $97
    adc h                                         ; $751d: $8c
    ld a, h                                       ; $751e: $7c
    jr nc, @-$0e                                  ; $751f: $30 $f0

    ld [bc], a                                    ; $7521: $02
    ret nz                                        ; $7522: $c0

    rrca                                          ; $7523: $0f
    nop                                           ; $7524: $00
    ld [bc], a                                    ; $7525: $02
    ld bc, $0002                                  ; $7526: $01 $02 $00
    adc l                                         ; $7529: $8d
    ld bc, $0100                                  ; $752a: $01 $00 $01
    ld a, a                                       ; $752d: $7f
    add a                                         ; $752e: $87
    ld a, [hl+]                                   ; $752f: $2a
    sub $c6                                       ; $7530: $d6 $c6
    ld a, [$3d33]                                 ; $7532: $fa $33 $3d
    inc c                                         ; $7535: $0c
    rrca                                          ; $7536: $0f
    ld [bc], a                                    ; $7537: $02
    inc bc                                        ; $7538: $03
    inc c                                         ; $7539: $0c
    nop                                           ; $753a: $00
    ld [bc], a                                    ; $753b: $02
    ld a, [hl]                                    ; $753c: $7e
    adc d                                         ; $753d: $8a
    db $10                                        ; $753e: $10
    ld [hl], b                                    ; $753f: $70
    ld a, b                                       ; $7540: $78
    ld [$5c24], sp                                ; $7541: $08 $24 $5c
    ld c, d                                       ; $7544: $4a
    halt                                          ; $7545: $76
    ld sp, $023f                                  ; $7546: $31 $3f $02
    ld c, $02                                     ; $7549: $0e $02
    nop                                           ; $754b: $00
    ld [bc], a                                    ; $754c: $02
    ld b, b                                       ; $754d: $40
    ld [bc], a                                    ; $754e: $02
    nop                                           ; $754f: $00
    rst $38                                       ; $7550: $ff
    dec d                                         ; $7551: $15
    ld [$0ff3], sp                                ; $7552: $08 $f3 $0f
    add sp, -$01                                  ; $7555: $e8 $ff
    db $e3                                        ; $7557: $e3

jr_0f2_7558:
    or $ed                                        ; $7558: $f6 $ed
    cp $e8                                        ; $755a: $fe $e8
    ld b, $e7                                     ; $755c: $06 $e7
    inc c                                         ; $755e: $0c
    di                                            ; $755f: $f3
    ld a, [c]                                     ; $7560: $f2
    di                                            ; $7561: $f3
    ld hl, sp-$0d                                 ; $7562: $f8 $f3
    ld [bc], a                                    ; $7564: $02
    di                                            ; $7565: $f3
    add hl, bc                                    ; $7566: $09
    ld [bc], a                                    ; $7567: $02
    ld a, b                                       ; $7568: $78
    add [hl]                                      ; $7569: $86
    sbc h                                         ; $756a: $9c
    db $fc                                        ; $756b: $fc
    or h                                          ; $756c: $b4
    call nc, $94f4                                ; $756d: $d4 $f4 $94
    ld [bc], a                                    ; $7570: $02
    ld l, h                                       ; $7571: $6c
    ld [bc], a                                    ; $7572: $02
    inc c                                         ; $7573: $0c
    ld [bc], a                                    ; $7574: $02
    ld c, $04                                     ; $7575: $0e $04
    ld [bc], a                                    ; $7577: $02
    ld [bc], a                                    ; $7578: $02
    ld b, $02                                     ; $7579: $06 $02
    inc c                                         ; $757b: $0c
    ld [bc], a                                    ; $757c: $02
    add hl, bc                                    ; $757d: $09
    adc b                                         ; $757e: $88
    ld c, $0f                                     ; $757f: $0e $0f
    inc c                                         ; $7581: $0c
    rrca                                          ; $7582: $0f
    dec b                                         ; $7583: $05
    ld b, $04                                     ; $7584: $06 $04
    rlca                                          ; $7586: $07
    ld [bc], a                                    ; $7587: $02
    ld a, b                                       ; $7588: $78
    adc c                                         ; $7589: $89
    or h                                          ; $758a: $b4
    db $fc                                        ; $758b: $fc
    xor d                                         ; $758c: $aa
    halt                                          ; $758d: $76
    jp hl                                         ; $758e: $e9


    ld [hl], a                                    ; $758f: $77
    ld e, l                                       ; $7590: $5d
    db $e3                                        ; $7591: $e3
    ld [$7502], a                                 ; $7592: $ea $02 $75
    sub e                                         ; $7595: $93
    ld a, [$71ae]                                 ; $7596: $fa $ae $71
    ld h, h                                       ; $7599: $64
    ei                                            ; $759a: $fb
    xor d                                         ; $759b: $aa
    ld [hl], l                                    ; $759c: $75
    inc h                                         ; $759d: $24
    ei                                            ; $759e: $fb
    inc de                                        ; $759f: $13
    rst $28                                       ; $75a0: $ef
    ld c, [hl]                                    ; $75a1: $4e
    rst $38                                       ; $75a2: $ff
    ld sp, hl                                     ; $75a3: $f9
    cp $06                                        ; $75a4: $fe $06
    ld sp, hl                                     ; $75a6: $f9
    or d                                          ; $75a7: $b2
    ld a, l                                       ; $75a8: $7d
    ld [bc], a                                    ; $75a9: $02
    inc bc                                        ; $75aa: $03
    inc b                                         ; $75ab: $04
    ld b, $02                                     ; $75ac: $06 $02
    ld a, [hl-]                                   ; $75ae: $3a
    ld [bc], a                                    ; $75af: $02
    ld l, [hl]                                    ; $75b0: $6e
    ld [bc], a                                    ; $75b1: $02
    ld b, [hl]                                    ; $75b2: $46
    ld [bc], a                                    ; $75b3: $02
    ld h, b                                       ; $75b4: $60
    ld [bc], a                                    ; $75b5: $02
    jr nc, jr_0f2_75ba                            ; $75b6: $30 $02

    db $10                                        ; $75b8: $10
    ld [bc], a                                    ; $75b9: $02

jr_0f2_75ba:
    ld [hl], b                                    ; $75ba: $70
    ld [bc], a                                    ; $75bb: $02
    ldh [$8a], a                                  ; $75bc: $e0 $8a
    ld b, b                                       ; $75be: $40
    ret nz                                        ; $75bf: $c0

    ld a, a                                       ; $75c0: $7f
    rst $38                                       ; $75c1: $ff
    adc $f1                                       ; $75c2: $ce $f1
    ldh a, [rIE]                                  ; $75c4: $f0 $ff
    adc a                                         ; $75c6: $8f
    rst $38                                       ; $75c7: $ff
    ld [bc], a                                    ; $75c8: $02
    inc c                                         ; $75c9: $0c
    add [hl]                                      ; $75ca: $86
    ld [hl-], a                                   ; $75cb: $32
    ld a, $3d                                     ; $75cc: $3e $3d
    inc sp                                        ; $75ce: $33
    rrca                                          ; $75cf: $0f
    dec c                                         ; $75d0: $0d
    inc d                                         ; $75d1: $14
    nop                                           ; $75d2: $00
    ld [bc], a                                    ; $75d3: $02
    jr nc, jr_0f2_7558                            ; $75d4: $30 $82

    ld [$0238], sp                                ; $75d6: $08 $38 $02
    nop                                           ; $75d9: $00
    ld [bc], a                                    ; $75da: $02
    ld c, $8e                                     ; $75db: $0e $8e
    ld a, l                                       ; $75dd: $7d
    ld [hl], e                                    ; $75de: $73
    or e                                          ; $75df: $b3
    rst $08                                       ; $75e0: $cf
    ld a, h                                       ; $75e1: $7c
    ld a, a                                       ; $75e2: $7f
    dec bc                                        ; $75e3: $0b
    inc c                                         ; $75e4: $0c
    ld [hl], $39                                  ; $75e5: $36 $39
    ld e, b                                       ; $75e7: $58
    ld h, a                                       ; $75e8: $67
    rst $20                                       ; $75e9: $e7
    sbc a                                         ; $75ea: $9f
    ld [bc], a                                    ; $75eb: $02
    ld a, c                                       ; $75ec: $79
    ld [bc], a                                    ; $75ed: $02
    ld bc, $0384                                  ; $75ee: $01 $84 $03
    ld [bc], a                                    ; $75f1: $02
    inc b                                         ; $75f2: $04
    rlca                                          ; $75f3: $07
    ld [bc], a                                    ; $75f4: $02
    inc bc                                        ; $75f5: $03
    inc b                                         ; $75f6: $04
    nop                                           ; $75f7: $00
    add a                                         ; $75f8: $87
    inc h                                         ; $75f9: $24
    jr c, jr_0f2_7628                             ; $75fa: $38 $2c

    jr nc, jr_0f2_7622                            ; $75fc: $30 $24

Jump_0f2_75fe:
    jr c, jr_0f2_7628                             ; $75fe: $38 $28

    ld [bc], a                                    ; $7600: $02
    inc [hl]                                      ; $7601: $34
    adc a                                         ; $7602: $8f
    jr c, jr_0f2_761d                             ; $7603: $38 $18

    inc a                                         ; $7605: $3c
    inc l                                         ; $7606: $2c
    inc a                                         ; $7607: $3c
    jr z, jr_0f2_763e                             ; $7608: $28 $34

    inc l                                         ; $760a: $2c
    jr nc, jr_0f2_7625                            ; $760b: $30 $18

    inc h                                         ; $760d: $24
    inc hl                                        ; $760e: $23
    rra                                           ; $760f: $1f
    inc c                                         ; $7610: $0c
    inc a                                         ; $7611: $3c
    ld [bc], a                                    ; $7612: $02
    jr nc, jr_0f2_7625                            ; $7613: $30 $10

    nop                                           ; $7615: $00
    sub b                                         ; $7616: $90
    inc bc                                        ; $7617: $03
    inc c                                         ; $7618: $0c
    ld [$040f], sp                                ; $7619: $08 $0f $04
    rrca                                          ; $761c: $0f

jr_0f2_761d:
    rlca                                          ; $761d: $07
    rrca                                          ; $761e: $0f
    ld a, [bc]                                    ; $761f: $0a
    ld b, $c6                                     ; $7620: $06 $c6

jr_0f2_7622:
    ld a, [$3d33]                                 ; $7622: $fa $33 $3d

jr_0f2_7625:
    inc c                                         ; $7625: $0c
    rrca                                          ; $7626: $0f
    ld [bc], a                                    ; $7627: $02

jr_0f2_7628:
    inc bc                                        ; $7628: $03
    inc c                                         ; $7629: $0c
    nop                                           ; $762a: $00
    ld [bc], a                                    ; $762b: $02
    ld b, $8a                                     ; $762c: $06 $8a
    db $10                                        ; $762e: $10
    ld [hl], b                                    ; $762f: $70
    ld e, b                                       ; $7630: $58
    jr z, jr_0f2_7667                             ; $7631: $28 $34

    ld c, h                                       ; $7633: $4c
    ld c, d                                       ; $7634: $4a
    halt                                          ; $7635: $76
    ld sp, $023f                                  ; $7636: $31 $3f $02
    ld c, $02                                     ; $7639: $0e $02
    nop                                           ; $763b: $00
    ld [bc], a                                    ; $763c: $02
    ld b, b                                       ; $763d: $40

jr_0f2_763e:
    ld b, $00                                     ; $763e: $06 $00
    rst $38                                       ; $7640: $ff
    dec c                                         ; $7641: $0d
    inc b                                         ; $7642: $04
    ldh a, [rIF]                                  ; $7643: $f0 $0f
    ld [c], a                                     ; $7645: $e2
    ld bc, $f9e2                                  ; $7646: $01 $e2 $f9
    ld [c], a                                     ; $7649: $e2
    db $fd                                        ; $764a: $fd
    ld a, [c]                                     ; $764b: $f2
    ld sp, hl                                     ; $764c: $f9
    ld a, [c]                                     ; $764d: $f2
    db $fd                                        ; $764e: $fd
    ld [bc], a                                    ; $764f: $02
    rlca                                          ; $7650: $07
    sub h                                         ; $7651: $94
    jr jr_0f2_7673                                ; $7652: $18 $1f

    jr nc, jr_0f2_7695                            ; $7654: $30 $3f

    ld h, b                                       ; $7656: $60
    ld a, a                                       ; $7657: $7f
    ld h, c                                       ; $7658: $61
    ld a, a                                       ; $7659: $7f
    or e                                          ; $765a: $b3
    rst $38                                       ; $765b: $ff
    sbc $fd                                       ; $765c: $de $fd
    rst $38                                       ; $765e: $ff
    db $fc                                        ; $765f: $fc
    ld a, a                                       ; $7660: $7f
    ld a, b                                       ; $7661: $78
    cpl                                           ; $7662: $2f
    jr c, @+$21                                   ; $7663: $38 $1f

    inc e                                         ; $7665: $1c
    ld [bc], a                                    ; $7666: $02

jr_0f2_7667:
    ccf                                           ; $7667: $3f
    adc b                                         ; $7668: $88
    ld e, a                                       ; $7669: $5f
    ld a, l                                       ; $766a: $7d
    ld c, e                                       ; $766b: $4b
    ld a, a                                       ; $766c: $7f
    ld [hl], h                                    ; $766d: $74
    ld a, a                                       ; $766e: $7f
    ld e, e                                       ; $766f: $5b
    ld a, a                                       ; $7670: $7f
    ld [bc], a                                    ; $7671: $02
    inc c                                         ; $7672: $0c

jr_0f2_7673:
    add a                                         ; $7673: $87
    ld b, $0e                                     ; $7674: $06 $0e
    dec b                                         ; $7676: $05
    rrca                                          ; $7677: $0f
    dec c                                         ; $7678: $0d
    rrca                                          ; $7679: $0f
    rlca                                          ; $767a: $07
    ld [bc], a                                    ; $767b: $02
    rrca                                          ; $767c: $0f
    add a                                         ; $767d: $87
    inc bc                                        ; $767e: $03
    ld c, $0a                                     ; $767f: $0e $0a
    rrca                                          ; $7681: $0f
    ld bc, $020e                                  ; $7682: $01 $0e $02
    inc bc                                        ; $7685: $03
    ld c, $81                                     ; $7686: $0e $81
    ld b, $02                                     ; $7688: $06 $02
    ld c, $85                                     ; $768a: $0e $85
    ld a, [bc]                                    ; $768c: $0a
    ld c, $0a                                     ; $768d: $0e $0a
    ld c, $06                                     ; $768f: $0e $06
    inc bc                                        ; $7691: $03
    ld c, $9c                                     ; $7692: $0e $9c
    ld e, a                                       ; $7694: $5f

jr_0f2_7695:
    ld a, a                                       ; $7695: $7f
    ld e, e                                       ; $7696: $5b
    ld a, [hl]                                    ; $7697: $7e
    sub d                                         ; $7698: $92
    rst $38                                       ; $7699: $ff
    sub e                                         ; $769a: $93
    cp $b2                                        ; $769b: $fe $b2
    rst $38                                       ; $769d: $ff
    db $d3                                        ; $769e: $d3
    rst $38                                       ; $769f: $ff
    or e                                          ; $76a0: $b3
    rst $38                                       ; $76a1: $ff
    ld [hl], e                                    ; $76a2: $73
    ld e, a                                       ; $76a3: $5f
    dec sp                                        ; $76a4: $3b
    cpl                                           ; $76a5: $2f
    ccf                                           ; $76a6: $3f
    scf                                           ; $76a7: $37
    ld c, e                                       ; $76a8: $4b
    ld a, a                                       ; $76a9: $7f
    ld b, e                                       ; $76aa: $43
    ld a, a                                       ; $76ab: $7f
    db $e3                                        ; $76ac: $e3
    rst $38                                       ; $76ad: $ff
    add a                                         ; $76ae: $87
    rst $38                                       ; $76af: $ff
    ld [bc], a                                    ; $76b0: $02
    ld a, a                                       ; $76b1: $7f
    ld [bc], a                                    ; $76b2: $02
    inc a                                         ; $76b3: $3c
    sbc c                                         ; $76b4: $99
    ld a, [bc]                                    ; $76b5: $0a
    ld c, $0a                                     ; $76b6: $0e $0a
    ld c, $0b                                     ; $76b8: $0e $0b
    rrca                                          ; $76ba: $0f
    dec bc                                        ; $76bb: $0b
    rrca                                          ; $76bc: $0f
    dec bc                                        ; $76bd: $0b
    rrca                                          ; $76be: $0f
    dec bc                                        ; $76bf: $0b
    rrca                                          ; $76c0: $0f
    dec bc                                        ; $76c1: $0b
    rrca                                          ; $76c2: $0f
    dec bc                                        ; $76c3: $0b
    rrca                                          ; $76c4: $0f
    ld a, [bc]                                    ; $76c5: $0a
    ld c, $0a                                     ; $76c6: $0e $0a
    ld c, $0a                                     ; $76c8: $0e $0a
    ld c, $0a                                     ; $76ca: $0e $0a
    ld c, $0a                                     ; $76cc: $0e $0a
    inc bc                                        ; $76ce: $03
    ld c, $02                                     ; $76cf: $0e $02
    rrca                                          ; $76d1: $0f
    ld [bc], a                                    ; $76d2: $02
    ld c, $ff                                     ; $76d3: $0e $ff
    dec c                                         ; $76d5: $0d
    inc b                                         ; $76d6: $04
    ldh a, [rIF]                                  ; $76d7: $f0 $0f
    ld [c], a                                     ; $76d9: $e2
    ld bc, $f9e2                                  ; $76da: $01 $e2 $f9
    ld [c], a                                     ; $76dd: $e2
    db $fd                                        ; $76de: $fd
    ld a, [c]                                     ; $76df: $f2
    ld sp, hl                                     ; $76e0: $f9
    ld a, [c]                                     ; $76e1: $f2
    db $fd                                        ; $76e2: $fd
    ld [bc], a                                    ; $76e3: $02
    rlca                                          ; $76e4: $07
    sub h                                         ; $76e5: $94
    jr jr_0f2_7707                                ; $76e6: $18 $1f

    jr nc, jr_0f2_7729                            ; $76e8: $30 $3f

    ld h, b                                       ; $76ea: $60
    ld a, a                                       ; $76eb: $7f
    ld h, c                                       ; $76ec: $61
    ld a, a                                       ; $76ed: $7f
    or e                                          ; $76ee: $b3
    rst $38                                       ; $76ef: $ff
    sbc $fd                                       ; $76f0: $de $fd
    rst $38                                       ; $76f2: $ff
    db $fc                                        ; $76f3: $fc
    ld a, a                                       ; $76f4: $7f
    ld a, b                                       ; $76f5: $78
    cpl                                           ; $76f6: $2f
    jr c, @+$21                                   ; $76f7: $38 $1f

    inc e                                         ; $76f9: $1c
    ld [bc], a                                    ; $76fa: $02
    ccf                                           ; $76fb: $3f
    adc b                                         ; $76fc: $88
    ld e, a                                       ; $76fd: $5f
    ld a, l                                       ; $76fe: $7d
    ld b, e                                       ; $76ff: $43
    ld a, a                                       ; $7700: $7f
    ld [hl], h                                    ; $7701: $74
    ld a, a                                       ; $7702: $7f
    ld e, e                                       ; $7703: $5b
    ld a, a                                       ; $7704: $7f
    ld [bc], a                                    ; $7705: $02
    inc c                                         ; $7706: $0c

jr_0f2_7707:
    add a                                         ; $7707: $87
    ld b, $0e                                     ; $7708: $06 $0e
    dec b                                         ; $770a: $05
    rrca                                          ; $770b: $0f
    dec c                                         ; $770c: $0d
    rrca                                          ; $770d: $0f
    rlca                                          ; $770e: $07
    ld [bc], a                                    ; $770f: $02
    rrca                                          ; $7710: $0f
    add a                                         ; $7711: $87
    inc bc                                        ; $7712: $03
    ld c, $0a                                     ; $7713: $0e $0a
    rrca                                          ; $7715: $0f
    ld bc, $020e                                  ; $7716: $01 $0e $02
    inc bc                                        ; $7719: $03
    ld c, $88                                     ; $771a: $0e $88
    ld b, $0a                                     ; $771c: $06 $0a
    ld c, $0a                                     ; $771e: $0e $0a
    ld c, $0a                                     ; $7720: $0e $0a
    ld c, $06                                     ; $7722: $0e $06
    inc bc                                        ; $7724: $03
    ld c, $9c                                     ; $7725: $0e $9c
    ld e, a                                       ; $7727: $5f
    ld a, a                                       ; $7728: $7f

jr_0f2_7729:
    db $db                                        ; $7729: $db
    cp $92                                        ; $772a: $fe $92
    rst $38                                       ; $772c: $ff
    or e                                          ; $772d: $b3
    cp $f2                                        ; $772e: $fe $f2
    rst $38                                       ; $7730: $ff
    sub e                                         ; $7731: $93
    rst $38                                       ; $7732: $ff
    di                                            ; $7733: $f3
    rst $38                                       ; $7734: $ff
    di                                            ; $7735: $f3
    sbc a                                         ; $7736: $9f
    ld [hl], e                                    ; $7737: $73
    ld e, a                                       ; $7738: $5f
    dec sp                                        ; $7739: $3b
    cpl                                           ; $773a: $2f
    ld d, e                                       ; $773b: $53
    ld a, a                                       ; $773c: $7f
    ld b, e                                       ; $773d: $43
    ld a, a                                       ; $773e: $7f
    db $e3                                        ; $773f: $e3
    rst $38                                       ; $7740: $ff
    add a                                         ; $7741: $87
    rst $38                                       ; $7742: $ff
    ld [bc], a                                    ; $7743: $02
    ld a, a                                       ; $7744: $7f
    ld [bc], a                                    ; $7745: $02
    inc a                                         ; $7746: $3c
    sbc c                                         ; $7747: $99
    ld a, [bc]                                    ; $7748: $0a
    ld c, $0b                                     ; $7749: $0e $0b
    rrca                                          ; $774b: $0f
    dec bc                                        ; $774c: $0b
    rrca                                          ; $774d: $0f
    dec bc                                        ; $774e: $0b
    rrca                                          ; $774f: $0f
    dec bc                                        ; $7750: $0b
    rrca                                          ; $7751: $0f
    dec bc                                        ; $7752: $0b
    rrca                                          ; $7753: $0f
    dec bc                                        ; $7754: $0b
    rrca                                          ; $7755: $0f
    ld a, [bc]                                    ; $7756: $0a
    ld c, $0a                                     ; $7757: $0e $0a
    ld c, $0a                                     ; $7759: $0e $0a
    ld c, $0a                                     ; $775b: $0e $0a
    ld c, $0a                                     ; $775d: $0e $0a
    ld c, $0a                                     ; $775f: $0e $0a
    inc bc                                        ; $7761: $03
    ld c, $02                                     ; $7762: $0e $02
    rrca                                          ; $7764: $0f
    ld [bc], a                                    ; $7765: $02
    ld c, $ff                                     ; $7766: $0e $ff
    dec c                                         ; $7768: $0d
    inc b                                         ; $7769: $04
    ldh a, [rIF]                                  ; $776a: $f0 $0f
    ld [c], a                                     ; $776c: $e2
    ld bc, $f9e2                                  ; $776d: $01 $e2 $f9
    ld [c], a                                     ; $7770: $e2
    db $fd                                        ; $7771: $fd
    ld a, [c]                                     ; $7772: $f2
    ld sp, hl                                     ; $7773: $f9
    ld a, [c]                                     ; $7774: $f2
    db $fd                                        ; $7775: $fd
    ld [bc], a                                    ; $7776: $02
    rlca                                          ; $7777: $07
    sub h                                         ; $7778: $94
    jr jr_0f2_779a                                ; $7779: $18 $1f

    jr nc, jr_0f2_77bc                            ; $777b: $30 $3f

    ld h, b                                       ; $777d: $60
    ld a, a                                       ; $777e: $7f
    ld h, c                                       ; $777f: $61
    ld a, a                                       ; $7780: $7f
    or e                                          ; $7781: $b3
    rst $38                                       ; $7782: $ff
    sbc $fd                                       ; $7783: $de $fd
    rst $38                                       ; $7785: $ff
    db $fc                                        ; $7786: $fc
    ld a, a                                       ; $7787: $7f
    ld a, b                                       ; $7788: $78
    cpl                                           ; $7789: $2f
    jr c, @+$21                                   ; $778a: $38 $1f

    inc e                                         ; $778c: $1c
    ld [bc], a                                    ; $778d: $02
    ccf                                           ; $778e: $3f
    adc b                                         ; $778f: $88
    ld e, a                                       ; $7790: $5f
    ld a, l                                       ; $7791: $7d
    ld h, e                                       ; $7792: $63
    ld a, a                                       ; $7793: $7f
    ld [hl], h                                    ; $7794: $74
    ld a, a                                       ; $7795: $7f
    ld e, e                                       ; $7796: $5b
    ld a, a                                       ; $7797: $7f
    ld [bc], a                                    ; $7798: $02
    inc c                                         ; $7799: $0c

jr_0f2_779a:
    add a                                         ; $779a: $87
    ld b, $0e                                     ; $779b: $06 $0e
    dec b                                         ; $779d: $05
    rrca                                          ; $779e: $0f
    dec c                                         ; $779f: $0d
    rrca                                          ; $77a0: $0f
    rlca                                          ; $77a1: $07
    ld [bc], a                                    ; $77a2: $02
    rrca                                          ; $77a3: $0f
    add a                                         ; $77a4: $87
    inc bc                                        ; $77a5: $03
    ld c, $0a                                     ; $77a6: $0e $0a
    rrca                                          ; $77a8: $0f
    ld bc, $020e                                  ; $77a9: $01 $0e $02
    inc bc                                        ; $77ac: $03
    ld c, $88                                     ; $77ad: $0e $88
    ld b, $0a                                     ; $77af: $06 $0a
    ld c, $0a                                     ; $77b1: $0e $0a
    ld c, $0a                                     ; $77b3: $0e $0a
    ld c, $06                                     ; $77b5: $0e $06
    inc bc                                        ; $77b7: $03
    ld c, $9c                                     ; $77b8: $0e $9c
    ld e, a                                       ; $77ba: $5f
    ld a, a                                       ; $77bb: $7f

jr_0f2_77bc:
    sub e                                         ; $77bc: $93
    cp $92                                        ; $77bd: $fe $92
    rst $38                                       ; $77bf: $ff
    or e                                          ; $77c0: $b3
    cp $f2                                        ; $77c1: $fe $f2
    rst $38                                       ; $77c3: $ff
    sub e                                         ; $77c4: $93
    rst $38                                       ; $77c5: $ff
    di                                            ; $77c6: $f3
    rst $38                                       ; $77c7: $ff
    db $e3                                        ; $77c8: $e3
    cp a                                          ; $77c9: $bf
    ld [hl], e                                    ; $77ca: $73
    ld e, a                                       ; $77cb: $5f
    ld [hl], e                                    ; $77cc: $73
    ld e, a                                       ; $77cd: $5f
    ld h, e                                       ; $77ce: $63
    ld a, a                                       ; $77cf: $7f
    ld b, e                                       ; $77d0: $43
    ld a, a                                       ; $77d1: $7f
    rst $20                                       ; $77d2: $e7
    rst $38                                       ; $77d3: $ff
    add a                                         ; $77d4: $87
    rst $38                                       ; $77d5: $ff
    ld [bc], a                                    ; $77d6: $02
    ld a, a                                       ; $77d7: $7f
    ld [bc], a                                    ; $77d8: $02
    inc a                                         ; $77d9: $3c
    sbc c                                         ; $77da: $99
    ld a, [bc]                                    ; $77db: $0a
    ld c, $0b                                     ; $77dc: $0e $0b
    rrca                                          ; $77de: $0f
    dec bc                                        ; $77df: $0b
    rrca                                          ; $77e0: $0f
    dec bc                                        ; $77e1: $0b
    rrca                                          ; $77e2: $0f
    dec bc                                        ; $77e3: $0b
    rrca                                          ; $77e4: $0f
    dec bc                                        ; $77e5: $0b
    rrca                                          ; $77e6: $0f
    dec bc                                        ; $77e7: $0b
    rrca                                          ; $77e8: $0f
    ld a, [bc]                                    ; $77e9: $0a
    ld c, $0a                                     ; $77ea: $0e $0a
    ld c, $0a                                     ; $77ec: $0e $0a
    ld c, $0a                                     ; $77ee: $0e $0a
    ld c, $0a                                     ; $77f0: $0e $0a
    ld c, $0a                                     ; $77f2: $0e $0a
    inc bc                                        ; $77f4: $03
    ld c, $02                                     ; $77f5: $0e $02
    rrca                                          ; $77f7: $0f
    ld [bc], a                                    ; $77f8: $02
    ld c, $ff                                     ; $77f9: $0e $ff
    dec c                                         ; $77fb: $0d
    inc b                                         ; $77fc: $04
    ldh a, [rIF]                                  ; $77fd: $f0 $0f

Call_0f2_77ff:
    ld [c], a                                     ; $77ff: $e2
    ld bc, $f9e2                                  ; $7800: $01 $e2 $f9
    ld [c], a                                     ; $7803: $e2
    db $fd                                        ; $7804: $fd
    ld a, [c]                                     ; $7805: $f2
    ld sp, hl                                     ; $7806: $f9
    ld a, [c]                                     ; $7807: $f2
    db $fd                                        ; $7808: $fd
    ld [bc], a                                    ; $7809: $02
    rlca                                          ; $780a: $07
    sub h                                         ; $780b: $94
    jr jr_0f2_782d                                ; $780c: $18 $1f

    jr nc, jr_0f2_784f                            ; $780e: $30 $3f

    ld h, b                                       ; $7810: $60
    ld a, a                                       ; $7811: $7f
    ld h, c                                       ; $7812: $61
    ld a, a                                       ; $7813: $7f
    or e                                          ; $7814: $b3
    rst $38                                       ; $7815: $ff
    sbc $fd                                       ; $7816: $de $fd
    rst $38                                       ; $7818: $ff
    db $fc                                        ; $7819: $fc
    ld a, a                                       ; $781a: $7f
    ld a, b                                       ; $781b: $78
    cpl                                           ; $781c: $2f
    jr c, @+$21                                   ; $781d: $38 $1f

    inc e                                         ; $781f: $1c
    ld [bc], a                                    ; $7820: $02
    ccf                                           ; $7821: $3f
    adc b                                         ; $7822: $88
    ld e, a                                       ; $7823: $5f
    ld a, l                                       ; $7824: $7d
    ld h, e                                       ; $7825: $63
    ld a, a                                       ; $7826: $7f
    ld [hl], h                                    ; $7827: $74
    ld a, a                                       ; $7828: $7f
    ld e, e                                       ; $7829: $5b
    ld a, a                                       ; $782a: $7f
    ld [bc], a                                    ; $782b: $02
    inc c                                         ; $782c: $0c

jr_0f2_782d:
    add a                                         ; $782d: $87
    ld b, $0e                                     ; $782e: $06 $0e
    dec b                                         ; $7830: $05
    rrca                                          ; $7831: $0f
    dec c                                         ; $7832: $0d
    rrca                                          ; $7833: $0f
    rlca                                          ; $7834: $07
    ld [bc], a                                    ; $7835: $02
    rrca                                          ; $7836: $0f
    add a                                         ; $7837: $87
    inc bc                                        ; $7838: $03
    ld c, $0a                                     ; $7839: $0e $0a
    rrca                                          ; $783b: $0f
    ld bc, $020e                                  ; $783c: $01 $0e $02
    inc bc                                        ; $783f: $03
    ld c, $88                                     ; $7840: $0e $88
    ld b, $0a                                     ; $7842: $06 $0a
    ld c, $0a                                     ; $7844: $0e $0a
    ld c, $0a                                     ; $7846: $0e $0a
    ld c, $06                                     ; $7848: $0e $06
    inc bc                                        ; $784a: $03
    ld c, $9c                                     ; $784b: $0e $9c
    ld e, a                                       ; $784d: $5f
    ld a, a                                       ; $784e: $7f

jr_0f2_784f:
    sub e                                         ; $784f: $93
    cp $b2                                        ; $7850: $fe $b2
    rst $38                                       ; $7852: $ff
    or e                                          ; $7853: $b3
    cp $f2                                        ; $7854: $fe $f2
    rst $38                                       ; $7856: $ff
    sub e                                         ; $7857: $93
    rst $38                                       ; $7858: $ff
    db $e3                                        ; $7859: $e3
    rst $38                                       ; $785a: $ff
    db $e3                                        ; $785b: $e3
    cp a                                          ; $785c: $bf
    ld [hl], e                                    ; $785d: $73
    ld e, a                                       ; $785e: $5f
    ld [hl], e                                    ; $785f: $73
    ld e, a                                       ; $7860: $5f
    ld h, e                                       ; $7861: $63
    ld a, a                                       ; $7862: $7f
    ld b, e                                       ; $7863: $43

Call_0f2_7864:
    ld a, a                                       ; $7864: $7f
    rst $20                                       ; $7865: $e7
    rst $38                                       ; $7866: $ff
    add a                                         ; $7867: $87
    rst $38                                       ; $7868: $ff
    ld [bc], a                                    ; $7869: $02
    ld a, a                                       ; $786a: $7f
    ld [bc], a                                    ; $786b: $02
    inc a                                         ; $786c: $3c
    sbc c                                         ; $786d: $99
    ld a, [bc]                                    ; $786e: $0a
    ld c, $0b                                     ; $786f: $0e $0b
    rrca                                          ; $7871: $0f
    dec bc                                        ; $7872: $0b
    rrca                                          ; $7873: $0f
    dec bc                                        ; $7874: $0b
    rrca                                          ; $7875: $0f
    dec bc                                        ; $7876: $0b
    rrca                                          ; $7877: $0f
    dec bc                                        ; $7878: $0b
    rrca                                          ; $7879: $0f
    dec bc                                        ; $787a: $0b
    rrca                                          ; $787b: $0f
    ld a, [bc]                                    ; $787c: $0a
    ld c, $0a                                     ; $787d: $0e $0a
    ld c, $0a                                     ; $787f: $0e $0a
    ld c, $0a                                     ; $7881: $0e $0a
    ld c, $0a                                     ; $7883: $0e $0a
    ld c, $0a                                     ; $7885: $0e $0a
    inc bc                                        ; $7887: $03
    ld c, $02                                     ; $7888: $0e $02
    rrca                                          ; $788a: $0f
    ld [bc], a                                    ; $788b: $02
    ld c, $ff                                     ; $788c: $0e $ff
    dec c                                         ; $788e: $0d
    inc b                                         ; $788f: $04
    ldh a, [rIF]                                  ; $7890: $f0 $0f
    ld [c], a                                     ; $7892: $e2
    ld bc, $f9e2                                  ; $7893: $01 $e2 $f9
    ld [c], a                                     ; $7896: $e2
    db $fd                                        ; $7897: $fd
    ld a, [c]                                     ; $7898: $f2
    ld sp, hl                                     ; $7899: $f9
    ld a, [c]                                     ; $789a: $f2
    db $fd                                        ; $789b: $fd
    ld [bc], a                                    ; $789c: $02
    rlca                                          ; $789d: $07
    sub h                                         ; $789e: $94
    jr jr_0f2_78c0                                ; $789f: $18 $1f

    jr nc, jr_0f2_78e2                            ; $78a1: $30 $3f

    ld h, b                                       ; $78a3: $60
    ld a, a                                       ; $78a4: $7f
    ld h, c                                       ; $78a5: $61
    ld a, a                                       ; $78a6: $7f
    or e                                          ; $78a7: $b3
    rst $38                                       ; $78a8: $ff
    sbc $fd                                       ; $78a9: $de $fd
    rst $38                                       ; $78ab: $ff
    db $fc                                        ; $78ac: $fc
    ld a, a                                       ; $78ad: $7f
    ld a, b                                       ; $78ae: $78
    cpl                                           ; $78af: $2f
    jr c, @+$21                                   ; $78b0: $38 $1f

    inc e                                         ; $78b2: $1c
    ld [bc], a                                    ; $78b3: $02
    ccf                                           ; $78b4: $3f
    adc b                                         ; $78b5: $88
    ld e, a                                       ; $78b6: $5f
    ld a, l                                       ; $78b7: $7d
    ld c, e                                       ; $78b8: $4b
    ld a, a                                       ; $78b9: $7f
    ld [hl], h                                    ; $78ba: $74
    ld a, a                                       ; $78bb: $7f
    ld e, e                                       ; $78bc: $5b
    ld a, a                                       ; $78bd: $7f
    ld [bc], a                                    ; $78be: $02
    inc c                                         ; $78bf: $0c

jr_0f2_78c0:
    add a                                         ; $78c0: $87
    ld b, $0e                                     ; $78c1: $06 $0e
    dec b                                         ; $78c3: $05
    rrca                                          ; $78c4: $0f
    dec c                                         ; $78c5: $0d
    rrca                                          ; $78c6: $0f
    rlca                                          ; $78c7: $07
    ld [bc], a                                    ; $78c8: $02
    rrca                                          ; $78c9: $0f
    add a                                         ; $78ca: $87
    inc bc                                        ; $78cb: $03
    ld c, $0a                                     ; $78cc: $0e $0a
    rrca                                          ; $78ce: $0f
    ld bc, $020e                                  ; $78cf: $01 $0e $02
    inc bc                                        ; $78d2: $03
    ld c, $88                                     ; $78d3: $0e $88
    ld b, $0a                                     ; $78d5: $06 $0a
    ld c, $0a                                     ; $78d7: $0e $0a
    ld c, $0a                                     ; $78d9: $0e $0a
    ld c, $06                                     ; $78db: $0e $06
    inc bc                                        ; $78dd: $03
    ld c, $9c                                     ; $78de: $0e $9c
    ld e, a                                       ; $78e0: $5f
    ld a, a                                       ; $78e1: $7f

jr_0f2_78e2:
    db $db                                        ; $78e2: $db
    cp $92                                        ; $78e3: $fe $92
    rst $38                                       ; $78e5: $ff
    or e                                          ; $78e6: $b3
    cp $f2                                        ; $78e7: $fe $f2
    rst $38                                       ; $78e9: $ff
    sub e                                         ; $78ea: $93
    rst $38                                       ; $78eb: $ff
    di                                            ; $78ec: $f3
    rst $38                                       ; $78ed: $ff
    di                                            ; $78ee: $f3
    sbc a                                         ; $78ef: $9f
    ld [hl], e                                    ; $78f0: $73
    ld e, a                                       ; $78f1: $5f
    dec sp                                        ; $78f2: $3b
    cpl                                           ; $78f3: $2f
    ld d, e                                       ; $78f4: $53
    ld a, a                                       ; $78f5: $7f
    ld b, e                                       ; $78f6: $43
    ld a, a                                       ; $78f7: $7f
    rst $20                                       ; $78f8: $e7
    rst $38                                       ; $78f9: $ff
    add a                                         ; $78fa: $87
    rst $38                                       ; $78fb: $ff
    ld [bc], a                                    ; $78fc: $02
    ld a, a                                       ; $78fd: $7f
    ld [bc], a                                    ; $78fe: $02
    inc a                                         ; $78ff: $3c
    sbc c                                         ; $7900: $99
    ld a, [bc]                                    ; $7901: $0a
    ld c, $0b                                     ; $7902: $0e $0b
    rrca                                          ; $7904: $0f
    dec bc                                        ; $7905: $0b
    rrca                                          ; $7906: $0f
    dec bc                                        ; $7907: $0b
    rrca                                          ; $7908: $0f
    dec bc                                        ; $7909: $0b
    rrca                                          ; $790a: $0f
    dec bc                                        ; $790b: $0b
    rrca                                          ; $790c: $0f
    dec bc                                        ; $790d: $0b
    rrca                                          ; $790e: $0f
    ld a, [bc]                                    ; $790f: $0a
    ld c, $0a                                     ; $7910: $0e $0a
    ld c, $0a                                     ; $7912: $0e $0a
    ld c, $0a                                     ; $7914: $0e $0a
    ld c, $0a                                     ; $7916: $0e $0a
    ld c, $0a                                     ; $7918: $0e $0a
    inc bc                                        ; $791a: $03
    ld c, $02                                     ; $791b: $0e $02
    rrca                                          ; $791d: $0f
    ld [bc], a                                    ; $791e: $02
    ld c, $ff                                     ; $791f: $0e $ff
    dec c                                         ; $7921: $0d
    inc b                                         ; $7922: $04
    ldh a, [rIF]                                  ; $7923: $f0 $0f
    ld [c], a                                     ; $7925: $e2
    ld bc, $f9e2                                  ; $7926: $01 $e2 $f9
    ld [c], a                                     ; $7929: $e2
    db $fd                                        ; $792a: $fd
    ld a, [c]                                     ; $792b: $f2
    ld sp, hl                                     ; $792c: $f9
    ld a, [c]                                     ; $792d: $f2
    db $fd                                        ; $792e: $fd
    ld [bc], a                                    ; $792f: $02
    rlca                                          ; $7930: $07
    sub h                                         ; $7931: $94
    jr jr_0f2_7953                                ; $7932: $18 $1f

    jr nc, jr_0f2_7975                            ; $7934: $30 $3f

    ld h, b                                       ; $7936: $60
    ld a, a                                       ; $7937: $7f
    ld h, c                                       ; $7938: $61
    ld a, a                                       ; $7939: $7f
    or e                                          ; $793a: $b3
    rst $38                                       ; $793b: $ff
    sbc $fd                                       ; $793c: $de $fd
    rst $38                                       ; $793e: $ff
    db $fc                                        ; $793f: $fc
    ld a, a                                       ; $7940: $7f
    ld a, b                                       ; $7941: $78
    cpl                                           ; $7942: $2f
    jr c, @+$21                                   ; $7943: $38 $1f

    inc e                                         ; $7945: $1c
    ld [bc], a                                    ; $7946: $02
    ccf                                           ; $7947: $3f
    adc b                                         ; $7948: $88
    ld e, a                                       ; $7949: $5f
    ld a, l                                       ; $794a: $7d
    ld c, e                                       ; $794b: $4b
    ld a, a                                       ; $794c: $7f
    ld [hl], h                                    ; $794d: $74
    ld a, a                                       ; $794e: $7f
    ld e, e                                       ; $794f: $5b
    ld a, a                                       ; $7950: $7f
    ld [bc], a                                    ; $7951: $02
    inc c                                         ; $7952: $0c

jr_0f2_7953:
    add a                                         ; $7953: $87
    ld b, $0e                                     ; $7954: $06 $0e
    dec b                                         ; $7956: $05
    rrca                                          ; $7957: $0f
    dec c                                         ; $7958: $0d
    rrca                                          ; $7959: $0f
    rlca                                          ; $795a: $07
    ld [bc], a                                    ; $795b: $02
    rrca                                          ; $795c: $0f
    add a                                         ; $795d: $87
    inc bc                                        ; $795e: $03
    ld c, $0a                                     ; $795f: $0e $0a
    rrca                                          ; $7961: $0f
    ld bc, $020e                                  ; $7962: $01 $0e $02
    inc bc                                        ; $7965: $03
    ld c, $81                                     ; $7966: $0e $81
    ld b, $02                                     ; $7968: $06 $02
    ld c, $85                                     ; $796a: $0e $85
    ld a, [bc]                                    ; $796c: $0a
    ld c, $0a                                     ; $796d: $0e $0a
    ld c, $06                                     ; $796f: $0e $06
    inc bc                                        ; $7971: $03
    ld c, $9c                                     ; $7972: $0e $9c
    ld e, a                                       ; $7974: $5f

jr_0f2_7975:
    ld a, a                                       ; $7975: $7f
    ld e, e                                       ; $7976: $5b
    ld a, [hl]                                    ; $7977: $7e
    sub d                                         ; $7978: $92
    rst $38                                       ; $7979: $ff
    sub e                                         ; $797a: $93
    cp $b2                                        ; $797b: $fe $b2
    rst $38                                       ; $797d: $ff
    db $d3                                        ; $797e: $d3
    rst $38                                       ; $797f: $ff
    or e                                          ; $7980: $b3
    rst $38                                       ; $7981: $ff
    ld [hl], e                                    ; $7982: $73
    ld e, a                                       ; $7983: $5f
    dec sp                                        ; $7984: $3b
    cpl                                           ; $7985: $2f
    ccf                                           ; $7986: $3f
    scf                                           ; $7987: $37
    ld c, e                                       ; $7988: $4b
    ld a, a                                       ; $7989: $7f
    ld b, e                                       ; $798a: $43
    ld a, a                                       ; $798b: $7f
    db $e3                                        ; $798c: $e3
    rst $38                                       ; $798d: $ff
    add a                                         ; $798e: $87
    rst $38                                       ; $798f: $ff
    ld [bc], a                                    ; $7990: $02
    ld a, a                                       ; $7991: $7f
    ld [bc], a                                    ; $7992: $02
    inc a                                         ; $7993: $3c
    sbc c                                         ; $7994: $99
    ld a, [bc]                                    ; $7995: $0a
    ld c, $0a                                     ; $7996: $0e $0a
    ld c, $0b                                     ; $7998: $0e $0b
    rrca                                          ; $799a: $0f
    dec bc                                        ; $799b: $0b
    rrca                                          ; $799c: $0f
    dec bc                                        ; $799d: $0b
    rrca                                          ; $799e: $0f
    dec bc                                        ; $799f: $0b
    rrca                                          ; $79a0: $0f
    dec bc                                        ; $79a1: $0b
    rrca                                          ; $79a2: $0f
    ld a, [bc]                                    ; $79a3: $0a
    ld c, $0a                                     ; $79a4: $0e $0a
    ld c, $0a                                     ; $79a6: $0e $0a
    ld c, $0a                                     ; $79a8: $0e $0a
    ld c, $0a                                     ; $79aa: $0e $0a
    ld c, $0a                                     ; $79ac: $0e $0a
    inc bc                                        ; $79ae: $03
    ld c, $02                                     ; $79af: $0e $02
    rrca                                          ; $79b1: $0f
    ld [bc], a                                    ; $79b2: $02
    ld c, $ff                                     ; $79b3: $0e $ff
    dec c                                         ; $79b5: $0d
    inc b                                         ; $79b6: $04
    ldh a, [rIF]                                  ; $79b7: $f0 $0f
    ld [c], a                                     ; $79b9: $e2
    ld bc, $f9e2                                  ; $79ba: $01 $e2 $f9
    ld [c], a                                     ; $79bd: $e2
    db $fd                                        ; $79be: $fd
    ld a, [c]                                     ; $79bf: $f2
    ld hl, sp-$0e                                 ; $79c0: $f8 $f2
    nop                                           ; $79c2: $00
    ld [bc], a                                    ; $79c3: $02
    rlca                                          ; $79c4: $07
    sub h                                         ; $79c5: $94
    jr jr_0f2_79e7                                ; $79c6: $18 $1f

    jr nc, jr_0f2_7a09                            ; $79c8: $30 $3f

    ld h, b                                       ; $79ca: $60
    ld a, a                                       ; $79cb: $7f
    ld h, c                                       ; $79cc: $61
    ld a, a                                       ; $79cd: $7f
    or e                                          ; $79ce: $b3
    rst $38                                       ; $79cf: $ff
    sbc $fd                                       ; $79d0: $de $fd
    rst $38                                       ; $79d2: $ff
    db $fc                                        ; $79d3: $fc
    ld a, a                                       ; $79d4: $7f
    ld a, b                                       ; $79d5: $78
    cpl                                           ; $79d6: $2f
    jr c, @+$21                                   ; $79d7: $38 $1f

    inc e                                         ; $79d9: $1c
    ld [bc], a                                    ; $79da: $02
    ccf                                           ; $79db: $3f
    adc b                                         ; $79dc: $88
    ld e, a                                       ; $79dd: $5f
    ld a, l                                       ; $79de: $7d
    ld c, c                                       ; $79df: $49
    ld a, a                                       ; $79e0: $7f
    halt                                          ; $79e1: $76
    ld a, a                                       ; $79e2: $7f
    ld e, e                                       ; $79e3: $5b
    ld a, a                                       ; $79e4: $7f
    ld [bc], a                                    ; $79e5: $02
    inc c                                         ; $79e6: $0c

jr_0f2_79e7:
    add a                                         ; $79e7: $87
    ld b, $0e                                     ; $79e8: $06 $0e
    dec b                                         ; $79ea: $05
    rrca                                          ; $79eb: $0f
    dec c                                         ; $79ec: $0d
    rrca                                          ; $79ed: $0f
    rlca                                          ; $79ee: $07
    ld [bc], a                                    ; $79ef: $02
    rrca                                          ; $79f0: $0f
    add a                                         ; $79f1: $87
    inc bc                                        ; $79f2: $03
    ld c, $0a                                     ; $79f3: $0e $0a
    rrca                                          ; $79f5: $0f
    ld bc, $020e                                  ; $79f6: $01 $0e $02
    inc bc                                        ; $79f9: $03
    ld c, $88                                     ; $79fa: $0e $88
    ld b, $0a                                     ; $79fc: $06 $0a
    ld c, $0a                                     ; $79fe: $0e $0a
    ld c, $0a                                     ; $7a00: $0e $0a
    ld c, $03                                     ; $7a02: $0e $03
    inc bc                                        ; $7a04: $03
    rrca                                          ; $7a05: $0f
    sbc h                                         ; $7a06: $9c
    ld c, a                                       ; $7a07: $4f
    ld a, a                                       ; $7a08: $7f

jr_0f2_7a09:
    ld c, l                                       ; $7a09: $4d
    ld a, a                                       ; $7a0a: $7f
    xor c                                         ; $7a0b: $a9
    rst $38                                       ; $7a0c: $ff
    reti                                          ; $7a0d: $d9


    rst $38                                       ; $7a0e: $ff
    xor c                                         ; $7a0f: $a9
    rst $38                                       ; $7a10: $ff
    ld sp, hl                                     ; $7a11: $f9
    rst $18                                       ; $7a12: $df
    ld sp, hl                                     ; $7a13: $f9
    cp a                                          ; $7a14: $bf
    ld [hl], c                                    ; $7a15: $71
    ld e, a                                       ; $7a16: $5f
    ld [hl], c                                    ; $7a17: $71
    ld e, a                                       ; $7a18: $5f
    ld sp, $213f                                  ; $7a19: $31 $3f $21
    ccf                                           ; $7a1c: $3f
    ld hl, $733f                                  ; $7a1d: $21 $3f $73
    ld a, a                                       ; $7a20: $7f
    ld b, e                                       ; $7a21: $43
    ld a, a                                       ; $7a22: $7f
    ld [bc], a                                    ; $7a23: $02
    ccf                                           ; $7a24: $3f
    ld [bc], a                                    ; $7a25: $02
    ld e, $99                                     ; $7a26: $1e $99
    ret c                                         ; $7a28: $d8

    ld hl, sp-$2c                                 ; $7a29: $f8 $d4
    ld a, h                                       ; $7a2b: $7c
    ld e, d                                       ; $7a2c: $5a
    cp $d7                                        ; $7a2d: $fe $d7
    ld a, l                                       ; $7a2f: $7d
    ld d, a                                       ; $7a30: $57
    db $fd                                        ; $7a31: $fd
    jp c, $d4fe                                   ; $7a32: $da $fe $d4

    db $f4                                        ; $7a35: $f4
    ret nc                                        ; $7a36: $d0

    ldh a, [$d0]                                  ; $7a37: $f0 $d0
    ldh a, [$d0]                                  ; $7a39: $f0 $d0
    ldh a, [$d0]                                  ; $7a3b: $f0 $d0
    ldh a, [$d0]                                  ; $7a3d: $f0 $d0
    ldh a, [$d0]                                  ; $7a3f: $f0 $d0
    inc bc                                        ; $7a41: $03
    ldh a, [rSC]                                  ; $7a42: $f0 $02
    ld hl, sp+$02                                 ; $7a44: $f8 $02
    ld [hl], b                                    ; $7a46: $70
    rst $38                                       ; $7a47: $ff
    rrca                                          ; $7a48: $0f
    dec b                                         ; $7a49: $05
    ldh a, [rIF]                                  ; $7a4a: $f0 $0f
    ld [c], a                                     ; $7a4c: $e2
    ld bc, $f9e2                                  ; $7a4d: $01 $e2 $f9
    ld [c], a                                     ; $7a50: $e2
    ld bc, $03f1                                  ; $7a51: $01 $f1 $03
    ld a, [c]                                     ; $7a54: $f2
    db $f4                                        ; $7a55: $f4
    ld a, [c]                                     ; $7a56: $f2
    db $fc                                        ; $7a57: $fc
    ld [bc], a                                    ; $7a58: $02
    rlca                                          ; $7a59: $07
    sub h                                         ; $7a5a: $94
    jr jr_0f2_7a7c                                ; $7a5b: $18 $1f

    jr nc, jr_0f2_7a9e                            ; $7a5d: $30 $3f

    ld h, b                                       ; $7a5f: $60
    ld a, a                                       ; $7a60: $7f
    ld h, c                                       ; $7a61: $61
    ld a, a                                       ; $7a62: $7f
    or e                                          ; $7a63: $b3
    rst $38                                       ; $7a64: $ff
    sbc $fd                                       ; $7a65: $de $fd
    rst $38                                       ; $7a67: $ff
    db $fc                                        ; $7a68: $fc

jr_0f2_7a69:
    ld a, a                                       ; $7a69: $7f
    ld a, b                                       ; $7a6a: $78
    cpl                                           ; $7a6b: $2f
    jr c, @+$21                                   ; $7a6c: $38 $1f

    inc e                                         ; $7a6e: $1c
    ld [bc], a                                    ; $7a6f: $02
    ccf                                           ; $7a70: $3f
    adc b                                         ; $7a71: $88
    ld e, a                                       ; $7a72: $5f
    ld a, l                                       ; $7a73: $7d
    ld l, l                                       ; $7a74: $6d
    ld a, a                                       ; $7a75: $7f
    ld [hl], d                                    ; $7a76: $72
    ld a, a                                       ; $7a77: $7f
    sbc l                                         ; $7a78: $9d
    rst $38                                       ; $7a79: $ff
    ld [bc], a                                    ; $7a7a: $02
    ret nz                                        ; $7a7b: $c0

jr_0f2_7a7c:
    add a                                         ; $7a7c: $87
    ld h, b                                       ; $7a7d: $60
    ldh [$50], a                                  ; $7a7e: $e0 $50
    ldh a, [$d0]                                  ; $7a80: $f0 $d0
    ldh a, [rSVBK]                                ; $7a82: $f0 $70
    ld [bc], a                                    ; $7a84: $02
    ldh a, [$88]                                  ; $7a85: $f0 $88
    jr nc, jr_0f2_7a69                            ; $7a87: $30 $e0

    and b                                         ; $7a89: $a0
    ldh a, [rNR10]                                ; $7a8a: $f0 $10
    ldh [rNR41], a                                ; $7a8c: $e0 $20
    ld h, b                                       ; $7a8e: $60
    ld [bc], a                                    ; $7a8f: $02
    ldh [$81], a                                  ; $7a90: $e0 $81
    ld h, b                                       ; $7a92: $60
    ld [bc], a                                    ; $7a93: $02
    ldh [$88], a                                  ; $7a94: $e0 $88
    and b                                         ; $7a96: $a0
    ldh [$d0], a                                  ; $7a97: $e0 $d0
    ldh a, [$38]                                  ; $7a99: $f0 $38
    ld hl, sp-$11                                 ; $7a9b: $f8 $ef
    rst $38                                       ; $7a9d: $ff

jr_0f2_7a9e:
    ld [bc], a                                    ; $7a9e: $02
    ld [bc], a                                    ; $7a9f: $02
    add [hl]                                      ; $7aa0: $86
    rst $30                                       ; $7aa1: $f7
    db $fd                                        ; $7aa2: $fd
    sub a                                         ; $7aa3: $97
    db $fd                                        ; $7aa4: $fd
    set 7, a                                      ; $7aa5: $cb $ff
    ld [bc], a                                    ; $7aa7: $02
    cp [hl]                                       ; $7aa8: $be
    inc d                                         ; $7aa9: $14
    add b                                         ; $7aaa: $80
    ld [bc], a                                    ; $7aab: $02
    ret nz                                        ; $7aac: $c0

    adc d                                         ; $7aad: $8a
    ld e, $1f                                     ; $7aae: $1e $1f
    ld sp, $7b3f                                  ; $7ab0: $31 $3f $7b
    ld c, a                                       ; $7ab3: $4f
    ld a, e                                       ; $7ab4: $7b
    ld c, a                                       ; $7ab5: $4f
    rst $38                                       ; $7ab6: $ff
    cp a                                          ; $7ab7: $bf
    ld [bc], a                                    ; $7ab8: $02
    ld c, a                                       ; $7ab9: $4f
    ld [$8401], sp                                ; $7aba: $08 $01 $84
    ld [bc], a                                    ; $7abd: $02
    inc bc                                        ; $7abe: $03
    ld [bc], a                                    ; $7abf: $02
    inc bc                                        ; $7ac0: $03
    ld [bc], a                                    ; $7ac1: $02
    rlca                                          ; $7ac2: $07
    add d                                         ; $7ac3: $82
    inc b                                         ; $7ac4: $04
    rlca                                          ; $7ac5: $07
    ld [bc], a                                    ; $7ac6: $02
    inc bc                                        ; $7ac7: $03
    ld [bc], a                                    ; $7ac8: $02
    ld bc, $bc9b                                  ; $7ac9: $01 $9b $bc
    cp $9c                                        ; $7acc: $fe $9c
    or $94                                        ; $7ace: $f6 $94
    cp $9c                                        ; $7ad0: $fe $9c
    or $94                                        ; $7ad2: $f6 $94
    cp $1c                                        ; $7ad4: $fe $1c
    cp $1c                                        ; $7ad6: $fe $1c
    cp $1c                                        ; $7ad8: $fe $1c
    cp $1c                                        ; $7ada: $fe $1c
    cp $1c                                        ; $7adc: $fe $1c
    cp $1c                                        ; $7ade: $fe $1c
    cp $1c                                        ; $7ae0: $fe $1c
    cp $3c                                        ; $7ae2: $fe $3c
    cp $3e                                        ; $7ae4: $fe $3e
    inc bc                                        ; $7ae6: $03
    cp $02                                        ; $7ae7: $fe $02
    rst $20                                       ; $7ae9: $e7
    rst $38                                       ; $7aea: $ff
    ld de, $f006                                  ; $7aeb: $11 $06 $f0
    rrca                                          ; $7aee: $0f
    ld [c], a                                     ; $7aef: $e2
    ld bc, $f7e3                                  ; $7af0: $01 $e3 $f7
    ld [c], a                                     ; $7af3: $e2
    rst $38                                       ; $7af4: $ff
    ldh a, [rDIV]                                 ; $7af5: $f0 $04
    ld a, [c]                                     ; $7af7: $f2
    di                                            ; $7af8: $f3
    ld a, [c]                                     ; $7af9: $f2
    ei                                            ; $7afa: $fb
    ld a, [c]                                     ; $7afb: $f2
    db $fd                                        ; $7afc: $fd
    ld [bc], a                                    ; $7afd: $02
    inc bc                                        ; $7afe: $03

Jump_0f2_7aff:
    adc c                                         ; $7aff: $89
    ld b, $07                                     ; $7b00: $06 $07
    inc c                                         ; $7b02: $0c
    rrca                                          ; $7b03: $0f
    inc c                                         ; $7b04: $0c
    rrca                                          ; $7b05: $0f
    inc d                                         ; $7b06: $14
    rra                                           ; $7b07: $1f
    ld [de], a                                    ; $7b08: $12
    inc bc                                        ; $7b09: $03
    rra                                           ; $7b0a: $1f
    ld [bc], a                                    ; $7b0b: $02
    rrca                                          ; $7b0c: $0f
    ld [bc], a                                    ; $7b0d: $02
    rlca                                          ; $7b0e: $07
    add c                                         ; $7b0f: $81
    dec b                                         ; $7b10: $05
    inc bc                                        ; $7b11: $03
    rlca                                          ; $7b12: $07
    adc d                                         ; $7b13: $8a
    dec bc                                        ; $7b14: $0b
    rrca                                          ; $7b15: $0f
    inc c                                         ; $7b16: $0c
    rrca                                          ; $7b17: $0f
    ld [de], a                                    ; $7b18: $12
    rra                                           ; $7b19: $1f
    ei                                            ; $7b1a: $fb
    rst $38                                       ; $7b1b: $ff
    xor d                                         ; $7b1c: $aa
    rst $38                                       ; $7b1d: $ff
    ld [bc], a                                    ; $7b1e: $02
    ld hl, sp-$6c                                 ; $7b1f: $f8 $94
    inc b                                         ; $7b21: $04
    db $fc                                        ; $7b22: $fc
    ld c, $fe                                     ; $7b23: $0e $fe
    ld a, [de]                                    ; $7b25: $1a
    cp $1e                                        ; $7b26: $fe $1e
    cp $3e                                        ; $7b28: $fe $3e
    and $dc                                       ; $7b2a: $e6 $dc
    db $f4                                        ; $7b2c: $f4
    cp $82                                        ; $7b2d: $fe $82
    db $fc                                        ; $7b2f: $fc
    add h                                         ; $7b30: $84
    cp h                                          ; $7b31: $bc
    call nz, $ccfc                                ; $7b32: $c4 $fc $cc
    ld [bc], a                                    ; $7b35: $02
    db $fc                                        ; $7b36: $fc
    adc b                                         ; $7b37: $88
    db $f4                                        ; $7b38: $f4
    cp h                                          ; $7b39: $bc
    cp d                                          ; $7b3a: $ba
    cp $47                                        ; $7b3b: $fe $47
    rst $38                                       ; $7b3d: $ff
    cp l                                          ; $7b3e: $bd
    rst $38                                       ; $7b3f: $ff
    ld [bc], a                                    ; $7b40: $02
    ld c, $88                                     ; $7b41: $0e $88
    rla                                           ; $7b43: $17
    dec e                                         ; $7b44: $1d
    rst $30                                       ; $7b45: $f7
    db $fd                                        ; $7b46: $fd
    sbc e                                         ; $7b47: $9b
    rst $38                                       ; $7b48: $ff
    adc $fe                                       ; $7b49: $ce $fe
    ld [bc], a                                    ; $7b4b: $02
    cp b                                          ; $7b4c: $b8
    ld a, [bc]                                    ; $7b4d: $0a
    add b                                         ; $7b4e: $80
    ld a, [bc]                                    ; $7b4f: $0a
    nop                                           ; $7b50: $00
    ld [bc], a                                    ; $7b51: $02
    ld [hl], b                                    ; $7b52: $70
    add h                                         ; $7b53: $84
    db $fd                                        ; $7b54: $fd
    sub a                                         ; $7b55: $97
    ld a, l                                       ; $7b56: $7d
    ld h, a                                       ; $7b57: $67
    ld [bc], a                                    ; $7b58: $02
    rra                                           ; $7b59: $1f
    ld [bc], a                                    ; $7b5a: $02
    rlca                                          ; $7b5b: $07
    inc c                                         ; $7b5c: $0c
    nop                                           ; $7b5d: $00
    ld [bc], a                                    ; $7b5e: $02
    ld bc, $0302                                  ; $7b5f: $01 $02 $03
    add d                                         ; $7b62: $82
    ld [bc], a                                    ; $7b63: $02
    inc bc                                        ; $7b64: $03
    ld [bc], a                                    ; $7b65: $02
    ld bc, $0002                                  ; $7b66: $01 $02 $00
    ld [bc], a                                    ; $7b69: $02
    rrca                                          ; $7b6a: $0f
    sbc c                                         ; $7b6b: $99
    rst $20                                       ; $7b6c: $e7
    db $fd                                        ; $7b6d: $fd
    push hl                                       ; $7b6e: $e5
    rst $38                                       ; $7b6f: $ff
    rst $00                                       ; $7b70: $c7
    db $fd                                        ; $7b71: $fd
    ld b, l                                       ; $7b72: $45
    ld a, a                                       ; $7b73: $7f
    ld b, a                                       ; $7b74: $47
    ld a, a                                       ; $7b75: $7f
    ld b, a                                       ; $7b76: $47
    ld a, a                                       ; $7b77: $7f
    ld c, a                                       ; $7b78: $4f
    ld a, a                                       ; $7b79: $7f
    adc a                                         ; $7b7a: $8f
    rst $38                                       ; $7b7b: $ff
    adc a                                         ; $7b7c: $8f
    rst $38                                       ; $7b7d: $ff
    adc a                                         ; $7b7e: $8f
    rst $38                                       ; $7b7f: $ff
    rrca                                          ; $7b80: $0f
    rst $38                                       ; $7b81: $ff
    sbc a                                         ; $7b82: $9f
    rst $38                                       ; $7b83: $ff
    rra                                           ; $7b84: $1f
    inc bc                                        ; $7b85: $03
    rst $38                                       ; $7b86: $ff
    ld [bc], a                                    ; $7b87: $02
    di                                            ; $7b88: $f3
    adc a                                         ; $7b89: $8f
    nop                                           ; $7b8a: $00
    ld [bc], a                                    ; $7b8b: $02
    nop                                           ; $7b8c: $00
    ld [bc], a                                    ; $7b8d: $02
    nop                                           ; $7b8e: $00
    ld [bc], a                                    ; $7b8f: $02
    nop                                           ; $7b90: $00
    ld [bc], a                                    ; $7b91: $02
    nop                                           ; $7b92: $00
    ld [bc], a                                    ; $7b93: $02
    nop                                           ; $7b94: $00
    ld [bc], a                                    ; $7b95: $02
    nop                                           ; $7b96: $00
    ld [bc], a                                    ; $7b97: $02
    nop                                           ; $7b98: $00
    dec c                                         ; $7b99: $0d
    ld [bc], a                                    ; $7b9a: $02
    ld [bc], a                                    ; $7b9b: $02
    inc bc                                        ; $7b9c: $03
    ld [bc], a                                    ; $7b9d: $02
    ld [bc], a                                    ; $7b9e: $02
    rst $38                                       ; $7b9f: $ff
    rrca                                          ; $7ba0: $0f
    dec b                                         ; $7ba1: $05
    ldh a, [rIF]                                  ; $7ba2: $f0 $0f
    ld [c], a                                     ; $7ba4: $e2
    ld bc, $f3ed                                  ; $7ba5: $01 $ed $f3
    ld [c], a                                     ; $7ba8: $e2
    ei                                            ; $7ba9: $fb
    ld [c], a                                     ; $7baa: $e2
    rst $38                                       ; $7bab: $ff
    ld a, [c]                                     ; $7bac: $f2
    ld a, [$02f2]                                 ; $7bad: $fa $f2 $02
    ld [bc], a                                    ; $7bb0: $02
    ld a, h                                       ; $7bb1: $7c
    adc b                                         ; $7bb2: $88
    ei                                            ; $7bb3: $fb
    xor a                                         ; $7bb4: $af
    ld a, d                                       ; $7bb5: $7a
    ld l, a                                       ; $7bb6: $6f
    inc d                                         ; $7bb7: $14
    rra                                           ; $7bb8: $1f
    ld e, $1f                                     ; $7bb9: $1e $1f
    ld [bc], a                                    ; $7bbb: $02
    ld bc, $0010                                  ; $7bbc: $01 $10 $00
    inc b                                         ; $7bbf: $04
    ld bc, $0702                                  ; $7bc0: $01 $02 $07
    sbc [hl]                                      ; $7bc3: $9e
    jr jr_0f2_7be5                                ; $7bc4: $18 $1f

    jr nc, jr_0f2_7c07                            ; $7bc6: $30 $3f

    ld [hl], b                                    ; $7bc8: $70
    ld a, a                                       ; $7bc9: $7f
    ld d, b                                       ; $7bca: $50
    ld a, a                                       ; $7bcb: $7f
    sub c                                         ; $7bcc: $91
    rst $38                                       ; $7bcd: $ff
    set 7, [hl]                                   ; $7bce: $cb $fe
    rst $38                                       ; $7bd0: $ff
    cp $7f                                        ; $7bd1: $fe $7f
    ld a, h                                       ; $7bd3: $7c
    cpl                                           ; $7bd4: $2f
    ld a, $2f                                     ; $7bd5: $3e $2f
    ld a, $7f                                     ; $7bd7: $3e $7f
    ld a, l                                       ; $7bd9: $7d
    rst $08                                       ; $7bda: $cf
    rst $38                                       ; $7bdb: $ff
    pop af                                        ; $7bdc: $f1
    rst $38                                       ; $7bdd: $ff
    ld e, [hl]                                    ; $7bde: $5e
    rst $38                                       ; $7bdf: $ff
    dec [hl]                                      ; $7be0: $35
    rst $38                                       ; $7be1: $ff
    ld [bc], a                                    ; $7be2: $02
    inc c                                         ; $7be3: $0c
    add [hl]                                      ; $7be4: $86

jr_0f2_7be5:
    ld [bc], a                                    ; $7be5: $02
    ld c, $03                                     ; $7be6: $0e $03
    rrca                                          ; $7be8: $0f
    dec b                                         ; $7be9: $05
    rrca                                          ; $7bea: $0f
    inc bc                                        ; $7beb: $03
    ld c, $8b                                     ; $7bec: $0e $8b
    ld a, [bc]                                    ; $7bee: $0a
    ld b, $0e                                     ; $7bef: $06 $0e
    rrca                                          ; $7bf1: $0f
    ld bc, $020e                                  ; $7bf2: $01 $0e $02
    ld c, $02                                     ; $7bf5: $0e $02
    inc c                                         ; $7bf7: $0c
    inc b                                         ; $7bf8: $04
    inc b                                         ; $7bf9: $04
    inc c                                         ; $7bfa: $0c
    add h                                         ; $7bfb: $84
    ld a, [bc]                                    ; $7bfc: $0a
    ld c, $06                                     ; $7bfd: $0e $06
    ld c, $02                                     ; $7bff: $0e $02
    inc c                                         ; $7c01: $0c
    sbc h                                         ; $7c02: $9c
    ld a, c                                       ; $7c03: $79
    ld a, a                                       ; $7c04: $7f
    add hl, de                                    ; $7c05: $19
    rra                                           ; $7c06: $1f

jr_0f2_7c07:
    ld de, $111f                                  ; $7c07: $11 $1f $11
    rra                                           ; $7c0a: $1f
    inc hl                                        ; $7c0b: $23
    ccf                                           ; $7c0c: $3f
    inc hl                                        ; $7c0d: $23
    ccf                                           ; $7c0e: $3f
    ld b, a                                       ; $7c0f: $47
    ld a, a                                       ; $7c10: $7f
    ld b, a                                       ; $7c11: $47
    ld a, a                                       ; $7c12: $7f
    ld b, a                                       ; $7c13: $47
    ld a, a                                       ; $7c14: $7f
    rrca                                          ; $7c15: $0f
    ld a, a                                       ; $7c16: $7f
    rrca                                          ; $7c17: $0f
    ld a, a                                       ; $7c18: $7f
    adc a                                         ; $7c19: $8f
    rst $38                                       ; $7c1a: $ff
    rst $28                                       ; $7c1b: $ef
    rst $38                                       ; $7c1c: $ff
    adc a                                         ; $7c1d: $8f
    rst $38                                       ; $7c1e: $ff
    ld [bc], a                                    ; $7c1f: $02
    ld a, a                                       ; $7c20: $7f
    ld [bc], a                                    ; $7c21: $02
    ld [hl], c                                    ; $7c22: $71
    ld [bc], a                                    ; $7c23: $02
    cp $88                                        ; $7c24: $fe $88
    rst $10                                       ; $7c26: $d7
    ld a, l                                       ; $7c27: $7d
    ld d, a                                       ; $7c28: $57
    db $fd                                        ; $7c29: $fd
    sub $7e                                       ; $7c2a: $d6 $7e
    ld e, b                                       ; $7c2c: $58
    ld hl, sp+$06                                 ; $7c2d: $f8 $06
    ldh [rSC], a                                  ; $7c2f: $e0 $02
    ret nz                                        ; $7c31: $c0

    ld b, $e0                                     ; $7c32: $06 $e0
    inc b                                         ; $7c34: $04
    ret nz                                        ; $7c35: $c0

    ld [bc], a                                    ; $7c36: $02
    ldh [rSC], a                                  ; $7c37: $e0 $02
    ret nz                                        ; $7c39: $c0

    rst $38                                       ; $7c3a: $ff
    dec c                                         ; $7c3b: $0d
    inc b                                         ; $7c3c: $04
    ldh a, [rIF]                                  ; $7c3d: $f0 $0f
    ld [c], a                                     ; $7c3f: $e2
    ld bc, $fae4                                  ; $7c40: $01 $e4 $fa
    db $e3                                        ; $7c43: $e3
    ld bc, $f9f3                                  ; $7c44: $01 $f3 $f9
    di                                            ; $7c47: $f3
    ld bc, $0302                                  ; $7c48: $01 $02 $03
    adc d                                         ; $7c4b: $8a
    ld b, $07                                     ; $7c4c: $06 $07
    ld c, $0f                                     ; $7c4e: $0e $0f
    ld a, [bc]                                    ; $7c50: $0a
    rrca                                          ; $7c51: $0f
    ld [de], a                                    ; $7c52: $12
    rra                                           ; $7c53: $1f
    add hl, de                                    ; $7c54: $19
    rra                                           ; $7c55: $1f
    ld [bc], a                                    ; $7c56: $02
    ld a, a                                       ; $7c57: $7f
    adc [hl]                                      ; $7c58: $8e
    rst $38                                       ; $7c59: $ff
    sub e                                         ; $7c5a: $93
    ld a, a                                       ; $7c5b: $7f
    ld [hl], e                                    ; $7c5c: $73
    dec l                                         ; $7c5d: $2d
    ccf                                           ; $7c5e: $3f
    inc hl                                        ; $7c5f: $23
    ccf                                           ; $7c60: $3f
    dec a                                         ; $7c61: $3d
    ccf                                           ; $7c62: $3f
    ld de, $0a1f                                  ; $7c63: $11 $1f $0a
    rrca                                          ; $7c66: $0f
    ld [bc], a                                    ; $7c67: $02
    rlca                                          ; $7c68: $07
    add d                                         ; $7c69: $82
    ld b, $07                                     ; $7c6a: $06 $07
    ld [bc], a                                    ; $7c6c: $02
    ld a, h                                       ; $7c6d: $7c
    sbc h                                         ; $7c6e: $9c
    ld [bc], a                                    ; $7c6f: $02
    ld a, [hl]                                    ; $7c70: $7e
    inc bc                                        ; $7c71: $03
    ld a, a                                       ; $7c72: $7f
    dec b                                         ; $7c73: $05
    ld a, a                                       ; $7c74: $7f
    ld c, $7e                                     ; $7c75: $0e $7e
    ld e, $7a                                     ; $7c77: $1e $7a
    ld [hl], $6e                                  ; $7c79: $36 $6e
    ld a, a                                       ; $7c7b: $7f
    ld h, c                                       ; $7c7c: $61
    ld a, [hl]                                    ; $7c7d: $7e
    ld b, d                                       ; $7c7e: $42

Call_0f2_7c7f:
    ld a, [hl]                                    ; $7c7f: $7e
    ld h, d                                       ; $7c80: $62
    ld a, h                                       ; $7c81: $7c
    ld h, h                                       ; $7c82: $64
    ld a, h                                       ; $7c83: $7c
    ld e, h                                       ; $7c84: $5c
    inc a                                         ; $7c85: $3c
    ld a, h                                       ; $7c86: $7c
    ld c, d                                       ; $7c87: $4a
    ld a, [hl]                                    ; $7c88: $7e
    ld h, [hl]                                    ; $7c89: $66
    ld a, [hl]                                    ; $7c8a: $7e
    ld [bc], a                                    ; $7c8b: $02
    ld a, h                                       ; $7c8c: $7c
    ld [bc], a                                    ; $7c8d: $02
    nop                                           ; $7c8e: $00
    sub l                                         ; $7c8f: $95
    ld [bc], a                                    ; $7c90: $02
    inc bc                                        ; $7c91: $03
    inc b                                         ; $7c92: $04
    rlca                                          ; $7c93: $07
    ld [$100f], sp                                ; $7c94: $08 $0f $10
    rra                                           ; $7c97: $1f
    jr nz, jr_0f2_7cd9                            ; $7c98: $20 $3f

    ld b, c                                       ; $7c9a: $41
    ld a, a                                       ; $7c9b: $7f
    ld b, e                                       ; $7c9c: $43
    ld a, a                                       ; $7c9d: $7f
    jp $a7ff                                      ; $7c9e: $c3 $ff $a7


    rst $38                                       ; $7ca1: $ff
    rst $10                                       ; $7ca2: $d7
    rst $38                                       ; $7ca3: $ff
    daa                                           ; $7ca4: $27
    dec b                                         ; $7ca5: $05
    ccf                                           ; $7ca6: $3f
    ld [bc], a                                    ; $7ca7: $02
    add hl, sp                                    ; $7ca8: $39
    ld [bc], a                                    ; $7ca9: $02
    nop                                           ; $7caa: $00
    adc c                                         ; $7cab: $89
    ld a, [hl+]                                   ; $7cac: $2a
    ld a, [hl]                                    ; $7cad: $7e
    ccf                                           ; $7cae: $3f
    db $ed                                        ; $7caf: $ed
    ld c, e                                       ; $7cb0: $4b
    rst $38                                       ; $7cb1: $ff
    ld a, [hl]                                    ; $7cb2: $7e
    sbc $94                                       ; $7cb3: $de $94
    inc bc                                        ; $7cb5: $03
    db $fc                                        ; $7cb6: $fc
    ld [bc], a                                    ; $7cb7: $02
    ld hl, sp+$08                                 ; $7cb8: $f8 $08
    ldh a, [rSC]                                  ; $7cba: $f0 $02
    ldh [rSC], a                                  ; $7cbc: $e0 $02
    ret nz                                        ; $7cbe: $c0

    inc b                                         ; $7cbf: $04
    ldh [rSC], a                                  ; $7cc0: $e0 $02
    nop                                           ; $7cc2: $00
    rst $38                                       ; $7cc3: $ff
    dec c                                         ; $7cc4: $0d
    inc b                                         ; $7cc5: $04
    ldh a, [rIF]                                  ; $7cc6: $f0 $0f
    ld [c], a                                     ; $7cc8: $e2
    ld bc, $fee3                                  ; $7cc9: $01 $e3 $fe
    db $e3                                        ; $7ccc: $e3
    ld [bc], a                                    ; $7ccd: $02
    di                                            ; $7cce: $f3
    ld hl, sp-$0d                                 ; $7ccf: $f8 $f3
    rst $38                                       ; $7cd1: $ff
    ld [bc], a                                    ; $7cd2: $02
    rlca                                          ; $7cd3: $07
    sbc [hl]                                      ; $7cd4: $9e
    jr jr_0f2_7cf6                                ; $7cd5: $18 $1f

    jr nc, jr_0f2_7d18                            ; $7cd7: $30 $3f

jr_0f2_7cd9:
    ld a, b                                       ; $7cd9: $78
    ld a, a                                       ; $7cda: $7f
    ld e, [hl]                                    ; $7cdb: $5e
    ld [hl], a                                    ; $7cdc: $77
    sbc a                                         ; $7cdd: $9f
    ei                                            ; $7cde: $fb
    rst $08                                       ; $7cdf: $cf
    db $fc                                        ; $7ce0: $fc
    rst $38                                       ; $7ce1: $ff
    db $fc                                        ; $7ce2: $fc
    ld a, a                                       ; $7ce3: $7f
    ld a, l                                       ; $7ce4: $7d
    ld c, d                                       ; $7ce5: $4a
    ld a, a                                       ; $7ce6: $7f
    ld e, h                                       ; $7ce7: $5c
    ld a, a                                       ; $7ce8: $7f
    cp e                                          ; $7ce9: $bb
    rst $38                                       ; $7cea: $ff
    reti                                          ; $7ceb: $d9


    rst $38                                       ; $7cec: $ff
    ld a, e                                       ; $7ced: $7b
    ld a, a                                       ; $7cee: $7f
    ld h, l                                       ; $7cef: $65
    ld a, a                                       ; $7cf0: $7f
    sbc $ff                                       ; $7cf1: $de $ff
    ld [bc], a                                    ; $7cf3: $02
    inc c                                         ; $7cf4: $0c
    add [hl]                                      ; $7cf5: $86

jr_0f2_7cf6:
    ld [bc], a                                    ; $7cf6: $02
    ld c, $03                                     ; $7cf7: $0e $03
    rrca                                          ; $7cf9: $0f
    dec b                                         ; $7cfa: $05
    rrca                                          ; $7cfb: $0f
    inc bc                                        ; $7cfc: $03
    ld c, $81                                     ; $7cfd: $0e $81
    ld a, [bc]                                    ; $7cff: $0a
    ld [bc], a                                    ; $7d00: $02
    ld c, $86                                     ; $7d01: $0e $86
    rrca                                          ; $7d03: $0f
    add hl, bc                                    ; $7d04: $09
    ld c, $0a                                     ; $7d05: $0e $0a
    ld c, $0a                                     ; $7d07: $0e $0a
    ld [bc], a                                    ; $7d09: $02
    inc c                                         ; $7d0a: $0c
    inc b                                         ; $7d0b: $04
    ld [$0c02], sp                                ; $7d0c: $08 $02 $0c

Call_0f2_7d0f:
    add c                                         ; $7d0f: $81
    inc b                                         ; $7d10: $04
    inc bc                                        ; $7d11: $03
    inc c                                         ; $7d12: $0c
    inc b                                         ; $7d13: $04
    inc bc                                        ; $7d14: $03
    sub d                                         ; $7d15: $92
    ld b, $07                                     ; $7d16: $06 $07

jr_0f2_7d18:
    jr jr_0f2_7d39                                ; $7d18: $18 $1f

    jr nz, @+$41                                  ; $7d1a: $20 $3f

    ld b, c                                       ; $7d1c: $41
    ld a, a                                       ; $7d1d: $7f
    add e                                         ; $7d1e: $83
    rst $38                                       ; $7d1f: $ff
    add e                                         ; $7d20: $83
    rst $38                                       ; $7d21: $ff
    rst $20                                       ; $7d22: $e7
    rst $38                                       ; $7d23: $ff
    add a                                         ; $7d24: $87
    rst $38                                       ; $7d25: $ff
    ld h, a                                       ; $7d26: $67
    ld a, a                                       ; $7d27: $7f
    ld b, $1f                                     ; $7d28: $06 $1f
    ld [bc], a                                    ; $7d2a: $02
    inc e                                         ; $7d2b: $1c
    ld [bc], a                                    ; $7d2c: $02
    nop                                           ; $7d2d: $00
    adc c                                         ; $7d2e: $89
    dec hl                                        ; $7d2f: $2b
    ld a, a                                       ; $7d30: $7f
    rrca                                          ; $7d31: $0f
    ld a, e                                       ; $7d32: $7b
    inc de                                        ; $7d33: $13
    ld a, a                                       ; $7d34: $7f
    ld l, $76                                     ; $7d35: $2e $76
    ld h, [hl]                                    ; $7d37: $66
    inc bc                                        ; $7d38: $03

jr_0f2_7d39:
    ld a, [hl]                                    ; $7d39: $7e
    ld [$047c], sp                                ; $7d3a: $08 $7c $04
    ld a, b                                       ; $7d3d: $78
    inc b                                         ; $7d3e: $04
    ld [hl], b                                    ; $7d3f: $70
    ld [bc], a                                    ; $7d40: $02
    ld a, b                                       ; $7d41: $78
    ld [bc], a                                    ; $7d42: $02
    nop                                           ; $7d43: $00
    rst $38                                       ; $7d44: $ff
    rrca                                          ; $7d45: $0f
    dec b                                         ; $7d46: $05
    ldh a, [rIF]                                  ; $7d47: $f0 $0f
    ld [c], a                                     ; $7d49: $e2
    ld bc, $fee3                                  ; $7d4a: $01 $e3 $fe
    db $e3                                        ; $7d4d: $e3
    ld b, $ef                                     ; $7d4e: $06 $ef
    ld [$f8f3], sp                                ; $7d50: $08 $f3 $f8
    di                                            ; $7d53: $f3
    rst $38                                       ; $7d54: $ff
    ld [bc], a                                    ; $7d55: $02
    rlca                                          ; $7d56: $07
    sbc [hl]                                      ; $7d57: $9e
    jr jr_0f2_7d79                                ; $7d58: $18 $1f

    jr nc, jr_0f2_7d9b                            ; $7d5a: $30 $3f

    ld [hl], b                                    ; $7d5c: $70
    ld a, a                                       ; $7d5d: $7f
    ld d, b                                       ; $7d5e: $50
    ld a, a                                       ; $7d5f: $7f
    sub c                                         ; $7d60: $91
    rst $38                                       ; $7d61: $ff
    set 7, [hl]                                   ; $7d62: $cb $fe
    rst $38                                       ; $7d64: $ff
    cp $7f                                        ; $7d65: $fe $7f
    ld a, h                                       ; $7d67: $7c
    cpl                                           ; $7d68: $2f
    ld a, $5f                                     ; $7d69: $3e $5f
    ld a, [hl]                                    ; $7d6b: $7e
    ld a, a                                       ; $7d6c: $7f

jr_0f2_7d6d:
    ld a, l                                       ; $7d6d: $7d
    ld c, a                                       ; $7d6e: $4f
    ld a, a                                       ; $7d6f: $7f
    halt                                          ; $7d70: $76
    ld a, a                                       ; $7d71: $7f
    ldh a, [rIE]                                  ; $7d72: $f0 $ff
    xor a                                         ; $7d74: $af
    rst $38                                       ; $7d75: $ff
    ld [bc], a                                    ; $7d76: $02
    ret nz                                        ; $7d77: $c0

    add [hl]                                      ; $7d78: $86

jr_0f2_7d79:
    jr nz, @-$1e                                  ; $7d79: $20 $e0

    jr nc, jr_0f2_7d6d                            ; $7d7b: $30 $f0

    ld d, b                                       ; $7d7d: $50
    ldh a, [$03]                                  ; $7d7e: $f0 $03
    ldh [$8b], a                                  ; $7d80: $e0 $8b
    and b                                         ; $7d82: $a0
    ld h, b                                       ; $7d83: $60
    ldh [$f0], a                                  ; $7d84: $e0 $f0
    db $10                                        ; $7d86: $10
    ldh [rNR41], a                                ; $7d87: $e0 $20
    ldh [rNR41], a                                ; $7d89: $e0 $20
    ret nz                                        ; $7d8b: $c0

    ld b, b                                       ; $7d8c: $40
    ld [bc], a                                    ; $7d8d: $02
    db $fc                                        ; $7d8e: $fc
    add [hl]                                      ; $7d8f: $86
    xor a                                         ; $7d90: $af
    ei                                            ; $7d91: $fb
    ld e, a                                       ; $7d92: $5f
    ld a, [c]                                     ; $7d93: $f2
    ld c, a                                       ; $7d94: $4f
    rst $38                                       ; $7d95: $ff
    ld [bc], a                                    ; $7d96: $02
    ldh a, [rSC]                                  ; $7d97: $f0 $02
    ld [bc], a                                    ; $7d99: $02
    add d                                         ; $7d9a: $82

jr_0f2_7d9b:
    inc bc                                        ; $7d9b: $03
    ld bc, $0202                                  ; $7d9c: $01 $02 $02
    ld a, [de]                                    ; $7d9f: $1a
    nop                                           ; $7da0: $00
    add h                                         ; $7da1: $84
    dec b                                         ; $7da2: $05
    rlca                                          ; $7da3: $07
    dec b                                         ; $7da4: $05
    rlca                                          ; $7da5: $07
    inc b                                         ; $7da6: $04
    inc bc                                        ; $7da7: $03
    adc [hl]                                      ; $7da8: $8e
    ld [bc], a                                    ; $7da9: $02
    inc bc                                        ; $7daa: $03
    inc b                                         ; $7dab: $04
    rlca                                          ; $7dac: $07
    ld a, b                                       ; $7dad: $78
    ld a, a                                       ; $7dae: $7f
    and b                                         ; $7daf: $a0
    rst $38                                       ; $7db0: $ff
    ld d, b                                       ; $7db1: $50
    ld a, a                                       ; $7db2: $7f
    ld b, b                                       ; $7db3: $40
    ld a, a                                       ; $7db4: $7f
    ld sp, $023f                                  ; $7db5: $31 $3f $02
    rrca                                          ; $7db8: $0f
    inc b                                         ; $7db9: $04
    rra                                           ; $7dba: $1f
    ld [bc], a                                    ; $7dbb: $02
    inc e                                         ; $7dbc: $1c
    ld [bc], a                                    ; $7dbd: $02
    nop                                           ; $7dbe: $00
    sub d                                         ; $7dbf: $92
    ld c, a                                       ; $7dc0: $4f
    ld a, a                                       ; $7dc1: $7f
    ld c, e                                       ; $7dc2: $4b
    ld a, a                                       ; $7dc3: $7f
    dec bc                                        ; $7dc4: $0b
    ld a, a                                       ; $7dc5: $7f
    ld c, $7e                                     ; $7dc6: $0e $7e
    ld d, $7e                                     ; $7dc8: $16 $7e
    ld e, $7e                                     ; $7dca: $1e $7e
    ld e, $7e                                     ; $7dcc: $1e $7e
    ld e, $7e                                     ; $7dce: $1e $7e
    ld a, $7e                                     ; $7dd0: $3e $7e
    ld b, $7c                                     ; $7dd2: $06 $7c
    ld [bc], a                                    ; $7dd4: $02
    ld [hl], b                                    ; $7dd5: $70
    ld [bc], a                                    ; $7dd6: $02
    ld a, b                                       ; $7dd7: $78
    ld [bc], a                                    ; $7dd8: $02
    jr c, jr_0f2_7ddd                             ; $7dd9: $38 $02

    nop                                           ; $7ddb: $00
    rst $38                                       ; $7ddc: $ff

jr_0f2_7ddd:
    rrca                                          ; $7ddd: $0f
    dec b                                         ; $7dde: $05
    ldh a, [rIF]                                  ; $7ddf: $f0 $0f
    ld [c], a                                     ; $7de1: $e2
    ld bc, $fbe3                                  ; $7de2: $01 $e3 $fb
    db $e3                                        ; $7de5: $e3
    rst $38                                       ; $7de6: $ff
    di                                            ; $7de7: $f3
    ld sp, hl                                     ; $7de8: $f9
    di                                            ; $7de9: $f3
    ld bc, $04f3                                  ; $7dea: $01 $f3 $04
    ld [bc], a                                    ; $7ded: $02
    rlca                                          ; $7dee: $07
    sub h                                         ; $7def: $94
    jr jr_0f2_7e11                                ; $7df0: $18 $1f

    jr nc, jr_0f2_7e33                            ; $7df2: $30 $3f

    ld h, b                                       ; $7df4: $60
    ld a, a                                       ; $7df5: $7f
    ld h, c                                       ; $7df6: $61
    ld a, a                                       ; $7df7: $7f
    or e                                          ; $7df8: $b3
    rst $38                                       ; $7df9: $ff
    sbc $fd                                       ; $7dfa: $de $fd
    rst $38                                       ; $7dfc: $ff
    db $fc                                        ; $7dfd: $fc
    ld a, a                                       ; $7dfe: $7f
    ld a, b                                       ; $7dff: $78
    dec hl                                        ; $7e00: $2b
    inc a                                         ; $7e01: $3c
    ccf                                           ; $7e02: $3f
    inc a                                         ; $7e03: $3c
    ld [bc], a                                    ; $7e04: $02
    ld a, a                                       ; $7e05: $7f
    adc b                                         ; $7e06: $88
    ld c, e                                       ; $7e07: $4b
    ld a, a                                       ; $7e08: $7f
    ld a, h                                       ; $7e09: $7c
    ld a, a                                       ; $7e0a: $7f
    ld h, a                                       ; $7e0b: $67
    ld a, a                                       ; $7e0c: $7f
    ld e, e                                       ; $7e0d: $5b
    ld a, a                                       ; $7e0e: $7f
    ld [bc], a                                    ; $7e0f: $02
    inc c                                         ; $7e10: $0c

jr_0f2_7e11:
    add a                                         ; $7e11: $87
    ld b, $0e                                     ; $7e12: $06 $0e
    dec b                                         ; $7e14: $05
    rrca                                          ; $7e15: $0f
    dec c                                         ; $7e16: $0d
    rrca                                          ; $7e17: $0f
    rlca                                          ; $7e18: $07
    ld [bc], a                                    ; $7e19: $02
    rrca                                          ; $7e1a: $0f
    add a                                         ; $7e1b: $87
    inc bc                                        ; $7e1c: $03
    ld c, $0a                                     ; $7e1d: $0e $0a
    rrca                                          ; $7e1f: $0f
    ld bc, $020e                                  ; $7e20: $01 $0e $02
    inc bc                                        ; $7e23: $03
    ld c, $87                                     ; $7e24: $0e $87
    ld b, $0a                                     ; $7e26: $06 $0a
    ld c, $0a                                     ; $7e28: $0e $0a
    ld c, $06                                     ; $7e2a: $0e $06
    ld c, $02                                     ; $7e2c: $0e $02
    inc c                                         ; $7e2e: $0c
    sbc h                                         ; $7e2f: $9c
    rlca                                          ; $7e30: $07
    rrca                                          ; $7e31: $0f
    inc de                                        ; $7e32: $13

jr_0f2_7e33:
    rra                                           ; $7e33: $1f
    ld de, $111f                                  ; $7e34: $11 $1f $11
    rra                                           ; $7e37: $1f
    add hl, bc                                    ; $7e38: $09
    rrca                                          ; $7e39: $0f
    ld [$080f], sp                                ; $7e3a: $08 $0f $08
    rrca                                          ; $7e3d: $0f
    ld [$180f], sp                                ; $7e3e: $08 $0f $18
    rra                                           ; $7e41: $1f
    db $10                                        ; $7e42: $10
    rra                                           ; $7e43: $1f
    ldh [rIE], a                                  ; $7e44: $e0 $ff
    and b                                         ; $7e46: $a0
    rst $38                                       ; $7e47: $ff
    ld d, h                                       ; $7e48: $54
    ld a, a                                       ; $7e49: $7f
    ld h, c                                       ; $7e4a: $61
    ld a, a                                       ; $7e4b: $7f
    ld [bc], a                                    ; $7e4c: $02
    ccf                                           ; $7e4d: $3f
    ld [bc], a                                    ; $7e4e: $02
    inc a                                         ; $7e4f: $3c
    ld [bc], a                                    ; $7e50: $02
    nop                                           ; $7e51: $00
    add [hl]                                      ; $7e52: $86
    dec bc                                        ; $7e53: $0b
    rst $38                                       ; $7e54: $ff
    rst $10                                       ; $7e55: $d7
    cp $77                                        ; $7e56: $fe $77
    db $fd                                        ; $7e58: $fd
    ld [bc], a                                    ; $7e59: $02
    rst $38                                       ; $7e5a: $ff
    adc [hl]                                      ; $7e5b: $8e
    add sp, -$08                                  ; $7e5c: $e8 $f8
    add sp, -$08                                  ; $7e5e: $e8 $f8
    ld l, b                                       ; $7e60: $68
    ld hl, sp+$74                                 ; $7e61: $f8 $74
    db $fc                                        ; $7e63: $fc
    ld [hl], h                                    ; $7e64: $74
    db $fc                                        ; $7e65: $fc
    ld [hl], h                                    ; $7e66: $74
    db $fc                                        ; $7e67: $fc
    db $f4                                        ; $7e68: $f4
    db $fc                                        ; $7e69: $fc
    ld [bc], a                                    ; $7e6a: $02
    ld hl, sp+$04                                 ; $7e6b: $f8 $04
    ldh a, [rSC]                                  ; $7e6d: $f0 $02
    ldh [rDIV], a                                 ; $7e6f: $e0 $04
    nop                                           ; $7e71: $00
    ld [bc], a                                    ; $7e72: $02
    inc b                                         ; $7e73: $04
    add h                                         ; $7e74: $84
    ld b, $02                                     ; $7e75: $06 $02
    rlca                                          ; $7e77: $07
    dec b                                         ; $7e78: $05
    ld [bc], a                                    ; $7e79: $02
    ld [bc], a                                    ; $7e7a: $02
    ld d, $00                                     ; $7e7b: $16 $00
    rst $38                                       ; $7e7d: $ff
    rrca                                          ; $7e7e: $0f

Call_0f2_7e7f:
    dec b                                         ; $7e7f: $05
    ldh a, [rIF]                                  ; $7e80: $f0 $0f
    ld [c], a                                     ; $7e82: $e2
    ld bc, $f1e4                                  ; $7e83: $01 $e4 $f1
    ld [c], a                                     ; $7e86: $e2
    ld sp, hl                                     ; $7e87: $f9
    db $e4                                        ; $7e88: $e4
    rst $38                                       ; $7e89: $ff
    ld a, [c]                                     ; $7e8a: $f2
    rst $30                                       ; $7e8b: $f7
    ld a, [c]                                     ; $7e8c: $f2
    db $fc                                        ; $7e8d: $fc
    ld [bc], a                                    ; $7e8e: $02
    ld bc, $0302                                  ; $7e8f: $01 $02 $03
    ld [bc], a                                    ; $7e92: $02
    rlca                                          ; $7e93: $07
    sbc b                                         ; $7e94: $98
    dec c                                         ; $7e95: $0d
    dec bc                                        ; $7e96: $0b
    ld a, $37                                     ; $7e97: $3e $37
    ld a, a                                       ; $7e99: $7f
    ld e, a                                       ; $7e9a: $5f
    rst $38                                       ; $7e9b: $ff
    or a                                          ; $7e9c: $b7
    ld a, l                                       ; $7e9d: $7d
    ld c, l                                       ; $7e9e: $4d
    dec sp                                        ; $7e9f: $3b
    ccf                                           ; $7ea0: $3f
    ld e, e                                       ; $7ea1: $5b
    ld a, a                                       ; $7ea2: $7f
    inc hl                                        ; $7ea3: $23
    ccf                                           ; $7ea4: $3f
    scf                                           ; $7ea5: $37
    ccf                                           ; $7ea6: $3f
    dec e                                         ; $7ea7: $1d
    rra                                           ; $7ea8: $1f
    ld [de], a                                    ; $7ea9: $12
    rra                                           ; $7eaa: $1f
    ld c, $0f                                     ; $7eab: $0e $0f
    ld [bc], a                                    ; $7ead: $02
    rlca                                          ; $7eae: $07
    ld [bc], a                                    ; $7eaf: $02
    ld a, $9e                                     ; $7eb0: $3e $9e
    jp Jump_000_0cff                              ; $7eb2: $c3 $ff $0c


    rst $38                                       ; $7eb5: $ff
    inc de                                        ; $7eb6: $13
    rst $38                                       ; $7eb7: $ff
    ccf                                           ; $7eb8: $3f
    di                                            ; $7eb9: $f3
    or $ed                                        ; $7eba: $f6 $ed
    di                                            ; $7ebc: $f3
    db $ec                                        ; $7ebd: $ec
    rst $38                                       ; $7ebe: $ff
    pop hl                                        ; $7ebf: $e1
    rst $38                                       ; $7ec0: $ff
    rst $00                                       ; $7ec1: $c7
    ld [hl], a                                    ; $7ec2: $77
    rst $08                                       ; $7ec3: $cf
    rst $38                                       ; $7ec4: $ff
    db $e3                                        ; $7ec5: $e3
    db $fd                                        ; $7ec6: $fd
    rst $38                                       ; $7ec7: $ff
    ld a, [hl]                                    ; $7ec8: $7e
    rst $28                                       ; $7ec9: $ef
    sub b                                         ; $7eca: $90
    rst $38                                       ; $7ecb: $ff
    rst $28                                       ; $7ecc: $ef
    rst $38                                       ; $7ecd: $ff
    ld a, a                                       ; $7ece: $7f
    ei                                            ; $7ecf: $fb
    ld [$0220], sp                                ; $7ed0: $08 $20 $02
    inc h                                         ; $7ed3: $24
    sub d                                         ; $7ed4: $92
    ld a, $3a                                     ; $7ed5: $3e $3a
    ccf                                           ; $7ed7: $3f
    add hl, hl                                    ; $7ed8: $29
    ld e, $12                                     ; $7ed9: $1e $12
    dec e                                         ; $7edb: $1d
    rra                                           ; $7edc: $1f
    dec l                                         ; $7edd: $2d
    ccf                                           ; $7ede: $3f
    ld [hl+], a                                   ; $7edf: $22
    ld a, $3a                                     ; $7ee0: $3e $3a
    ld a, $14                                     ; $7ee2: $3e $14
    inc a                                         ; $7ee4: $3c
    inc c                                         ; $7ee5: $0c
    inc a                                         ; $7ee6: $3c
    ld [bc], a                                    ; $7ee7: $02
    ld hl, sp+$02                                 ; $7ee8: $f8 $02
    ldh [$98], a                                  ; $7eea: $e0 $98
    inc [hl]                                      ; $7eec: $34
    ccf                                           ; $7eed: $3f
    dec [hl]                                      ; $7eee: $35
    ld a, $24                                     ; $7eef: $3e $24
    ccf                                           ; $7ef1: $3f
    dec h                                         ; $7ef2: $25
    ccf                                           ; $7ef3: $3f
    ld c, a                                       ; $7ef4: $4f
    ld a, a                                       ; $7ef5: $7f
    ld c, a                                       ; $7ef6: $4f
    ld a, a                                       ; $7ef7: $7f
    ld c, a                                       ; $7ef8: $4f
    ld a, a                                       ; $7ef9: $7f
    adc a                                         ; $7efa: $8f
    rst $38                                       ; $7efb: $ff
    sbc a                                         ; $7efc: $9f
    rst $38                                       ; $7efd: $ff
    sbc a                                         ; $7efe: $9f
    rst $38                                       ; $7eff: $ff
    rst $18                                       ; $7f00: $df
    rst $38                                       ; $7f01: $ff
    sbc a                                         ; $7f02: $9f
    rst $38                                       ; $7f03: $ff
    ld [bc], a                                    ; $7f04: $02
    ld a, a                                       ; $7f05: $7f
    ld [bc], a                                    ; $7f06: $02
    inc a                                         ; $7f07: $3c
    ld [bc], a                                    ; $7f08: $02
    inc e                                         ; $7f09: $1c
    ld b, $00                                     ; $7f0a: $06 $00
    sub d                                         ; $7f0c: $92
    inc d                                         ; $7f0d: $14
    inc e                                         ; $7f0e: $1c
    inc d                                         ; $7f0f: $14
    inc e                                         ; $7f10: $1c
    inc d                                         ; $7f11: $14
    inc e                                         ; $7f12: $1c
    ld a, [de]                                    ; $7f13: $1a
    ld e, $1a                                     ; $7f14: $1e $1a
    ld e, $1d                                     ; $7f16: $1e $1d
    rra                                           ; $7f18: $1f
    dec e                                         ; $7f19: $1d
    rra                                           ; $7f1a: $1f
    dec e                                         ; $7f1b: $1d
    rra                                           ; $7f1c: $1f
    dec e                                         ; $7f1d: $1d
    rra                                           ; $7f1e: $1f
    inc b                                         ; $7f1f: $04
    ld e, $04                                     ; $7f20: $1e $04
    rra                                           ; $7f22: $1f
    ld [bc], a                                    ; $7f23: $02
    inc c                                         ; $7f24: $0c
    rst $38                                       ; $7f25: $ff
    rrca                                          ; $7f26: $0f
    dec b                                         ; $7f27: $05
    ldh a, [rIF]                                  ; $7f28: $f0 $0f
    ld [c], a                                     ; $7f2a: $e2
    ld bc, $ede7                                  ; $7f2b: $01 $e7 $ed
    ld [c], a                                     ; $7f2e: $e2
    push af                                       ; $7f2f: $f5
    ld a, [c]                                     ; $7f30: $f2
    push af                                       ; $7f31: $f5
    ld [c], a                                     ; $7f32: $e2
    db $fd                                        ; $7f33: $fd
    ld a, [c]                                     ; $7f34: $f2
    db $fd                                        ; $7f35: $fd
    ld b, $01                                     ; $7f36: $06 $01
    inc b                                         ; $7f38: $04
    nop                                           ; $7f39: $00
    ld [bc], a                                    ; $7f3a: $02
    inc b                                         ; $7f3b: $04
    sub b                                         ; $7f3c: $90
    ld c, $0a                                     ; $7f3d: $0e $0a
    ld c, $0a                                     ; $7f3f: $0e $0a
    ld c, $0a                                     ; $7f41: $0e $0a
    rra                                           ; $7f43: $1f
    dec d                                         ; $7f44: $15
    ld e, $17                                     ; $7f45: $1e $17
    ld e, $1f                                     ; $7f47: $1e $1f
    ld a, [bc]                                    ; $7f49: $0a
    rrca                                          ; $7f4a: $0f
    inc b                                         ; $7f4b: $04
    rlca                                          ; $7f4c: $07
    ld [bc], a                                    ; $7f4d: $02
    inc bc                                        ; $7f4e: $03
    ld [bc], a                                    ; $7f4f: $02
    nop                                           ; $7f50: $00
    ld [bc], a                                    ; $7f51: $02
    rrca                                          ; $7f52: $0f
    sub [hl]                                      ; $7f53: $96
    jr nc, jr_0f2_7f95                            ; $7f54: $30 $3f

    ld b, c                                       ; $7f56: $41
    ld a, a                                       ; $7f57: $7f
    add [hl]                                      ; $7f58: $86
    rst $38                                       ; $7f59: $ff
    rst $18                                       ; $7f5a: $df
    rst $38                                       ; $7f5b: $ff
    ld a, a                                       ; $7f5c: $7f
    db $fc                                        ; $7f5d: $fc
    cp l                                          ; $7f5e: $bd
    ei                                            ; $7f5f: $fb
    db $fc                                        ; $7f60: $fc
    ei                                            ; $7f61: $fb
    rst $18                                       ; $7f62: $df
    ld hl, sp+$5f                                 ; $7f63: $f8 $5f
    ld [hl], c                                    ; $7f65: $71
    dec a                                         ; $7f66: $3d
    inc sp                                        ; $7f67: $33
    ccf                                           ; $7f68: $3f
    jr c, jr_0f2_7f6d                             ; $7f69: $38 $02

    ccf                                           ; $7f6b: $3f
    and b                                         ; $7f6c: $a0

jr_0f2_7f6d:
    ld c, a                                       ; $7f6d: $4f
    ld a, l                                       ; $7f6e: $7d
    ld [hl], b                                    ; $7f6f: $70
    ld a, a                                       ; $7f70: $7f
    sbc a                                         ; $7f71: $9f
    rst $38                                       ; $7f72: $ff
    sbc a                                         ; $7f73: $9f
    cp $b2                                        ; $7f74: $fe $b2
    rst $38                                       ; $7f76: $ff
    ld [c], a                                     ; $7f77: $e2
    rst $38                                       ; $7f78: $ff
    ld hl, $213f                                  ; $7f79: $21 $3f $21
    ccf                                           ; $7f7c: $3f
    ld hl, $213f                                  ; $7f7d: $21 $3f $21
    ccf                                           ; $7f80: $3f
    ld hl, $213f                                  ; $7f81: $21 $3f $21
    ccf                                           ; $7f84: $3f
    ld hl, $613f                                  ; $7f85: $21 $3f $61
    ld a, a                                       ; $7f88: $7f
    ld d, l                                       ; $7f89: $55
    ld a, a                                       ; $7f8a: $7f
    ld h, e                                       ; $7f8b: $63
    ld a, a                                       ; $7f8c: $7f
    inc b                                         ; $7f8d: $04
    ld e, $02                                     ; $7f8e: $1e $02
    inc e                                         ; $7f90: $1c
    ld [bc], a                                    ; $7f91: $02
    add b                                         ; $7f92: $80
    ld [bc], a                                    ; $7f93: $02
    ret nz                                        ; $7f94: $c0

jr_0f2_7f95:
    add e                                         ; $7f95: $83
    and b                                         ; $7f96: $a0
    ldh [$60], a                                  ; $7f97: $e0 $60
    dec b                                         ; $7f99: $05
    ldh [$86], a                                  ; $7f9a: $e0 $86
    and b                                         ; $7f9c: $a0
    ld h, b                                       ; $7f9d: $60
    ldh [rNR41], a                                ; $7f9e: $e0 $20
    ret nz                                        ; $7fa0: $c0

    ld b, b                                       ; $7fa1: $40
    inc b                                         ; $7fa2: $04
    add b                                         ; $7fa3: $80
    ld [bc], a                                    ; $7fa4: $02
    call z, Call_000_3e8f                         ; $7fa5: $cc $8f $3e
    ld a, [c]                                     ; $7fa8: $f2
    xor a                                         ; $7fa9: $af
    db $ed                                        ; $7faa: $ed
    ld e, a                                       ; $7fab: $5f
    rst $30                                       ; $7fac: $f7
    rst $18                                       ; $7fad: $df
    rst $38                                       ; $7fae: $ff
    push de                                       ; $7faf: $d5
    rst $38                                       ; $7fb0: $ff
    ld l, d                                       ; $7fb1: $6a
    cp $fc                                        ; $7fb2: $fe $fc
    ld a, h                                       ; $7fb4: $7c
    ld d, b                                       ; $7fb5: $50
    inc bc                                        ; $7fb6: $03
    ldh a, [$8e]                                  ; $7fb7: $f0 $8e
    add sp, -$08                                  ; $7fb9: $e8 $f8
    db $e4                                        ; $7fbb: $e4
    db $fc                                        ; $7fbc: $fc
    db $f4                                        ; $7fbd: $f4
    db $fc                                        ; $7fbe: $fc
    ld a, [c]                                     ; $7fbf: $f2
    cp $f2                                        ; $7fc0: $fe $f2
    cp $fa                                        ; $7fc2: $fe $fa
    cp $fa                                        ; $7fc4: $fe $fa
    cp $02                                        ; $7fc6: $fe $02
    db $fc                                        ; $7fc8: $fc
    ld [bc], a                                    ; $7fc9: $02
    ld a, $02                                     ; $7fca: $3e $02
    jr c, jr_0f2_7fd0                             ; $7fcc: $38 $02

    nop                                           ; $7fce: $00
    rst $38                                       ; $7fcf: $ff

jr_0f2_7fd0:
    add hl, bc                                    ; $7fd0: $09
    ld [bc], a                                    ; $7fd1: $02
    ld a, [c]                                     ; $7fd2: $f2
    add hl, de                                    ; $7fd3: $19
    call nc, $d701                                ; $7fd4: $d4 $01 $d7
    ld [bc], a                                    ; $7fd7: $02
    rst $10                                       ; $7fd8: $d7
    inc b                                         ; $7fd9: $04
    add c                                         ; $7fda: $81
    add b                                         ; $7fdb: $80
    inc bc                                        ; $7fdc: $03
    nop                                           ; $7fdd: $00
    add c                                         ; $7fde: $81
    ld bc, $0025                                  ; $7fdf: $01 $25 $00
    add c                                         ; $7fe2: $81
    ld bc, $0015                                  ; $7fe3: $01 $15 $00
    rst $38                                       ; $7fe6: $ff

    db $07, $01, $fa

    ld [$09f9], sp                                ; $7fea: $08 $f9 $09

    db $ff, $fa, $81, $00, $02, $02, $81, $05, $02, $02, $1a, $00, $ff

    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Call_0f2_7fff:
    rst $38                                       ; $7fff: $ff
