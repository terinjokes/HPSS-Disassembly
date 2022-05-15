; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c1", ROMX[$4000], BANK[$c1]

    db $c1

    ld a, [de]                                    ; $4001: $1a
    nop                                           ; $4002: $00
    ld e, $00                                     ; $4003: $1e $00
    dec bc                                        ; $4005: $0b
    ld [bc], a                                    ; $4006: $02
    nop                                           ; $4007: $00
    cp c                                          ; $4008: $b9
    cp c                                          ; $4009: $b9
    cp d                                          ; $400a: $ba
    cp e                                          ; $400b: $bb
    cp h                                          ; $400c: $bc
    cp l                                          ; $400d: $bd
    cp [hl]                                       ; $400e: $be
    cp a                                          ; $400f: $bf
    nop                                           ; $4010: $00
    ret nz                                        ; $4011: $c0

    pop bc                                        ; $4012: $c1
    jp nz, Jump_000_08c3                          ; $4013: $c2 $c3 $08

    ld [$c6c5], sp                                ; $4016: $08 $c5 $c6
    nop                                           ; $4019: $00
    rst $00                                       ; $401a: $c7
    ret z                                         ; $401b: $c8

    ret                                           ; $401c: $c9


    jp z, $cccb                                   ; $401d: $ca $cb $cc

    call Call_000_00ce                            ; $4020: $cd $ce $00
    rst $08                                       ; $4023: $cf
    ret nc                                        ; $4024: $d0

    pop de                                        ; $4025: $d1
    jp nc, $d4d3                                  ; $4026: $d2 $d3 $d4

    push de                                       ; $4029: $d5
    sub $00                                       ; $402a: $d6 $00
    rst $10                                       ; $402c: $d7
    ret c                                         ; $402d: $d8

    reti                                          ; $402e: $d9


    jp c, $dcdb                                   ; $402f: $da $db $dc

    db $dd                                        ; $4032: $dd
    sbc $00                                       ; $4033: $de $00
    rst $18                                       ; $4035: $df
    ldh [$e1], a                                  ; $4036: $e0 $e1
    ld [c], a                                     ; $4038: $e2
    db $e3                                        ; $4039: $e3
    db $e4                                        ; $403a: $e4
    push hl                                       ; $403b: $e5
    cp c                                          ; $403c: $b9
    nop                                           ; $403d: $00
    cp c                                          ; $403e: $b9
    cp c                                          ; $403f: $b9
    and $e7                                       ; $4040: $e6 $e7
    add sp, -$17                                  ; $4042: $e8 $e9
    ld [$00eb], a                                 ; $4044: $ea $eb $00
    db $ec                                        ; $4047: $ec
    db $ed                                        ; $4048: $ed
    xor $ef                                       ; $4049: $ee $ef
    ldh a, [$f1]                                  ; $404b: $f0 $f1
    ld a, [c]                                     ; $404d: $f2
    di                                            ; $404e: $f3
    nop                                           ; $404f: $00
    db $f4                                        ; $4050: $f4
    push af                                       ; $4051: $f5
    or $f7                                        ; $4052: $f6 $f7
    ld hl, sp-$07                                 ; $4054: $f8 $f9
    ld a, [$00fb]                                 ; $4056: $fa $fb $00
    db $fc                                        ; $4059: $fc
    db $fd                                        ; $405a: $fd
    cp $ff                                        ; $405b: $fe $ff
    nop                                           ; $405d: $00
    ld bc, $0802                                  ; $405e: $01 $02 $08
    nop                                           ; $4061: $00
    inc bc                                        ; $4062: $03
    inc b                                         ; $4063: $04
    dec b                                         ; $4064: $05
    ld b, $07                                     ; $4065: $06 $07
    ld [$0a09], sp                                ; $4067: $08 $09 $0a
    nop                                           ; $406a: $00
    dec bc                                        ; $406b: $0b
    inc c                                         ; $406c: $0c
    dec c                                         ; $406d: $0d
    ld c, $0f                                     ; $406e: $0e $0f
    db $10                                        ; $4070: $10
    ld de, $0012                                  ; $4071: $11 $12 $00
    inc de                                        ; $4074: $13
    inc d                                         ; $4075: $14
    dec d                                         ; $4076: $15
    cp c                                          ; $4077: $b9
    cp c                                          ; $4078: $b9
    ld d, $17                                     ; $4079: $16 $17
    jr jr_0c1_407e                                ; $407b: $18 $01

    add hl, de                                    ; $407d: $19

jr_0c1_407e:
    ld a, [de]                                    ; $407e: $1a
    dec de                                        ; $407f: $1b
    inc e                                         ; $4080: $1c
    dec e                                         ; $4081: $1d
    ld e, $08                                     ; $4082: $1e $08
    ld bc, $0018                                  ; $4084: $01 $18 $00
    rra                                           ; $4087: $1f
    jr nz, jr_0c1_40ab                            ; $4088: $20 $21

    ld [hl+], a                                   ; $408a: $22
    inc hl                                        ; $408b: $23
    inc h                                         ; $408c: $24
    dec h                                         ; $408d: $25
    ld h, $00                                     ; $408e: $26 $00
    cp c                                          ; $4090: $b9
    cp c                                          ; $4091: $b9
    daa                                           ; $4092: $27
    jr z, jr_0c1_40be                             ; $4093: $28 $29

    ld a, [hl+]                                   ; $4095: $2a
    dec hl                                        ; $4096: $2b
    inc l                                         ; $4097: $2c
    ld [$2e2d], sp                                ; $4098: $08 $2d $2e
    cpl                                           ; $409b: $2f
    jr nc, jr_0c1_4113                            ; $409c: $30 $75

    jr jr_0c1_40d1                                ; $409e: $18 $31

    ld [hl-], a                                   ; $40a0: $32
    inc sp                                        ; $40a1: $33
    nop                                           ; $40a2: $00
    inc [hl]                                      ; $40a3: $34
    dec [hl]                                      ; $40a4: $35
    ld [hl], $37                                  ; $40a5: $36 $37
    set 1, h                                      ; $40a7: $cb $cc
    jr c, @+$3b                                   ; $40a9: $38 $39

jr_0c1_40ab:
    nop                                           ; $40ab: $00
    rst $08                                       ; $40ac: $cf
    ret nc                                        ; $40ad: $d0

    ld a, [hl-]                                   ; $40ae: $3a
    dec sp                                        ; $40af: $3b
    inc a                                         ; $40b0: $3c
    dec a                                         ; $40b1: $3d
    ld a, $3f                                     ; $40b2: $3e $3f
    ld b, b                                       ; $40b4: $40
    ld b, b                                       ; $40b5: $40
    ld [hl], l                                    ; $40b6: $75
    jr jr_0c1_40fa                                ; $40b7: $18 $41

    ld b, d                                       ; $40b9: $42
    ld b, e                                       ; $40ba: $43
    ld b, h                                       ; $40bb: $44
    ld b, l                                       ; $40bc: $45
    ld b, [hl]                                    ; $40bd: $46

jr_0c1_40be:
    db $10                                        ; $40be: $10
    ld b, a                                       ; $40bf: $47
    push hl                                       ; $40c0: $e5
    ld c, b                                       ; $40c1: $48
    add d                                         ; $40c2: $82
    ld [$4a49], sp                                ; $40c3: $08 $49 $4a
    ld c, e                                       ; $40c6: $4b
    ld c, h                                       ; $40c7: $4c
    db $10                                        ; $40c8: $10
    ld c, l                                       ; $40c9: $4d
    ld c, [hl]                                    ; $40ca: $4e
    ld c, a                                       ; $40cb: $4f
    ld [hl], l                                    ; $40cc: $75
    jr jr_0c1_40d7                                ; $40cd: $18 $08

    ld d, b                                       ; $40cf: $50
    ld d, c                                       ; $40d0: $51

jr_0c1_40d1:
    ld d, d                                       ; $40d1: $52
    nop                                           ; $40d2: $00
    ld d, e                                       ; $40d3: $53
    ld d, h                                       ; $40d4: $54

Call_0c1_40d5:
    ld d, l                                       ; $40d5: $55
    ld d, [hl]                                    ; $40d6: $56

jr_0c1_40d7:
    ld d, a                                       ; $40d7: $57
    ld e, b                                       ; $40d8: $58
    ld e, c                                       ; $40d9: $59
    ld e, d                                       ; $40da: $5a
    nop                                           ; $40db: $00
    ld e, e                                       ; $40dc: $5b
    ld e, h                                       ; $40dd: $5c
    ld e, l                                       ; $40de: $5d
    ld e, [hl]                                    ; $40df: $5e
    ld e, a                                       ; $40e0: $5f
    ld h, b                                       ; $40e1: $60
    ld h, c                                       ; $40e2: $61
    ld [$7580], sp                                ; $40e3: $08 $80 $75
    jr jr_0c1_40f0                                ; $40e6: $18 $08

    ld h, d                                       ; $40e8: $62
    ld h, e                                       ; $40e9: $63
    ld h, h                                       ; $40ea: $64
    ld h, l                                       ; $40eb: $65
    ld h, [hl]                                    ; $40ec: $66
    ld h, a                                       ; $40ed: $67
    nop                                           ; $40ee: $00
    ld l, b                                       ; $40ef: $68

jr_0c1_40f0:
    ld l, c                                       ; $40f0: $69
    ld l, d                                       ; $40f1: $6a
    ld l, e                                       ; $40f2: $6b
    ld l, h                                       ; $40f3: $6c
    ld l, l                                       ; $40f4: $6d
    ld l, [hl]                                    ; $40f5: $6e
    ld l, a                                       ; $40f6: $6f
    inc b                                         ; $40f7: $04
    ld [hl], b                                    ; $40f8: $70
    ld [hl], c                                    ; $40f9: $71

jr_0c1_40fa:
    ld [hl], d                                    ; $40fa: $72
    ld [hl], e                                    ; $40fb: $73
    ld [hl], h                                    ; $40fc: $74
    ld [hl], l                                    ; $40fd: $75
    jr jr_0c1_4108                                ; $40fe: $18 $08

    ld [$7500], sp                                ; $4100: $08 $00 $75
    halt                                          ; $4103: $76
    ld [hl], a                                    ; $4104: $77
    ld a, b                                       ; $4105: $78
    ld a, c                                       ; $4106: $79
    ld a, d                                       ; $4107: $7a

jr_0c1_4108:
    cp c                                          ; $4108: $b9
    ld a, e                                       ; $4109: $7b
    nop                                           ; $410a: $00
    ld a, h                                       ; $410b: $7c
    ld a, l                                       ; $410c: $7d
    ld a, [hl]                                    ; $410d: $7e
    ld a, a                                       ; $410e: $7f
    add b                                         ; $410f: $80
    add c                                         ; $4110: $81
    add d                                         ; $4111: $82
    add e                                         ; $4112: $83

jr_0c1_4113:
    nop                                           ; $4113: $00
    add h                                         ; $4114: $84
    add l                                         ; $4115: $85
    add [hl]                                      ; $4116: $86
    add a                                         ; $4117: $87
    adc b                                         ; $4118: $88
    adc c                                         ; $4119: $89
    adc d                                         ; $411a: $8a
    adc e                                         ; $411b: $8b
    nop                                           ; $411c: $00
    adc h                                         ; $411d: $8c
    adc l                                         ; $411e: $8d
    adc [hl]                                      ; $411f: $8e
    adc a                                         ; $4120: $8f
    add h                                         ; $4121: $84
    sub b                                         ; $4122: $90
    sub c                                         ; $4123: $91
    rlc b                                         ; $4124: $cb $00
    call z, $9392                                 ; $4126: $cc $92 $93
    rst $08                                       ; $4129: $cf
    ret nc                                        ; $412a: $d0

    sub h                                         ; $412b: $94
    sub l                                         ; $412c: $95
    sub [hl]                                      ; $412d: $96
    nop                                           ; $412e: $00
    sub a                                         ; $412f: $97
    sbc b                                         ; $4130: $98
    sbc c                                         ; $4131: $99
    sbc d                                         ; $4132: $9a
    sbc e                                         ; $4133: $9b
    sbc h                                         ; $4134: $9c
    sbc l                                         ; $4135: $9d
    sbc [hl]                                      ; $4136: $9e
    nop                                           ; $4137: $00
    sbc a                                         ; $4138: $9f
    and b                                         ; $4139: $a0
    and c                                         ; $413a: $a1
    and d                                         ; $413b: $a2
    and e                                         ; $413c: $a3
    and h                                         ; $413d: $a4
    and l                                         ; $413e: $a5
    and [hl]                                      ; $413f: $a6
    ld b, b                                       ; $4140: $40
    and a                                         ; $4141: $a7
    inc b                                         ; $4142: $04
    add hl, de                                    ; $4143: $19
    xor b                                         ; $4144: $a8
    xor c                                         ; $4145: $a9
    xor d                                         ; $4146: $aa
    xor e                                         ; $4147: $ab
    xor h                                         ; $4148: $ac
    xor l                                         ; $4149: $ad
    nop                                           ; $414a: $00
    xor [hl]                                      ; $414b: $ae
    xor a                                         ; $414c: $af
    or b                                          ; $414d: $b0
    or c                                          ; $414e: $b1
    or d                                          ; $414f: $b2
    or e                                          ; $4150: $b3
    or h                                          ; $4151: $b4
    or l                                          ; $4152: $b5
    dec d                                         ; $4153: $15
    or [hl]                                       ; $4154: $b6
    or a                                          ; $4155: $b7
    cp b                                          ; $4156: $b8
    ld c, b                                       ; $4157: $48
    ld b, c                                       ; $4158: $41
    call nz, Call_0c1_7947                        ; $4159: $c4 $47 $79
    cp d                                          ; $415c: $ba
    ld c, b                                       ; $415d: $48
    ld de, $a96c                                  ; $415e: $11 $6c $a9
    ld c, c                                       ; $4161: $49
    add hl, sp                                    ; $4162: $39
    ld b, [hl]                                    ; $4163: $46
    ld hl, $47a9                                  ; $4164: $21 $a9 $47
    ld sp, $6001                                  ; $4167: $31 $01 $60
    or $f7                                        ; $416a: $f6 $f7
    ld b, a                                       ; $416c: $47
    bit 2, a                                      ; $416d: $cb $57
    ld bc, $d0cf                                  ; $416f: $01 $cf $d0
    ei                                            ; $4172: $fb
    ld [hl], d                                    ; $4173: $72
    ld bc, $6003                                  ; $4174: $01 $03 $60
    ld l, e                                       ; $4177: $6b
    ld bc, $8693                                  ; $4178: $01 $93 $86
    ld bc, $00ff                                  ; $417b: $01 $ff $00
    ld a, [de]                                    ; $417e: $1a
    ld a, b                                       ; $417f: $78
    ld bc, $7f02                                  ; $4180: $01 $02 $7f
    add hl, de                                    ; $4183: $19
    add b                                         ; $4184: $80
    ld e, c                                       ; $4185: $59
    cp b                                          ; $4186: $b8
    add hl, bc                                    ; $4187: $09
    add hl, bc                                    ; $4188: $09
    ld [$2980], sp                                ; $4189: $08 $80 $29
    ld a, e                                       ; $418c: $7b
    add hl, hl                                    ; $418d: $29
    ld a, c                                       ; $418e: $79
    add hl, hl                                    ; $418f: $29
    ld [$2f08], sp                                ; $4190: $08 $08 $2f
    ld bc, $c430                                  ; $4193: $01 $30 $c4
    call nz, Call_000_3231                        ; $4196: $c4 $31 $32
    ld [$7908], sp                                ; $4199: $08 $08 $79
    ld de, $3824                                  ; $419c: $11 $24 $38
    add hl, sp                                    ; $419f: $39
    ld [hl], l                                    ; $41a0: $75
    ld hl, $4241                                  ; $41a1: $21 $41 $42
    xor h                                         ; $41a4: $ac
    ld bc, $4443                                  ; $41a5: $01 $43 $44
    ld [hl], $44                                  ; $41a8: $36 $44
    ld b, e                                       ; $41aa: $43
    or e                                          ; $41ab: $b3
    ld bc, $0177                                  ; $41ac: $01 $77 $01
    ld c, b                                       ; $41af: $48
    ld [hl], d                                    ; $41b0: $72
    ld hl, $116b                                  ; $41b1: $21 $6b $11
    ld [$0844], sp                                ; $41b4: $08 $44 $08
    ld l, l                                       ; $41b7: $6d
    ld de, $0855                                  ; $41b8: $11 $55 $08
    ld [$691e], sp                                ; $41bb: $08 $1e $69
    ld [$9008], sp                                ; $41be: $08 $08 $90
    add d                                         ; $41c1: $82
    add hl, de                                    ; $41c2: $19
    ld [$1e08], sp                                ; $41c3: $08 $08 $1e
    ld l, c                                       ; $41c6: $69
    ld [$6008], sp                                ; $41c7: $08 $08 $60
    ld h, c                                       ; $41ca: $61
    sub d                                         ; $41cb: $92
    adc [hl]                                      ; $41cc: $8e
    add hl, bc                                    ; $41cd: $09
    ld [$1e08], sp                                ; $41ce: $08 $08 $1e
    ld l, c                                       ; $41d1: $69
    ld [$a208], sp                                ; $41d2: $08 $08 $a2
    add hl, de                                    ; $41d5: $19
    ld [$0860], sp                                ; $41d6: $08 $60 $08
    ld e, $69                                     ; $41d9: $1e $69
    ld l, $02                                     ; $41db: $2e $02
    ld l, h                                       ; $41dd: $6c
    ld b, h                                       ; $41de: $44
    ld b, h                                       ; $41df: $44
    ld l, h                                       ; $41e0: $6c
    ld [$6d05], sp                                ; $41e1: $08 $05 $6d
    ld l, [hl]                                    ; $41e4: $6e
    ld l, [hl]                                    ; $41e5: $6e
    ld l, a                                       ; $41e6: $6f
    ld [$0aa8], sp                                ; $41e7: $08 $a8 $0a
    ld [$12a6], sp                                ; $41ea: $08 $a6 $12
    add b                                         ; $41ed: $80
    and h                                         ; $41ee: $a4
    ld a, [bc]                                    ; $41ef: $0a
    ld [$7055], sp                                ; $41f0: $08 $55 $70
    ld d, a                                       ; $41f3: $57
    ld e, b                                       ; $41f4: $58
    ld [hl], c                                    ; $41f5: $71
    ld d, l                                       ; $41f6: $55
    dec b                                         ; $41f7: $05
    ld [hl], d                                    ; $41f8: $72
    ld [$7308], sp                                ; $41f9: $08 $08 $73
    ld [$0aa8], sp                                ; $41fc: $08 $a8 $0a
    ld [$0aa6], sp                                ; $41ff: $08 $a6 $0a
    ld a, d                                       ; $4202: $7a
    ld [$0aa4], sp                                ; $4203: $08 $a4 $0a
    add d                                         ; $4206: $82
    jr nz, jr_0c1_4223                            ; $4207: $20 $1a

    db $10                                        ; $4209: $10
    xor b                                         ; $420a: $a8
    ld a, [bc]                                    ; $420b: $0a
    ld [$0aa6], sp                                ; $420c: $08 $a6 $0a
    ld [$a480], sp                                ; $420f: $08 $80 $a4
    ld a, [bc]                                    ; $4212: $0a
    ld [$7574], sp                                ; $4213: $08 $74 $75
    halt                                          ; $4216: $76
    ld h, e                                       ; $4217: $63
    ld [hl], a                                    ; $4218: $77
    ld h, l                                       ; $4219: $65
    ld b, $78                                     ; $421a: $06 $78
    ld a, c                                       ; $421c: $79
    ld a, c                                       ; $421d: $79
    ld a, d                                       ; $421e: $7a
    ld [$0aa8], sp                                ; $421f: $08 $a8 $0a
    and [hl]                                      ; $4222: $a6

jr_0c1_4223:
    ld [de], a                                    ; $4223: $12
    ld [$a4a4], sp                                ; $4224: $08 $a4 $a4
    ld a, [bc]                                    ; $4227: $0a
    ld [$1206], sp                                ; $4228: $08 $06 $12
    ld l, e                                       ; $422b: $6b
    ld [bc], a                                    ; $422c: $02
    ld bc, $0a40                                  ; $422d: $01 $40 $0a
    ld a, [bc]                                    ; $4230: $0a
    cp a                                          ; $4231: $bf
    ld c, $18                                     ; $4232: $0e $18
    ld bc, $1001                                  ; $4234: $01 $01 $10
    ld a, [de]                                    ; $4237: $1a
    ld c, b                                       ; $4238: $48
    ld h, $28                                     ; $4239: $26 $28
    ld a, [de]                                    ; $423b: $1a
    ldh a, [rSCY]                                 ; $423c: $f0 $42
    jr nz, jr_0c1_4274                            ; $423e: $20 $34

    ld hl, sp-$05                                 ; $4240: $f8 $fb
    ld l, b                                       ; $4242: $68
    ld [hl], b                                    ; $4243: $70
    dec c                                         ; $4244: $0d
    ld hl, sp+$34                                 ; $4245: $f8 $34
    ld hl, sp+$4e                                 ; $4247: $f8 $4e
    ld hl, sp+$75                                 ; $4249: $f8 $75
    sub b                                         ; $424b: $90
    nop                                           ; $424c: $00
    and e                                         ; $424d: $a3
    inc hl                                        ; $424e: $23
    rlca                                          ; $424f: $07
    jr nc, jr_0c1_4252                            ; $4250: $30 $00

jr_0c1_4252:
    jr z, jr_0c1_425c                             ; $4252: $28 $08

    ld [$0101], sp                                ; $4254: $08 $01 $01
    add hl, bc                                    ; $4257: $09
    add hl, bc                                    ; $4258: $09
    ld bc, $010f                                  ; $4259: $01 $0f $01

jr_0c1_425c:
    ld [$0e08], sp                                ; $425c: $08 $08 $0e
    ld bc, $1a60                                  ; $425f: $01 $60 $1a
    ld [$0920], sp                                ; $4262: $08 $20 $09
    ld a, [de]                                    ; $4265: $1a
    adc b                                         ; $4266: $88
    ld a, a                                       ; $4267: $7f
    add hl, bc                                    ; $4268: $09
    ld bc, $1a10                                  ; $4269: $01 $10 $1a
    sub b                                         ; $426c: $90
    ld c, [hl]                                    ; $426d: $4e
    nop                                           ; $426e: $00
    ld a, [de]                                    ; $426f: $1a
    and b                                         ; $4270: $a0
    inc [hl]                                      ; $4271: $34
    jr nz, jr_0c1_4276                            ; $4272: $20 $02

jr_0c1_4274:
    ld a, b                                       ; $4274: $78
    inc sp                                        ; $4275: $33

jr_0c1_4276:
    ld [$82bb], sp                                ; $4276: $08 $bb $82
    nop                                           ; $4279: $00
    nop                                           ; $427a: $00
    ld bc, $6870                                  ; $427b: $01 $70 $68
    nop                                           ; $427e: $00
    and d                                         ; $427f: $a2
    ld bc, $1a09                                  ; $4280: $01 $09 $1a
    sbc b                                         ; $4283: $98
    add d                                         ; $4284: $82
    jr jr_0c1_42d7                                ; $4285: $18 $50

    inc c                                         ; $4287: $0c
    ld bc, $0f00                                  ; $4288: $01 $00 $0f
    ld bc, $0d00                                  ; $428b: $01 $00 $0d
    dec c                                         ; $428e: $0d
    rrca                                          ; $428f: $0f
    rrca                                          ; $4290: $0f
    ld a, [$589c]                                 ; $4291: $fa $9c $58
    ld a, [de]                                    ; $4294: $1a
    adc b                                         ; $4295: $88
    db $ec                                        ; $4296: $ec
    ld [$0834], sp                                ; $4297: $08 $34 $08
    inc l                                         ; $429a: $2c
    ld [$010b], sp                                ; $429b: $08 $0b $01
    db $10                                        ; $429e: $10
    dec c                                         ; $429f: $0d
    rst $08                                       ; $42a0: $cf
    ld bc, $d000                                  ; $42a1: $01 $00 $d0
    db $10                                        ; $42a4: $10
    add hl, hl                                    ; $42a5: $29
    add hl, hl                                    ; $42a6: $29
    ld a, [de]                                    ; $42a7: $1a
    xor b                                         ; $42a8: $a8
    inc e                                         ; $42a9: $1c
    nop                                           ; $42aa: $00
    inc b                                         ; $42ab: $04
    ld sp, hl                                     ; $42ac: $f9
    ld e, $f9                                     ; $42ad: $1e $f9
    rst $38                                       ; $42af: $ff
    inc [hl]                                      ; $42b0: $34
    ldh a, [$82]                                  ; $42b1: $f0 $82
    nop                                           ; $42b3: $00
    ld a, b                                       ; $42b4: $78
    ld de, $0aa9                                  ; $42b5: $11 $a9 $0a
    dec b                                         ; $42b8: $05
    ld b, b                                       ; $42b9: $40
    add d                                         ; $42ba: $82
    jr jr_0c1_42d7                                ; $42bb: $18 $1a

    or b                                          ; $42bd: $b0
    inc [hl]                                      ; $42be: $34
    cp b                                          ; $42bf: $b8
    ldh [$4e], a                                  ; $42c0: $e0 $4e
    jr @-$14                                      ; $42c2: $18 $ea

    ld a, [bc]                                    ; $42c4: $0a
    inc [hl]                                      ; $42c5: $34
    ld [hl], b                                    ; $42c6: $70
    and b                                         ; $42c7: $a0
    nop                                           ; $42c8: $00
    ld d, $00                                     ; $42c9: $16 $00
    add b                                         ; $42cb: $80
    add c                                         ; $42cc: $81
    add d                                         ; $42cd: $82
    add e                                         ; $42ce: $83
    add h                                         ; $42cf: $84
    add l                                         ; $42d0: $85
    add [hl]                                      ; $42d1: $86
    add a                                         ; $42d2: $87
    adc b                                         ; $42d3: $88
    adc c                                         ; $42d4: $89
    adc d                                         ; $42d5: $8a
    adc e                                         ; $42d6: $8b

jr_0c1_42d7:
    adc h                                         ; $42d7: $8c
    adc l                                         ; $42d8: $8d
    adc [hl]                                      ; $42d9: $8e
    adc a                                         ; $42da: $8f
    sub b                                         ; $42db: $90
    sub c                                         ; $42dc: $91
    sub d                                         ; $42dd: $92
    sub e                                         ; $42de: $93
    sub h                                         ; $42df: $94
    sub l                                         ; $42e0: $95
    sub [hl]                                      ; $42e1: $96
    sub a                                         ; $42e2: $97
    sbc b                                         ; $42e3: $98
    sbc c                                         ; $42e4: $99
    sbc d                                         ; $42e5: $9a
    sbc e                                         ; $42e6: $9b
    add e                                         ; $42e7: $83
    add e                                         ; $42e8: $83
    add e                                         ; $42e9: $83
    add e                                         ; $42ea: $83
    add e                                         ; $42eb: $83
    add e                                         ; $42ec: $83
    add e                                         ; $42ed: $83
    add e                                         ; $42ee: $83
    add e                                         ; $42ef: $83
    add e                                         ; $42f0: $83
    add e                                         ; $42f1: $83
    add e                                         ; $42f2: $83
    add e                                         ; $42f3: $83
    add e                                         ; $42f4: $83
    add e                                         ; $42f5: $83
    add e                                         ; $42f6: $83
    add e                                         ; $42f7: $83
    add e                                         ; $42f8: $83
    add e                                         ; $42f9: $83
    add e                                         ; $42fa: $83
    add e                                         ; $42fb: $83
    add e                                         ; $42fc: $83
    add e                                         ; $42fd: $83
    add e                                         ; $42fe: $83
    add e                                         ; $42ff: $83
    add e                                         ; $4300: $83
    add e                                         ; $4301: $83
    add e                                         ; $4302: $83
    add e                                         ; $4303: $83
    add e                                         ; $4304: $83
    add e                                         ; $4305: $83
    add e                                         ; $4306: $83
    add e                                         ; $4307: $83
    add e                                         ; $4308: $83
    add e                                         ; $4309: $83
    add e                                         ; $430a: $83
    add e                                         ; $430b: $83
    add e                                         ; $430c: $83
    add e                                         ; $430d: $83
    add e                                         ; $430e: $83
    add e                                         ; $430f: $83
    add e                                         ; $4310: $83
    add e                                         ; $4311: $83
    add e                                         ; $4312: $83
    add e                                         ; $4313: $83
    add e                                         ; $4314: $83
    add e                                         ; $4315: $83
    add e                                         ; $4316: $83
    add e                                         ; $4317: $83
    add e                                         ; $4318: $83
    add e                                         ; $4319: $83
    add e                                         ; $431a: $83
    add e                                         ; $431b: $83
    add e                                         ; $431c: $83
    add e                                         ; $431d: $83
    add e                                         ; $431e: $83
    add e                                         ; $431f: $83
    add e                                         ; $4320: $83
    add e                                         ; $4321: $83
    add e                                         ; $4322: $83
    add e                                         ; $4323: $83
    add e                                         ; $4324: $83
    add e                                         ; $4325: $83
    add e                                         ; $4326: $83
    add e                                         ; $4327: $83
    add e                                         ; $4328: $83
    add e                                         ; $4329: $83
    add e                                         ; $432a: $83
    add e                                         ; $432b: $83
    add e                                         ; $432c: $83
    add e                                         ; $432d: $83
    add e                                         ; $432e: $83
    add e                                         ; $432f: $83
    add e                                         ; $4330: $83
    add e                                         ; $4331: $83
    add e                                         ; $4332: $83
    add e                                         ; $4333: $83
    add e                                         ; $4334: $83
    add e                                         ; $4335: $83
    add e                                         ; $4336: $83
    add e                                         ; $4337: $83
    add e                                         ; $4338: $83
    add e                                         ; $4339: $83
    add e                                         ; $433a: $83
    add e                                         ; $433b: $83
    add e                                         ; $433c: $83
    add e                                         ; $433d: $83
    add e                                         ; $433e: $83
    add e                                         ; $433f: $83
    add e                                         ; $4340: $83
    add e                                         ; $4341: $83
    add e                                         ; $4342: $83
    add e                                         ; $4343: $83
    add e                                         ; $4344: $83
    add e                                         ; $4345: $83
    add e                                         ; $4346: $83
    add e                                         ; $4347: $83
    add e                                         ; $4348: $83
    add e                                         ; $4349: $83
    add e                                         ; $434a: $83
    add e                                         ; $434b: $83
    add e                                         ; $434c: $83
    add e                                         ; $434d: $83
    add e                                         ; $434e: $83
    add e                                         ; $434f: $83
    add e                                         ; $4350: $83
    add e                                         ; $4351: $83
    add e                                         ; $4352: $83
    add e                                         ; $4353: $83
    add e                                         ; $4354: $83
    add e                                         ; $4355: $83
    add e                                         ; $4356: $83
    add e                                         ; $4357: $83
    add e                                         ; $4358: $83
    add e                                         ; $4359: $83
    add e                                         ; $435a: $83
    add e                                         ; $435b: $83
    add e                                         ; $435c: $83
    add e                                         ; $435d: $83
    add e                                         ; $435e: $83
    add e                                         ; $435f: $83
    add e                                         ; $4360: $83
    add e                                         ; $4361: $83
    add e                                         ; $4362: $83
    add e                                         ; $4363: $83
    add e                                         ; $4364: $83
    add e                                         ; $4365: $83
    add e                                         ; $4366: $83
    add e                                         ; $4367: $83
    add e                                         ; $4368: $83
    add e                                         ; $4369: $83
    add e                                         ; $436a: $83
    add e                                         ; $436b: $83
    add e                                         ; $436c: $83
    add e                                         ; $436d: $83
    add e                                         ; $436e: $83
    add e                                         ; $436f: $83
    add e                                         ; $4370: $83
    add e                                         ; $4371: $83
    add e                                         ; $4372: $83
    add e                                         ; $4373: $83
    add e                                         ; $4374: $83
    add e                                         ; $4375: $83
    add e                                         ; $4376: $83
    add e                                         ; $4377: $83
    add e                                         ; $4378: $83
    add e                                         ; $4379: $83
    add e                                         ; $437a: $83
    add e                                         ; $437b: $83
    add e                                         ; $437c: $83
    add e                                         ; $437d: $83
    add e                                         ; $437e: $83
    add e                                         ; $437f: $83
    add e                                         ; $4380: $83
    add e                                         ; $4381: $83
    add e                                         ; $4382: $83
    add e                                         ; $4383: $83
    add e                                         ; $4384: $83
    add e                                         ; $4385: $83
    add e                                         ; $4386: $83
    add e                                         ; $4387: $83
    add e                                         ; $4388: $83
    add e                                         ; $4389: $83
    add e                                         ; $438a: $83
    add e                                         ; $438b: $83
    add e                                         ; $438c: $83
    add e                                         ; $438d: $83
    add e                                         ; $438e: $83
    add e                                         ; $438f: $83
    add e                                         ; $4390: $83
    add e                                         ; $4391: $83
    add e                                         ; $4392: $83
    add e                                         ; $4393: $83
    add e                                         ; $4394: $83
    add e                                         ; $4395: $83
    add e                                         ; $4396: $83
    add e                                         ; $4397: $83
    add e                                         ; $4398: $83
    add e                                         ; $4399: $83
    add e                                         ; $439a: $83
    add e                                         ; $439b: $83
    add e                                         ; $439c: $83
    add e                                         ; $439d: $83
    add e                                         ; $439e: $83
    add e                                         ; $439f: $83
    add e                                         ; $43a0: $83
    add e                                         ; $43a1: $83
    add e                                         ; $43a2: $83
    add e                                         ; $43a3: $83
    add e                                         ; $43a4: $83
    add e                                         ; $43a5: $83
    add e                                         ; $43a6: $83
    add e                                         ; $43a7: $83
    add e                                         ; $43a8: $83
    add e                                         ; $43a9: $83
    add e                                         ; $43aa: $83
    add e                                         ; $43ab: $83
    add e                                         ; $43ac: $83
    add e                                         ; $43ad: $83
    add e                                         ; $43ae: $83
    add e                                         ; $43af: $83
    add e                                         ; $43b0: $83
    add e                                         ; $43b1: $83
    add e                                         ; $43b2: $83
    add e                                         ; $43b3: $83
    add e                                         ; $43b4: $83
    add e                                         ; $43b5: $83
    add e                                         ; $43b6: $83
    add e                                         ; $43b7: $83
    add e                                         ; $43b8: $83
    add e                                         ; $43b9: $83
    add e                                         ; $43ba: $83
    add e                                         ; $43bb: $83
    add e                                         ; $43bc: $83
    add e                                         ; $43bd: $83
    add e                                         ; $43be: $83
    add e                                         ; $43bf: $83
    add e                                         ; $43c0: $83
    add e                                         ; $43c1: $83
    add e                                         ; $43c2: $83
    add e                                         ; $43c3: $83
    add e                                         ; $43c4: $83
    add e                                         ; $43c5: $83
    add e                                         ; $43c6: $83
    add e                                         ; $43c7: $83
    add e                                         ; $43c8: $83
    add e                                         ; $43c9: $83
    add e                                         ; $43ca: $83
    add e                                         ; $43cb: $83
    add e                                         ; $43cc: $83
    add e                                         ; $43cd: $83
    add e                                         ; $43ce: $83
    add e                                         ; $43cf: $83
    add e                                         ; $43d0: $83
    add e                                         ; $43d1: $83
    add e                                         ; $43d2: $83
    add e                                         ; $43d3: $83
    add e                                         ; $43d4: $83
    add e                                         ; $43d5: $83
    add e                                         ; $43d6: $83
    add e                                         ; $43d7: $83
    add e                                         ; $43d8: $83
    add e                                         ; $43d9: $83
    add e                                         ; $43da: $83
    add e                                         ; $43db: $83
    add e                                         ; $43dc: $83
    add e                                         ; $43dd: $83
    add e                                         ; $43de: $83
    add e                                         ; $43df: $83
    add e                                         ; $43e0: $83
    add e                                         ; $43e1: $83
    add e                                         ; $43e2: $83
    add e                                         ; $43e3: $83
    add e                                         ; $43e4: $83
    add e                                         ; $43e5: $83
    add e                                         ; $43e6: $83
    add e                                         ; $43e7: $83
    add e                                         ; $43e8: $83
    add e                                         ; $43e9: $83
    add e                                         ; $43ea: $83
    add e                                         ; $43eb: $83
    add e                                         ; $43ec: $83
    add e                                         ; $43ed: $83
    add e                                         ; $43ee: $83
    add e                                         ; $43ef: $83
    add e                                         ; $43f0: $83
    add e                                         ; $43f1: $83
    add e                                         ; $43f2: $83
    add e                                         ; $43f3: $83
    add e                                         ; $43f4: $83
    add e                                         ; $43f5: $83
    add e                                         ; $43f6: $83
    add e                                         ; $43f7: $83
    add e                                         ; $43f8: $83
    add e                                         ; $43f9: $83
    add e                                         ; $43fa: $83
    add e                                         ; $43fb: $83
    add e                                         ; $43fc: $83
    add e                                         ; $43fd: $83
    add e                                         ; $43fe: $83
    add e                                         ; $43ff: $83
    add e                                         ; $4400: $83
    add e                                         ; $4401: $83
    add e                                         ; $4402: $83
    add e                                         ; $4403: $83
    add e                                         ; $4404: $83
    add e                                         ; $4405: $83
    add e                                         ; $4406: $83
    add e                                         ; $4407: $83
    add e                                         ; $4408: $83
    add e                                         ; $4409: $83
    add e                                         ; $440a: $83
    add e                                         ; $440b: $83
    add e                                         ; $440c: $83
    add e                                         ; $440d: $83
    add e                                         ; $440e: $83
    add e                                         ; $440f: $83
    add e                                         ; $4410: $83
    add e                                         ; $4411: $83
    add e                                         ; $4412: $83
    add e                                         ; $4413: $83
    add e                                         ; $4414: $83
    add e                                         ; $4415: $83
    add e                                         ; $4416: $83
    add e                                         ; $4417: $83
    add e                                         ; $4418: $83
    add e                                         ; $4419: $83
    add e                                         ; $441a: $83
    add e                                         ; $441b: $83
    add e                                         ; $441c: $83
    add e                                         ; $441d: $83
    add e                                         ; $441e: $83
    add e                                         ; $441f: $83
    add e                                         ; $4420: $83
    add e                                         ; $4421: $83
    add e                                         ; $4422: $83
    add e                                         ; $4423: $83
    add e                                         ; $4424: $83
    add e                                         ; $4425: $83
    add e                                         ; $4426: $83
    add e                                         ; $4427: $83
    add e                                         ; $4428: $83
    add e                                         ; $4429: $83
    add e                                         ; $442a: $83
    add e                                         ; $442b: $83
    add e                                         ; $442c: $83
    add e                                         ; $442d: $83
    add e                                         ; $442e: $83
    add e                                         ; $442f: $83
    add e                                         ; $4430: $83
    add e                                         ; $4431: $83
    add e                                         ; $4432: $83
    add e                                         ; $4433: $83
    add e                                         ; $4434: $83
    add e                                         ; $4435: $83
    add e                                         ; $4436: $83
    add e                                         ; $4437: $83
    add e                                         ; $4438: $83
    add e                                         ; $4439: $83
    add e                                         ; $443a: $83
    add e                                         ; $443b: $83
    add e                                         ; $443c: $83
    add e                                         ; $443d: $83
    add e                                         ; $443e: $83
    add e                                         ; $443f: $83
    add e                                         ; $4440: $83
    add e                                         ; $4441: $83
    add e                                         ; $4442: $83
    add e                                         ; $4443: $83
    add e                                         ; $4444: $83
    add e                                         ; $4445: $83
    add e                                         ; $4446: $83
    add e                                         ; $4447: $83
    add e                                         ; $4448: $83
    add e                                         ; $4449: $83
    add e                                         ; $444a: $83
    add e                                         ; $444b: $83
    add e                                         ; $444c: $83
    add e                                         ; $444d: $83
    add e                                         ; $444e: $83
    add e                                         ; $444f: $83
    add e                                         ; $4450: $83
    add e                                         ; $4451: $83
    add e                                         ; $4452: $83
    add e                                         ; $4453: $83
    add e                                         ; $4454: $83
    add e                                         ; $4455: $83
    add e                                         ; $4456: $83
    add e                                         ; $4457: $83
    add e                                         ; $4458: $83
    add e                                         ; $4459: $83
    add e                                         ; $445a: $83
    add e                                         ; $445b: $83
    add e                                         ; $445c: $83
    add e                                         ; $445d: $83
    add e                                         ; $445e: $83
    add e                                         ; $445f: $83
    add e                                         ; $4460: $83
    add e                                         ; $4461: $83
    add e                                         ; $4462: $83
    add e                                         ; $4463: $83
    add e                                         ; $4464: $83
    add e                                         ; $4465: $83
    add e                                         ; $4466: $83
    add e                                         ; $4467: $83
    add e                                         ; $4468: $83
    add e                                         ; $4469: $83
    add e                                         ; $446a: $83
    add e                                         ; $446b: $83
    add e                                         ; $446c: $83
    add e                                         ; $446d: $83
    add e                                         ; $446e: $83
    add e                                         ; $446f: $83
    add e                                         ; $4470: $83
    add e                                         ; $4471: $83
    add e                                         ; $4472: $83
    add e                                         ; $4473: $83
    add e                                         ; $4474: $83
    add e                                         ; $4475: $83
    add e                                         ; $4476: $83
    add e                                         ; $4477: $83
    add e                                         ; $4478: $83
    add e                                         ; $4479: $83
    add e                                         ; $447a: $83
    add e                                         ; $447b: $83
    add e                                         ; $447c: $83
    add e                                         ; $447d: $83
    add e                                         ; $447e: $83
    add e                                         ; $447f: $83
    add e                                         ; $4480: $83
    add e                                         ; $4481: $83
    add e                                         ; $4482: $83
    add e                                         ; $4483: $83
    add e                                         ; $4484: $83
    add e                                         ; $4485: $83
    add e                                         ; $4486: $83
    add e                                         ; $4487: $83
    add e                                         ; $4488: $83
    add e                                         ; $4489: $83
    add e                                         ; $448a: $83
    add e                                         ; $448b: $83
    add e                                         ; $448c: $83
    add e                                         ; $448d: $83
    add e                                         ; $448e: $83
    add e                                         ; $448f: $83
    add e                                         ; $4490: $83
    add e                                         ; $4491: $83
    add e                                         ; $4492: $83
    add e                                         ; $4493: $83
    add e                                         ; $4494: $83
    add e                                         ; $4495: $83
    add e                                         ; $4496: $83
    add e                                         ; $4497: $83
    add e                                         ; $4498: $83
    add e                                         ; $4499: $83
    add e                                         ; $449a: $83
    add e                                         ; $449b: $83
    add e                                         ; $449c: $83
    add e                                         ; $449d: $83
    add e                                         ; $449e: $83
    add e                                         ; $449f: $83
    add e                                         ; $44a0: $83
    add e                                         ; $44a1: $83
    add e                                         ; $44a2: $83
    add e                                         ; $44a3: $83
    add e                                         ; $44a4: $83
    add e                                         ; $44a5: $83
    add e                                         ; $44a6: $83
    add e                                         ; $44a7: $83
    add e                                         ; $44a8: $83
    add e                                         ; $44a9: $83
    add e                                         ; $44aa: $83
    add e                                         ; $44ab: $83
    add e                                         ; $44ac: $83
    add e                                         ; $44ad: $83
    add e                                         ; $44ae: $83
    add e                                         ; $44af: $83
    add e                                         ; $44b0: $83
    add e                                         ; $44b1: $83
    add e                                         ; $44b2: $83
    add e                                         ; $44b3: $83
    add e                                         ; $44b4: $83
    add e                                         ; $44b5: $83
    add e                                         ; $44b6: $83
    add e                                         ; $44b7: $83
    add e                                         ; $44b8: $83
    add e                                         ; $44b9: $83
    add e                                         ; $44ba: $83
    add e                                         ; $44bb: $83
    add e                                         ; $44bc: $83
    add e                                         ; $44bd: $83
    add e                                         ; $44be: $83
    add e                                         ; $44bf: $83
    add e                                         ; $44c0: $83
    add e                                         ; $44c1: $83
    add e                                         ; $44c2: $83
    add e                                         ; $44c3: $83
    add e                                         ; $44c4: $83
    add e                                         ; $44c5: $83
    add e                                         ; $44c6: $83
    add e                                         ; $44c7: $83
    add e                                         ; $44c8: $83
    add e                                         ; $44c9: $83
    add e                                         ; $44ca: $83
    add e                                         ; $44cb: $83
    add e                                         ; $44cc: $83
    add e                                         ; $44cd: $83
    add e                                         ; $44ce: $83
    add e                                         ; $44cf: $83
    add e                                         ; $44d0: $83
    add e                                         ; $44d1: $83
    add e                                         ; $44d2: $83
    add e                                         ; $44d3: $83
    add e                                         ; $44d4: $83
    add e                                         ; $44d5: $83
    add e                                         ; $44d6: $83
    add e                                         ; $44d7: $83
    add e                                         ; $44d8: $83
    add e                                         ; $44d9: $83
    add e                                         ; $44da: $83
    add e                                         ; $44db: $83
    add e                                         ; $44dc: $83
    add e                                         ; $44dd: $83
    add e                                         ; $44de: $83
    add e                                         ; $44df: $83
    add e                                         ; $44e0: $83
    add e                                         ; $44e1: $83
    add e                                         ; $44e2: $83
    add e                                         ; $44e3: $83
    add e                                         ; $44e4: $83
    add e                                         ; $44e5: $83
    add e                                         ; $44e6: $83
    add e                                         ; $44e7: $83
    add e                                         ; $44e8: $83
    add e                                         ; $44e9: $83
    add e                                         ; $44ea: $83
    add e                                         ; $44eb: $83
    add e                                         ; $44ec: $83
    add e                                         ; $44ed: $83
    add e                                         ; $44ee: $83
    add e                                         ; $44ef: $83
    add e                                         ; $44f0: $83
    add e                                         ; $44f1: $83
    add e                                         ; $44f2: $83
    add e                                         ; $44f3: $83
    add e                                         ; $44f4: $83
    add e                                         ; $44f5: $83
    add e                                         ; $44f6: $83
    add e                                         ; $44f7: $83
    add e                                         ; $44f8: $83
    add e                                         ; $44f9: $83
    add e                                         ; $44fa: $83
    add e                                         ; $44fb: $83
    add e                                         ; $44fc: $83
    add e                                         ; $44fd: $83
    add e                                         ; $44fe: $83
    add e                                         ; $44ff: $83
    add e                                         ; $4500: $83
    add e                                         ; $4501: $83
    add e                                         ; $4502: $83
    add e                                         ; $4503: $83
    add e                                         ; $4504: $83
    add e                                         ; $4505: $83
    add e                                         ; $4506: $83
    add e                                         ; $4507: $83
    add e                                         ; $4508: $83
    add e                                         ; $4509: $83
    add e                                         ; $450a: $83
    add e                                         ; $450b: $83
    add e                                         ; $450c: $83
    add e                                         ; $450d: $83
    add e                                         ; $450e: $83
    add e                                         ; $450f: $83
    add e                                         ; $4510: $83
    add e                                         ; $4511: $83
    add e                                         ; $4512: $83
    add e                                         ; $4513: $83
    add e                                         ; $4514: $83
    add e                                         ; $4515: $83
    add e                                         ; $4516: $83
    add e                                         ; $4517: $83
    add e                                         ; $4518: $83
    add e                                         ; $4519: $83
    add e                                         ; $451a: $83
    add e                                         ; $451b: $83
    add e                                         ; $451c: $83
    add e                                         ; $451d: $83
    add e                                         ; $451e: $83
    add e                                         ; $451f: $83
    add e                                         ; $4520: $83
    add e                                         ; $4521: $83
    add e                                         ; $4522: $83
    add e                                         ; $4523: $83
    add e                                         ; $4524: $83
    add e                                         ; $4525: $83
    add e                                         ; $4526: $83
    add e                                         ; $4527: $83
    add e                                         ; $4528: $83
    add e                                         ; $4529: $83
    add e                                         ; $452a: $83
    add e                                         ; $452b: $83
    add e                                         ; $452c: $83
    add e                                         ; $452d: $83
    add e                                         ; $452e: $83
    add e                                         ; $452f: $83
    add e                                         ; $4530: $83
    add e                                         ; $4531: $83
    add e                                         ; $4532: $83
    add e                                         ; $4533: $83
    add e                                         ; $4534: $83
    add e                                         ; $4535: $83
    add e                                         ; $4536: $83
    add e                                         ; $4537: $83
    add e                                         ; $4538: $83
    add e                                         ; $4539: $83
    add e                                         ; $453a: $83
    add e                                         ; $453b: $83
    add e                                         ; $453c: $83
    add e                                         ; $453d: $83
    add e                                         ; $453e: $83
    add e                                         ; $453f: $83
    add e                                         ; $4540: $83
    add e                                         ; $4541: $83
    add e                                         ; $4542: $83
    add e                                         ; $4543: $83
    add e                                         ; $4544: $83
    add e                                         ; $4545: $83
    add e                                         ; $4546: $83
    add e                                         ; $4547: $83
    add e                                         ; $4548: $83
    add e                                         ; $4549: $83
    add e                                         ; $454a: $83
    sbc h                                         ; $454b: $9c
    sbc l                                         ; $454c: $9d
    sbc [hl]                                      ; $454d: $9e
    sbc a                                         ; $454e: $9f
    and b                                         ; $454f: $a0
    and c                                         ; $4550: $a1
    and d                                         ; $4551: $a2
    and e                                         ; $4552: $a3
    and h                                         ; $4553: $a4
    and l                                         ; $4554: $a5
    and [hl]                                      ; $4555: $a6
    sbc l                                         ; $4556: $9d
    sbc [hl]                                      ; $4557: $9e
    sbc a                                         ; $4558: $9f
    and c                                         ; $4559: $a1
    and a                                         ; $455a: $a7
    xor b                                         ; $455b: $a8
    xor c                                         ; $455c: $a9
    xor d                                         ; $455d: $aa
    sbc l                                         ; $455e: $9d
    xor e                                         ; $455f: $ab
    xor h                                         ; $4560: $ac
    xor l                                         ; $4561: $ad
    sbc l                                         ; $4562: $9d
    sbc [hl]                                      ; $4563: $9e
    and c                                         ; $4564: $a1
    sbc l                                         ; $4565: $9d
    sbc [hl]                                      ; $4566: $9e
    sbc a                                         ; $4567: $9f
    xor b                                         ; $4568: $a8
    xor c                                         ; $4569: $a9
    xor d                                         ; $456a: $aa
    sbc l                                         ; $456b: $9d
    sbc [hl]                                      ; $456c: $9e
    sbc a                                         ; $456d: $9f
    xor [hl]                                      ; $456e: $ae
    xor a                                         ; $456f: $af
    or b                                          ; $4570: $b0
    or c                                          ; $4571: $b1
    or d                                          ; $4572: $b2
    or e                                          ; $4573: $b3
    sbc a                                         ; $4574: $9f
    sbc a                                         ; $4575: $9f
    and c                                         ; $4576: $a1
    and e                                         ; $4577: $a3
    and h                                         ; $4578: $a4
    sbc l                                         ; $4579: $9d
    sbc [hl]                                      ; $457a: $9e
    sbc a                                         ; $457b: $9f
    and c                                         ; $457c: $a1
    xor c                                         ; $457d: $a9
    xor d                                         ; $457e: $aa
    sbc l                                         ; $457f: $9d
    sbc [hl]                                      ; $4580: $9e
    sbc a                                         ; $4581: $9f
    and c                                         ; $4582: $a1
    and a                                         ; $4583: $a7
    xor b                                         ; $4584: $a8
    and c                                         ; $4585: $a1
    and h                                         ; $4586: $a4
    sbc a                                         ; $4587: $9f
    and c                                         ; $4588: $a1
    and c                                         ; $4589: $a1
    sbc l                                         ; $458a: $9d
    sbc [hl]                                      ; $458b: $9e
    sbc a                                         ; $458c: $9f
    sbc l                                         ; $458d: $9d
    sbc l                                         ; $458e: $9d
    xor e                                         ; $458f: $ab
    or h                                          ; $4590: $b4
    xor e                                         ; $4591: $ab
    sbc l                                         ; $4592: $9d
    sbc a                                         ; $4593: $9f
    and c                                         ; $4594: $a1
    sbc a                                         ; $4595: $9f
    and c                                         ; $4596: $a1
    and a                                         ; $4597: $a7
    sbc [hl]                                      ; $4598: $9e
    xor c                                         ; $4599: $a9
    xor d                                         ; $459a: $aa
    sbc [hl]                                      ; $459b: $9e
    and c                                         ; $459c: $a1
    and c                                         ; $459d: $a1
    sbc [hl]                                      ; $459e: $9e
    sbc a                                         ; $459f: $9f
    sbc l                                         ; $45a0: $9d
    and c                                         ; $45a1: $a1
    sbc l                                         ; $45a2: $9d
    and c                                         ; $45a3: $a1
    and h                                         ; $45a4: $a4
    sbc l                                         ; $45a5: $9d
    or l                                          ; $45a6: $b5
    xor a                                         ; $45a7: $af
    or b                                          ; $45a8: $b0
    or c                                          ; $45a9: $b1
    or [hl]                                       ; $45aa: $b6
    or e                                          ; $45ab: $b3
    and h                                         ; $45ac: $a4
    sbc [hl]                                      ; $45ad: $9e
    sbc l                                         ; $45ae: $9d
    sbc a                                         ; $45af: $9f
    and c                                         ; $45b0: $a1
    sbc [hl]                                      ; $45b1: $9e
    sbc l                                         ; $45b2: $9d
    and a                                         ; $45b3: $a7
    sbc [hl]                                      ; $45b4: $9e
    xor e                                         ; $45b5: $ab
    or a                                          ; $45b6: $b7
    xor e                                         ; $45b7: $ab
    sbc l                                         ; $45b8: $9d
    and c                                         ; $45b9: $a1
    and h                                         ; $45ba: $a4
    sbc a                                         ; $45bb: $9f
    sbc a                                         ; $45bc: $9f
    and c                                         ; $45bd: $a1
    sbc a                                         ; $45be: $9f
    and c                                         ; $45bf: $a1
    sbc [hl]                                      ; $45c0: $9e
    sbc [hl]                                      ; $45c1: $9e
    sbc l                                         ; $45c2: $9d
    and c                                         ; $45c3: $a1
    and e                                         ; $45c4: $a3
    and h                                         ; $45c5: $a4
    sbc l                                         ; $45c6: $9d
    and c                                         ; $45c7: $a1
    sbc a                                         ; $45c8: $9f
    and c                                         ; $45c9: $a1
    xor c                                         ; $45ca: $a9
    xor d                                         ; $45cb: $aa
    sbc l                                         ; $45cc: $9d
    sbc [hl]                                      ; $45cd: $9e
    and a                                         ; $45ce: $a7
    and c                                         ; $45cf: $a1
    sbc [hl]                                      ; $45d0: $9e
    xor [hl]                                      ; $45d1: $ae
    xor a                                         ; $45d2: $af
    or b                                          ; $45d3: $b0
    or c                                          ; $45d4: $b1
    or [hl]                                       ; $45d5: $b6
    or e                                          ; $45d6: $b3
    and c                                         ; $45d7: $a1
    sbc [hl]                                      ; $45d8: $9e
    sbc l                                         ; $45d9: $9d
    sbc a                                         ; $45da: $9f
    xor c                                         ; $45db: $a9
    xor d                                         ; $45dc: $aa
    sbc l                                         ; $45dd: $9d
    sbc [hl]                                      ; $45de: $9e
    sbc a                                         ; $45df: $9f
    and c                                         ; $45e0: $a1
    and a                                         ; $45e1: $a7
    xor b                                         ; $45e2: $a8
    and c                                         ; $45e3: $a1
    and h                                         ; $45e4: $a4
    sbc a                                         ; $45e5: $9f
    and c                                         ; $45e6: $a1
    and c                                         ; $45e7: $a1
    sbc l                                         ; $45e8: $9d
    sbc [hl]                                      ; $45e9: $9e
    sbc a                                         ; $45ea: $9f
    cp b                                          ; $45eb: $b8
    cp c                                          ; $45ec: $b9
    cp d                                          ; $45ed: $ba
    cp e                                          ; $45ee: $bb
    cp c                                          ; $45ef: $b9
    cp h                                          ; $45f0: $bc
    cp l                                          ; $45f1: $bd
    cp [hl]                                       ; $45f2: $be
    cp a                                          ; $45f3: $bf
    ret nz                                        ; $45f4: $c0

    pop bc                                        ; $45f5: $c1
    cp c                                          ; $45f6: $b9
    cp d                                          ; $45f7: $ba
    jp nz, $c1b9                                  ; $45f8: $c2 $b9 $c1

    cp c                                          ; $45fb: $b9
    xor e                                         ; $45fc: $ab
    jp $aebc                                      ; $45fd: $c3 $bc $ae


    call nz, $bcc5                                ; $4600: $c4 $c5 $bc
    cp c                                          ; $4603: $b9
    pop bc                                        ; $4604: $c1
    cp c                                          ; $4605: $b9
    cp d                                          ; $4606: $ba
    pop bc                                        ; $4607: $c1
    cp c                                          ; $4608: $b9
    xor e                                         ; $4609: $ab
    jp $bab9                                      ; $460a: $c3 $b9 $ba


    jp nz, $c7c6                                  ; $460d: $c2 $c6 $c7

    ret z                                         ; $4610: $c8

    ret                                           ; $4611: $c9


    jp z, $c2cb                                   ; $4612: $ca $cb $c2

    pop bc                                        ; $4615: $c1
    cp c                                          ; $4616: $b9
    cp [hl]                                       ; $4617: $be
    call z, $bab9                                 ; $4618: $cc $b9 $ba
    jp nz, $abb9                                  ; $461b: $c2 $b9 $ab

    jp $c1c2                                      ; $461e: $c3 $c2 $c1


    jp nz, $c1c2                                  ; $4621: $c2 $c2 $c1

    jp nz, $c3ab                                  ; $4624: $c2 $ab $c3

    jp nz, $c1c2                                  ; $4627: $c2 $c2 $c1

    jp nz, $c1ba                                  ; $462a: $c2 $ba $c1

    jp nz, $aec2                                  ; $462d: $c2 $c2 $ae

    call $c2ce                                    ; $4630: $cd $ce $c2
    cp d                                          ; $4633: $ba
    jp nz, $bac2                                  ; $4634: $c2 $c2 $ba

    pop bc                                        ; $4637: $c1
    cp d                                          ; $4638: $ba
    xor e                                         ; $4639: $ab
    jp $c1b9                                      ; $463a: $c3 $b9 $c1


    jp nz, $c1ba                                  ; $463d: $c2 $ba $c1

    jp nz, $bab9                                  ; $4640: $c2 $b9 $ba

    xor e                                         ; $4643: $ab
    jp $cfba                                      ; $4644: $c3 $ba $cf


    rst $00                                       ; $4647: $c7
    ret z                                         ; $4648: $c8

    ret                                           ; $4649: $c9


    jp z, $bfcb                                   ; $464a: $ca $cb $bf

    cp c                                          ; $464d: $b9
    cp c                                          ; $464e: $b9
    ret nc                                        ; $464f: $d0

    cp c                                          ; $4650: $b9
    cp d                                          ; $4651: $ba
    jp nz, $bad0                                  ; $4652: $c2 $d0 $ba

    pop de                                        ; $4655: $d1
    jp nc, $c2d3                                  ; $4656: $d2 $d3 $c2

    cp [hl]                                       ; $4659: $be
    cp a                                          ; $465a: $bf
    jp nz, $c2c2                                  ; $465b: $c2 $c2 $c2

    ret nc                                        ; $465e: $d0

    jp nz, $bab9                                  ; $465f: $c2 $b9 $ba

    jp nz, $bec2                                  ; $4662: $c2 $c2 $be

    cp a                                          ; $4665: $bf
    jp nz, $c2c1                                  ; $4666: $c2 $c1 $c2

    jp nz, $c3ab                                  ; $4669: $c2 $ab $c3

    cp c                                          ; $466c: $b9
    cp d                                          ; $466d: $ba
    ret nc                                        ; $466e: $d0

    cp c                                          ; $466f: $b9
    cp d                                          ; $4670: $ba
    add $c7                                       ; $4671: $c6 $c7
    ret z                                         ; $4673: $c8

    ret                                           ; $4674: $c9


    jp z, $b9cb                                   ; $4675: $ca $cb $b9

    cp c                                          ; $4678: $b9
    cp c                                          ; $4679: $b9
    ret nc                                        ; $467a: $d0

    xor e                                         ; $467b: $ab
    jp $c1c2                                      ; $467c: $c3 $c2 $c1


    jp nz, $c1c2                                  ; $467f: $c2 $c2 $c1

    jp nz, $c3ab                                  ; $4682: $c2 $ab $c3

    jp nz, $c1c2                                  ; $4685: $c2 $c2 $c1

    jp nz, $c1ba                                  ; $4688: $c2 $ba $c1

    call nc, $8080                                ; $468b: $d4 $80 $80
    push de                                       ; $468e: $d5
    add b                                         ; $468f: $80
    add b                                         ; $4690: $80
    add b                                         ; $4691: $80
    sub $d7                                       ; $4692: $d6 $d7
    add b                                         ; $4694: $80
    ret c                                         ; $4695: $d8

    add b                                         ; $4696: $80
    add b                                         ; $4697: $80
    add b                                         ; $4698: $80
    add b                                         ; $4699: $80
    ret c                                         ; $469a: $d8

    add b                                         ; $469b: $80
    reti                                          ; $469c: $d9


    jp c, $db80                                   ; $469d: $da $80 $db

    call c, $80dd                                 ; $46a0: $dc $dd $80
    add b                                         ; $46a3: $80
    ret c                                         ; $46a4: $d8

    add b                                         ; $46a5: $80
    add b                                         ; $46a6: $80
    ret c                                         ; $46a7: $d8

    add b                                         ; $46a8: $80
    sub $de                                       ; $46a9: $d6 $de
    add b                                         ; $46ab: $80
    add b                                         ; $46ac: $80
    add b                                         ; $46ad: $80
    rst $18                                       ; $46ae: $df
    ldh [$e1], a                                  ; $46af: $e0 $e1
    ret                                           ; $46b1: $c9


    ld [c], a                                     ; $46b2: $e2
    db $e3                                        ; $46b3: $e3
    add b                                         ; $46b4: $80
    ret c                                         ; $46b5: $d8

    add b                                         ; $46b6: $80
    db $e4                                        ; $46b7: $e4
    push hl                                       ; $46b8: $e5
    add b                                         ; $46b9: $80
    add b                                         ; $46ba: $80
    add b                                         ; $46bb: $80
    add b                                         ; $46bc: $80
    reti                                          ; $46bd: $d9


    sbc $80                                       ; $46be: $de $80
    ret c                                         ; $46c0: $d8

    add b                                         ; $46c1: $80
    add b                                         ; $46c2: $80
    ret c                                         ; $46c3: $d8

    add b                                         ; $46c4: $80
    sub $de                                       ; $46c5: $d6 $de
    add b                                         ; $46c7: $80
    add b                                         ; $46c8: $80
    ret c                                         ; $46c9: $d8

    add b                                         ; $46ca: $80
    add b                                         ; $46cb: $80
    ret c                                         ; $46cc: $d8

    add b                                         ; $46cd: $80
    add b                                         ; $46ce: $80
    db $db                                        ; $46cf: $db
    jp nc, $80d3                                  ; $46d0: $d2 $d3 $80

    add b                                         ; $46d3: $80
    add b                                         ; $46d4: $80
    add b                                         ; $46d5: $80
    add b                                         ; $46d6: $80
    ret c                                         ; $46d7: $d8

    add b                                         ; $46d8: $80
    sub $de                                       ; $46d9: $d6 $de
    add b                                         ; $46db: $80
    ret c                                         ; $46dc: $d8

    add b                                         ; $46dd: $80
    add b                                         ; $46de: $80
    ret c                                         ; $46df: $d8

    add b                                         ; $46e0: $80
    add b                                         ; $46e1: $80
    add b                                         ; $46e2: $80
    sub $de                                       ; $46e3: $d6 $de
    add b                                         ; $46e5: $80
    and $e0                                       ; $46e6: $e6 $e0
    pop hl                                        ; $46e8: $e1
    ret                                           ; $46e9: $c9


    rst $20                                       ; $46ea: $e7
    add sp, -$17                                  ; $46eb: $e8 $e9
    add b                                         ; $46ed: $80
    add b                                         ; $46ee: $80
    ld [$8080], a                                 ; $46ef: $ea $80 $80
    add b                                         ; $46f2: $80
    ld [$db80], a                                 ; $46f3: $ea $80 $db
    db $eb                                        ; $46f6: $eb
    db $ec                                        ; $46f7: $ec
    add b                                         ; $46f8: $80
    db $e4                                        ; $46f9: $e4
    push hl                                       ; $46fa: $e5
    add b                                         ; $46fb: $80
    add b                                         ; $46fc: $80
    add b                                         ; $46fd: $80
    ld [$8080], a                                 ; $46fe: $ea $80 $80
    add b                                         ; $4701: $80
    add b                                         ; $4702: $80
    add b                                         ; $4703: $80
    db $e4                                        ; $4704: $e4
    push hl                                       ; $4705: $e5
    add b                                         ; $4706: $80
    ret c                                         ; $4707: $d8

    add b                                         ; $4708: $80
    add b                                         ; $4709: $80
    sub $de                                       ; $470a: $d6 $de
    add b                                         ; $470c: $80
    add b                                         ; $470d: $80
    ld [$8080], a                                 ; $470e: $ea $80 $80
    rst $18                                       ; $4711: $df
    ldh [$e1], a                                  ; $4712: $e0 $e1
    ret                                           ; $4714: $c9


    rst $20                                       ; $4715: $e7
    add sp, -$80                                  ; $4716: $e8 $80
    add b                                         ; $4718: $80
    add b                                         ; $4719: $80
    ld [$ded9], a                                 ; $471a: $ea $d9 $de
    add b                                         ; $471d: $80
    ret c                                         ; $471e: $d8

    add b                                         ; $471f: $80
    add b                                         ; $4720: $80
    ret c                                         ; $4721: $d8

    add b                                         ; $4722: $80
    sub $de                                       ; $4723: $d6 $de
    add b                                         ; $4725: $80
    add b                                         ; $4726: $80
    ret c                                         ; $4727: $d8

    add b                                         ; $4728: $80
    add b                                         ; $4729: $80
    ret c                                         ; $472a: $d8

    db $ed                                        ; $472b: $ed
    add c                                         ; $472c: $81
    add c                                         ; $472d: $81
    xor $81                                       ; $472e: $ee $81
    add c                                         ; $4730: $81
    add c                                         ; $4731: $81
    rst $28                                       ; $4732: $ef
    ldh a, [$81]                                  ; $4733: $f0 $81
    xor $81                                       ; $4735: $ee $81
    add c                                         ; $4737: $81
    add c                                         ; $4738: $81
    add c                                         ; $4739: $81
    ld [$ef81], a                                 ; $473a: $ea $81 $ef
    ldh a, [$81]                                  ; $473d: $f0 $81
    rst $18                                       ; $473f: $df
    pop af                                        ; $4740: $f1
    adc $81                                       ; $4741: $ce $81
    add c                                         ; $4743: $81
    ld [$8181], a                                 ; $4744: $ea $81 $81
    ld a, [c]                                     ; $4747: $f2
    add c                                         ; $4748: $81
    rst $28                                       ; $4749: $ef
    di                                            ; $474a: $f3
    add c                                         ; $474b: $81
    add c                                         ; $474c: $81
    add c                                         ; $474d: $81
    db $f4                                        ; $474e: $f4
    xor a                                         ; $474f: $af
    push af                                       ; $4750: $f5
    or $f7                                        ; $4751: $f6 $f7
    ld hl, sp-$7f                                 ; $4753: $f8 $81
    ld a, [c]                                     ; $4755: $f2
    add c                                         ; $4756: $81
    rst $28                                       ; $4757: $ef
    ld sp, hl                                     ; $4758: $f9
    add c                                         ; $4759: $81
    add c                                         ; $475a: $81
    add c                                         ; $475b: $81
    add c                                         ; $475c: $81
    ld a, [$81f3]                                 ; $475d: $fa $f3 $81
    ld a, [c]                                     ; $4760: $f2
    add c                                         ; $4761: $81
    add c                                         ; $4762: $81
    ld [$ef81], a                                 ; $4763: $ea $81 $ef
    di                                            ; $4766: $f3
    add c                                         ; $4767: $81
    add c                                         ; $4768: $81
    ld [$8181], a                                 ; $4769: $ea $81 $81
    ld [$8181], a                                 ; $476c: $ea $81 $81
    rst $18                                       ; $476f: $df
    ei                                            ; $4770: $fb
    db $ec                                        ; $4771: $ec
    add c                                         ; $4772: $81
    add c                                         ; $4773: $81
    add c                                         ; $4774: $81
    add c                                         ; $4775: $81
    add c                                         ; $4776: $81
    ld [$ef81], a                                 ; $4777: $ea $81 $ef
    di                                            ; $477a: $f3
    add c                                         ; $477b: $81
    ld [$8181], a                                 ; $477c: $ea $81 $81
    ld [$8181], a                                 ; $477f: $ea $81 $81
    add c                                         ; $4782: $81
    rst $28                                       ; $4783: $ef
    di                                            ; $4784: $f3
    add c                                         ; $4785: $81
    db $f4                                        ; $4786: $f4
    xor a                                         ; $4787: $af
    push af                                       ; $4788: $f5
    or $fc                                        ; $4789: $f6 $fc
    db $fd                                        ; $478b: $fd
    cp $81                                        ; $478c: $fe $81
    add c                                         ; $478e: $81
    xor $81                                       ; $478f: $ee $81
    add c                                         ; $4791: $81
    add c                                         ; $4792: $81
    ld [$df81], a                                 ; $4793: $ea $81 $df
    rst $38                                       ; $4796: $ff
    adc $81                                       ; $4797: $ce $81
    rst $28                                       ; $4799: $ef
    ld sp, hl                                     ; $479a: $f9
    add c                                         ; $479b: $81
    add c                                         ; $479c: $81
    add c                                         ; $479d: $81
    ld [$8181], a                                 ; $479e: $ea $81 $81
    add c                                         ; $47a1: $81
    add c                                         ; $47a2: $81
    add c                                         ; $47a3: $81
    rst $28                                       ; $47a4: $ef
    ld sp, hl                                     ; $47a5: $f9
    add c                                         ; $47a6: $81
    nop                                           ; $47a7: $00
    add c                                         ; $47a8: $81
    add c                                         ; $47a9: $81
    rst $28                                       ; $47aa: $ef
    di                                            ; $47ab: $f3
    add c                                         ; $47ac: $81
    add c                                         ; $47ad: $81
    ld [$8181], a                                 ; $47ae: $ea $81 $81
    db $f4                                        ; $47b1: $f4
    xor a                                         ; $47b2: $af
    push af                                       ; $47b3: $f5
    or $fc                                        ; $47b4: $f6 $fc
    db $fd                                        ; $47b6: $fd
    add c                                         ; $47b7: $81
    add c                                         ; $47b8: $81
    add c                                         ; $47b9: $81
    ld [$f3fa], a                                 ; $47ba: $ea $fa $f3
    add c                                         ; $47bd: $81
    ld a, [c]                                     ; $47be: $f2
    add c                                         ; $47bf: $81
    add c                                         ; $47c0: $81
    ld [$ef81], a                                 ; $47c1: $ea $81 $ef
    di                                            ; $47c4: $f3
    add c                                         ; $47c5: $81
    add c                                         ; $47c6: $81
    ld [$8181], a                                 ; $47c7: $ea $81 $81
    ld [$8201], a                                 ; $47ca: $ea $01 $82
    add d                                         ; $47cd: $82
    ld [bc], a                                    ; $47ce: $02
    add d                                         ; $47cf: $82
    add d                                         ; $47d0: $82
    add d                                         ; $47d1: $82
    inc bc                                        ; $47d2: $03
    inc b                                         ; $47d3: $04
    add d                                         ; $47d4: $82
    ld [bc], a                                    ; $47d5: $02
    add d                                         ; $47d6: $82
    add d                                         ; $47d7: $82
    add d                                         ; $47d8: $82
    add d                                         ; $47d9: $82
    xor $82                                       ; $47da: $ee $82
    inc bc                                        ; $47dc: $03
    dec b                                         ; $47dd: $05
    add d                                         ; $47de: $82
    xor [hl]                                      ; $47df: $ae
    ld b, $d3                                     ; $47e0: $06 $d3
    add d                                         ; $47e2: $82
    add d                                         ; $47e3: $82
    xor $82                                       ; $47e4: $ee $82
    add d                                         ; $47e6: $82
    ld [bc], a                                    ; $47e7: $02
    add d                                         ; $47e8: $82
    inc bc                                        ; $47e9: $03
    rlca                                          ; $47ea: $07
    add d                                         ; $47eb: $82
    add d                                         ; $47ec: $82
    add d                                         ; $47ed: $82
    ld [$e1c7], sp                                ; $47ee: $08 $c7 $e1
    add hl, bc                                    ; $47f1: $09
    ld a, [bc]                                    ; $47f2: $0a
    dec bc                                        ; $47f3: $0b
    add d                                         ; $47f4: $82
    ld [bc], a                                    ; $47f5: $02
    add d                                         ; $47f6: $82
    inc c                                         ; $47f7: $0c

jr_0c1_47f8:
    dec c                                         ; $47f8: $0d
    add d                                         ; $47f9: $82
    add d                                         ; $47fa: $82
    add d                                         ; $47fb: $82
    add d                                         ; $47fc: $82
    rst $28                                       ; $47fd: $ef
    cp $82                                        ; $47fe: $fe $82
    ld [bc], a                                    ; $4800: $02
    add d                                         ; $4801: $82
    add d                                         ; $4802: $82
    xor $82                                       ; $4803: $ee $82
    inc bc                                        ; $4805: $03
    rlca                                          ; $4806: $07
    add d                                         ; $4807: $82
    add d                                         ; $4808: $82
    xor $82                                       ; $4809: $ee $82
    add d                                         ; $480b: $82
    xor $82                                       ; $480c: $ee $82
    add d                                         ; $480e: $82
    pop de                                        ; $480f: $d1
    ld c, $0f                                     ; $4810: $0e $0f
    add d                                         ; $4812: $82
    add d                                         ; $4813: $82
    add d                                         ; $4814: $82
    add d                                         ; $4815: $82
    add d                                         ; $4816: $82
    xor $82                                       ; $4817: $ee $82
    inc bc                                        ; $4819: $03
    rlca                                          ; $481a: $07
    add d                                         ; $481b: $82
    xor $82                                       ; $481c: $ee $82
    add d                                         ; $481e: $82
    xor $82                                       ; $481f: $ee $82
    add d                                         ; $4821: $82
    add d                                         ; $4822: $82
    inc bc                                        ; $4823: $03
    rlca                                          ; $4824: $07
    add d                                         ; $4825: $82
    db $10                                        ; $4826: $10
    rst $00                                       ; $4827: $c7
    jr nz, jr_0c1_4833                            ; $4828: $20 $09

    ld de, $1312                                  ; $482a: $11 $12 $13
    add d                                         ; $482d: $82
    add d                                         ; $482e: $82
    inc d                                         ; $482f: $14
    add d                                         ; $4830: $82
    add d                                         ; $4831: $82
    add d                                         ; $4832: $82

jr_0c1_4833:
    xor $82                                       ; $4833: $ee $82
    pop de                                        ; $4835: $d1
    dec d                                         ; $4836: $15
    push bc                                       ; $4837: $c5
    add d                                         ; $4838: $82
    inc c                                         ; $4839: $0c
    dec c                                         ; $483a: $0d
    add d                                         ; $483b: $82
    add d                                         ; $483c: $82
    add d                                         ; $483d: $82
    ld [$8282], a                                 ; $483e: $ea $82 $82
    add d                                         ; $4841: $82
    add d                                         ; $4842: $82
    add d                                         ; $4843: $82
    inc c                                         ; $4844: $0c
    dec c                                         ; $4845: $0d
    add d                                         ; $4846: $82
    ld [bc], a                                    ; $4847: $02
    add d                                         ; $4848: $82
    add d                                         ; $4849: $82
    inc bc                                        ; $484a: $03
    rlca                                          ; $484b: $07
    add d                                         ; $484c: $82
    add d                                         ; $484d: $82
    xor $82                                       ; $484e: $ee $82
    add d                                         ; $4850: $82
    ld [$20c7], sp                                ; $4851: $08 $c7 $20
    add hl, bc                                    ; $4854: $09
    ld de, $8212                                  ; $4855: $11 $12 $82
    add d                                         ; $4858: $82
    add d                                         ; $4859: $82
    xor $ef                                       ; $485a: $ee $ef
    cp $82                                        ; $485c: $fe $82
    ld [bc], a                                    ; $485e: $02
    add d                                         ; $485f: $82
    add d                                         ; $4860: $82
    xor $82                                       ; $4861: $ee $82
    inc bc                                        ; $4863: $03
    rlca                                          ; $4864: $07
    add d                                         ; $4865: $82
    add d                                         ; $4866: $82
    xor $82                                       ; $4867: $ee $82
    add d                                         ; $4869: $82
    xor $ee                                       ; $486a: $ee $ee
    add e                                         ; $486c: $83
    add e                                         ; $486d: $83
    ld d, $83                                     ; $486e: $16 $83
    add e                                         ; $4870: $83
    add e                                         ; $4871: $83
    rla                                           ; $4872: $17
    jr jr_0c1_47f8                                ; $4873: $18 $83

    add hl, de                                    ; $4875: $19
    add e                                         ; $4876: $83
    add e                                         ; $4877: $83
    add e                                         ; $4878: $83
    add e                                         ; $4879: $83
    inc d                                         ; $487a: $14

jr_0c1_487b:
    add e                                         ; $487b: $83
    rla                                           ; $487c: $17
    ld a, [de]                                    ; $487d: $1a
    add e                                         ; $487e: $83
    db $db                                        ; $487f: $db
    dec de                                        ; $4880: $1b
    db $ec                                        ; $4881: $ec
    add e                                         ; $4882: $83
    add e                                         ; $4883: $83
    inc d                                         ; $4884: $14
    add e                                         ; $4885: $83
    add e                                         ; $4886: $83
    inc e                                         ; $4887: $1c
    add e                                         ; $4888: $83
    rla                                           ; $4889: $17
    dec e                                         ; $488a: $1d
    add e                                         ; $488b: $83
    add e                                         ; $488c: $83
    add e                                         ; $488d: $83
    ld e, $1f                                     ; $488e: $1e $1f
    jr nz, jr_0c1_48b3                            ; $4890: $20 $21

    ld [hl+], a                                   ; $4892: $22
    inc hl                                        ; $4893: $23
    add e                                         ; $4894: $83
    inc e                                         ; $4895: $1c
    add e                                         ; $4896: $83
    rst $28                                       ; $4897: $ef
    inc h                                         ; $4898: $24
    add e                                         ; $4899: $83
    add e                                         ; $489a: $83
    add e                                         ; $489b: $83
    add e                                         ; $489c: $83
    rst $28                                       ; $489d: $ef
    inc de                                        ; $489e: $13
    add e                                         ; $489f: $83
    inc e                                         ; $48a0: $1c
    add e                                         ; $48a1: $83
    add e                                         ; $48a2: $83
    inc d                                         ; $48a3: $14
    add e                                         ; $48a4: $83
    rla                                           ; $48a5: $17
    dec e                                         ; $48a6: $1d
    add e                                         ; $48a7: $83
    add e                                         ; $48a8: $83
    inc d                                         ; $48a9: $14
    add e                                         ; $48aa: $83
    add e                                         ; $48ab: $83
    inc d                                         ; $48ac: $14
    add e                                         ; $48ad: $83
    add e                                         ; $48ae: $83
    rst $18                                       ; $48af: $df
    dec h                                         ; $48b0: $25
    ld h, $83                                     ; $48b1: $26 $83

jr_0c1_48b3:
    add e                                         ; $48b3: $83
    add e                                         ; $48b4: $83
    add e                                         ; $48b5: $83
    add e                                         ; $48b6: $83
    inc d                                         ; $48b7: $14
    add e                                         ; $48b8: $83
    rla                                           ; $48b9: $17
    dec e                                         ; $48ba: $1d
    add e                                         ; $48bb: $83
    inc d                                         ; $48bc: $14
    add e                                         ; $48bd: $83
    add e                                         ; $48be: $83
    inc d                                         ; $48bf: $14
    add e                                         ; $48c0: $83
    add e                                         ; $48c1: $83
    add e                                         ; $48c2: $83
    rla                                           ; $48c3: $17
    dec e                                         ; $48c4: $1d
    add e                                         ; $48c5: $83
    ld e, $1f                                     ; $48c6: $1e $1f
    jr nz, jr_0c1_48eb                            ; $48c8: $20 $21

    daa                                           ; $48ca: $27
    jr z, jr_0c1_48f6                             ; $48cb: $28 $29

    add e                                         ; $48cd: $83
    add e                                         ; $48ce: $83
    inc e                                         ; $48cf: $1c
    add e                                         ; $48d0: $83
    add e                                         ; $48d1: $83
    add e                                         ; $48d2: $83
    inc d                                         ; $48d3: $14
    add e                                         ; $48d4: $83
    rst $18                                       ; $48d5: $df
    ld c, $0f                                     ; $48d6: $0e $0f
    add e                                         ; $48d8: $83
    rst $28                                       ; $48d9: $ef
    inc h                                         ; $48da: $24
    add e                                         ; $48db: $83
    add e                                         ; $48dc: $83
    add e                                         ; $48dd: $83
    xor $83                                       ; $48de: $ee $83
    add e                                         ; $48e0: $83
    add e                                         ; $48e1: $83
    add e                                         ; $48e2: $83
    add e                                         ; $48e3: $83
    rst $28                                       ; $48e4: $ef
    inc h                                         ; $48e5: $24
    add e                                         ; $48e6: $83
    add hl, de                                    ; $48e7: $19
    add e                                         ; $48e8: $83
    add e                                         ; $48e9: $83
    rla                                           ; $48ea: $17

jr_0c1_48eb:
    dec e                                         ; $48eb: $1d
    add e                                         ; $48ec: $83
    add e                                         ; $48ed: $83
    inc d                                         ; $48ee: $14
    add e                                         ; $48ef: $83
    add e                                         ; $48f0: $83
    ld e, $1f                                     ; $48f1: $1e $1f
    jr nz, jr_0c1_4916                            ; $48f3: $20 $21

    daa                                           ; $48f5: $27

jr_0c1_48f6:
    jr z, jr_0c1_487b                             ; $48f6: $28 $83

    add e                                         ; $48f8: $83
    add e                                         ; $48f9: $83
    inc d                                         ; $48fa: $14
    rst $28                                       ; $48fb: $ef
    inc de                                        ; $48fc: $13
    add e                                         ; $48fd: $83
    inc e                                         ; $48fe: $1c
    add e                                         ; $48ff: $83
    add e                                         ; $4900: $83
    inc d                                         ; $4901: $14
    add e                                         ; $4902: $83
    rla                                           ; $4903: $17
    dec e                                         ; $4904: $1d
    add e                                         ; $4905: $83
    add e                                         ; $4906: $83
    inc d                                         ; $4907: $14
    add e                                         ; $4908: $83
    add e                                         ; $4909: $83
    inc d                                         ; $490a: $14
    ld [bc], a                                    ; $490b: $02
    add l                                         ; $490c: $85
    add [hl]                                      ; $490d: $86
    ld a, [hl+]                                   ; $490e: $2a
    add h                                         ; $490f: $84
    add l                                         ; $4910: $85
    add [hl]                                      ; $4911: $86
    ld a, [$852b]                                 ; $4912: $fa $2b $85
    ld a, [hl+]                                   ; $4915: $2a

jr_0c1_4916:
    add a                                         ; $4916: $87
    add h                                         ; $4917: $84
    add l                                         ; $4918: $85
    add [hl]                                      ; $4919: $86
    inc e                                         ; $491a: $1c
    add h                                         ; $491b: $84
    ld a, [$872b]                                 ; $491c: $fa $2b $87
    rst $18                                       ; $491f: $df
    inc l                                         ; $4920: $2c
    dec l                                         ; $4921: $2d
    add a                                         ; $4922: $87
    add h                                         ; $4923: $84
    inc e                                         ; $4924: $1c
    add [hl]                                      ; $4925: $86
    add a                                         ; $4926: $87
    ld l, $85                                     ; $4927: $2e $85
    ld a, [$842f]                                 ; $4929: $fa $2f $84
    add l                                         ; $492c: $85
    add [hl]                                      ; $492d: $86
    jr nc, jr_0c1_4961                            ; $492e: $30 $31

    ld [hl-], a                                   ; $4930: $32
    inc sp                                        ; $4931: $33
    jp z, $8534                                   ; $4932: $ca $34 $85

    ld l, $87                                     ; $4935: $2e $87
    ld a, [$8635]                                 ; $4937: $fa $35 $86
    add a                                         ; $493a: $87
    add h                                         ; $493b: $84
    add l                                         ; $493c: $85
    inc bc                                        ; $493d: $03
    ld a, [hl+]                                   ; $493e: $2a
    add h                                         ; $493f: $84
    ld l, $86                                     ; $4940: $2e $86
    add a                                         ; $4942: $87
    inc e                                         ; $4943: $1c
    add l                                         ; $4944: $85
    ld a, [$842f]                                 ; $4945: $fa $2f $84
    add l                                         ; $4948: $85
    inc e                                         ; $4949: $1c
    add a                                         ; $494a: $87
    add h                                         ; $494b: $84
    inc e                                         ; $494c: $1c
    add [hl]                                      ; $494d: $86
    add a                                         ; $494e: $87
    pop de                                        ; $494f: $d1
    ld [hl], $ce                                  ; $4950: $36 $ce
    add a                                         ; $4952: $87
    add h                                         ; $4953: $84
    add l                                         ; $4954: $85
    add [hl]                                      ; $4955: $86
    add a                                         ; $4956: $87
    inc e                                         ; $4957: $1c
    add l                                         ; $4958: $85
    ld a, [$842f]                                 ; $4959: $fa $2f $84
    inc e                                         ; $495c: $1c
    add [hl]                                      ; $495d: $86
    add a                                         ; $495e: $87
    inc e                                         ; $495f: $1c
    add l                                         ; $4960: $85

jr_0c1_4961:
    add [hl]                                      ; $4961: $86
    add a                                         ; $4962: $87
    ld a, [$862f]                                 ; $4963: $fa $2f $86
    jr nc, jr_0c1_4999                            ; $4966: $30 $31

    ld [hl-], a                                   ; $4968: $32
    inc sp                                        ; $4969: $33
    scf                                           ; $496a: $37
    jr c, jr_0c1_4971                             ; $496b: $38 $04

    add [hl]                                      ; $496d: $86
    add a                                         ; $496e: $87
    ld a, [hl+]                                   ; $496f: $2a
    add l                                         ; $4970: $85

jr_0c1_4971:
    add [hl]                                      ; $4971: $86
    add a                                         ; $4972: $87
    inc e                                         ; $4973: $1c
    add l                                         ; $4974: $85
    add hl, sp                                    ; $4975: $39
    dec h                                         ; $4976: $25
    ld h, $85                                     ; $4977: $26 $85
    ld a, [$8435]                                 ; $4979: $fa $35 $84
    add l                                         ; $497c: $85
    add [hl]                                      ; $497d: $86
    inc d                                         ; $497e: $14
    add h                                         ; $497f: $84
    add l                                         ; $4980: $85
    add [hl]                                      ; $4981: $86
    add a                                         ; $4982: $87
    add h                                         ; $4983: $84
    ld a, [$8735]                                 ; $4984: $fa $35 $87
    ld a, [hl+]                                   ; $4987: $2a
    add l                                         ; $4988: $85
    add [hl]                                      ; $4989: $86
    ld a, [$852f]                                 ; $498a: $fa $2f $85
    add [hl]                                      ; $498d: $86
    inc e                                         ; $498e: $1c
    add h                                         ; $498f: $84
    add l                                         ; $4990: $85
    jr nc, jr_0c1_49c4                            ; $4991: $30 $31

    ld [hl-], a                                   ; $4993: $32
    ld a, [hl-]                                   ; $4994: $3a
    dec sp                                        ; $4995: $3b
    inc a                                         ; $4996: $3c
    add h                                         ; $4997: $84
    add l                                         ; $4998: $85

jr_0c1_4999:
    add [hl]                                      ; $4999: $86
    inc e                                         ; $499a: $1c
    inc bc                                        ; $499b: $03
    ld a, [hl+]                                   ; $499c: $2a
    add [hl]                                      ; $499d: $86
    ld l, $84                                     ; $499e: $2e $84
    add l                                         ; $49a0: $85
    inc e                                         ; $49a1: $1c
    add a                                         ; $49a2: $87
    ld a, [$862f]                                 ; $49a3: $fa $2f $86
    add a                                         ; $49a6: $87
    inc e                                         ; $49a7: $1c
    add l                                         ; $49a8: $85
    add [hl]                                      ; $49a9: $86
    inc e                                         ; $49aa: $1c
    add hl, de                                    ; $49ab: $19
    adc c                                         ; $49ac: $89
    adc d                                         ; $49ad: $8a
    xor $88                                       ; $49ae: $ee $88
    adc c                                         ; $49b0: $89
    adc d                                         ; $49b1: $8a
    rst $28                                       ; $49b2: $ef
    di                                            ; $49b3: $f3
    adc c                                         ; $49b4: $89
    ld bc, $888b                                  ; $49b5: $01 $8b $88
    adc c                                         ; $49b8: $89
    adc d                                         ; $49b9: $8a
    ld a, [hl+]                                   ; $49ba: $2a
    adc b                                         ; $49bb: $88
    rst $28                                       ; $49bc: $ef
    di                                            ; $49bd: $f3
    adc e                                         ; $49be: $8b
    pop de                                        ; $49bf: $d1
    dec a                                         ; $49c0: $3d
    push bc                                       ; $49c1: $c5
    adc e                                         ; $49c2: $8b
    adc b                                         ; $49c3: $88

jr_0c1_49c4:
    ld a, [hl+]                                   ; $49c4: $2a
    adc d                                         ; $49c5: $8a
    adc e                                         ; $49c6: $8b
    xor $89                                       ; $49c7: $ee $89
    rst $28                                       ; $49c9: $ef
    ld a, $88                                     ; $49ca: $3e $88
    adc c                                         ; $49cc: $89
    adc d                                         ; $49cd: $8a
    ld e, $3f                                     ; $49ce: $1e $3f
    ld b, b                                       ; $49d0: $40
    ld b, c                                       ; $49d1: $41
    ld b, d                                       ; $49d2: $42
    db $d3                                        ; $49d3: $d3
    adc c                                         ; $49d4: $89
    xor $8b                                       ; $49d5: $ee $8b
    rst $28                                       ; $49d7: $ef
    ld b, e                                       ; $49d8: $43
    adc d                                         ; $49d9: $8a
    adc e                                         ; $49da: $8b
    adc b                                         ; $49db: $88
    adc c                                         ; $49dc: $89
    rla                                           ; $49dd: $17
    ld b, h                                       ; $49de: $44
    adc b                                         ; $49df: $88
    xor $8a                                       ; $49e0: $ee $8a
    adc e                                         ; $49e2: $8b
    ld a, [hl+]                                   ; $49e3: $2a
    adc c                                         ; $49e4: $89
    rst $28                                       ; $49e5: $ef
    ld a, $88                                     ; $49e6: $3e $88
    adc c                                         ; $49e8: $89
    ld a, [hl+]                                   ; $49e9: $2a
    adc e                                         ; $49ea: $8b
    adc b                                         ; $49eb: $88
    ld a, [hl+]                                   ; $49ec: $2a
    adc d                                         ; $49ed: $8a
    adc e                                         ; $49ee: $8b
    rst $18                                       ; $49ef: $df
    ld c, $0f                                     ; $49f0: $0e $0f
    adc e                                         ; $49f2: $8b
    adc b                                         ; $49f3: $88
    adc c                                         ; $49f4: $89
    adc d                                         ; $49f5: $8a
    adc e                                         ; $49f6: $8b
    ld a, [hl+]                                   ; $49f7: $2a
    adc c                                         ; $49f8: $89
    rst $28                                       ; $49f9: $ef
    ld a, $88                                     ; $49fa: $3e $88
    ld a, [hl+]                                   ; $49fc: $2a
    adc d                                         ; $49fd: $8a
    adc e                                         ; $49fe: $8b
    ld a, [hl+]                                   ; $49ff: $2a
    adc c                                         ; $4a00: $89
    adc d                                         ; $4a01: $8a
    adc e                                         ; $4a02: $8b
    rst $28                                       ; $4a03: $ef
    ld a, $8a                                     ; $4a04: $3e $8a
    ld e, $3f                                     ; $4a06: $1e $3f
    ld b, b                                       ; $4a08: $40
    ld b, c                                       ; $4a09: $41
    rst $30                                       ; $4a0a: $f7
    ld b, l                                       ; $4a0b: $45
    ld b, [hl]                                    ; $4a0c: $46
    adc d                                         ; $4a0d: $8a
    adc e                                         ; $4a0e: $8b
    xor $89                                       ; $4a0f: $ee $89
    adc d                                         ; $4a11: $8a
    adc e                                         ; $4a12: $8b
    ld a, [hl+]                                   ; $4a13: $2a
    adc c                                         ; $4a14: $89
    rst $18                                       ; $4a15: $df
    ld [hl], $ce                                  ; $4a16: $36 $ce
    adc c                                         ; $4a18: $89
    rst $28                                       ; $4a19: $ef
    ld b, e                                       ; $4a1a: $43
    adc b                                         ; $4a1b: $88
    adc c                                         ; $4a1c: $89
    adc d                                         ; $4a1d: $8a
    inc e                                         ; $4a1e: $1c
    adc b                                         ; $4a1f: $88
    adc c                                         ; $4a20: $89
    adc d                                         ; $4a21: $8a
    adc e                                         ; $4a22: $8b
    adc b                                         ; $4a23: $88
    rst $28                                       ; $4a24: $ef
    ld b, e                                       ; $4a25: $43
    adc e                                         ; $4a26: $8b
    xor $89                                       ; $4a27: $ee $89
    adc d                                         ; $4a29: $8a
    rst $28                                       ; $4a2a: $ef
    ld a, $89                                     ; $4a2b: $3e $89
    adc d                                         ; $4a2d: $8a
    ld a, [hl+]                                   ; $4a2e: $2a
    adc b                                         ; $4a2f: $88
    adc c                                         ; $4a30: $89
    ld e, $3f                                     ; $4a31: $1e $3f
    ld b, b                                       ; $4a33: $40
    ld hl, $b3fc                                  ; $4a34: $21 $fc $b3
    adc b                                         ; $4a37: $88
    adc c                                         ; $4a38: $89
    adc d                                         ; $4a39: $8a
    ld a, [hl+]                                   ; $4a3a: $2a
    rla                                           ; $4a3b: $17
    ld b, h                                       ; $4a3c: $44
    adc d                                         ; $4a3d: $8a
    xor $88                                       ; $4a3e: $ee $88
    adc c                                         ; $4a40: $89
    ld a, [hl+]                                   ; $4a41: $2a
    adc e                                         ; $4a42: $8b
    rst $28                                       ; $4a43: $ef
    ld a, $8a                                     ; $4a44: $3e $8a
    adc e                                         ; $4a46: $8b
    ld a, [hl+]                                   ; $4a47: $2a
    adc c                                         ; $4a48: $89
    adc d                                         ; $4a49: $8a
    ld a, [hl+]                                   ; $4a4a: $2a
    ld b, a                                       ; $4a4b: $47
    adc l                                         ; $4a4c: $8d
    adc [hl]                                      ; $4a4d: $8e
    ld [bc], a                                    ; $4a4e: $02
    adc h                                         ; $4a4f: $8c
    adc l                                         ; $4a50: $8d
    adc [hl]                                      ; $4a51: $8e
    ld a, [$8d48]                                 ; $4a52: $fa $48 $8d
    xor $8f                                       ; $4a55: $ee $8f
    adc h                                         ; $4a57: $8c
    adc l                                         ; $4a58: $8d
    adc [hl]                                      ; $4a59: $8e
    xor $8c                                       ; $4a5a: $ee $8c
    ld a, [$8f48]                                 ; $4a5c: $fa $48 $8f
    rst $18                                       ; $4a5f: $df
    call $8f49                                    ; $4a60: $cd $49 $8f
    adc h                                         ; $4a63: $8c
    xor $8e                                       ; $4a64: $ee $8e
    adc a                                         ; $4a66: $8f
    ld [bc], a                                    ; $4a67: $02
    adc l                                         ; $4a68: $8d
    ld a, [$8c35]                                 ; $4a69: $fa $35 $8c
    adc l                                         ; $4a6c: $8d
    adc [hl]                                      ; $4a6d: $8e
    ld c, d                                       ; $4a6e: $4a
    ld c, e                                       ; $4a6f: $4b
    jr nz, jr_0c1_4a7b                            ; $4a70: $20 $09

    ld c, h                                       ; $4a72: $4c
    ld c, l                                       ; $4a73: $4d
    adc l                                         ; $4a74: $8d
    ld [bc], a                                    ; $4a75: $02
    adc a                                         ; $4a76: $8f
    ld a, [$8e2f]                                 ; $4a77: $fa $2f $8e
    adc a                                         ; $4a7a: $8f

jr_0c1_4a7b:
    adc h                                         ; $4a7b: $8c
    adc l                                         ; $4a7c: $8d
    ld a, [$8c4e]                                 ; $4a7d: $fa $4e $8c
    ld [bc], a                                    ; $4a80: $02
    adc [hl]                                      ; $4a81: $8e
    adc a                                         ; $4a82: $8f
    xor $8d                                       ; $4a83: $ee $8d
    ld a, [$8c35]                                 ; $4a85: $fa $35 $8c
    adc l                                         ; $4a88: $8d
    xor $8f                                       ; $4a89: $ee $8f
    adc h                                         ; $4a8b: $8c
    xor $8e                                       ; $4a8c: $ee $8e
    adc a                                         ; $4a8e: $8f
    add hl, sp                                    ; $4a8f: $39
    dec h                                         ; $4a90: $25
    ld h, $8f                                     ; $4a91: $26 $8f
    adc h                                         ; $4a93: $8c
    adc l                                         ; $4a94: $8d
    adc [hl]                                      ; $4a95: $8e
    adc a                                         ; $4a96: $8f
    xor $8d                                       ; $4a97: $ee $8d
    ld a, [$8c35]                                 ; $4a99: $fa $35 $8c
    xor $8e                                       ; $4a9c: $ee $8e
    adc a                                         ; $4a9e: $8f
    xor $8d                                       ; $4a9f: $ee $8d
    adc [hl]                                      ; $4aa1: $8e
    adc a                                         ; $4aa2: $8f
    ld a, [$8e35]                                 ; $4aa3: $fa $35 $8e
    ld c, a                                       ; $4aa6: $4f
    ld c, e                                       ; $4aa7: $4b
    jr nz, jr_0c1_4ab3                            ; $4aa8: $20 $09

    ld a, [bc]                                    ; $4aaa: $0a
    ld d, b                                       ; $4aab: $50
    ld d, c                                       ; $4aac: $51
    adc [hl]                                      ; $4aad: $8e
    adc a                                         ; $4aae: $8f
    ld d, d                                       ; $4aaf: $52
    adc l                                         ; $4ab0: $8d
    adc [hl]                                      ; $4ab1: $8e
    adc a                                         ; $4ab2: $8f

jr_0c1_4ab3:
    xor $8d                                       ; $4ab3: $ee $8d
    pop de                                        ; $4ab5: $d1
    ld d, e                                       ; $4ab6: $53
    push bc                                       ; $4ab7: $c5
    adc l                                         ; $4ab8: $8d
    ld a, [$8c2f]                                 ; $4ab9: $fa $2f $8c
    adc l                                         ; $4abc: $8d
    adc [hl]                                      ; $4abd: $8e
    ld a, [hl+]                                   ; $4abe: $2a
    adc h                                         ; $4abf: $8c
    adc l                                         ; $4ac0: $8d
    adc [hl]                                      ; $4ac1: $8e
    adc a                                         ; $4ac2: $8f
    adc h                                         ; $4ac3: $8c
    ld a, [$8f2f]                                 ; $4ac4: $fa $2f $8f
    ld [bc], a                                    ; $4ac7: $02
    adc l                                         ; $4ac8: $8d
    adc [hl]                                      ; $4ac9: $8e
    ld a, [$8d35]                                 ; $4aca: $fa $35 $8d
    adc [hl]                                      ; $4acd: $8e
    xor $8c                                       ; $4ace: $ee $8c
    adc l                                         ; $4ad0: $8d
    ld c, d                                       ; $4ad1: $4a
    ld c, e                                       ; $4ad2: $4b
    jr nz, jr_0c1_4ade                            ; $4ad3: $20 $09

    ld e, l                                       ; $4ad5: $5d
    ld d, b                                       ; $4ad6: $50
    adc h                                         ; $4ad7: $8c
    adc l                                         ; $4ad8: $8d
    adc [hl]                                      ; $4ad9: $8e
    xor $fa                                       ; $4ada: $ee $fa
    ld c, [hl]                                    ; $4adc: $4e
    adc [hl]                                      ; $4add: $8e

jr_0c1_4ade:
    ld [bc], a                                    ; $4ade: $02
    adc h                                         ; $4adf: $8c
    adc l                                         ; $4ae0: $8d
    xor $8f                                       ; $4ae1: $ee $8f
    ld a, [$8e35]                                 ; $4ae3: $fa $35 $8e
    adc a                                         ; $4ae6: $8f
    xor $8d                                       ; $4ae7: $ee $8d
    adc [hl]                                      ; $4ae9: $8e
    xor $01                                       ; $4aea: $ee $01
    sub c                                         ; $4aec: $91
    sub d                                         ; $4aed: $92
    ld d, $90                                     ; $4aee: $16 $90
    sub c                                         ; $4af0: $91
    sub d                                         ; $4af1: $92
    rst $28                                       ; $4af2: $ef
    ld d, h                                       ; $4af3: $54
    sub c                                         ; $4af4: $91
    ld bc, $9093                                  ; $4af5: $01 $93 $90
    sub c                                         ; $4af8: $91
    sub d                                         ; $4af9: $92
    ld d, d                                       ; $4afa: $52
    sub b                                         ; $4afb: $90
    rst $28                                       ; $4afc: $ef
    ld d, h                                       ; $4afd: $54
    sub e                                         ; $4afe: $93
    pop de                                        ; $4aff: $d1
    ld d, l                                       ; $4b00: $55
    push bc                                       ; $4b01: $c5
    sub e                                         ; $4b02: $93
    sub b                                         ; $4b03: $90
    ld d, d                                       ; $4b04: $52
    sub d                                         ; $4b05: $92
    sub e                                         ; $4b06: $93
    add hl, de                                    ; $4b07: $19
    sub c                                         ; $4b08: $91
    rst $28                                       ; $4b09: $ef
    inc h                                         ; $4b0a: $24
    sub b                                         ; $4b0b: $90
    sub c                                         ; $4b0c: $91
    sub d                                         ; $4b0d: $92
    ld d, [hl]                                    ; $4b0e: $56
    ld d, a                                       ; $4b0f: $57
    ld e, b                                       ; $4b10: $58
    ld hl, $5a59                                  ; $4b11: $21 $59 $5a
    sub c                                         ; $4b14: $91
    add hl, de                                    ; $4b15: $19
    sub e                                         ; $4b16: $93
    inc c                                         ; $4b17: $0c
    ld e, e                                       ; $4b18: $5b
    sub d                                         ; $4b19: $92
    sub e                                         ; $4b1a: $93
    sub b                                         ; $4b1b: $90
    sub c                                         ; $4b1c: $91
    rst $28                                       ; $4b1d: $ef
    ld e, h                                       ; $4b1e: $5c
    sub b                                         ; $4b1f: $90
    add hl, de                                    ; $4b20: $19
    sub d                                         ; $4b21: $92
    sub e                                         ; $4b22: $93
    ld d, d                                       ; $4b23: $52
    sub c                                         ; $4b24: $91
    rst $28                                       ; $4b25: $ef
    inc h                                         ; $4b26: $24
    sub b                                         ; $4b27: $90
    sub c                                         ; $4b28: $91
    ld d, d                                       ; $4b29: $52
    sub e                                         ; $4b2a: $93
    sub b                                         ; $4b2b: $90
    ld d, d                                       ; $4b2c: $52
    sub d                                         ; $4b2d: $92
    sub e                                         ; $4b2e: $93
    rst $18                                       ; $4b2f: $df
    ld [hl], $ce                                  ; $4b30: $36 $ce
    sub e                                         ; $4b32: $93
    sub b                                         ; $4b33: $90
    sub c                                         ; $4b34: $91
    sub d                                         ; $4b35: $92
    sub e                                         ; $4b36: $93
    ld d, d                                       ; $4b37: $52
    sub c                                         ; $4b38: $91
    rst $28                                       ; $4b39: $ef
    inc h                                         ; $4b3a: $24
    sub b                                         ; $4b3b: $90
    ld d, d                                       ; $4b3c: $52
    sub d                                         ; $4b3d: $92
    sub e                                         ; $4b3e: $93
    ld d, d                                       ; $4b3f: $52
    sub c                                         ; $4b40: $91
    sub d                                         ; $4b41: $92
    sub e                                         ; $4b42: $93
    rst $28                                       ; $4b43: $ef
    inc h                                         ; $4b44: $24
    sub d                                         ; $4b45: $92
    ld d, [hl]                                    ; $4b46: $56
    ld d, a                                       ; $4b47: $57
    ld e, b                                       ; $4b48: $58
    ld hl, $5e5d                                  ; $4b49: $21 $5d $5e
    ld e, a                                       ; $4b4c: $5f
    sub d                                         ; $4b4d: $92
    sub e                                         ; $4b4e: $93
    ld a, [c]                                     ; $4b4f: $f2
    sub c                                         ; $4b50: $91
    sub d                                         ; $4b51: $92
    sub e                                         ; $4b52: $93
    ld d, d                                       ; $4b53: $52
    sub c                                         ; $4b54: $91
    add hl, sp                                    ; $4b55: $39
    ld h, b                                       ; $4b56: $60
    ld h, $91                                     ; $4b57: $26 $91
    inc c                                         ; $4b59: $0c
    ld e, e                                       ; $4b5a: $5b
    sub b                                         ; $4b5b: $90
    sub c                                         ; $4b5c: $91
    sub d                                         ; $4b5d: $92
    xor $90                                       ; $4b5e: $ee $90
    sub c                                         ; $4b60: $91
    sub d                                         ; $4b61: $92
    sub e                                         ; $4b62: $93
    sub b                                         ; $4b63: $90
    inc c                                         ; $4b64: $0c
    ld e, e                                       ; $4b65: $5b
    sub e                                         ; $4b66: $93
    add hl, de                                    ; $4b67: $19
    sub c                                         ; $4b68: $91
    sub d                                         ; $4b69: $92
    rst $28                                       ; $4b6a: $ef
    inc h                                         ; $4b6b: $24
    sub c                                         ; $4b6c: $91
    sub d                                         ; $4b6d: $92
    ld d, d                                       ; $4b6e: $52
    sub b                                         ; $4b6f: $90
    sub c                                         ; $4b70: $91
    ld d, [hl]                                    ; $4b71: $56
    ld d, a                                       ; $4b72: $57
    ld e, b                                       ; $4b73: $58
    ld hl, $cb5d                                  ; $4b74: $21 $5d $cb
    sub b                                         ; $4b77: $90
    sub c                                         ; $4b78: $91
    sub d                                         ; $4b79: $92
    ld d, d                                       ; $4b7a: $52
    rst $28                                       ; $4b7b: $ef
    ld e, h                                       ; $4b7c: $5c
    sub d                                         ; $4b7d: $92
    add hl, de                                    ; $4b7e: $19
    sub b                                         ; $4b7f: $90
    sub c                                         ; $4b80: $91
    ld d, d                                       ; $4b81: $52
    sub e                                         ; $4b82: $93
    rst $28                                       ; $4b83: $ef
    inc h                                         ; $4b84: $24
    sub d                                         ; $4b85: $92
    sub e                                         ; $4b86: $93
    ld d, d                                       ; $4b87: $52
    sub c                                         ; $4b88: $91
    sub d                                         ; $4b89: $92
    ld d, d                                       ; $4b8a: $52
    xor $95                                       ; $4b8b: $ee $95
    sub h                                         ; $4b8d: $94
    ld d, $94                                     ; $4b8e: $16 $94
    sub l                                         ; $4b90: $95
    sub h                                         ; $4b91: $94
    inc c                                         ; $4b92: $0c
    ld h, c                                       ; $4b93: $61
    sub l                                         ; $4b94: $95
    xor $95                                       ; $4b95: $ee $95
    sub h                                         ; $4b97: $94
    sub l                                         ; $4b98: $95
    sub h                                         ; $4b99: $94
    ld a, [c]                                     ; $4b9a: $f2
    sub h                                         ; $4b9b: $94
    inc c                                         ; $4b9c: $0c
    dec c                                         ; $4b9d: $0d
    sub l                                         ; $4b9e: $95
    rst $18                                       ; $4b9f: $df
    ld h, d                                       ; $4ba0: $62
    rrca                                          ; $4ba1: $0f
    sub l                                         ; $4ba2: $95
    sub h                                         ; $4ba3: $94
    ld a, [c]                                     ; $4ba4: $f2
    sub h                                         ; $4ba5: $94
    sub l                                         ; $4ba6: $95
    inc e                                         ; $4ba7: $1c
    sub l                                         ; $4ba8: $95
    inc c                                         ; $4ba9: $0c
    dec c                                         ; $4baa: $0d
    sub h                                         ; $4bab: $94
    sub l                                         ; $4bac: $95
    sub h                                         ; $4bad: $94
    ld h, e                                       ; $4bae: $63
    ld h, h                                       ; $4baf: $64
    ret z                                         ; $4bb0: $c8

    ret                                           ; $4bb1: $c9


    jp z, $9565                                   ; $4bb2: $ca $65 $95

    inc e                                         ; $4bb5: $1c
    sub l                                         ; $4bb6: $95
    rst $28                                       ; $4bb7: $ef
    ld h, [hl]                                    ; $4bb8: $66
    sub h                                         ; $4bb9: $94
    sub l                                         ; $4bba: $95
    sub h                                         ; $4bbb: $94
    sub l                                         ; $4bbc: $95
    rst $28                                       ; $4bbd: $ef
    ld h, a                                       ; $4bbe: $67
    sub h                                         ; $4bbf: $94
    inc e                                         ; $4bc0: $1c
    sub h                                         ; $4bc1: $94
    sub l                                         ; $4bc2: $95
    ld a, [c]                                     ; $4bc3: $f2
    sub l                                         ; $4bc4: $95
    inc c                                         ; $4bc5: $0c
    dec c                                         ; $4bc6: $0d
    sub h                                         ; $4bc7: $94
    sub l                                         ; $4bc8: $95
    ld a, [c]                                     ; $4bc9: $f2
    sub l                                         ; $4bca: $95
    sub h                                         ; $4bcb: $94
    ld a, [c]                                     ; $4bcc: $f2
    sub h                                         ; $4bcd: $94
    sub l                                         ; $4bce: $95
    pop de                                        ; $4bcf: $d1
    ld d, e                                       ; $4bd0: $53
    push bc                                       ; $4bd1: $c5
    sub l                                         ; $4bd2: $95
    sub h                                         ; $4bd3: $94
    sub l                                         ; $4bd4: $95
    sub h                                         ; $4bd5: $94
    sub l                                         ; $4bd6: $95
    ld a, [c]                                     ; $4bd7: $f2
    sub l                                         ; $4bd8: $95
    inc c                                         ; $4bd9: $0c
    dec c                                         ; $4bda: $0d
    sub h                                         ; $4bdb: $94
    ld a, [c]                                     ; $4bdc: $f2
    sub h                                         ; $4bdd: $94
    sub l                                         ; $4bde: $95
    ld a, [c]                                     ; $4bdf: $f2
    sub l                                         ; $4be0: $95
    sub h                                         ; $4be1: $94
    sub l                                         ; $4be2: $95
    inc c                                         ; $4be3: $0c
    dec c                                         ; $4be4: $0d
    sub h                                         ; $4be5: $94
    ld l, b                                       ; $4be6: $68
    ld h, h                                       ; $4be7: $64
    pop hl                                        ; $4be8: $e1
    ld l, c                                       ; $4be9: $69
    ld l, d                                       ; $4bea: $6a
    ld l, e                                       ; $4beb: $6b
    ld l, h                                       ; $4bec: $6c
    sub h                                         ; $4bed: $94
    sub l                                         ; $4bee: $95
    ld [bc], a                                    ; $4bef: $02
    sub l                                         ; $4bf0: $95
    sub h                                         ; $4bf1: $94
    sub l                                         ; $4bf2: $95
    ld a, [c]                                     ; $4bf3: $f2
    sub l                                         ; $4bf4: $95
    add hl, sp                                    ; $4bf5: $39
    ld c, $0f                                     ; $4bf6: $0e $0f
    sub l                                         ; $4bf8: $95
    rst $28                                       ; $4bf9: $ef
    ld h, [hl]                                    ; $4bfa: $66
    sub h                                         ; $4bfb: $94
    sub l                                         ; $4bfc: $95
    sub h                                         ; $4bfd: $94
    ld d, d                                       ; $4bfe: $52
    sub h                                         ; $4bff: $94
    sub l                                         ; $4c00: $95
    sub h                                         ; $4c01: $94
    sub l                                         ; $4c02: $95
    sub h                                         ; $4c03: $94
    rst $28                                       ; $4c04: $ef
    ld h, [hl]                                    ; $4c05: $66
    sub l                                         ; $4c06: $95
    add hl, de                                    ; $4c07: $19
    sub l                                         ; $4c08: $95
    sub h                                         ; $4c09: $94
    inc c                                         ; $4c0a: $0c
    dec c                                         ; $4c0b: $0d
    sub l                                         ; $4c0c: $95
    sub h                                         ; $4c0d: $94
    ld a, [c]                                     ; $4c0e: $f2
    sub h                                         ; $4c0f: $94
    sub l                                         ; $4c10: $95
    ld h, e                                       ; $4c11: $63
    ld h, h                                       ; $4c12: $64
    pop hl                                        ; $4c13: $e1
    ld l, c                                       ; $4c14: $69
    ld l, d                                       ; $4c15: $6a
    add sp, -$6c                                  ; $4c16: $e8 $94
    sub l                                         ; $4c18: $95
    sub h                                         ; $4c19: $94
    ld a, [c]                                     ; $4c1a: $f2
    rst $28                                       ; $4c1b: $ef
    ld h, a                                       ; $4c1c: $67
    sub h                                         ; $4c1d: $94
    inc e                                         ; $4c1e: $1c
    sub h                                         ; $4c1f: $94
    sub l                                         ; $4c20: $95
    ld a, [c]                                     ; $4c21: $f2
    sub l                                         ; $4c22: $95
    inc c                                         ; $4c23: $0c
    dec c                                         ; $4c24: $0d
    sub h                                         ; $4c25: $94
    sub l                                         ; $4c26: $95
    ld a, [c]                                     ; $4c27: $f2
    sub l                                         ; $4c28: $95
    sub h                                         ; $4c29: $94
    ld a, [c]                                     ; $4c2a: $f2
    ld l, l                                       ; $4c2b: $6d
    sub a                                         ; $4c2c: $97
    sub [hl]                                      ; $4c2d: $96
    ld [bc], a                                    ; $4c2e: $02
    sub [hl]                                      ; $4c2f: $96
    sub a                                         ; $4c30: $97
    sub [hl]                                      ; $4c31: $96
    rst $28                                       ; $4c32: $ef
    ld l, [hl]                                    ; $4c33: $6e
    sub a                                         ; $4c34: $97
    ld [bc], a                                    ; $4c35: $02
    sub a                                         ; $4c36: $97
    sub [hl]                                      ; $4c37: $96
    sub a                                         ; $4c38: $97
    sub [hl]                                      ; $4c39: $96
    ld [bc], a                                    ; $4c3a: $02
    sub [hl]                                      ; $4c3b: $96
    rst $28                                       ; $4c3c: $ef
    ld l, [hl]                                    ; $4c3d: $6e
    sub a                                         ; $4c3e: $97
    add hl, sp                                    ; $4c3f: $39
    ld l, a                                       ; $4c40: $6f
    ld [hl], b                                    ; $4c41: $70
    sub a                                         ; $4c42: $97
    sub [hl]                                      ; $4c43: $96
    ld [bc], a                                    ; $4c44: $02
    sub [hl]                                      ; $4c45: $96
    sub a                                         ; $4c46: $97
    ld [bc], a                                    ; $4c47: $02
    sub a                                         ; $4c48: $97
    rst $28                                       ; $4c49: $ef
    ld h, [hl]                                    ; $4c4a: $66
    sub [hl]                                      ; $4c4b: $96
    sub a                                         ; $4c4c: $97
    sub [hl]                                      ; $4c4d: $96
    db $f4                                        ; $4c4e: $f4
    xor a                                         ; $4c4f: $af
    pop hl                                        ; $4c50: $e1
    ret                                           ; $4c51: $c9


    ld [hl], c                                    ; $4c52: $71
    ld [hl], d                                    ; $4c53: $72
    sub a                                         ; $4c54: $97
    ld [bc], a                                    ; $4c55: $02
    sub a                                         ; $4c56: $97
    ld a, [$9673]                                 ; $4c57: $fa $73 $96
    sub a                                         ; $4c5a: $97
    sub [hl]                                      ; $4c5b: $96
    sub a                                         ; $4c5c: $97
    rst $28                                       ; $4c5d: $ef
    inc h                                         ; $4c5e: $24
    sub [hl]                                      ; $4c5f: $96
    ld [bc], a                                    ; $4c60: $02
    sub [hl]                                      ; $4c61: $96
    sub a                                         ; $4c62: $97
    ld [bc], a                                    ; $4c63: $02
    sub a                                         ; $4c64: $97
    rst $28                                       ; $4c65: $ef
    ld h, [hl]                                    ; $4c66: $66
    sub [hl]                                      ; $4c67: $96
    sub a                                         ; $4c68: $97
    ld [bc], a                                    ; $4c69: $02
    sub a                                         ; $4c6a: $97
    sub [hl]                                      ; $4c6b: $96
    ld [bc], a                                    ; $4c6c: $02
    sub [hl]                                      ; $4c6d: $96
    sub a                                         ; $4c6e: $97
    add hl, sp                                    ; $4c6f: $39
    ld h, b                                       ; $4c70: $60
    ld h, $97                                     ; $4c71: $26 $97
    sub [hl]                                      ; $4c73: $96
    sub a                                         ; $4c74: $97
    sub [hl]                                      ; $4c75: $96
    sub a                                         ; $4c76: $97
    ld [bc], a                                    ; $4c77: $02
    sub a                                         ; $4c78: $97
    rst $28                                       ; $4c79: $ef
    ld h, [hl]                                    ; $4c7a: $66
    sub [hl]                                      ; $4c7b: $96
    ld [bc], a                                    ; $4c7c: $02
    sub [hl]                                      ; $4c7d: $96
    sub a                                         ; $4c7e: $97
    ld [bc], a                                    ; $4c7f: $02
    sub a                                         ; $4c80: $97
    sub [hl]                                      ; $4c81: $96
    sub a                                         ; $4c82: $97
    rst $28                                       ; $4c83: $ef
    ld h, [hl]                                    ; $4c84: $66
    sub [hl]                                      ; $4c85: $96
    db $f4                                        ; $4c86: $f4
    xor a                                         ; $4c87: $af
    push af                                       ; $4c88: $f5
    ld [hl], h                                    ; $4c89: $74
    ld [hl], l                                    ; $4c8a: $75
    halt                                          ; $4c8b: $76
    ld [hl], a                                    ; $4c8c: $77
    sub [hl]                                      ; $4c8d: $96
    sub a                                         ; $4c8e: $97
    ld bc, $9697                                  ; $4c8f: $01 $97 $96
    sub a                                         ; $4c92: $97
    ld [bc], a                                    ; $4c93: $02
    sub a                                         ; $4c94: $97
    rst $18                                       ; $4c95: $df
    dec h                                         ; $4c96: $25
    ld h, $97                                     ; $4c97: $26 $97
    ld a, [$9673]                                 ; $4c99: $fa $73 $96
    sub a                                         ; $4c9c: $97
    sub [hl]                                      ; $4c9d: $96
    ld a, [c]                                     ; $4c9e: $f2
    sub [hl]                                      ; $4c9f: $96
    sub a                                         ; $4ca0: $97
    sub [hl]                                      ; $4ca1: $96
    sub a                                         ; $4ca2: $97
    sub [hl]                                      ; $4ca3: $96
    ld a, [$9773]                                 ; $4ca4: $fa $73 $97
    ld [bc], a                                    ; $4ca7: $02
    sub a                                         ; $4ca8: $97
    sub [hl]                                      ; $4ca9: $96
    rst $28                                       ; $4caa: $ef
    ld h, [hl]                                    ; $4cab: $66
    sub a                                         ; $4cac: $97
    sub [hl]                                      ; $4cad: $96
    ld [bc], a                                    ; $4cae: $02
    sub [hl]                                      ; $4caf: $96
    sub a                                         ; $4cb0: $97
    db $f4                                        ; $4cb1: $f4
    xor a                                         ; $4cb2: $af
    push af                                       ; $4cb3: $f5
    ld [hl], h                                    ; $4cb4: $74
    ld [hl], l                                    ; $4cb5: $75
    ld a, b                                       ; $4cb6: $78
    sub [hl]                                      ; $4cb7: $96
    sub a                                         ; $4cb8: $97
    sub [hl]                                      ; $4cb9: $96
    ld [bc], a                                    ; $4cba: $02
    rst $28                                       ; $4cbb: $ef
    inc h                                         ; $4cbc: $24
    sub [hl]                                      ; $4cbd: $96
    ld [bc], a                                    ; $4cbe: $02
    sub [hl]                                      ; $4cbf: $96
    sub a                                         ; $4cc0: $97
    ld [bc], a                                    ; $4cc1: $02
    sub a                                         ; $4cc2: $97
    rst $28                                       ; $4cc3: $ef
    ld h, [hl]                                    ; $4cc4: $66
    sub [hl]                                      ; $4cc5: $96
    sub a                                         ; $4cc6: $97
    ld [bc], a                                    ; $4cc7: $02
    sub a                                         ; $4cc8: $97
    sub [hl]                                      ; $4cc9: $96
    ld [bc], a                                    ; $4cca: $02
    xor $99                                       ; $4ccb: $ee $99
    sbc b                                         ; $4ccd: $98
    ld d, $98                                     ; $4cce: $16 $98
    sbc c                                         ; $4cd0: $99
    sbc b                                         ; $4cd1: $98
    ld a, [$9979]                                 ; $4cd2: $fa $79 $99
    ld bc, $9899                                  ; $4cd5: $01 $99 $98
    sbc c                                         ; $4cd8: $99
    sbc b                                         ; $4cd9: $98
    ld bc, $fa98                                  ; $4cda: $01 $98 $fa
    ld a, c                                       ; $4cdd: $79
    sbc c                                         ; $4cde: $99
    xor [hl]                                      ; $4cdf: $ae
    ld a, d                                       ; $4ce0: $7a
    db $d3                                        ; $4ce1: $d3
    sbc c                                         ; $4ce2: $99
    sbc b                                         ; $4ce3: $98
    ld bc, $9998                                  ; $4ce4: $01 $98 $99
    inc e                                         ; $4ce7: $1c
    sbc c                                         ; $4ce8: $99
    ld a, [$987b]                                 ; $4ce9: $fa $7b $98
    sbc c                                         ; $4cec: $99
    sbc b                                         ; $4ced: $98
    ld [$20c7], sp                                ; $4cee: $08 $c7 $20
    inc sp                                        ; $4cf1: $33
    ld a, h                                       ; $4cf2: $7c
    ld a, l                                       ; $4cf3: $7d
    sbc c                                         ; $4cf4: $99
    inc e                                         ; $4cf5: $1c
    sbc c                                         ; $4cf6: $99
    ld a, [$984e]                                 ; $4cf7: $fa $4e $98
    sbc c                                         ; $4cfa: $99
    sbc b                                         ; $4cfb: $98
    sbc c                                         ; $4cfc: $99
    ld a, [$9835]                                 ; $4cfd: $fa $35 $98
    inc e                                         ; $4d00: $1c
    sbc b                                         ; $4d01: $98
    sbc c                                         ; $4d02: $99
    ld bc, $fa99                                  ; $4d03: $01 $99 $fa
    ld a, e                                       ; $4d06: $7b
    sbc b                                         ; $4d07: $98
    sbc c                                         ; $4d08: $99
    ld bc, $9899                                  ; $4d09: $01 $99 $98
    ld bc, $9998                                  ; $4d0c: $01 $98 $99
    add hl, sp                                    ; $4d0f: $39
    ld a, [hl]                                    ; $4d10: $7e
    push bc                                       ; $4d11: $c5
    sbc c                                         ; $4d12: $99
    sbc b                                         ; $4d13: $98
    sbc c                                         ; $4d14: $99
    sbc b                                         ; $4d15: $98
    sbc c                                         ; $4d16: $99
    ld bc, $fa99                                  ; $4d17: $01 $99 $fa
    ld a, e                                       ; $4d1a: $7b
    sbc b                                         ; $4d1b: $98
    ld bc, $9998                                  ; $4d1c: $01 $98 $99
    ld bc, $9899                                  ; $4d1f: $01 $99 $98
    sbc c                                         ; $4d22: $99
    ld a, [$987b]                                 ; $4d23: $fa $7b $98
    db $10                                        ; $4d26: $10
    rst $00                                       ; $4d27: $c7
    ld e, b                                       ; $4d28: $58
    or $7f                                        ; $4d29: $f6 $7f
    add b                                         ; $4d2b: $80
    add c                                         ; $4d2c: $81
    sbc b                                         ; $4d2d: $98
    sbc c                                         ; $4d2e: $99
    inc d                                         ; $4d2f: $14
    sbc c                                         ; $4d30: $99
    sbc b                                         ; $4d31: $98
    sbc c                                         ; $4d32: $99
    ld bc, $df99                                  ; $4d33: $01 $99 $df
    ld [hl], $ce                                  ; $4d36: $36 $ce
    sbc c                                         ; $4d38: $99
    rst $28                                       ; $4d39: $ef
    ld sp, hl                                     ; $4d3a: $f9
    sbc b                                         ; $4d3b: $98
    sbc c                                         ; $4d3c: $99
    sbc b                                         ; $4d3d: $98
    ld [bc], a                                    ; $4d3e: $02
    sbc b                                         ; $4d3f: $98
    sbc c                                         ; $4d40: $99
    sbc b                                         ; $4d41: $98
    sbc c                                         ; $4d42: $99
    sbc b                                         ; $4d43: $98
    inc c                                         ; $4d44: $0c
    dec c                                         ; $4d45: $0d
    sbc c                                         ; $4d46: $99
    add hl, de                                    ; $4d47: $19
    sbc c                                         ; $4d48: $99
    sbc b                                         ; $4d49: $98
    ld a, [$997b]                                 ; $4d4a: $fa $7b $99
    sbc b                                         ; $4d4d: $98
    ld bc, $9998                                  ; $4d4e: $01 $98 $99
    ld [$58c7], sp                                ; $4d51: $08 $c7 $58
    ld l, c                                       ; $4d54: $69
    ld a, a                                       ; $4d55: $7f
    inc [hl]                                      ; $4d56: $34
    sbc b                                         ; $4d57: $98
    sbc c                                         ; $4d58: $99
    sbc b                                         ; $4d59: $98
    ld bc, $35fa                                  ; $4d5a: $01 $fa $35
    sbc b                                         ; $4d5d: $98
    inc e                                         ; $4d5e: $1c
    sbc b                                         ; $4d5f: $98
    sbc c                                         ; $4d60: $99
    ld bc, $fa99                                  ; $4d61: $01 $99 $fa
    ld a, e                                       ; $4d64: $7b
    sbc b                                         ; $4d65: $98
    sbc c                                         ; $4d66: $99
    ld bc, $9899                                  ; $4d67: $01 $99 $98
    ld bc, $9b02                                  ; $4d6a: $01 $02 $9b
    sbc d                                         ; $4d6d: $9a
    ld [bc], a                                    ; $4d6e: $02
    sbc d                                         ; $4d6f: $9a
    sbc e                                         ; $4d70: $9b
    sbc d                                         ; $4d71: $9a
    rst $28                                       ; $4d72: $ef
    add d                                         ; $4d73: $82
    sbc e                                         ; $4d74: $9b
    ld [bc], a                                    ; $4d75: $02
    sbc e                                         ; $4d76: $9b
    sbc d                                         ; $4d77: $9a
    sbc e                                         ; $4d78: $9b
    sbc d                                         ; $4d79: $9a
    inc d                                         ; $4d7a: $14
    sbc d                                         ; $4d7b: $9a
    rst $28                                       ; $4d7c: $ef
    add d                                         ; $4d7d: $82
    sbc e                                         ; $4d7e: $9b
    db $db                                        ; $4d7f: $db
    add e                                         ; $4d80: $83
    add h                                         ; $4d81: $84
    sbc e                                         ; $4d82: $9b
    sbc d                                         ; $4d83: $9a
    inc d                                         ; $4d84: $14
    sbc d                                         ; $4d85: $9a
    sbc e                                         ; $4d86: $9b
    ld [bc], a                                    ; $4d87: $02
    sbc e                                         ; $4d88: $9b
    rst $28                                       ; $4d89: $ef
    add l                                         ; $4d8a: $85
    sbc d                                         ; $4d8b: $9a
    sbc e                                         ; $4d8c: $9b
    sbc d                                         ; $4d8d: $9a
    add [hl]                                      ; $4d8e: $86
    ldh [$c8], a                                  ; $4d8f: $e0 $c8
    add a                                         ; $4d91: $87
    adc b                                         ; $4d92: $88
    adc c                                         ; $4d93: $89
    sbc e                                         ; $4d94: $9b
    ld [bc], a                                    ; $4d95: $02
    sbc e                                         ; $4d96: $9b
    rst $28                                       ; $4d97: $ef
    adc d                                         ; $4d98: $8a
    sbc d                                         ; $4d99: $9a
    sbc e                                         ; $4d9a: $9b
    sbc d                                         ; $4d9b: $9a
    sbc e                                         ; $4d9c: $9b
    rst $28                                       ; $4d9d: $ef
    ld b, e                                       ; $4d9e: $43
    sbc d                                         ; $4d9f: $9a
    ld [bc], a                                    ; $4da0: $02
    sbc d                                         ; $4da1: $9a
    sbc e                                         ; $4da2: $9b
    add hl, de                                    ; $4da3: $19
    sbc e                                         ; $4da4: $9b
    rst $28                                       ; $4da5: $ef
    add l                                         ; $4da6: $85
    sbc d                                         ; $4da7: $9a
    sbc e                                         ; $4da8: $9b
    inc d                                         ; $4da9: $14
    sbc e                                         ; $4daa: $9b
    sbc d                                         ; $4dab: $9a
    ld [bc], a                                    ; $4dac: $02
    sbc d                                         ; $4dad: $9a
    sbc e                                         ; $4dae: $9b
    rst $18                                       ; $4daf: $df
    adc e                                         ; $4db0: $8b
    di                                            ; $4db1: $f3
    sbc e                                         ; $4db2: $9b
    sbc d                                         ; $4db3: $9a
    sbc e                                         ; $4db4: $9b
    sbc d                                         ; $4db5: $9a
    sbc e                                         ; $4db6: $9b
    add hl, de                                    ; $4db7: $19
    sbc e                                         ; $4db8: $9b
    rst $28                                       ; $4db9: $ef
    add l                                         ; $4dba: $85
    sbc d                                         ; $4dbb: $9a
    inc d                                         ; $4dbc: $14
    sbc d                                         ; $4dbd: $9a
    sbc e                                         ; $4dbe: $9b
    add hl, de                                    ; $4dbf: $19
    sbc e                                         ; $4dc0: $9b
    sbc d                                         ; $4dc1: $9a
    sbc e                                         ; $4dc2: $9b
    rst $28                                       ; $4dc3: $ef
    add l                                         ; $4dc4: $85
    sbc d                                         ; $4dc5: $9a
    adc h                                         ; $4dc6: $8c
    ldh [$c8], a                                  ; $4dc7: $e0 $c8
    add a                                         ; $4dc9: $87
    adc b                                         ; $4dca: $88
    adc c                                         ; $4dcb: $89
    di                                            ; $4dcc: $f3
    sbc d                                         ; $4dcd: $9a
    sbc e                                         ; $4dce: $9b
    add hl, de                                    ; $4dcf: $19
    sbc e                                         ; $4dd0: $9b
    sbc d                                         ; $4dd1: $9a
    sbc e                                         ; $4dd2: $9b
    inc d                                         ; $4dd3: $14
    sbc e                                         ; $4dd4: $9b
    rst $18                                       ; $4dd5: $df
    adc l                                         ; $4dd6: $8d
    di                                            ; $4dd7: $f3
    sbc e                                         ; $4dd8: $9b
    inc c                                         ; $4dd9: $0c
    dec c                                         ; $4dda: $0d
    sbc d                                         ; $4ddb: $9a
    sbc e                                         ; $4ddc: $9b
    sbc d                                         ; $4ddd: $9a
    ld bc, $9b9a                                  ; $4dde: $01 $9a $9b
    sbc d                                         ; $4de1: $9a
    sbc e                                         ; $4de2: $9b
    sbc d                                         ; $4de3: $9a
    rst $28                                       ; $4de4: $ef
    inc h                                         ; $4de5: $24
    sbc e                                         ; $4de6: $9b
    ld [bc], a                                    ; $4de7: $02
    sbc e                                         ; $4de8: $9b
    sbc d                                         ; $4de9: $9a
    rst $28                                       ; $4dea: $ef
    add l                                         ; $4deb: $85
    sbc e                                         ; $4dec: $9b
    sbc d                                         ; $4ded: $9a
    inc d                                         ; $4dee: $14
    sbc d                                         ; $4def: $9a
    sbc e                                         ; $4df0: $9b
    add [hl]                                      ; $4df1: $86
    ldh [$c8], a                                  ; $4df2: $e0 $c8
    add a                                         ; $4df4: $87
    adc b                                         ; $4df5: $88
    ld h, c                                       ; $4df6: $61
    sbc d                                         ; $4df7: $9a
    sbc e                                         ; $4df8: $9b
    sbc d                                         ; $4df9: $9a
    inc d                                         ; $4dfa: $14
    rst $28                                       ; $4dfb: $ef
    ld b, e                                       ; $4dfc: $43
    sbc d                                         ; $4dfd: $9a
    ld [bc], a                                    ; $4dfe: $02
    sbc d                                         ; $4dff: $9a
    sbc e                                         ; $4e00: $9b
    add hl, de                                    ; $4e01: $19
    sbc e                                         ; $4e02: $9b
    rst $28                                       ; $4e03: $ef
    add l                                         ; $4e04: $85
    sbc d                                         ; $4e05: $9a
    sbc e                                         ; $4e06: $9b
    inc d                                         ; $4e07: $14
    sbc e                                         ; $4e08: $9b
    sbc d                                         ; $4e09: $9a
    ld [bc], a                                    ; $4e0a: $02
    ld d, $8e                                     ; $4e0b: $16 $8e
    adc a                                         ; $4e0d: $8f
    sub b                                         ; $4e0e: $90
    sub c                                         ; $4e0f: $91
    sub d                                         ; $4e10: $92
    sub e                                         ; $4e11: $93
    inc bc                                        ; $4e12: $03
    ld l, h                                       ; $4e13: $6c
    sub h                                         ; $4e14: $94
    add hl, de                                    ; $4e15: $19
    sub l                                         ; $4e16: $95
    sub [hl]                                      ; $4e17: $96
    sub a                                         ; $4e18: $97
    sbc b                                         ; $4e19: $98
    sub b                                         ; $4e1a: $90
    sbc c                                         ; $4e1b: $99
    ld a, [$9a6e]                                 ; $4e1c: $fa $6e $9a
    rst $18                                       ; $4e1f: $df
    call $9b2d                                    ; $4e20: $cd $2d $9b
    sbc h                                         ; $4e23: $9c
    add hl, de                                    ; $4e24: $19
    sub [hl]                                      ; $4e25: $96
    sub a                                         ; $4e26: $97
    sbc l                                         ; $4e27: $9d
    sub e                                         ; $4e28: $93
    ld a, [$946e]                                 ; $4e29: $fa $6e $94
    sub l                                         ; $4e2c: $95
    sub c                                         ; $4e2d: $91
    sbc [hl]                                      ; $4e2e: $9e
    sbc a                                         ; $4e2f: $9f
    ld e, b                                       ; $4e30: $58
    ld hl, $a06a                                  ; $4e31: $21 $6a $a0
    sub h                                         ; $4e34: $94
    sbc l                                         ; $4e35: $9d
    sub a                                         ; $4e36: $97
    inc bc                                        ; $4e37: $03
    and c                                         ; $4e38: $a1
    sub l                                         ; $4e39: $95
    sub c                                         ; $4e3a: $91
    sub l                                         ; $4e3b: $95
    sub c                                         ; $4e3c: $91
    ld a, [$966e]                                 ; $4e3d: $fa $6e $96
    sbc l                                         ; $4e40: $9d
    sub a                                         ; $4e41: $97
    sbc b                                         ; $4e42: $98
    and d                                         ; $4e43: $a2
    sbc c                                         ; $4e44: $99
    inc bc                                        ; $4e45: $03
    inc b                                         ; $4e46: $04
    sub l                                         ; $4e47: $95
    sub c                                         ; $4e48: $91
    add hl, de                                    ; $4e49: $19
    sub [hl]                                      ; $4e4a: $96
    sub a                                         ; $4e4b: $97
    add hl, de                                    ; $4e4c: $19
    sub c                                         ; $4e4d: $91
    sbc d                                         ; $4e4e: $9a
    pop de                                        ; $4e4f: $d1
    and e                                         ; $4e50: $a3
    and h                                         ; $4e51: $a4
    sbc e                                         ; $4e52: $9b
    sub a                                         ; $4e53: $97
    sub c                                         ; $4e54: $91
    sub a                                         ; $4e55: $97
    sub [hl]                                      ; $4e56: $96
    add hl, de                                    ; $4e57: $19
    sbc c                                         ; $4e58: $99
    ld a, [$9c6e]                                 ; $4e59: $fa $6e $9c
    add hl, de                                    ; $4e5c: $19
    sub [hl]                                      ; $4e5d: $96
    sub a                                         ; $4e5e: $97
    add hl, de                                    ; $4e5f: $19
    sub a                                         ; $4e60: $97
    sub [hl]                                      ; $4e61: $96
    sub c                                         ; $4e62: $91
    inc bc                                        ; $4e63: $03
    inc b                                         ; $4e64: $04
    sub c                                         ; $4e65: $91
    and l                                         ; $4e66: $a5
    sbc a                                         ; $4e67: $9f
    ld e, b                                       ; $4e68: $58
    or $a6                                        ; $4e69: $f6 $a6
    and a                                         ; $4e6b: $a7
    ld a, [$9697]                                 ; $4e6c: $fa $97 $96
    ld [bc], a                                    ; $4e6f: $02
    sbc d                                         ; $4e70: $9a
    sbc h                                         ; $4e71: $9c
    sbc e                                         ; $4e72: $9b
    ld a, [c]                                     ; $4e73: $f2
    sub c                                         ; $4e74: $91
    xor b                                         ; $4e75: $a8
    and e                                         ; $4e76: $a3
    and h                                         ; $4e77: $a4
    sbc e                                         ; $4e78: $9b
    rst $28                                       ; $4e79: $ef
    inc h                                         ; $4e7a: $24
    sbc e                                         ; $4e7b: $9b
    sub c                                         ; $4e7c: $91
    sub a                                         ; $4e7d: $97
    inc d                                         ; $4e7e: $14
    sub c                                         ; $4e7f: $91
    sbc h                                         ; $4e80: $9c
    sbc e                                         ; $4e81: $9b
    sub a                                         ; $4e82: $97
    sub a                                         ; $4e83: $97
    ld a, [$956e]                                 ; $4e84: $fa $6e $95
    add hl, de                                    ; $4e87: $19
    sub l                                         ; $4e88: $95
    sub c                                         ; $4e89: $91
    inc bc                                        ; $4e8a: $03
    inc b                                         ; $4e8b: $04
    sub [hl]                                      ; $4e8c: $96
    sub a                                         ; $4e8d: $97
    add hl, de                                    ; $4e8e: $19
    sub a                                         ; $4e8f: $97
    sub [hl]                                      ; $4e90: $96
    sbc [hl]                                      ; $4e91: $9e
    sbc a                                         ; $4e92: $9f
    ld e, b                                       ; $4e93: $58
    or $a6                                        ; $4e94: $f6 $a6
    and a                                         ; $4e96: $a7
    sub c                                         ; $4e97: $91
    sub a                                         ; $4e98: $97
    sub [hl]                                      ; $4e99: $96
    xor c                                         ; $4e9a: $a9
    ld a, [$966e]                                 ; $4e9b: $fa $6e $96
    sbc l                                         ; $4e9e: $9d
    sub a                                         ; $4e9f: $97
    sbc b                                         ; $4ea0: $98
    and d                                         ; $4ea1: $a2
    sbc c                                         ; $4ea2: $99
    inc bc                                        ; $4ea3: $03
    inc b                                         ; $4ea4: $04
    sub l                                         ; $4ea5: $95
    sub c                                         ; $4ea6: $91
    add hl, de                                    ; $4ea7: $19
    sub [hl]                                      ; $4ea8: $96
    sub a                                         ; $4ea9: $97
    add hl, de                                    ; $4eaa: $19
    and d                                         ; $4eab: $a2
    xor d                                         ; $4eac: $aa
    xor e                                         ; $4ead: $ab
    xor h                                         ; $4eae: $ac
    xor l                                         ; $4eaf: $ad
    xor [hl]                                      ; $4eb0: $ae
    xor a                                         ; $4eb1: $af
    or b                                          ; $4eb2: $b0
    or c                                          ; $4eb3: $b1
    or d                                          ; $4eb4: $b2
    and d                                         ; $4eb5: $a2
    or e                                          ; $4eb6: $b3
    or h                                          ; $4eb7: $b4
    or l                                          ; $4eb8: $b5
    or [hl]                                       ; $4eb9: $b6
    or a                                          ; $4eba: $b7
    cp b                                          ; $4ebb: $b8
    cp c                                          ; $4ebc: $b9
    cp d                                          ; $4ebd: $ba
    cp e                                          ; $4ebe: $bb
    or b                                          ; $4ebf: $b0
    cp h                                          ; $4ec0: $bc
    cp l                                          ; $4ec1: $bd
    cp [hl]                                       ; $4ec2: $be
    cp a                                          ; $4ec3: $bf
    and d                                         ; $4ec4: $a2
    or h                                          ; $4ec5: $b4
    or l                                          ; $4ec6: $b5
    or [hl]                                       ; $4ec7: $b6
    ret nz                                        ; $4ec8: $c0

    pop bc                                        ; $4ec9: $c1
    jp nz, $b5c3                                  ; $4eca: $c2 $c3 $b5

    or l                                          ; $4ecd: $b5
    call nz, $c6c5                                ; $4ece: $c4 $c5 $c6
    ld [hl], h                                    ; $4ed1: $74
    ld [hl], l                                    ; $4ed2: $75
    rst $00                                       ; $4ed3: $c7
    or l                                          ; $4ed4: $b5
    or [hl]                                       ; $4ed5: $b6
    ret nz                                        ; $4ed6: $c0

    pop bc                                        ; $4ed7: $c1
    jp nz, $b4c3                                  ; $4ed8: $c2 $c3 $b4

    or l                                          ; $4edb: $b5
    ret nz                                        ; $4edc: $c0

    pop bc                                        ; $4edd: $c1
    jp nz, $b6c3                                  ; $4ede: $c2 $c3 $b6

    xor l                                         ; $4ee1: $ad
    or [hl]                                       ; $4ee2: $b6
    or a                                          ; $4ee3: $b7
    ret nz                                        ; $4ee4: $c0

    pop bc                                        ; $4ee5: $c1
    jp nz, $adc3                                  ; $4ee6: $c2 $c3 $ad

    and d                                         ; $4ee9: $a2
    or h                                          ; $4eea: $b4
    or l                                          ; $4eeb: $b5
    and d                                         ; $4eec: $a2
    xor l                                         ; $4eed: $ad
    cp e                                          ; $4eee: $bb
    or b                                          ; $4eef: $b0
    ret z                                         ; $4ef0: $c8

    ret                                           ; $4ef1: $c9


    cp [hl]                                       ; $4ef2: $be
    cp b                                          ; $4ef3: $b8
    or l                                          ; $4ef4: $b5
    cp b                                          ; $4ef5: $b8
    xor l                                         ; $4ef6: $ad
    jp z, $b9b8                                   ; $4ef7: $ca $b8 $b9

    cp d                                          ; $4efa: $ba
    cp a                                          ; $4efb: $bf
    and d                                         ; $4efc: $a2
    or h                                          ; $4efd: $b4
    or l                                          ; $4efe: $b5
    and d                                         ; $4eff: $a2
    cp b                                          ; $4f00: $b8
    xor l                                         ; $4f01: $ad
    ret nz                                        ; $4f02: $c0

    pop bc                                        ; $4f03: $c1
    jp nz, $c4c3                                  ; $4f04: $c2 $c3 $c4

    push bc                                       ; $4f07: $c5
    add $3a                                       ; $4f08: $c6 $3a
    dec sp                                        ; $4f0a: $3b
    inc a                                         ; $4f0b: $3c
    cp c                                          ; $4f0c: $b9
    cp b                                          ; $4f0d: $b8
    or l                                          ; $4f0e: $b5
    jp z, $b5b6                                   ; $4f0f: $ca $b6 $b5

    or h                                          ; $4f12: $b4
    and d                                         ; $4f13: $a2
    cp e                                          ; $4f14: $bb
    set 1, b                                      ; $4f15: $cb $c8
    ret                                           ; $4f17: $c9


    call z, $c2c1                                 ; $4f18: $cc $c1 $c2
    jp $b8b5                                      ; $4f1b: $c3 $b5 $b8


    jp z, $bfb7                                   ; $4f1e: $ca $b7 $bf

    cp a                                          ; $4f21: $bf
    or l                                          ; $4f22: $b5
    call $bab9                                    ; $4f23: $cd $b9 $ba
    adc $ca                                       ; $4f26: $ce $ca
    or l                                          ; $4f28: $b5
    ret nz                                        ; $4f29: $c0

    pop bc                                        ; $4f2a: $c1
    jp nz, $b5c3                                  ; $4f2b: $c2 $c3 $b5

    and d                                         ; $4f2e: $a2
    cp b                                          ; $4f2f: $b8
    or l                                          ; $4f30: $b5
    call nz, $c6c5                                ; $4f31: $c4 $c5 $c6
    ld a, [hl-]                                   ; $4f34: $3a
    dec sp                                        ; $4f35: $3b
    inc a                                         ; $4f36: $3c
    or [hl]                                       ; $4f37: $b6
    cp b                                          ; $4f38: $b8
    or l                                          ; $4f39: $b5
    and d                                         ; $4f3a: $a2
    pop bc                                        ; $4f3b: $c1
    jp nz, $b6c3                                  ; $4f3c: $c2 $c3 $b6

    xor l                                         ; $4f3f: $ad
    or [hl]                                       ; $4f40: $b6
    or a                                          ; $4f41: $b7
    ret nz                                        ; $4f42: $c0

    pop bc                                        ; $4f43: $c1
    jp nz, $adc3                                  ; $4f44: $c2 $c3 $ad

    and d                                         ; $4f47: $a2
    or h                                          ; $4f48: $b4
    or l                                          ; $4f49: $b5
    and d                                         ; $4f4a: $a2
    rst $08                                       ; $4f4b: $cf
    ret nc                                        ; $4f4c: $d0

    pop de                                        ; $4f4d: $d1
    jp nc, $d4d3                                  ; $4f4e: $d2 $d3 $d4

    push de                                       ; $4f51: $d5
    sub $d7                                       ; $4f52: $d6 $d7
    ret c                                         ; $4f54: $d8

    ret nc                                        ; $4f55: $d0

    reti                                          ; $4f56: $d9


    jp c, $dcdb                                   ; $4f57: $da $db $dc

    pop de                                        ; $4f5a: $d1
    ret nc                                        ; $4f5b: $d0

    db $dd                                        ; $4f5c: $dd
    sbc $df                                       ; $4f5d: $de $df
    rst $10                                       ; $4f5f: $d7
    ldh [$d7], a                                  ; $4f60: $e0 $d7
    pop hl                                        ; $4f62: $e1
    ld [c], a                                     ; $4f63: $e2
    reti                                          ; $4f64: $d9


    jp c, $dcdb                                   ; $4f65: $da $db $dc

    db $e3                                        ; $4f68: $e3
    db $e4                                        ; $4f69: $e4
    push hl                                       ; $4f6a: $e5
    and $db                                       ; $4f6b: $e6 $db
    db $db                                        ; $4f6d: $db
    rst $20                                       ; $4f6e: $e7
    add sp, $58                                   ; $4f6f: $e8 $58
    inc sp                                        ; $4f71: $33
    ld a, a                                       ; $4f72: $7f
    ld [$dad3], a                                 ; $4f73: $ea $d3 $da
    db $e3                                        ; $4f76: $e3
    db $e4                                        ; $4f77: $e4
    push hl                                       ; $4f78: $e5
    and $d1                                       ; $4f79: $e6 $d1
    db $db                                        ; $4f7b: $db
    db $e3                                        ; $4f7c: $e3
    db $e4                                        ; $4f7d: $e4
    push hl                                       ; $4f7e: $e5
    and $d9                                       ; $4f7f: $e6 $d9
    jp c, $dcdb                                   ; $4f81: $da $db $dc

    db $e3                                        ; $4f84: $e3
    db $e4                                        ; $4f85: $e4
    push hl                                       ; $4f86: $e5
    and $d3                                       ; $4f87: $e6 $d3
    reti                                          ; $4f89: $d9


    jp c, $dcdb                                   ; $4f8a: $da $db $dc

    db $d3                                        ; $4f8d: $d3
    rst $18                                       ; $4f8e: $df
    rst $10                                       ; $4f8f: $d7
    db $eb                                        ; $4f90: $eb
    db $ec                                        ; $4f91: $ec
    pop hl                                        ; $4f92: $e1
    ret nc                                        ; $4f93: $d0

    pop de                                        ; $4f94: $d1
    call c, $d1db                                 ; $4f95: $dc $db $d1
    ret nc                                        ; $4f98: $d0

    db $dd                                        ; $4f99: $dd
    sbc $e2                                       ; $4f9a: $de $e2
    reti                                          ; $4f9c: $d9


    jp c, $dcdb                                   ; $4f9d: $da $db $dc

    call c, $e3db                                 ; $4fa0: $dc $db $e3
    db $e4                                        ; $4fa3: $e4
    push hl                                       ; $4fa4: $e5
    and $ed                                       ; $4fa5: $e6 $ed
    add sp, -$17                                  ; $4fa7: $e8 $e9
    xor $ef                                       ; $4fa9: $ee $ef
    ldh a, [$de]                                  ; $4fab: $f0 $de
    ret nc                                        ; $4fad: $d0

    pop de                                        ; $4fae: $d1
    pop de                                        ; $4faf: $d1
    call c, $dadb                                 ; $4fb0: $dc $db $da
    reti                                          ; $4fb3: $d9


    rst $18                                       ; $4fb4: $df
    rst $10                                       ; $4fb5: $d7
    db $eb                                        ; $4fb6: $eb
    rst $10                                       ; $4fb7: $d7
    pop af                                        ; $4fb8: $f1
    ld a, [c]                                     ; $4fb9: $f2
    push hl                                       ; $4fba: $e5
    and $d1                                       ; $4fbb: $e6 $d1
    call c, $dbda                                 ; $4fbd: $dc $da $db
    jp c, $dbd9                                   ; $4fc0: $da $d9 $db

    db $dd                                        ; $4fc3: $dd
    sbc $e2                                       ; $4fc4: $de $e2
    call c, $d1d0                                 ; $4fc6: $dc $d0 $d1
    db $e3                                        ; $4fc9: $e3
    db $e4                                        ; $4fca: $e4
    push hl                                       ; $4fcb: $e5
    and $d1                                       ; $4fcc: $e6 $d1
    pop de                                        ; $4fce: $d1
    ret nc                                        ; $4fcf: $d0

    pop de                                        ; $4fd0: $d1
    rst $20                                       ; $4fd1: $e7
    add sp, -$17                                  ; $4fd2: $e8 $e9
    xor $ef                                       ; $4fd4: $ee $ef
    ldh a, [$dd]                                  ; $4fd6: $f0 $dd
    ret nc                                        ; $4fd8: $d0

    call c, $e4c3                                 ; $4fd9: $dc $c3 $e4
    push hl                                       ; $4fdc: $e5
    and $d9                                       ; $4fdd: $e6 $d9
    jp c, $dcdb                                   ; $4fdf: $da $db $dc

    db $e3                                        ; $4fe2: $e3
    db $e4                                        ; $4fe3: $e4
    push hl                                       ; $4fe4: $e5
    and $d3                                       ; $4fe5: $e6 $d3
    reti                                          ; $4fe7: $d9


    jp c, $dcdb                                   ; $4fe8: $da $db $dc

    add e                                         ; $4feb: $83
    add e                                         ; $4fec: $83
    add e                                         ; $4fed: $83
    add e                                         ; $4fee: $83
    add e                                         ; $4fef: $83
    add e                                         ; $4ff0: $83
    add e                                         ; $4ff1: $83
    add e                                         ; $4ff2: $83
    add e                                         ; $4ff3: $83
    add e                                         ; $4ff4: $83
    add e                                         ; $4ff5: $83
    add e                                         ; $4ff6: $83
    add e                                         ; $4ff7: $83
    add e                                         ; $4ff8: $83
    add e                                         ; $4ff9: $83
    add e                                         ; $4ffa: $83
    add e                                         ; $4ffb: $83
    add e                                         ; $4ffc: $83
    add e                                         ; $4ffd: $83
    add e                                         ; $4ffe: $83
    add e                                         ; $4fff: $83
    add e                                         ; $5000: $83
    add e                                         ; $5001: $83
    add e                                         ; $5002: $83
    add e                                         ; $5003: $83
    add e                                         ; $5004: $83
    add e                                         ; $5005: $83
    add e                                         ; $5006: $83
    add e                                         ; $5007: $83
    add e                                         ; $5008: $83
    add e                                         ; $5009: $83
    add e                                         ; $500a: $83
    add e                                         ; $500b: $83
    add e                                         ; $500c: $83
    add e                                         ; $500d: $83
    add e                                         ; $500e: $83
    add e                                         ; $500f: $83
    add e                                         ; $5010: $83
    add e                                         ; $5011: $83
    add e                                         ; $5012: $83
    add e                                         ; $5013: $83
    add e                                         ; $5014: $83
    add e                                         ; $5015: $83
    add e                                         ; $5016: $83
    add e                                         ; $5017: $83
    add e                                         ; $5018: $83
    add e                                         ; $5019: $83
    add e                                         ; $501a: $83
    add e                                         ; $501b: $83
    add e                                         ; $501c: $83
    add e                                         ; $501d: $83
    add e                                         ; $501e: $83
    add e                                         ; $501f: $83
    add e                                         ; $5020: $83
    add e                                         ; $5021: $83
    add e                                         ; $5022: $83
    add e                                         ; $5023: $83
    add e                                         ; $5024: $83
    add e                                         ; $5025: $83
    add e                                         ; $5026: $83
    add e                                         ; $5027: $83
    add e                                         ; $5028: $83
    add e                                         ; $5029: $83
    add e                                         ; $502a: $83
    add e                                         ; $502b: $83
    add e                                         ; $502c: $83
    add e                                         ; $502d: $83
    add e                                         ; $502e: $83
    add e                                         ; $502f: $83
    add e                                         ; $5030: $83
    add e                                         ; $5031: $83
    add e                                         ; $5032: $83
    add e                                         ; $5033: $83
    add e                                         ; $5034: $83
    add e                                         ; $5035: $83
    add e                                         ; $5036: $83
    add e                                         ; $5037: $83
    add e                                         ; $5038: $83
    add e                                         ; $5039: $83
    add e                                         ; $503a: $83
    add e                                         ; $503b: $83
    add e                                         ; $503c: $83
    add e                                         ; $503d: $83
    add e                                         ; $503e: $83
    add e                                         ; $503f: $83
    add e                                         ; $5040: $83
    add e                                         ; $5041: $83
    add e                                         ; $5042: $83
    add e                                         ; $5043: $83
    add e                                         ; $5044: $83
    add e                                         ; $5045: $83
    add e                                         ; $5046: $83
    add e                                         ; $5047: $83
    add e                                         ; $5048: $83
    add e                                         ; $5049: $83
    add e                                         ; $504a: $83
    add e                                         ; $504b: $83
    add e                                         ; $504c: $83
    add e                                         ; $504d: $83
    add e                                         ; $504e: $83
    add e                                         ; $504f: $83
    add e                                         ; $5050: $83
    add e                                         ; $5051: $83
    add e                                         ; $5052: $83
    add e                                         ; $5053: $83
    add e                                         ; $5054: $83
    add e                                         ; $5055: $83
    add e                                         ; $5056: $83
    add e                                         ; $5057: $83
    add e                                         ; $5058: $83
    add e                                         ; $5059: $83
    add e                                         ; $505a: $83
    add e                                         ; $505b: $83
    add e                                         ; $505c: $83
    add e                                         ; $505d: $83
    add e                                         ; $505e: $83
    add e                                         ; $505f: $83
    add e                                         ; $5060: $83
    add e                                         ; $5061: $83
    add e                                         ; $5062: $83
    add e                                         ; $5063: $83
    add e                                         ; $5064: $83
    add e                                         ; $5065: $83
    add e                                         ; $5066: $83
    add e                                         ; $5067: $83
    add e                                         ; $5068: $83
    add e                                         ; $5069: $83
    add e                                         ; $506a: $83
    add e                                         ; $506b: $83
    add e                                         ; $506c: $83
    add e                                         ; $506d: $83
    add e                                         ; $506e: $83
    add e                                         ; $506f: $83
    add e                                         ; $5070: $83
    add e                                         ; $5071: $83
    add e                                         ; $5072: $83
    add e                                         ; $5073: $83
    add e                                         ; $5074: $83
    add e                                         ; $5075: $83
    add e                                         ; $5076: $83
    add e                                         ; $5077: $83
    add e                                         ; $5078: $83
    add e                                         ; $5079: $83
    add e                                         ; $507a: $83
    add e                                         ; $507b: $83
    add e                                         ; $507c: $83
    add e                                         ; $507d: $83
    add e                                         ; $507e: $83
    add e                                         ; $507f: $83
    add e                                         ; $5080: $83
    add e                                         ; $5081: $83
    add e                                         ; $5082: $83
    add e                                         ; $5083: $83
    add e                                         ; $5084: $83
    add e                                         ; $5085: $83
    add e                                         ; $5086: $83
    add e                                         ; $5087: $83
    add e                                         ; $5088: $83
    add e                                         ; $5089: $83
    add e                                         ; $508a: $83
    ld [bc], a                                    ; $508b: $02
    ld [bc], a                                    ; $508c: $02
    ld [bc], a                                    ; $508d: $02
    ld bc, $0101                                  ; $508e: $01 $01 $01
    ld bc, $0101                                  ; $5091: $01 $01 $01
    ld bc, $0101                                  ; $5094: $01 $01 $01
    inc bc                                        ; $5097: $03
    inc bc                                        ; $5098: $03
    inc bc                                        ; $5099: $03
    inc bc                                        ; $509a: $03
    nop                                           ; $509b: $00
    nop                                           ; $509c: $00
    nop                                           ; $509d: $00
    nop                                           ; $509e: $00
    nop                                           ; $509f: $00
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    ld [bc], a                                    ; $50a7: $02
    ld [bc], a                                    ; $50a8: $02
    ld [bc], a                                    ; $50a9: $02
    ld [bc], a                                    ; $50aa: $02
    ld [bc], a                                    ; $50ab: $02
    ld [bc], a                                    ; $50ac: $02
    ld [bc], a                                    ; $50ad: $02
    ld [bc], a                                    ; $50ae: $02
    ld [bc], a                                    ; $50af: $02
    ld [bc], a                                    ; $50b0: $02
    ld [bc], a                                    ; $50b1: $02
    ld [bc], a                                    ; $50b2: $02
    ld [bc], a                                    ; $50b3: $02
    ld [bc], a                                    ; $50b4: $02
    ld [bc], a                                    ; $50b5: $02
    ld [bc], a                                    ; $50b6: $02
    ld [bc], a                                    ; $50b7: $02
    ld [bc], a                                    ; $50b8: $02
    ld [bc], a                                    ; $50b9: $02
    ld [bc], a                                    ; $50ba: $02
    ld [bc], a                                    ; $50bb: $02
    ld [bc], a                                    ; $50bc: $02
    ld [bc], a                                    ; $50bd: $02
    ld [bc], a                                    ; $50be: $02
    ld [bc], a                                    ; $50bf: $02
    ld [bc], a                                    ; $50c0: $02
    ld [bc], a                                    ; $50c1: $02
    ld [bc], a                                    ; $50c2: $02
    ld [bc], a                                    ; $50c3: $02
    ld [bc], a                                    ; $50c4: $02
    ld [bc], a                                    ; $50c5: $02
    ld [bc], a                                    ; $50c6: $02
    ld [bc], a                                    ; $50c7: $02
    ld [bc], a                                    ; $50c8: $02
    ld [bc], a                                    ; $50c9: $02
    ld [bc], a                                    ; $50ca: $02
    ld [bc], a                                    ; $50cb: $02
    ld [bc], a                                    ; $50cc: $02
    ld [bc], a                                    ; $50cd: $02
    ld [bc], a                                    ; $50ce: $02
    ld [bc], a                                    ; $50cf: $02
    ld [bc], a                                    ; $50d0: $02
    ld [bc], a                                    ; $50d1: $02
    ld [bc], a                                    ; $50d2: $02
    ld [bc], a                                    ; $50d3: $02
    ld [bc], a                                    ; $50d4: $02
    ld [bc], a                                    ; $50d5: $02
    ld [bc], a                                    ; $50d6: $02
    ld [bc], a                                    ; $50d7: $02
    ld [bc], a                                    ; $50d8: $02
    ld [bc], a                                    ; $50d9: $02
    ld [bc], a                                    ; $50da: $02
    ld [bc], a                                    ; $50db: $02
    ld [bc], a                                    ; $50dc: $02
    ld [bc], a                                    ; $50dd: $02
    ld [bc], a                                    ; $50de: $02
    ld [bc], a                                    ; $50df: $02
    ld [bc], a                                    ; $50e0: $02
    ld [bc], a                                    ; $50e1: $02
    ld [bc], a                                    ; $50e2: $02
    ld [bc], a                                    ; $50e3: $02
    ld [bc], a                                    ; $50e4: $02
    ld [bc], a                                    ; $50e5: $02
    ld [bc], a                                    ; $50e6: $02
    ld [bc], a                                    ; $50e7: $02
    ld [bc], a                                    ; $50e8: $02
    ld [bc], a                                    ; $50e9: $02
    ld [bc], a                                    ; $50ea: $02
    ld [bc], a                                    ; $50eb: $02
    ld [bc], a                                    ; $50ec: $02
    ld [bc], a                                    ; $50ed: $02
    ld [bc], a                                    ; $50ee: $02
    ld [bc], a                                    ; $50ef: $02
    ld [bc], a                                    ; $50f0: $02
    ld [bc], a                                    ; $50f1: $02
    ld [bc], a                                    ; $50f2: $02
    ld [bc], a                                    ; $50f3: $02
    ld [bc], a                                    ; $50f4: $02
    ld [bc], a                                    ; $50f5: $02
    ld [bc], a                                    ; $50f6: $02
    ld [bc], a                                    ; $50f7: $02
    ld [bc], a                                    ; $50f8: $02
    ld [bc], a                                    ; $50f9: $02
    ld [bc], a                                    ; $50fa: $02
    ld [bc], a                                    ; $50fb: $02
    ld [bc], a                                    ; $50fc: $02
    ld [bc], a                                    ; $50fd: $02
    ld [bc], a                                    ; $50fe: $02
    ld [bc], a                                    ; $50ff: $02
    ld [bc], a                                    ; $5100: $02
    ld [bc], a                                    ; $5101: $02
    ld [bc], a                                    ; $5102: $02
    ld [bc], a                                    ; $5103: $02
    ld [bc], a                                    ; $5104: $02
    ld [bc], a                                    ; $5105: $02
    ld [bc], a                                    ; $5106: $02
    ld [bc], a                                    ; $5107: $02
    ld [bc], a                                    ; $5108: $02
    ld [bc], a                                    ; $5109: $02
    ld [bc], a                                    ; $510a: $02
    ld [bc], a                                    ; $510b: $02
    ld [bc], a                                    ; $510c: $02
    ld [bc], a                                    ; $510d: $02
    ld [bc], a                                    ; $510e: $02
    ld [bc], a                                    ; $510f: $02
    ld [bc], a                                    ; $5110: $02
    ld [bc], a                                    ; $5111: $02
    ld [bc], a                                    ; $5112: $02
    ld [bc], a                                    ; $5113: $02
    ld [bc], a                                    ; $5114: $02
    ld [bc], a                                    ; $5115: $02
    ld [bc], a                                    ; $5116: $02
    ld [bc], a                                    ; $5117: $02
    ld [bc], a                                    ; $5118: $02
    ld [bc], a                                    ; $5119: $02
    ld [bc], a                                    ; $511a: $02
    ld [bc], a                                    ; $511b: $02
    ld [bc], a                                    ; $511c: $02
    ld [bc], a                                    ; $511d: $02
    ld [bc], a                                    ; $511e: $02
    ld [bc], a                                    ; $511f: $02
    ld [bc], a                                    ; $5120: $02
    ld [bc], a                                    ; $5121: $02
    ld [bc], a                                    ; $5122: $02
    ld [bc], a                                    ; $5123: $02
    ld [bc], a                                    ; $5124: $02
    ld [bc], a                                    ; $5125: $02
    ld [bc], a                                    ; $5126: $02
    ld [bc], a                                    ; $5127: $02
    ld [bc], a                                    ; $5128: $02
    ld [bc], a                                    ; $5129: $02
    ld [bc], a                                    ; $512a: $02
    ld [bc], a                                    ; $512b: $02
    ld [bc], a                                    ; $512c: $02
    ld [bc], a                                    ; $512d: $02
    ld [bc], a                                    ; $512e: $02
    ld [bc], a                                    ; $512f: $02
    ld [bc], a                                    ; $5130: $02
    ld [bc], a                                    ; $5131: $02
    ld [bc], a                                    ; $5132: $02
    ld [bc], a                                    ; $5133: $02
    ld [bc], a                                    ; $5134: $02
    ld [bc], a                                    ; $5135: $02
    ld [bc], a                                    ; $5136: $02
    ld [bc], a                                    ; $5137: $02
    ld [bc], a                                    ; $5138: $02
    ld [bc], a                                    ; $5139: $02
    ld [bc], a                                    ; $513a: $02
    ld [bc], a                                    ; $513b: $02
    ld [bc], a                                    ; $513c: $02
    ld [bc], a                                    ; $513d: $02
    ld [bc], a                                    ; $513e: $02
    ld [bc], a                                    ; $513f: $02
    ld [bc], a                                    ; $5140: $02
    ld [bc], a                                    ; $5141: $02
    ld [bc], a                                    ; $5142: $02
    ld [bc], a                                    ; $5143: $02
    ld [bc], a                                    ; $5144: $02
    ld [bc], a                                    ; $5145: $02
    ld [bc], a                                    ; $5146: $02
    ld [bc], a                                    ; $5147: $02
    ld [bc], a                                    ; $5148: $02
    ld [bc], a                                    ; $5149: $02
    ld [bc], a                                    ; $514a: $02
    ld [bc], a                                    ; $514b: $02
    ld [bc], a                                    ; $514c: $02
    ld [bc], a                                    ; $514d: $02
    ld [bc], a                                    ; $514e: $02
    ld [bc], a                                    ; $514f: $02
    ld [bc], a                                    ; $5150: $02
    ld [bc], a                                    ; $5151: $02
    ld [bc], a                                    ; $5152: $02
    ld [bc], a                                    ; $5153: $02
    ld [bc], a                                    ; $5154: $02
    ld [bc], a                                    ; $5155: $02
    ld [bc], a                                    ; $5156: $02
    ld [bc], a                                    ; $5157: $02
    ld [bc], a                                    ; $5158: $02
    ld [bc], a                                    ; $5159: $02
    ld [bc], a                                    ; $515a: $02
    ld [bc], a                                    ; $515b: $02
    ld [bc], a                                    ; $515c: $02
    ld [bc], a                                    ; $515d: $02
    ld [bc], a                                    ; $515e: $02
    ld [bc], a                                    ; $515f: $02
    ld [bc], a                                    ; $5160: $02
    ld [bc], a                                    ; $5161: $02
    ld [bc], a                                    ; $5162: $02
    ld [bc], a                                    ; $5163: $02
    ld [bc], a                                    ; $5164: $02
    ld [bc], a                                    ; $5165: $02
    ld [bc], a                                    ; $5166: $02
    ld [bc], a                                    ; $5167: $02
    ld [bc], a                                    ; $5168: $02
    ld [bc], a                                    ; $5169: $02
    ld [bc], a                                    ; $516a: $02
    ld [bc], a                                    ; $516b: $02
    ld [bc], a                                    ; $516c: $02
    ld [bc], a                                    ; $516d: $02
    ld [bc], a                                    ; $516e: $02
    ld [bc], a                                    ; $516f: $02
    ld [bc], a                                    ; $5170: $02
    ld [bc], a                                    ; $5171: $02
    ld [bc], a                                    ; $5172: $02
    ld [bc], a                                    ; $5173: $02
    ld [bc], a                                    ; $5174: $02
    ld [bc], a                                    ; $5175: $02
    ld [bc], a                                    ; $5176: $02
    ld [bc], a                                    ; $5177: $02
    ld [bc], a                                    ; $5178: $02
    ld [bc], a                                    ; $5179: $02
    ld [bc], a                                    ; $517a: $02
    ld [bc], a                                    ; $517b: $02
    ld [bc], a                                    ; $517c: $02
    ld [bc], a                                    ; $517d: $02
    ld [bc], a                                    ; $517e: $02
    ld [bc], a                                    ; $517f: $02
    ld [bc], a                                    ; $5180: $02
    ld [bc], a                                    ; $5181: $02
    ld [bc], a                                    ; $5182: $02
    ld [bc], a                                    ; $5183: $02
    ld [bc], a                                    ; $5184: $02
    ld [bc], a                                    ; $5185: $02
    ld [bc], a                                    ; $5186: $02
    ld [bc], a                                    ; $5187: $02
    ld [bc], a                                    ; $5188: $02
    ld [bc], a                                    ; $5189: $02
    ld [bc], a                                    ; $518a: $02
    ld [bc], a                                    ; $518b: $02
    ld [bc], a                                    ; $518c: $02
    ld [bc], a                                    ; $518d: $02
    ld [bc], a                                    ; $518e: $02
    ld [bc], a                                    ; $518f: $02
    ld [bc], a                                    ; $5190: $02
    ld [bc], a                                    ; $5191: $02
    ld [bc], a                                    ; $5192: $02
    ld [bc], a                                    ; $5193: $02
    ld [bc], a                                    ; $5194: $02
    ld [bc], a                                    ; $5195: $02
    ld [bc], a                                    ; $5196: $02
    ld [bc], a                                    ; $5197: $02
    ld [bc], a                                    ; $5198: $02
    ld [bc], a                                    ; $5199: $02
    ld [bc], a                                    ; $519a: $02
    ld [bc], a                                    ; $519b: $02
    ld [bc], a                                    ; $519c: $02
    ld [bc], a                                    ; $519d: $02
    ld [bc], a                                    ; $519e: $02
    ld [bc], a                                    ; $519f: $02
    ld [bc], a                                    ; $51a0: $02
    ld [bc], a                                    ; $51a1: $02
    ld [bc], a                                    ; $51a2: $02
    ld [bc], a                                    ; $51a3: $02
    ld [bc], a                                    ; $51a4: $02
    ld [bc], a                                    ; $51a5: $02
    ld [bc], a                                    ; $51a6: $02
    ld [bc], a                                    ; $51a7: $02
    ld [bc], a                                    ; $51a8: $02
    ld [bc], a                                    ; $51a9: $02
    ld [bc], a                                    ; $51aa: $02
    ld [bc], a                                    ; $51ab: $02
    ld [bc], a                                    ; $51ac: $02
    ld [bc], a                                    ; $51ad: $02
    ld [bc], a                                    ; $51ae: $02
    ld [bc], a                                    ; $51af: $02
    ld [bc], a                                    ; $51b0: $02
    ld [bc], a                                    ; $51b1: $02
    ld [bc], a                                    ; $51b2: $02
    ld [bc], a                                    ; $51b3: $02
    ld [bc], a                                    ; $51b4: $02
    ld [bc], a                                    ; $51b5: $02
    ld [bc], a                                    ; $51b6: $02
    ld [bc], a                                    ; $51b7: $02
    ld [bc], a                                    ; $51b8: $02
    ld [bc], a                                    ; $51b9: $02
    ld [bc], a                                    ; $51ba: $02
    ld [bc], a                                    ; $51bb: $02
    ld [bc], a                                    ; $51bc: $02
    ld [bc], a                                    ; $51bd: $02
    ld [bc], a                                    ; $51be: $02
    ld [bc], a                                    ; $51bf: $02
    ld [bc], a                                    ; $51c0: $02
    ld [bc], a                                    ; $51c1: $02
    ld [bc], a                                    ; $51c2: $02
    ld [bc], a                                    ; $51c3: $02
    ld [bc], a                                    ; $51c4: $02
    ld [bc], a                                    ; $51c5: $02
    ld [bc], a                                    ; $51c6: $02
    ld [bc], a                                    ; $51c7: $02
    ld [bc], a                                    ; $51c8: $02
    ld [bc], a                                    ; $51c9: $02
    ld [bc], a                                    ; $51ca: $02
    ld [bc], a                                    ; $51cb: $02
    ld [bc], a                                    ; $51cc: $02
    ld [bc], a                                    ; $51cd: $02
    ld [bc], a                                    ; $51ce: $02
    ld [bc], a                                    ; $51cf: $02
    ld [bc], a                                    ; $51d0: $02
    ld [bc], a                                    ; $51d1: $02
    ld [bc], a                                    ; $51d2: $02
    ld [bc], a                                    ; $51d3: $02
    ld [bc], a                                    ; $51d4: $02
    ld [bc], a                                    ; $51d5: $02
    ld [bc], a                                    ; $51d6: $02
    ld [bc], a                                    ; $51d7: $02
    ld [bc], a                                    ; $51d8: $02
    ld [bc], a                                    ; $51d9: $02
    ld [bc], a                                    ; $51da: $02
    ld [bc], a                                    ; $51db: $02
    ld [bc], a                                    ; $51dc: $02
    ld [bc], a                                    ; $51dd: $02
    ld [bc], a                                    ; $51de: $02
    ld [bc], a                                    ; $51df: $02
    ld [bc], a                                    ; $51e0: $02
    ld [bc], a                                    ; $51e1: $02
    ld [bc], a                                    ; $51e2: $02
    ld [bc], a                                    ; $51e3: $02
    ld [bc], a                                    ; $51e4: $02
    ld [bc], a                                    ; $51e5: $02
    ld [bc], a                                    ; $51e6: $02
    ld [bc], a                                    ; $51e7: $02
    ld [bc], a                                    ; $51e8: $02
    ld [bc], a                                    ; $51e9: $02
    ld [bc], a                                    ; $51ea: $02
    ld [bc], a                                    ; $51eb: $02
    ld [bc], a                                    ; $51ec: $02
    ld [bc], a                                    ; $51ed: $02
    ld [bc], a                                    ; $51ee: $02
    ld [bc], a                                    ; $51ef: $02
    ld [bc], a                                    ; $51f0: $02
    ld [bc], a                                    ; $51f1: $02
    ld [bc], a                                    ; $51f2: $02
    ld [bc], a                                    ; $51f3: $02
    ld [bc], a                                    ; $51f4: $02
    ld [bc], a                                    ; $51f5: $02
    ld [bc], a                                    ; $51f6: $02
    ld [bc], a                                    ; $51f7: $02
    ld [bc], a                                    ; $51f8: $02
    ld [bc], a                                    ; $51f9: $02
    ld [bc], a                                    ; $51fa: $02
    ld [bc], a                                    ; $51fb: $02
    ld [bc], a                                    ; $51fc: $02
    ld [bc], a                                    ; $51fd: $02
    ld [bc], a                                    ; $51fe: $02
    ld [bc], a                                    ; $51ff: $02
    ld [bc], a                                    ; $5200: $02
    ld [bc], a                                    ; $5201: $02
    ld [bc], a                                    ; $5202: $02
    ld [bc], a                                    ; $5203: $02
    ld [bc], a                                    ; $5204: $02
    ld [bc], a                                    ; $5205: $02
    ld [bc], a                                    ; $5206: $02
    ld [bc], a                                    ; $5207: $02
    ld [bc], a                                    ; $5208: $02
    ld [bc], a                                    ; $5209: $02
    ld [bc], a                                    ; $520a: $02
    ld [bc], a                                    ; $520b: $02
    ld [bc], a                                    ; $520c: $02
    ld [bc], a                                    ; $520d: $02
    ld [bc], a                                    ; $520e: $02
    ld [bc], a                                    ; $520f: $02
    ld [bc], a                                    ; $5210: $02
    ld [bc], a                                    ; $5211: $02
    ld [bc], a                                    ; $5212: $02
    ld [bc], a                                    ; $5213: $02
    ld [bc], a                                    ; $5214: $02
    ld [bc], a                                    ; $5215: $02
    ld [bc], a                                    ; $5216: $02
    ld [bc], a                                    ; $5217: $02
    ld [bc], a                                    ; $5218: $02
    ld [bc], a                                    ; $5219: $02
    ld [bc], a                                    ; $521a: $02
    ld [bc], a                                    ; $521b: $02
    ld [bc], a                                    ; $521c: $02
    ld [bc], a                                    ; $521d: $02
    ld [bc], a                                    ; $521e: $02
    ld [bc], a                                    ; $521f: $02
    ld [bc], a                                    ; $5220: $02
    ld [bc], a                                    ; $5221: $02
    ld [bc], a                                    ; $5222: $02
    ld [bc], a                                    ; $5223: $02
    ld [bc], a                                    ; $5224: $02
    ld [bc], a                                    ; $5225: $02
    ld [bc], a                                    ; $5226: $02
    ld [bc], a                                    ; $5227: $02
    ld [bc], a                                    ; $5228: $02
    ld [bc], a                                    ; $5229: $02
    ld [bc], a                                    ; $522a: $02
    ld [bc], a                                    ; $522b: $02
    ld [bc], a                                    ; $522c: $02
    ld [bc], a                                    ; $522d: $02
    ld [bc], a                                    ; $522e: $02
    ld [bc], a                                    ; $522f: $02
    ld [bc], a                                    ; $5230: $02
    ld [bc], a                                    ; $5231: $02
    ld [bc], a                                    ; $5232: $02
    ld [bc], a                                    ; $5233: $02
    ld [bc], a                                    ; $5234: $02
    ld [bc], a                                    ; $5235: $02
    ld [bc], a                                    ; $5236: $02
    ld [bc], a                                    ; $5237: $02
    ld [bc], a                                    ; $5238: $02
    ld [bc], a                                    ; $5239: $02
    ld [bc], a                                    ; $523a: $02
    ld [bc], a                                    ; $523b: $02
    ld [bc], a                                    ; $523c: $02
    ld [bc], a                                    ; $523d: $02
    ld [bc], a                                    ; $523e: $02
    ld [bc], a                                    ; $523f: $02
    ld [bc], a                                    ; $5240: $02
    ld [bc], a                                    ; $5241: $02
    ld [bc], a                                    ; $5242: $02
    ld [bc], a                                    ; $5243: $02
    ld [bc], a                                    ; $5244: $02
    ld [bc], a                                    ; $5245: $02
    ld [bc], a                                    ; $5246: $02
    ld [bc], a                                    ; $5247: $02
    ld [bc], a                                    ; $5248: $02
    ld [bc], a                                    ; $5249: $02
    ld [bc], a                                    ; $524a: $02
    ld [bc], a                                    ; $524b: $02
    ld [bc], a                                    ; $524c: $02
    ld [bc], a                                    ; $524d: $02
    ld [bc], a                                    ; $524e: $02
    ld [bc], a                                    ; $524f: $02
    ld [bc], a                                    ; $5250: $02
    ld [bc], a                                    ; $5251: $02
    ld [bc], a                                    ; $5252: $02
    ld [bc], a                                    ; $5253: $02
    ld [bc], a                                    ; $5254: $02
    ld [bc], a                                    ; $5255: $02
    ld [bc], a                                    ; $5256: $02
    ld [bc], a                                    ; $5257: $02
    ld [bc], a                                    ; $5258: $02
    ld [bc], a                                    ; $5259: $02
    ld [bc], a                                    ; $525a: $02
    ld [bc], a                                    ; $525b: $02
    ld [bc], a                                    ; $525c: $02
    ld [bc], a                                    ; $525d: $02
    ld [bc], a                                    ; $525e: $02
    ld [bc], a                                    ; $525f: $02
    ld [bc], a                                    ; $5260: $02
    ld [bc], a                                    ; $5261: $02
    ld [bc], a                                    ; $5262: $02
    ld [bc], a                                    ; $5263: $02
    ld [bc], a                                    ; $5264: $02
    ld [bc], a                                    ; $5265: $02
    ld [bc], a                                    ; $5266: $02
    ld [bc], a                                    ; $5267: $02
    ld [bc], a                                    ; $5268: $02
    ld [bc], a                                    ; $5269: $02
    ld [bc], a                                    ; $526a: $02
    ld [bc], a                                    ; $526b: $02
    ld [bc], a                                    ; $526c: $02
    ld [bc], a                                    ; $526d: $02
    ld [bc], a                                    ; $526e: $02
    ld [bc], a                                    ; $526f: $02
    ld [bc], a                                    ; $5270: $02
    ld [bc], a                                    ; $5271: $02
    ld [bc], a                                    ; $5272: $02
    ld [bc], a                                    ; $5273: $02
    ld [bc], a                                    ; $5274: $02
    ld [bc], a                                    ; $5275: $02
    ld [bc], a                                    ; $5276: $02
    ld [bc], a                                    ; $5277: $02
    ld [bc], a                                    ; $5278: $02
    ld [bc], a                                    ; $5279: $02
    ld [bc], a                                    ; $527a: $02
    ld [bc], a                                    ; $527b: $02
    ld [bc], a                                    ; $527c: $02
    ld [bc], a                                    ; $527d: $02
    ld [bc], a                                    ; $527e: $02
    ld [bc], a                                    ; $527f: $02
    ld [bc], a                                    ; $5280: $02
    ld [bc], a                                    ; $5281: $02
    ld [bc], a                                    ; $5282: $02
    ld [bc], a                                    ; $5283: $02
    ld [bc], a                                    ; $5284: $02
    ld [bc], a                                    ; $5285: $02
    ld [bc], a                                    ; $5286: $02
    ld [bc], a                                    ; $5287: $02
    ld [bc], a                                    ; $5288: $02
    ld [bc], a                                    ; $5289: $02
    ld [bc], a                                    ; $528a: $02
    ld [bc], a                                    ; $528b: $02
    ld [bc], a                                    ; $528c: $02
    ld [bc], a                                    ; $528d: $02
    ld [bc], a                                    ; $528e: $02
    ld [bc], a                                    ; $528f: $02
    ld [bc], a                                    ; $5290: $02
    ld [bc], a                                    ; $5291: $02
    ld [bc], a                                    ; $5292: $02
    ld [bc], a                                    ; $5293: $02
    ld [bc], a                                    ; $5294: $02
    ld [bc], a                                    ; $5295: $02
    ld [bc], a                                    ; $5296: $02
    ld [bc], a                                    ; $5297: $02
    ld [bc], a                                    ; $5298: $02
    ld [bc], a                                    ; $5299: $02
    ld [bc], a                                    ; $529a: $02
    ld [bc], a                                    ; $529b: $02
    ld [bc], a                                    ; $529c: $02
    ld [bc], a                                    ; $529d: $02
    ld [bc], a                                    ; $529e: $02
    ld [bc], a                                    ; $529f: $02
    ld [bc], a                                    ; $52a0: $02
    ld [bc], a                                    ; $52a1: $02
    ld [bc], a                                    ; $52a2: $02
    ld [bc], a                                    ; $52a3: $02
    ld [bc], a                                    ; $52a4: $02
    ld [bc], a                                    ; $52a5: $02
    ld [bc], a                                    ; $52a6: $02
    ld [bc], a                                    ; $52a7: $02
    ld [bc], a                                    ; $52a8: $02
    ld [bc], a                                    ; $52a9: $02
    ld [bc], a                                    ; $52aa: $02
    ld [bc], a                                    ; $52ab: $02
    ld [bc], a                                    ; $52ac: $02
    ld [bc], a                                    ; $52ad: $02
    ld [bc], a                                    ; $52ae: $02
    ld [bc], a                                    ; $52af: $02
    ld [bc], a                                    ; $52b0: $02
    ld [bc], a                                    ; $52b1: $02
    ld [bc], a                                    ; $52b2: $02
    ld [bc], a                                    ; $52b3: $02
    ld [bc], a                                    ; $52b4: $02
    ld [bc], a                                    ; $52b5: $02
    ld [bc], a                                    ; $52b6: $02
    ld [bc], a                                    ; $52b7: $02
    ld [bc], a                                    ; $52b8: $02
    ld [bc], a                                    ; $52b9: $02
    ld [bc], a                                    ; $52ba: $02
    ld [bc], a                                    ; $52bb: $02
    ld [bc], a                                    ; $52bc: $02
    ld [bc], a                                    ; $52bd: $02
    ld [bc], a                                    ; $52be: $02
    ld [bc], a                                    ; $52bf: $02
    ld [bc], a                                    ; $52c0: $02
    ld [bc], a                                    ; $52c1: $02
    ld [bc], a                                    ; $52c2: $02
    ld [bc], a                                    ; $52c3: $02
    ld [bc], a                                    ; $52c4: $02
    ld [bc], a                                    ; $52c5: $02
    ld [bc], a                                    ; $52c6: $02
    ld [bc], a                                    ; $52c7: $02
    ld [bc], a                                    ; $52c8: $02
    ld [bc], a                                    ; $52c9: $02
    ld [bc], a                                    ; $52ca: $02
    ld [bc], a                                    ; $52cb: $02
    ld [bc], a                                    ; $52cc: $02
    ld [bc], a                                    ; $52cd: $02
    ld [bc], a                                    ; $52ce: $02
    ld [bc], a                                    ; $52cf: $02
    ld [bc], a                                    ; $52d0: $02
    ld [bc], a                                    ; $52d1: $02
    ld [bc], a                                    ; $52d2: $02
    ld [bc], a                                    ; $52d3: $02
    ld [bc], a                                    ; $52d4: $02
    ld [bc], a                                    ; $52d5: $02
    ld [bc], a                                    ; $52d6: $02
    ld [bc], a                                    ; $52d7: $02
    ld [bc], a                                    ; $52d8: $02
    ld [bc], a                                    ; $52d9: $02
    ld [bc], a                                    ; $52da: $02
    ld [bc], a                                    ; $52db: $02
    ld [bc], a                                    ; $52dc: $02
    ld [bc], a                                    ; $52dd: $02
    ld [bc], a                                    ; $52de: $02
    ld [bc], a                                    ; $52df: $02
    ld [bc], a                                    ; $52e0: $02
    ld [bc], a                                    ; $52e1: $02
    ld [bc], a                                    ; $52e2: $02
    ld [bc], a                                    ; $52e3: $02
    ld [bc], a                                    ; $52e4: $02
    ld [bc], a                                    ; $52e5: $02
    ld [bc], a                                    ; $52e6: $02
    ld [bc], a                                    ; $52e7: $02
    ld [bc], a                                    ; $52e8: $02
    ld [bc], a                                    ; $52e9: $02
    ld [bc], a                                    ; $52ea: $02
    ld [bc], a                                    ; $52eb: $02
    ld [bc], a                                    ; $52ec: $02
    ld [bc], a                                    ; $52ed: $02
    ld [bc], a                                    ; $52ee: $02
    ld [bc], a                                    ; $52ef: $02
    ld [bc], a                                    ; $52f0: $02
    ld [bc], a                                    ; $52f1: $02
    ld [bc], a                                    ; $52f2: $02
    ld [bc], a                                    ; $52f3: $02
    ld [bc], a                                    ; $52f4: $02
    ld [bc], a                                    ; $52f5: $02
    ld [bc], a                                    ; $52f6: $02
    ld [bc], a                                    ; $52f7: $02
    ld [bc], a                                    ; $52f8: $02
    ld [bc], a                                    ; $52f9: $02
    ld [bc], a                                    ; $52fa: $02
    ld [bc], a                                    ; $52fb: $02
    ld [bc], a                                    ; $52fc: $02
    ld [bc], a                                    ; $52fd: $02
    ld [bc], a                                    ; $52fe: $02
    ld [bc], a                                    ; $52ff: $02
    ld [bc], a                                    ; $5300: $02
    ld [bc], a                                    ; $5301: $02
    ld [bc], a                                    ; $5302: $02
    ld [bc], a                                    ; $5303: $02
    ld [bc], a                                    ; $5304: $02
    ld [bc], a                                    ; $5305: $02
    ld [bc], a                                    ; $5306: $02
    ld [bc], a                                    ; $5307: $02
    ld [bc], a                                    ; $5308: $02
    ld [bc], a                                    ; $5309: $02
    ld [bc], a                                    ; $530a: $02
    inc b                                         ; $530b: $04
    inc b                                         ; $530c: $04
    inc b                                         ; $530d: $04
    inc b                                         ; $530e: $04
    inc b                                         ; $530f: $04
    inc b                                         ; $5310: $04
    inc b                                         ; $5311: $04
    inc b                                         ; $5312: $04
    inc b                                         ; $5313: $04
    inc b                                         ; $5314: $04
    inc b                                         ; $5315: $04
    inc b                                         ; $5316: $04
    inc b                                         ; $5317: $04
    inc b                                         ; $5318: $04
    inc b                                         ; $5319: $04
    inc b                                         ; $531a: $04
    inc b                                         ; $531b: $04
    inc b                                         ; $531c: $04
    inc b                                         ; $531d: $04
    ld b, $06                                     ; $531e: $06 $06
    rlca                                          ; $5320: $07
    rlca                                          ; $5321: $07
    inc b                                         ; $5322: $04
    inc b                                         ; $5323: $04
    inc b                                         ; $5324: $04
    inc b                                         ; $5325: $04
    inc b                                         ; $5326: $04
    inc b                                         ; $5327: $04
    inc b                                         ; $5328: $04
    inc b                                         ; $5329: $04
    inc b                                         ; $532a: $04
    inc b                                         ; $532b: $04
    inc b                                         ; $532c: $04
    inc b                                         ; $532d: $04
    add a                                         ; $532e: $87
    add a                                         ; $532f: $87
    add a                                         ; $5330: $87
    add a                                         ; $5331: $87
    add a                                         ; $5332: $87
    add a                                         ; $5333: $87
    inc b                                         ; $5334: $04
    inc b                                         ; $5335: $04
    inc b                                         ; $5336: $04
    inc b                                         ; $5337: $04
    inc b                                         ; $5338: $04
    inc b                                         ; $5339: $04
    inc b                                         ; $533a: $04
    inc b                                         ; $533b: $04
    inc b                                         ; $533c: $04
    inc b                                         ; $533d: $04
    inc b                                         ; $533e: $04
    inc b                                         ; $533f: $04
    inc b                                         ; $5340: $04
    inc b                                         ; $5341: $04
    inc b                                         ; $5342: $04
    inc b                                         ; $5343: $04
    inc b                                         ; $5344: $04
    inc b                                         ; $5345: $04
    inc b                                         ; $5346: $04
    inc b                                         ; $5347: $04
    inc b                                         ; $5348: $04
    inc b                                         ; $5349: $04
    inc b                                         ; $534a: $04
    inc b                                         ; $534b: $04
    inc b                                         ; $534c: $04
    inc b                                         ; $534d: $04
    inc b                                         ; $534e: $04
    ld b, $07                                     ; $534f: $06 $07
    ld h, $04                                     ; $5351: $26 $04
    inc b                                         ; $5353: $04
    inc b                                         ; $5354: $04
    inc b                                         ; $5355: $04
    inc b                                         ; $5356: $04
    inc b                                         ; $5357: $04
    inc b                                         ; $5358: $04
    inc b                                         ; $5359: $04
    inc b                                         ; $535a: $04
    inc b                                         ; $535b: $04
    inc b                                         ; $535c: $04
    inc b                                         ; $535d: $04
    inc b                                         ; $535e: $04
    inc b                                         ; $535f: $04
    inc b                                         ; $5360: $04
    inc h                                         ; $5361: $24
    inc h                                         ; $5362: $24
    inc b                                         ; $5363: $04
    inc b                                         ; $5364: $04
    inc b                                         ; $5365: $04
    add a                                         ; $5366: $87
    add a                                         ; $5367: $87
    add a                                         ; $5368: $87
    add a                                         ; $5369: $87
    add a                                         ; $536a: $87
    add a                                         ; $536b: $87
    inc b                                         ; $536c: $04
    inc h                                         ; $536d: $24
    inc h                                         ; $536e: $24
    inc b                                         ; $536f: $04
    inc b                                         ; $5370: $04
    inc h                                         ; $5371: $24
    inc h                                         ; $5372: $24
    inc b                                         ; $5373: $04
    inc b                                         ; $5374: $04
    ld b, $07                                     ; $5375: $06 $07
    ld h, $04                                     ; $5377: $26 $04
    inc b                                         ; $5379: $04
    inc b                                         ; $537a: $04
    inc b                                         ; $537b: $04
    inc b                                         ; $537c: $04
    inc b                                         ; $537d: $04
    inc b                                         ; $537e: $04
    inc b                                         ; $537f: $04
    inc h                                         ; $5380: $24
    inc b                                         ; $5381: $04
    inc b                                         ; $5382: $04
    inc b                                         ; $5383: $04
    inc b                                         ; $5384: $04
    inc b                                         ; $5385: $04
    inc b                                         ; $5386: $04
    inc b                                         ; $5387: $04
    inc b                                         ; $5388: $04
    inc b                                         ; $5389: $04
    inc b                                         ; $538a: $04
    inc b                                         ; $538b: $04
    inc b                                         ; $538c: $04
    inc b                                         ; $538d: $04
    inc b                                         ; $538e: $04
    inc b                                         ; $538f: $04
    inc b                                         ; $5390: $04
    add a                                         ; $5391: $87
    add a                                         ; $5392: $87
    add a                                         ; $5393: $87
    add a                                         ; $5394: $87
    add a                                         ; $5395: $87
    add a                                         ; $5396: $87
    inc b                                         ; $5397: $04
    inc h                                         ; $5398: $24
    inc h                                         ; $5399: $24
    inc b                                         ; $539a: $04
    inc b                                         ; $539b: $04
    inc b                                         ; $539c: $04
    inc b                                         ; $539d: $04
    inc b                                         ; $539e: $04
    inc b                                         ; $539f: $04
    inc b                                         ; $53a0: $04
    inc b                                         ; $53a1: $04
    inc b                                         ; $53a2: $04
    inc b                                         ; $53a3: $04
    inc b                                         ; $53a4: $04
    inc b                                         ; $53a5: $04
    inc b                                         ; $53a6: $04
    inc b                                         ; $53a7: $04
    inc b                                         ; $53a8: $04
    inc b                                         ; $53a9: $04
    inc b                                         ; $53aa: $04
    ld b, $04                                     ; $53ab: $06 $04
    inc b                                         ; $53ad: $04
    ld b, $04                                     ; $53ae: $06 $04
    inc b                                         ; $53b0: $04
    inc b                                         ; $53b1: $04
    ld b, $06                                     ; $53b2: $06 $06
    inc b                                         ; $53b4: $04
    ld b, $04                                     ; $53b5: $06 $04
    inc b                                         ; $53b7: $04
    inc b                                         ; $53b8: $04
    inc b                                         ; $53b9: $04
    ld b, $04                                     ; $53ba: $06 $04
    ld b, $06                                     ; $53bc: $06 $06
    inc b                                         ; $53be: $04
    rlca                                          ; $53bf: $07
    rlca                                          ; $53c0: $07
    rlca                                          ; $53c1: $07
    inc b                                         ; $53c2: $04
    inc b                                         ; $53c3: $04
    ld b, $04                                     ; $53c4: $06 $04
    inc b                                         ; $53c6: $04
    ld b, $04                                     ; $53c7: $06 $04
    ld b, $06                                     ; $53c9: $06 $06
    inc b                                         ; $53cb: $04
    inc b                                         ; $53cc: $04
    inc b                                         ; $53cd: $04
    add a                                         ; $53ce: $87
    add a                                         ; $53cf: $87
    add a                                         ; $53d0: $87
    add a                                         ; $53d1: $87
    add a                                         ; $53d2: $87
    add a                                         ; $53d3: $87
    inc b                                         ; $53d4: $04
    ld b, $04                                     ; $53d5: $06 $04
    ld b, $06                                     ; $53d7: $06 $06
    inc b                                         ; $53d9: $04
    inc b                                         ; $53da: $04
    inc b                                         ; $53db: $04
    inc b                                         ; $53dc: $04
    ld b, $06                                     ; $53dd: $06 $06
    inc h                                         ; $53df: $24
    ld b, $04                                     ; $53e0: $06 $04
    inc h                                         ; $53e2: $24
    ld b, $04                                     ; $53e3: $06 $04
    ld b, $06                                     ; $53e5: $06 $06
    inc b                                         ; $53e7: $04
    inc b                                         ; $53e8: $04
    ld b, $04                                     ; $53e9: $06 $04
    inc b                                         ; $53eb: $04
    ld b, $04                                     ; $53ec: $06 $04
    inc b                                         ; $53ee: $04
    rlca                                          ; $53ef: $07
    rlca                                          ; $53f0: $07
    rlca                                          ; $53f1: $07
    inc b                                         ; $53f2: $04
    inc b                                         ; $53f3: $04
    inc b                                         ; $53f4: $04
    inc b                                         ; $53f5: $04
    inc b                                         ; $53f6: $04
    ld b, $04                                     ; $53f7: $06 $04
    ld b, $06                                     ; $53f9: $06 $06
    inc b                                         ; $53fb: $04
    ld b, $24                                     ; $53fc: $06 $24
    inc b                                         ; $53fe: $04
    ld b, $24                                     ; $53ff: $06 $24
    inc b                                         ; $5401: $04
    inc b                                         ; $5402: $04
    ld b, $06                                     ; $5403: $06 $06
    inc b                                         ; $5405: $04
    add a                                         ; $5406: $87
    add a                                         ; $5407: $87
    add a                                         ; $5408: $87
    add a                                         ; $5409: $87
    add a                                         ; $540a: $87
    add a                                         ; $540b: $87
    ld b, $24                                     ; $540c: $06 $24
    inc b                                         ; $540e: $04
    rlca                                          ; $540f: $07
    inc h                                         ; $5410: $24
    inc h                                         ; $5411: $24
    inc b                                         ; $5412: $04
    rlca                                          ; $5413: $07
    inc b                                         ; $5414: $04
    rlca                                          ; $5415: $07
    rlca                                          ; $5416: $07
    rlca                                          ; $5417: $07
    inc b                                         ; $5418: $04
    ld b, $06                                     ; $5419: $06 $06
    inc b                                         ; $541b: $04
    inc b                                         ; $541c: $04
    inc h                                         ; $541d: $24
    rlca                                          ; $541e: $07
    inc b                                         ; $541f: $04
    inc h                                         ; $5420: $24
    inc b                                         ; $5421: $04
    inc h                                         ; $5422: $24
    inc h                                         ; $5423: $24
    ld b, $06                                     ; $5424: $06 $06
    inc h                                         ; $5426: $24
    ld b, $04                                     ; $5427: $06 $04
    inc h                                         ; $5429: $24
    ld b, $06                                     ; $542a: $06 $06
    inc h                                         ; $542c: $24
    inc b                                         ; $542d: $04
    rlca                                          ; $542e: $07
    inc h                                         ; $542f: $24
    inc b                                         ; $5430: $04
    add a                                         ; $5431: $87
    add a                                         ; $5432: $87
    add a                                         ; $5433: $87
    add a                                         ; $5434: $87
    add a                                         ; $5435: $87
    add a                                         ; $5436: $87
    inc b                                         ; $5437: $04
    inc h                                         ; $5438: $24
    inc h                                         ; $5439: $24
    rlca                                          ; $543a: $07
    ld b, $06                                     ; $543b: $06 $06
    inc h                                         ; $543d: $24
    ld b, $04                                     ; $543e: $06 $04
    inc h                                         ; $5440: $24
    ld b, $04                                     ; $5441: $06 $04
    ld b, $06                                     ; $5443: $06 $06
    inc b                                         ; $5445: $04
    inc b                                         ; $5446: $04
    ld b, $04                                     ; $5447: $06 $04
    inc b                                         ; $5449: $04
    ld b, $07                                     ; $544a: $06 $07
    ld [bc], a                                    ; $544c: $02
    ld [bc], a                                    ; $544d: $02
    rlca                                          ; $544e: $07
    ld [bc], a                                    ; $544f: $02
    ld [bc], a                                    ; $5450: $02
    ld [bc], a                                    ; $5451: $02
    rlca                                          ; $5452: $07
    rlca                                          ; $5453: $07
    ld [bc], a                                    ; $5454: $02
    rlca                                          ; $5455: $07
    ld [bc], a                                    ; $5456: $02
    ld [bc], a                                    ; $5457: $02
    ld [bc], a                                    ; $5458: $02
    ld [bc], a                                    ; $5459: $02
    rlca                                          ; $545a: $07
    ld [bc], a                                    ; $545b: $02
    rlca                                          ; $545c: $07
    rlca                                          ; $545d: $07
    ld [bc], a                                    ; $545e: $02
    rlca                                          ; $545f: $07
    rlca                                          ; $5460: $07
    rlca                                          ; $5461: $07
    ld [bc], a                                    ; $5462: $02
    ld [bc], a                                    ; $5463: $02
    rlca                                          ; $5464: $07
    ld [bc], a                                    ; $5465: $02
    ld [bc], a                                    ; $5466: $02
    rlca                                          ; $5467: $07
    ld [bc], a                                    ; $5468: $02
    rlca                                          ; $5469: $07
    rlca                                          ; $546a: $07
    ld [bc], a                                    ; $546b: $02
    ld [bc], a                                    ; $546c: $02
    ld [bc], a                                    ; $546d: $02
    add a                                         ; $546e: $87
    add a                                         ; $546f: $87
    add a                                         ; $5470: $87
    add a                                         ; $5471: $87
    add a                                         ; $5472: $87
    add a                                         ; $5473: $87
    ld [bc], a                                    ; $5474: $02
    rlca                                          ; $5475: $07
    ld [bc], a                                    ; $5476: $02
    rlca                                          ; $5477: $07
    rlca                                          ; $5478: $07
    ld [bc], a                                    ; $5479: $02
    ld [bc], a                                    ; $547a: $02
    ld [bc], a                                    ; $547b: $02
    ld [bc], a                                    ; $547c: $02
    rlca                                          ; $547d: $07
    rlca                                          ; $547e: $07
    ld [bc], a                                    ; $547f: $02
    rlca                                          ; $5480: $07
    ld [bc], a                                    ; $5481: $02
    ld [bc], a                                    ; $5482: $02
    rlca                                          ; $5483: $07
    ld [bc], a                                    ; $5484: $02
    rlca                                          ; $5485: $07
    rlca                                          ; $5486: $07
    ld [bc], a                                    ; $5487: $02
    ld [bc], a                                    ; $5488: $02
    rlca                                          ; $5489: $07
    ld [bc], a                                    ; $548a: $02
    ld [bc], a                                    ; $548b: $02
    rlca                                          ; $548c: $07
    ld [bc], a                                    ; $548d: $02
    ld [bc], a                                    ; $548e: $02
    rlca                                          ; $548f: $07
    rlca                                          ; $5490: $07
    rlca                                          ; $5491: $07
    ld [bc], a                                    ; $5492: $02
    ld [bc], a                                    ; $5493: $02
    ld [bc], a                                    ; $5494: $02
    ld [bc], a                                    ; $5495: $02
    ld [bc], a                                    ; $5496: $02
    rlca                                          ; $5497: $07
    ld [bc], a                                    ; $5498: $02
    rlca                                          ; $5499: $07
    rlca                                          ; $549a: $07
    ld [bc], a                                    ; $549b: $02
    rlca                                          ; $549c: $07
    ld [bc], a                                    ; $549d: $02
    ld [bc], a                                    ; $549e: $02
    rlca                                          ; $549f: $07
    ld [bc], a                                    ; $54a0: $02
    ld [bc], a                                    ; $54a1: $02
    ld [bc], a                                    ; $54a2: $02
    rlca                                          ; $54a3: $07
    rlca                                          ; $54a4: $07
    ld [bc], a                                    ; $54a5: $02
    add a                                         ; $54a6: $87
    add a                                         ; $54a7: $87
    add a                                         ; $54a8: $87
    add a                                         ; $54a9: $87
    add a                                         ; $54aa: $87
    add a                                         ; $54ab: $87
    rlca                                          ; $54ac: $07
    ld [bc], a                                    ; $54ad: $02
    ld [bc], a                                    ; $54ae: $02
    rlca                                          ; $54af: $07
    ld [bc], a                                    ; $54b0: $02
    ld [bc], a                                    ; $54b1: $02
    ld [bc], a                                    ; $54b2: $02
    rlca                                          ; $54b3: $07
    ld [bc], a                                    ; $54b4: $02
    rlca                                          ; $54b5: $07
    rlca                                          ; $54b6: $07
    rlca                                          ; $54b7: $07
    ld [bc], a                                    ; $54b8: $02
    rlca                                          ; $54b9: $07
    rlca                                          ; $54ba: $07
    ld [bc], a                                    ; $54bb: $02
    ld [bc], a                                    ; $54bc: $02
    ld [bc], a                                    ; $54bd: $02
    rlca                                          ; $54be: $07
    ld [bc], a                                    ; $54bf: $02
    ld [bc], a                                    ; $54c0: $02
    ld [bc], a                                    ; $54c1: $02
    ld [bc], a                                    ; $54c2: $02
    ld [bc], a                                    ; $54c3: $02
    rlca                                          ; $54c4: $07
    rlca                                          ; $54c5: $07
    ld [bc], a                                    ; $54c6: $02
    rlca                                          ; $54c7: $07
    ld [bc], a                                    ; $54c8: $02
    ld [bc], a                                    ; $54c9: $02
    rlca                                          ; $54ca: $07
    rlca                                          ; $54cb: $07
    ld [bc], a                                    ; $54cc: $02
    ld [bc], a                                    ; $54cd: $02
    rlca                                          ; $54ce: $07
    ld [bc], a                                    ; $54cf: $02
    ld [bc], a                                    ; $54d0: $02
    add a                                         ; $54d1: $87
    add a                                         ; $54d2: $87
    add a                                         ; $54d3: $87
    add a                                         ; $54d4: $87
    add a                                         ; $54d5: $87
    add a                                         ; $54d6: $87
    ld [bc], a                                    ; $54d7: $02
    ld [bc], a                                    ; $54d8: $02
    ld [bc], a                                    ; $54d9: $02
    rlca                                          ; $54da: $07
    rlca                                          ; $54db: $07
    rlca                                          ; $54dc: $07
    ld [bc], a                                    ; $54dd: $02
    rlca                                          ; $54de: $07
    ld [bc], a                                    ; $54df: $02
    ld [bc], a                                    ; $54e0: $02
    rlca                                          ; $54e1: $07
    ld [bc], a                                    ; $54e2: $02
    rlca                                          ; $54e3: $07
    rlca                                          ; $54e4: $07
    ld [bc], a                                    ; $54e5: $02
    ld [bc], a                                    ; $54e6: $02
    rlca                                          ; $54e7: $07
    ld [bc], a                                    ; $54e8: $02
    ld [bc], a                                    ; $54e9: $02
    rlca                                          ; $54ea: $07
    rlca                                          ; $54eb: $07
    ld [bc], a                                    ; $54ec: $02
    ld [bc], a                                    ; $54ed: $02
    rlca                                          ; $54ee: $07
    ld [bc], a                                    ; $54ef: $02
    ld [bc], a                                    ; $54f0: $02
    ld [bc], a                                    ; $54f1: $02
    rlca                                          ; $54f2: $07
    rlca                                          ; $54f3: $07
    ld [bc], a                                    ; $54f4: $02
    rlca                                          ; $54f5: $07
    ld [bc], a                                    ; $54f6: $02
    ld [bc], a                                    ; $54f7: $02
    ld [bc], a                                    ; $54f8: $02
    ld [bc], a                                    ; $54f9: $02
    rlca                                          ; $54fa: $07
    ld [bc], a                                    ; $54fb: $02
    rlca                                          ; $54fc: $07
    rlca                                          ; $54fd: $07
    ld [bc], a                                    ; $54fe: $02
    rlca                                          ; $54ff: $07
    rlca                                          ; $5500: $07
    rlca                                          ; $5501: $07
    ld [bc], a                                    ; $5502: $02
    ld [bc], a                                    ; $5503: $02
    rlca                                          ; $5504: $07
    ld [bc], a                                    ; $5505: $02
    ld [bc], a                                    ; $5506: $02
    rlca                                          ; $5507: $07
    ld [bc], a                                    ; $5508: $02
    rlca                                          ; $5509: $07
    rlca                                          ; $550a: $07
    ld [bc], a                                    ; $550b: $02
    ld [bc], a                                    ; $550c: $02
    ld [bc], a                                    ; $550d: $02
    add a                                         ; $550e: $87
    add a                                         ; $550f: $87
    add a                                         ; $5510: $87
    add a                                         ; $5511: $87
    add a                                         ; $5512: $87
    add a                                         ; $5513: $87
    ld [bc], a                                    ; $5514: $02
    rlca                                          ; $5515: $07
    ld [bc], a                                    ; $5516: $02
    ld b, a                                       ; $5517: $47
    rlca                                          ; $5518: $07
    ld [bc], a                                    ; $5519: $02
    ld [bc], a                                    ; $551a: $02
    ld [bc], a                                    ; $551b: $02
    ld [bc], a                                    ; $551c: $02
    rlca                                          ; $551d: $07
    rlca                                          ; $551e: $07
    ld [bc], a                                    ; $551f: $02
    rlca                                          ; $5520: $07
    ld [bc], a                                    ; $5521: $02
    ld [bc], a                                    ; $5522: $02
    rlca                                          ; $5523: $07
    ld [bc], a                                    ; $5524: $02
    rlca                                          ; $5525: $07
    rlca                                          ; $5526: $07
    ld [bc], a                                    ; $5527: $02
    ld [bc], a                                    ; $5528: $02
    rlca                                          ; $5529: $07
    ld [bc], a                                    ; $552a: $02
    ld [bc], a                                    ; $552b: $02
    rlca                                          ; $552c: $07
    ld [bc], a                                    ; $552d: $02
    ld [bc], a                                    ; $552e: $02
    rlca                                          ; $552f: $07
    rlca                                          ; $5530: $07
    rlca                                          ; $5531: $07
    ld [bc], a                                    ; $5532: $02
    ld [bc], a                                    ; $5533: $02
    ld [bc], a                                    ; $5534: $02
    ld [bc], a                                    ; $5535: $02
    ld [bc], a                                    ; $5536: $02
    rlca                                          ; $5537: $07
    ld [bc], a                                    ; $5538: $02
    rlca                                          ; $5539: $07
    rlca                                          ; $553a: $07
    ld [bc], a                                    ; $553b: $02
    rlca                                          ; $553c: $07
    ld [bc], a                                    ; $553d: $02
    ld [bc], a                                    ; $553e: $02
    rlca                                          ; $553f: $07
    ld [bc], a                                    ; $5540: $02
    ld [bc], a                                    ; $5541: $02

Call_0c1_5542:
    ld [bc], a                                    ; $5542: $02
    rlca                                          ; $5543: $07
    rlca                                          ; $5544: $07
    ld [bc], a                                    ; $5545: $02
    add a                                         ; $5546: $87
    add a                                         ; $5547: $87
    add a                                         ; $5548: $87
    add a                                         ; $5549: $87
    add a                                         ; $554a: $87
    add a                                         ; $554b: $87
    rlca                                          ; $554c: $07
    ld [bc], a                                    ; $554d: $02
    ld [bc], a                                    ; $554e: $02
    rlca                                          ; $554f: $07
    ld [bc], a                                    ; $5550: $02
    ld [bc], a                                    ; $5551: $02
    ld [bc], a                                    ; $5552: $02
    rlca                                          ; $5553: $07
    ld [bc], a                                    ; $5554: $02
    rlca                                          ; $5555: $07
    rlca                                          ; $5556: $07
    rlca                                          ; $5557: $07
    ld [bc], a                                    ; $5558: $02
    ld b, a                                       ; $5559: $47
    rlca                                          ; $555a: $07
    ld [bc], a                                    ; $555b: $02
    ld [bc], a                                    ; $555c: $02
    ld [bc], a                                    ; $555d: $02
    rlca                                          ; $555e: $07
    ld [bc], a                                    ; $555f: $02
    ld [bc], a                                    ; $5560: $02
    ld [bc], a                                    ; $5561: $02
    ld [bc], a                                    ; $5562: $02
    ld [bc], a                                    ; $5563: $02
    ld b, a                                       ; $5564: $47
    rlca                                          ; $5565: $07
    ld [bc], a                                    ; $5566: $02
    rlca                                          ; $5567: $07
    ld [bc], a                                    ; $5568: $02
    ld [bc], a                                    ; $5569: $02
    rlca                                          ; $556a: $07
    rlca                                          ; $556b: $07
    ld [bc], a                                    ; $556c: $02
    ld [bc], a                                    ; $556d: $02
    rlca                                          ; $556e: $07
    ld [bc], a                                    ; $556f: $02
    ld [bc], a                                    ; $5570: $02
    add a                                         ; $5571: $87
    add a                                         ; $5572: $87
    add a                                         ; $5573: $87
    add a                                         ; $5574: $87
    add a                                         ; $5575: $87
    add a                                         ; $5576: $87
    ld [bc], a                                    ; $5577: $02
    ld [bc], a                                    ; $5578: $02
    ld [bc], a                                    ; $5579: $02
    rlca                                          ; $557a: $07
    rlca                                          ; $557b: $07
    rlca                                          ; $557c: $07
    ld [bc], a                                    ; $557d: $02
    rlca                                          ; $557e: $07
    ld [bc], a                                    ; $557f: $02
    ld [bc], a                                    ; $5580: $02
    rlca                                          ; $5581: $07
    ld [bc], a                                    ; $5582: $02
    rlca                                          ; $5583: $07
    rlca                                          ; $5584: $07
    ld [bc], a                                    ; $5585: $02
    ld [bc], a                                    ; $5586: $02
    rlca                                          ; $5587: $07
    ld [bc], a                                    ; $5588: $02
    ld [bc], a                                    ; $5589: $02
    rlca                                          ; $558a: $07
    rlca                                          ; $558b: $07
    ld [bc], a                                    ; $558c: $02
    ld [bc], a                                    ; $558d: $02
    rlca                                          ; $558e: $07
    ld [bc], a                                    ; $558f: $02
    ld [bc], a                                    ; $5590: $02
    ld [bc], a                                    ; $5591: $02
    rlca                                          ; $5592: $07
    rlca                                          ; $5593: $07
    ld [bc], a                                    ; $5594: $02
    rlca                                          ; $5595: $07
    ld [bc], a                                    ; $5596: $02
    ld [bc], a                                    ; $5597: $02
    ld [bc], a                                    ; $5598: $02
    ld [bc], a                                    ; $5599: $02
    rlca                                          ; $559a: $07
    ld [bc], a                                    ; $559b: $02
    rlca                                          ; $559c: $07
    rlca                                          ; $559d: $07
    ld [bc], a                                    ; $559e: $02
    rlca                                          ; $559f: $07
    rlca                                          ; $55a0: $07
    rlca                                          ; $55a1: $07
    ld [bc], a                                    ; $55a2: $02
    ld [bc], a                                    ; $55a3: $02
    rlca                                          ; $55a4: $07
    ld [bc], a                                    ; $55a5: $02
    ld [bc], a                                    ; $55a6: $02
    rlca                                          ; $55a7: $07
    ld [bc], a                                    ; $55a8: $02
    rlca                                          ; $55a9: $07
    rlca                                          ; $55aa: $07
    ld [bc], a                                    ; $55ab: $02
    ld [bc], a                                    ; $55ac: $02
    ld [bc], a                                    ; $55ad: $02
    add a                                         ; $55ae: $87
    add a                                         ; $55af: $87
    add a                                         ; $55b0: $87
    add a                                         ; $55b1: $87
    add a                                         ; $55b2: $87
    add a                                         ; $55b3: $87
    ld [bc], a                                    ; $55b4: $02
    rlca                                          ; $55b5: $07
    ld [bc], a                                    ; $55b6: $02
    rlca                                          ; $55b7: $07
    rlca                                          ; $55b8: $07
    ld [bc], a                                    ; $55b9: $02
    ld [bc], a                                    ; $55ba: $02
    ld [bc], a                                    ; $55bb: $02
    ld [bc], a                                    ; $55bc: $02
    rlca                                          ; $55bd: $07
    rlca                                          ; $55be: $07
    ld [bc], a                                    ; $55bf: $02
    rlca                                          ; $55c0: $07
    ld [bc], a                                    ; $55c1: $02
    ld [bc], a                                    ; $55c2: $02
    rlca                                          ; $55c3: $07
    ld [bc], a                                    ; $55c4: $02
    rlca                                          ; $55c5: $07
    rlca                                          ; $55c6: $07
    ld [bc], a                                    ; $55c7: $02
    ld [bc], a                                    ; $55c8: $02
    rlca                                          ; $55c9: $07
    ld [bc], a                                    ; $55ca: $02
    ld [bc], a                                    ; $55cb: $02
    rlca                                          ; $55cc: $07
    ld [bc], a                                    ; $55cd: $02
    ld [bc], a                                    ; $55ce: $02
    rlca                                          ; $55cf: $07
    rlca                                          ; $55d0: $07
    rlca                                          ; $55d1: $07
    ld [bc], a                                    ; $55d2: $02
    ld [bc], a                                    ; $55d3: $02
    ld [bc], a                                    ; $55d4: $02
    ld [bc], a                                    ; $55d5: $02
    ld [bc], a                                    ; $55d6: $02
    rlca                                          ; $55d7: $07
    ld [bc], a                                    ; $55d8: $02
    rlca                                          ; $55d9: $07
    rlca                                          ; $55da: $07
    ld [bc], a                                    ; $55db: $02
    rlca                                          ; $55dc: $07
    ld [bc], a                                    ; $55dd: $02
    ld [bc], a                                    ; $55de: $02
    rlca                                          ; $55df: $07
    ld [bc], a                                    ; $55e0: $02
    ld [bc], a                                    ; $55e1: $02
    ld [bc], a                                    ; $55e2: $02
    rlca                                          ; $55e3: $07
    rlca                                          ; $55e4: $07
    ld [bc], a                                    ; $55e5: $02
    add a                                         ; $55e6: $87
    add a                                         ; $55e7: $87
    add a                                         ; $55e8: $87
    add a                                         ; $55e9: $87
    add a                                         ; $55ea: $87
    add a                                         ; $55eb: $87
    rlca                                          ; $55ec: $07
    ld [bc], a                                    ; $55ed: $02
    ld [bc], a                                    ; $55ee: $02
    rlca                                          ; $55ef: $07
    ld [bc], a                                    ; $55f0: $02
    ld [bc], a                                    ; $55f1: $02
    ld [bc], a                                    ; $55f2: $02
    rlca                                          ; $55f3: $07
    ld [bc], a                                    ; $55f4: $02
    rlca                                          ; $55f5: $07
    rlca                                          ; $55f6: $07
    rlca                                          ; $55f7: $07
    ld [bc], a                                    ; $55f8: $02
    rlca                                          ; $55f9: $07
    rlca                                          ; $55fa: $07
    ld [bc], a                                    ; $55fb: $02
    ld [bc], a                                    ; $55fc: $02
    ld [bc], a                                    ; $55fd: $02
    rlca                                          ; $55fe: $07
    ld [bc], a                                    ; $55ff: $02
    ld [bc], a                                    ; $5600: $02
    ld [bc], a                                    ; $5601: $02
    ld [bc], a                                    ; $5602: $02
    ld [bc], a                                    ; $5603: $02
    rlca                                          ; $5604: $07
    rlca                                          ; $5605: $07
    ld [bc], a                                    ; $5606: $02
    rlca                                          ; $5607: $07
    ld [bc], a                                    ; $5608: $02
    ld [bc], a                                    ; $5609: $02
    rlca                                          ; $560a: $07
    rlca                                          ; $560b: $07
    ld [bc], a                                    ; $560c: $02
    ld [bc], a                                    ; $560d: $02
    rlca                                          ; $560e: $07
    ld [bc], a                                    ; $560f: $02
    ld [bc], a                                    ; $5610: $02
    add a                                         ; $5611: $87
    add a                                         ; $5612: $87
    add a                                         ; $5613: $87
    add a                                         ; $5614: $87
    add a                                         ; $5615: $87
    add a                                         ; $5616: $87
    ld [bc], a                                    ; $5617: $02
    ld [bc], a                                    ; $5618: $02
    ld [bc], a                                    ; $5619: $02
    rlca                                          ; $561a: $07
    rlca                                          ; $561b: $07
    rlca                                          ; $561c: $07
    ld [bc], a                                    ; $561d: $02
    rlca                                          ; $561e: $07
    ld [bc], a                                    ; $561f: $02
    ld [bc], a                                    ; $5620: $02
    rlca                                          ; $5621: $07
    ld [bc], a                                    ; $5622: $02
    rlca                                          ; $5623: $07
    rlca                                          ; $5624: $07
    ld [bc], a                                    ; $5625: $02
    ld [bc], a                                    ; $5626: $02
    rlca                                          ; $5627: $07
    ld [bc], a                                    ; $5628: $02
    ld [bc], a                                    ; $5629: $02
    rlca                                          ; $562a: $07
    rlca                                          ; $562b: $07
    ld bc, $0701                                  ; $562c: $01 $01 $07
    ld bc, $0101                                  ; $562f: $01 $01 $01
    rlca                                          ; $5632: $07
    rlca                                          ; $5633: $07
    ld bc, $0107                                  ; $5634: $01 $07 $01
    ld bc, $0101                                  ; $5637: $01 $01 $01
    rlca                                          ; $563a: $07
    ld bc, $0707                                  ; $563b: $01 $07 $07
    ld bc, $0707                                  ; $563e: $01 $07 $07
    rlca                                          ; $5641: $07
    ld bc, $0701                                  ; $5642: $01 $01 $07
    ld bc, $0701                                  ; $5645: $01 $01 $07
    ld bc, $0707                                  ; $5648: $01 $07 $07
    ld bc, $0101                                  ; $564b: $01 $01 $01
    add a                                         ; $564e: $87
    add a                                         ; $564f: $87
    add a                                         ; $5650: $87
    add a                                         ; $5651: $87
    add a                                         ; $5652: $87
    add a                                         ; $5653: $87
    ld bc, $0107                                  ; $5654: $01 $07 $01
    ld b, a                                       ; $5657: $47
    rlca                                          ; $5658: $07
    ld bc, $0101                                  ; $5659: $01 $01 $01
    ld bc, $0707                                  ; $565c: $01 $07 $07
    ld bc, $0107                                  ; $565f: $01 $07 $01
    ld bc, $0107                                  ; $5662: $01 $07 $01
    rlca                                          ; $5665: $07
    rlca                                          ; $5666: $07
    ld bc, $0701                                  ; $5667: $01 $01 $07
    ld bc, $0701                                  ; $566a: $01 $01 $07
    ld bc, $0701                                  ; $566d: $01 $01 $07
    rlca                                          ; $5670: $07
    rlca                                          ; $5671: $07
    ld bc, $0101                                  ; $5672: $01 $01 $01
    ld bc, $0701                                  ; $5675: $01 $01 $07
    ld bc, $0707                                  ; $5678: $01 $07 $07
    ld bc, $0107                                  ; $567b: $01 $07 $01
    ld bc, $0107                                  ; $567e: $01 $07 $01
    ld bc, $0701                                  ; $5681: $01 $01 $07
    rlca                                          ; $5684: $07
    ld bc, $8787                                  ; $5685: $01 $87 $87
    add a                                         ; $5688: $87
    add a                                         ; $5689: $87
    add a                                         ; $568a: $87
    add a                                         ; $568b: $87
    rlca                                          ; $568c: $07
    ld bc, $0701                                  ; $568d: $01 $01 $07
    ld bc, $0101                                  ; $5690: $01 $01 $01
    rlca                                          ; $5693: $07
    ld bc, $0707                                  ; $5694: $01 $07 $07
    rlca                                          ; $5697: $07
    ld bc, $0747                                  ; $5698: $01 $47 $07
    ld bc, $0101                                  ; $569b: $01 $01 $01
    rlca                                          ; $569e: $07
    ld bc, $0101                                  ; $569f: $01 $01 $01
    ld bc, $4701                                  ; $56a2: $01 $01 $47
    rlca                                          ; $56a5: $07
    ld bc, $0107                                  ; $56a6: $01 $07 $01
    ld bc, $0707                                  ; $56a9: $01 $07 $07
    ld bc, $0701                                  ; $56ac: $01 $01 $07
    ld bc, $8701                                  ; $56af: $01 $01 $87
    add a                                         ; $56b2: $87
    add a                                         ; $56b3: $87
    add a                                         ; $56b4: $87
    add a                                         ; $56b5: $87
    add a                                         ; $56b6: $87
    ld bc, $0101                                  ; $56b7: $01 $01 $01
    rlca                                          ; $56ba: $07
    rlca                                          ; $56bb: $07
    rlca                                          ; $56bc: $07
    ld bc, $0107                                  ; $56bd: $01 $07 $01
    ld bc, $0107                                  ; $56c0: $01 $07 $01
    rlca                                          ; $56c3: $07
    rlca                                          ; $56c4: $07
    ld bc, $0701                                  ; $56c5: $01 $01 $07
    ld bc, $0701                                  ; $56c8: $01 $01 $07
    rlca                                          ; $56cb: $07
    ld bc, $0701                                  ; $56cc: $01 $01 $07
    ld bc, $0101                                  ; $56cf: $01 $01 $01
    rlca                                          ; $56d2: $07
    rlca                                          ; $56d3: $07
    ld bc, $0107                                  ; $56d4: $01 $07 $01
    ld bc, $0101                                  ; $56d7: $01 $01 $01
    rlca                                          ; $56da: $07
    ld bc, $0707                                  ; $56db: $01 $07 $07
    ld bc, $0707                                  ; $56de: $01 $07 $07
    rlca                                          ; $56e1: $07
    ld bc, $0701                                  ; $56e2: $01 $01 $07
    ld bc, $0701                                  ; $56e5: $01 $01 $07
    ld bc, $0707                                  ; $56e8: $01 $07 $07
    ld bc, $0101                                  ; $56eb: $01 $01 $01
    add a                                         ; $56ee: $87
    add a                                         ; $56ef: $87
    add a                                         ; $56f0: $87
    add a                                         ; $56f1: $87
    add a                                         ; $56f2: $87
    add a                                         ; $56f3: $87
    ld bc, $0107                                  ; $56f4: $01 $07 $01
    ld b, a                                       ; $56f7: $47
    rlca                                          ; $56f8: $07
    ld bc, $0101                                  ; $56f9: $01 $01 $01
    ld bc, $0707                                  ; $56fc: $01 $07 $07
    ld bc, $0107                                  ; $56ff: $01 $07 $01
    ld bc, $0107                                  ; $5702: $01 $07 $01
    rlca                                          ; $5705: $07
    rlca                                          ; $5706: $07
    ld bc, $0701                                  ; $5707: $01 $01 $07
    ld bc, $0701                                  ; $570a: $01 $01 $07
    ld bc, $0701                                  ; $570d: $01 $01 $07
    rlca                                          ; $5710: $07
    rlca                                          ; $5711: $07
    ld bc, $0101                                  ; $5712: $01 $01 $01
    ld bc, $0701                                  ; $5715: $01 $01 $07
    ld bc, $0707                                  ; $5718: $01 $07 $07
    ld bc, $0107                                  ; $571b: $01 $07 $01
    ld bc, $0107                                  ; $571e: $01 $07 $01
    ld bc, $0701                                  ; $5721: $01 $01 $07
    rlca                                          ; $5724: $07
    ld bc, $8787                                  ; $5725: $01 $87 $87
    add a                                         ; $5728: $87
    add a                                         ; $5729: $87
    add a                                         ; $572a: $87
    add a                                         ; $572b: $87
    rlca                                          ; $572c: $07
    ld bc, $0701                                  ; $572d: $01 $01 $07
    ld bc, $0101                                  ; $5730: $01 $01 $01
    rlca                                          ; $5733: $07
    ld bc, $0707                                  ; $5734: $01 $07 $07
    rlca                                          ; $5737: $07
    ld bc, $0747                                  ; $5738: $01 $47 $07
    ld bc, $0101                                  ; $573b: $01 $01 $01
    rlca                                          ; $573e: $07
    ld bc, $0101                                  ; $573f: $01 $01 $01
    ld bc, $4701                                  ; $5742: $01 $01 $47
    rlca                                          ; $5745: $07
    ld bc, $0107                                  ; $5746: $01 $07 $01
    ld bc, $0707                                  ; $5749: $01 $07 $07
    ld bc, $0701                                  ; $574c: $01 $01 $07
    ld bc, $8701                                  ; $574f: $01 $01 $87
    add a                                         ; $5752: $87
    add a                                         ; $5753: $87
    add a                                         ; $5754: $87
    add a                                         ; $5755: $87
    add a                                         ; $5756: $87
    ld bc, $0101                                  ; $5757: $01 $01 $01
    rlca                                          ; $575a: $07
    rlca                                          ; $575b: $07
    rlca                                          ; $575c: $07
    ld bc, $0107                                  ; $575d: $01 $07 $01
    ld bc, $0107                                  ; $5760: $01 $07 $01
    rlca                                          ; $5763: $07
    rlca                                          ; $5764: $07
    ld bc, $0701                                  ; $5765: $01 $01 $07
    ld bc, $0701                                  ; $5768: $01 $01 $07
    rlca                                          ; $576b: $07
    ld bc, $0701                                  ; $576c: $01 $01 $07
    ld bc, $0101                                  ; $576f: $01 $01 $01
    rlca                                          ; $5772: $07
    rlca                                          ; $5773: $07
    ld bc, $0107                                  ; $5774: $01 $07 $01
    ld bc, $0101                                  ; $5777: $01 $01 $01
    rlca                                          ; $577a: $07
    ld bc, $0707                                  ; $577b: $01 $07 $07
    ld bc, $0707                                  ; $577e: $01 $07 $07
    rlca                                          ; $5781: $07
    ld bc, $0701                                  ; $5782: $01 $01 $07
    ld bc, $0701                                  ; $5785: $01 $01 $07
    ld bc, $0707                                  ; $5788: $01 $07 $07
    ld bc, $0101                                  ; $578b: $01 $01 $01
    add a                                         ; $578e: $87
    add a                                         ; $578f: $87
    add a                                         ; $5790: $87
    add a                                         ; $5791: $87
    add a                                         ; $5792: $87
    add a                                         ; $5793: $87
    ld bc, $0107                                  ; $5794: $01 $07 $01
    ld b, a                                       ; $5797: $47
    rlca                                          ; $5798: $07
    ld bc, $0101                                  ; $5799: $01 $01 $01
    ld bc, $0707                                  ; $579c: $01 $07 $07
    ld bc, $0107                                  ; $579f: $01 $07 $01
    ld bc, $0107                                  ; $57a2: $01 $07 $01
    rlca                                          ; $57a5: $07
    rlca                                          ; $57a6: $07
    ld bc, $0701                                  ; $57a7: $01 $01 $07
    ld bc, $0701                                  ; $57aa: $01 $01 $07
    ld bc, $0701                                  ; $57ad: $01 $01 $07
    rlca                                          ; $57b0: $07
    rlca                                          ; $57b1: $07
    ld bc, $0101                                  ; $57b2: $01 $01 $01
    ld bc, $0701                                  ; $57b5: $01 $01 $07
    ld bc, $0707                                  ; $57b8: $01 $07 $07
    ld bc, $0107                                  ; $57bb: $01 $07 $01
    ld bc, $0107                                  ; $57be: $01 $07 $01
    ld bc, $0701                                  ; $57c1: $01 $01 $07
    rlca                                          ; $57c4: $07
    ld bc, $8787                                  ; $57c5: $01 $87 $87
    add a                                         ; $57c8: $87
    add a                                         ; $57c9: $87
    add a                                         ; $57ca: $87
    add a                                         ; $57cb: $87
    rlca                                          ; $57cc: $07
    ld bc, $0701                                  ; $57cd: $01 $01 $07
    ld bc, $0101                                  ; $57d0: $01 $01 $01
    rlca                                          ; $57d3: $07
    ld bc, $0707                                  ; $57d4: $01 $07 $07
    rlca                                          ; $57d7: $07
    ld bc, $0747                                  ; $57d8: $01 $47 $07
    ld bc, $0101                                  ; $57db: $01 $01 $01
    rlca                                          ; $57de: $07
    ld bc, $0101                                  ; $57df: $01 $01 $01
    ld bc, $4701                                  ; $57e2: $01 $01 $47
    rlca                                          ; $57e5: $07
    ld bc, $0107                                  ; $57e6: $01 $07 $01
    ld bc, $0707                                  ; $57e9: $01 $07 $07
    ld bc, $0701                                  ; $57ec: $01 $01 $07
    ld bc, $8701                                  ; $57ef: $01 $01 $87
    add a                                         ; $57f2: $87
    add a                                         ; $57f3: $87
    add a                                         ; $57f4: $87
    add a                                         ; $57f5: $87
    add a                                         ; $57f6: $87
    ld bc, $0101                                  ; $57f7: $01 $01 $01
    rlca                                          ; $57fa: $07
    rlca                                          ; $57fb: $07
    rlca                                          ; $57fc: $07
    ld bc, $0107                                  ; $57fd: $01 $07 $01
    ld bc, $0107                                  ; $5800: $01 $07 $01
    rlca                                          ; $5803: $07
    rlca                                          ; $5804: $07
    ld bc, $0701                                  ; $5805: $01 $01 $07
    ld bc, $0701                                  ; $5808: $01 $01 $07
    rlca                                          ; $580b: $07
    inc bc                                        ; $580c: $03
    inc bc                                        ; $580d: $03
    rlca                                          ; $580e: $07
    inc bc                                        ; $580f: $03
    inc bc                                        ; $5810: $03
    inc bc                                        ; $5811: $03
    rlca                                          ; $5812: $07
    rlca                                          ; $5813: $07
    inc bc                                        ; $5814: $03
    rlca                                          ; $5815: $07
    inc bc                                        ; $5816: $03
    inc bc                                        ; $5817: $03
    inc bc                                        ; $5818: $03
    inc bc                                        ; $5819: $03
    rlca                                          ; $581a: $07
    inc bc                                        ; $581b: $03
    rlca                                          ; $581c: $07
    rlca                                          ; $581d: $07
    inc bc                                        ; $581e: $03
    rlca                                          ; $581f: $07
    rlca                                          ; $5820: $07
    rlca                                          ; $5821: $07
    inc bc                                        ; $5822: $03
    inc bc                                        ; $5823: $03
    rlca                                          ; $5824: $07
    inc bc                                        ; $5825: $03
    inc bc                                        ; $5826: $03
    rlca                                          ; $5827: $07
    inc bc                                        ; $5828: $03
    rlca                                          ; $5829: $07
    ld b, a                                       ; $582a: $47
    inc bc                                        ; $582b: $03
    inc bc                                        ; $582c: $03
    inc bc                                        ; $582d: $03
    add a                                         ; $582e: $87
    add a                                         ; $582f: $87
    add a                                         ; $5830: $87
    add a                                         ; $5831: $87
    add a                                         ; $5832: $87
    add a                                         ; $5833: $87
    inc bc                                        ; $5834: $03
    rlca                                          ; $5835: $07
    inc bc                                        ; $5836: $03
    ld b, a                                       ; $5837: $47
    ld b, a                                       ; $5838: $47
    inc bc                                        ; $5839: $03
    inc bc                                        ; $583a: $03
    inc bc                                        ; $583b: $03
    inc bc                                        ; $583c: $03
    rlca                                          ; $583d: $07
    rlca                                          ; $583e: $07
    inc bc                                        ; $583f: $03
    rlca                                          ; $5840: $07
    inc bc                                        ; $5841: $03
    inc bc                                        ; $5842: $03
    rlca                                          ; $5843: $07
    inc bc                                        ; $5844: $03
    rlca                                          ; $5845: $07
    ld b, a                                       ; $5846: $47
    inc bc                                        ; $5847: $03
    inc bc                                        ; $5848: $03
    rlca                                          ; $5849: $07
    inc bc                                        ; $584a: $03
    inc bc                                        ; $584b: $03
    rlca                                          ; $584c: $07
    inc bc                                        ; $584d: $03
    inc bc                                        ; $584e: $03
    rlca                                          ; $584f: $07
    rlca                                          ; $5850: $07
    rlca                                          ; $5851: $07
    inc bc                                        ; $5852: $03
    inc bc                                        ; $5853: $03
    inc bc                                        ; $5854: $03
    inc bc                                        ; $5855: $03
    inc bc                                        ; $5856: $03
    rlca                                          ; $5857: $07
    inc bc                                        ; $5858: $03
    rlca                                          ; $5859: $07
    ld b, a                                       ; $585a: $47
    inc bc                                        ; $585b: $03
    rlca                                          ; $585c: $07
    inc bc                                        ; $585d: $03
    inc bc                                        ; $585e: $03
    rlca                                          ; $585f: $07
    inc bc                                        ; $5860: $03
    inc bc                                        ; $5861: $03
    inc bc                                        ; $5862: $03
    rlca                                          ; $5863: $07
    ld b, a                                       ; $5864: $47
    inc bc                                        ; $5865: $03
    add a                                         ; $5866: $87
    add a                                         ; $5867: $87
    add a                                         ; $5868: $87
    add a                                         ; $5869: $87
    add a                                         ; $586a: $87
    add a                                         ; $586b: $87
    rlca                                          ; $586c: $07
    inc bc                                        ; $586d: $03
    inc bc                                        ; $586e: $03
    rlca                                          ; $586f: $07
    inc bc                                        ; $5870: $03
    inc bc                                        ; $5871: $03
    inc bc                                        ; $5872: $03
    rlca                                          ; $5873: $07
    inc bc                                        ; $5874: $03
    rlca                                          ; $5875: $07
    rlca                                          ; $5876: $07
    rlca                                          ; $5877: $07
    inc bc                                        ; $5878: $03
    ld b, a                                       ; $5879: $47
    ld b, a                                       ; $587a: $47
    inc bc                                        ; $587b: $03
    inc bc                                        ; $587c: $03
    inc bc                                        ; $587d: $03
    rlca                                          ; $587e: $07
    inc bc                                        ; $587f: $03
    inc bc                                        ; $5880: $03
    inc bc                                        ; $5881: $03
    inc bc                                        ; $5882: $03
    inc bc                                        ; $5883: $03
    ld b, a                                       ; $5884: $47
    ld b, a                                       ; $5885: $47
    inc bc                                        ; $5886: $03
    rlca                                          ; $5887: $07
    inc bc                                        ; $5888: $03
    inc bc                                        ; $5889: $03
    rlca                                          ; $588a: $07
    ld b, a                                       ; $588b: $47
    inc bc                                        ; $588c: $03
    inc bc                                        ; $588d: $03
    rlca                                          ; $588e: $07
    inc bc                                        ; $588f: $03
    inc bc                                        ; $5890: $03
    add a                                         ; $5891: $87
    add a                                         ; $5892: $87
    add a                                         ; $5893: $87
    add a                                         ; $5894: $87
    add a                                         ; $5895: $87
    add a                                         ; $5896: $87
    inc bc                                        ; $5897: $03
    inc bc                                        ; $5898: $03
    inc bc                                        ; $5899: $03
    rlca                                          ; $589a: $07
    rlca                                          ; $589b: $07
    rlca                                          ; $589c: $07
    inc bc                                        ; $589d: $03
    rlca                                          ; $589e: $07
    inc bc                                        ; $589f: $03
    inc bc                                        ; $58a0: $03
    rlca                                          ; $58a1: $07
    inc bc                                        ; $58a2: $03
    rlca                                          ; $58a3: $07
    ld b, a                                       ; $58a4: $47
    inc bc                                        ; $58a5: $03
    inc bc                                        ; $58a6: $03
    rlca                                          ; $58a7: $07
    inc bc                                        ; $58a8: $03
    inc bc                                        ; $58a9: $03
    rlca                                          ; $58aa: $07
    rlca                                          ; $58ab: $07
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    rlca                                          ; $58ae: $07
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    rlca                                          ; $58b2: $07
    rlca                                          ; $58b3: $07
    nop                                           ; $58b4: $00
    rlca                                          ; $58b5: $07
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    rlca                                          ; $58ba: $07
    nop                                           ; $58bb: $00
    rlca                                          ; $58bc: $07
    rlca                                          ; $58bd: $07
    nop                                           ; $58be: $00
    rlca                                          ; $58bf: $07
    rlca                                          ; $58c0: $07
    rlca                                          ; $58c1: $07
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    rlca                                          ; $58c4: $07
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    rlca                                          ; $58c7: $07
    nop                                           ; $58c8: $00
    rlca                                          ; $58c9: $07
    ld b, a                                       ; $58ca: $47
    nop                                           ; $58cb: $00
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    add a                                         ; $58ce: $87
    add a                                         ; $58cf: $87
    add a                                         ; $58d0: $87
    add a                                         ; $58d1: $87
    add a                                         ; $58d2: $87
    add a                                         ; $58d3: $87
    nop                                           ; $58d4: $00
    rlca                                          ; $58d5: $07
    nop                                           ; $58d6: $00
    ld b, a                                       ; $58d7: $47
    rlca                                          ; $58d8: $07
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    rlca                                          ; $58dd: $07
    rlca                                          ; $58de: $07
    nop                                           ; $58df: $00
    rlca                                          ; $58e0: $07
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    rlca                                          ; $58e3: $07
    nop                                           ; $58e4: $00
    rlca                                          ; $58e5: $07
    ld b, a                                       ; $58e6: $47
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    rlca                                          ; $58e9: $07
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    rlca                                          ; $58ec: $07
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    rlca                                          ; $58ef: $07
    rlca                                          ; $58f0: $07
    rlca                                          ; $58f1: $07
    nop                                           ; $58f2: $00
    nop                                           ; $58f3: $00
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    rlca                                          ; $58f7: $07
    nop                                           ; $58f8: $00
    rlca                                          ; $58f9: $07
    ld b, a                                       ; $58fa: $47
    nop                                           ; $58fb: $00
    rlca                                          ; $58fc: $07
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    rlca                                          ; $58ff: $07
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    rlca                                          ; $5903: $07
    ld b, a                                       ; $5904: $47
    nop                                           ; $5905: $00
    add a                                         ; $5906: $87
    add a                                         ; $5907: $87
    add a                                         ; $5908: $87
    add a                                         ; $5909: $87
    add a                                         ; $590a: $87
    add a                                         ; $590b: $87
    rlca                                          ; $590c: $07
    nop                                           ; $590d: $00
    nop                                           ; $590e: $00
    rlca                                          ; $590f: $07
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    rlca                                          ; $5913: $07
    nop                                           ; $5914: $00
    rlca                                          ; $5915: $07
    rlca                                          ; $5916: $07
    rlca                                          ; $5917: $07
    nop                                           ; $5918: $00
    ld b, a                                       ; $5919: $47
    rlca                                          ; $591a: $07
    nop                                           ; $591b: $00
    nop                                           ; $591c: $00
    nop                                           ; $591d: $00
    rlca                                          ; $591e: $07
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    ld b, a                                       ; $5924: $47
    rlca                                          ; $5925: $07
    nop                                           ; $5926: $00
    rlca                                          ; $5927: $07
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    rlca                                          ; $592a: $07
    ld b, a                                       ; $592b: $47
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    rlca                                          ; $592e: $07
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    add a                                         ; $5931: $87
    add a                                         ; $5932: $87
    add a                                         ; $5933: $87
    add a                                         ; $5934: $87
    add a                                         ; $5935: $87
    add a                                         ; $5936: $87
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    rlca                                          ; $593a: $07
    rlca                                          ; $593b: $07
    rlca                                          ; $593c: $07
    nop                                           ; $593d: $00
    rlca                                          ; $593e: $07
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    rlca                                          ; $5941: $07
    nop                                           ; $5942: $00
    rlca                                          ; $5943: $07
    ld b, a                                       ; $5944: $47
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    rlca                                          ; $5947: $07
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    rlca                                          ; $594a: $07
    rlca                                          ; $594b: $07
    nop                                           ; $594c: $00
    nop                                           ; $594d: $00
    rlca                                          ; $594e: $07
    nop                                           ; $594f: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    ld b, a                                       ; $5952: $47
    rlca                                          ; $5953: $07
    nop                                           ; $5954: $00
    rlca                                          ; $5955: $07
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    rlca                                          ; $595a: $07
    nop                                           ; $595b: $00
    ld b, a                                       ; $595c: $47
    ld b, a                                       ; $595d: $47
    nop                                           ; $595e: $00
    rlca                                          ; $595f: $07
    rlca                                          ; $5960: $07
    rlca                                          ; $5961: $07
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    rlca                                          ; $5964: $07
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    rlca                                          ; $5967: $07
    nop                                           ; $5968: $00
    ld b, a                                       ; $5969: $47
    ld b, a                                       ; $596a: $47
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    add a                                         ; $596e: $87
    add a                                         ; $596f: $87
    add a                                         ; $5970: $87
    add a                                         ; $5971: $87
    add a                                         ; $5972: $87
    add a                                         ; $5973: $87
    nop                                           ; $5974: $00
    rlca                                          ; $5975: $07
    nop                                           ; $5976: $00
    rlca                                          ; $5977: $07
    rlca                                          ; $5978: $07
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    nop                                           ; $597c: $00
    rlca                                          ; $597d: $07
    rlca                                          ; $597e: $07
    nop                                           ; $597f: $00
    rlca                                          ; $5980: $07
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    rlca                                          ; $5983: $07
    nop                                           ; $5984: $00
    ld b, a                                       ; $5985: $47
    ld b, a                                       ; $5986: $47
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    rlca                                          ; $5989: $07
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    rlca                                          ; $598c: $07
    nop                                           ; $598d: $00
    nop                                           ; $598e: $00
    rlca                                          ; $598f: $07
    rlca                                          ; $5990: $07
    rlca                                          ; $5991: $07
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    rlca                                          ; $5997: $07
    nop                                           ; $5998: $00
    ld b, a                                       ; $5999: $47
    ld b, a                                       ; $599a: $47
    nop                                           ; $599b: $00
    rlca                                          ; $599c: $07
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    rlca                                          ; $599f: $07
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    ld b, a                                       ; $59a3: $47
    ld b, a                                       ; $59a4: $47
    nop                                           ; $59a5: $00
    add a                                         ; $59a6: $87
    add a                                         ; $59a7: $87
    add a                                         ; $59a8: $87
    add a                                         ; $59a9: $87
    add a                                         ; $59aa: $87
    add a                                         ; $59ab: $87
    rlca                                          ; $59ac: $07
    nop                                           ; $59ad: $00
    nop                                           ; $59ae: $00
    rlca                                          ; $59af: $07
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    rlca                                          ; $59b3: $07
    nop                                           ; $59b4: $00
    rlca                                          ; $59b5: $07
    rlca                                          ; $59b6: $07
    rlca                                          ; $59b7: $07
    nop                                           ; $59b8: $00
    rlca                                          ; $59b9: $07
    rlca                                          ; $59ba: $07
    nop                                           ; $59bb: $00
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    rlca                                          ; $59be: $07
    nop                                           ; $59bf: $00
    nop                                           ; $59c0: $00
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    rlca                                          ; $59c4: $07
    rlca                                          ; $59c5: $07
    nop                                           ; $59c6: $00
    rlca                                          ; $59c7: $07
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    ld b, a                                       ; $59ca: $47
    ld b, a                                       ; $59cb: $47
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00
    rlca                                          ; $59ce: $07
    nop                                           ; $59cf: $00
    nop                                           ; $59d0: $00
    add a                                         ; $59d1: $87
    add a                                         ; $59d2: $87
    add a                                         ; $59d3: $87
    add a                                         ; $59d4: $87
    add a                                         ; $59d5: $87
    add a                                         ; $59d6: $87
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    rlca                                          ; $59da: $07
    rlca                                          ; $59db: $07
    rlca                                          ; $59dc: $07
    nop                                           ; $59dd: $00
    rlca                                          ; $59de: $07
    nop                                           ; $59df: $00
    nop                                           ; $59e0: $00
    rlca                                          ; $59e1: $07
    nop                                           ; $59e2: $00
    ld b, a                                       ; $59e3: $47
    ld b, a                                       ; $59e4: $47
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    rlca                                          ; $59e7: $07
    nop                                           ; $59e8: $00
    nop                                           ; $59e9: $00
    rlca                                          ; $59ea: $07
    rlca                                          ; $59eb: $07
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    rlca                                          ; $59ee: $07
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    nop                                           ; $59f1: $00
    rlca                                          ; $59f2: $07
    rlca                                          ; $59f3: $07
    nop                                           ; $59f4: $00
    rlca                                          ; $59f5: $07
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    nop                                           ; $59f8: $00
    nop                                           ; $59f9: $00
    rlca                                          ; $59fa: $07
    nop                                           ; $59fb: $00
    rlca                                          ; $59fc: $07
    rlca                                          ; $59fd: $07
    nop                                           ; $59fe: $00
    rlca                                          ; $59ff: $07
    rlca                                          ; $5a00: $07
    rlca                                          ; $5a01: $07
    nop                                           ; $5a02: $00
    nop                                           ; $5a03: $00
    rlca                                          ; $5a04: $07
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    rlca                                          ; $5a07: $07
    nop                                           ; $5a08: $00
    rlca                                          ; $5a09: $07
    rlca                                          ; $5a0a: $07
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    add a                                         ; $5a0e: $87
    add a                                         ; $5a0f: $87
    add a                                         ; $5a10: $87
    add a                                         ; $5a11: $87
    add a                                         ; $5a12: $87
    add a                                         ; $5a13: $87
    nop                                           ; $5a14: $00
    rlca                                          ; $5a15: $07
    nop                                           ; $5a16: $00
    rlca                                          ; $5a17: $07
    rlca                                          ; $5a18: $07
    nop                                           ; $5a19: $00
    nop                                           ; $5a1a: $00
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    ld b, a                                       ; $5a1d: $47
    rlca                                          ; $5a1e: $07
    nop                                           ; $5a1f: $00
    rlca                                          ; $5a20: $07
    nop                                           ; $5a21: $00
    nop                                           ; $5a22: $00
    rlca                                          ; $5a23: $07
    nop                                           ; $5a24: $00
    rlca                                          ; $5a25: $07
    rlca                                          ; $5a26: $07
    nop                                           ; $5a27: $00
    nop                                           ; $5a28: $00
    rlca                                          ; $5a29: $07
    nop                                           ; $5a2a: $00
    nop                                           ; $5a2b: $00
    rlca                                          ; $5a2c: $07
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    rlca                                          ; $5a2f: $07
    rlca                                          ; $5a30: $07
    rlca                                          ; $5a31: $07
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00
    nop                                           ; $5a34: $00
    nop                                           ; $5a35: $00
    nop                                           ; $5a36: $00
    rlca                                          ; $5a37: $07
    nop                                           ; $5a38: $00
    rlca                                          ; $5a39: $07
    rlca                                          ; $5a3a: $07
    nop                                           ; $5a3b: $00
    rlca                                          ; $5a3c: $07
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    rlca                                          ; $5a3f: $07
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    nop                                           ; $5a42: $00
    rlca                                          ; $5a43: $07
    rlca                                          ; $5a44: $07
    nop                                           ; $5a45: $00
    add a                                         ; $5a46: $87
    add a                                         ; $5a47: $87
    add a                                         ; $5a48: $87
    add a                                         ; $5a49: $87
    add a                                         ; $5a4a: $87
    add a                                         ; $5a4b: $87
    rlca                                          ; $5a4c: $07
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    rlca                                          ; $5a4f: $07
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    rlca                                          ; $5a53: $07
    nop                                           ; $5a54: $00
    rlca                                          ; $5a55: $07
    rlca                                          ; $5a56: $07
    rlca                                          ; $5a57: $07
    nop                                           ; $5a58: $00
    rlca                                          ; $5a59: $07
    rlca                                          ; $5a5a: $07
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    rlca                                          ; $5a5e: $07
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    nop                                           ; $5a62: $00
    nop                                           ; $5a63: $00
    rlca                                          ; $5a64: $07
    rlca                                          ; $5a65: $07
    nop                                           ; $5a66: $00
    rlca                                          ; $5a67: $07
    nop                                           ; $5a68: $00
    nop                                           ; $5a69: $00
    rlca                                          ; $5a6a: $07
    rlca                                          ; $5a6b: $07
    nop                                           ; $5a6c: $00
    nop                                           ; $5a6d: $00
    rlca                                          ; $5a6e: $07
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    add a                                         ; $5a71: $87
    add a                                         ; $5a72: $87
    add a                                         ; $5a73: $87
    add a                                         ; $5a74: $87
    add a                                         ; $5a75: $87
    add a                                         ; $5a76: $87
    nop                                           ; $5a77: $00
    nop                                           ; $5a78: $00
    nop                                           ; $5a79: $00
    rlca                                          ; $5a7a: $07
    ld b, a                                       ; $5a7b: $47
    rlca                                          ; $5a7c: $07
    nop                                           ; $5a7d: $00
    rlca                                          ; $5a7e: $07
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00
    rlca                                          ; $5a81: $07
    nop                                           ; $5a82: $00
    rlca                                          ; $5a83: $07
    rlca                                          ; $5a84: $07
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    rlca                                          ; $5a87: $07
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    rlca                                          ; $5a8a: $07
    rlca                                          ; $5a8b: $07
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    rlca                                          ; $5a8e: $07
    nop                                           ; $5a8f: $00
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    rlca                                          ; $5a92: $07
    rlca                                          ; $5a93: $07
    nop                                           ; $5a94: $00
    rlca                                          ; $5a95: $07
    nop                                           ; $5a96: $00
    nop                                           ; $5a97: $00
    nop                                           ; $5a98: $00
    nop                                           ; $5a99: $00
    rlca                                          ; $5a9a: $07
    nop                                           ; $5a9b: $00
    rlca                                          ; $5a9c: $07
    rlca                                          ; $5a9d: $07
    nop                                           ; $5a9e: $00
    rlca                                          ; $5a9f: $07
    rlca                                          ; $5aa0: $07
    rlca                                          ; $5aa1: $07
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    rlca                                          ; $5aa4: $07
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    rlca                                          ; $5aa7: $07
    nop                                           ; $5aa8: $00
    rlca                                          ; $5aa9: $07
    rlca                                          ; $5aaa: $07
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    add a                                         ; $5aae: $87
    add a                                         ; $5aaf: $87
    add a                                         ; $5ab0: $87
    add a                                         ; $5ab1: $87
    add a                                         ; $5ab2: $87
    add a                                         ; $5ab3: $87
    nop                                           ; $5ab4: $00
    rlca                                          ; $5ab5: $07
    nop                                           ; $5ab6: $00
    rlca                                          ; $5ab7: $07
    rlca                                          ; $5ab8: $07
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    ld b, a                                       ; $5abd: $47
    rlca                                          ; $5abe: $07
    nop                                           ; $5abf: $00
    rlca                                          ; $5ac0: $07
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    rlca                                          ; $5ac3: $07
    nop                                           ; $5ac4: $00
    rlca                                          ; $5ac5: $07
    rlca                                          ; $5ac6: $07
    nop                                           ; $5ac7: $00
    nop                                           ; $5ac8: $00
    rlca                                          ; $5ac9: $07
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    rlca                                          ; $5acc: $07
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    rlca                                          ; $5acf: $07
    rlca                                          ; $5ad0: $07
    rlca                                          ; $5ad1: $07
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    nop                                           ; $5ad6: $00
    rlca                                          ; $5ad7: $07
    nop                                           ; $5ad8: $00
    rlca                                          ; $5ad9: $07
    rlca                                          ; $5ada: $07
    nop                                           ; $5adb: $00
    rlca                                          ; $5adc: $07
    nop                                           ; $5add: $00
    nop                                           ; $5ade: $00
    rlca                                          ; $5adf: $07
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    rlca                                          ; $5ae3: $07
    rlca                                          ; $5ae4: $07
    nop                                           ; $5ae5: $00
    add a                                         ; $5ae6: $87
    add a                                         ; $5ae7: $87
    add a                                         ; $5ae8: $87
    add a                                         ; $5ae9: $87
    add a                                         ; $5aea: $87
    adc a                                         ; $5aeb: $8f
    rrca                                          ; $5aec: $0f
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    rlca                                          ; $5aef: $07
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    rlca                                          ; $5af3: $07
    nop                                           ; $5af4: $00
    rlca                                          ; $5af5: $07
    rlca                                          ; $5af6: $07
    rlca                                          ; $5af7: $07
    nop                                           ; $5af8: $00
    ld b, a                                       ; $5af9: $47
    rlca                                          ; $5afa: $07
    nop                                           ; $5afb: $00
    nop                                           ; $5afc: $00
    nop                                           ; $5afd: $00
    rlca                                          ; $5afe: $07
    nop                                           ; $5aff: $00
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    rlca                                          ; $5b04: $07
    rlca                                          ; $5b05: $07
    nop                                           ; $5b06: $00
    rlca                                          ; $5b07: $07
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    rlca                                          ; $5b0a: $07
    rlca                                          ; $5b0b: $07
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    rlca                                          ; $5b0e: $07
    nop                                           ; $5b0f: $00
    nop                                           ; $5b10: $00
    add a                                         ; $5b11: $87
    add a                                         ; $5b12: $87
    add a                                         ; $5b13: $87
    add a                                         ; $5b14: $87
    add a                                         ; $5b15: $87
    add a                                         ; $5b16: $87
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    rlca                                          ; $5b1a: $07
    ld b, a                                       ; $5b1b: $47
    rlca                                          ; $5b1c: $07
    nop                                           ; $5b1d: $00
    rlca                                          ; $5b1e: $07
    nop                                           ; $5b1f: $00
    nop                                           ; $5b20: $00
    rlca                                          ; $5b21: $07
    nop                                           ; $5b22: $00
    rlca                                          ; $5b23: $07
    rlca                                          ; $5b24: $07
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    rlca                                          ; $5b27: $07
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    rlca                                          ; $5b2a: $07
    rlca                                          ; $5b2b: $07
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    rlca                                          ; $5b2e: $07
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    rlca                                          ; $5b32: $07
    rrca                                          ; $5b33: $0f
    nop                                           ; $5b34: $00
    rlca                                          ; $5b35: $07
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    nop                                           ; $5b39: $00
    rlca                                          ; $5b3a: $07
    nop                                           ; $5b3b: $00
    rlca                                          ; $5b3c: $07
    rrca                                          ; $5b3d: $0f
    nop                                           ; $5b3e: $00
    rlca                                          ; $5b3f: $07
    rrca                                          ; $5b40: $0f
    rrca                                          ; $5b41: $0f
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    rlca                                          ; $5b44: $07
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    rlca                                          ; $5b47: $07
    nop                                           ; $5b48: $00
    rlca                                          ; $5b49: $07
    rrca                                          ; $5b4a: $0f
    nop                                           ; $5b4b: $00
    nop                                           ; $5b4c: $00
    nop                                           ; $5b4d: $00
    adc a                                         ; $5b4e: $8f
    add a                                         ; $5b4f: $87
    add a                                         ; $5b50: $87
    adc a                                         ; $5b51: $8f
    adc a                                         ; $5b52: $8f
    adc a                                         ; $5b53: $8f
    nop                                           ; $5b54: $00
    rlca                                          ; $5b55: $07
    nop                                           ; $5b56: $00
    rlca                                          ; $5b57: $07
    rrca                                          ; $5b58: $0f
    nop                                           ; $5b59: $00
    nop                                           ; $5b5a: $00
    nop                                           ; $5b5b: $00
    nop                                           ; $5b5c: $00
    ld b, a                                       ; $5b5d: $47
    rlca                                          ; $5b5e: $07
    nop                                           ; $5b5f: $00
    rlca                                          ; $5b60: $07
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    rlca                                          ; $5b63: $07
    nop                                           ; $5b64: $00
    rlca                                          ; $5b65: $07
    rrca                                          ; $5b66: $0f
    nop                                           ; $5b67: $00
    nop                                           ; $5b68: $00
    rlca                                          ; $5b69: $07
    nop                                           ; $5b6a: $00
    nop                                           ; $5b6b: $00
    rlca                                          ; $5b6c: $07
    nop                                           ; $5b6d: $00
    nop                                           ; $5b6e: $00
    rlca                                          ; $5b6f: $07
    rrca                                          ; $5b70: $0f
    rlca                                          ; $5b71: $07
    nop                                           ; $5b72: $00
    nop                                           ; $5b73: $00
    nop                                           ; $5b74: $00
    nop                                           ; $5b75: $00
    nop                                           ; $5b76: $00
    rlca                                          ; $5b77: $07
    nop                                           ; $5b78: $00
    rlca                                          ; $5b79: $07
    rrca                                          ; $5b7a: $0f
    nop                                           ; $5b7b: $00
    rlca                                          ; $5b7c: $07
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    rlca                                          ; $5b7f: $07
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    rlca                                          ; $5b83: $07
    rrca                                          ; $5b84: $0f
    nop                                           ; $5b85: $00
    adc a                                         ; $5b86: $8f
    add a                                         ; $5b87: $87
    add a                                         ; $5b88: $87
    adc a                                         ; $5b89: $8f
    adc a                                         ; $5b8a: $8f
    adc a                                         ; $5b8b: $8f
    rlca                                          ; $5b8c: $07
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00
    rlca                                          ; $5b8f: $07
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    nop                                           ; $5b92: $00
    rlca                                          ; $5b93: $07
    nop                                           ; $5b94: $00
    rlca                                          ; $5b95: $07
    rrca                                          ; $5b96: $0f
    rlca                                          ; $5b97: $07
    nop                                           ; $5b98: $00
    rlca                                          ; $5b99: $07
    rlca                                          ; $5b9a: $07
    nop                                           ; $5b9b: $00
    nop                                           ; $5b9c: $00
    nop                                           ; $5b9d: $00
    rlca                                          ; $5b9e: $07
    nop                                           ; $5b9f: $00
    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    ld b, a                                       ; $5ba4: $47
    rlca                                          ; $5ba5: $07
    nop                                           ; $5ba6: $00
    rlca                                          ; $5ba7: $07
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    rlca                                          ; $5baa: $07
    rrca                                          ; $5bab: $0f
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    rlca                                          ; $5bae: $07
    nop                                           ; $5baf: $00
    nop                                           ; $5bb0: $00
    adc a                                         ; $5bb1: $8f
    add a                                         ; $5bb2: $87
    add a                                         ; $5bb3: $87
    adc a                                         ; $5bb4: $8f
    adc a                                         ; $5bb5: $8f
    add a                                         ; $5bb6: $87
    nop                                           ; $5bb7: $00
    nop                                           ; $5bb8: $00
    nop                                           ; $5bb9: $00
    rlca                                          ; $5bba: $07
    ld b, a                                       ; $5bbb: $47
    rlca                                          ; $5bbc: $07
    nop                                           ; $5bbd: $00
    rlca                                          ; $5bbe: $07
    nop                                           ; $5bbf: $00
    nop                                           ; $5bc0: $00
    rlca                                          ; $5bc1: $07
    nop                                           ; $5bc2: $00
    rlca                                          ; $5bc3: $07
    rrca                                          ; $5bc4: $0f
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    rlca                                          ; $5bc7: $07
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    rlca                                          ; $5bca: $07
    rlca                                          ; $5bcb: $07
    dec c                                         ; $5bcc: $0d
    dec c                                         ; $5bcd: $0d
    ld c, $0d                                     ; $5bce: $0e $0d
    dec c                                         ; $5bd0: $0d
    dec c                                         ; $5bd1: $0d
    rlca                                          ; $5bd2: $07
    rlca                                          ; $5bd3: $07
    dec c                                         ; $5bd4: $0d
    rlca                                          ; $5bd5: $07
    dec c                                         ; $5bd6: $0d
    dec c                                         ; $5bd7: $0d
    dec c                                         ; $5bd8: $0d
    dec c                                         ; $5bd9: $0d
    ld c, $0d                                     ; $5bda: $0e $0d
    rlca                                          ; $5bdc: $07
    rlca                                          ; $5bdd: $07
    dec c                                         ; $5bde: $0d
    rlca                                          ; $5bdf: $07
    rlca                                          ; $5be0: $07
    rlca                                          ; $5be1: $07
    dec c                                         ; $5be2: $0d
    dec c                                         ; $5be3: $0d
    daa                                           ; $5be4: $27
    dec c                                         ; $5be5: $0d
    dec c                                         ; $5be6: $0d
    ld c, $0d                                     ; $5be7: $0e $0d
    rlca                                          ; $5be9: $07
    rlca                                          ; $5bea: $07
    dec c                                         ; $5beb: $0d
    dec c                                         ; $5bec: $0d
    dec c                                         ; $5bed: $0d
    adc a                                         ; $5bee: $8f
    adc a                                         ; $5bef: $8f
    add a                                         ; $5bf0: $87
    add a                                         ; $5bf1: $87
    add a                                         ; $5bf2: $87
    adc a                                         ; $5bf3: $8f
    dec c                                         ; $5bf4: $0d
    ld c, $0d                                     ; $5bf5: $0e $0d
    rlca                                          ; $5bf7: $07
    rrca                                          ; $5bf8: $0f
    dec c                                         ; $5bf9: $0d
    dec c                                         ; $5bfa: $0d
    dec c                                         ; $5bfb: $0d
    dec l                                         ; $5bfc: $2d
    rlca                                          ; $5bfd: $07
    rlca                                          ; $5bfe: $07
    dec c                                         ; $5bff: $0d
    ld c, $0d                                     ; $5c00: $0e $0d
    dec c                                         ; $5c02: $0d
    ld c, $0d                                     ; $5c03: $0e $0d
    rlca                                          ; $5c05: $07
    rlca                                          ; $5c06: $07
    dec c                                         ; $5c07: $0d
    dec l                                         ; $5c08: $2d
    daa                                           ; $5c09: $27
    dec c                                         ; $5c0a: $0d
    dec c                                         ; $5c0b: $0d
    daa                                           ; $5c0c: $27
    dec l                                         ; $5c0d: $2d
    dec c                                         ; $5c0e: $0d
    rlca                                          ; $5c0f: $07
    rrca                                          ; $5c10: $0f
    rrca                                          ; $5c11: $0f
    dec c                                         ; $5c12: $0d
    dec l                                         ; $5c13: $2d
    dec c                                         ; $5c14: $0d
    dec l                                         ; $5c15: $2d
    dec l                                         ; $5c16: $2d
    daa                                           ; $5c17: $27
    dec c                                         ; $5c18: $0d
    rlca                                          ; $5c19: $07
    rlca                                          ; $5c1a: $07
    dec c                                         ; $5c1b: $0d
    rlca                                          ; $5c1c: $07
    dec c                                         ; $5c1d: $0d
    dec c                                         ; $5c1e: $0d
    daa                                           ; $5c1f: $27
    dec l                                         ; $5c20: $2d
    dec l                                         ; $5c21: $2d
    dec c                                         ; $5c22: $0d
    rlca                                          ; $5c23: $07
    rlca                                          ; $5c24: $07
    dec l                                         ; $5c25: $2d
    adc a                                         ; $5c26: $8f
    adc a                                         ; $5c27: $8f
    add a                                         ; $5c28: $87
    add a                                         ; $5c29: $87
    adc a                                         ; $5c2a: $8f
    adc a                                         ; $5c2b: $8f
    daa                                           ; $5c2c: $27
    dec l                                         ; $5c2d: $2d
    dec l                                         ; $5c2e: $2d
    rlca                                          ; $5c2f: $07
    dec c                                         ; $5c30: $0d
    dec l                                         ; $5c31: $2d
    dec l                                         ; $5c32: $2d
    rlca                                          ; $5c33: $07
    dec l                                         ; $5c34: $2d
    ld c, $0f                                     ; $5c35: $0e $0f
    rrca                                          ; $5c37: $0f
    dec c                                         ; $5c38: $0d
    ld b, a                                       ; $5c39: $47
    rlca                                          ; $5c3a: $07
    dec c                                         ; $5c3b: $0d
    dec c                                         ; $5c3c: $0d
    dec l                                         ; $5c3d: $2d
    rlca                                          ; $5c3e: $07
    dec l                                         ; $5c3f: $2d
    dec l                                         ; $5c40: $2d
    dec c                                         ; $5c41: $0d
    dec l                                         ; $5c42: $2d
    dec c                                         ; $5c43: $0d
    rlca                                          ; $5c44: $07
    rlca                                          ; $5c45: $07
    dec c                                         ; $5c46: $0d
    rlca                                          ; $5c47: $07
    dec c                                         ; $5c48: $0d
    dec l                                         ; $5c49: $2d
    rlca                                          ; $5c4a: $07
    rlca                                          ; $5c4b: $07
    dec c                                         ; $5c4c: $0d
    dec c                                         ; $5c4d: $0d
    rlca                                          ; $5c4e: $07
    dec l                                         ; $5c4f: $2d
    dec l                                         ; $5c50: $2d
    adc a                                         ; $5c51: $8f
    adc a                                         ; $5c52: $8f
    add a                                         ; $5c53: $87
    add a                                         ; $5c54: $87
    adc a                                         ; $5c55: $8f
    adc a                                         ; $5c56: $8f
    dec c                                         ; $5c57: $0d
    dec l                                         ; $5c58: $2d
    dec l                                         ; $5c59: $2d
    ld c, $07                                     ; $5c5a: $0e $07
    rlca                                          ; $5c5c: $07
    dec c                                         ; $5c5d: $0d
    ld c, $0d                                     ; $5c5e: $0e $0d
    dec c                                         ; $5c60: $0d
    ld c, $0d                                     ; $5c61: $0e $0d
    rlca                                          ; $5c63: $07
    rlca                                          ; $5c64: $07
    dec c                                         ; $5c65: $0d
    dec l                                         ; $5c66: $2d
    daa                                           ; $5c67: $27
    dec c                                         ; $5c68: $0d
    dec c                                         ; $5c69: $0d
    daa                                           ; $5c6a: $27
    ld c, $0d                                     ; $5c6b: $0e $0d
    dec c                                         ; $5c6d: $0d
    dec c                                         ; $5c6e: $0d
    dec c                                         ; $5c6f: $0d
    dec c                                         ; $5c70: $0d
    ld c, $0f                                     ; $5c71: $0e $0f
    rrca                                          ; $5c73: $0f
    ld c, $0e                                     ; $5c74: $0e $0e
    dec c                                         ; $5c76: $0d
    dec c                                         ; $5c77: $0d
    dec c                                         ; $5c78: $0d
    dec c                                         ; $5c79: $0d
    dec c                                         ; $5c7a: $0d
    dec c                                         ; $5c7b: $0d
    ld c, $0e                                     ; $5c7c: $0e $0e
    ld c, $0f                                     ; $5c7e: $0e $0f
    rrca                                          ; $5c80: $0f
    rrca                                          ; $5c81: $0f
    ld c, $0d                                     ; $5c82: $0e $0d
    ld c, $0d                                     ; $5c84: $0e $0d
    dec c                                         ; $5c86: $0d
    ld c, $0e                                     ; $5c87: $0e $0e
    rrca                                          ; $5c89: $0f
    rrca                                          ; $5c8a: $0f
    ld c, $0d                                     ; $5c8b: $0e $0d
    dec c                                         ; $5c8d: $0d
    adc a                                         ; $5c8e: $8f
    adc a                                         ; $5c8f: $8f
    adc a                                         ; $5c90: $8f
    add a                                         ; $5c91: $87
    add a                                         ; $5c92: $87
    adc a                                         ; $5c93: $8f
    dec c                                         ; $5c94: $0d
    ld c, $0e                                     ; $5c95: $0e $0e
    rrca                                          ; $5c97: $0f
    rrca                                          ; $5c98: $0f
    ld c, $2d                                     ; $5c99: $0e $2d
    dec c                                         ; $5c9b: $0d
    ld c, $0f                                     ; $5c9c: $0e $0f
    rrca                                          ; $5c9e: $0f
    ld c, $0e                                     ; $5c9f: $0e $0e
    dec l                                         ; $5ca1: $2d
    dec c                                         ; $5ca2: $0d
    dec c                                         ; $5ca3: $0d
    ld c, $0f                                     ; $5ca4: $0e $0f
    rrca                                          ; $5ca6: $0f
    ld c, $2d                                     ; $5ca7: $0e $2d
    ld c, $0d                                     ; $5ca9: $0e $0d
    dec c                                         ; $5cab: $0d
    ld c, $2d                                     ; $5cac: $0e $2d
    ld c, $0f                                     ; $5cae: $0e $0f
    rrca                                          ; $5cb0: $0f
    rrca                                          ; $5cb1: $0f
    ld c, $2d                                     ; $5cb2: $0e $2d
    dec l                                         ; $5cb4: $2d
    dec c                                         ; $5cb5: $0d
    dec c                                         ; $5cb6: $0d
    ld c, $0d                                     ; $5cb7: $0e $0d
    ld c, $0e                                     ; $5cb9: $0e $0e
    dec c                                         ; $5cbb: $0d
    ld c, $0d                                     ; $5cbc: $0e $0d
    dec c                                         ; $5cbe: $0d
    ld c, $0d                                     ; $5cbf: $0e $0d
    dec c                                         ; $5cc1: $0d
    ld c, $0f                                     ; $5cc2: $0e $0f
    rrca                                          ; $5cc4: $0f
    ld c, $8f                                     ; $5cc5: $0e $8f
    adc a                                         ; $5cc7: $8f
    adc a                                         ; $5cc8: $8f
    add a                                         ; $5cc9: $87
    add a                                         ; $5cca: $87
    add a                                         ; $5ccb: $87
    ld l, $2d                                     ; $5ccc: $2e $2d
    dec l                                         ; $5cce: $2d
    ld c, $2d                                     ; $5ccf: $0e $2d
    dec l                                         ; $5cd1: $2d
    dec l                                         ; $5cd2: $2d
    ld c, $0e                                     ; $5cd3: $0e $0e
    ld c, $0f                                     ; $5cd5: $0e $0f
    rrca                                          ; $5cd7: $0f
    ld c, $0f                                     ; $5cd8: $0e $0f
    rrca                                          ; $5cda: $0f
    ld c, $2d                                     ; $5cdb: $0e $2d
    dec c                                         ; $5cdd: $0d
    ld c, $0d                                     ; $5cde: $0e $0d
    dec l                                         ; $5ce0: $2d
    dec l                                         ; $5ce1: $2d
    dec c                                         ; $5ce2: $0d
    ld c, $0e                                     ; $5ce3: $0e $0e
    ld c, $0e                                     ; $5ce5: $0e $0e
    ld c, $0d                                     ; $5ce7: $0e $0d
    ld c, $0f                                     ; $5ce9: $0e $0f
    rrca                                          ; $5ceb: $0f
    ld c, $2d                                     ; $5cec: $0e $2d
    ld c, $2d                                     ; $5cee: $0e $2d
    dec l                                         ; $5cf0: $2d
    adc a                                         ; $5cf1: $8f
    adc a                                         ; $5cf2: $8f
    adc a                                         ; $5cf3: $8f
    add a                                         ; $5cf4: $87
    add a                                         ; $5cf5: $87
    add a                                         ; $5cf6: $87
    dec l                                         ; $5cf7: $2d
    dec l                                         ; $5cf8: $2d
    dec l                                         ; $5cf9: $2d
    ld c, $0f                                     ; $5cfa: $0e $0f
    rrca                                          ; $5cfc: $0f
    ld c, $0e                                     ; $5cfd: $0e $0e
    dec l                                         ; $5cff: $2d
    dec c                                         ; $5d00: $0d
    dec c                                         ; $5d01: $0d
    ld c, $0f                                     ; $5d02: $0e $0f
    rrca                                          ; $5d04: $0f
    ld c, $2d                                     ; $5d05: $0e $2d
    ld c, $0d                                     ; $5d07: $0e $0d
    dec c                                         ; $5d09: $0d
    ld c, $0d                                     ; $5d0a: $0e $0d
    dec c                                         ; $5d0c: $0d
    dec c                                         ; $5d0d: $0d
    dec c                                         ; $5d0e: $0d
    dec c                                         ; $5d0f: $0d
    dec c                                         ; $5d10: $0d
    ld c, $0e                                     ; $5d11: $0e $0e
    ld c, $0e                                     ; $5d13: $0e $0e
    dec l                                         ; $5d15: $2d
    dec c                                         ; $5d16: $0d
    dec c                                         ; $5d17: $0d
    dec c                                         ; $5d18: $0d
    dec c                                         ; $5d19: $0d
    dec c                                         ; $5d1a: $0d
    dec c                                         ; $5d1b: $0d
    dec c                                         ; $5d1c: $0d
    dec c                                         ; $5d1d: $0d
    ld c, $2e                                     ; $5d1e: $0e $2e
    rrca                                          ; $5d20: $0f
    ld c, $0e                                     ; $5d21: $0e $0e
    dec c                                         ; $5d23: $0d
    dec c                                         ; $5d24: $0d
    dec c                                         ; $5d25: $0d
    dec c                                         ; $5d26: $0d
    dec c                                         ; $5d27: $0d
    ld c, $0e                                     ; $5d28: $0e $0e
    ld c, $0e                                     ; $5d2a: $0e $0e
    dec c                                         ; $5d2c: $0d
    dec c                                         ; $5d2d: $0d
    rrca                                          ; $5d2e: $0f
    rrca                                          ; $5d2f: $0f
    rlca                                          ; $5d30: $07
    rlca                                          ; $5d31: $07
    rlca                                          ; $5d32: $07
    rrca                                          ; $5d33: $0f
    dec c                                         ; $5d34: $0d
    dec c                                         ; $5d35: $0d
    ld c, $0e                                     ; $5d36: $0e $0e
    ld c, $0e                                     ; $5d38: $0e $0e
    dec c                                         ; $5d3a: $0d
    dec c                                         ; $5d3b: $0d
    ld c, $0e                                     ; $5d3c: $0e $0e
    ld c, $0e                                     ; $5d3e: $0e $0e
    dec c                                         ; $5d40: $0d
    dec c                                         ; $5d41: $0d
    dec c                                         ; $5d42: $0d
    dec c                                         ; $5d43: $0d
    ld c, $0e                                     ; $5d44: $0e $0e
    ld c, $0e                                     ; $5d46: $0e $0e
    dec l                                         ; $5d48: $2d
    dec c                                         ; $5d49: $0d
    dec c                                         ; $5d4a: $0d
    dec c                                         ; $5d4b: $0d
    dec c                                         ; $5d4c: $0d
    dec l                                         ; $5d4d: $2d
    ld c, $2e                                     ; $5d4e: $0e $2e
    rrca                                          ; $5d50: $0f
    rrca                                          ; $5d51: $0f
    ld c, $2d                                     ; $5d52: $0e $2d
    dec l                                         ; $5d54: $2d
    dec l                                         ; $5d55: $2d
    dec l                                         ; $5d56: $2d
    dec l                                         ; $5d57: $2d
    dec c                                         ; $5d58: $0d
    dec c                                         ; $5d59: $0d
    dec c                                         ; $5d5a: $0d
    dec c                                         ; $5d5b: $0d
    dec c                                         ; $5d5c: $0d
    dec c                                         ; $5d5d: $0d
    dec c                                         ; $5d5e: $0d
    dec c                                         ; $5d5f: $0d
    dec l                                         ; $5d60: $2d
    dec l                                         ; $5d61: $2d
    ld c, $0e                                     ; $5d62: $0e $0e
    ld c, $0e                                     ; $5d64: $0e $0e
    rrca                                          ; $5d66: $0f
    rrca                                          ; $5d67: $0f
    rrca                                          ; $5d68: $0f
    rrca                                          ; $5d69: $0f
    rrca                                          ; $5d6a: $0f
    rrca                                          ; $5d6b: $0f
    dec c                                         ; $5d6c: $0d
    dec l                                         ; $5d6d: $2d
    dec l                                         ; $5d6e: $2d
    dec l                                         ; $5d6f: $2d
    dec l                                         ; $5d70: $2d
    dec l                                         ; $5d71: $2d
    dec l                                         ; $5d72: $2d
    dec l                                         ; $5d73: $2d
    ld c, $2e                                     ; $5d74: $0e $2e
    rrca                                          ; $5d76: $0f
    ld c, $0e                                     ; $5d77: $0e $0e
    ld c, $0e                                     ; $5d79: $0e $0e
    ld c, $2d                                     ; $5d7b: $0e $2d
    dec l                                         ; $5d7d: $2d
    dec l                                         ; $5d7e: $2d
    dec l                                         ; $5d7f: $2d
    dec l                                         ; $5d80: $2d
    dec l                                         ; $5d81: $2d
    dec l                                         ; $5d82: $2d
    dec c                                         ; $5d83: $0d
    dec c                                         ; $5d84: $0d
    dec c                                         ; $5d85: $0d
    dec c                                         ; $5d86: $0d
    dec l                                         ; $5d87: $2d
    dec l                                         ; $5d88: $2d
    ld c, $0e                                     ; $5d89: $0e $0e
    ld c, $0e                                     ; $5d8b: $0e $0e
    dec c                                         ; $5d8d: $0d
    dec c                                         ; $5d8e: $0d
    dec l                                         ; $5d8f: $2d
    dec l                                         ; $5d90: $2d
    rrca                                          ; $5d91: $0f
    rrca                                          ; $5d92: $0f
    rrca                                          ; $5d93: $0f
    rrca                                          ; $5d94: $0f
    rrca                                          ; $5d95: $0f
    rrca                                          ; $5d96: $0f
    dec l                                         ; $5d97: $2d
    dec l                                         ; $5d98: $2d
    dec c                                         ; $5d99: $0d
    ld l, [hl]                                    ; $5d9a: $6e
    ld c, $0e                                     ; $5d9b: $0e $0e
    ld c, $0d                                     ; $5d9d: $0e $0d
    dec c                                         ; $5d9f: $0d
    dec c                                         ; $5da0: $0d
    dec c                                         ; $5da1: $0d
    ld c, $0e                                     ; $5da2: $0e $0e
    ld c, $0e                                     ; $5da4: $0e $0e
    dec l                                         ; $5da6: $2d
    dec c                                         ; $5da7: $0d
    dec c                                         ; $5da8: $0d
    dec c                                         ; $5da9: $0d
    dec c                                         ; $5daa: $0d
    ld [bc], a                                    ; $5dab: $02
    ld [bc], a                                    ; $5dac: $02
    ld [bc], a                                    ; $5dad: $02
    ld [bc], a                                    ; $5dae: $02
    ld [bc], a                                    ; $5daf: $02
    ld [bc], a                                    ; $5db0: $02
    ld [bc], a                                    ; $5db1: $02
    ld [bc], a                                    ; $5db2: $02
    ld [bc], a                                    ; $5db3: $02
    ld [bc], a                                    ; $5db4: $02
    ld [bc], a                                    ; $5db5: $02
    ld [bc], a                                    ; $5db6: $02
    ld [bc], a                                    ; $5db7: $02
    ld [bc], a                                    ; $5db8: $02
    ld [bc], a                                    ; $5db9: $02
    ld [bc], a                                    ; $5dba: $02
    ld [bc], a                                    ; $5dbb: $02
    ld [bc], a                                    ; $5dbc: $02
    ld [bc], a                                    ; $5dbd: $02
    ld [bc], a                                    ; $5dbe: $02
    ld [bc], a                                    ; $5dbf: $02
    ld [bc], a                                    ; $5dc0: $02
    ld [bc], a                                    ; $5dc1: $02
    ld [bc], a                                    ; $5dc2: $02
    ld [bc], a                                    ; $5dc3: $02
    ld [bc], a                                    ; $5dc4: $02
    ld [bc], a                                    ; $5dc5: $02
    ld [bc], a                                    ; $5dc6: $02
    ld [bc], a                                    ; $5dc7: $02
    ld [bc], a                                    ; $5dc8: $02
    ld [bc], a                                    ; $5dc9: $02
    ld [bc], a                                    ; $5dca: $02
    ld [bc], a                                    ; $5dcb: $02
    ld [bc], a                                    ; $5dcc: $02
    ld [bc], a                                    ; $5dcd: $02
    ld [bc], a                                    ; $5dce: $02
    ld [bc], a                                    ; $5dcf: $02
    ld [bc], a                                    ; $5dd0: $02
    ld [bc], a                                    ; $5dd1: $02
    ld [bc], a                                    ; $5dd2: $02
    ld [bc], a                                    ; $5dd3: $02
    ld [bc], a                                    ; $5dd4: $02
    ld [bc], a                                    ; $5dd5: $02
    ld [bc], a                                    ; $5dd6: $02
    ld [bc], a                                    ; $5dd7: $02
    ld [bc], a                                    ; $5dd8: $02
    ld [bc], a                                    ; $5dd9: $02
    ld [bc], a                                    ; $5dda: $02
    ld [bc], a                                    ; $5ddb: $02
    ld [bc], a                                    ; $5ddc: $02
    ld [bc], a                                    ; $5ddd: $02
    ld [bc], a                                    ; $5dde: $02
    ld [bc], a                                    ; $5ddf: $02
    ld [bc], a                                    ; $5de0: $02
    ld [bc], a                                    ; $5de1: $02
    ld [bc], a                                    ; $5de2: $02
    ld [bc], a                                    ; $5de3: $02
    ld [bc], a                                    ; $5de4: $02
    ld [bc], a                                    ; $5de5: $02
    ld [bc], a                                    ; $5de6: $02
    ld [bc], a                                    ; $5de7: $02
    ld [bc], a                                    ; $5de8: $02
    ld [bc], a                                    ; $5de9: $02
    ld [bc], a                                    ; $5dea: $02
    ld [bc], a                                    ; $5deb: $02
    ld [bc], a                                    ; $5dec: $02
    ld [bc], a                                    ; $5ded: $02
    ld [bc], a                                    ; $5dee: $02
    ld [bc], a                                    ; $5def: $02
    ld [bc], a                                    ; $5df0: $02
    ld [bc], a                                    ; $5df1: $02
    ld [bc], a                                    ; $5df2: $02
    ld [bc], a                                    ; $5df3: $02
    ld [bc], a                                    ; $5df4: $02
    ld [bc], a                                    ; $5df5: $02
    ld [bc], a                                    ; $5df6: $02
    ld [bc], a                                    ; $5df7: $02
    ld [bc], a                                    ; $5df8: $02
    ld [bc], a                                    ; $5df9: $02
    ld [bc], a                                    ; $5dfa: $02
    ld [bc], a                                    ; $5dfb: $02
    ld [bc], a                                    ; $5dfc: $02
    ld [bc], a                                    ; $5dfd: $02
    ld [bc], a                                    ; $5dfe: $02
    ld [bc], a                                    ; $5dff: $02
    ld [bc], a                                    ; $5e00: $02
    ld [bc], a                                    ; $5e01: $02
    ld [bc], a                                    ; $5e02: $02
    ld [bc], a                                    ; $5e03: $02
    ld [bc], a                                    ; $5e04: $02
    ld [bc], a                                    ; $5e05: $02
    ld [bc], a                                    ; $5e06: $02
    ld [bc], a                                    ; $5e07: $02
    ld [bc], a                                    ; $5e08: $02
    ld [bc], a                                    ; $5e09: $02
    ld [bc], a                                    ; $5e0a: $02
    ld [bc], a                                    ; $5e0b: $02
    ld [bc], a                                    ; $5e0c: $02
    ld [bc], a                                    ; $5e0d: $02
    ld [bc], a                                    ; $5e0e: $02
    ld [bc], a                                    ; $5e0f: $02
    ld [bc], a                                    ; $5e10: $02
    ld [bc], a                                    ; $5e11: $02
    ld [bc], a                                    ; $5e12: $02
    ld [bc], a                                    ; $5e13: $02
    ld [bc], a                                    ; $5e14: $02
    ld [bc], a                                    ; $5e15: $02
    ld [bc], a                                    ; $5e16: $02
    ld [bc], a                                    ; $5e17: $02
    ld [bc], a                                    ; $5e18: $02
    ld [bc], a                                    ; $5e19: $02
    ld [bc], a                                    ; $5e1a: $02
    ld [bc], a                                    ; $5e1b: $02
    ld [bc], a                                    ; $5e1c: $02
    ld [bc], a                                    ; $5e1d: $02
    ld [bc], a                                    ; $5e1e: $02
    ld [bc], a                                    ; $5e1f: $02
    ld [bc], a                                    ; $5e20: $02
    ld [bc], a                                    ; $5e21: $02
    ld [bc], a                                    ; $5e22: $02
    ld [bc], a                                    ; $5e23: $02
    ld [bc], a                                    ; $5e24: $02
    ld [bc], a                                    ; $5e25: $02
    ld [bc], a                                    ; $5e26: $02
    ld [bc], a                                    ; $5e27: $02
    ld [bc], a                                    ; $5e28: $02
    ld [bc], a                                    ; $5e29: $02
    ld [bc], a                                    ; $5e2a: $02
    ld [bc], a                                    ; $5e2b: $02
    ld [bc], a                                    ; $5e2c: $02
    ld [bc], a                                    ; $5e2d: $02
    ld [bc], a                                    ; $5e2e: $02
    ld [bc], a                                    ; $5e2f: $02
    ld [bc], a                                    ; $5e30: $02
    ld [bc], a                                    ; $5e31: $02
    ld [bc], a                                    ; $5e32: $02
    ld [bc], a                                    ; $5e33: $02
    ld [bc], a                                    ; $5e34: $02
    ld [bc], a                                    ; $5e35: $02
    ld [bc], a                                    ; $5e36: $02
    ld [bc], a                                    ; $5e37: $02
    ld [bc], a                                    ; $5e38: $02
    ld [bc], a                                    ; $5e39: $02
    ld [bc], a                                    ; $5e3a: $02
    ld [bc], a                                    ; $5e3b: $02
    ld [bc], a                                    ; $5e3c: $02
    ld [bc], a                                    ; $5e3d: $02
    ld [bc], a                                    ; $5e3e: $02
    ld [bc], a                                    ; $5e3f: $02
    ld [bc], a                                    ; $5e40: $02
    ld [bc], a                                    ; $5e41: $02
    ld [bc], a                                    ; $5e42: $02
    ld [bc], a                                    ; $5e43: $02
    ld [bc], a                                    ; $5e44: $02
    ld [bc], a                                    ; $5e45: $02
    ld [bc], a                                    ; $5e46: $02
    ld [bc], a                                    ; $5e47: $02
    ld [bc], a                                    ; $5e48: $02
    ld [bc], a                                    ; $5e49: $02
    ld [bc], a                                    ; $5e4a: $02
    jr nz, jr_0c1_5e4d                            ; $5e4b: $20 $00

jr_0c1_5e4d:
    ld [de], a                                    ; $5e4d: $12
    nop                                           ; $5e4e: $00
    dec sp                                        ; $5e4f: $3b
    ld [bc], a                                    ; $5e50: $02
    nop                                           ; $5e51: $00
    sbc h                                         ; $5e52: $9c
    sbc l                                         ; $5e53: $9d
    sbc [hl]                                      ; $5e54: $9e
    sbc a                                         ; $5e55: $9f
    and b                                         ; $5e56: $a0
    and c                                         ; $5e57: $a1
    and d                                         ; $5e58: $a2
    and e                                         ; $5e59: $a3
    db $10                                        ; $5e5a: $10
    and h                                         ; $5e5b: $a4
    and l                                         ; $5e5c: $a5
    and [hl]                                      ; $5e5d: $a6
    ld a, [bc]                                    ; $5e5e: $0a
    nop                                           ; $5e5f: $00
    and c                                         ; $5e60: $a1
    and a                                         ; $5e61: $a7
    xor b                                         ; $5e62: $a8
    xor c                                         ; $5e63: $a9
    nop                                           ; $5e64: $00
    xor d                                         ; $5e65: $aa
    sbc l                                         ; $5e66: $9d
    xor e                                         ; $5e67: $ab
    xor h                                         ; $5e68: $ac
    xor l                                         ; $5e69: $ad
    sbc l                                         ; $5e6a: $9d
    sbc [hl]                                      ; $5e6b: $9e
    and c                                         ; $5e6c: $a1
    ret nz                                        ; $5e6d: $c0

    add hl, de                                    ; $5e6e: $19
    nop                                           ; $5e6f: $00
    dec c                                         ; $5e70: $0d
    nop                                           ; $5e71: $00
    cp b                                          ; $5e72: $b8
    cp c                                          ; $5e73: $b9
    cp d                                          ; $5e74: $ba
    cp e                                          ; $5e75: $bb
    cp c                                          ; $5e76: $b9
    cp h                                          ; $5e77: $bc
    nop                                           ; $5e78: $00
    cp l                                          ; $5e79: $bd
    cp [hl]                                       ; $5e7a: $be
    cp a                                          ; $5e7b: $bf
    ret nz                                        ; $5e7c: $c0

    pop bc                                        ; $5e7d: $c1
    cp c                                          ; $5e7e: $b9
    cp d                                          ; $5e7f: $ba
    jp nz, $b900                                  ; $5e80: $c2 $00 $b9

    pop bc                                        ; $5e83: $c1
    cp c                                          ; $5e84: $b9
    xor e                                         ; $5e85: $ab
    jp $aebc                                      ; $5e86: $c3 $bc $ae


    call nz, $c528                                ; $5e89: $c4 $28 $c5
    cp h                                          ; $5e8c: $bc
    ld a, [bc]                                    ; $5e8d: $0a
    nop                                           ; $5e8e: $00
    cp d                                          ; $5e8f: $ba
    dec c                                         ; $5e90: $0d
    ld [$80d4], sp                                ; $5e91: $08 $d4 $80
    add b                                         ; $5e94: $80
    nop                                           ; $5e95: $00
    push de                                       ; $5e96: $d5
    add b                                         ; $5e97: $80
    add b                                         ; $5e98: $80
    add b                                         ; $5e99: $80
    sub $d7                                       ; $5e9a: $d6 $d7
    add b                                         ; $5e9c: $80
    ret c                                         ; $5e9d: $d8

    ret nz                                        ; $5e9e: $c0

    rlca                                          ; $5e9f: $07
    nop                                           ; $5ea0: $00
    dec b                                         ; $5ea1: $05
    nop                                           ; $5ea2: $00
    reti                                          ; $5ea3: $d9


    jp c, $db80                                   ; $5ea4: $da $80 $db

    call c, $c0dd                                 ; $5ea7: $dc $dd $c0
    ld a, [bc]                                    ; $5eaa: $0a
    ld [$0012], sp                                ; $5eab: $08 $12 $00
    sub $de                                       ; $5eae: $d6 $de
    db $ed                                        ; $5eb0: $ed
    add c                                         ; $5eb1: $81
    add c                                         ; $5eb2: $81
    xor $04                                       ; $5eb3: $ee $04
    add c                                         ; $5eb5: $81
    add c                                         ; $5eb6: $81
    add c                                         ; $5eb7: $81
    rst $28                                       ; $5eb8: $ef
    ldh a, [rTAC]                                 ; $5eb9: $f0 $07
    db $10                                        ; $5ebb: $10
    add c                                         ; $5ebc: $81
    ld [$0a88], a                                 ; $5ebd: $ea $88 $0a
    ld [$f1df], sp                                ; $5ec0: $08 $df $f1
    adc $0a                                       ; $5ec3: $ce $0a
    ld [$f281], sp                                ; $5ec5: $08 $81 $f2
    add c                                         ; $5ec8: $81
    nop                                           ; $5ec9: $00
    rst $28                                       ; $5eca: $ef
    di                                            ; $5ecb: $f3
    ld bc, $8282                                  ; $5ecc: $01 $82 $82
    ld [bc], a                                    ; $5ecf: $02
    add d                                         ; $5ed0: $82
    add d                                         ; $5ed1: $82
    db $10                                        ; $5ed2: $10
    add d                                         ; $5ed3: $82
    inc bc                                        ; $5ed4: $03
    inc b                                         ; $5ed5: $04
    rlca                                          ; $5ed6: $07
    db $10                                        ; $5ed7: $10
    add d                                         ; $5ed8: $82
    xor $82                                       ; $5ed9: $ee $82
    inc bc                                        ; $5edb: $03
    ld b, $05                                     ; $5edc: $06 $05
    add d                                         ; $5ede: $82
    xor [hl]                                      ; $5edf: $ae
    ld b, $d3                                     ; $5ee0: $06 $d3
    ld a, [bc]                                    ; $5ee2: $0a
    ld [$0019], sp                                ; $5ee3: $08 $19 $00
    inc bc                                        ; $5ee6: $03
    nop                                           ; $5ee7: $00
    rlca                                          ; $5ee8: $07
    xor $83                                       ; $5ee9: $ee $83
    add e                                         ; $5eeb: $83
    ld d, $83                                     ; $5eec: $16 $83
    add e                                         ; $5eee: $83
    add e                                         ; $5eef: $83
    ld [$1817], sp                                ; $5ef0: $08 $17 $18
    add e                                         ; $5ef3: $83
    add hl, de                                    ; $5ef4: $19
    rlca                                          ; $5ef5: $07
    nop                                           ; $5ef6: $00
    add e                                         ; $5ef7: $83
    inc d                                         ; $5ef8: $14
    add e                                         ; $5ef9: $83
    ld [bc], a                                    ; $5efa: $02
    rla                                           ; $5efb: $17
    ld a, [de]                                    ; $5efc: $1a
    add e                                         ; $5efd: $83
    db $db                                        ; $5efe: $db
    dec de                                        ; $5eff: $1b
    db $ec                                        ; $5f00: $ec
    ld a, [bc]                                    ; $5f01: $0a
    ld [$0083], sp                                ; $5f02: $08 $83 $00
    inc e                                         ; $5f05: $1c
    add e                                         ; $5f06: $83
    rla                                           ; $5f07: $17
    dec e                                         ; $5f08: $1d
    ld [bc], a                                    ; $5f09: $02
    add l                                         ; $5f0a: $85
    add [hl]                                      ; $5f0b: $86
    ld a, [hl+]                                   ; $5f0c: $2a
    nop                                           ; $5f0d: $00
    add h                                         ; $5f0e: $84
    add l                                         ; $5f0f: $85
    add [hl]                                      ; $5f10: $86
    ld a, [$852b]                                 ; $5f11: $fa $2b $85
    ld a, [hl+]                                   ; $5f14: $2a
    add a                                         ; $5f15: $87
    add b                                         ; $5f16: $80
    ld [$1c00], sp                                ; $5f17: $08 $00 $1c
    add h                                         ; $5f1a: $84
    ld a, [$872b]                                 ; $5f1b: $fa $2b $87
    rst $18                                       ; $5f1e: $df
    inc l                                         ; $5f1f: $2c
    nop                                           ; $5f20: $00
    dec l                                         ; $5f21: $2d
    add a                                         ; $5f22: $87
    add h                                         ; $5f23: $84
    inc e                                         ; $5f24: $1c
    add [hl]                                      ; $5f25: $86
    add a                                         ; $5f26: $87
    ld l, $85                                     ; $5f27: $2e $85
    nop                                           ; $5f29: $00
    ld a, [$192f]                                 ; $5f2a: $fa $2f $19
    adc c                                         ; $5f2d: $89
    adc d                                         ; $5f2e: $8a
    xor $88                                       ; $5f2f: $ee $88
    adc c                                         ; $5f31: $89
    ld [bc], a                                    ; $5f32: $02
    adc d                                         ; $5f33: $8a
    rst $28                                       ; $5f34: $ef
    di                                            ; $5f35: $f3
    adc c                                         ; $5f36: $89
    ld bc, $088b                                  ; $5f37: $01 $8b $08
    nop                                           ; $5f3a: $00
    ld a, [hl+]                                   ; $5f3b: $2a
    nop                                           ; $5f3c: $00
    adc b                                         ; $5f3d: $88
    rst $28                                       ; $5f3e: $ef
    di                                            ; $5f3f: $f3
    adc e                                         ; $5f40: $8b
    pop de                                        ; $5f41: $d1
    dec a                                         ; $5f42: $3d
    push bc                                       ; $5f43: $c5
    adc e                                         ; $5f44: $8b
    nop                                           ; $5f45: $00
    adc b                                         ; $5f46: $88
    ld a, [hl+]                                   ; $5f47: $2a
    adc d                                         ; $5f48: $8a
    adc e                                         ; $5f49: $8b
    xor $89                                       ; $5f4a: $ee $89
    rst $28                                       ; $5f4c: $ef
    ld a, $00                                     ; $5f4d: $3e $00
    ld b, a                                       ; $5f4f: $47
    adc l                                         ; $5f50: $8d
    adc [hl]                                      ; $5f51: $8e
    ld [bc], a                                    ; $5f52: $02
    adc h                                         ; $5f53: $8c
    adc l                                         ; $5f54: $8d
    adc [hl]                                      ; $5f55: $8e
    ld a, [$4808]                                 ; $5f56: $fa $08 $48
    adc l                                         ; $5f59: $8d
    xor $8f                                       ; $5f5a: $ee $8f
    ld [$ee00], sp                                ; $5f5c: $08 $00 $ee
    adc h                                         ; $5f5f: $8c
    ld a, [$4800]                                 ; $5f60: $fa $00 $48
    adc a                                         ; $5f63: $8f
    rst $18                                       ; $5f64: $df
    call $8f49                                    ; $5f65: $cd $49 $8f
    adc h                                         ; $5f68: $8c
    xor $00                                       ; $5f69: $ee $00
    adc [hl]                                      ; $5f6b: $8e
    adc a                                         ; $5f6c: $8f
    ld [bc], a                                    ; $5f6d: $02
    adc l                                         ; $5f6e: $8d
    ld a, [$0135]                                 ; $5f6f: $fa $35 $01
    sub c                                         ; $5f72: $91
    nop                                           ; $5f73: $00
    sub d                                         ; $5f74: $92
    ld d, $90                                     ; $5f75: $16 $90
    sub c                                         ; $5f77: $91

Call_0c1_5f78:
    sub d                                         ; $5f78: $92
    rst $28                                       ; $5f79: $ef
    ld d, h                                       ; $5f7a: $54
    sub c                                         ; $5f7b: $91
    jr nz, jr_0c1_5f7f                            ; $5f7c: $20 $01

    sub e                                         ; $5f7e: $93

jr_0c1_5f7f:
    ld [$5200], sp                                ; $5f7f: $08 $00 $52
    sub b                                         ; $5f82: $90
    rst $28                                       ; $5f83: $ef
    ld d, h                                       ; $5f84: $54
    sub e                                         ; $5f85: $93
    nop                                           ; $5f86: $00
    pop de                                        ; $5f87: $d1
    ld d, l                                       ; $5f88: $55
    push bc                                       ; $5f89: $c5
    sub e                                         ; $5f8a: $93
    sub b                                         ; $5f8b: $90
    ld d, d                                       ; $5f8c: $52
    sub d                                         ; $5f8d: $92
    sub e                                         ; $5f8e: $93
    nop                                           ; $5f8f: $00
    add hl, de                                    ; $5f90: $19
    sub c                                         ; $5f91: $91
    rst $28                                       ; $5f92: $ef
    inc h                                         ; $5f93: $24
    xor $94                                       ; $5f94: $ee $94
    sub l                                         ; $5f96: $95
    ld d, $02                                     ; $5f97: $16 $02
    sub l                                         ; $5f99: $95
    sub h                                         ; $5f9a: $94
    sub l                                         ; $5f9b: $95
    inc c                                         ; $5f9c: $0c
    ld h, c                                       ; $5f9d: $61
    sub h                                         ; $5f9e: $94
    ld a, [bc]                                    ; $5f9f: $0a
    nop                                           ; $5fa0: $00
    sub h                                         ; $5fa1: $94
    nop                                           ; $5fa2: $00
    sub l                                         ; $5fa3: $95
    ld a, [c]                                     ; $5fa4: $f2
    sub l                                         ; $5fa5: $95
    inc c                                         ; $5fa6: $0c
    dec c                                         ; $5fa7: $0d
    sub h                                         ; $5fa8: $94
    rst $18                                       ; $5fa9: $df
    ld h, d                                       ; $5faa: $62
    ld b, b                                       ; $5fab: $40
    rrca                                          ; $5fac: $0f
    ld a, [bc]                                    ; $5fad: $0a
    ld [$1c94], sp                                ; $5fae: $08 $94 $1c
    sub h                                         ; $5fb1: $94
    inc c                                         ; $5fb2: $0c
    dec c                                         ; $5fb3: $0d
    ld l, l                                       ; $5fb4: $6d
    nop                                           ; $5fb5: $00
    sub [hl]                                      ; $5fb6: $96
    sub a                                         ; $5fb7: $97
    ld [bc], a                                    ; $5fb8: $02
    sub a                                         ; $5fb9: $97
    sub [hl]                                      ; $5fba: $96
    sub a                                         ; $5fbb: $97
    rst $28                                       ; $5fbc: $ef
    ld l, [hl]                                    ; $5fbd: $6e
    inc d                                         ; $5fbe: $14
    sub [hl]                                      ; $5fbf: $96
    ld [bc], a                                    ; $5fc0: $02
    sub [hl]                                      ; $5fc1: $96
    ld [$0200], sp                                ; $5fc2: $08 $00 $02
    ld a, [bc]                                    ; $5fc5: $0a
    ld [$6f39], sp                                ; $5fc6: $08 $39 $6f
    ld b, b                                       ; $5fc9: $40
    ld [hl], b                                    ; $5fca: $70
    ld d, $10                                     ; $5fcb: $16 $10
    ld [bc], a                                    ; $5fcd: $02
    sub [hl]                                      ; $5fce: $96
    rst $28                                       ; $5fcf: $ef
    ld h, [hl]                                    ; $5fd0: $66
    xor $98                                       ; $5fd1: $ee $98
    nop                                           ; $5fd3: $00
    sbc c                                         ; $5fd4: $99
    ld d, $99                                     ; $5fd5: $16 $99
    sbc b                                         ; $5fd7: $98
    sbc c                                         ; $5fd8: $99
    ld a, [$9879]                                 ; $5fd9: $fa $79 $98
    jr z, jr_0c1_5fdf                             ; $5fdc: $28 $01

    sbc b                                         ; $5fde: $98

jr_0c1_5fdf:
    ld [$0100], sp                                ; $5fdf: $08 $00 $01
    ld a, [bc]                                    ; $5fe2: $0a
    ld [$7aae], sp                                ; $5fe3: $08 $ae $7a
    db $d3                                        ; $5fe6: $d3
    add b                                         ; $5fe7: $80
    ld a, [bc]                                    ; $5fe8: $0a
    ld [$1c98], sp                                ; $5fe9: $08 $98 $1c
    sbc b                                         ; $5fec: $98
    ld a, [$027b]                                 ; $5fed: $fa $7b $02
    sbc d                                         ; $5ff0: $9a
    nop                                           ; $5ff1: $00
    sbc e                                         ; $5ff2: $9b
    ld [bc], a                                    ; $5ff3: $02
    sbc e                                         ; $5ff4: $9b
    sbc d                                         ; $5ff5: $9a
    sbc e                                         ; $5ff6: $9b
    rst $28                                       ; $5ff7: $ef
    add d                                         ; $5ff8: $82
    sbc d                                         ; $5ff9: $9a
    adc b                                         ; $5ffa: $88
    ld a, [bc]                                    ; $5ffb: $0a
    nop                                           ; $5ffc: $00
    sbc d                                         ; $5ffd: $9a
    sbc e                                         ; $5ffe: $9b
    inc d                                         ; $5fff: $14
    ld a, [bc]                                    ; $6000: $0a
    ld [$83db], sp                                ; $6001: $08 $db $83
    add h                                         ; $6004: $84
    pop bc                                        ; $6005: $c1
    ld a, [bc]                                    ; $6006: $0a
    ld [$0012], sp                                ; $6007: $08 $12 $00
    rst $28                                       ; $600a: $ef
    add l                                         ; $600b: $85
    ld d, $8e                                     ; $600c: $16 $8e
    adc a                                         ; $600e: $8f
    sbc a                                         ; $600f: $9f
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    sub e                                         ; $6012: $93
    inc bc                                        ; $6013: $03
    ld l, h                                       ; $6014: $6c
    sub h                                         ; $6015: $94
    add hl, de                                    ; $6016: $19
    sub l                                         ; $6017: $95
    sub [hl]                                      ; $6018: $96
    sub a                                         ; $6019: $97
    nop                                           ; $601a: $00
    sbc b                                         ; $601b: $98
    sub b                                         ; $601c: $90
    sbc c                                         ; $601d: $99
    ld a, [$9a6e]                                 ; $601e: $fa $6e $9a
    rst $18                                       ; $6021: $df
    call $2d00                                    ; $6022: $cd $00 $2d
    sbc e                                         ; $6025: $9b
    sbc h                                         ; $6026: $9c
    add hl, de                                    ; $6027: $19
    sub [hl]                                      ; $6028: $96
    sub a                                         ; $6029: $97
    sbc l                                         ; $602a: $9d
    sub e                                         ; $602b: $93
    ld [$6efa], sp                                ; $602c: $08 $fa $6e
    and d                                         ; $602f: $a2
    xor d                                         ; $6030: $aa
    adc $01                                       ; $6031: $ce $01
    xor [hl]                                      ; $6033: $ae
    xor a                                         ; $6034: $af
    or b                                          ; $6035: $b0
    nop                                           ; $6036: $00
    or c                                          ; $6037: $b1
    or d                                          ; $6038: $b2
    and d                                         ; $6039: $a2
    or e                                          ; $603a: $b3
    or h                                          ; $603b: $b4
    or l                                          ; $603c: $b5
    or [hl]                                       ; $603d: $b6
    or a                                          ; $603e: $b7
    xor b                                         ; $603f: $a8
    ret nc                                        ; $6040: $d0

    add hl, bc                                    ; $6041: $09
    or b                                          ; $6042: $b0
    ret nc                                        ; $6043: $d0

    add hl, bc                                    ; $6044: $09
    and d                                         ; $6045: $a2
    ld c, $00                                     ; $6046: $0e $00
    ret nz                                        ; $6048: $c0

    pop bc                                        ; $6049: $c1
    jp nz, $cf00                                  ; $604a: $c2 $00 $cf

    ret nc                                        ; $604d: $d0

    pop de                                        ; $604e: $d1
    jp nc, $d4d3                                  ; $604f: $d2 $d3 $d4

    push de                                       ; $6052: $d5
    sub $00                                       ; $6053: $d6 $00
    rst $10                                       ; $6055: $d7
    ret c                                         ; $6056: $d8

    ret nc                                        ; $6057: $d0

    reti                                          ; $6058: $d9


    jp c, $dcdb                                   ; $6059: $da $db $dc

    pop de                                        ; $605c: $d1
    nop                                           ; $605d: $00
    ret nc                                        ; $605e: $d0

    db $dd                                        ; $605f: $dd
    sbc $df                                       ; $6060: $de $df
    rst $10                                       ; $6062: $d7
    ldh [$d7], a                                  ; $6063: $e0 $d7
    pop hl                                        ; $6065: $e1
    ld b, [hl]                                    ; $6066: $46
    ld [c], a                                     ; $6067: $e2
    ld c, $08                                     ; $6068: $0e $08
    db $e3                                        ; $606a: $e3
    db $e4                                        ; $606b: $e4
    push hl                                       ; $606c: $e5
    ld [hl], l                                    ; $606d: $75
    add hl, bc                                    ; $606e: $09
    inc b                                         ; $606f: $04
    ret z                                         ; $6070: $c8

    inc b                                         ; $6071: $04
    add a                                         ; $6072: $87
    ld bc, $0678                                  ; $6073: $01 $78 $06
    ld b, $07                                     ; $6076: $06 $07
    rlca                                          ; $6078: $07
    dec c                                         ; $6079: $0d
    jr c, jr_0c1_607f                             ; $607a: $38 $03

    db $10                                        ; $607c: $10
    inc d                                         ; $607d: $14
    nop                                           ; $607e: $00

jr_0c1_607f:
    xor $07                                       ; $607f: $ee $07
    db $10                                        ; $6081: $10
    rrca                                          ; $6082: $0f
    nop                                           ; $6083: $00
    ld a, [bc]                                    ; $6084: $0a
    nop                                           ; $6085: $00
    rlca                                          ; $6086: $07
    jr nz, jr_0c1_6091                            ; $6087: $20 $08

    add hl, de                                    ; $6089: $19
    db $10                                        ; $608a: $10
    dec hl                                        ; $608b: $2b
    nop                                           ; $608c: $00
    ld [bc], a                                    ; $608d: $02
    ld b, a                                       ; $608e: $47
    ld [bc], a                                    ; $608f: $02
    inc bc                                        ; $6090: $03

jr_0c1_6091:
    nop                                           ; $6091: $00
    ld [bc], a                                    ; $6092: $02
    rlca                                          ; $6093: $07
    rlca                                          ; $6094: $07
    rlca                                          ; $6095: $07
    db $10                                        ; $6096: $10
    inc c                                         ; $6097: $0c
    nop                                           ; $6098: $00
    ld a, [bc]                                    ; $6099: $0a
    ld [$0ef9], sp                                ; $609a: $08 $f9 $0e
    nop                                           ; $609d: $00
    ld d, $08                                     ; $609e: $16 $08
    ld a, [bc]                                    ; $60a0: $0a
    jr c, @+$22                                   ; $60a1: $38 $20

    ld hl, sp+$40                                 ; $60a3: $f8 $40
    or b                                          ; $60a5: $b0
    ld bc, $0301                                  ; $60a6: $01 $01 $03
    nop                                           ; $60a9: $00
    ld a, a                                       ; $60aa: $7f
    ld bc, $0008                                  ; $60ab: $01 $08 $00
    rlca                                          ; $60ae: $07
    ld [$000c], sp                                ; $60af: $08 $0c $00
    ld a, [bc]                                    ; $60b2: $0a
    ld [$2016], sp                                ; $60b3: $08 $16 $20
    ld a, [bc]                                    ; $60b6: $0a
    jr c, jr_0c1_60d9                             ; $60b7: $38 $20

    ld hl, sp-$69                                 ; $60b9: $f8 $97
    ld b, b                                       ; $60bb: $40
    or b                                          ; $60bc: $b0
    inc bc                                        ; $60bd: $03
    inc bc                                        ; $60be: $03
    inc bc                                        ; $60bf: $03
    nop                                           ; $60c0: $00
    inc bc                                        ; $60c1: $03
    ld [$0700], sp                                ; $60c2: $08 $00 $07
    ld [$000c], sp                                ; $60c5: $08 $0c $00
    pop hl                                        ; $60c8: $e1
    ld a, [bc]                                    ; $60c9: $0a
    ld [$2016], sp                                ; $60ca: $08 $16 $20
    inc d                                         ; $60cd: $14
    nop                                           ; $60ce: $00
    ld b, a                                       ; $60cf: $47
    rlca                                          ; $60d0: $07
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    inc bc                                        ; $60d3: $03
    nop                                           ; $60d4: $00
    rra                                           ; $60d5: $1f
    nop                                           ; $60d6: $00
    rlca                                          ; $60d7: $07
    rlca                                          ; $60d8: $07

jr_0c1_60d9:
    rlca                                          ; $60d9: $07
    db $10                                        ; $60da: $10
    inc c                                         ; $60db: $0c
    nop                                           ; $60dc: $00
    ld a, [bc]                                    ; $60dd: $0a
    ld [$000e], sp                                ; $60de: $08 $0e $00
    ld d, $08                                     ; $60e1: $16 $08
    ld a, [c]                                     ; $60e3: $f2
    inc d                                         ; $60e4: $14
    nop                                           ; $60e5: $00
    jr nz, jr_0c1_6110                            ; $60e6: $20 $28

    jr z, jr_0c1_60ea                             ; $60e8: $28 $00

jr_0c1_60ea:
    jr nz, jr_0c1_610c                            ; $60ea: $20 $20

    ld b, a                                       ; $60ec: $47
    ld b, a                                       ; $60ed: $47
    jr nz, jr_0c1_6130                            ; $60ee: $20 $40

    ld b, a                                       ; $60f0: $47
    db $ec                                        ; $60f1: $ec
    ld b, b                                       ; $60f2: $40
    add sp, $4a                                   ; $60f3: $e8 $4a
    jr nz, @+$22                                  ; $60f5: $20 $20

    ld hl, sp+$0f                                 ; $60f7: $f8 $0f
    add b                                         ; $60f9: $80
    jr nc, jr_0c1_6106                            ; $60fa: $30 $0a

    nop                                           ; $60fc: $00
    rrca                                          ; $60fd: $0f
    rrca                                          ; $60fe: $0f
    add b                                         ; $60ff: $80
    add b                                         ; $6100: $80
    jr z, @+$11                                   ; $6101: $28 $0f

Call_0c1_6103:
    rlca                                          ; $6103: $07
    dec c                                         ; $6104: $0d
    dec c                                         ; $6105: $0d

jr_0c1_6106:
    ld c, $0d                                     ; $6106: $0e $0d
    dec c                                         ; $6108: $0d
    rrca                                          ; $6109: $0f
    dec c                                         ; $610a: $0d
    rlca                                          ; $610b: $07

jr_0c1_610c:
    rlca                                          ; $610c: $07
    dec c                                         ; $610d: $0d
    ld a, [bc]                                    ; $610e: $0a
    nop                                           ; $610f: $00

jr_0c1_6110:
    inc c                                         ; $6110: $0c
    ld [$080a], sp                                ; $6111: $08 $0a $08
    ld c, $00                                     ; $6114: $0e $00
    jr c, @+$0f                                   ; $6116: $38 $0d

    daa                                           ; $6118: $27
    dec c                                         ; $6119: $0d
    jr jr_0c1_6139                                ; $611a: $18 $1d

    ld [$0023], sp                                ; $611c: $08 $23 $00
    rrca                                          ; $611f: $0f
    rrca                                          ; $6120: $0f
    ld c, $89                                     ; $6121: $0e $89
    ld a, [bc]                                    ; $6123: $0a
    jr jr_0c1_6133                                ; $6124: $18 $0d

    ld c, $0e                                     ; $6126: $0e $0e
    dec c                                         ; $6128: $0d
    nop                                           ; $6129: $00
    rrca                                          ; $612a: $0f
    ld c, $36                                     ; $612b: $0e $36
    ld [$0acd], sp                                ; $612d: $08 $cd $0a

jr_0c1_6130:
    ld [$3015], sp                                ; $6130: $08 $15 $30

jr_0c1_6133:
    ld c, $2d                                     ; $6133: $0e $2d
    jr nz, jr_0c1_614f                            ; $6135: $20 $18

    ld d, b                                       ; $6137: $50
    nop                                           ; $6138: $00

jr_0c1_6139:
    ld l, $2d                                     ; $6139: $2e $2d
    jr z, @-$1e                                   ; $613b: $28 $e0

    inc l                                         ; $613d: $2c
    nop                                           ; $613e: $00
    push de                                       ; $613f: $d5
    add hl, bc                                    ; $6140: $09
    inc b                                         ; $6141: $04
    ret z                                         ; $6142: $c8

    jr nz, jr_0c1_6145                            ; $6143: $20 $00

jr_0c1_6145:
    jr nz, jr_0c1_6147                            ; $6145: $20 $00

jr_0c1_6147:
    jp nz, $0003                                  ; $6147: $c2 $03 $00

    add b                                         ; $614a: $80
    add c                                         ; $614b: $81
    add d                                         ; $614c: $82
    add e                                         ; $614d: $83
    add b                                         ; $614e: $80

jr_0c1_614f:
    add h                                         ; $614f: $84
    add e                                         ; $6150: $83
    add l                                         ; $6151: $85
    nop                                           ; $6152: $00
    add [hl]                                      ; $6153: $86

jr_0c1_6154:
    add a                                         ; $6154: $87
    adc b                                         ; $6155: $88
    add d                                         ; $6156: $82
    adc c                                         ; $6157: $89
    adc d                                         ; $6158: $8a
    add d                                         ; $6159: $82
    add c                                         ; $615a: $81
    jr nz, @-$7c                                  ; $615b: $20 $82

    add a                                         ; $615d: $87
    ld [de], a                                    ; $615e: $12
    nop                                           ; $615f: $00
    add d                                         ; $6160: $82
    add h                                         ; $6161: $84
    adc d                                         ; $6162: $8a
    adc e                                         ; $6163: $8b
    add b                                         ; $6164: $80
    nop                                           ; $6165: $00
    add a                                         ; $6166: $87
    adc h                                         ; $6167: $8c
    adc c                                         ; $6168: $89
    add d                                         ; $6169: $82
    add d                                         ; $616a: $82
    adc d                                         ; $616b: $8a
    adc l                                         ; $616c: $8d
    adc c                                         ; $616d: $89
    nop                                           ; $616e: $00
    adc [hl]                                      ; $616f: $8e
    adc a                                         ; $6170: $8f
    sub b                                         ; $6171: $90
    adc e                                         ; $6172: $8b
    add d                                         ; $6173: $82
    sub c                                         ; $6174: $91
    sub d                                         ; $6175: $92
    adc b                                         ; $6176: $88
    nop                                           ; $6177: $00
    add d                                         ; $6178: $82
    add d                                         ; $6179: $82
    sub e                                         ; $617a: $93
    sub h                                         ; $617b: $94
    sub l                                         ; $617c: $95
    add b                                         ; $617d: $80
    adc e                                         ; $617e: $8b
    adc b                                         ; $617f: $88
    nop                                           ; $6180: $00
    adc l                                         ; $6181: $8d
    adc c                                         ; $6182: $89
    add b                                         ; $6183: $80
    add a                                         ; $6184: $87
    adc c                                         ; $6185: $89
    adc e                                         ; $6186: $8b
    add d                                         ; $6187: $82
    add a                                         ; $6188: $87
    ld [$8296], sp                                ; $6189: $08 $96 $82
    adc d                                         ; $618c: $8a
    add d                                         ; $618d: $82
    ld bc, $8a00                                  ; $618e: $01 $00 $8a
    sub a                                         ; $6191: $97
    sbc b                                         ; $6192: $98
    ld [$8299], sp                                ; $6193: $08 $99 $82
    add b                                         ; $6196: $80
    add h                                         ; $6197: $84
    dec bc                                        ; $6198: $0b
    nop                                           ; $6199: $00
    sub [hl]                                      ; $619a: $96
    sbc d                                         ; $619b: $9a
    sbc e                                         ; $619c: $9b
    nop                                           ; $619d: $00
    sbc h                                         ; $619e: $9c
    add a                                         ; $619f: $87
    add d                                         ; $61a0: $82
    add a                                         ; $61a1: $87
    add d                                         ; $61a2: $82
    adc d                                         ; $61a3: $8a
    add a                                         ; $61a4: $87
    sub [hl]                                      ; $61a5: $96
    inc e                                         ; $61a6: $1c
    add e                                         ; $61a7: $83
    adc h                                         ; $61a8: $8c
    adc d                                         ; $61a9: $8a
    scf                                           ; $61aa: $37
    nop                                           ; $61ab: $00
    dec d                                         ; $61ac: $15
    nop                                           ; $61ad: $00
    ld c, c                                       ; $61ae: $49
    jr c, @-$7d                                   ; $61af: $38 $81

    sub [hl]                                      ; $61b1: $96
    nop                                           ; $61b2: $00
    add d                                         ; $61b3: $82
    sbc l                                         ; $61b4: $9d
    sbc [hl]                                      ; $61b5: $9e
    sbc a                                         ; $61b6: $9f
    add d                                         ; $61b7: $82
    adc c                                         ; $61b8: $89
    add c                                         ; $61b9: $81
    adc d                                         ; $61ba: $8a
    ld c, [hl]                                    ; $61bb: $4e
    adc e                                         ; $61bc: $8b
    ld c, e                                       ; $61bd: $4b
    nop                                           ; $61be: $00
    add d                                         ; $61bf: $82
    sub [hl]                                      ; $61c0: $96
    scf                                           ; $61c1: $37
    ld [$0040], sp                                ; $61c2: $08 $40 $00
    ld c, c                                       ; $61c5: $49
    jr jr_0c1_6154                                ; $61c6: $18 $8c

    inc b                                         ; $61c8: $04
    and b                                         ; $61c9: $a0
    and c                                         ; $61ca: $a1
    add h                                         ; $61cb: $84
    add d                                         ; $61cc: $82
    add b                                         ; $61cd: $80
    ld d, b                                       ; $61ce: $50
    nop                                           ; $61cf: $00
    adc l                                         ; $61d0: $8d
    add d                                         ; $61d1: $82
    ld c, $80                                     ; $61d2: $0e $80
    adc e                                         ; $61d4: $8b
    add d                                         ; $61d5: $82
    adc l                                         ; $61d6: $8d
    ld c, [hl]                                    ; $61d7: $4e
    ld [$0086], sp                                ; $61d8: $08 $86 $00
    add hl, bc                                    ; $61db: $09
    ld [$228c], sp                                ; $61dc: $08 $8c $22
    adc d                                         ; $61df: $8a
    adc b                                         ; $61e0: $88
    ld e, [hl]                                    ; $61e1: $5e
    nop                                           ; $61e2: $00
    and d                                         ; $61e3: $a2
    and e                                         ; $61e4: $a3
    and h                                         ; $61e5: $a4
    ld d, a                                       ; $61e6: $57
    nop                                           ; $61e7: $00
    add b                                         ; $61e8: $80
    inc bc                                        ; $61e9: $03
    adc e                                         ; $61ea: $8b
    adc d                                         ; $61eb: $8a
    add c                                         ; $61ec: $81
    adc c                                         ; $61ed: $89
    add a                                         ; $61ee: $87
    adc h                                         ; $61ef: $8c
    dec b                                         ; $61f0: $05
    nop                                           ; $61f1: $00
    inc hl                                        ; $61f2: $23
    nop                                           ; $61f3: $00
    ld h, d                                       ; $61f4: $62
    add b                                         ; $61f5: $80
    dec sp                                        ; $61f6: $3b
    nop                                           ; $61f7: $00
    add hl, bc                                    ; $61f8: $09
    nop                                           ; $61f9: $00
    add d                                         ; $61fa: $82
    sub [hl]                                      ; $61fb: $96
    add d                                         ; $61fc: $82
    ld a, h                                       ; $61fd: $7c
    nop                                           ; $61fe: $00
    and [hl]                                      ; $61ff: $a6
    ld b, c                                       ; $6200: $41
    and a                                         ; $6201: $a7
    ld b, $00                                     ; $6202: $06 $00

jr_0c1_6204:
    adc b                                         ; $6204: $88
    xor b                                         ; $6205: $a8
    add h                                         ; $6206: $84
    adc e                                         ; $6207: $8b
    add d                                         ; $6208: $82
    cpl                                           ; $6209: $2f
    nop                                           ; $620a: $00
    ld de, $a882                                  ; $620b: $11 $82 $a8
    add a                                         ; $620e: $87
    ld a, [de]                                    ; $620f: $1a
    nop                                           ; $6210: $00
    add a                                         ; $6211: $87
    add d                                         ; $6212: $82
    sub [hl]                                      ; $6213: $96
    sub l                                         ; $6214: $95
    ld [$49a0], sp                                ; $6215: $08 $a0 $49
    db $10                                        ; $6218: $10
    add a                                         ; $6219: $87
    ld [$9610], sp                                ; $621a: $08 $10 $96
    xor c                                         ; $621d: $a9
    add d                                         ; $621e: $82
    xor d                                         ; $621f: $aa
    add a                                         ; $6220: $87
    ld b, $82                                     ; $6221: $06 $82
    xor e                                         ; $6223: $ab
    add a                                         ; $6224: $87
    xor h                                         ; $6225: $ac
    xor l                                         ; $6226: $ad
    or a                                          ; $6227: $b7
    ld [$00d0], sp                                ; $6228: $08 $d0 $00
    sub [hl]                                      ; $622b: $96
    ret nz                                        ; $622c: $c0

    ld [hl], c                                    ; $622d: $71
    ld [$1049], sp                                ; $622e: $08 $49 $10
    add d                                         ; $6231: $82
    and l                                         ; $6232: $a5
    add d                                         ; $6233: $82
    xor [hl]                                      ; $6234: $ae
    add d                                         ; $6235: $82
    add d                                         ; $6236: $82
    nop                                           ; $6237: $00
    xor a                                         ; $6238: $af
    add d                                         ; $6239: $82
    or b                                          ; $623a: $b0
    add d                                         ; $623b: $82
    add d                                         ; $623c: $82
    or c                                          ; $623d: $b1
    add d                                         ; $623e: $82
    or d                                          ; $623f: $b2
    inc bc                                        ; $6240: $03
    or e                                          ; $6241: $b3
    add d                                         ; $6242: $82
    or h                                          ; $6243: $b4
    add e                                         ; $6244: $83
    adc e                                         ; $6245: $8b
    and l                                         ; $6246: $a5
    jp z, $e600                                   ; $6247: $ca $00 $e6

    nop                                           ; $624a: $00
    add b                                         ; $624b: $80
    ld c, c                                       ; $624c: $49
    jr nc, jr_0c1_6204                            ; $624d: $30 $b5

    or [hl]                                       ; $624f: $b6
    add d                                         ; $6250: $82
    or a                                          ; $6251: $b7
    add d                                         ; $6252: $82
    cp b                                          ; $6253: $b8
    pop de                                        ; $6254: $d1
    nop                                           ; $6255: $00
    jp nc, $82bb                                  ; $6256: $d2 $bb $82

    cp h                                          ; $6259: $bc
    cp l                                          ; $625a: $bd
    add h                                         ; $625b: $84
    cp [hl]                                       ; $625c: $be
    add d                                         ; $625d: $82
    nop                                           ; $625e: $00
    cp a                                          ; $625f: $bf
    ret nz                                        ; $6260: $c0

    add d                                         ; $6261: $82
    pop bc                                        ; $6262: $c1

jr_0c1_6263:
    jp nz, $828c                                  ; $6263: $c2 $8c $82

    adc b                                         ; $6266: $88
    and b                                         ; $6267: $a0
    ld [hl], c                                    ; $6268: $71
    db $10                                        ; $6269: $10
    adc b                                         ; $626a: $88
    ld c, $01                                     ; $626b: $0e $01
    jp $c5c4                                      ; $626d: $c3 $c4 $c5


    add $c7                                       ; $6270: $c6 $c7
    nop                                           ; $6272: $00
    ret z                                         ; $6273: $c8

    cp a                                          ; $6274: $bf
    ret nz                                        ; $6275: $c0

    set 1, h                                      ; $6276: $cb $cc
    call $cfce                                    ; $6278: $cd $ce $cf
    nop                                           ; $627b: $00
    ret nc                                        ; $627c: $d0

    add e                                         ; $627d: $83
    pop de                                        ; $627e: $d1
    jp nc, $d382                                  ; $627f: $d2 $82 $d3

    call nc, $3089                                ; $6282: $d4 $89 $30
    add d                                         ; $6285: $82
    add h                                         ; $6286: $84
    ld c, c                                       ; $6287: $49
    ld [$005f], sp                                ; $6288: $08 $5f $00
    adc b                                         ; $628b: $88
    add d                                         ; $628c: $82
    push de                                       ; $628d: $d5
    sub $00                                       ; $628e: $d6 $00
    rst $10                                       ; $6290: $d7
    ret c                                         ; $6291: $d8

    reti                                          ; $6292: $d9


    jp c, $a58b                                   ; $6293: $da $8b $a5

    db $dd                                        ; $6296: $dd
    sbc $0a                                       ; $6297: $de $0a
    rst $18                                       ; $6299: $df
    ldh [$e1], a                                  ; $629a: $e0 $e1
    ld [c], a                                     ; $629c: $e2
    ld h, e                                       ; $629d: $63
    ld bc, $3e8d                                  ; $629e: $01 $8d $3e
    ld bc, $6088                                  ; $62a1: $01 $88 $60
    adc d                                         ; $62a4: $8a
    ld c, c                                       ; $62a5: $49
    jr @-$7d                                      ; $62a6: $18 $81

    nop                                           ; $62a8: $00
    db $e3                                        ; $62a9: $e3
    db $e4                                        ; $62aa: $e4
    push hl                                       ; $62ab: $e5
    and $e7                                       ; $62ac: $e6 $e7
    nop                                           ; $62ae: $00
    add sp, -$17                                  ; $62af: $e8 $e9
    ld [$eceb], a                                 ; $62b1: $ea $eb $ec
    db $ed                                        ; $62b4: $ed
    xor $ef                                       ; $62b5: $ee $ef
    ld [hl], b                                    ; $62b7: $70
    ldh a, [$f7]                                  ; $62b8: $f0 $f7
    db $10                                        ; $62ba: $10
    pop bc                                        ; $62bb: $c1
    db $10                                        ; $62bc: $10
    ld c, c                                       ; $62bd: $49
    db $10                                        ; $62be: $10
    add d                                         ; $62bf: $82
    pop af                                        ; $62c0: $f1
    ld a, [c]                                     ; $62c1: $f2
    add h                                         ; $62c2: $84
    nop                                           ; $62c3: $00
    di                                            ; $62c4: $f3
    db $f4                                        ; $62c5: $f4
    push af                                       ; $62c6: $f5
    or $f7                                        ; $62c7: $f6 $f7
    ld hl, sp-$07                                 ; $62c9: $f8 $f9
    ld a, [$fb01]                                 ; $62cb: $fa $01 $fb
    db $ed                                        ; $62ce: $ed
    db $fc                                        ; $62cf: $fc
    db $fd                                        ; $62d0: $fd
    add d                                         ; $62d1: $82
    cp $ff                                        ; $62d2: $fe $ff
    ld l, c                                       ; $62d4: $69
    ld bc, $a9c0                                  ; $62d5: $01 $c0 $a9
    add hl, bc                                    ; $62d8: $09
    ld c, c                                       ; $62d9: $49
    jr jr_0c1_6263                                ; $62da: $18 $87

    add d                                         ; $62dc: $82
    nop                                           ; $62dd: $00
    ld bc, $0302                                  ; $62de: $01 $02 $03
    nop                                           ; $62e1: $00
    rlca                                          ; $62e2: $07
    inc b                                         ; $62e3: $04
    dec b                                         ; $62e4: $05
    db $ed                                        ; $62e5: $ed
    db $ed                                        ; $62e6: $ed
    ld b, $ed                                     ; $62e7: $06 $ed
    rlca                                          ; $62e9: $07
    ld bc, $08ed                                  ; $62ea: $01 $ed $08
    add hl, bc                                    ; $62ed: $09
    ld a, [bc]                                    ; $62ee: $0a
    sub [hl]                                      ; $62ef: $96
    add d                                         ; $62f0: $82
    add d                                         ; $62f1: $82
    ld d, l                                       ; $62f2: $55
    ld bc, $8108                                  ; $62f3: $01 $08 $81
    add d                                         ; $62f6: $82
    add c                                         ; $62f7: $81
    add c                                         ; $62f8: $81
    db $fd                                        ; $62f9: $fd
    nop                                           ; $62fa: $00
    add c                                         ; $62fb: $81
    add c                                         ; $62fc: $81
    sub [hl]                                      ; $62fd: $96
    nop                                           ; $62fe: $00
    dec bc                                        ; $62ff: $0b
    inc c                                         ; $6300: $0c
    dec c                                         ; $6301: $0d
    ld c, $0f                                     ; $6302: $0e $0f
    db $10                                        ; $6304: $10
    ld de, $0412                                  ; $6305: $11 $12 $04
    add e                                         ; $6308: $83
    rrca                                          ; $6309: $0f
    add d                                         ; $630a: $82
    and a                                         ; $630b: $a7
    and [hl]                                      ; $630c: $a6
    db $ed                                        ; $630d: $ed
    add hl, bc                                    ; $630e: $09
    add d                                         ; $630f: $82
    adc l                                         ; $6310: $8d
    sub b                                         ; $6311: $90
    ld d, l                                       ; $6312: $55
    ld bc, $8087                                  ; $6313: $01 $87 $80
    pop de                                        ; $6316: $d1
    add hl, bc                                    ; $6317: $09
    add h                                         ; $6318: $84
    add b                                         ; $6319: $80
    dec d                                         ; $631a: $15
    ld d, $88                                     ; $631b: $16 $88
    and $01                                       ; $631d: $e6 $01
    ld a, [de]                                    ; $631f: $1a
    dec de                                        ; $6320: $1b
    inc e                                         ; $6321: $1c
    inc a                                         ; $6322: $3c
    ld bc, $a420                                  ; $6323: $01 $20 $a4
    and e                                         ; $6326: $a3
    ld bc, $8aa2                                  ; $6327: $01 $a2 $8a
    adc e                                         ; $632a: $8b
    ld h, $27                                     ; $632b: $26 $27
    jr z, @-$7d                                   ; $632d: $28 $81

    ld d, l                                       ; $632f: $55
    ld bc, $9600                                  ; $6330: $01 $00 $96
    add a                                         ; $6333: $87
    add a                                         ; $6334: $87
    add h                                         ; $6335: $84
    add a                                         ; $6336: $87
    add d                                         ; $6337: $82
    adc c                                         ; $6338: $89
    add a                                         ; $6339: $87
    jr z, jr_0c1_6365                             ; $633a: $28 $29

    ld a, [hl+]                                   ; $633c: $2a
    xor a                                         ; $633d: $af
    ld de, $3c8d                                  ; $633e: $11 $8d $3c
    ld bc, $a133                                  ; $6341: $01 $33 $a1
    and b                                         ; $6344: $a0
    ld bc, $378c                                  ; $6345: $01 $8c $37
    jr c, @+$3b                                   ; $6348: $38 $39

    ld a, [hl-]                                   ; $634a: $3a
    dec sp                                        ; $634b: $3b
    inc a                                         ; $634c: $3c
    ld a, [$8318]                                 ; $634d: $fa $18 $83
    ld c, h                                       ; $6350: $4c
    ld de, $3e3d                                  ; $6351: $11 $3d $3e
    ccf                                           ; $6354: $3f
    ld b, b                                       ; $6355: $40
    ld b, c                                       ; $6356: $41
    sub b                                         ; $6357: $90
    ld bc, $013c                                  ; $6358: $01 $3c $01
    nop                                           ; $635b: $00
    ld c, b                                       ; $635c: $48
    ld c, c                                       ; $635d: $49
    adc l                                         ; $635e: $8d
    ld c, e                                       ; $635f: $4b
    ld c, h                                       ; $6360: $4c
    ld c, l                                       ; $6361: $4d
    ld c, [hl]                                    ; $6362: $4e
    ld c, a                                       ; $6363: $4f
    ld h, b                                       ; $6364: $60

jr_0c1_6365:
    ld d, b                                       ; $6365: $50
    ld b, e                                       ; $6366: $43
    add hl, bc                                    ; $6367: $09
    db $fc                                        ; $6368: $fc
    nop                                           ; $6369: $00
    adc c                                         ; $636a: $89
    add d                                         ; $636b: $82
    add e                                         ; $636c: $83
    add d                                         ; $636d: $82
    add d                                         ; $636e: $82
    inc b                                         ; $636f: $04
    ld d, c                                       ; $6370: $51
    ld d, d                                       ; $6371: $52
    dec hl                                        ; $6372: $2b
    ld d, e                                       ; $6373: $53
    ld d, h                                       ; $6374: $54
    sub b                                         ; $6375: $90
    ld bc, $5748                                  ; $6376: $01 $48 $57
    nop                                           ; $6379: $00
    adc [hl]                                      ; $637a: $8e
    adc a                                         ; $637b: $8f
    ld e, d                                       ; $637c: $5a
    ld e, e                                       ; $637d: $5b
    sub b                                         ; $637e: $90
    ld e, l                                       ; $637f: $5d
    add d                                         ; $6380: $82
    ld e, [hl]                                    ; $6381: $5e
    jr nc, @+$61                                  ; $6382: $30 $5f

    ld h, b                                       ; $6384: $60
    sbc l                                         ; $6385: $9d
    ld hl, $0907                                  ; $6386: $21 $07 $09
    add d                                         ; $6389: $82
    ld h, c                                       ; $638a: $61
    ld h, d                                       ; $638b: $62
    ld h, e                                       ; $638c: $63
    jr nz, @+$66                                  ; $638d: $20 $64

    ld h, l                                       ; $638f: $65
    sub b                                         ; $6390: $90
    ld bc, $6968                                  ; $6391: $01 $68 $69
    ld l, d                                       ; $6394: $6a
    ld l, e                                       ; $6395: $6b
    ld l, h                                       ; $6396: $6c
    ld bc, $6e6d                                  ; $6397: $01 $6d $6e
    ld l, a                                       ; $639a: $6f
    add d                                         ; $639b: $82
    ld [hl], b                                    ; $639c: $70
    ld h, e                                       ; $639d: $63
    ld [hl], c                                    ; $639e: $71
    dec sp                                        ; $639f: $3b
    ld [$bbc1], sp                                ; $63a0: $08 $c1 $bb
    add hl, bc                                    ; $63a3: $09
    rst $00                                       ; $63a4: $c7
    ld de, $8284                                  ; $63a5: $11 $84 $82
    add e                                         ; $63a8: $83
    ld [hl], d                                    ; $63a9: $72
    ld [hl], e                                    ; $63aa: $73
    db $db                                        ; $63ab: $db
    ld [$ed00], sp                                ; $63ac: $08 $00 $ed
    ld [hl], h                                    ; $63af: $74
    ld [hl], l                                    ; $63b0: $75
    db $ed                                        ; $63b1: $ed
    halt                                          ; $63b2: $76
    ld [hl], a                                    ; $63b3: $77
    add c                                         ; $63b4: $81
    adc d                                         ; $63b5: $8a
    adc [hl]                                      ; $63b6: $8e
    ld d, [hl]                                    ; $63b7: $56
    nop                                           ; $63b8: $00
    add a                                         ; $63b9: $87
    add h                                         ; $63ba: $84
    adc l                                         ; $63bb: $8d
    ld a, [hl+]                                   ; $63bc: $2a
    ld [de], a                                    ; $63bd: $12
    rra                                           ; $63be: $1f
    db $10                                        ; $63bf: $10
    or h                                          ; $63c0: $b4
    ld [bc], a                                    ; $63c1: $02
    ld a, b                                       ; $63c2: $78
    ld bc, $7a79                                  ; $63c3: $01 $79 $7a
    ld a, e                                       ; $63c6: $7b
    ld a, h                                       ; $63c7: $7c
    ld a, l                                       ; $63c8: $7d
    ld a, [hl]                                    ; $63c9: $7e
    ld a, a                                       ; $63ca: $7f
    db $d3                                        ; $63cb: $d3
    ld [bc], a                                    ; $63cc: $02
    and [hl]                                      ; $63cd: $a6
    adc a                                         ; $63ce: $8f
    ld [bc], a                                    ; $63cf: $02
    adc h                                         ; $63d0: $8c
    ld b, c                                       ; $63d1: $41
    ld a, [bc]                                    ; $63d2: $0a
    add c                                         ; $63d3: $81
    adc c                                         ; $63d4: $89
    call c, Call_0c1_5542                         ; $63d5: $dc $42 $55
    ld a, [bc]                                    ; $63d8: $0a
    add h                                         ; $63d9: $84
    db $db                                        ; $63da: $db
    or a                                          ; $63db: $b7
    ld [bc], a                                    ; $63dc: $02
    ld e, c                                       ; $63dd: $59
    db $10                                        ; $63de: $10
    adc b                                         ; $63df: $88
    add c                                         ; $63e0: $81
    ld bc, $0244                                  ; $63e1: $01 $44 $02
    adc d                                         ; $63e4: $8a
    add c                                         ; $63e5: $81
    ld [bc], a                                    ; $63e6: $02
    call c, $dd32                                 ; $63e7: $dc $32 $dd
    ld d, l                                       ; $63ea: $55
    ld [bc], a                                    ; $63eb: $02
    sbc h                                         ; $63ec: $9c
    ld [bc], a                                    ; $63ed: $02
    add b                                         ; $63ee: $80
    ld e, e                                       ; $63ef: $5b
    ld [bc], a                                    ; $63f0: $02
    sbc l                                         ; $63f1: $9d
    ld de, $026c                                  ; $63f2: $11 $6c $02
    add e                                         ; $63f5: $83
    dec de                                        ; $63f6: $1b
    ld [bc], a                                    ; $63f7: $02
    adc [hl]                                      ; $63f8: $8e
    call c, $8d32                                 ; $63f9: $dc $32 $8d
    add e                                         ; $63fc: $83
    adc c                                         ; $63fd: $89
    ld b, b                                       ; $63fe: $40
    nop                                           ; $63ff: $00
    and b                                         ; $6400: $a0
    ld a, [bc]                                    ; $6401: $0a
    ld a, b                                       ; $6402: $78
    add hl, bc                                    ; $6403: $09
    and l                                         ; $6404: $a5
    cp h                                          ; $6405: $bc
    ld a, c                                       ; $6406: $79
    ld [de], a                                    ; $6407: $12
    add d                                         ; $6408: $82
    call c, Call_000_094a                         ; $6409: $dc $4a $09
    ld [bc], a                                    ; $640c: $02
    dec e                                         ; $640d: $1d
    ld bc, $0292                                  ; $640e: $01 $92 $02
    adc l                                         ; $6411: $8d
    add d                                         ; $6412: $82
    rrca                                          ; $6413: $0f
    sub [hl]                                      ; $6414: $96
    adc e                                         ; $6415: $8b
    add d                                         ; $6416: $82
    adc b                                         ; $6417: $88
    sbc b                                         ; $6418: $98
    ld de, $1b60                                  ; $6419: $11 $60 $1b
    ld b, h                                       ; $641c: $44
    inc bc                                        ; $641d: $03
    ld h, b                                       ; $641e: $60
    dec de                                        ; $641f: $1b
    add c                                         ; $6420: $81
    ld e, l                                       ; $6421: $5d
    add hl, bc                                    ; $6422: $09
    adc l                                         ; $6423: $8d
    cp a                                          ; $6424: $bf
    ret nz                                        ; $6425: $c0

    sub [hl]                                      ; $6426: $96
    adc c                                         ; $6427: $89
    adc l                                         ; $6428: $8d
    adc b                                         ; $6429: $88
    ld [$e3f8], sp                                ; $642a: $08 $f8 $e3
    ld a, [bc]                                    ; $642d: $0a
    ld h, b                                       ; $642e: $60
    inc de                                        ; $642f: $13
    ld b, h                                       ; $6430: $44
    inc bc                                        ; $6431: $03
    ld h, b                                       ; $6432: $60
    inc bc                                        ; $6433: $03
    adc b                                         ; $6434: $88
    ld [bc], a                                    ; $6435: $02
    add c                                         ; $6436: $81
    sub [hl]                                      ; $6437: $96
    and [hl]                                      ; $6438: $a6
    dec hl                                        ; $6439: $2b
    add d                                         ; $643a: $82
    sub [hl]                                      ; $643b: $96
    inc a                                         ; $643c: $3c
    ld [bc], a                                    ; $643d: $02
    and l                                         ; $643e: $a5
    ret c                                         ; $643f: $d8

    ld [bc], a                                    ; $6440: $02
    add d                                         ; $6441: $82
    ld [hl], $08                                  ; $6442: $36 $08
    ld h, b                                       ; $6444: $60
    ld c, e                                       ; $6445: $4b
    call nz, $0395                                ; $6446: $c4 $95 $03
    ld sp, hl                                     ; $6449: $f9
    nop                                           ; $644a: $00
    add c                                         ; $644b: $81
    adc b                                         ; $644c: $88
    sub [hl]                                      ; $644d: $96
    db $fd                                        ; $644e: $fd
    ld [bc], a                                    ; $644f: $02
    adc b                                         ; $6450: $88
    adc d                                         ; $6451: $8a
    ld a, [hl-]                                   ; $6452: $3a
    pop bc                                        ; $6453: $c1
    jp nz, Jump_000_037a                          ; $6454: $c2 $7a $03

    inc d                                         ; $6457: $14
    ld [$1ba9], sp                                ; $6458: $08 $a9 $1b
    adc c                                         ; $645b: $89
    reti                                          ; $645c: $d9


    ld [$8b8a], sp                                ; $645d: $08 $8a $8b
    cp e                                          ; $6460: $bb
    nop                                           ; $6461: $00
    add b                                         ; $6462: $80
    adc e                                         ; $6463: $8b
    adc h                                         ; $6464: $8c
    adc h                                         ; $6465: $8c
    inc bc                                        ; $6466: $03
    add a                                         ; $6467: $87
    ld [hl], $0a                                  ; $6468: $36 $0a
    pop bc                                        ; $646a: $c1
    inc bc                                        ; $646b: $03
    ldh a, [$a9]                                  ; $646c: $f0 $a9
    inc bc                                        ; $646e: $03
    add $03                                       ; $646f: $c6 $03
    ld [de], a                                    ; $6471: $12
    nop                                           ; $6472: $00
    ret                                           ; $6473: $c9


    nop                                           ; $6474: $00
    sbc a                                         ; $6475: $9f
    sbc [hl]                                      ; $6476: $9e
    sbc l                                         ; $6477: $9d
    add d                                         ; $6478: $82
    ld b, [hl]                                    ; $6479: $46
    sub [hl]                                      ; $647a: $96
    dec sp                                        ; $647b: $3b
    ld bc, $8982                                  ; $647c: $01 $82 $89
    adc h                                         ; $647f: $8c
    ld c, h                                       ; $6480: $4c
    dec bc                                        ; $6481: $0b
    ld d, $13                                     ; $6482: $16 $13
    nop                                           ; $6484: $00
    add b                                         ; $6485: $80
    ld bc, $4000                                  ; $6486: $01 $00 $40
    dec b                                         ; $6489: $05
    nop                                           ; $648a: $00
    dec b                                         ; $648b: $05
    dec b                                         ; $648c: $05
    dec b                                         ; $648d: $05
    ld [bc], a                                    ; $648e: $02
    sbc $0b                                       ; $648f: $de $0b
    ld [$000f], sp                                ; $6491: $08 $0f $00
    ld bc, $3006                                  ; $6494: $01 $06 $30
    ld a, [bc]                                    ; $6497: $0a
    jr jr_0c1_64b1                                ; $6498: $18 $17

    db $10                                        ; $649a: $10
    jr nz, jr_0c1_649d                            ; $649b: $20 $00

jr_0c1_649d:
    ld bc, $074f                                  ; $649d: $01 $4f $07
    ld bc, $0208                                  ; $64a0: $01 $08 $02
    dec b                                         ; $64a3: $05
    inc h                                         ; $64a4: $24
    db $10                                        ; $64a5: $10
    dec l                                         ; $64a6: $2d
    jr z, @+$09                                   ; $64a7: $28 $07

    ld c, b                                       ; $64a9: $48
    jr nz, jr_0c1_64bc                            ; $64aa: $20 $10

    ld [bc], a                                    ; $64ac: $02
    nop                                           ; $64ad: $00
    ld hl, $0700                                  ; $64ae: $21 $00 $07

jr_0c1_64b1:
    ld bc, $2500                                  ; $64b1: $01 $00 $25
    nop                                           ; $64b4: $00
    ld [bc], a                                    ; $64b5: $02
    ld e, a                                       ; $64b6: $5f
    ld [bc], a                                    ; $64b7: $02
    ld d, c                                       ; $64b8: $51
    ld [$4e01], sp                                ; $64b9: $08 $01 $4e

jr_0c1_64bc:
    db $10                                        ; $64bc: $10
    ld d, e                                       ; $64bd: $53
    ld [$1840], sp                                ; $64be: $08 $40 $18
    rlca                                          ; $64c1: $07
    nop                                           ; $64c2: $00
    ld c, b                                       ; $64c3: $48
    nop                                           ; $64c4: $00
    ret nc                                        ; $64c5: $d0

    dec l                                         ; $64c6: $2d
    ld [$1820], sp                                ; $64c7: $08 $20 $18

jr_0c1_64ca:
    nop                                           ; $64ca: $00
    halt                                          ; $64cb: $76
    nop                                           ; $64cc: $00
    dec b                                         ; $64cd: $05
    nop                                           ; $64ce: $00
    ld [bc], a                                    ; $64cf: $02
    ld h, b                                       ; $64d0: $60
    cpl                                           ; $64d1: $2f
    inc bc                                        ; $64d2: $03
    inc bc                                        ; $64d3: $03
    ld e, b                                       ; $64d4: $58
    nop                                           ; $64d5: $00
    rlca                                          ; $64d6: $07
    ld [hl], d                                    ; $64d7: $72
    ld c, b                                       ; $64d8: $48
    ld d, e                                       ; $64d9: $53
    jr @+$20                                      ; $64da: $18 $1e

    ld [$0072], sp                                ; $64dc: $08 $72 $00
    nop                                           ; $64df: $00
    inc bc                                        ; $64e0: $03

jr_0c1_64e1:
    inc bc                                        ; $64e1: $03
    inc bc                                        ; $64e2: $03
    nop                                           ; $64e3: $00
    ld bc, $2220                                  ; $64e4: $01 $20 $22
    inc hl                                        ; $64e7: $23
    ld b, b                                       ; $64e8: $40
    dec h                                         ; $64e9: $25
    inc h                                         ; $64ea: $24
    nop                                           ; $64eb: $00
    inc b                                         ; $64ec: $04
    nop                                           ; $64ed: $00
    ld bc, $0006                                  ; $64ee: $01 $06 $00
    ld bc, $87d0                                  ; $64f1: $01 $d0 $87
    db $10                                        ; $64f4: $10
    inc hl                                        ; $64f5: $23
    jr jr_0c1_64f9                                ; $64f6: $18 $01

    rra                                           ; $64f8: $1f

jr_0c1_64f9:
    stop                                          ; $64f9: $10 $00
    nop                                           ; $64fb: $00
    jr nz, jr_0c1_6504                            ; $64fc: $20 $06

    dec a                                         ; $64fe: $3d

jr_0c1_64ff:
    inc h                                         ; $64ff: $24
    jr nz, @-$46                                  ; $6500: $20 $b8

    jr nc, jr_0c1_64ca                            ; $6502: $30 $c6

jr_0c1_6504:
    nop                                           ; $6504: $00
    cp a                                          ; $6505: $bf
    jr z, jr_0c1_64e1                             ; $6506: $28 $d9

    nop                                           ; $6508: $00
    ld b, $01                                     ; $6509: $06 $01
    nop                                           ; $650b: $00
    ld [bc], a                                    ; $650c: $02
    ld [bc], a                                    ; $650d: $02
    nop                                           ; $650e: $00
    inc b                                         ; $650f: $04
    ld b, $06                                     ; $6510: $06 $06
    nop                                           ; $6512: $00
    ccf                                           ; $6513: $3f
    nop                                           ; $6514: $00
    ld b, $cd                                     ; $6515: $06 $cd
    ld [$e608], sp                                ; $6517: $08 $08 $e6
    ld [$2040], sp                                ; $651a: $08 $40 $20
    jp c, $8408                                   ; $651d: $da $08 $84

    ld [$2206], sp                                ; $6520: $08 $06 $22
    db $10                                        ; $6523: $10
    db $e4                                        ; $6524: $e4
    jr nz, jr_0c1_6527                            ; $6525: $20 $00

jr_0c1_6527:
    inc b                                         ; $6527: $04
    db $10                                        ; $6528: $10
    ld l, $00                                     ; $6529: $2e $00
    nop                                           ; $652b: $00
    ld [bc], a                                    ; $652c: $02
    rlca                                          ; $652d: $07
    add hl, bc                                    ; $652e: $09
    dec h                                         ; $652f: $25
    nop                                           ; $6530: $00
    ld e, b                                       ; $6531: $58
    jr nz, jr_0c1_64ff                            ; $6532: $20 $cb

    ld [$4001], sp                                ; $6534: $08 $01 $40
    db $10                                        ; $6537: $10
    jr nz, jr_0c1_6542                            ; $6538: $20 $08

    inc b                                         ; $653a: $04
    ld b, l                                       ; $653b: $45
    ld b, l                                       ; $653c: $45
    ld h, l                                       ; $653d: $65
    inc b                                         ; $653e: $04
    ld bc, $3000                                  ; $653f: $01 $00 $30

jr_0c1_6542:
    nop                                           ; $6542: $00
    dec b                                         ; $6543: $05
    dec b                                         ; $6544: $05
    jp nz, Jump_000_2000                          ; $6545: $c2 $00 $20

    jr nz, jr_0c1_654a                            ; $6548: $20 $00

jr_0c1_654a:
    cp c                                          ; $654a: $b9
    dec bc                                        ; $654b: $0b
    ld hl, $4101                                  ; $654c: $21 $01 $41
    db $10                                        ; $654f: $10
    jr nz, jr_0c1_6552                            ; $6550: $20 $00

jr_0c1_6552:
    ld h, $08                                     ; $6552: $26 $08
    ld b, $04                                     ; $6554: $06 $04
    ld d, b                                       ; $6556: $50
    ld bc, $e2e8                                  ; $6557: $01 $e8 $e2
    nop                                           ; $655a: $00
    ld c, l                                       ; $655b: $4d
    ld bc, $20a8                                  ; $655c: $01 $a8 $20
    dec b                                         ; $655f: $05
    halt                                          ; $6560: $76
    db $10                                        ; $6561: $10
    inc b                                         ; $6562: $04
    ld b, $40                                     ; $6563: $06 $40

jr_0c1_6565:
    add hl, sp                                    ; $6565: $39
    ld b, b                                       ; $6566: $40
    inc b                                         ; $6567: $04
    jr nz, @+$0a                                  ; $6568: $20 $08

    adc b                                         ; $656a: $88
    nop                                           ; $656b: $00
    ld h, a                                       ; $656c: $67
    ld de, $6060                                  ; $656d: $11 $60 $60
    ld a, d                                       ; $6570: $7a
    ld bc, $deff                                  ; $6571: $01 $ff $de
    nop                                           ; $6574: $00
    pop de                                        ; $6575: $d1
    nop                                           ; $6576: $00
    ld e, b                                       ; $6577: $58
    ld [$1844], sp                                ; $6578: $08 $44 $18
    add a                                         ; $657b: $87
    ld [$0114], sp                                ; $657c: $08 $14 $01
    ld c, b                                       ; $657f: $48
    add hl, bc                                    ; $6580: $09
    ld a, d                                       ; $6581: $7a
    add hl, de                                    ; $6582: $19
    cp a                                          ; $6583: $bf
    jr nz, jr_0c1_6586                            ; $6584: $20 $00

jr_0c1_6586:
    inc b                                         ; $6586: $04
    and d                                         ; $6587: $a2
    ld [$0080], sp                                ; $6588: $08 $80 $00
    ld e, l                                       ; $658b: $5d
    db $10                                        ; $658c: $10
    ld b, e                                       ; $658d: $43
    ld [$0011], sp                                ; $658e: $08 $11 $00
    sbc [hl]                                      ; $6591: $9e
    add hl, sp                                    ; $6592: $39
    ei                                            ; $6593: $fb
    ld a, [hl-]                                   ; $6594: $3a
    ld [$1015], sp                                ; $6595: $08 $15 $10
    ld b, d                                       ; $6598: $42
    jr jr_0c1_6565                                ; $6599: $18 $ca

    ld [$0053], sp                                ; $659b: $08 $53 $00
    ld h, b                                       ; $659e: $60
    ld e, e                                       ; $659f: $5b
    nop                                           ; $65a0: $00
    rst $08                                       ; $65a1: $cf

jr_0c1_65a2:
    ld de, $30c0                                  ; $65a2: $11 $c0 $30
    jr @-$1c                                      ; $65a5: $18 $e2

    jr jr_0c1_65b5                                ; $65a7: $18 $0c

    inc b                                         ; $65a9: $04
    nop                                           ; $65aa: $00
    ld h, e                                       ; $65ab: $63
    ld h, e                                       ; $65ac: $63
    inc c                                         ; $65ad: $0c
    scf                                           ; $65ae: $37
    inc c                                         ; $65af: $0c
    inc c                                         ; $65b0: $0c
    dec bc                                        ; $65b1: $0b
    ld bc, $01f4                                  ; $65b2: $01 $f4 $01

jr_0c1_65b5:
    jr nz, @+$04                                  ; $65b5: $20 $02

    ld bc, $1118                                  ; $65b7: $01 $18 $11
    rra                                           ; $65ba: $1f
    ld bc, $024b                                  ; $65bb: $01 $4b $02
    sub a                                         ; $65be: $97
    jr @+$08                                      ; $65bf: $18 $06

    ld h, e                                       ; $65c1: $63
    jr nz, jr_0c1_65c4                            ; $65c2: $20 $00

jr_0c1_65c4:
    ld c, $71                                     ; $65c4: $0e $71
    ld [$009a], sp                                ; $65c6: $08 $9a $00
    sub [hl]                                      ; $65c9: $96
    jr nz, jr_0c1_65cc                            ; $65ca: $20 $00

jr_0c1_65cc:
    ld bc, $1e21                                  ; $65cc: $01 $21 $1e
    add hl, bc                                    ; $65cf: $09
    inc b                                         ; $65d0: $04
    xor a                                         ; $65d1: $af
    ld hl, $00e3                                  ; $65d2: $21 $e3 $00
    ld h, e                                       ; $65d5: $63
    ld e, a                                       ; $65d6: $5f
    ld h, e                                       ; $65d7: $63
    dec l                                         ; $65d8: $2d
    add hl, de                                    ; $65d9: $19
    inc b                                         ; $65da: $04
    cp h                                          ; $65db: $bc
    add hl, bc                                    ; $65dc: $09
    ld b, d                                       ; $65dd: $42
    add hl, bc                                    ; $65de: $09
    ld d, h                                       ; $65df: $54
    ld bc, $10b7                                  ; $65e0: $01 $b7 $10
    rra                                           ; $65e3: $1f
    ld [$69ee], sp                                ; $65e4: $08 $ee $69
    add hl, bc                                    ; $65e7: $09
    ld e, h                                       ; $65e8: $5c
    nop                                           ; $65e9: $00
    ld c, l                                       ; $65ea: $4d
    add hl, bc                                    ; $65eb: $09
    dec b                                         ; $65ec: $05
    ret nc                                        ; $65ed: $d0

    ld bc, $0161                                  ; $65ee: $01 $61 $01
    ld c, a                                       ; $65f1: $4f
    ld [de], a                                    ; $65f2: $12
    inc b                                         ; $65f3: $04
    ld c, $06                                     ; $65f4: $0e $06
    ld b, h                                       ; $65f6: $44
    inc b                                         ; $65f7: $04
    inc b                                         ; $65f8: $04
    ld e, c                                       ; $65f9: $59
    ld [bc], a                                    ; $65fa: $02
    dec e                                         ; $65fb: $1d
    nop                                           ; $65fc: $00
    ld a, d                                       ; $65fd: $7a
    nop                                           ; $65fe: $00
    inc c                                         ; $65ff: $0c
    rst $38                                       ; $6600: $ff
    ld l, c                                       ; $6601: $69
    ld de, $0820                                  ; $6602: $11 $20 $08
    ld b, b                                       ; $6605: $40
    jr nz, jr_0c1_65a2                            ; $6606: $20 $9a

    ld bc, $015c                                  ; $6608: $01 $5c $01
    sub b                                         ; $660b: $90
    ld bc, $1983                                  ; $660c: $01 $83 $19
    ld a, [hl+]                                   ; $660f: $2a

jr_0c1_6610:
    ld de, $23c3                                  ; $6610: $11 $c3 $23
    add hl, hl                                    ; $6613: $29
    sub c                                         ; $6614: $91
    ld [de], a                                    ; $6615: $12
    ld b, $20                                     ; $6616: $06 $20
    ld b, $05                                     ; $6618: $06 $05
    and d                                         ; $661a: $a2
    add hl, hl                                    ; $661b: $29
    xor c                                         ; $661c: $a9
    add hl, bc                                    ; $661d: $09
    ld e, a                                       ; $661e: $5f
    ld [hl+], a                                   ; $661f: $22
    sbc b                                         ; $6620: $98
    add hl, bc                                    ; $6621: $09
    ld bc, $1002                                  ; $6622: $01 $02 $10
    sbc a                                         ; $6625: $9f
    ld a, [de]                                    ; $6626: $1a
    or e                                          ; $6627: $b3
    add hl, bc                                    ; $6628: $09
    ret nz                                        ; $6629: $c0

    add hl, hl                                    ; $662a: $29
    cp [hl]                                       ; $662b: $be
    nop                                           ; $662c: $00
    xor l                                         ; $662d: $ad

jr_0c1_662e:
    reti                                          ; $662e: $d9


    ld bc, $c240                                  ; $662f: $01 $40 $c2
    ld a, [de]                                    ; $6632: $1a
    ld b, b                                       ; $6633: $40
    sbc b                                         ; $6634: $98
    ld [de], a                                    ; $6635: $12
    ld l, h                                       ; $6636: $6c
    db $10                                        ; $6637: $10
    ld c, $b8                                     ; $6638: $0e $b8
    ld [de], a                                    ; $663a: $12
    xor a                                         ; $663b: $af
    rst $18                                       ; $663c: $df
    ld [bc], a                                    ; $663d: $02
    ld c, $6c                                     ; $663e: $0e $6c
    ld [de], a                                    ; $6640: $12
    ld hl, $2ae0                                  ; $6641: $21 $e0 $2a
    or [hl]                                       ; $6644: $b6
    ld a, [bc]                                    ; $6645: $0a
    ld bc, $7f0b                                  ; $6646: $01 $0b $7f
    ld [bc], a                                    ; $6649: $02
    xor a                                         ; $664a: $af
    cp d                                          ; $664b: $ba
    ld [bc], a                                    ; $664c: $02
    ld bc, $0a75                                  ; $664d: $01 $75 $0a
    ld hl, $2a7e                                  ; $6650: $21 $7e $2a

jr_0c1_6653:
    nop                                           ; $6653: $00
    ld b, e                                       ; $6654: $43
    jr nz, jr_0c1_6657                            ; $6655: $20 $00

jr_0c1_6657:
    inc e                                         ; $6657: $1c
    inc bc                                        ; $6658: $03
    ld a, h                                       ; $6659: $7c
    dec h                                         ; $665a: $25
    inc sp                                        ; $665b: $33
    ld bc, $1045                                  ; $665c: $01 $45 $10
    sbc [hl]                                      ; $665f: $9e
    ld b, b                                       ; $6660: $40
    rst $18                                       ; $6661: $df
    ld [de], a                                    ; $6662: $12
    ld l, l                                       ; $6663: $6d
    ld de, $2500                                  ; $6664: $11 $00 $25
    inc sp                                        ; $6667: $33
    dec h                                         ; $6668: $25
    ld b, b                                       ; $6669: $40
    ld d, a                                       ; $666a: $57
    jr nc, @+$40                                  ; $666b: $30 $3e

    inc sp                                        ; $666d: $33
    ld b, b                                       ; $666e: $40
    dec b                                         ; $666f: $05
    dec c                                         ; $6670: $0d
    inc bc                                        ; $6671: $03
    ld a, $10                                     ; $6672: $3e $10
    sbc a                                         ; $6674: $9f
    jr nz, jr_0c1_6677                            ; $6675: $20 $00

jr_0c1_6677:
    dec h                                         ; $6677: $25
    jr nz, jr_0c1_66a3                            ; $6678: $20 $29

    dec bc                                        ; $667a: $0b
    cp d                                          ; $667b: $ba
    jr nc, jr_0c1_66e3                            ; $667c: $30 $65

    jr jr_0c1_66a0                                ; $667e: $18 $20

    jr jr_0c1_662e                                ; $6680: $18 $ac

    nop                                           ; $6682: $00
    ld sp, $0501                                  ; $6683: $31 $01 $05
    db $e3                                        ; $6686: $e3
    ld [bc], a                                    ; $6687: $02
    ld l, c                                       ; $6688: $69
    inc bc                                        ; $6689: $03
    ld h, c                                       ; $668a: $61
    nop                                           ; $668b: $00
    ld h, b                                       ; $668c: $60
    sbc c                                         ; $668d: $99
    jr nz, jr_0c1_6610                            ; $668e: $20 $80

    add h                                         ; $6690: $84
    dec sp                                        ; $6691: $3b
    ld bc, $4540                                  ; $6692: $01 $40 $45
    ld b, c                                       ; $6695: $41
    ld bc, $0060                                  ; $6696: $01 $60 $00
    rrca                                          ; $6699: $0f
    ld bc, $0007                                  ; $669a: $01 $07 $00
    ld h, b                                       ; $669d: $60
    rra                                           ; $669e: $1f
    nop                                           ; $669f: $00

jr_0c1_66a0:
    jr nz, jr_0c1_66ba                            ; $66a0: $20 $18

    ld d, c                                       ; $66a2: $51

jr_0c1_66a3:
    inc bc                                        ; $66a3: $03
    and d                                         ; $66a4: $a2
    dec hl                                        ; $66a5: $2b
    or a                                          ; $66a6: $b7
    jp z, Jump_0c1_670b                           ; $66a7: $ca $0b $67

    jr c, jr_0c1_66bc                             ; $66aa: $38 $10

    call nc, Call_0c1_6103                        ; $66ac: $d4 $03 $61
    rlca                                          ; $66af: $07
    db $10                                        ; $66b0: $10
    pop bc                                        ; $66b1: $c1
    inc sp                                        ; $66b2: $33
    dec d                                         ; $66b3: $15
    jr jr_0c1_66ba                                ; $66b4: $18 $04

    ld h, b                                       ; $66b6: $60
    ld h, c                                       ; $66b7: $61
    ld h, c                                       ; $66b8: $61
    nop                                           ; $66b9: $00

jr_0c1_66ba:
    ld h, l                                       ; $66ba: $65
    ld e, c                                       ; $66bb: $59

jr_0c1_66bc:
    ld [$6067], sp                                ; $66bc: $08 $67 $60
    ret nz                                        ; $66bf: $c0

    ld bc, $f008                                  ; $66c0: $01 $08 $f0
    inc de                                        ; $66c3: $13
    inc d                                         ; $66c4: $14
    nop                                           ; $66c5: $00
    ld [de], a                                    ; $66c6: $12
    nop                                           ; $66c7: $00
    ld c, b                                       ; $66c8: $48
    ld bc, $8060                                  ; $66c9: $01 $60 $80
    ld bc, $23f8                                  ; $66cc: $01 $f8 $23
    jr nz, jr_0c1_6653                            ; $66cf: $20 $82

    add e                                         ; $66d1: $83
    add h                                         ; $66d2: $84
    add l                                         ; $66d3: $85
    add [hl]                                      ; $66d4: $86
    nop                                           ; $66d5: $00
    add a                                         ; $66d6: $87
    adc b                                         ; $66d7: $88
    adc c                                         ; $66d8: $89
    adc d                                         ; $66d9: $8a
    adc e                                         ; $66da: $8b
    adc h                                         ; $66db: $8c
    adc l                                         ; $66dc: $8d
    adc [hl]                                      ; $66dd: $8e
    db $10                                        ; $66de: $10
    adc a                                         ; $66df: $8f
    sub b                                         ; $66e0: $90
    sub c                                         ; $66e1: $91
    ld a, [hl-]                                   ; $66e2: $3a

jr_0c1_66e3:
    ld [$9392], sp                                ; $66e3: $08 $92 $93
    sub h                                         ; $66e6: $94
    sub l                                         ; $66e7: $95
    nop                                           ; $66e8: $00
    sub [hl]                                      ; $66e9: $96
    sub a                                         ; $66ea: $97
    sbc b                                         ; $66eb: $98
    sbc c                                         ; $66ec: $99
    sbc d                                         ; $66ed: $9a
    sbc e                                         ; $66ee: $9b
    sbc h                                         ; $66ef: $9c
    sbc l                                         ; $66f0: $9d
    ld [$9f9e], sp                                ; $66f1: $08 $9e $9f
    and b                                         ; $66f4: $a0
    and c                                         ; $66f5: $a1
    ld c, [hl]                                    ; $66f6: $4e
    ld [$a3a2], sp                                ; $66f7: $08 $a2 $a3
    and h                                         ; $66fa: $a4
    nop                                           ; $66fb: $00
    and l                                         ; $66fc: $a5
    and [hl]                                      ; $66fd: $a6
    and a                                         ; $66fe: $a7
    xor b                                         ; $66ff: $a8
    xor c                                         ; $6700: $a9
    xor d                                         ; $6701: $aa
    xor e                                         ; $6702: $ab
    xor h                                         ; $6703: $ac
    inc b                                         ; $6704: $04
    xor l                                         ; $6705: $ad
    xor [hl]                                      ; $6706: $ae
    xor a                                         ; $6707: $af
    or b                                          ; $6708: $b0
    or c                                          ; $6709: $b1
    ld h, d                                       ; $670a: $62

Jump_0c1_670b:
    ld [$b3b2], sp                                ; $670b: $08 $b2 $b3
    nop                                           ; $670e: $00
    or h                                          ; $670f: $b4
    or l                                          ; $6710: $b5
    or [hl]                                       ; $6711: $b6
    or a                                          ; $6712: $b7
    cp b                                          ; $6713: $b8
    cp c                                          ; $6714: $b9
    cp d                                          ; $6715: $ba
    cp e                                          ; $6716: $bb
    ld [bc], a                                    ; $6717: $02
    cp h                                          ; $6718: $bc
    cp l                                          ; $6719: $bd
    cp [hl]                                       ; $671a: $be
    cp a                                          ; $671b: $bf
    ret nz                                        ; $671c: $c0

    pop bc                                        ; $671d: $c1
    halt                                          ; $671e: $76
    ld [$00c2], sp                                ; $671f: $08 $c2 $00
    jp $c5c4                                      ; $6722: $c3 $c4 $c5


    add $c7                                       ; $6725: $c6 $c7
    sbc [hl]                                      ; $6727: $9e
    ret z                                         ; $6728: $c8

    ret                                           ; $6729: $c9


    ld bc, $cbca                                  ; $672a: $01 $ca $cb
    call z, $cecd                                 ; $672d: $cc $cd $ce
    rst $08                                       ; $6730: $cf
    ret nc                                        ; $6731: $d0

    adc d                                         ; $6732: $8a
    ld [$d100], sp                                ; $6733: $08 $00 $d1
    jp nc, $d4d3                                  ; $6736: $d2 $d3 $d4

    push de                                       ; $6739: $d5
    sub $d7                                       ; $673a: $d6 $d7
    xor a                                         ; $673c: $af
    nop                                           ; $673d: $00
    ret c                                         ; $673e: $d8

    or c                                          ; $673f: $b1
    reti                                          ; $6740: $d9


    jp c, $dbcf                                   ; $6741: $da $cf $db

    call c, $80dd                                 ; $6744: $dc $dd $80
    sbc [hl]                                      ; $6747: $9e
    ld [$dfde], sp                                ; $6748: $08 $de $df
    ldh [$e1], a                                  ; $674b: $e0 $e1
    cp h                                          ; $674d: $bc
    ld [c], a                                     ; $674e: $e2
    db $e3                                        ; $674f: $e3
    nop                                           ; $6750: $00
    cp a                                          ; $6751: $bf
    db $e4                                        ; $6752: $e4
    push hl                                       ; $6753: $e5
    and $e7                                       ; $6754: $e6 $e7
    add sp, -$17                                  ; $6756: $e8 $e9
    ld [$eb40], a                                 ; $6758: $ea $40 $eb
    or d                                          ; $675b: $b2
    ld [$edec], sp                                ; $675c: $08 $ec $ed
    xor $ca                                       ; $675f: $ee $ca
    set 5, a                                      ; $6761: $cb $ef
    nop                                           ; $6763: $00

jr_0c1_6764:
    ldh a, [$ce]                                  ; $6764: $f0 $ce
    pop af                                        ; $6766: $f1
    ret nc                                        ; $6767: $d0

    ld a, [c]                                     ; $6768: $f2
    di                                            ; $6769: $f3
    db $f4                                        ; $676a: $f4
    push af                                       ; $676b: $f5
    jr nz, jr_0c1_6764                            ; $676c: $20 $f6

    rst $30                                       ; $676e: $f7
    add $08                                       ; $676f: $c6 $08
    ld hl, sp-$51                                 ; $6771: $f8 $af
    ld sp, hl                                     ; $6773: $f9
    ld a, [$81fb]                                 ; $6774: $fa $fb $81
    ld [hl], $10                                  ; $6777: $36 $10
    db $fc                                        ; $6779: $fc
    db $fd                                        ; $677a: $fd
    cp $ff                                        ; $677b: $fe $ff
    nop                                           ; $677d: $00
    ld bc, $08da                                  ; $677e: $01 $da $08
    db $10                                        ; $6781: $10
    ld [bc], a                                    ; $6782: $02
    inc bc                                        ; $6783: $03
    inc b                                         ; $6784: $04
    ld [hl], $20                                  ; $6785: $36 $20
    dec b                                         ; $6787: $05
    ld b, $07                                     ; $6788: $06 $07
    ld [$0928], sp                                ; $678a: $08 $28 $09
    ld a, [bc]                                    ; $678d: $0a
    xor $08                                       ; $678e: $ee $08
    dec bc                                        ; $6790: $0b
    ld [hl], $18                                  ; $6791: $36 $18
    inc c                                         ; $6793: $0c
    dec c                                         ; $6794: $0d
    rst $30                                       ; $6795: $f7
    inc bc                                        ; $6796: $03
    ld c, $0f                                     ; $6797: $0e $0f
    db $10                                        ; $6799: $10
    ld de, $1312                                  ; $679a: $11 $12 $13
    ld [bc], a                                    ; $679d: $02
    add hl, bc                                    ; $679e: $09
    ld [hl], $20                                  ; $679f: $36 $20
    nop                                           ; $67a1: $00
    inc d                                         ; $67a2: $14
    dec d                                         ; $67a3: $15
    ld d, $17                                     ; $67a4: $16 $17
    jr jr_0c1_67c1                                ; $67a6: $18 $19

    ld a, [de]                                    ; $67a8: $1a
    dec de                                        ; $67a9: $1b
    ld h, b                                       ; $67aa: $60
    inc e                                         ; $67ab: $1c
    ld d, $09                                     ; $67ac: $16 $09
    ld [hl], $20                                  ; $67ae: $36 $20
    dec e                                         ; $67b0: $1d
    add hl, bc                                    ; $67b1: $09
    ld a, [bc]                                    ; $67b2: $0a
    ld e, $1f                                     ; $67b3: $1e $1f
    dec bc                                        ; $67b5: $0b
    jr nz, jr_0c1_67d9                            ; $67b6: $20 $21

    ld [hl+], a                                   ; $67b8: $22
    inc hl                                        ; $67b9: $23
    ld a, [hl+]                                   ; $67ba: $2a
    add hl, bc                                    ; $67bb: $09
    inc h                                         ; $67bc: $24
    ld l, h                                       ; $67bd: $6c
    nop                                           ; $67be: $00
    ld [hl], $08                                  ; $67bf: $36 $08

jr_0c1_67c1:
    nop                                           ; $67c1: $00
    dec h                                         ; $67c2: $25
    inc de                                        ; $67c3: $13
    ld h, $27                                     ; $67c4: $26 $27
    jr z, @+$2b                                   ; $67c6: $28 $29

    dec hl                                        ; $67c8: $2b
    dec hl                                        ; $67c9: $2b
    add b                                         ; $67ca: $80
    ld a, $09                                     ; $67cb: $3e $09
    inc l                                         ; $67cd: $2c
    rst $38                                       ; $67ce: $ff
    dec l                                         ; $67cf: $2d
    ld l, $2f                                     ; $67d0: $2e $2f
    jr nc, jr_0c1_6805                            ; $67d2: $30 $31

    ld bc, $3332                                  ; $67d4: $01 $32 $33
    inc [hl]                                      ; $67d7: $34
    dec [hl]                                      ; $67d8: $35

jr_0c1_67d9:
    ld [hl], $2a                                  ; $67d9: $36 $2a
    add c                                         ; $67db: $81
    ld d, b                                       ; $67dc: $50
    xor c                                         ; $67dd: $a9
    ld e, c                                       ; $67de: $59
    ld bc, $6001                                  ; $67df: $01 $01 $60
    ld [bc], a                                    ; $67e2: $02
    ld bc, $1400                                  ; $67e3: $01 $00 $14
    ld d, b                                       ; $67e6: $50
    inc bc                                        ; $67e7: $03
    inc bc                                        ; $67e8: $03
    inc d                                         ; $67e9: $14
    jr nz, jr_0c1_6822                            ; $67ea: $20 $36

    ld [bc], a                                    ; $67ec: $02
    inc bc                                        ; $67ed: $03
    inc e                                         ; $67ee: $1c
    ld [$1804], sp                                ; $67ef: $08 $04 $18
    inc bc                                        ; $67f2: $03
    ld bc, $1400                                  ; $67f3: $01 $00 $14
    db $10                                        ; $67f6: $10
    ld [bc], a                                    ; $67f7: $02
    add e                                         ; $67f8: $83
    ld sp, $0600                                  ; $67f9: $31 $00 $06
    ld b, $01                                     ; $67fc: $06 $01
    ld bc, $0906                                  ; $67fe: $01 $06 $09
    ld [$2028], sp                                ; $6801: $08 $28 $20
    rla                                           ; $6804: $17

jr_0c1_6805:
    ld [bc], a                                    ; $6805: $02
    ld bc, $1306                                  ; $6806: $01 $06 $13
    ld [$1701], sp                                ; $6809: $08 $01 $17
    ld [$1036], sp                                ; $680c: $08 $36 $10
    ld d, [hl]                                    ; $680f: $56
    ld [$25c7], sp                                ; $6810: $08 $c7 $25
    nop                                           ; $6813: $00
    ld [bc], a                                    ; $6814: $02
    nop                                           ; $6815: $00
    ld b, $05                                     ; $6816: $06 $05
    dec b                                         ; $6818: $05
    ld l, $00                                     ; $6819: $2e $00
    dec a                                         ; $681b: $3d

jr_0c1_681c:
    ld [$0059], sp                                ; $681c: $08 $59 $00
    jp Jump_000_1038                              ; $681f: $c3 $38 $10


jr_0c1_6822:
    inc d                                         ; $6822: $14
    jr jr_0c1_6826                                ; $6823: $18 $01

    nop                                           ; $6825: $00

jr_0c1_6826:
    rlca                                          ; $6826: $07
    rlca                                          ; $6827: $07
    ld h, h                                       ; $6828: $64
    db $10                                        ; $6829: $10
    ld c, h                                       ; $682a: $4c
    nop                                           ; $682b: $00
    ld b, b                                       ; $682c: $40
    ld [bc], a                                    ; $682d: $02
    inc a                                         ; $682e: $3c
    ld [$0601], sp                                ; $682f: $08 $01 $06
    nop                                           ; $6832: $00
    rlca                                          ; $6833: $07
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    inc h                                         ; $6836: $24

jr_0c1_6837:
    rlca                                          ; $6837: $07
    inc b                                         ; $6838: $04
    jr z, @+$0a                                   ; $6839: $28 $08

    ld bc, $3601                                  ; $683b: $01 $01 $36
    db $10                                        ; $683e: $10
    ld bc, $fd00                                  ; $683f: $01 $00 $fd
    ld de, $1400                                  ; $6842: $11 $00 $14
    jr nz, @-$5a                                  ; $6845: $20 $a4

    nop                                           ; $6847: $00
    ld c, d                                       ; $6848: $4a
    ld [$0012], sp                                ; $6849: $08 $12 $00
    inc d                                         ; $684c: $14
    jr c, @+$05                                   ; $684d: $38 $03

    add hl, sp                                    ; $684f: $39
    nop                                           ; $6850: $00
    call c, $1036                                 ; $6851: $dc $36 $10
    ld d, $18                                     ; $6854: $16 $18
    inc b                                         ; $6856: $04
    ld a, b                                       ; $6857: $78
    jr nz, jr_0c1_6890                            ; $6858: $20 $36

    jr @+$2c                                      ; $685a: $18 $2a

    ld [$0404], sp                                ; $685c: $08 $04 $04
    cp [hl]                                       ; $685f: $be
    inc d                                         ; $6860: $14
    db $10                                        ; $6861: $10
    inc bc                                        ; $6862: $03
    ld [hl], $28                                  ; $6863: $36 $28
    ld de, $1408                                  ; $6865: $11 $08 $14
    nop                                           ; $6868: $00
    ld [bc], a                                    ; $6869: $02
    add hl, bc                                    ; $686a: $09
    ld [hl], $20                                  ; $686b: $36 $20
    rlca                                          ; $686d: $07
    ld a, c                                       ; $686e: $79
    rlca                                          ; $686f: $07
    inc de                                        ; $6870: $13
    jr jr_0c1_6888                                ; $6871: $18 $15

    db $10                                        ; $6873: $10
    ld [hl], $38                                  ; $6874: $36 $38
    inc d                                         ; $6876: $14
    jr z, @+$04                                   ; $6877: $28 $02

    ld [bc], a                                    ; $6879: $02
    ld [hl], $38                                  ; $687a: $36 $38
    rst $38                                       ; $687c: $ff
    inc d                                         ; $687d: $14
    ld b, b                                       ; $687e: $40
    ld [hl], $38                                  ; $687f: $36 $38
    ld d, c                                       ; $6881: $51
    db $10                                        ; $6882: $10
    inc de                                        ; $6883: $13
    add hl, bc                                    ; $6884: $09
    call $2d00                                    ; $6885: $cd $00 $2d

jr_0c1_6888:
    ld hl, $0087                                  ; $6888: $21 $87 $00
    ld d, e                                       ; $688b: $53
    ld de, $0014                                  ; $688c: $11 $14 $00
    ld [de], a                                    ; $688f: $12

jr_0c1_6890:
    nop                                           ; $6890: $00
    ld h, l                                       ; $6891: $65
    ld bc, $8060                                  ; $6892: $01 $60 $80
    ld bc, $23f8                                  ; $6895: $01 $f8 $23
    jr z, jr_0c1_681c                             ; $6898: $28 $82

    add e                                         ; $689a: $83
    add e                                         ; $689b: $83
    add h                                         ; $689c: $84
    add l                                         ; $689d: $85
    nop                                           ; $689e: $00
    add [hl]                                      ; $689f: $86
    add a                                         ; $68a0: $87
    adc b                                         ; $68a1: $88
    adc c                                         ; $68a2: $89
    adc d                                         ; $68a3: $8a
    adc e                                         ; $68a4: $8b
    adc h                                         ; $68a5: $8c
    adc l                                         ; $68a6: $8d
    jr nz, jr_0c1_6837                            ; $68a7: $20 $8e

    adc a                                         ; $68a9: $8f
    ld a, [hl-]                                   ; $68aa: $3a
    ld [$9190], sp                                ; $68ab: $08 $90 $91
    sub d                                         ; $68ae: $92
    sub e                                         ; $68af: $93
    sub h                                         ; $68b0: $94
    nop                                           ; $68b1: $00
    sub l                                         ; $68b2: $95
    sub [hl]                                      ; $68b3: $96
    sub a                                         ; $68b4: $97
    sbc b                                         ; $68b5: $98
    sbc c                                         ; $68b6: $99
    sbc d                                         ; $68b7: $9a
    sbc e                                         ; $68b8: $9b
    sbc h                                         ; $68b9: $9c
    db $10                                        ; $68ba: $10
    sbc l                                         ; $68bb: $9d
    sbc [hl]                                      ; $68bc: $9e
    sbc a                                         ; $68bd: $9f
    ld c, [hl]                                    ; $68be: $4e
    db $10                                        ; $68bf: $10
    add e                                         ; $68c0: $83
    adc [hl]                                      ; $68c1: $8e
    adc l                                         ; $68c2: $8d
    adc h                                         ; $68c3: $8c
    nop                                           ; $68c4: $00
    adc e                                         ; $68c5: $8b
    adc d                                         ; $68c6: $8a
    adc c                                         ; $68c7: $89
    adc b                                         ; $68c8: $88
    add a                                         ; $68c9: $87
    add [hl]                                      ; $68ca: $86
    add l                                         ; $68cb: $85
    add h                                         ; $68cc: $84
    db $10                                        ; $68cd: $10
    add e                                         ; $68ce: $83
    sbc h                                         ; $68cf: $9c
    and b                                         ; $68d0: $a0
    ld h, d                                       ; $68d1: $62
    db $10                                        ; $68d2: $10
    and c                                         ; $68d3: $a1
    sbc [hl]                                      ; $68d4: $9e
    sbc l                                         ; $68d5: $9d
    and d                                         ; $68d6: $a2
    nop                                           ; $68d7: $00
    sbc e                                         ; $68d8: $9b
    sbc d                                         ; $68d9: $9a
    and e                                         ; $68da: $a3
    and h                                         ; $68db: $a4
    and l                                         ; $68dc: $a5
    sub [hl]                                      ; $68dd: $96
    sub l                                         ; $68de: $95
    sub h                                         ; $68df: $94
    db $10                                        ; $68e0: $10
    sub e                                         ; $68e1: $93
    sub d                                         ; $68e2: $92
    sub c                                         ; $68e3: $91
    halt                                          ; $68e4: $76
    ld [$a7a6], sp                                ; $68e5: $08 $a6 $a7
    xor b                                         ; $68e8: $a8
    xor c                                         ; $68e9: $a9
    nop                                           ; $68ea: $00
    xor d                                         ; $68eb: $aa
    add b                                         ; $68ec: $80
    xor h                                         ; $68ed: $ac
    xor l                                         ; $68ee: $ad

jr_0c1_68ef:
    sbc h                                         ; $68ef: $9c
    xor [hl]                                      ; $68f0: $ae
    xor a                                         ; $68f1: $af
    or b                                          ; $68f2: $b0
    ld [$b2b1], sp                                ; $68f3: $08 $b1 $b2
    or e                                          ; $68f6: $b3
    sub b                                         ; $68f7: $90
    adc d                                         ; $68f8: $8a
    ld [$b5b4], sp                                ; $68f9: $08 $b4 $b5
    add e                                         ; $68fc: $83
    nop                                           ; $68fd: $00
    add b                                         ; $68fe: $80
    or [hl]                                       ; $68ff: $b6
    or a                                          ; $6900: $b7
    cp b                                          ; $6901: $b8
    cp c                                          ; $6902: $b9
    cp d                                          ; $6903: $ba
    cp e                                          ; $6904: $bb
    cp h                                          ; $6905: $bc
    ld [$bebd], sp                                ; $6906: $08 $bd $be
    cp a                                          ; $6909: $bf
    ret nz                                        ; $690a: $c0

    sbc l                                         ; $690b: $9d
    db $10                                        ; $690c: $10
    pop bc                                        ; $690d: $c1
    jp nz, Jump_000_0080                          ; $690e: $c2 $80 $00

    adc c                                         ; $6911: $89
    jp $c5c4                                      ; $6912: $c3 $c4 $c5


    add $c7                                       ; $6915: $c6 $c7
    ret z                                         ; $6917: $c8

    ret                                           ; $6918: $c9


    ld [$80ca], sp                                ; $6919: $08 $ca $80
    sub d                                         ; $691c: $92
    res 6, c                                      ; $691d: $cb $b1
    db $10                                        ; $691f: $10
    call z, $cecd                                 ; $6920: $cc $cd $ce
    nop                                           ; $6923: $00
    jp nz, $d0cf                                  ; $6924: $c2 $cf $d0

    pop de                                        ; $6927: $d1
    xor b                                         ; $6928: $a8
    jp nc, $aad3                                  ; $6929: $d2 $d3 $aa

    inc b                                         ; $692c: $04
    add b                                         ; $692d: $80
    call nc, $d599                                ; $692e: $d4 $99 $d5
    sub $c6                                       ; $6931: $d6 $c6
    ld [$d8d7], sp                                ; $6933: $08 $d7 $d8
    add b                                         ; $6936: $80
    ld d, $08                                     ; $6937: $16 $08
    reti                                          ; $6939: $d9


    adc c                                         ; $693a: $89
    jp c, $b6db                                   ; $693b: $da $db $b6

    or a                                          ; $693e: $b7
    call c, $dd12                                 ; $693f: $dc $12 $dd
    sbc $fb                                       ; $6942: $de $fb
    jp c, $e008                                   ; $6944: $da $08 $e0

    pop hl                                        ; $6947: $e1
    ld d, $18                                     ; $6948: $16 $18
    ld [c], a                                     ; $694a: $e2
    ld [bc], a                                    ; $694b: $02
    db $e3                                        ; $694c: $e3
    db $e4                                        ; $694d: $e4
    push hl                                       ; $694e: $e5
    sub d                                         ; $694f: $92
    and $93                                       ; $6950: $e6 $93
    db $ed                                        ; $6952: $ed
    db $10                                        ; $6953: $10
    rst $20                                       ; $6954: $e7
    db $10                                        ; $6955: $10
    add sp, -$17                                  ; $6956: $e8 $e9
    ld [$102c], a                                 ; $6958: $ea $2c $10
    db $eb                                        ; $695b: $eb
    db $ec                                        ; $695c: $ec
    db $ed                                        ; $695d: $ed
    xor $10                                       ; $695e: $ee $10
    rst $28                                       ; $6960: $ef
    ldh a, [$f1]                                  ; $6961: $f0 $f1
    ld [bc], a                                    ; $6963: $02
    add hl, bc                                    ; $6964: $09
    ld a, [c]                                     ; $6965: $f2
    di                                            ; $6966: $f3
    db $f4                                        ; $6967: $f4
    push af                                       ; $6968: $f5
    ld [hl+], a                                   ; $6969: $22
    or $f7                                        ; $696a: $f6 $f7
    ld b, d                                       ; $696c: $42
    jr jr_0c1_68ef                                ; $696d: $18 $80

    add b                                         ; $696f: $80
    ld a, [$103c]                                 ; $6970: $fa $3c $10
    db $fc                                        ; $6973: $fc
    ld bc, $fefd                                  ; $6974: $01 $fd $fe
    rst $38                                       ; $6977: $ff
    nop                                           ; $6978: $00
    ld bc, $0302                                  ; $6979: $01 $02 $03
    ld e, b                                       ; $697c: $58
    jr jr_0c1_69bf                                ; $697d: $18 $40

    inc b                                         ; $697f: $04
    ld d, b                                       ; $6980: $50
    db $10                                        ; $6981: $10
    dec b                                         ; $6982: $05
    ld b, $07                                     ; $6983: $06 $07
    ld [$0a09], sp                                ; $6985: $08 $09 $0a
    inc c                                         ; $6988: $0c
    dec bc                                        ; $6989: $0b
    inc c                                         ; $698a: $0c
    dec c                                         ; $698b: $0d
    ld c, $2c                                     ; $698c: $0e $2c
    jr z, @+$42                                   ; $698e: $28 $40

    add hl, bc                                    ; $6990: $09
    ld de, $0012                                  ; $6991: $11 $12 $00
    inc de                                        ; $6994: $13
    inc d                                         ; $6995: $14
    dec d                                         ; $6996: $15
    ld d, $df                                     ; $6997: $16 $df
    xor e                                         ; $6999: $ab
    db $10                                        ; $699a: $10
    ld sp, hl                                     ; $699b: $f9
    ld a, [bc]                                    ; $699c: $0a
    rst $10                                       ; $699d: $d7
    ld hl, sp+$0f                                 ; $699e: $f8 $0f
    add c                                         ; $69a0: $81
    ld d, d                                       ; $69a1: $52
    sbc c                                         ; $69a2: $99
    nop                                           ; $69a3: $00
    ld bc, $0308                                  ; $69a4: $01 $08 $03
    ret nz                                        ; $69a7: $c0

    ld b, $10                                     ; $69a8: $06 $10
    dec b                                         ; $69aa: $05
    add sp, $03                                   ; $69ab: $e8 $03
    ld [bc], a                                    ; $69ad: $02
    ld h, e                                       ; $69ae: $63
    ld b, $03                                     ; $69af: $06 $03
    ld [bc], a                                    ; $69b1: $02
    nop                                           ; $69b2: $00
    inc bc                                        ; $69b3: $03
    inc bc                                        ; $69b4: $03
    ld [bc], a                                    ; $69b5: $02
    ld [bc], a                                    ; $69b6: $02
    inc bc                                        ; $69b7: $03
    ld [bc], a                                    ; $69b8: $02
    ld bc, $8103                                  ; $69b9: $01 $03 $81
    inc [hl]                                      ; $69bc: $34
    db $10                                        ; $69bd: $10
    ld [bc], a                                    ; $69be: $02

jr_0c1_69bf:
    inc bc                                        ; $69bf: $03
    ld bc, $0601                                  ; $69c0: $01 $01 $06
    ld b, $03                                     ; $69c3: $06 $03
    nop                                           ; $69c5: $00
    ret nz                                        ; $69c6: $c0

    inc b                                         ; $69c7: $04
    ld [$2014], sp                                ; $69c8: $08 $14 $20
    ld bc, $2162                                  ; $69cb: $01 $62 $21
    ld hl, $2622                                  ; $69ce: $21 $22 $26
    nop                                           ; $69d1: $00
    inc hl                                        ; $69d2: $23
    ld [hl+], a                                   ; $69d3: $22
    ld h, $26                                     ; $69d4: $26 $26
    ld h, $22                                     ; $69d6: $26 $22
    ld [hl+], a                                   ; $69d8: $22
    ld b, d                                       ; $69d9: $42
    ld b, b                                       ; $69da: $40
    ld b, $14                                     ; $69db: $06 $14
    jr @+$05                                      ; $69dd: $18 $03

jr_0c1_69df:
    inc hl                                        ; $69df: $23
    ld hl, $2606                                  ; $69e0: $21 $06 $26
    ld hl, $2d81                                  ; $69e3: $21 $81 $2d
    nop                                           ; $69e6: $00
    ld h, $26                                     ; $69e7: $26 $26
    ld hl, $2621                                  ; $69e9: $21 $21 $26
    ld [hl+], a                                   ; $69ec: $22
    jr z, jr_0c1_69ff                             ; $69ed: $28 $10

    inc bc                                        ; $69ef: $03
    ld bc, $0306                                  ; $69f0: $01 $06 $03
    dec b                                         ; $69f3: $05
    dec b                                         ; $69f4: $05
    ld [bc], a                                    ; $69f5: $02
    ld b, c                                       ; $69f6: $41
    db $10                                        ; $69f7: $10
    ld bc, $9700                                  ; $69f8: $01 $00 $97
    inc d                                         ; $69fb: $14
    jr nz, jr_0c1_6a41                            ; $69fc: $20 $43

    nop                                           ; $69fe: $00

jr_0c1_69ff:
    inc d                                         ; $69ff: $14
    nop                                           ; $6a00: $00
    ld [bc], a                                    ; $6a01: $02
    ld [de], a                                    ; $6a02: $12
    db $10                                        ; $6a03: $10
    rla                                           ; $6a04: $17
    nop                                           ; $6a05: $00
    sbc [hl]                                      ; $6a06: $9e
    ld [$0701], sp                                ; $6a07: $08 $01 $07
    ld bc, $2207                                  ; $6a0a: $01 $07 $22
    ld b, $03                                     ; $6a0d: $06 $03
    inc bc                                        ; $6a0f: $03
    ld h, $18                                     ; $6a10: $26 $18
    ret z                                         ; $6a12: $c8

    ld b, e                                       ; $6a13: $43
    nop                                           ; $6a14: $00
    xor h                                         ; $6a15: $ac
    jr @+$09                                      ; $6a16: $18 $07

    rlca                                          ; $6a18: $07
    ld a, b                                       ; $6a19: $78
    nop                                           ; $6a1a: $00
    inc hl                                        ; $6a1b: $23
    ld b, $06                                     ; $6a1c: $06 $06
    jr jr_0c1_6a25                                ; $6a1e: $18 $05

    dec b                                         ; $6a20: $05
    ld b, $1d                                     ; $6a21: $06 $1d
    nop                                           ; $6a23: $00
    ret nz                                        ; $6a24: $c0

jr_0c1_6a25:
    jr nz, @+$09                                  ; $6a25: $20 $07

    rlca                                          ; $6a27: $07
    rlca                                          ; $6a28: $07
    ld a, [bc]                                    ; $6a29: $0a
    inc bc                                        ; $6a2a: $03
    ld b, d                                       ; $6a2b: $42
    ld bc, $1401                                  ; $6a2c: $01 $01 $14
    ld [$3c02], sp                                ; $6a2f: $08 $02 $3c
    db $10                                        ; $6a32: $10
    inc b                                         ; $6a33: $04
    ld h, a                                       ; $6a34: $67
    inc b                                         ; $6a35: $04
    dec l                                         ; $6a36: $2d
    jr jr_0c1_69df                                ; $6a37: $18 $a6

    ld [$0122], sp                                ; $6a39: $08 $22 $01
    inc d                                         ; $6a3c: $14
    jr z, @+$18                                   ; $6a3d: $28 $16

    jr @+$44                                      ; $6a3f: $18 $42

jr_0c1_6a41:
    ld [$c8f7], sp                                ; $6a41: $08 $f7 $c8
    ld [$08fd], sp                                ; $6a44: $08 $fd $08
    inc d                                         ; $6a47: $14
    ld [$2816], sp                                ; $6a48: $08 $16 $28
    ld bc, $015c                                  ; $6a4b: $01 $5c $01
    ld a, d                                       ; $6a4e: $7a
    ld [$1814], sp                                ; $6a4f: $08 $14 $18
    or e                                          ; $6a52: $b3
    inc l                                         ; $6a53: $2c
    jr z, jr_0c1_6a59                             ; $6a54: $28 $03

    inc d                                         ; $6a56: $14
    ld d, b                                       ; $6a57: $50
    ld e, b                                       ; $6a58: $58

jr_0c1_6a59:
    db $10                                        ; $6a59: $10
    rlca                                          ; $6a5a: $07
    rlca                                          ; $6a5b: $07
    call nz, Call_000_1400                        ; $6a5c: $c4 $00 $14
    ld c, b                                       ; $6a5f: $48
    ldh [$6e], a                                  ; $6a60: $e0 $6e
    ld [$0840], sp                                ; $6a62: $08 $40 $08
    ld c, [hl]                                    ; $6a65: $4e
    ld a, c                                       ; $6a66: $79
    ld bc, $1401                                  ; $6a67: $01 $01 $14
    nop                                           ; $6a6a: $00
    ld [de], a                                    ; $6a6b: $12
    nop                                           ; $6a6c: $00
    jp nc, RST_00                                 ; $6a6d: $d2 $00 $00

    db $dd                                        ; $6a70: $dd
    sbc $df                                       ; $6a71: $de $df
    ldh [$e1], a                                  ; $6a73: $e0 $e1
    ld [c], a                                     ; $6a75: $e2
    db $e3                                        ; $6a76: $e3
    db $e4                                        ; $6a77: $e4
    ld [$e6e5], sp                                ; $6a78: $08 $e5 $e6
    and $e7                                       ; $6a7b: $e6 $e7
    inc bc                                        ; $6a7d: $03
    nop                                           ; $6a7e: $00
    add sp, -$17                                  ; $6a7f: $e8 $e9
    ld [$eb01], a                                 ; $6a81: $ea $01 $eb
    db $eb                                        ; $6a84: $eb
    rst $28                                       ; $6a85: $ef
    ldh a, [$f1]                                  ; $6a86: $f0 $f1
    ld a, [c]                                     ; $6a88: $f2
    di                                            ; $6a89: $f3
    ld bc, $0060                                  ; $6a8a: $01 $60 $00
    push af                                       ; $6a8d: $f5
    or $f3                                        ; $6a8e: $f6 $f3
    rst $30                                       ; $6a90: $f7
    ld hl, sp-$07                                 ; $6a91: $f8 $f9
    ld a, [$00f3]                                 ; $6a93: $fa $f3 $00
    ei                                            ; $6a96: $fb
    db $fc                                        ; $6a97: $fc
    db $fd                                        ; $6a98: $fd
    cp $f3                                        ; $6a99: $fe $f3
    rst $38                                       ; $6a9b: $ff
    nop                                           ; $6a9c: $00
    ld bc, $0240                                  ; $6a9d: $01 $40 $02
    ld hl, $0400                                  ; $6aa0: $21 $00 $04
    dec b                                         ; $6aa3: $05
    di                                            ; $6aa4: $f3
    ld b, $07                                     ; $6aa5: $06 $07
    ld [$0900], sp                                ; $6aa7: $08 $00 $09
    di                                            ; $6aaa: $f3
    ld a, [bc]                                    ; $6aab: $0a
    dec bc                                        ; $6aac: $0b
    inc c                                         ; $6aad: $0c
    dec c                                         ; $6aae: $0d
    di                                            ; $6aaf: $f3
    ld c, $10                                     ; $6ab0: $0e $10
    rrca                                          ; $6ab2: $0f
    db $10                                        ; $6ab3: $10
    ld de, $0035                                  ; $6ab4: $11 $35 $00
    inc d                                         ; $6ab7: $14
    dec d                                         ; $6ab8: $15
    di                                            ; $6ab9: $f3
    ld d, $00                                     ; $6aba: $16 $00
    rla                                           ; $6abc: $17
    jr @+$1b                                      ; $6abd: $18 $19

    di                                            ; $6abf: $f3
    ld a, [de]                                    ; $6ac0: $1a
    dec de                                        ; $6ac1: $1b
    inc e                                         ; $6ac2: $1c
    dec e                                         ; $6ac3: $1d
    inc b                                         ; $6ac4: $04
    di                                            ; $6ac5: $f3
    ld e, $1f                                     ; $6ac6: $1e $1f
    jr nz, jr_0c1_6aeb                            ; $6ac8: $20 $21

    ld c, c                                       ; $6aca: $49
    nop                                           ; $6acb: $00
    inc h                                         ; $6acc: $24
    dec h                                         ; $6acd: $25
    nop                                           ; $6ace: $00
    di                                            ; $6acf: $f3
    ld h, $27                                     ; $6ad0: $26 $27
    jr z, jr_0c1_6afd                             ; $6ad2: $28 $29

    di                                            ; $6ad4: $f3
    ld a, [hl+]                                   ; $6ad5: $2a
    dec hl                                        ; $6ad6: $2b
    ld bc, $2d2c                                  ; $6ad7: $01 $2c $2d
    di                                            ; $6ada: $f3
    di                                            ; $6adb: $f3
    ld l, $2f                                     ; $6adc: $2e $2f
    jr nc, @+$5f                                  ; $6ade: $30 $5d

    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    inc sp                                        ; $6ae2: $33
    inc [hl]                                      ; $6ae3: $34
    di                                            ; $6ae4: $f3
    dec [hl]                                      ; $6ae5: $35
    ld [hl], $37                                  ; $6ae6: $36 $37
    jr c, jr_0c1_6b23                             ; $6ae8: $38 $39

    nop                                           ; $6aea: $00

jr_0c1_6aeb:
    ld a, [hl-]                                   ; $6aeb: $3a
    dec sp                                        ; $6aec: $3b
    inc a                                         ; $6aed: $3c
    dec a                                         ; $6aee: $3d
    add hl, sp                                    ; $6aef: $39
    jr c, @+$39                                   ; $6af0: $38 $37

    ld [hl], $49                                  ; $6af2: $36 $49
    dec [hl]                                      ; $6af4: $35
    ld [hl], c                                    ; $6af5: $71
    nop                                           ; $6af6: $00
    ccf                                           ; $6af7: $3f
    ld b, b                                       ; $6af8: $40
    halt                                          ; $6af9: $76
    jr nz, @+$43                                  ; $6afa: $20 $41

    ld b, d                                       ; $6afc: $42

jr_0c1_6afd:
    ld a, a                                       ; $6afd: $7f
    jr nc, jr_0c1_6b24                            ; $6afe: $30 $24

    ld b, l                                       ; $6b00: $45
    ld b, [hl]                                    ; $6b01: $46
    adc d                                         ; $6b02: $8a
    jr nz, jr_0c1_6b4c                            ; $6b03: $20 $47

    ld c, b                                       ; $6b05: $48
    sub e                                         ; $6b06: $93
    jr nc, @+$4d                                  ; $6b07: $30 $4b

    ld c, h                                       ; $6b09: $4c
    add h                                         ; $6b0a: $84
    sbc [hl]                                      ; $6b0b: $9e
    ld l, b                                       ; $6b0c: $68
    di                                            ; $6b0d: $f3
    di                                            ; $6b0e: $f3
    ld c, a                                       ; $6b0f: $4f
    ld d, b                                       ; $6b10: $50
    inc d                                         ; $6b11: $14
    ld a, b                                       ; $6b12: $78
    ld d, d                                       ; $6b13: $52
    ld d, e                                       ; $6b14: $53
    sub d                                         ; $6b15: $92
    jr z, jr_0c1_6b90                             ; $6b16: $28 $78

    ld d, [hl]                                    ; $6b18: $56
    ld d, a                                       ; $6b19: $57
    inc a                                         ; $6b1a: $3c
    ld a, b                                       ; $6b1b: $78
    ld e, d                                       ; $6b1c: $5a
    ld e, e                                       ; $6b1d: $5b
    ld d, b                                       ; $6b1e: $50
    ld a, b                                       ; $6b1f: $78
    ld e, a                                       ; $6b20: $5f
    ld c, c                                       ; $6b21: $49
    ld h, b                                       ; $6b22: $60

jr_0c1_6b23:
    ld [bc], a                                    ; $6b23: $02

jr_0c1_6b24:
    ld d, c                                       ; $6b24: $51
    ld e, h                                       ; $6b25: $5c
    ld e, h                                       ; $6b26: $5c
    ld de, $6501                                  ; $6b27: $11 $01 $65
    ld h, [hl]                                    ; $6b2a: $66
    ld d, $51                                     ; $6b2b: $16 $51
    jr nz, jr_0c1_6b90                            ; $6b2d: $20 $61

    ld h, d                                       ; $6b2f: $62
    dec h                                         ; $6b30: $25
    ld bc, $6a69                                  ; $6b31: $01 $69 $6a
    pop af                                        ; $6b34: $f1
    pop af                                        ; $6b35: $f1
    ld l, e                                       ; $6b36: $6b
    db $10                                        ; $6b37: $10
    ld l, h                                       ; $6b38: $6c
    ld l, l                                       ; $6b39: $6d
    ld l, [hl]                                    ; $6b3a: $6e
    ld bc, $6f30                                  ; $6b3b: $01 $30 $6f
    ld [hl], b                                    ; $6b3e: $70
    ld [hl], c                                    ; $6b3f: $71
    ld [hl], l                                    ; $6b40: $75
    ld bc, $7776                                  ; $6b41: $01 $76 $77
    ld a, b                                       ; $6b44: $78
    ld a, c                                       ; $6b45: $79
    ld a, d                                       ; $6b46: $7a
    ld a, e                                       ; $6b47: $7b
    ld a, h                                       ; $6b48: $7c
    ld bc, $0220                                  ; $6b49: $01 $20 $02

jr_0c1_6b4c:
    ld a, l                                       ; $6b4c: $7d
    ld a, [hl]                                    ; $6b4d: $7e
    ld a, a                                       ; $6b4e: $7f
    add b                                         ; $6b4f: $80
    ld a, c                                       ; $6b50: $79
    ld [bc], a                                    ; $6b51: $02
    ld bc, $0188                                  ; $6b52: $01 $88 $01
    or $01                                        ; $6b55: $f6 $01
    ld a, b                                       ; $6b57: $78
    inc d                                         ; $6b58: $14
    ld hl, sp+$28                                 ; $6b59: $f8 $28
    ld hl, sp+$50                                 ; $6b5b: $f8 $50
    xor b                                         ; $6b5d: $a8
    ld hl, $0801                                  ; $6b5e: $21 $01 $08
    ld h, h                                       ; $6b61: $64
    ld c, b                                       ; $6b62: $48
    ld b, $7e                                     ; $6b63: $06 $7e
    ld b, $78                                     ; $6b65: $06 $78
    ld a, b                                       ; $6b67: $78
    inc d                                         ; $6b68: $14
    adc b                                         ; $6b69: $88
    and b                                         ; $6b6a: $a0
    ld hl, sp-$38                                 ; $6b6b: $f8 $c8
    ld hl, sp-$24                                 ; $6b6d: $f8 $dc
    ld hl, sp+$0e                                 ; $6b6f: $f8 $0e
    add hl, bc                                    ; $6b71: $09
    rlca                                          ; $6b72: $07
    ld d, e                                       ; $6b73: $53
    daa                                           ; $6b74: $27
    inc d                                         ; $6b75: $14
    add b                                         ; $6b76: $80
    rlca                                          ; $6b77: $07
    jr jr_0c1_6b8b                                ; $6b78: $18 $11

    ld b, c                                       ; $6b7a: $41
    ld b, c                                       ; $6b7b: $41
    inc l                                         ; $6b7c: $2c
    ld [hl], c                                    ; $6b7d: $71
    ld d, l                                       ; $6b7e: $55
    ld [hl], c                                    ; $6b7f: $71
    nop                                           ; $6b80: $00
    ld a, [bc]                                    ; $6b81: $0a
    ld [bc], a                                    ; $6b82: $02
    inc d                                         ; $6b83: $14
    nop                                           ; $6b84: $00
    ld [de], a                                    ; $6b85: $12
    nop                                           ; $6b86: $00
    jp RST_00                                     ; $6b87: $c3 $00 $00


    db $dd                                        ; $6b8a: $dd

jr_0c1_6b8b:
    sbc $df                                       ; $6b8b: $de $df
    ldh [$e1], a                                  ; $6b8d: $e0 $e1
    ld [c], a                                     ; $6b8f: $e2

jr_0c1_6b90:
    db $e3                                        ; $6b90: $e3
    db $e4                                        ; $6b91: $e4
    ld [$e6e5], sp                                ; $6b92: $08 $e5 $e6
    and $e7                                       ; $6b95: $e6 $e7
    inc bc                                        ; $6b97: $03
    nop                                           ; $6b98: $00
    add sp, -$17                                  ; $6b99: $e8 $e9
    ld [$eb01], a                                 ; $6b9b: $ea $01 $eb
    db $eb                                        ; $6b9e: $eb
    rst $28                                       ; $6b9f: $ef
    ldh a, [$f1]                                  ; $6ba0: $f0 $f1
    ld a, [c]                                     ; $6ba2: $f2
    di                                            ; $6ba3: $f3
    ld bc, $2060                                  ; $6ba4: $01 $60 $20
    push af                                       ; $6ba7: $f5
    or $12                                        ; $6ba8: $f6 $12
    nop                                           ; $6baa: $00
    ld a, [de]                                    ; $6bab: $1a
    dec de                                        ; $6bac: $1b
    inc e                                         ; $6bad: $1c
    dec e                                         ; $6bae: $1d
    di                                            ; $6baf: $f3
    inc b                                         ; $6bb0: $04
    di                                            ; $6bb1: $f3
    ld e, $1f                                     ; $6bb2: $1e $1f
    jr nz, jr_0c1_6bd7                            ; $6bb4: $20 $21

    rra                                           ; $6bb6: $1f
    db $10                                        ; $6bb7: $10
    inc b                                         ; $6bb8: $04
    dec b                                         ; $6bb9: $05
    add b                                         ; $6bba: $80
    ld h, $00                                     ; $6bbb: $26 $00
    ld a, [hl+]                                   ; $6bbd: $2a
    dec hl                                        ; $6bbe: $2b
    inc l                                         ; $6bbf: $2c
    dec l                                         ; $6bc0: $2d
    di                                            ; $6bc1: $f3
    di                                            ; $6bc2: $f3
    ld l, $12                                     ; $6bc3: $2e $12
    cpl                                           ; $6bc5: $2f
    jr nc, jr_0c1_6bf9                            ; $6bc6: $30 $31

    inc sp                                        ; $6bc8: $33
    db $10                                        ; $6bc9: $10
    inc d                                         ; $6bca: $14
    dec d                                         ; $6bcb: $15
    ld a, [hl-]                                   ; $6bcc: $3a
    nop                                           ; $6bcd: $00
    ld a, [hl-]                                   ; $6bce: $3a
    nop                                           ; $6bcf: $00
    dec sp                                        ; $6bd0: $3b
    inc a                                         ; $6bd1: $3c
    dec a                                         ; $6bd2: $3d
    di                                            ; $6bd3: $f3
    di                                            ; $6bd4: $f3
    ld a, $3f                                     ; $6bd5: $3e $3f

jr_0c1_6bd7:
    ld b, b                                       ; $6bd7: $40
    ld c, b                                       ; $6bd8: $48
    ld b, c                                       ; $6bd9: $41
    ld b, a                                       ; $6bda: $47
    db $10                                        ; $6bdb: $10
    inc h                                         ; $6bdc: $24
    dec h                                         ; $6bdd: $25
    ld c, [hl]                                    ; $6bde: $4e
    nop                                           ; $6bdf: $00
    ld c, c                                       ; $6be0: $49
    ld c, d                                       ; $6be1: $4a
    ld c, e                                       ; $6be2: $4b
    ld bc, $f3ee                                  ; $6be3: $01 $ee $f3
    di                                            ; $6be6: $f3
    ld c, h                                       ; $6be7: $4c
    ld c, l                                       ; $6be8: $4d
    ld c, [hl]                                    ; $6be9: $4e
    ld c, a                                       ; $6bea: $4f
    ld e, e                                       ; $6beb: $5b
    db $10                                        ; $6bec: $10
    jr nz, jr_0c1_6c22                            ; $6bed: $20 $33

    inc [hl]                                      ; $6bef: $34
    ld h, d                                       ; $6bf0: $62
    nop                                           ; $6bf1: $00
    jp nc, Jump_0c1_7978                          ; $6bf2: $d2 $78 $79

    ld a, d                                       ; $6bf5: $7a
    di                                            ; $6bf6: $f3
    inc b                                         ; $6bf7: $04
    di                                            ; $6bf8: $f3

jr_0c1_6bf9:
    ld a, d                                       ; $6bf9: $7a
    ld a, c                                       ; $6bfa: $79
    ld a, b                                       ; $6bfb: $78
    jp nc, $106f                                  ; $6bfc: $d2 $6f $10

    ccf                                           ; $6bff: $3f
    ld b, b                                       ; $6c00: $40
    sub d                                         ; $6c01: $92
    halt                                          ; $6c02: $76
    jr nz, jr_0c1_6c46                            ; $6c03: $20 $41

    ld b, d                                       ; $6c05: $42
    ld a, a                                       ; $6c06: $7f
    jr nc, jr_0c1_6c4e                            ; $6c07: $30 $45

    ld b, [hl]                                    ; $6c09: $46
    adc d                                         ; $6c0a: $8a
    jr nz, jr_0c1_6c54                            ; $6c0b: $20 $47

    ld c, b                                       ; $6c0d: $48
    ld c, b                                       ; $6c0e: $48
    sub e                                         ; $6c0f: $93
    jr nc, jr_0c1_6c5d                            ; $6c10: $30 $4b

    ld c, h                                       ; $6c12: $4c
    sbc [hl]                                      ; $6c13: $9e
    ld l, b                                       ; $6c14: $68
    di                                            ; $6c15: $f3
    di                                            ; $6c16: $f3
    ld c, a                                       ; $6c17: $4f
    ld c, c                                       ; $6c18: $49
    ld d, b                                       ; $6c19: $50
    inc d                                         ; $6c1a: $14
    ld a, b                                       ; $6c1b: $78
    ld d, d                                       ; $6c1c: $52
    ld d, e                                       ; $6c1d: $53
    jr z, jr_0c1_6c98                             ; $6c1e: $28 $78

    ld d, [hl]                                    ; $6c20: $56
    ld d, a                                       ; $6c21: $57

jr_0c1_6c22:
    inc a                                         ; $6c22: $3c
    ld a, b                                       ; $6c23: $78
    inc h                                         ; $6c24: $24
    ld e, d                                       ; $6c25: $5a
    ld e, e                                       ; $6c26: $5b
    ld d, b                                       ; $6c27: $50
    ld a, b                                       ; $6c28: $78
    ld e, a                                       ; $6c29: $5f
    ld h, b                                       ; $6c2a: $60
    ld [bc], a                                    ; $6c2b: $02
    ld d, c                                       ; $6c2c: $51
    ld e, h                                       ; $6c2d: $5c
    ld e, l                                       ; $6c2e: $5d
    sub d                                         ; $6c2f: $92
    ld de, $6501                                  ; $6c30: $11 $01 $65
    ld h, [hl]                                    ; $6c33: $66
    ld d, $51                                     ; $6c34: $16 $51
    ld l, d                                       ; $6c36: $6a
    ld l, e                                       ; $6c37: $6b
    dec h                                         ; $6c38: $25
    ld bc, $0169                                  ; $6c39: $01 $69 $01
    ld l, d                                       ; $6c3c: $6a
    pop af                                        ; $6c3d: $f1
    pop af                                        ; $6c3e: $f1
    ld l, e                                       ; $6c3f: $6b
    ld l, h                                       ; $6c40: $6c
    ld l, l                                       ; $6c41: $6d
    ld l, [hl]                                    ; $6c42: $6e
    ld bc, $0230                                  ; $6c43: $01 $30 $02

jr_0c1_6c46:
    ld l, a                                       ; $6c46: $6f
    ld [hl], b                                    ; $6c47: $70
    ld [hl], c                                    ; $6c48: $71
    ld [hl], l                                    ; $6c49: $75
    halt                                          ; $6c4a: $76
    ld [hl], a                                    ; $6c4b: $77
    reti                                          ; $6c4c: $d9


    nop                                           ; $6c4d: $00

jr_0c1_6c4e:
    ld a, e                                       ; $6c4e: $7b
    ld b, b                                       ; $6c4f: $40
    ld a, h                                       ; $6c50: $7c
    ld bc, $7d20                                  ; $6c51: $01 $20 $7d

jr_0c1_6c54:
    ld a, [hl]                                    ; $6c54: $7e
    ld a, a                                       ; $6c55: $7f
    add b                                         ; $6c56: $80
    ld a, c                                       ; $6c57: $79
    ld [bc], a                                    ; $6c58: $02
    or a                                          ; $6c59: $b7
    ld bc, $0188                                  ; $6c5a: $01 $88 $01

jr_0c1_6c5d:
    ld bc, $1478                                  ; $6c5d: $01 $78 $14
    db $10                                        ; $6c60: $10
    add hl, bc                                    ; $6c61: $09
    ld bc, $0600                                  ; $6c62: $01 $00 $06
    jr z, jr_0c1_6c7b                             ; $6c65: $28 $14

    ld hl, sp-$58                                 ; $6c67: $f8 $a8
    jr z, jr_0c1_6cdb                             ; $6c69: $28 $70

    ld hl, $683c                                  ; $6c6b: $21 $3c $68
    add hl, hl                                    ; $6c6e: $29
    ld d, b                                       ; $6c6f: $50
    db $10                                        ; $6c70: $10
    add hl, hl                                    ; $6c71: $29
    add hl, hl                                    ; $6c72: $29
    add hl, hl                                    ; $6c73: $29
    rst $08                                       ; $6c74: $cf
    ld d, b                                       ; $6c75: $50
    ld b, b                                       ; $6c76: $40
    ld a, h                                       ; $6c77: $7c
    ld [$0606], sp                                ; $6c78: $08 $06 $06

jr_0c1_6c7b:
    ld a, b                                       ; $6c7b: $78
    ld e, b                                       ; $6c7c: $58
    inc d                                         ; $6c7d: $14
    xor b                                         ; $6c7e: $a8
    and b                                         ; $6c7f: $a0
    ld l, b                                       ; $6c80: $68
    inc d                                         ; $6c81: $14
    ld hl, sp-$37                                 ; $6c82: $f8 $c9
    inc a                                         ; $6c84: $3c
    ld hl, sp+$64                                 ; $6c85: $f8 $64
    sbc b                                         ; $6c87: $98
    rrca                                          ; $6c88: $0f
    rrca                                          ; $6c89: $0f
    inc d                                         ; $6c8a: $14
    or b                                          ; $6c8b: $b0
    ld b, c                                       ; $6c8c: $41
    ld b, c                                       ; $6c8d: $41
    inc l                                         ; $6c8e: $2c
    ld [hl], c                                    ; $6c8f: $71
    add b                                         ; $6c90: $80
    ld d, l                                       ; $6c91: $55
    ld [hl], c                                    ; $6c92: $71
    ld a, [bc]                                    ; $6c93: $0a
    ld [bc], a                                    ; $6c94: $02
    inc d                                         ; $6c95: $14
    nop                                           ; $6c96: $00
    ld [de], a                                    ; $6c97: $12

jr_0c1_6c98:
    nop                                           ; $6c98: $00
    jp nc, RST_00                                 ; $6c99: $d2 $00 $00

    db $dd                                        ; $6c9c: $dd
    sbc $df                                       ; $6c9d: $de $df
    ldh [$e1], a                                  ; $6c9f: $e0 $e1
    ld [c], a                                     ; $6ca1: $e2
    db $e3                                        ; $6ca2: $e3
    db $e4                                        ; $6ca3: $e4
    ld [$e6e5], sp                                ; $6ca4: $08 $e5 $e6
    and $e7                                       ; $6ca7: $e6 $e7
    inc bc                                        ; $6ca9: $03
    nop                                           ; $6caa: $00
    add sp, -$17                                  ; $6cab: $e8 $e9
    ld [$eb01], a                                 ; $6cad: $ea $01 $eb
    db $eb                                        ; $6cb0: $eb
    rst $28                                       ; $6cb1: $ef
    ldh a, [$f1]                                  ; $6cb2: $f0 $f1
    ld a, [c]                                     ; $6cb4: $f2
    di                                            ; $6cb5: $f3
    ld bc, $0060                                  ; $6cb6: $01 $60 $00
    push af                                       ; $6cb9: $f5
    or $f3                                        ; $6cba: $f6 $f3
    db $db                                        ; $6cbc: $db
    call c, $dedd                                 ; $6cbd: $dc $dd $de
    di                                            ; $6cc0: $f3
    nop                                           ; $6cc1: $00
    ld a, [de]                                    ; $6cc2: $1a
    dec de                                        ; $6cc3: $1b
    inc e                                         ; $6cc4: $1c
    dec e                                         ; $6cc5: $1d
    di                                            ; $6cc6: $f3
    ld e, $1f                                     ; $6cc7: $1e $1f
    jr nz, jr_0c1_6d0b                            ; $6cc9: $20 $40

    ld hl, $0021                                  ; $6ccb: $21 $21 $00
    inc b                                         ; $6cce: $04
    dec b                                         ; $6ccf: $05
    di                                            ; $6cd0: $f3
    db $eb                                        ; $6cd1: $eb
    db $ec                                        ; $6cd2: $ec
    db $ed                                        ; $6cd3: $ed
    nop                                           ; $6cd4: $00
    xor $f3                                       ; $6cd5: $ee $f3
    ld a, [hl+]                                   ; $6cd7: $2a
    dec hl                                        ; $6cd8: $2b
    inc l                                         ; $6cd9: $2c
    dec l                                         ; $6cda: $2d

jr_0c1_6cdb:
    di                                            ; $6cdb: $f3
    ld l, $10                                     ; $6cdc: $2e $10
    cpl                                           ; $6cde: $2f
    jr nc, jr_0c1_6d12                            ; $6cdf: $30 $31

    dec [hl]                                      ; $6ce1: $35
    nop                                           ; $6ce2: $00
    inc d                                         ; $6ce3: $14
    dec d                                         ; $6ce4: $15
    di                                            ; $6ce5: $f3
    ei                                            ; $6ce6: $fb
    nop                                           ; $6ce7: $00
    db $fc                                        ; $6ce8: $fc
    db $fd                                        ; $6ce9: $fd
    cp $f3                                        ; $6cea: $fe $f3
    ld a, [hl-]                                   ; $6cec: $3a
    dec sp                                        ; $6ced: $3b
    inc a                                         ; $6cee: $3c
    dec a                                         ; $6cef: $3d
    inc b                                         ; $6cf0: $04
    di                                            ; $6cf1: $f3
    ld a, $3f                                     ; $6cf2: $3e $3f
    ld b, b                                       ; $6cf4: $40
    ld b, c                                       ; $6cf5: $41
    ld c, c                                       ; $6cf6: $49
    nop                                           ; $6cf7: $00
    inc h                                         ; $6cf8: $24
    dec h                                         ; $6cf9: $25
    nop                                           ; $6cfa: $00
    di                                            ; $6cfb: $f3
    dec bc                                        ; $6cfc: $0b
    inc c                                         ; $6cfd: $0c
    dec c                                         ; $6cfe: $0d
    ld c, $f3                                     ; $6cff: $0e $f3
    ld c, c                                       ; $6d01: $49
    ld c, d                                       ; $6d02: $4a
    ld bc, $ee4b                                  ; $6d03: $01 $4b $ee
    di                                            ; $6d06: $f3
    ld c, h                                       ; $6d07: $4c
    ld c, l                                       ; $6d08: $4d
    ld c, [hl]                                    ; $6d09: $4e
    ld c, a                                       ; $6d0a: $4f

jr_0c1_6d0b:
    ld e, l                                       ; $6d0b: $5d
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    inc sp                                        ; $6d0e: $33
    inc [hl]                                      ; $6d0f: $34
    di                                            ; $6d10: $f3
    dec [hl]                                      ; $6d11: $35

jr_0c1_6d12:
    ld [hl], $37                                  ; $6d12: $36 $37
    jr c, jr_0c1_6d4f                             ; $6d14: $38 $39

    add d                                         ; $6d16: $82
    jr z, jr_0c1_6d21                             ; $6d17: $28 $08

    add hl, sp                                    ; $6d19: $39
    jr c, @+$39                                   ; $6d1a: $38 $37

    ld [hl], $35                                  ; $6d1c: $36 $35
    ld [hl], c                                    ; $6d1e: $71
    nop                                           ; $6d1f: $00
    ccf                                           ; $6d20: $3f

jr_0c1_6d21:
    ld c, c                                       ; $6d21: $49
    ld b, b                                       ; $6d22: $40
    halt                                          ; $6d23: $76
    jr nz, jr_0c1_6d76                            ; $6d24: $20 $50

    ld d, c                                       ; $6d26: $51
    ld a, a                                       ; $6d27: $7f
    jr nc, jr_0c1_6d6f                            ; $6d28: $30 $45

    ld b, [hl]                                    ; $6d2a: $46
    adc d                                         ; $6d2b: $8a
    jr nz, @+$26                                  ; $6d2c: $20 $24

    ld d, [hl]                                    ; $6d2e: $56
    ld d, a                                       ; $6d2f: $57
    sub e                                         ; $6d30: $93
    jr nc, @+$4d                                  ; $6d31: $30 $4b

    ld c, h                                       ; $6d33: $4c
    sbc [hl]                                      ; $6d34: $9e
    ld l, b                                       ; $6d35: $68
    di                                            ; $6d36: $f3
    di                                            ; $6d37: $f3
    daa                                           ; $6d38: $27
    ld c, a                                       ; $6d39: $4f
    ld d, b                                       ; $6d3a: $50
    inc d                                         ; $6d3b: $14
    ld a, b                                       ; $6d3c: $78
    ld d, d                                       ; $6d3d: $52
    ld d, e                                       ; $6d3e: $53
    jr z, jr_0c1_6db9                             ; $6d3f: $28 $78

    ld b, a                                       ; $6d41: $47
    ld b, b                                       ; $6d42: $40
    db $e3                                        ; $6d43: $e3
    jr nc, jr_0c1_6d6a                            ; $6d44: $30 $24

    ld e, d                                       ; $6d46: $5a
    ld e, e                                       ; $6d47: $5b
    ld d, b                                       ; $6d48: $50
    ld a, b                                       ; $6d49: $78
    ld e, a                                       ; $6d4a: $5f
    ld h, b                                       ; $6d4b: $60
    ld [bc], a                                    ; $6d4c: $02
    ld d, c                                       ; $6d4d: $51
    ld e, [hl]                                    ; $6d4e: $5e

jr_0c1_6d4f:
    ld e, a                                       ; $6d4f: $5f
    sub d                                         ; $6d50: $92
    ld de, $6501                                  ; $6d51: $11 $01 $65
    ld h, [hl]                                    ; $6d54: $66
    ld d, $51                                     ; $6d55: $16 $51
    ld l, h                                       ; $6d57: $6c
    ld l, l                                       ; $6d58: $6d
    dec h                                         ; $6d59: $25
    ld bc, $0169                                  ; $6d5a: $01 $69 $01
    ld l, d                                       ; $6d5d: $6a
    pop af                                        ; $6d5e: $f1
    pop af                                        ; $6d5f: $f1
    ld l, e                                       ; $6d60: $6b
    ld l, h                                       ; $6d61: $6c
    ld l, l                                       ; $6d62: $6d
    ld l, [hl]                                    ; $6d63: $6e
    ld bc, $0030                                  ; $6d64: $01 $30 $00
    ld l, a                                       ; $6d67: $6f
    ld [hl], b                                    ; $6d68: $70
    ld [hl], c                                    ; $6d69: $71

jr_0c1_6d6a:
    ld [hl], l                                    ; $6d6a: $75
    halt                                          ; $6d6b: $76
    ld [hl], a                                    ; $6d6c: $77
    ld a, b                                       ; $6d6d: $78
    ld a, c                                       ; $6d6e: $79

jr_0c1_6d6f:
    db $10                                        ; $6d6f: $10
    ld a, d                                       ; $6d70: $7a
    ld a, e                                       ; $6d71: $7b
    ld a, h                                       ; $6d72: $7c
    ld bc, $7d20                                  ; $6d73: $01 $20 $7d

jr_0c1_6d76:
    ld a, [hl]                                    ; $6d76: $7e
    ld a, a                                       ; $6d77: $7f
    add b                                         ; $6d78: $80
    dec l                                         ; $6d79: $2d
    ld a, c                                       ; $6d7a: $79
    ld [bc], a                                    ; $6d7b: $02
    ld bc, $0188                                  ; $6d7c: $01 $88 $01
    ld bc, $1478                                  ; $6d7f: $01 $78 $14
    nop                                           ; $6d82: $00
    add hl, bc                                    ; $6d83: $09
    ld bc, $ed00                                  ; $6d84: $01 $00 $ed
    dec b                                         ; $6d87: $05
    ld b, b                                       ; $6d88: $40
    inc d                                         ; $6d89: $14
    ld hl, sp+$28                                 ; $6d8a: $f8 $28
    add b                                         ; $6d8c: $80
    ld hl, $403c                                  ; $6d8d: $21 $3c $40
    ld h, [hl]                                    ; $6d90: $66
    jr nc, jr_0c1_6db4                            ; $6d91: $30 $21

    ld bc, $9f08                                  ; $6d93: $01 $08 $9f
    inc d                                         ; $6d96: $14

jr_0c1_6d97:
    ld c, b                                       ; $6d97: $48
    ld c, $0e                                     ; $6d98: $0e $0e
    ld a, b                                       ; $6d9a: $78
    ld c, b                                       ; $6d9b: $48
    inc d                                         ; $6d9c: $14
    cp b                                          ; $6d9d: $b8
    and b                                         ; $6d9e: $a0
    ld e, b                                       ; $6d9f: $58
    inc d                                         ; $6da0: $14
    ld hl, sp+$3c                                 ; $6da1: $f8 $3c
    ld hl, sp-$6d                                 ; $6da3: $f8 $93
    ld h, h                                       ; $6da5: $64
    xor b                                         ; $6da6: $a8
    rrca                                          ; $6da7: $0f
    rrca                                          ; $6da8: $0f
    inc d                                         ; $6da9: $14
    or b                                          ; $6daa: $b0
    ld b, c                                       ; $6dab: $41
    ld b, c                                       ; $6dac: $41
    inc l                                         ; $6dad: $2c
    ld [hl], c                                    ; $6dae: $71
    ld d, l                                       ; $6daf: $55
    ld [hl], c                                    ; $6db0: $71
    nop                                           ; $6db1: $00
    ld a, [bc]                                    ; $6db2: $0a
    ld [bc], a                                    ; $6db3: $02

jr_0c1_6db4:
    inc d                                         ; $6db4: $14
    nop                                           ; $6db5: $00
    ld [de], a                                    ; $6db6: $12
    nop                                           ; $6db7: $00
    rst $08                                       ; $6db8: $cf

jr_0c1_6db9:
    nop                                           ; $6db9: $00
    nop                                           ; $6dba: $00
    db $dd                                        ; $6dbb: $dd
    sbc $df                                       ; $6dbc: $de $df
    ldh [$e1], a                                  ; $6dbe: $e0 $e1
    ld [c], a                                     ; $6dc0: $e2
    db $e3                                        ; $6dc1: $e3
    db $e4                                        ; $6dc2: $e4
    ld [$e6e5], sp                                ; $6dc3: $08 $e5 $e6
    and $e7                                       ; $6dc6: $e6 $e7
    inc bc                                        ; $6dc8: $03
    nop                                           ; $6dc9: $00
    add sp, -$17                                  ; $6dca: $e8 $e9
    ld [$eb01], a                                 ; $6dcc: $ea $01 $eb
    db $eb                                        ; $6dcf: $eb
    rst $28                                       ; $6dd0: $ef
    ldh a, [$f1]                                  ; $6dd1: $f0 $f1
    ld a, [c]                                     ; $6dd3: $f2
    di                                            ; $6dd4: $f3
    ld bc, $0060                                  ; $6dd5: $01 $60 $00
    push af                                       ; $6dd8: $f5
    or $f3                                        ; $6dd9: $f6 $f3
    adc e                                         ; $6ddb: $8b
    adc h                                         ; $6ddc: $8c
    adc l                                         ; $6ddd: $8d
    adc [hl]                                      ; $6dde: $8e
    di                                            ; $6ddf: $f3
    nop                                           ; $6de0: $00
    rst $10                                       ; $6de1: $d7
    ret c                                         ; $6de2: $d8

    reti                                          ; $6de3: $d9


    jp c, Jump_000_16f3                           ; $6de4: $da $f3 $16

    rla                                           ; $6de7: $17
    jr jr_0c1_6e2a                                ; $6de8: $18 $40

    add hl, de                                    ; $6dea: $19
    ld hl, $0400                                  ; $6deb: $21 $00 $04
    dec b                                         ; $6dee: $05
    di                                            ; $6def: $f3
    sbc a                                         ; $6df0: $9f
    and b                                         ; $6df1: $a0
    and c                                         ; $6df2: $a1
    jr nz, jr_0c1_6d97                            ; $6df3: $20 $a2

    di                                            ; $6df5: $f3
    ld [hl], $08                                  ; $6df6: $36 $08
    di                                            ; $6df8: $f3
    ld h, $27                                     ; $6df9: $26 $27
    jr z, jr_0c1_6e26                             ; $6dfb: $28 $29

    add b                                         ; $6dfd: $80
    dec [hl]                                      ; $6dfe: $35
    nop                                           ; $6dff: $00
    inc d                                         ; $6e00: $14
    dec d                                         ; $6e01: $15
    di                                            ; $6e02: $f3
    or e                                          ; $6e03: $b3
    or h                                          ; $6e04: $b4
    or l                                          ; $6e05: $b5
    or [hl]                                       ; $6e06: $b6
    nop                                           ; $6e07: $00
    di                                            ; $6e08: $f3
    rst $30                                       ; $6e09: $f7
    ld hl, sp-$07                                 ; $6e0a: $f8 $f9
    ld a, [$36f3]                                 ; $6e0c: $fa $f3 $36
    scf                                           ; $6e0f: $37
    jr nz, @+$3a                                  ; $6e10: $20 $38

    add hl, sp                                    ; $6e12: $39
    ld c, c                                       ; $6e13: $49
    nop                                           ; $6e14: $00
    inc h                                         ; $6e15: $24
    dec h                                         ; $6e16: $25
    di                                            ; $6e17: $f3
    rst $00                                       ; $6e18: $c7
    ret z                                         ; $6e19: $c8

    nop                                           ; $6e1a: $00
    ret                                           ; $6e1b: $c9


    jp z, Jump_000_07f3                           ; $6e1c: $ca $f3 $07

    ld [$0a09], sp                                ; $6e1f: $08 $09 $0a
    di                                            ; $6e22: $f3
    ld [$46f3], sp                                ; $6e23: $08 $f3 $46

jr_0c1_6e26:
    ld b, a                                       ; $6e26: $47
    ld c, b                                       ; $6e27: $48
    ld e, l                                       ; $6e28: $5d
    nop                                           ; $6e29: $00

jr_0c1_6e2a:
    inc sp                                        ; $6e2a: $33
    inc [hl]                                      ; $6e2b: $34
    di                                            ; $6e2c: $f3
    ld b, b                                       ; $6e2d: $40
    dec [hl]                                      ; $6e2e: $35
    rra                                           ; $6e2f: $1f
    ld [$3b3a], sp                                ; $6e30: $08 $3a $3b
    inc a                                         ; $6e33: $3c
    dec a                                         ; $6e34: $3d
    add hl, sp                                    ; $6e35: $39
    jr c, @+$14                                   ; $6e36: $38 $12

    scf                                           ; $6e38: $37
    ld [hl], $35                                  ; $6e39: $36 $35
    ld [hl], c                                    ; $6e3b: $71
    nop                                           ; $6e3c: $00
    ccf                                           ; $6e3d: $3f
    ld b, b                                       ; $6e3e: $40
    halt                                          ; $6e3f: $76
    jr nz, jr_0c1_6e94                            ; $6e40: $20 $52

    ld c, c                                       ; $6e42: $49
    ld d, e                                       ; $6e43: $53
    ld a, a                                       ; $6e44: $7f
    jr nc, jr_0c1_6e8c                            ; $6e45: $30 $45

    ld b, [hl]                                    ; $6e47: $46
    adc d                                         ; $6e48: $8a
    jr nz, @+$5a                                  ; $6e49: $20 $58

    ld e, c                                       ; $6e4b: $59
    sub e                                         ; $6e4c: $93
    jr nc, jr_0c1_6e70                            ; $6e4d: $30 $21

    ld c, e                                       ; $6e4f: $4b
    ld c, h                                       ; $6e50: $4c
    sbc [hl]                                      ; $6e51: $9e
    ld l, b                                       ; $6e52: $68
    di                                            ; $6e53: $f3
    di                                            ; $6e54: $f3
    ld c, a                                       ; $6e55: $4f
    ld d, b                                       ; $6e56: $50
    inc d                                         ; $6e57: $14
    ld a, b                                       ; $6e58: $78
    ret                                           ; $6e59: $c9


    ld b, a                                       ; $6e5a: $47
    ld b, b                                       ; $6e5b: $40
    rst $08                                       ; $6e5c: $cf
    jr nc, jr_0c1_6eb5                            ; $6e5d: $30 $56

    ld d, a                                       ; $6e5f: $57
    inc a                                         ; $6e60: $3c
    ld a, b                                       ; $6e61: $78
    ld e, d                                       ; $6e62: $5a
    ld e, e                                       ; $6e63: $5b
    ld d, b                                       ; $6e64: $50
    ld a, b                                       ; $6e65: $78
    inc h                                         ; $6e66: $24
    ld e, a                                       ; $6e67: $5f
    ld h, b                                       ; $6e68: $60
    ld [bc], a                                    ; $6e69: $02
    ld d, c                                       ; $6e6a: $51
    ld a, e                                       ; $6e6b: $7b
    ld a, h                                       ; $6e6c: $7c
    ld de, $6501                                  ; $6e6d: $11 $01 $65

jr_0c1_6e70:
    ld h, [hl]                                    ; $6e70: $66
    sub b                                         ; $6e71: $90
    ld d, $51                                     ; $6e72: $16 $51
    ld a, l                                       ; $6e74: $7d
    ld a, [hl]                                    ; $6e75: $7e
    dec h                                         ; $6e76: $25
    ld bc, $6a69                                  ; $6e77: $01 $69 $6a
    pop af                                        ; $6e7a: $f1
    pop af                                        ; $6e7b: $f1
    ld [$6c6b], sp                                ; $6e7c: $08 $6b $6c
    ld l, l                                       ; $6e7f: $6d
    ld l, [hl]                                    ; $6e80: $6e
    ld bc, $6f30                                  ; $6e81: $01 $30 $6f
    ld [hl], b                                    ; $6e84: $70
    ld [hl], c                                    ; $6e85: $71
    nop                                           ; $6e86: $00
    ld [hl], l                                    ; $6e87: $75
    halt                                          ; $6e88: $76
    ld [hl], a                                    ; $6e89: $77
    ld a, b                                       ; $6e8a: $78
    ld a, c                                       ; $6e8b: $79

jr_0c1_6e8c:
    ld a, d                                       ; $6e8c: $7a
    ld a, e                                       ; $6e8d: $7b
    ld a, h                                       ; $6e8e: $7c
    add c                                         ; $6e8f: $81
    ld bc, $7d20                                  ; $6e90: $01 $20 $7d
    ld a, [hl]                                    ; $6e93: $7e

jr_0c1_6e94:
    ld a, a                                       ; $6e94: $7f
    add b                                         ; $6e95: $80
    ld a, c                                       ; $6e96: $79
    ld [bc], a                                    ; $6e97: $02
    ld bc, $6f88                                  ; $6e98: $01 $88 $6f
    ld bc, $7801                                  ; $6e9b: $01 $01 $78
    inc d                                         ; $6e9e: $14
    nop                                           ; $6e9f: $00
    add hl, bc                                    ; $6ea0: $09
    ld bc, $0500                                  ; $6ea1: $01 $00 $05
    ld b, b                                       ; $6ea4: $40
    inc d                                         ; $6ea5: $14
    ld hl, sp+$28                                 ; $6ea6: $f8 $28
    sub b                                         ; $6ea8: $90
    db $ec                                        ; $6ea9: $ec
    ld b, a                                       ; $6eaa: $47
    ld [$1850], sp                                ; $6eab: $08 $50 $18
    ld h, [hl]                                    ; $6eae: $66
    jr nc, jr_0c1_6ed2                            ; $6eaf: $30 $21

    ld bc, $1408                                  ; $6eb1: $01 $08 $14
    ld c, b                                       ; $6eb4: $48

jr_0c1_6eb5:
    ld c, $0e                                     ; $6eb5: $0e $0e
    db $fc                                        ; $6eb7: $fc
    ld a, b                                       ; $6eb8: $78
    ld c, b                                       ; $6eb9: $48
    inc d                                         ; $6eba: $14
    cp b                                          ; $6ebb: $b8
    and b                                         ; $6ebc: $a0
    ld e, b                                       ; $6ebd: $58
    inc d                                         ; $6ebe: $14
    ld hl, sp+$3c                                 ; $6ebf: $f8 $3c
    ld hl, sp+$64                                 ; $6ec1: $f8 $64
    xor b                                         ; $6ec3: $a8
    rrca                                          ; $6ec4: $0f
    rrca                                          ; $6ec5: $0f
    sbc b                                         ; $6ec6: $98
    inc d                                         ; $6ec7: $14
    or b                                          ; $6ec8: $b0
    ld b, c                                       ; $6ec9: $41
    ld b, c                                       ; $6eca: $41
    inc l                                         ; $6ecb: $2c
    ld [hl], c                                    ; $6ecc: $71
    ld d, l                                       ; $6ecd: $55
    ld [hl], c                                    ; $6ece: $71
    ld a, [bc]                                    ; $6ecf: $0a
    ld [bc], a                                    ; $6ed0: $02
    inc d                                         ; $6ed1: $14

jr_0c1_6ed2:
    nop                                           ; $6ed2: $00
    ld [de], a                                    ; $6ed3: $12
    nop                                           ; $6ed4: $00
    cp e                                          ; $6ed5: $bb
    nop                                           ; $6ed6: $00
    nop                                           ; $6ed7: $00
    db $dd                                        ; $6ed8: $dd
    sbc $df                                       ; $6ed9: $de $df
    ldh [$e1], a                                  ; $6edb: $e0 $e1
    ld [c], a                                     ; $6edd: $e2
    db $e3                                        ; $6ede: $e3
    db $e4                                        ; $6edf: $e4
    ld [$e6e5], sp                                ; $6ee0: $08 $e5 $e6
    and $e7                                       ; $6ee3: $e6 $e7
    inc bc                                        ; $6ee5: $03
    nop                                           ; $6ee6: $00
    add sp, -$17                                  ; $6ee7: $e8 $e9
    ld [$eb01], a                                 ; $6ee9: $ea $01 $eb
    db $eb                                        ; $6eec: $eb
    rst $28                                       ; $6eed: $ef
    ldh a, [$f1]                                  ; $6eee: $f0 $f1
    ld a, [c]                                     ; $6ef0: $f2
    di                                            ; $6ef1: $f3
    ld bc, $2060                                  ; $6ef2: $01 $60 $20
    push af                                       ; $6ef5: $f5
    or $12                                        ; $6ef6: $f6 $12
    ld [$1413], sp                                ; $6ef8: $08 $13 $14
    dec d                                         ; $6efb: $15
    di                                            ; $6efc: $f3
    di                                            ; $6efd: $f3
    add hl, bc                                    ; $6efe: $09
    db $d3                                        ; $6eff: $d3
    call nc, $d6d5                                ; $6f00: $d4 $d5 $d6
    rra                                           ; $6f03: $1f
    db $10                                        ; $6f04: $10
    inc b                                         ; $6f05: $04
    dec b                                         ; $6f06: $05
    ld h, $00                                     ; $6f07: $26 $00
    inc bc                                        ; $6f09: $03
    ld [hl+], a                                   ; $6f0a: $22
    inc hl                                        ; $6f0b: $23
    inc h                                         ; $6f0c: $24
    dec h                                         ; $6f0d: $25
    di                                            ; $6f0e: $f3
    di                                            ; $6f0f: $f3
    ld b, c                                       ; $6f10: $41
    ld [$1033], sp                                ; $6f11: $08 $33 $10
    add d                                         ; $6f14: $82
    ld hl, $f308                                  ; $6f15: $21 $08 $f3
    ld [hl-], a                                   ; $6f18: $32
    inc sp                                        ; $6f19: $33
    inc [hl]                                      ; $6f1a: $34
    dec [hl]                                      ; $6f1b: $35
    ld b, c                                       ; $6f1c: $41
    nop                                           ; $6f1d: $00
    db $f4                                        ; $6f1e: $f4
    and b                                         ; $6f1f: $a0
    dec [hl]                                      ; $6f20: $35
    jr @-$0b                                      ; $6f21: $18 $f3

    ld hl, $f308                                  ; $6f23: $21 $08 $f3
    ld b, d                                       ; $6f26: $42
    ld b, e                                       ; $6f27: $43
    ld b, h                                       ; $6f28: $44
    ld b, l                                       ; $6f29: $45
    ld [bc], a                                    ; $6f2a: $02
    di                                            ; $6f2b: $f3
    di                                            ; $6f2c: $f3
    inc bc                                        ; $6f2d: $03
    inc b                                         ; $6f2e: $04
    dec b                                         ; $6f2f: $05
    ld b, $5b                                     ; $6f30: $06 $5b
    db $10                                        ; $6f32: $10
    inc sp                                        ; $6f33: $33
    ld b, b                                       ; $6f34: $40
    inc [hl]                                      ; $6f35: $34
    ld h, d                                       ; $6f36: $62
    nop                                           ; $6f37: $00
    jp nc, Jump_0c1_7978                          ; $6f38: $d2 $78 $79

    ld a, d                                       ; $6f3b: $7a
    di                                            ; $6f3c: $f3
    di                                            ; $6f3d: $f3
    add hl, bc                                    ; $6f3e: $09
    ld a, d                                       ; $6f3f: $7a
    ld a, c                                       ; $6f40: $79
    ld a, b                                       ; $6f41: $78
    jp nc, $106f                                  ; $6f42: $d2 $6f $10

    ccf                                           ; $6f45: $3f
    ld b, b                                       ; $6f46: $40
    halt                                          ; $6f47: $76
    jr nz, jr_0c1_6f6e                            ; $6f48: $20 $24

    ld d, d                                       ; $6f4a: $52
    ld d, e                                       ; $6f4b: $53
    ld a, a                                       ; $6f4c: $7f
    jr nc, jr_0c1_6f94                            ; $6f4d: $30 $45

    ld b, [hl]                                    ; $6f4f: $46
    adc d                                         ; $6f50: $8a
    jr nz, jr_0c1_6fab                            ; $6f51: $20 $58

    ld e, c                                       ; $6f53: $59
    sub b                                         ; $6f54: $90
    sub e                                         ; $6f55: $93
    jr nc, jr_0c1_6fa3                            ; $6f56: $30 $4b

    ld c, h                                       ; $6f58: $4c
    sbc [hl]                                      ; $6f59: $9e
    ld l, b                                       ; $6f5a: $68
    di                                            ; $6f5b: $f3
    di                                            ; $6f5c: $f3
    ld c, a                                       ; $6f5d: $4f
    ld d, b                                       ; $6f5e: $50
    db $e4                                        ; $6f5f: $e4
    inc d                                         ; $6f60: $14
    ld a, b                                       ; $6f61: $78
    ld b, a                                       ; $6f62: $47
    ld b, b                                       ; $6f63: $40
    rst $08                                       ; $6f64: $cf
    jr nc, jr_0c1_6fbd                            ; $6f65: $30 $56

    ld d, a                                       ; $6f67: $57
    inc a                                         ; $6f68: $3c
    ld a, b                                       ; $6f69: $78
    ld e, d                                       ; $6f6a: $5a
    ld e, e                                       ; $6f6b: $5b
    sub d                                         ; $6f6c: $92
    ld d, b                                       ; $6f6d: $50

jr_0c1_6f6e:
    ld a, b                                       ; $6f6e: $78
    ld e, a                                       ; $6f6f: $5f
    ld h, b                                       ; $6f70: $60
    ld [bc], a                                    ; $6f71: $02
    ld d, c                                       ; $6f72: $51
    ld h, d                                       ; $6f73: $62
    ld h, e                                       ; $6f74: $63
    ld de, $6501                                  ; $6f75: $11 $01 $65
    ld c, b                                       ; $6f78: $48
    ld h, [hl]                                    ; $6f79: $66
    ld d, $51                                     ; $6f7a: $16 $51
    ld [hl], b                                    ; $6f7c: $70
    ld [hl], c                                    ; $6f7d: $71
    dec h                                         ; $6f7e: $25
    ld bc, $6a69                                  ; $6f7f: $01 $69 $6a
    pop af                                        ; $6f82: $f1
    inc b                                         ; $6f83: $04
    pop af                                        ; $6f84: $f1
    ld l, e                                       ; $6f85: $6b
    ld l, h                                       ; $6f86: $6c
    ld l, l                                       ; $6f87: $6d
    ld l, [hl]                                    ; $6f88: $6e
    ld bc, $6f30                                  ; $6f89: $01 $30 $6f
    ld [hl], b                                    ; $6f8c: $70
    add hl, bc                                    ; $6f8d: $09
    ld [hl], c                                    ; $6f8e: $71
    ld [hl], l                                    ; $6f8f: $75
    halt                                          ; $6f90: $76
    ld [hl], a                                    ; $6f91: $77
    reti                                          ; $6f92: $d9


    nop                                           ; $6f93: $00

jr_0c1_6f94:
    ld a, e                                       ; $6f94: $7b
    ld a, h                                       ; $6f95: $7c
    ld bc, $0220                                  ; $6f96: $01 $20 $02

jr_0c1_6f99:
    ld a, l                                       ; $6f99: $7d
    ld a, [hl]                                    ; $6f9a: $7e
    ld a, a                                       ; $6f9b: $7f
    add b                                         ; $6f9c: $80
    ld a, c                                       ; $6f9d: $79
    ld [bc], a                                    ; $6f9e: $02
    ld bc, $0188                                  ; $6f9f: $01 $88 $01
    rst $00                                       ; $6fa2: $c7

jr_0c1_6fa3:
    ld bc, $1478                                  ; $6fa3: $01 $78 $14
    jr jr_0c1_6fb1                                ; $6fa6: $18 $09

    add hl, bc                                    ; $6fa8: $09
    add hl, bc                                    ; $6fa9: $09
    dec b                                         ; $6faa: $05

jr_0c1_6fab:
    db $10                                        ; $6fab: $10
    ld b, $00                                     ; $6fac: $06 $00
    inc d                                         ; $6fae: $14
    jr z, jr_0c1_6f99                             ; $6faf: $28 $e8

jr_0c1_6fb1:
    ld c, $18                                     ; $6fb1: $0e $18
    inc d                                         ; $6fb3: $14
    ld hl, sp+$28                                 ; $6fb4: $f8 $28
    adc b                                         ; $6fb6: $88
    add hl, hl                                    ; $6fb7: $29
    ld d, b                                       ; $6fb8: $50
    db $10                                        ; $6fb9: $10
    add hl, hl                                    ; $6fba: $29
    add hl, hl                                    ; $6fbb: $29
    add hl, hl                                    ; $6fbc: $29

jr_0c1_6fbd:
    rst $08                                       ; $6fbd: $cf
    ld d, b                                       ; $6fbe: $50
    ld b, b                                       ; $6fbf: $40
    ld a, h                                       ; $6fc0: $7c
    ld [$0e0e], sp                                ; $6fc1: $08 $0e $0e
    ld a, b                                       ; $6fc4: $78
    ld h, b                                       ; $6fc5: $60
    inc d                                         ; $6fc6: $14
    and b                                         ; $6fc7: $a0
    and b                                         ; $6fc8: $a0
    ld [hl], b                                    ; $6fc9: $70
    inc d                                         ; $6fca: $14
    ld hl, sp-$37                                 ; $6fcb: $f8 $c9
    inc a                                         ; $6fcd: $3c
    ld hl, sp+$64                                 ; $6fce: $f8 $64
    sub b                                         ; $6fd0: $90
    rrca                                          ; $6fd1: $0f
    rrca                                          ; $6fd2: $0f
    inc d                                         ; $6fd3: $14
    or b                                          ; $6fd4: $b0
    ld b, c                                       ; $6fd5: $41
    ld b, c                                       ; $6fd6: $41
    inc l                                         ; $6fd7: $2c
    ld [hl], c                                    ; $6fd8: $71
    add b                                         ; $6fd9: $80
    ld d, l                                       ; $6fda: $55
    ld [hl], c                                    ; $6fdb: $71
    ld a, [bc]                                    ; $6fdc: $0a
    ld [bc], a                                    ; $6fdd: $02
    inc d                                         ; $6fde: $14
    nop                                           ; $6fdf: $00
    ld [de], a                                    ; $6fe0: $12
    nop                                           ; $6fe1: $00
    rst $08                                       ; $6fe2: $cf
    nop                                           ; $6fe3: $00
    nop                                           ; $6fe4: $00
    db $dd                                        ; $6fe5: $dd
    sbc $df                                       ; $6fe6: $de $df
    ldh [$e1], a                                  ; $6fe8: $e0 $e1
    ld [c], a                                     ; $6fea: $e2
    db $e3                                        ; $6feb: $e3
    db $e4                                        ; $6fec: $e4
    ld [$e6e5], sp                                ; $6fed: $08 $e5 $e6
    and $e7                                       ; $6ff0: $e6 $e7
    inc bc                                        ; $6ff2: $03
    nop                                           ; $6ff3: $00
    add sp, -$17                                  ; $6ff4: $e8 $e9
    ld [$eb01], a                                 ; $6ff6: $ea $01 $eb
    db $eb                                        ; $6ff9: $eb
    rst $28                                       ; $6ffa: $ef
    ldh a, [$f1]                                  ; $6ffb: $f0 $f1
    ld a, [c]                                     ; $6ffd: $f2
    di                                            ; $6ffe: $f3
    ld bc, $0060                                  ; $6fff: $01 $60 $00
    push af                                       ; $7002: $f5
    or $f3                                        ; $7003: $f6 $f3
    db $db                                        ; $7005: $db
    call c, $dedd                                 ; $7006: $dc $dd $de
    di                                            ; $7009: $f3
    nop                                           ; $700a: $00
    di                                            ; $700b: $f3
    inc de                                        ; $700c: $13
    inc d                                         ; $700d: $14
    dec d                                         ; $700e: $15
    di                                            ; $700f: $f3
    db $d3                                        ; $7010: $d3
    call nc, Call_0c1_40d5                        ; $7011: $d4 $d5 $40
    sub $21                                       ; $7014: $d6 $21
    nop                                           ; $7016: $00
    inc b                                         ; $7017: $04
    dec b                                         ; $7018: $05
    di                                            ; $7019: $f3
    db $eb                                        ; $701a: $eb
    db $ec                                        ; $701b: $ec
    db $ed                                        ; $701c: $ed
    ld bc, $f3ee                                  ; $701d: $01 $ee $f3
    ld [hl+], a                                   ; $7020: $22
    inc hl                                        ; $7021: $23
    inc h                                         ; $7022: $24
    dec h                                         ; $7023: $25
    di                                            ; $7024: $f3
    ld b, e                                       ; $7025: $43
    ld [$35c0], sp                                ; $7026: $08 $c0 $35
    nop                                           ; $7029: $00
    ld e, $00                                     ; $702a: $1e $00
    ei                                            ; $702c: $fb
    db $fc                                        ; $702d: $fc
    db $fd                                        ; $702e: $fd
    cp $f3                                        ; $702f: $fe $f3
    ld [hl-], a                                   ; $7031: $32
    ld [bc], a                                    ; $7032: $02
    inc sp                                        ; $7033: $33
    inc [hl]                                      ; $7034: $34
    dec [hl]                                      ; $7035: $35
    di                                            ; $7036: $f3
    di                                            ; $7037: $f3
    db $f4                                        ; $7038: $f4
    scf                                           ; $7039: $37
    nop                                           ; $703a: $00
    di                                            ; $703b: $f3
    ld b, b                                       ; $703c: $40
    di                                            ; $703d: $f3
    ld e, $00                                     ; $703e: $1e $00
    dec bc                                        ; $7040: $0b
    inc c                                         ; $7041: $0c
    dec c                                         ; $7042: $0d
    ld c, $f3                                     ; $7043: $0e $f3
    ld b, d                                       ; $7045: $42
    nop                                           ; $7046: $00
    ld b, e                                       ; $7047: $43
    ld b, h                                       ; $7048: $44
    ld b, l                                       ; $7049: $45
    di                                            ; $704a: $f3
    inc bc                                        ; $704b: $03
    inc b                                         ; $704c: $04
    dec b                                         ; $704d: $05
    ld b, $80                                     ; $704e: $06 $80
    ld e, l                                       ; $7050: $5d
    nop                                           ; $7051: $00
    inc sp                                        ; $7052: $33
    inc [hl]                                      ; $7053: $34
    di                                            ; $7054: $f3
    dec [hl]                                      ; $7055: $35
    ld [hl], $37                                  ; $7056: $36 $37
    jr c, jr_0c1_705a                             ; $7058: $38 $00

jr_0c1_705a:
    add hl, sp                                    ; $705a: $39
    ld a, [hl-]                                   ; $705b: $3a
    dec sp                                        ; $705c: $3b
    inc a                                         ; $705d: $3c
    dec a                                         ; $705e: $3d
    add hl, sp                                    ; $705f: $39
    jr c, @+$39                                   ; $7060: $38 $37

    ld b, h                                       ; $7062: $44
    ld [hl], $2d                                  ; $7063: $36 $2d
    nop                                           ; $7065: $00
    di                                            ; $7066: $f3
    ccf                                           ; $7067: $3f
    ld b, b                                       ; $7068: $40
    halt                                          ; $7069: $76
    jr nz, jr_0c1_70c0                            ; $706a: $20 $54

    ld d, l                                       ; $706c: $55
    sub d                                         ; $706d: $92
    ld a, a                                       ; $706e: $7f
    jr nc, jr_0c1_70b6                            ; $706f: $30 $45

    ld b, [hl]                                    ; $7071: $46
    adc d                                         ; $7072: $8a
    jr nz, jr_0c1_70cf                            ; $7073: $20 $5a

    ld e, e                                       ; $7075: $5b
    sub e                                         ; $7076: $93
    jr nc, @+$4d                                  ; $7077: $30 $4b

    ld b, d                                       ; $7079: $42
    ld c, h                                       ; $707a: $4c
    sbc [hl]                                      ; $707b: $9e
    ld l, b                                       ; $707c: $68
    di                                            ; $707d: $f3
    di                                            ; $707e: $f3
    ld c, a                                       ; $707f: $4f
    ld d, b                                       ; $7080: $50
    inc d                                         ; $7081: $14
    ld a, b                                       ; $7082: $78
    ld d, d                                       ; $7083: $52
    ld c, [hl]                                    ; $7084: $4e
    ld d, e                                       ; $7085: $53
    jr z, jr_0c1_7100                             ; $7086: $28 $78

    ld d, [hl]                                    ; $7088: $56
    ld d, a                                       ; $7089: $57
    inc a                                         ; $708a: $3c
    ld a, b                                       ; $708b: $78
    ld e, e                                       ; $708c: $5b
    ld b, b                                       ; $708d: $40
    rst $30                                       ; $708e: $f7
    jr nc, jr_0c1_70f0                            ; $708f: $30 $5f

    ld c, c                                       ; $7091: $49
    ld h, b                                       ; $7092: $60
    ld [bc], a                                    ; $7093: $02
    ld d, c                                       ; $7094: $51
    ld h, h                                       ; $7095: $64
    ld h, l                                       ; $7096: $65
    ld de, $6501                                  ; $7097: $11 $01 $65
    ld h, [hl]                                    ; $709a: $66
    ld d, $51                                     ; $709b: $16 $51
    jr nz, jr_0c1_7111                            ; $709d: $20 $72

    ld [hl], e                                    ; $709f: $73
    dec h                                         ; $70a0: $25
    ld bc, $6a69                                  ; $70a1: $01 $69 $6a
    pop af                                        ; $70a4: $f1
    pop af                                        ; $70a5: $f1
    ld l, e                                       ; $70a6: $6b
    db $10                                        ; $70a7: $10
    ld l, h                                       ; $70a8: $6c
    ld l, l                                       ; $70a9: $6d
    ld l, [hl]                                    ; $70aa: $6e
    ld bc, $6f30                                  ; $70ab: $01 $30 $6f
    ld [hl], b                                    ; $70ae: $70
    ld [hl], c                                    ; $70af: $71
    ld [hl], l                                    ; $70b0: $75
    ld bc, $7776                                  ; $70b1: $01 $76 $77
    ld a, b                                       ; $70b4: $78
    ld a, c                                       ; $70b5: $79

jr_0c1_70b6:
    ld a, d                                       ; $70b6: $7a
    ld a, e                                       ; $70b7: $7b
    ld a, h                                       ; $70b8: $7c
    ld bc, $0220                                  ; $70b9: $01 $20 $02
    ld a, l                                       ; $70bc: $7d
    ld a, [hl]                                    ; $70bd: $7e
    ld a, a                                       ; $70be: $7f
    add b                                         ; $70bf: $80

jr_0c1_70c0:
    ld a, c                                       ; $70c0: $79
    ld [bc], a                                    ; $70c1: $02

jr_0c1_70c2:
    ld bc, $0188                                  ; $70c2: $01 $88 $01
    rst $18                                       ; $70c5: $df
    ld bc, $1478                                  ; $70c6: $01 $78 $14
    nop                                           ; $70c9: $00
    add hl, bc                                    ; $70ca: $09
    ld bc, $0600                                  ; $70cb: $01 $00 $06
    db $10                                        ; $70ce: $10

jr_0c1_70cf:
    ld a, [bc]                                    ; $70cf: $0a
    jr nz, jr_0c1_70e6                            ; $70d0: $20 $14

    jr nc, jr_0c1_70d9                            ; $70d2: $30 $05

    jr c, jr_0c1_70c2                             ; $70d4: $38 $ec

    inc d                                         ; $70d6: $14
    ld hl, sp+$3c                                 ; $70d7: $f8 $3c

jr_0c1_70d9:
    ld b, b                                       ; $70d9: $40
    ld h, [hl]                                    ; $70da: $66
    jr nc, jr_0c1_70fe                            ; $70db: $30 $21

    ld bc, $1408                                  ; $70dd: $01 $08 $14
    ld c, b                                       ; $70e0: $48
    ld c, $0e                                     ; $70e1: $0e $0e
    db $fc                                        ; $70e3: $fc
    ld a, b                                       ; $70e4: $78
    ld c, b                                       ; $70e5: $48

jr_0c1_70e6:
    inc d                                         ; $70e6: $14
    cp b                                          ; $70e7: $b8
    and b                                         ; $70e8: $a0
    ld e, b                                       ; $70e9: $58
    inc d                                         ; $70ea: $14
    ld hl, sp+$3c                                 ; $70eb: $f8 $3c
    ld hl, sp+$64                                 ; $70ed: $f8 $64
    xor b                                         ; $70ef: $a8

jr_0c1_70f0:
    rrca                                          ; $70f0: $0f
    rrca                                          ; $70f1: $0f
    sbc b                                         ; $70f2: $98
    inc d                                         ; $70f3: $14
    or b                                          ; $70f4: $b0
    ld b, c                                       ; $70f5: $41
    ld b, c                                       ; $70f6: $41
    inc l                                         ; $70f7: $2c
    ld [hl], c                                    ; $70f8: $71
    ld d, l                                       ; $70f9: $55
    ld [hl], c                                    ; $70fa: $71
    ld a, [bc]                                    ; $70fb: $0a
    ld [bc], a                                    ; $70fc: $02
    inc d                                         ; $70fd: $14

jr_0c1_70fe:
    nop                                           ; $70fe: $00
    ld [de], a                                    ; $70ff: $12

jr_0c1_7100:
    nop                                           ; $7100: $00
    db $d3                                        ; $7101: $d3
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    db $dd                                        ; $7104: $dd
    sbc $df                                       ; $7105: $de $df
    ldh [$e1], a                                  ; $7107: $e0 $e1
    ld [c], a                                     ; $7109: $e2
    db $e3                                        ; $710a: $e3
    db $e4                                        ; $710b: $e4
    ld [$e6e5], sp                                ; $710c: $08 $e5 $e6
    and $e7                                       ; $710f: $e6 $e7

jr_0c1_7111:
    inc bc                                        ; $7111: $03
    nop                                           ; $7112: $00
    add sp, -$17                                  ; $7113: $e8 $e9
    ld [$eb01], a                                 ; $7115: $ea $01 $eb
    db $eb                                        ; $7118: $eb
    rst $28                                       ; $7119: $ef
    ldh a, [$f1]                                  ; $711a: $f0 $f1
    ld a, [c]                                     ; $711c: $f2
    di                                            ; $711d: $f3
    ld bc, $0060                                  ; $711e: $01 $60 $00
    push af                                       ; $7121: $f5
    or $f3                                        ; $7122: $f6 $f3
    sub e                                         ; $7124: $93
    sub h                                         ; $7125: $94
    sub l                                         ; $7126: $95
    sub [hl]                                      ; $7127: $96
    di                                            ; $7128: $f3
    nop                                           ; $7129: $00
    add e                                         ; $712a: $83
    add h                                         ; $712b: $84
    add l                                         ; $712c: $85
    add [hl]                                      ; $712d: $86
    di                                            ; $712e: $f3
    add a                                         ; $712f: $87
    adc b                                         ; $7130: $88
    adc c                                         ; $7131: $89
    ld b, b                                       ; $7132: $40
    adc d                                         ; $7133: $8a
    ld hl, $0400                                  ; $7134: $21 $00 $04
    dec b                                         ; $7137: $05
    di                                            ; $7138: $f3
    and a                                         ; $7139: $a7
    xor b                                         ; $713a: $a8
    xor c                                         ; $713b: $a9
    nop                                           ; $713c: $00
    xor d                                         ; $713d: $aa
    di                                            ; $713e: $f3
    sub a                                         ; $713f: $97
    sbc b                                         ; $7140: $98
    sbc c                                         ; $7141: $99
    sbc d                                         ; $7142: $9a
    di                                            ; $7143: $f3
    sbc e                                         ; $7144: $9b
    db $10                                        ; $7145: $10
    sbc h                                         ; $7146: $9c
    sbc l                                         ; $7147: $9d
    sbc [hl]                                      ; $7148: $9e
    dec [hl]                                      ; $7149: $35
    nop                                           ; $714a: $00
    inc d                                         ; $714b: $14
    dec d                                         ; $714c: $15
    di                                            ; $714d: $f3
    cp e                                          ; $714e: $bb
    nop                                           ; $714f: $00
    cp h                                          ; $7150: $bc
    cp l                                          ; $7151: $bd
    cp [hl]                                       ; $7152: $be
    di                                            ; $7153: $f3
    xor e                                         ; $7154: $ab
    xor h                                         ; $7155: $ac
    xor l                                         ; $7156: $ad
    xor [hl]                                      ; $7157: $ae
    inc b                                         ; $7158: $04
    di                                            ; $7159: $f3
    xor a                                         ; $715a: $af
    or b                                          ; $715b: $b0
    or c                                          ; $715c: $b1
    or d                                          ; $715d: $b2
    ld c, c                                       ; $715e: $49
    nop                                           ; $715f: $00
    inc h                                         ; $7160: $24
    dec h                                         ; $7161: $25
    nop                                           ; $7162: $00
    di                                            ; $7163: $f3
    rst $08                                       ; $7164: $cf
    ret nc                                        ; $7165: $d0

    pop de                                        ; $7166: $d1
    jp nc, $bff3                                  ; $7167: $d2 $f3 $bf

    ret nz                                        ; $716a: $c0

    ld bc, $c2c1                                  ; $716b: $01 $c1 $c2
    di                                            ; $716e: $f3
    jp $c5c4                                      ; $716f: $c3 $c4 $c5


    add $5d                                       ; $7172: $c6 $5d
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    inc sp                                        ; $7176: $33
    inc [hl]                                      ; $7177: $34
    di                                            ; $7178: $f3
    dec [hl]                                      ; $7179: $35
    ld [hl], $37                                  ; $717a: $36 $37
    jr c, jr_0c1_71b7                             ; $717c: $38 $39

    nop                                           ; $717e: $00
    ld a, [hl-]                                   ; $717f: $3a
    dec sp                                        ; $7180: $3b
    inc a                                         ; $7181: $3c
    dec a                                         ; $7182: $3d
    add hl, sp                                    ; $7183: $39
    jr c, @+$39                                   ; $7184: $38 $37

    ld [hl], $49                                  ; $7186: $36 $49
    dec [hl]                                      ; $7188: $35
    ld [hl], c                                    ; $7189: $71
    nop                                           ; $718a: $00
    ccf                                           ; $718b: $3f
    ld b, b                                       ; $718c: $40
    halt                                          ; $718d: $76
    jr nz, jr_0c1_71e2                            ; $718e: $20 $52

    ld d, e                                       ; $7190: $53
    ld a, a                                       ; $7191: $7f
    jr nc, jr_0c1_71b8                            ; $7192: $30 $24

    ld b, l                                       ; $7194: $45
    ld b, [hl]                                    ; $7195: $46
    adc d                                         ; $7196: $8a
    jr nz, @+$5a                                  ; $7197: $20 $58

    ld e, c                                       ; $7199: $59
    sub e                                         ; $719a: $93
    jr nc, @+$4d                                  ; $719b: $30 $4b

    ld c, h                                       ; $719d: $4c
    add a                                         ; $719e: $87
    sbc [hl]                                      ; $719f: $9e
    ld l, b                                       ; $71a0: $68
    di                                            ; $71a1: $f3
    di                                            ; $71a2: $f3
    ld c, a                                       ; $71a3: $4f
    ld d, b                                       ; $71a4: $50
    inc d                                         ; $71a5: $14
    ld a, b                                       ; $71a6: $78
    ld b, a                                       ; $71a7: $47
    ld b, b                                       ; $71a8: $40
    rst $08                                       ; $71a9: $cf
    jr nc, @+$26                                  ; $71aa: $30 $24

    ld d, [hl]                                    ; $71ac: $56
    ld d, a                                       ; $71ad: $57
    inc a                                         ; $71ae: $3c
    ld a, b                                       ; $71af: $78
    ld e, d                                       ; $71b0: $5a
    ld e, e                                       ; $71b1: $5b
    ld d, b                                       ; $71b2: $50
    ld a, b                                       ; $71b3: $78
    ld e, a                                       ; $71b4: $5f
    ld h, b                                       ; $71b5: $60
    sub d                                         ; $71b6: $92

jr_0c1_71b7:
    ld [bc], a                                    ; $71b7: $02

jr_0c1_71b8:
    ld d, c                                       ; $71b8: $51
    ld h, b                                       ; $71b9: $60
    ld h, c                                       ; $71ba: $61
    ld de, $6501                                  ; $71bb: $11 $01 $65
    ld h, [hl]                                    ; $71be: $66
    ld d, $51                                     ; $71bf: $16 $51
    ld l, [hl]                                    ; $71c1: $6e
    ld b, b                                       ; $71c2: $40
    ld l, a                                       ; $71c3: $6f
    dec h                                         ; $71c4: $25
    ld bc, $6a69                                  ; $71c5: $01 $69 $6a
    pop af                                        ; $71c8: $f1
    pop af                                        ; $71c9: $f1
    ld l, e                                       ; $71ca: $6b
    ld l, h                                       ; $71cb: $6c
    jr nz, jr_0c1_723b                            ; $71cc: $20 $6d

    ld l, [hl]                                    ; $71ce: $6e
    ld bc, $6f30                                  ; $71cf: $01 $30 $6f
    ld [hl], b                                    ; $71d2: $70
    ld [hl], c                                    ; $71d3: $71
    ld [hl], l                                    ; $71d4: $75
    halt                                          ; $71d5: $76
    ld [bc], a                                    ; $71d6: $02
    ld [hl], a                                    ; $71d7: $77
    ld a, b                                       ; $71d8: $78
    ld a, c                                       ; $71d9: $79
    ld a, d                                       ; $71da: $7a
    ld a, e                                       ; $71db: $7b
    ld a, h                                       ; $71dc: $7c
    ld bc, $7d20                                  ; $71dd: $01 $20 $7d
    dec b                                         ; $71e0: $05
    ld a, [hl]                                    ; $71e1: $7e

jr_0c1_71e2:
    ld a, a                                       ; $71e2: $7f
    add b                                         ; $71e3: $80
    ld a, c                                       ; $71e4: $79
    ld [bc], a                                    ; $71e5: $02
    ld bc, $0188                                  ; $71e6: $01 $88 $01
    ld bc, $be78                                  ; $71e9: $01 $78 $be
    inc d                                         ; $71ec: $14
    nop                                           ; $71ed: $00
    add hl, bc                                    ; $71ee: $09
    ld bc, $0500                                  ; $71ef: $01 $00 $05
    ld b, b                                       ; $71f2: $40
    inc d                                         ; $71f3: $14
    ld hl, sp+$28                                 ; $71f4: $f8 $28
    ldh [$66], a                                  ; $71f6: $e0 $66
    jr nc, jr_0c1_721b                            ; $71f8: $30 $21

    rst $08                                       ; $71fa: $cf
    ld bc, $1408                                  ; $71fb: $01 $08 $14
    ld c, b                                       ; $71fe: $48
    ld c, $0e                                     ; $71ff: $0e $0e
    ld a, b                                       ; $7201: $78
    ld c, b                                       ; $7202: $48
    inc d                                         ; $7203: $14
    cp b                                          ; $7204: $b8
    and b                                         ; $7205: $a0
    ld e, b                                       ; $7206: $58
    inc d                                         ; $7207: $14
    ld hl, sp-$37                                 ; $7208: $f8 $c9
    inc a                                         ; $720a: $3c
    ld hl, sp+$64                                 ; $720b: $f8 $64
    xor b                                         ; $720d: $a8
    rrca                                          ; $720e: $0f
    rrca                                          ; $720f: $0f
    inc d                                         ; $7210: $14
    or b                                          ; $7211: $b0
    ld b, c                                       ; $7212: $41
    ld b, c                                       ; $7213: $41
    inc l                                         ; $7214: $2c
    ld [hl], c                                    ; $7215: $71
    add b                                         ; $7216: $80
    ld d, l                                       ; $7217: $55
    ld [hl], c                                    ; $7218: $71
    ld a, [bc]                                    ; $7219: $0a
    ld [bc], a                                    ; $721a: $02

jr_0c1_721b:
    inc d                                         ; $721b: $14
    nop                                           ; $721c: $00
    ld [de], a                                    ; $721d: $12
    nop                                           ; $721e: $00
    ret                                           ; $721f: $c9


    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    db $dd                                        ; $7222: $dd
    sbc $df                                       ; $7223: $de $df
    ldh [$e1], a                                  ; $7225: $e0 $e1
    ld [c], a                                     ; $7227: $e2
    db $e3                                        ; $7228: $e3
    db $e4                                        ; $7229: $e4
    ld [$e6e5], sp                                ; $722a: $08 $e5 $e6
    and $e7                                       ; $722d: $e6 $e7
    inc bc                                        ; $722f: $03
    nop                                           ; $7230: $00
    add sp, -$17                                  ; $7231: $e8 $e9
    ld [$eb01], a                                 ; $7233: $ea $01 $eb
    db $eb                                        ; $7236: $eb
    rst $28                                       ; $7237: $ef
    ldh a, [$f1]                                  ; $7238: $f0 $f1
    ld a, [c]                                     ; $723a: $f2

jr_0c1_723b:
    di                                            ; $723b: $f3
    ld bc, $1060                                  ; $723c: $01 $60 $10
    push af                                       ; $723f: $f5
    or $f3                                        ; $7240: $f6 $f3
    add hl, hl                                    ; $7242: $29
    ld [$8ff3], sp                                ; $7243: $08 $f3 $8f
    sub b                                         ; $7246: $90
    sub c                                         ; $7247: $91
    ld [bc], a                                    ; $7248: $02
    sub d                                         ; $7249: $92
    di                                            ; $724a: $f3
    db $d3                                        ; $724b: $d3
    call nc, $d6d5                                ; $724c: $d4 $d5 $d6
    ld hl, $0400                                  ; $724f: $21 $00 $04
    jr nz, jr_0c1_7259                            ; $7252: $20 $05

    di                                            ; $7254: $f3
    dec hl                                        ; $7255: $2b
    db $10                                        ; $7256: $10
    and e                                         ; $7257: $a3
    and h                                         ; $7258: $a4

jr_0c1_7259:
    and l                                         ; $7259: $a5
    and [hl]                                      ; $725a: $a6
    di                                            ; $725b: $f3
    ret nz                                        ; $725c: $c0

    ld b, e                                       ; $725d: $43
    ld [$0035], sp                                ; $725e: $08 $35 $00
    inc d                                         ; $7261: $14
    dec d                                         ; $7262: $15
    di                                            ; $7263: $f3
    rst $38                                       ; $7264: $ff
    nop                                           ; $7265: $00
    ld bc, $0200                                  ; $7266: $01 $00 $02
    di                                            ; $7269: $f3
    or a                                          ; $726a: $b7
    cp b                                          ; $726b: $b8
    cp c                                          ; $726c: $b9
    cp d                                          ; $726d: $ba
    di                                            ; $726e: $f3
    di                                            ; $726f: $f3
    ld b, b                                       ; $7270: $40
    db $f4                                        ; $7271: $f4
    scf                                           ; $7272: $37
    nop                                           ; $7273: $00
    di                                            ; $7274: $f3
    di                                            ; $7275: $f3
    inc h                                         ; $7276: $24
    dec h                                         ; $7277: $25
    di                                            ; $7278: $f3
    rrca                                          ; $7279: $0f
    nop                                           ; $727a: $00
    db $10                                        ; $727b: $10
    ld de, $f312                                  ; $727c: $11 $12 $f3
    set 1, h                                      ; $727f: $cb $cc
    call Call_000_04ce                            ; $7281: $cd $ce $04
    di                                            ; $7284: $f3
    inc bc                                        ; $7285: $03
    inc b                                         ; $7286: $04
    dec b                                         ; $7287: $05
    ld b, $5d                                     ; $7288: $06 $5d
    nop                                           ; $728a: $00
    inc sp                                        ; $728b: $33
    inc [hl]                                      ; $728c: $34
    nop                                           ; $728d: $00
    di                                            ; $728e: $f3
    dec [hl]                                      ; $728f: $35
    ld [hl], $37                                  ; $7290: $36 $37
    jr c, jr_0c1_72cd                             ; $7292: $38 $39

    ld a, [hl-]                                   ; $7294: $3a
    dec sp                                        ; $7295: $3b
    ld bc, $3d3c                                  ; $7296: $01 $3c $3d
    add hl, sp                                    ; $7299: $39
    jr c, @+$39                                   ; $729a: $38 $37

    ld [hl], $35                                  ; $729c: $36 $35
    ld [hl], c                                    ; $729e: $71
    nop                                           ; $729f: $00
    inc h                                         ; $72a0: $24
    ccf                                           ; $72a1: $3f
    ld b, b                                       ; $72a2: $40
    halt                                          ; $72a3: $76
    jr nz, jr_0c1_72fa                            ; $72a4: $20 $54

    ld d, l                                       ; $72a6: $55
    ld a, a                                       ; $72a7: $7f
    jr nc, @+$47                                  ; $72a8: $30 $45

    ld b, [hl]                                    ; $72aa: $46
    sub d                                         ; $72ab: $92
    adc d                                         ; $72ac: $8a
    jr nz, jr_0c1_7309                            ; $72ad: $20 $5a

    ld e, e                                       ; $72af: $5b
    sub e                                         ; $72b0: $93
    jr nc, @+$4d                                  ; $72b1: $30 $4b

    ld c, h                                       ; $72b3: $4c
    sbc [hl]                                      ; $72b4: $9e
    ld l, b                                       ; $72b5: $68
    di                                            ; $72b6: $f3
    ld [de], a                                    ; $72b7: $12
    di                                            ; $72b8: $f3
    ld c, a                                       ; $72b9: $4f
    ld d, b                                       ; $72ba: $50
    inc d                                         ; $72bb: $14
    ld a, b                                       ; $72bc: $78
    ld d, d                                       ; $72bd: $52
    ld d, e                                       ; $72be: $53
    jr z, jr_0c1_7339                             ; $72bf: $28 $78

    ld d, [hl]                                    ; $72c1: $56
    ld [hl], d                                    ; $72c2: $72
    ld d, a                                       ; $72c3: $57
    inc a                                         ; $72c4: $3c
    ld a, b                                       ; $72c5: $78
    ld e, e                                       ; $72c6: $5b
    ld b, b                                       ; $72c7: $40
    rst $30                                       ; $72c8: $f7
    jr nc, jr_0c1_732a                            ; $72c9: $30 $5f

    ld h, b                                       ; $72cb: $60
    ld [bc], a                                    ; $72cc: $02

jr_0c1_72cd:
    ld d, c                                       ; $72cd: $51
    ld l, b                                       ; $72ce: $68
    ld c, c                                       ; $72cf: $49
    ld l, c                                       ; $72d0: $69
    ld de, $6501                                  ; $72d1: $11 $01 $65
    ld h, [hl]                                    ; $72d4: $66
    ld d, $51                                     ; $72d5: $16 $51
    halt                                          ; $72d7: $76
    ld [hl], a                                    ; $72d8: $77
    dec h                                         ; $72d9: $25
    ld bc, $6900                                  ; $72da: $01 $00 $69
    ld l, d                                       ; $72dd: $6a
    pop af                                        ; $72de: $f1
    pop af                                        ; $72df: $f1
    ld l, e                                       ; $72e0: $6b
    ld l, h                                       ; $72e1: $6c
    ld l, l                                       ; $72e2: $6d
    ld l, [hl]                                    ; $72e3: $6e
    add b                                         ; $72e4: $80
    ld bc, $6f30                                  ; $72e5: $01 $30 $6f
    ld [hl], b                                    ; $72e8: $70
    ld [hl], c                                    ; $72e9: $71
    ld [hl], l                                    ; $72ea: $75
    halt                                          ; $72eb: $76
    ld [hl], a                                    ; $72ec: $77
    ld a, b                                       ; $72ed: $78
    ld [$7a79], sp                                ; $72ee: $08 $79 $7a
    ld a, e                                       ; $72f1: $7b
    ld a, h                                       ; $72f2: $7c
    ld bc, $7d20                                  ; $72f3: $01 $20 $7d
    ld a, [hl]                                    ; $72f6: $7e
    ld a, a                                       ; $72f7: $7f
    ld d, $80                                     ; $72f8: $16 $80

jr_0c1_72fa:
    ld a, c                                       ; $72fa: $79
    ld [bc], a                                    ; $72fb: $02
    ld bc, $0188                                  ; $72fc: $01 $88 $01
    ld bc, $1478                                  ; $72ff: $01 $78 $14
    nop                                           ; $7302: $00
    add hl, bc                                    ; $7303: $09
    ei                                            ; $7304: $fb
    ld bc, $0500                                  ; $7305: $01 $00 $05
    ld b, b                                       ; $7308: $40

jr_0c1_7309:
    inc d                                         ; $7309: $14
    ld hl, sp+$28                                 ; $730a: $f8 $28
    ldh [$66], a                                  ; $730c: $e0 $66
    jr nc, jr_0c1_7331                            ; $730e: $30 $21

    ld bc, $1408                                  ; $7310: $01 $08 $14
    ld c, b                                       ; $7313: $48
    ccf                                           ; $7314: $3f
    ld c, $0e                                     ; $7315: $0e $0e
    ld a, b                                       ; $7317: $78
    ld c, b                                       ; $7318: $48
    inc d                                         ; $7319: $14
    cp b                                          ; $731a: $b8
    and b                                         ; $731b: $a0
    ld e, b                                       ; $731c: $58
    inc d                                         ; $731d: $14
    ld hl, sp+$3c                                 ; $731e: $f8 $3c
    ld hl, sp+$64                                 ; $7320: $f8 $64
    xor b                                         ; $7322: $a8
    ld h, $0f                                     ; $7323: $26 $0f
    rrca                                          ; $7325: $0f
    inc d                                         ; $7326: $14
    or b                                          ; $7327: $b0
    ld b, c                                       ; $7328: $41
    ld b, c                                       ; $7329: $41

jr_0c1_732a:
    inc l                                         ; $732a: $2c
    ld [hl], c                                    ; $732b: $71
    ld d, l                                       ; $732c: $55
    ld [hl], c                                    ; $732d: $71
    ld a, [bc]                                    ; $732e: $0a
    nop                                           ; $732f: $00
    ld [bc], a                                    ; $7330: $02

jr_0c1_7331:
    inc d                                         ; $7331: $14
    nop                                           ; $7332: $00
    ld [de], a                                    ; $7333: $12
    nop                                           ; $7334: $00
    ld [hl], c                                    ; $7335: $71
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    db $dd                                        ; $7338: $dd

jr_0c1_7339:
    sbc $df                                       ; $7339: $de $df
    ldh [$e1], a                                  ; $733b: $e0 $e1
    ld [c], a                                     ; $733d: $e2
    db $e3                                        ; $733e: $e3
    db $e4                                        ; $733f: $e4
    ld [$e6e5], sp                                ; $7340: $08 $e5 $e6
    and $e7                                       ; $7343: $e6 $e7
    inc bc                                        ; $7345: $03
    nop                                           ; $7346: $00
    add sp, -$17                                  ; $7347: $e8 $e9
    ld [$eb01], a                                 ; $7349: $ea $01 $eb
    db $eb                                        ; $734c: $eb
    rst $28                                       ; $734d: $ef
    ldh a, [$f1]                                  ; $734e: $f0 $f1
    ld a, [c]                                     ; $7350: $f2
    di                                            ; $7351: $f3
    ld bc, $2160                                  ; $7352: $01 $60 $21
    push af                                       ; $7355: $f5
    or $12                                        ; $7356: $f6 $12
    ld l, b                                       ; $7358: $68
    di                                            ; $7359: $f3
    di                                            ; $735a: $f3
    inc b                                         ; $735b: $04
    dec b                                         ; $735c: $05
    inc d                                         ; $735d: $14
    ld a, b                                       ; $735e: $78
    inc h                                         ; $735f: $24
    inc d                                         ; $7360: $14
    dec d                                         ; $7361: $15
    jr z, @+$7a                                   ; $7362: $28 $78

    inc h                                         ; $7364: $24
    dec h                                         ; $7365: $25
    inc a                                         ; $7366: $3c
    ld a, b                                       ; $7367: $78
    inc sp                                        ; $7368: $33
    inc [hl]                                      ; $7369: $34
    sub d                                         ; $736a: $92
    ld d, b                                       ; $736b: $50
    ld a, b                                       ; $736c: $78
    ccf                                           ; $736d: $3f
    ld b, b                                       ; $736e: $40
    ld h, h                                       ; $736f: $64
    ld a, b                                       ; $7370: $78
    ld b, l                                       ; $7371: $45
    ld b, [hl]                                    ; $7372: $46
    ld a, b                                       ; $7373: $78
    ld a, b                                       ; $7374: $78
    ld c, e                                       ; $7375: $4b
    ld c, c                                       ; $7376: $49
    ld c, h                                       ; $7377: $4c
    adc h                                         ; $7378: $8c
    ld a, b                                       ; $7379: $78
    ld c, a                                       ; $737a: $4f
    ld d, b                                       ; $737b: $50
    and b                                         ; $737c: $a0
    ld a, b                                       ; $737d: $78
    ld d, d                                       ; $737e: $52
    ld d, e                                       ; $737f: $53
    or h                                          ; $7380: $b4
    ld a, b                                       ; $7381: $78
    inc h                                         ; $7382: $24
    ld d, [hl]                                    ; $7383: $56
    ld d, a                                       ; $7384: $57
    ret z                                         ; $7385: $c8

    ld a, b                                       ; $7386: $78
    ld e, d                                       ; $7387: $5a
    ld e, e                                       ; $7388: $5b
    call c, Call_0c1_5f78                         ; $7389: $dc $78 $5f
    ld h, b                                       ; $738c: $60
    sub b                                         ; $738d: $90
    ldh a, [$78]                                  ; $738e: $f0 $78
    ld h, l                                       ; $7390: $65
    ld h, [hl]                                    ; $7391: $66
    inc b                                         ; $7392: $04
    ld a, c                                       ; $7393: $79
    ld l, c                                       ; $7394: $69
    ld l, d                                       ; $7395: $6a
    pop af                                        ; $7396: $f1
    pop af                                        ; $7397: $f1
    ld [$6c6b], sp                                ; $7398: $08 $6b $6c
    ld l, l                                       ; $739b: $6d
    ld l, [hl]                                    ; $739c: $6e
    ld bc, $6f30                                  ; $739d: $01 $30 $6f
    ld [hl], b                                    ; $73a0: $70
    ld [hl], c                                    ; $73a1: $71
    nop                                           ; $73a2: $00
    ld [hl], l                                    ; $73a3: $75
    halt                                          ; $73a4: $76
    ld [hl], a                                    ; $73a5: $77
    ld a, b                                       ; $73a6: $78
    ld a, c                                       ; $73a7: $79
    ld a, d                                       ; $73a8: $7a
    ld a, e                                       ; $73a9: $7b
    ld a, h                                       ; $73aa: $7c
    add c                                         ; $73ab: $81
    ld bc, $7d20                                  ; $73ac: $01 $20 $7d
    ld a, [hl]                                    ; $73af: $7e
    ld a, a                                       ; $73b0: $7f
    add b                                         ; $73b1: $80
    ld a, c                                       ; $73b2: $79
    ld [bc], a                                    ; $73b3: $02
    ld bc, $7f88                                  ; $73b4: $01 $88 $7f
    ld bc, $7801                                  ; $73b7: $01 $01 $78
    inc d                                         ; $73ba: $14
    ld hl, sp+$28                                 ; $73bb: $f8 $28
    ld hl, sp+$50                                 ; $73bd: $f8 $50
    ld hl, sp+$78                                 ; $73bf: $f8 $78
    ld hl, sp-$74                                 ; $73c1: $f8 $8c
    ld hl, sp-$4c                                 ; $73c3: $f8 $b4
    ld hl, sp-$1a                                 ; $73c5: $f8 $e6
    call c, $f0f8                                 ; $73c7: $dc $f8 $f0
    ld hl, sp+$18                                 ; $73ca: $f8 $18
    add hl, sp                                    ; $73cc: $39
    ld b, c                                       ; $73cd: $41
    ld b, c                                       ; $73ce: $41
    inc l                                         ; $73cf: $2c
    ld [hl], c                                    ; $73d0: $71
    ld d, l                                       ; $73d1: $55
    ld [hl], c                                    ; $73d2: $71
    ld a, [bc]                                    ; $73d3: $0a
    nop                                           ; $73d4: $00
    ld [bc], a                                    ; $73d5: $02

    db $1f, $00, $12, $00, $a3, $00, $59, $9c, $01, $80, $9d, $01, $38, $1f, $88, $89
    db $88, $02, $30, $ce, $2a, $40, $0b, $88, $80, $81, $02, $08, $25, $50, $0e, $48
    db $82, $73, $83, $02, $08, $44, $50, $0e, $48, $84, $85, $02, $08, $63, $50, $98
    db $0e, $48, $86, $87, $02, $08, $82, $50, $87, $93, $92, $e4, $02, $30, $a5, $38
    db $af, $38, $9f, $9e, $01, $28, $9f, $8a, $64, $8b, $02, $08, $c0, $50, $8b, $b4
    db $f9, $30, $b4, $8c, $69, $8d, $02, $08, $df, $50, $8d, $1f, $40, $8e, $8f, $02
    db $08, $a6, $fe, $50, $8f, $3e, $40, $90, $91, $02, $08, $1d, $51, $91, $f3, $5d
    db $40, $a5, $38, $af, $38, $7c, $40, $94, $95, $02, $08, $5b, $51, $4d, $95, $ba
    db $40, $96, $97, $02, $08, $7a, $51, $97, $c6, $41, $34, $98, $99, $02, $08, $99
    db $51, $99, $e5, $41, $9a, $9b, $d0, $02, $08, $b8, $51, $9b, $04, $42, $b2, $b1
    db $b0, $af, $00, $ae, $ad, $ac, $ab, $aa, $a9, $a8, $a7, $00, $a6, $a5, $a4, $a3
    db $a2, $a1, $a0, $b3, $b5, $23, $42, $00, $01, $f8, $23, $68, $05, $01, $38, $02
    db $01, $80, $f6, $52, $40, $11, $70, $13, $00, $1f, $d8, $05, $1f, $f8, $3e, $c8
    db $06, $ea, $01, $38, $9b, $20, $ad, $40, $05, $5d, $40, $20, $9b, $d8, $20, $6e
    db $03, $01, $10, $1d, $51, $06, $1f, $f8, $3e, $f8, $5d, $40, $03, $a5, $ad, $40
    db $06, $5d, $e0, $03, $40, $01, $30, $60, $9b, $d8, $36, $00, $04, $01, $10, $d7
    db $51, $07, $1f, $f8, $3e, $58, $04, $60, $07, $01, $48, $23, $42, $14, $00, $02
    db $00, $b5, $b5, $b5, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2
    db $c3, $c4, $b5, $b5, $b5, $b5, $b5, $b5, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc
    db $cd, $ce, $cf, $d0, $d1, $b6, $b5, $b5, $b5, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00

    inc d                                         ; $7537: $14
    nop                                           ; $7538: $00
    ld [bc], a                                    ; $7539: $02
    nop                                           ; $753a: $00
    or l                                          ; $753b: $b5
    or l                                          ; $753c: $b5
    or l                                          ; $753d: $b5
    or a                                          ; $753e: $b7
    cp b                                          ; $753f: $b8
    cp c                                          ; $7540: $b9
    cp d                                          ; $7541: $ba
    cp e                                          ; $7542: $bb
    cp h                                          ; $7543: $bc
    cp l                                          ; $7544: $bd
    cp [hl]                                       ; $7545: $be
    cp a                                          ; $7546: $bf
    ret nz                                        ; $7547: $c0

    pop bc                                        ; $7548: $c1
    jp nz, $c4c3                                  ; $7549: $c2 $c3 $c4

    or l                                          ; $754c: $b5
    or l                                          ; $754d: $b5
    or l                                          ; $754e: $b5
    or l                                          ; $754f: $b5
    or l                                          ; $7550: $b5
    or l                                          ; $7551: $b5
    push bc                                       ; $7552: $c5
    add $c7                                       ; $7553: $c6 $c7
    ret z                                         ; $7555: $c8

    ret                                           ; $7556: $c9


    jp z, $cccb                                   ; $7557: $ca $cb $cc

    call $cfce                                    ; $755a: $cd $ce $cf
    ret nc                                        ; $755d: $d0

    pop de                                        ; $755e: $d1
    or [hl]                                       ; $755f: $b6
    or l                                          ; $7560: $b5
    or l                                          ; $7561: $b5
    or l                                          ; $7562: $b5
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    nop                                           ; $756d: $00
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    nop                                           ; $757c: $00
    nop                                           ; $757d: $00
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    inc d                                         ; $758b: $14
    nop                                           ; $758c: $00
    ld [bc], a                                    ; $758d: $02
    nop                                           ; $758e: $00
    or l                                          ; $758f: $b5
    or l                                          ; $7590: $b5
    db $d3                                        ; $7591: $d3
    call nc, $d1d2                                ; $7592: $d4 $d2 $d1
    ret nc                                        ; $7595: $d0

    rst $08                                       ; $7596: $cf
    adc $cd                                       ; $7597: $ce $cd
    call z, $cacb                                 ; $7599: $cc $cb $ca
    ret                                           ; $759c: $c9


    ret z                                         ; $759d: $c8

    rst $00                                       ; $759e: $c7
    add $c5                                       ; $759f: $c6 $c5
    or l                                          ; $75a1: $b5
    or l                                          ; $75a2: $b5
    or l                                          ; $75a3: $b5
    or l                                          ; $75a4: $b5
    call nz, $c2c3                                ; $75a5: $c4 $c3 $c2
    pop bc                                        ; $75a8: $c1
    ret nz                                        ; $75a9: $c0

    cp a                                          ; $75aa: $bf
    cp [hl]                                       ; $75ab: $be
    or l                                          ; $75ac: $b5
    cp l                                          ; $75ad: $bd
    cp h                                          ; $75ae: $bc
    cp e                                          ; $75af: $bb
    cp d                                          ; $75b0: $ba
    cp c                                          ; $75b1: $b9
    cp b                                          ; $75b2: $b8
    or a                                          ; $75b3: $b7
    or [hl]                                       ; $75b4: $b6
    or l                                          ; $75b5: $b5
    or l                                          ; $75b6: $b5
    nop                                           ; $75b7: $00
    nop                                           ; $75b8: $00
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    nop                                           ; $75bb: $00
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    nop                                           ; $75c0: $00
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    nop                                           ; $75c3: $00
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    nop                                           ; $75d4: $00
    nop                                           ; $75d5: $00
    nop                                           ; $75d6: $00
    nop                                           ; $75d7: $00
    nop                                           ; $75d8: $00
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    inc d                                         ; $75df: $14
    nop                                           ; $75e0: $00
    ld [bc], a                                    ; $75e1: $02
    nop                                           ; $75e2: $00
    call c, $dadb                                 ; $75e3: $dc $db $da
    reti                                          ; $75e6: $d9


    ret c                                         ; $75e7: $d8

    rst $10                                       ; $75e8: $d7
    sub $d5                                       ; $75e9: $d6 $d5
    call nc, $d1d3                                ; $75eb: $d4 $d3 $d1
    ret nc                                        ; $75ee: $d0

    call nz, $cecf                                ; $75ef: $c4 $cf $ce
    call $cbcc                                    ; $75f2: $cd $cc $cb
    jp z, $b5c9                                   ; $75f5: $ca $c9 $b5

    ret z                                         ; $75f8: $c8

    rst $00                                       ; $75f9: $c7
    add $c5                                       ; $75fa: $c6 $c5
    jp $c1c2                                      ; $75fc: $c3 $c2 $c1


    ret nz                                        ; $75ff: $c0

    cp a                                          ; $7600: $bf
    cp [hl]                                       ; $7601: $be
    cp l                                          ; $7602: $bd
    jp nc, $bbbc                                  ; $7603: $d2 $bc $bb

    cp d                                          ; $7606: $ba
    cp c                                          ; $7607: $b9
    cp b                                          ; $7608: $b8
    or a                                          ; $7609: $b7
    or [hl]                                       ; $760a: $b6
    nop                                           ; $760b: $00
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    nop                                           ; $761b: $00
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    inc d                                         ; $7633: $14
    nop                                           ; $7634: $00
    ld [bc], a                                    ; $7635: $02
    nop                                           ; $7636: $00
    or l                                          ; $7637: $b5
    reti                                          ; $7638: $d9


    ret c                                         ; $7639: $d8

    rst $10                                       ; $763a: $d7
    sub $d5                                       ; $763b: $d6 $d5
    call nc, $d2d3                                ; $763d: $d4 $d3 $d2
    pop de                                        ; $7640: $d1
    ret nc                                        ; $7641: $d0

    rst $08                                       ; $7642: $cf
    adc $cd                                       ; $7643: $ce $cd
    call z, $cacb                                 ; $7645: $cc $cb $ca
    ret                                           ; $7648: $c9


    ret z                                         ; $7649: $c8

    or l                                          ; $764a: $b5
    or l                                          ; $764b: $b5
    rst $00                                       ; $764c: $c7
    add $c5                                       ; $764d: $c6 $c5
    call nz, $c2c3                                ; $764f: $c4 $c3 $c2
    pop bc                                        ; $7652: $c1
    ret nz                                        ; $7653: $c0

    cp a                                          ; $7654: $bf
    cp [hl]                                       ; $7655: $be
    cp l                                          ; $7656: $bd
    cp h                                          ; $7657: $bc
    cp e                                          ; $7658: $bb
    cp d                                          ; $7659: $ba
    cp c                                          ; $765a: $b9
    cp b                                          ; $765b: $b8
    or a                                          ; $765c: $b7
    or [hl]                                       ; $765d: $b6
    or l                                          ; $765e: $b5
    nop                                           ; $765f: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767a: $00
    nop                                           ; $767b: $00
    nop                                           ; $767c: $00
    nop                                           ; $767d: $00
    nop                                           ; $767e: $00
    nop                                           ; $767f: $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    inc d                                         ; $7687: $14
    nop                                           ; $7688: $00
    ld [bc], a                                    ; $7689: $02
    nop                                           ; $768a: $00
    jp c, $d8d9                                   ; $768b: $da $d9 $d8

    call c, $d7d8                                 ; $768e: $dc $d8 $d7
    sub $d5                                       ; $7691: $d6 $d5
    call nc, $d2d3                                ; $7693: $d4 $d3 $d2
    pop de                                        ; $7696: $d1
    ret nc                                        ; $7697: $d0

    rst $08                                       ; $7698: $cf
    adc $cd                                       ; $7699: $ce $cd
    call z, $bacb                                 ; $769b: $cc $cb $ba
    jp z, $c7c9                                   ; $769e: $ca $c9 $c7

    add $c5                                       ; $76a1: $c6 $c5
    call nz, $c2c3                                ; $76a3: $c4 $c3 $c2
    pop bc                                        ; $76a6: $c1
    ret nz                                        ; $76a7: $c0

    cp a                                          ; $76a8: $bf
    cp [hl]                                       ; $76a9: $be
    cp l                                          ; $76aa: $bd
    cp h                                          ; $76ab: $bc
    cp e                                          ; $76ac: $bb
    cp c                                          ; $76ad: $b9
    cp b                                          ; $76ae: $b8
    db $db                                        ; $76af: $db
    or a                                          ; $76b0: $b7
    ret z                                         ; $76b1: $c8

    or [hl]                                       ; $76b2: $b6
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    jr nz, jr_0c1_76b8                            ; $76b6: $20 $00

jr_0c1_76b8:
    nop                                           ; $76b8: $00
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    nop                                           ; $76bb: $00
    nop                                           ; $76bc: $00
    nop                                           ; $76bd: $00
    nop                                           ; $76be: $00
    nop                                           ; $76bf: $00
    nop                                           ; $76c0: $00
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    nop                                           ; $76c3: $00
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    nop                                           ; $76d6: $00
    jr nz, jr_0c1_76d9                            ; $76d7: $20 $00

jr_0c1_76d9:
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00
    inc d                                         ; $76db: $14
    nop                                           ; $76dc: $00
    ld [bc], a                                    ; $76dd: $02
    nop                                           ; $76de: $00
    or l                                          ; $76df: $b5
    or l                                          ; $76e0: $b5
    or l                                          ; $76e1: $b5
    adc $cd                                       ; $76e2: $ce $cd
    call z, $cbd0                                 ; $76e4: $cc $d0 $cb
    pop de                                        ; $76e7: $d1
    jp z, $c8c9                                   ; $76e8: $ca $c9 $c8

    rst $00                                       ; $76eb: $c7
    add $c5                                       ; $76ec: $c6 $c5
    call nz, $b5c3                                ; $76ee: $c4 $c3 $b5
    or l                                          ; $76f1: $b5
    or l                                          ; $76f2: $b5
    or l                                          ; $76f3: $b5
    or l                                          ; $76f4: $b5
    or l                                          ; $76f5: $b5
    jp nz, $c0c1                                  ; $76f6: $c2 $c1 $c0

    rst $08                                       ; $76f9: $cf
    cp a                                          ; $76fa: $bf
    cp [hl]                                       ; $76fb: $be
    cp l                                          ; $76fc: $bd
    cp h                                          ; $76fd: $bc
    cp e                                          ; $76fe: $bb
    cp d                                          ; $76ff: $ba
    cp c                                          ; $7700: $b9
    cp b                                          ; $7701: $b8
    or a                                          ; $7702: $b7
    or [hl]                                       ; $7703: $b6
    or l                                          ; $7704: $b5
    or l                                          ; $7705: $b5
    or l                                          ; $7706: $b5
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    jr nz, jr_0c1_7711                            ; $770f: $20 $00

jr_0c1_7711:
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    inc d                                         ; $772f: $14
    nop                                           ; $7730: $00
    ld [bc], a                                    ; $7731: $02
    nop                                           ; $7732: $00
    or l                                          ; $7733: $b5
    or l                                          ; $7734: $b5
    or l                                          ; $7735: $b5
    or l                                          ; $7736: $b5
    jp z, $c8c9                                   ; $7737: $ca $c9 $c8

    rst $00                                       ; $773a: $c7
    rst $00                                       ; $773b: $c7
    add $c5                                       ; $773c: $c6 $c5
    call nz, $c2c3                                ; $773e: $c4 $c3 $c2
    pop bc                                        ; $7741: $c1
    ret nz                                        ; $7742: $c0

    or l                                          ; $7743: $b5
    or l                                          ; $7744: $b5
    or l                                          ; $7745: $b5
    or l                                          ; $7746: $b5
    or l                                          ; $7747: $b5
    or l                                          ; $7748: $b5
    or l                                          ; $7749: $b5
    or l                                          ; $774a: $b5
    call z, $bebf                                 ; $774b: $cc $bf $be
    cp l                                          ; $774e: $bd
    cp h                                          ; $774f: $bc
    cp e                                          ; $7750: $bb
    cp d                                          ; $7751: $ba
    cp c                                          ; $7752: $b9
    res 7, b                                      ; $7753: $cb $b8
    or a                                          ; $7755: $b7
    or [hl]                                       ; $7756: $b6
    or l                                          ; $7757: $b5
    or l                                          ; $7758: $b5
    or l                                          ; $7759: $b5
    or l                                          ; $775a: $b5
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    ld h, b                                       ; $7773: $60
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    jr nz, jr_0c1_777d                            ; $777b: $20 $00

jr_0c1_777d:
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    inc d                                         ; $7783: $14
    nop                                           ; $7784: $00
    ld [bc], a                                    ; $7785: $02
    nop                                           ; $7786: $00
    or l                                          ; $7787: $b5
    or l                                          ; $7788: $b5
    or l                                          ; $7789: $b5
    or l                                          ; $778a: $b5
    call nz, $c2c3                                ; $778b: $c4 $c3 $c2
    pop bc                                        ; $778e: $c1
    ret nz                                        ; $778f: $c0

    call z, $c9ca                                 ; $7790: $cc $ca $c9
    call $bebf                                    ; $7793: $cd $bf $be
    cp l                                          ; $7796: $bd
    or l                                          ; $7797: $b5
    or l                                          ; $7798: $b5
    or l                                          ; $7799: $b5
    or l                                          ; $779a: $b5
    or l                                          ; $779b: $b5
    or l                                          ; $779c: $b5
    or l                                          ; $779d: $b5
    or l                                          ; $779e: $b5
    push bc                                       ; $779f: $c5
    cp h                                          ; $77a0: $bc
    cp e                                          ; $77a1: $bb
    cp d                                          ; $77a2: $ba
    cp c                                          ; $77a3: $b9
    ret z                                         ; $77a4: $c8

    rst $00                                       ; $77a5: $c7
    add $cb                                       ; $77a6: $c6 $cb
    cp b                                          ; $77a8: $b8
    or a                                          ; $77a9: $b7
    or [hl]                                       ; $77aa: $b6
    or l                                          ; $77ab: $b5
    or l                                          ; $77ac: $b5
    or l                                          ; $77ad: $b5
    or l                                          ; $77ae: $b5
    nop                                           ; $77af: $00
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    nop                                           ; $77b4: $00
    nop                                           ; $77b5: $00
    nop                                           ; $77b6: $00
    nop                                           ; $77b7: $00
    jr nz, jr_0c1_77ba                            ; $77b8: $20 $00

jr_0c1_77ba:
    nop                                           ; $77ba: $00
    ld h, b                                       ; $77bb: $60
    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    nop                                           ; $77c4: $00
    nop                                           ; $77c5: $00
    nop                                           ; $77c6: $00
    nop                                           ; $77c7: $00
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    nop                                           ; $77d6: $00
    inc d                                         ; $77d7: $14
    nop                                           ; $77d8: $00
    ld [bc], a                                    ; $77d9: $02
    nop                                           ; $77da: $00
    or l                                          ; $77db: $b5
    rst $10                                       ; $77dc: $d7
    sub $d5                                       ; $77dd: $d6 $d5
    call nc, $d1d3                                ; $77df: $d4 $d3 $d1
    ret nc                                        ; $77e2: $d0

    call nz, $cecf                                ; $77e3: $c4 $cf $ce
    call $cbcc                                    ; $77e6: $cd $cc $cb
    jp z, $c8c9                                   ; $77e9: $ca $c9 $c8

    rst $00                                       ; $77ec: $c7
    add $b5                                       ; $77ed: $c6 $b5
    or l                                          ; $77ef: $b5
    ret c                                         ; $77f0: $d8

    push bc                                       ; $77f1: $c5
    jp $c1c2                                      ; $77f2: $c3 $c2 $c1


    ret nz                                        ; $77f5: $c0

    cp a                                          ; $77f6: $bf
    jp nc, $bdbe                                  ; $77f7: $d2 $be $bd

    cp h                                          ; $77fa: $bc
    cp e                                          ; $77fb: $bb
    cp d                                          ; $77fc: $ba
    cp c                                          ; $77fd: $b9
    cp b                                          ; $77fe: $b8
    cp [hl]                                       ; $77ff: $be
    or a                                          ; $7800: $b7
    or [hl]                                       ; $7801: $b6
    or l                                          ; $7802: $b5
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    nop                                           ; $781b: $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    nop                                           ; $781f: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    inc d                                         ; $782b: $14
    nop                                           ; $782c: $00
    ld [bc], a                                    ; $782d: $02
    nop                                           ; $782e: $00
    or l                                          ; $782f: $b5
    or l                                          ; $7830: $b5
    or l                                          ; $7831: $b5
    or l                                          ; $7832: $b5
    set 1, d                                      ; $7833: $cb $ca
    ret                                           ; $7835: $c9


    ret z                                         ; $7836: $c8

    rst $00                                       ; $7837: $c7
    add $c5                                       ; $7838: $c6 $c5
    call nz, $c2c3                                ; $783a: $c4 $c3 $c2
    pop bc                                        ; $783d: $c1
    ret nz                                        ; $783e: $c0

    or l                                          ; $783f: $b5
    or l                                          ; $7840: $b5
    or l                                          ; $7841: $b5
    or l                                          ; $7842: $b5
    or l                                          ; $7843: $b5
    or l                                          ; $7844: $b5
    or l                                          ; $7845: $b5
    or l                                          ; $7846: $b5
    cp a                                          ; $7847: $bf
    cp [hl]                                       ; $7848: $be
    cp l                                          ; $7849: $bd
    cp h                                          ; $784a: $bc
    cp e                                          ; $784b: $bb
    add $ba                                       ; $784c: $c6 $ba
    cp c                                          ; $784e: $b9
    call z, $b7b8                                 ; $784f: $cc $b8 $b7
    or [hl]                                       ; $7852: $b6
    or l                                          ; $7853: $b5
    or l                                          ; $7854: $b5
    or l                                          ; $7855: $b5
    or l                                          ; $7856: $b5
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    nop                                           ; $785e: $00
    nop                                           ; $785f: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    ld b, b                                       ; $7874: $40
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    ld h, b                                       ; $7877: $60
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    nop                                           ; $787b: $00
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    inc d                                         ; $787f: $14
    nop                                           ; $7880: $00
    ld [bc], a                                    ; $7881: $02
    nop                                           ; $7882: $00
    db $dd                                        ; $7883: $dd
    call c, $dadb                                 ; $7884: $dc $db $da
    reti                                          ; $7887: $d9


    ret c                                         ; $7888: $d8

    rst $10                                       ; $7889: $d7
    sub $d5                                       ; $788a: $d6 $d5
    call nc, $d2d3                                ; $788c: $d4 $d3 $d2
    pop de                                        ; $788f: $d1
    ret nc                                        ; $7890: $d0

    rst $08                                       ; $7891: $cf
    adc $cd                                       ; $7892: $ce $cd
    call z, $cacb                                 ; $7894: $cc $cb $ca
    ret                                           ; $7897: $c9


    ret z                                         ; $7898: $c8

    rst $00                                       ; $7899: $c7
    add $c5                                       ; $789a: $c6 $c5
    call nz, $c2c3                                ; $789c: $c4 $c3 $c2
    pop bc                                        ; $789f: $c1
    ret nz                                        ; $78a0: $c0

    cp a                                          ; $78a1: $bf
    cp [hl]                                       ; $78a2: $be
    cp l                                          ; $78a3: $bd
    cp h                                          ; $78a4: $bc
    cp e                                          ; $78a5: $bb
    cp d                                          ; $78a6: $ba
    cp c                                          ; $78a7: $b9
    cp b                                          ; $78a8: $b8
    or a                                          ; $78a9: $b7
    or [hl]                                       ; $78aa: $b6
    nop                                           ; $78ab: $00
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    nop                                           ; $78ae: $00
    nop                                           ; $78af: $00
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    nop                                           ; $78b3: $00
    nop                                           ; $78b4: $00
    nop                                           ; $78b5: $00
    nop                                           ; $78b6: $00
    nop                                           ; $78b7: $00
    nop                                           ; $78b8: $00
    nop                                           ; $78b9: $00
    nop                                           ; $78ba: $00
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    nop                                           ; $78bd: $00
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    nop                                           ; $78c1: $00
    nop                                           ; $78c2: $00
    nop                                           ; $78c3: $00
    nop                                           ; $78c4: $00
    nop                                           ; $78c5: $00
    nop                                           ; $78c6: $00
    nop                                           ; $78c7: $00
    nop                                           ; $78c8: $00
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    nop                                           ; $78cb: $00
    nop                                           ; $78cc: $00
    nop                                           ; $78cd: $00
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    inc d                                         ; $78d3: $14
    nop                                           ; $78d4: $00
    ld [bc], a                                    ; $78d5: $02
    nop                                           ; $78d6: $00
    set 3, e                                      ; $78d7: $cb $db
    jp c, $d8d9                                   ; $78d9: $da $d9 $d8

    rst $10                                       ; $78dc: $d7
    sub $d5                                       ; $78dd: $d6 $d5
    call nc, $d2d3                                ; $78df: $d4 $d3 $d2
    or l                                          ; $78e2: $b5
    pop de                                        ; $78e3: $d1
    ret nc                                        ; $78e4: $d0

    rst $08                                       ; $78e5: $cf
    adc $cd                                       ; $78e6: $ce $cd
    call z, $c9ca                                 ; $78e8: $cc $ca $c9
    set 1, b                                      ; $78eb: $cb $c8
    rst $00                                       ; $78ed: $c7
    add $c5                                       ; $78ee: $c6 $c5
    call nz, $c2c3                                ; $78f0: $c4 $c3 $c2
    pop bc                                        ; $78f3: $c1
    ret nz                                        ; $78f4: $c0

    cp a                                          ; $78f5: $bf
    cp [hl]                                       ; $78f6: $be
    cp l                                          ; $78f7: $bd
    cp h                                          ; $78f8: $bc
    cp e                                          ; $78f9: $bb
    cp d                                          ; $78fa: $ba
    cp c                                          ; $78fb: $b9
    cp b                                          ; $78fc: $b8
    or a                                          ; $78fd: $b7
    or [hl]                                       ; $78fe: $b6
    ld h, b                                       ; $78ff: $60
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    nop                                           ; $790b: $00
    nop                                           ; $790c: $00
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    jr nz, jr_0c1_7915                            ; $7913: $20 $00

jr_0c1_7915:
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    jr nz, jr_0c1_7929                            ; $7927: $20 $00

jr_0c1_7929:
    ld [de], a                                    ; $7929: $12
    nop                                           ; $792a: $00
    jp Jump_000_0001                              ; $792b: $c3 $01 $00


    add b                                         ; $792e: $80
    add c                                         ; $792f: $81
    add d                                         ; $7930: $82
    add e                                         ; $7931: $83
    add h                                         ; $7932: $84
    add l                                         ; $7933: $85
    add [hl]                                      ; $7934: $86
    add a                                         ; $7935: $87
    nop                                           ; $7936: $00
    adc b                                         ; $7937: $88
    adc c                                         ; $7938: $89
    adc d                                         ; $7939: $8a
    adc e                                         ; $793a: $8b
    adc h                                         ; $793b: $8c
    adc l                                         ; $793c: $8d
    adc [hl]                                      ; $793d: $8e
    adc a                                         ; $793e: $8f
    nop                                           ; $793f: $00
    sub b                                         ; $7940: $90
    sub c                                         ; $7941: $91
    add h                                         ; $7942: $84
    sub d                                         ; $7943: $92
    sub e                                         ; $7944: $93
    sub h                                         ; $7945: $94
    sub l                                         ; $7946: $95

Call_0c1_7947:
    sub [hl]                                      ; $7947: $96
    nop                                           ; $7948: $00
    sub a                                         ; $7949: $97
    sbc b                                         ; $794a: $98
    sbc c                                         ; $794b: $99
    sbc d                                         ; $794c: $9a
    sbc e                                         ; $794d: $9b
    sbc h                                         ; $794e: $9c
    sbc l                                         ; $794f: $9d
    sbc [hl]                                      ; $7950: $9e
    nop                                           ; $7951: $00
    and b                                         ; $7952: $a0
    and c                                         ; $7953: $a1
    and d                                         ; $7954: $a2
    and e                                         ; $7955: $a3
    and h                                         ; $7956: $a4
    adc h                                         ; $7957: $8c
    and l                                         ; $7958: $a5
    and [hl]                                      ; $7959: $a6
    nop                                           ; $795a: $00
    and a                                         ; $795b: $a7
    xor b                                         ; $795c: $a8
    xor c                                         ; $795d: $a9
    xor d                                         ; $795e: $aa
    xor e                                         ; $795f: $ab
    xor h                                         ; $7960: $ac
    xor l                                         ; $7961: $ad
    xor [hl]                                      ; $7962: $ae
    nop                                           ; $7963: $00
    add h                                         ; $7964: $84
    add h                                         ; $7965: $84
    xor a                                         ; $7966: $af
    or b                                          ; $7967: $b0
    or c                                          ; $7968: $b1
    add h                                         ; $7969: $84
    or d                                          ; $796a: $b2
    or e                                          ; $796b: $b3
    nop                                           ; $796c: $00
    add h                                         ; $796d: $84
    or h                                          ; $796e: $b4
    or l                                          ; $796f: $b5
    or [hl]                                       ; $7970: $b6
    or a                                          ; $7971: $b7
    cp b                                          ; $7972: $b8
    cp c                                          ; $7973: $b9
    add h                                         ; $7974: $84
    nop                                           ; $7975: $00
    cp d                                          ; $7976: $ba
    cp e                                          ; $7977: $bb

Jump_0c1_7978:
    cp h                                          ; $7978: $bc
    cp l                                          ; $7979: $bd
    cp [hl]                                       ; $797a: $be
    cp a                                          ; $797b: $bf
    ret nz                                        ; $797c: $c0

    pop bc                                        ; $797d: $c1
    nop                                           ; $797e: $00
    jp nz, $c4c3                                  ; $797f: $c2 $c3 $c4

    add h                                         ; $7982: $84
    push bc                                       ; $7983: $c5
    add $84                                       ; $7984: $c6 $84
    rst $00                                       ; $7986: $c7
    nop                                           ; $7987: $00
    add h                                         ; $7988: $84
    ret z                                         ; $7989: $c8

    ret                                           ; $798a: $c9


    jp z, $84be                                   ; $798b: $ca $be $84

    add h                                         ; $798e: $84
    add h                                         ; $798f: $84
    nop                                           ; $7990: $00
    set 1, h                                      ; $7991: $cb $cc
    call $cb84                                    ; $7993: $cd $84 $cb
    add h                                         ; $7996: $84
    adc $91                                       ; $7997: $ce $91
    nop                                           ; $7999: $00
    jp c, $dcdb                                   ; $799a: $da $db $dc

    db $db                                        ; $799d: $db
    call c, $dcda                                 ; $799e: $dc $da $dc
    jp c, $db30                                   ; $79a1: $da $30 $db

    jp c, $800a                                   ; $79a4: $da $0a $80

    dec de                                        ; $79a7: $1b
    nop                                           ; $79a8: $00
    db $dd                                        ; $79a9: $dd
    sbc $df                                       ; $79aa: $de $df
    sbc $03                                       ; $79ac: $de $03
    rst $18                                       ; $79ae: $df
    db $dd                                        ; $79af: $dd
    rst $18                                       ; $79b0: $df
    db $dd                                        ; $79b1: $dd
    sbc $dd                                       ; $79b2: $de $dd
    ld a, [bc]                                    ; $79b4: $0a
    add b                                         ; $79b5: $80
    dec de                                        ; $79b6: $1b
    nop                                           ; $79b7: $00
    nop                                           ; $79b8: $00
    ldh [$e1], a                                  ; $79b9: $e0 $e1
    ld [c], a                                     ; $79bb: $e2
    pop hl                                        ; $79bc: $e1
    ld [c], a                                     ; $79bd: $e2
    ldh [$e2], a                                  ; $79be: $e0 $e2
    ldh [$30], a                                  ; $79c0: $e0 $30
    pop hl                                        ; $79c2: $e1
    ldh [$0a], a                                  ; $79c3: $e0 $0a
    add b                                         ; $79c5: $80
    dec de                                        ; $79c6: $1b
    nop                                           ; $79c7: $00
    db $e3                                        ; $79c8: $e3

jr_0c1_79c9:
    db $e4                                        ; $79c9: $e4
    push hl                                       ; $79ca: $e5
    db $e4                                        ; $79cb: $e4
    inc bc                                        ; $79cc: $03
    push hl                                       ; $79cd: $e5
    db $e3                                        ; $79ce: $e3
    push hl                                       ; $79cf: $e5
    db $e3                                        ; $79d0: $e3
    db $e4                                        ; $79d1: $e4
    db $e3                                        ; $79d2: $e3
    ld a, [bc]                                    ; $79d3: $0a
    add b                                         ; $79d4: $80
    dec de                                        ; $79d5: $1b
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    and $e7                                       ; $79d8: $e6 $e7
    add sp, -$19                                  ; $79da: $e8 $e7
    add sp, -$1a                                  ; $79dc: $e8 $e6
    add sp, -$1a                                  ; $79de: $e8 $e6
    jr nc, jr_0c1_79c9                            ; $79e0: $30 $e7

    and $0a                                       ; $79e2: $e6 $0a
    add b                                         ; $79e4: $80
    dec de                                        ; $79e5: $1b
    nop                                           ; $79e6: $00
    jp hl                                         ; $79e7: $e9


    ld [$eaeb], a                                 ; $79e8: $ea $eb $ea
    inc bc                                        ; $79eb: $03
    db $eb                                        ; $79ec: $eb
    jp hl                                         ; $79ed: $e9


    db $eb                                        ; $79ee: $eb
    jp hl                                         ; $79ef: $e9


    ld [$0ae9], a                                 ; $79f0: $ea $e9 $0a
    add b                                         ; $79f3: $80
    dec de                                        ; $79f4: $1b
    nop                                           ; $79f5: $00
    ld b, b                                       ; $79f6: $40
    db $dd                                        ; $79f7: $dd
    ld bc, $ec78                                  ; $79f8: $01 $78 $ec
    db $ed                                        ; $79fb: $ed
    xor $ef                                       ; $79fc: $ee $ef
    ldh a, [$f1]                                  ; $79fe: $f0 $f1
    db $10                                        ; $7a00: $10
    ld a, [c]                                     ; $7a01: $f2
    db $ec                                        ; $7a02: $ec
    di                                            ; $7a03: $f3
    inc e                                         ; $7a04: $1c
    ld [$f8f7], sp                                ; $7a05: $08 $f7 $f8
    ld sp, hl                                     ; $7a08: $f9
    ld a, [$fb20]                                 ; $7a09: $fa $20 $fb
    db $fc                                        ; $7a0c: $fc
    inc b                                         ; $7a0d: $04
    nop                                           ; $7a0e: $00
    db $fd                                        ; $7a0f: $fd
    cp $ff                                        ; $7a10: $fe $ff
    cp $00                                        ; $7a12: $fe $00
    nop                                           ; $7a14: $00
    ld bc, $0302                                  ; $7a15: $01 $02 $03
    db $fc                                        ; $7a18: $fc
    ld sp, hl                                     ; $7a19: $f9
    inc b                                         ; $7a1a: $04
    dec b                                         ; $7a1b: $05
    ld b, $00                                     ; $7a1c: $06 $00
    rlca                                          ; $7a1e: $07
    ld [$0a09], sp                                ; $7a1f: $08 $09 $0a
    inc b                                         ; $7a22: $04
    dec bc                                        ; $7a23: $0b
    ld a, [$00fb]                                 ; $7a24: $fa $fb $00
    inc bc                                        ; $7a27: $03
    inc c                                         ; $7a28: $0c
    jr @+$1b                                      ; $7a29: $18 $19

    ld a, [de]                                    ; $7a2b: $1a
    dec de                                        ; $7a2c: $1b
    inc e                                         ; $7a2d: $1c
    dec e                                         ; $7a2e: $1d
    ld bc, $1b1e                                  ; $7a2f: $01 $1e $1b
    inc e                                         ; $7a32: $1c
    rra                                           ; $7a33: $1f
    jr nz, jr_0c1_7a57                            ; $7a34: $20 $21

    ld [hl+], a                                   ; $7a36: $22
    rlca                                          ; $7a37: $07
    ld [$1d00], sp                                ; $7a38: $08 $00 $1d
    ld e, $23                                     ; $7a3b: $1e $23
    inc h                                         ; $7a3d: $24
    dec h                                         ; $7a3e: $25
    inc e                                         ; $7a3f: $1c
    dec e                                         ; $7a40: $1d
    dec e                                         ; $7a41: $1d
    ld b, b                                       ; $7a42: $40
    ld e, $15                                     ; $7a43: $1e $15
    db $10                                        ; $7a45: $10
    ld h, $2e                                     ; $7a46: $26 $2e
    cpl                                           ; $7a48: $2f
    jr nc, jr_0c1_7a7c                            ; $7a49: $30 $31

    ld [hl-], a                                   ; $7a4b: $32
    add b                                         ; $7a4c: $80
    dec b                                         ; $7a4d: $05
    db $10                                        ; $7a4e: $10
    inc sp                                        ; $7a4f: $33
    inc [hl]                                      ; $7a50: $34
    dec [hl]                                      ; $7a51: $35
    ld [hl], $37                                  ; $7a52: $36 $37
    jr c, jr_0c1_7a8f                             ; $7a54: $38 $39

jr_0c1_7a56:
    nop                                           ; $7a56: $00

jr_0c1_7a57:
    ld a, [hl-]                                   ; $7a57: $3a
    dec sp                                        ; $7a58: $3b
    inc a                                         ; $7a59: $3c
    dec a                                         ; $7a5a: $3d
    ld a, $3f                                     ; $7a5b: $3e $3f
    ld b, b                                       ; $7a5d: $40
    ld b, c                                       ; $7a5e: $41
    nop                                           ; $7a5f: $00
    ld b, d                                       ; $7a60: $42
    ld b, e                                       ; $7a61: $43
    ld b, h                                       ; $7a62: $44
    ld b, b                                       ; $7a63: $40
    ccf                                           ; $7a64: $3f
    ld a, $45                                     ; $7a65: $3e $45
    ld e, c                                       ; $7a67: $59
    nop                                           ; $7a68: $00
    ld e, d                                       ; $7a69: $5a
    ld e, e                                       ; $7a6a: $5b
    ld e, h                                       ; $7a6b: $5c

jr_0c1_7a6c:
    ld e, l                                       ; $7a6c: $5d
    ld e, [hl]                                    ; $7a6d: $5e
    ld e, l                                       ; $7a6e: $5d
    ld e, a                                       ; $7a6f: $5f
    ld e, h                                       ; $7a70: $5c
    nop                                           ; $7a71: $00
    ld e, l                                       ; $7a72: $5d
    ld e, a                                       ; $7a73: $5f
    ld e, [hl]                                    ; $7a74: $5e
    ld h, b                                       ; $7a75: $60
    ld h, c                                       ; $7a76: $61
    ld h, d                                       ; $7a77: $62
    ld h, e                                       ; $7a78: $63
    ld e, c                                       ; $7a79: $59
    nop                                           ; $7a7a: $00
    ld h, h                                       ; $7a7b: $64

jr_0c1_7a7c:
    ld h, l                                       ; $7a7c: $65
    ld h, [hl]                                    ; $7a7d: $66
    ld h, a                                       ; $7a7e: $67
    ld l, b                                       ; $7a7f: $68
    ld l, c                                       ; $7a80: $69
    ld l, d                                       ; $7a81: $6a
    ld l, e                                       ; $7a82: $6b
    ld bc, $6d6c                                  ; $7a83: $01 $6c $6d
    ld l, [hl]                                    ; $7a86: $6e
    ld l, a                                       ; $7a87: $6f
    ld [hl], b                                    ; $7a88: $70
    ld [hl], c                                    ; $7a89: $71
    ld [hl], d                                    ; $7a8a: $72
    cp l                                          ; $7a8b: $bd
    add hl, de                                    ; $7a8c: $19
    ld [bc], a                                    ; $7a8d: $02
    add a                                         ; $7a8e: $87

jr_0c1_7a8f:
    adc c                                         ; $7a8f: $89
    add [hl]                                      ; $7a90: $86
    add a                                         ; $7a91: $87
    adc c                                         ; $7a92: $89
    adc b                                         ; $7a93: $88
    jp nz, $8309                                  ; $7a94: $c2 $09 $83

    ret nz                                        ; $7a97: $c0

    jp $c209                                      ; $7a98: $c3 $09 $c2


    ld b, c                                       ; $7a9b: $41
    xor l                                         ; $7a9c: $ad
    xor [hl]                                      ; $7a9d: $ae
    or b                                          ; $7a9e: $b0
    or l                                          ; $7a9f: $b5
    or b                                          ; $7aa0: $b0
    or c                                          ; $7aa1: $b1
    jr nc, jr_0c1_7a56                            ; $7aa2: $30 $b2

    or e                                          ; $7aa4: $b3
    xor a                                         ; $7aa5: $af
    add hl, de                                    ; $7aa6: $19
    xor [hl]                                      ; $7aa7: $ae
    add hl, de                                    ; $7aa8: $19
    or e                                          ; $7aa9: $b3
    or h                                          ; $7aaa: $b4
    ret nz                                        ; $7aab: $c0

    pop bc                                        ; $7aac: $c1
    jr nz, jr_0c1_7a6c                            ; $7aad: $20 $bd

    cp [hl]                                       ; $7aaf: $be
    or d                                          ; $7ab0: $b2
    ld bc, $bfc5                                  ; $7ab1: $01 $c5 $bf
    add $d6                                       ; $7ab4: $c6 $d6
    push de                                       ; $7ab6: $d5
    nop                                           ; $7ab7: $00
    adc $cd                                       ; $7ab8: $ce $cd
    adc $cf                                       ; $7aba: $ce $cf
    ret nc                                        ; $7abc: $d0

    pop de                                        ; $7abd: $d1
    jp nc, Jump_000_02d3                          ; $7abe: $d2 $d3 $02

    call nc, $d6d5                                ; $7ac1: $d4 $d5 $d6
    rst $10                                       ; $7ac4: $d7
    ret c                                         ; $7ac5: $d8

    reti                                          ; $7ac6: $d9


    inc c                                         ; $7ac7: $0c
    ld [$0ad1], sp                                ; $7ac8: $08 $d1 $0a
    jp nc, $d1d0                                  ; $7acb: $d2 $d0 $d1

    jp c, $2010                                   ; $7ace: $da $10 $20

    sbc a                                         ; $7ad1: $9f
    ld bc, $05e0                                  ; $7ad2: $01 $e0 $05
    ld h, b                                       ; $7ad5: $60
    inc bc                                        ; $7ad6: $03
    ld bc, $0608                                  ; $7ad7: $01 $08 $06
    db $10                                        ; $7ada: $10
    dec b                                         ; $7adb: $05
    inc bc                                        ; $7adc: $03
    dec b                                         ; $7add: $05
    ld b, $03                                     ; $7ade: $06 $03
    ld [hl+], a                                   ; $7ae0: $22
    inc bc                                        ; $7ae1: $03
    inc b                                         ; $7ae2: $04
    ld de, $0408                                  ; $7ae3: $11 $08 $04
    dec b                                         ; $7ae6: $05
    inc b                                         ; $7ae7: $04
    add hl, de                                    ; $7ae8: $19
    ld [$c704], sp                                ; $7ae9: $08 $04 $c7
    add hl, de                                    ; $7aec: $19
    nop                                           ; $7aed: $00
    ld c, $01                                     ; $7aee: $0e $01
    inc bc                                        ; $7af0: $03
    inc bc                                        ; $7af1: $03
    ld b, $0e                                     ; $7af2: $06 $0e
    jr jr_0c1_7b15                                ; $7af4: $18 $1f

    nop                                           ; $7af6: $00
    inc l                                         ; $7af7: $2c
    nop                                           ; $7af8: $00
    ld h, [hl]                                    ; $7af9: $66
    dec b                                         ; $7afa: $05
    inc [hl]                                      ; $7afb: $34
    nop                                           ; $7afc: $00
    ld h, $00                                     ; $7afd: $26 $00
    dec b                                         ; $7aff: $05
    ld b, $24                                     ; $7b00: $06 $24
    nop                                           ; $7b02: $00
    ccf                                           ; $7b03: $3f
    jr @+$08                                      ; $7b04: $18 $06

jr_0c1_7b06:
    ld a, c                                       ; $7b06: $79
    inc b                                         ; $7b07: $04
    cpl                                           ; $7b08: $2f
    db $10                                        ; $7b09: $10
    ld c, h                                       ; $7b0a: $4c
    jr jr_0c1_7b42                                ; $7b0b: $18 $35

    nop                                           ; $7b0d: $00
    ld d, l                                       ; $7b0e: $55
    jr jr_0c1_7b14                                ; $7b0f: $18 $03

    inc hl                                        ; $7b11: $23
    add hl, sp                                    ; $7b12: $39
    nop                                           ; $7b13: $00

jr_0c1_7b14:
    ld [hl], a                                    ; $7b14: $77

jr_0c1_7b15:
    ld [bc], a                                    ; $7b15: $02
    ld bc, $23f8                                  ; $7b16: $01 $f8 $23
    ld hl, sp+$45                                 ; $7b19: $f8 $45
    ret nz                                        ; $7b1b: $c0

    ld bc, $f801                                  ; $7b1c: $01 $01 $f8
    inc hl                                        ; $7b1f: $23
    ld hl, sp+$45                                 ; $7b20: $f8 $45
    ret nz                                        ; $7b22: $c0

    ld e, a                                       ; $7b23: $5f
    ld [$7801], sp                                ; $7b24: $08 $01 $78
    nop                                           ; $7b27: $00
    ld bc, $1c28                                  ; $7b28: $01 $28 $1c
    ld [$18ea], sp                                ; $7b2b: $08 $ea $18
    ldh a, [$30]                                  ; $7b2e: $f0 $30
    ld c, [hl]                                    ; $7b30: $4e
    add hl, bc                                    ; $7b31: $09
    ld hl, sp+$20                                 ; $7b32: $f8 $20
    jr nc, @+$1e                                  ; $7b34: $30 $1c

    ld c, b                                       ; $7b36: $48
    jr z, jr_0c1_7b81                             ; $7b37: $28 $48

    ld a, [de]                                    ; $7b39: $1a
    ld c, b                                       ; $7b3a: $48
    jr nz, jr_0c1_7b06                            ; $7b3b: $20 $c9

    ld [hl+], a                                   ; $7b3d: $22
    ld [hl+], a                                   ; $7b3e: $22
    ld [hl+], a                                   ; $7b3f: $22
    inc hl                                        ; $7b40: $23
    ld [bc], a                                    ; $7b41: $02

jr_0c1_7b42:
    ld b, $6f                                     ; $7b42: $06 $6f
    ld bc, $0505                                  ; $7b44: $01 $05 $05
    dec h                                         ; $7b47: $25
    ld b, $10                                     ; $7b48: $06 $10
    dec bc                                        ; $7b4a: $0b
    ld [$2603], sp                                ; $7b4b: $08 $03 $26
    ld bc, $0606                                  ; $7b4e: $01 $06 $06
    ld b, $01                                     ; $7b51: $06 $01
    ld [hl], c                                    ; $7b53: $71
    ld bc, $0005                                  ; $7b54: $01 $05 $00
    sub [hl]                                      ; $7b57: $96
    ld a, [bc]                                    ; $7b58: $0a
    ld [$0d09], sp                                ; $7b59: $08 $09 $0d
    ld bc, $2d08                                  ; $7b5c: $01 $08 $2d
    ld b, $10                                     ; $7b5f: $06 $10
    dec bc                                        ; $7b61: $0b
    ld [$5629], sp                                ; $7b62: $08 $29 $56
    ld c, $01                                     ; $7b65: $0e $01
    jr @+$0b                                      ; $7b67: $18 $09

    ld [$0c20], sp                                ; $7b69: $08 $20 $0c
    ld bc, $23f8                                  ; $7b6c: $01 $f8 $23
    ld d, b                                       ; $7b6f: $50
    inc l                                         ; $7b70: $2c
    ldh [$31], a                                  ; $7b71: $e0 $31
    ld h, b                                       ; $7b73: $60
    db $ed                                        ; $7b74: $ed
    jr nc, jr_0c1_7b80                            ; $7b75: $30 $09

    and b                                         ; $7b77: $a0
    ld b, b                                       ; $7b78: $40
    nop                                           ; $7b79: $00
    rlca                                          ; $7b7a: $07
    nop                                           ; $7b7b: $00
    db $dd                                        ; $7b7c: $dd
    db $dd                                        ; $7b7d: $dd
    db $dd                                        ; $7b7e: $dd
    db $dd                                        ; $7b7f: $dd

jr_0c1_7b80:
    db $dd                                        ; $7b80: $dd

jr_0c1_7b81:
    db $dd                                        ; $7b81: $dd
    db $dd                                        ; $7b82: $dd
    db $dd                                        ; $7b83: $dd
    db $dd                                        ; $7b84: $dd
    db $dd                                        ; $7b85: $dd
    db $dd                                        ; $7b86: $dd
    db $dd                                        ; $7b87: $dd
    db $dd                                        ; $7b88: $dd
    db $dd                                        ; $7b89: $dd
    db $dd                                        ; $7b8a: $dd
    db $dd                                        ; $7b8b: $dd
    db $dd                                        ; $7b8c: $dd
    db $dd                                        ; $7b8d: $dd
    db $dd                                        ; $7b8e: $dd
    db $ec                                        ; $7b8f: $ec
    db $ed                                        ; $7b90: $ed
    xor $ef                                       ; $7b91: $ee $ef
    ldh a, [$f1]                                  ; $7b93: $f0 $f1
    ld a, [c]                                     ; $7b95: $f2
    db $ec                                        ; $7b96: $ec
    di                                            ; $7b97: $f3
    db $dd                                        ; $7b98: $dd
    db $dd                                        ; $7b99: $dd
    db $dd                                        ; $7b9a: $dd
    db $dd                                        ; $7b9b: $dd
    db $dd                                        ; $7b9c: $dd
    db $dd                                        ; $7b9d: $dd
    db $dd                                        ; $7b9e: $dd
    db $dd                                        ; $7b9f: $dd
    db $dd                                        ; $7ba0: $dd
    db $dd                                        ; $7ba1: $dd
    db $f4                                        ; $7ba2: $f4
    push af                                       ; $7ba3: $f5
    or $dd                                        ; $7ba4: $f6 $dd
    db $dd                                        ; $7ba6: $dd
    db $dd                                        ; $7ba7: $dd
    db $dd                                        ; $7ba8: $dd
    db $dd                                        ; $7ba9: $dd
    db $dd                                        ; $7baa: $dd
    db $dd                                        ; $7bab: $dd
    db $dd                                        ; $7bac: $dd
    db $dd                                        ; $7bad: $dd
    db $dd                                        ; $7bae: $dd
    db $dd                                        ; $7baf: $dd
    db $dd                                        ; $7bb0: $dd
    db $dd                                        ; $7bb1: $dd
    db $dd                                        ; $7bb2: $dd
    db $dd                                        ; $7bb3: $dd
    db $dd                                        ; $7bb4: $dd
    db $dd                                        ; $7bb5: $dd
    db $dd                                        ; $7bb6: $dd
    db $dd                                        ; $7bb7: $dd
    db $dd                                        ; $7bb8: $dd
    db $dd                                        ; $7bb9: $dd
    db $dd                                        ; $7bba: $dd
    db $dd                                        ; $7bbb: $dd
    rst $30                                       ; $7bbc: $f7
    ld hl, sp-$07                                 ; $7bbd: $f8 $f9
    ld a, [$fcfb]                                 ; $7bbf: $fa $fb $fc
    ld sp, hl                                     ; $7bc2: $f9
    ld a, [$fdfb]                                 ; $7bc3: $fa $fb $fd
    cp $ff                                        ; $7bc6: $fe $ff
    cp $00                                        ; $7bc8: $fe $00
    ld bc, $0302                                  ; $7bca: $01 $02 $03
    db $fc                                        ; $7bcd: $fc
    ld sp, hl                                     ; $7bce: $f9
    inc b                                         ; $7bcf: $04
    dec b                                         ; $7bd0: $05
    ld b, $07                                     ; $7bd1: $06 $07
    ld [$0a09], sp                                ; $7bd3: $08 $09 $0a
    inc b                                         ; $7bd6: $04
    dec bc                                        ; $7bd7: $0b
    ld a, [$03fb]                                 ; $7bd8: $fa $fb $03
    inc c                                         ; $7bdb: $0c
    dec c                                         ; $7bdc: $0d
    db $fc                                        ; $7bdd: $fc
    ld sp, hl                                     ; $7bde: $f9
    ld a, [$03fb]                                 ; $7bdf: $fa $fb $03
    ld c, $0f                                     ; $7be2: $0e $0f
    db $10                                        ; $7be4: $10
    ld sp, hl                                     ; $7be5: $f9
    ld a, [$03fb]                                 ; $7be6: $fa $fb $03
    inc c                                         ; $7be9: $0c
    dec c                                         ; $7bea: $0d
    db $fc                                        ; $7beb: $fc
    nop                                           ; $7bec: $00
    ld bc, $1101                                  ; $7bed: $01 $01 $11
    ld [de], a                                    ; $7bf0: $12
    inc de                                        ; $7bf1: $13
    inc d                                         ; $7bf2: $14
    dec d                                         ; $7bf3: $15
    ld d, $17                                     ; $7bf4: $16 $17
    cp $ec                                        ; $7bf6: $fe $ec
    nop                                           ; $7bf8: $00
    db $fc                                        ; $7bf9: $fc
    ld a, [$18fc]                                 ; $7bfa: $fa $fc $18
    add hl, de                                    ; $7bfd: $19
    ld a, [de]                                    ; $7bfe: $1a
    dec de                                        ; $7bff: $1b
    inc e                                         ; $7c00: $1c
    dec e                                         ; $7c01: $1d
    ld e, $1b                                     ; $7c02: $1e $1b
    inc e                                         ; $7c04: $1c
    rra                                           ; $7c05: $1f
    jr nz, jr_0c1_7c29                            ; $7c06: $20 $21

    ld [hl+], a                                   ; $7c08: $22
    ld e, $1b                                     ; $7c09: $1e $1b
    inc e                                         ; $7c0b: $1c
    rra                                           ; $7c0c: $1f
    dec e                                         ; $7c0d: $1d
    ld e, $23                                     ; $7c0e: $1e $23
    inc h                                         ; $7c10: $24
    dec h                                         ; $7c11: $25
    inc e                                         ; $7c12: $1c
    dec e                                         ; $7c13: $1d
    dec e                                         ; $7c14: $1d
    ld e, $1d                                     ; $7c15: $1e $1d
    ld e, $1b                                     ; $7c17: $1e $1b
    inc e                                         ; $7c19: $1c
    rra                                           ; $7c1a: $1f
    ld h, $27                                     ; $7c1b: $26 $27
    jr jr_0c1_7c38                                ; $7c1d: $18 $19

    ld a, [de]                                    ; $7c1f: $1a
    jr z, jr_0c1_7c41                             ; $7c20: $28 $1f

    add hl, hl                                    ; $7c22: $29
    ld a, [hl+]                                   ; $7c23: $2a
    dec e                                         ; $7c24: $1d
    ld e, $1b                                     ; $7c25: $1e $1b
    inc e                                         ; $7c27: $1c
    rra                                           ; $7c28: $1f

jr_0c1_7c29:
    ld h, $27                                     ; $7c29: $26 $27
    jr jr_0c1_7c46                                ; $7c2b: $18 $19

    ld a, [de]                                    ; $7c2d: $1a
    dec hl                                        ; $7c2e: $2b
    jr jr_0c1_7c5d                                ; $7c2f: $18 $2c

    dec l                                         ; $7c31: $2d
    dec e                                         ; $7c32: $1d
    ld e, $1b                                     ; $7c33: $1e $1b
    inc e                                         ; $7c35: $1c
    rra                                           ; $7c36: $1f
    inc b                                         ; $7c37: $04

jr_0c1_7c38:
    jr z, @+$1a                                   ; $7c38: $28 $18

    dec de                                        ; $7c3a: $1b
    dec e                                         ; $7c3b: $1d
    ld l, $2f                                     ; $7c3c: $2e $2f
    jr nc, jr_0c1_7c71                            ; $7c3e: $30 $31

    ld [hl-], a                                   ; $7c40: $32

jr_0c1_7c41:
    ld l, $2f                                     ; $7c41: $2e $2f
    jr nc, jr_0c1_7c76                            ; $7c43: $30 $31

    ld [hl-], a                                   ; $7c45: $32

jr_0c1_7c46:
    inc sp                                        ; $7c46: $33
    inc [hl]                                      ; $7c47: $34
    dec [hl]                                      ; $7c48: $35
    ld [hl], $37                                  ; $7c49: $36 $37
    jr c, jr_0c1_7c86                             ; $7c4b: $38 $39

    ld a, [hl-]                                   ; $7c4d: $3a
    dec sp                                        ; $7c4e: $3b
    inc a                                         ; $7c4f: $3c
    dec a                                         ; $7c50: $3d
    ld a, $3f                                     ; $7c51: $3e $3f
    ld b, b                                       ; $7c53: $40
    ld b, c                                       ; $7c54: $41
    ld b, d                                       ; $7c55: $42
    ld b, e                                       ; $7c56: $43
    ld b, h                                       ; $7c57: $44
    ld b, b                                       ; $7c58: $40
    ccf                                           ; $7c59: $3f
    ld a, $45                                     ; $7c5a: $3e $45
    ld b, [hl]                                    ; $7c5c: $46

jr_0c1_7c5d:
    ld b, a                                       ; $7c5d: $47
    ld c, b                                       ; $7c5e: $48
    ld c, c                                       ; $7c5f: $49
    ld c, d                                       ; $7c60: $4a
    ld c, e                                       ; $7c61: $4b
    ld c, h                                       ; $7c62: $4c
    ld c, l                                       ; $7c63: $4d
    ld b, d                                       ; $7c64: $42
    ld b, e                                       ; $7c65: $43
    ld c, [hl]                                    ; $7c66: $4e
    ld c, a                                       ; $7c67: $4f
    ld d, b                                       ; $7c68: $50
    ld b, a                                       ; $7c69: $47
    ld d, c                                       ; $7c6a: $51
    ld d, d                                       ; $7c6b: $52
    ld d, e                                       ; $7c6c: $53
    ld c, [hl]                                    ; $7c6d: $4e
    ld b, e                                       ; $7c6e: $43
    ld b, d                                       ; $7c6f: $42
    ld b, l                                       ; $7c70: $45

jr_0c1_7c71:
    ld b, [hl]                                    ; $7c71: $46
    ld b, a                                       ; $7c72: $47
    ld d, h                                       ; $7c73: $54
    ld d, l                                       ; $7c74: $55
    ld d, [hl]                                    ; $7c75: $56

jr_0c1_7c76:
    ld d, a                                       ; $7c76: $57
    ld e, b                                       ; $7c77: $58
    ld c, d                                       ; $7c78: $4a
    ld c, e                                       ; $7c79: $4b
    ld a, [hl-]                                   ; $7c7a: $3a
    ld a, [hl-]                                   ; $7c7b: $3a
    ld e, c                                       ; $7c7c: $59
    ld e, d                                       ; $7c7d: $5a
    ld e, e                                       ; $7c7e: $5b
    ld e, h                                       ; $7c7f: $5c
    ld e, l                                       ; $7c80: $5d
    ld e, [hl]                                    ; $7c81: $5e
    ld e, l                                       ; $7c82: $5d
    ld e, a                                       ; $7c83: $5f
    ld e, h                                       ; $7c84: $5c
    ld e, l                                       ; $7c85: $5d

jr_0c1_7c86:
    ld e, a                                       ; $7c86: $5f
    ld e, [hl]                                    ; $7c87: $5e
    ld h, b                                       ; $7c88: $60
    ld h, c                                       ; $7c89: $61
    ld h, d                                       ; $7c8a: $62
    ld h, e                                       ; $7c8b: $63
    ld e, c                                       ; $7c8c: $59
    ld h, h                                       ; $7c8d: $64
    ld h, l                                       ; $7c8e: $65
    ld h, [hl]                                    ; $7c8f: $66
    ld h, a                                       ; $7c90: $67
    ld l, b                                       ; $7c91: $68
    ld l, c                                       ; $7c92: $69
    ld l, d                                       ; $7c93: $6a
    ld l, e                                       ; $7c94: $6b
    ld l, h                                       ; $7c95: $6c
    ld l, l                                       ; $7c96: $6d
    ld l, [hl]                                    ; $7c97: $6e
    ld l, a                                       ; $7c98: $6f
    ld [hl], b                                    ; $7c99: $70
    ld [hl], c                                    ; $7c9a: $71
    ld [hl], d                                    ; $7c9b: $72
    ld [hl], e                                    ; $7c9c: $73
    ld [hl], h                                    ; $7c9d: $74
    ld [hl], l                                    ; $7c9e: $75
    halt                                          ; $7c9f: $76
    ld [hl], a                                    ; $7ca0: $77
    ld a, b                                       ; $7ca1: $78
    ld a, c                                       ; $7ca2: $79
    ld a, d                                       ; $7ca3: $7a
    ld l, h                                       ; $7ca4: $6c
    ld a, e                                       ; $7ca5: $7b
    ld a, h                                       ; $7ca6: $7c
    ld a, l                                       ; $7ca7: $7d
    ld a, [hl]                                    ; $7ca8: $7e
    ld a, a                                       ; $7ca9: $7f
    add b                                         ; $7caa: $80
    ld a, [hl]                                    ; $7cab: $7e
    add c                                         ; $7cac: $81
    ld [hl], d                                    ; $7cad: $72
    ld [hl], e                                    ; $7cae: $73
    ld l, b                                       ; $7caf: $68
    ld h, a                                       ; $7cb0: $67
    ld h, [hl]                                    ; $7cb1: $66
    ld [hl], a                                    ; $7cb2: $77
    ld a, e                                       ; $7cb3: $7b
    ld [hl], d                                    ; $7cb4: $72
    add d                                         ; $7cb5: $82
    ld h, l                                       ; $7cb6: $65
    ld h, h                                       ; $7cb7: $64
    ld [hl], a                                    ; $7cb8: $77
    ld a, b                                       ; $7cb9: $78
    ld h, h                                       ; $7cba: $64
    ld h, h                                       ; $7cbb: $64
    add e                                         ; $7cbc: $83
    add h                                         ; $7cbd: $84
    add l                                         ; $7cbe: $85
    add [hl]                                      ; $7cbf: $86
    add a                                         ; $7cc0: $87
    adc b                                         ; $7cc1: $88
    add a                                         ; $7cc2: $87
    adc c                                         ; $7cc3: $89
    add [hl]                                      ; $7cc4: $86
    add a                                         ; $7cc5: $87
    adc c                                         ; $7cc6: $89
    adc b                                         ; $7cc7: $88
    adc d                                         ; $7cc8: $8a
    adc e                                         ; $7cc9: $8b
    adc h                                         ; $7cca: $8c
    adc l                                         ; $7ccb: $8d
    add e                                         ; $7ccc: $83
    adc [hl]                                      ; $7ccd: $8e
    adc a                                         ; $7cce: $8f
    sub b                                         ; $7ccf: $90
    sub c                                         ; $7cd0: $91
    sub d                                         ; $7cd1: $92
    sub e                                         ; $7cd2: $93
    sub h                                         ; $7cd3: $94
    sub l                                         ; $7cd4: $95
    sub [hl]                                      ; $7cd5: $96
    sub a                                         ; $7cd6: $97
    sbc b                                         ; $7cd7: $98
    sbc c                                         ; $7cd8: $99
    sbc d                                         ; $7cd9: $9a
    sbc e                                         ; $7cda: $9b
    sbc h                                         ; $7cdb: $9c
    sbc l                                         ; $7cdc: $9d
    sbc [hl]                                      ; $7cdd: $9e
    sbc a                                         ; $7cde: $9f
    and b                                         ; $7cdf: $a0
    and c                                         ; $7ce0: $a1
    and d                                         ; $7ce1: $a2
    and e                                         ; $7ce2: $a3
    and h                                         ; $7ce3: $a4
    add d                                         ; $7ce4: $82
    and l                                         ; $7ce5: $a5
    sub b                                         ; $7ce6: $90
    and [hl]                                      ; $7ce7: $a6
    ld h, e                                       ; $7ce8: $63
    adc h                                         ; $7ce9: $8c
    and a                                         ; $7cea: $a7
    xor b                                         ; $7ceb: $a8
    xor c                                         ; $7cec: $a9
    and h                                         ; $7ced: $a4
    add d                                         ; $7cee: $82
    ld a, h                                       ; $7cef: $7c
    sbc l                                         ; $7cf0: $9d
    xor d                                         ; $7cf1: $aa
    adc a                                         ; $7cf2: $8f
    sub b                                         ; $7cf3: $90
    xor e                                         ; $7cf4: $ab
    xor h                                         ; $7cf5: $ac
    adc a                                         ; $7cf6: $8f
    adc [hl]                                      ; $7cf7: $8e
    and c                                         ; $7cf8: $a1
    and d                                         ; $7cf9: $a2
    adc [hl]                                      ; $7cfa: $8e
    adc [hl]                                      ; $7cfb: $8e
    ldh [$e1], a                                  ; $7cfc: $e0 $e1
    ld [c], a                                     ; $7cfe: $e2
    pop hl                                        ; $7cff: $e1
    ld [c], a                                     ; $7d00: $e2
    ldh [$e2], a                                  ; $7d01: $e0 $e2
    ldh [$e1], a                                  ; $7d03: $e0 $e1
    ldh [$e1], a                                  ; $7d05: $e0 $e1
    ld [c], a                                     ; $7d07: $e2
    pop hl                                        ; $7d08: $e1
    ld [c], a                                     ; $7d09: $e2
    ldh [$e2], a                                  ; $7d0a: $e0 $e2
    ldh [$e1], a                                  ; $7d0c: $e0 $e1
    ldh [$e1], a                                  ; $7d0e: $e0 $e1
    ld [c], a                                     ; $7d10: $e2
    pop hl                                        ; $7d11: $e1
    ld [c], a                                     ; $7d12: $e2
    ldh [$e2], a                                  ; $7d13: $e0 $e2
    ldh [$e1], a                                  ; $7d15: $e0 $e1
    ldh [$e1], a                                  ; $7d17: $e0 $e1
    ld [c], a                                     ; $7d19: $e2
    pop hl                                        ; $7d1a: $e1
    ld [c], a                                     ; $7d1b: $e2
    ldh [$e1], a                                  ; $7d1c: $e0 $e1
    ld [c], a                                     ; $7d1e: $e2
    pop hl                                        ; $7d1f: $e1
    ld [c], a                                     ; $7d20: $e2
    ldh [$e2], a                                  ; $7d21: $e0 $e2
    ldh [$e1], a                                  ; $7d23: $e0 $e1
    ldh [$e1], a                                  ; $7d25: $e0 $e1
    ld [c], a                                     ; $7d27: $e2
    pop hl                                        ; $7d28: $e1
    ld [c], a                                     ; $7d29: $e2
    ldh [$e2], a                                  ; $7d2a: $e0 $e2
    ldh [$e1], a                                  ; $7d2c: $e0 $e1
    ldh [$e1], a                                  ; $7d2e: $e0 $e1
    ld [c], a                                     ; $7d30: $e2
    pop hl                                        ; $7d31: $e1
    ld [c], a                                     ; $7d32: $e2
    ldh [$e2], a                                  ; $7d33: $e0 $e2
    ldh [$e1], a                                  ; $7d35: $e0 $e1
    ldh [$e1], a                                  ; $7d37: $e0 $e1
    ld [c], a                                     ; $7d39: $e2
    pop hl                                        ; $7d3a: $e1
    ld [c], a                                     ; $7d3b: $e2
    ld [$0808], sp                                ; $7d3c: $08 $08 $08
    ld [$0808], sp                                ; $7d3f: $08 $08 $08
    ld [$0808], sp                                ; $7d42: $08 $08 $08
    ld [$0808], sp                                ; $7d45: $08 $08 $08
    ld [$0808], sp                                ; $7d48: $08 $08 $08
    ld [$0808], sp                                ; $7d4b: $08 $08 $08
    ld [$0000], sp                                ; $7d4e: $08 $00 $00
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    nop                                           ; $7d53: $00
    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    nop                                           ; $7d56: $00
    nop                                           ; $7d57: $00
    ld [$0808], sp                                ; $7d58: $08 $08 $08
    ld [$0808], sp                                ; $7d5b: $08 $08 $08
    ld [$0808], sp                                ; $7d5e: $08 $08 $08
    ld [$0000], sp                                ; $7d61: $08 $00 $00
    nop                                           ; $7d64: $00
    ld [$0808], sp                                ; $7d65: $08 $08 $08
    ld [$0808], sp                                ; $7d68: $08 $08 $08
    ld [$0808], sp                                ; $7d6b: $08 $08 $08
    ld [$0808], sp                                ; $7d6e: $08 $08 $08
    ld [$0808], sp                                ; $7d71: $08 $08 $08
    ld [$0808], sp                                ; $7d74: $08 $08 $08
    ld [$0808], sp                                ; $7d77: $08 $08 $08
    ld [$0308], sp                                ; $7d7a: $08 $08 $03
    inc bc                                        ; $7d7d: $03
    inc bc                                        ; $7d7e: $03
    inc bc                                        ; $7d7f: $03
    inc bc                                        ; $7d80: $03
    inc bc                                        ; $7d81: $03
    inc bc                                        ; $7d82: $03
    inc bc                                        ; $7d83: $03
    inc bc                                        ; $7d84: $03
    inc bc                                        ; $7d85: $03
    inc bc                                        ; $7d86: $03
    inc bc                                        ; $7d87: $03
    inc hl                                        ; $7d88: $23
    inc bc                                        ; $7d89: $03
    inc bc                                        ; $7d8a: $03
    inc bc                                        ; $7d8b: $03
    inc bc                                        ; $7d8c: $03
    inc bc                                        ; $7d8d: $03
    inc bc                                        ; $7d8e: $03
    nop                                           ; $7d8f: $00
    nop                                           ; $7d90: $00
    nop                                           ; $7d91: $00
    nop                                           ; $7d92: $00
    nop                                           ; $7d93: $00
    nop                                           ; $7d94: $00
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00
    nop                                           ; $7d97: $00
    inc bc                                        ; $7d98: $03
    inc bc                                        ; $7d99: $03
    inc bc                                        ; $7d9a: $03
    inc bc                                        ; $7d9b: $03
    inc bc                                        ; $7d9c: $03
    inc bc                                        ; $7d9d: $03
    inc bc                                        ; $7d9e: $03
    inc bc                                        ; $7d9f: $03
    inc bc                                        ; $7da0: $03
    inc bc                                        ; $7da1: $03
    nop                                           ; $7da2: $00
    nop                                           ; $7da3: $00
    nop                                           ; $7da4: $00
    inc bc                                        ; $7da5: $03
    inc bc                                        ; $7da6: $03
    inc bc                                        ; $7da7: $03
    inc bc                                        ; $7da8: $03
    inc bc                                        ; $7da9: $03
    inc bc                                        ; $7daa: $03
    inc bc                                        ; $7dab: $03
    inc bc                                        ; $7dac: $03
    inc bc                                        ; $7dad: $03
    inc bc                                        ; $7dae: $03
    inc bc                                        ; $7daf: $03
    nop                                           ; $7db0: $00
    nop                                           ; $7db1: $00
    inc bc                                        ; $7db2: $03
    inc bc                                        ; $7db3: $03
    inc bc                                        ; $7db4: $03
    inc bc                                        ; $7db5: $03
    inc bc                                        ; $7db6: $03
    nop                                           ; $7db7: $00
    inc bc                                        ; $7db8: $03
    inc bc                                        ; $7db9: $03
    inc bc                                        ; $7dba: $03
    inc bc                                        ; $7dbb: $03
    inc bc                                        ; $7dbc: $03
    inc bc                                        ; $7dbd: $03
    inc bc                                        ; $7dbe: $03
    inc bc                                        ; $7dbf: $03
    inc bc                                        ; $7dc0: $03
    inc bc                                        ; $7dc1: $03
    inc bc                                        ; $7dc2: $03
    inc bc                                        ; $7dc3: $03
    inc bc                                        ; $7dc4: $03
    inc bc                                        ; $7dc5: $03
    inc bc                                        ; $7dc6: $03
    inc bc                                        ; $7dc7: $03
    inc bc                                        ; $7dc8: $03
    inc bc                                        ; $7dc9: $03
    inc bc                                        ; $7dca: $03
    inc bc                                        ; $7dcb: $03
    inc bc                                        ; $7dcc: $03
    inc bc                                        ; $7dcd: $03
    inc bc                                        ; $7dce: $03
    inc bc                                        ; $7dcf: $03
    nop                                           ; $7dd0: $00
    nop                                           ; $7dd1: $00
    inc bc                                        ; $7dd2: $03
    inc bc                                        ; $7dd3: $03
    inc bc                                        ; $7dd4: $03
    inc bc                                        ; $7dd5: $03
    inc bc                                        ; $7dd6: $03
    inc bc                                        ; $7dd7: $03
    inc bc                                        ; $7dd8: $03
    inc bc                                        ; $7dd9: $03
    inc bc                                        ; $7dda: $03
    inc bc                                        ; $7ddb: $03
    inc bc                                        ; $7ddc: $03
    inc bc                                        ; $7ddd: $03
    inc bc                                        ; $7dde: $03
    inc bc                                        ; $7ddf: $03
    inc bc                                        ; $7de0: $03
    inc bc                                        ; $7de1: $03
    inc bc                                        ; $7de2: $03
    inc bc                                        ; $7de3: $03
    inc bc                                        ; $7de4: $03
    inc bc                                        ; $7de5: $03
    inc bc                                        ; $7de6: $03
    inc bc                                        ; $7de7: $03
    inc bc                                        ; $7de8: $03
    inc bc                                        ; $7de9: $03
    inc bc                                        ; $7dea: $03
    inc bc                                        ; $7deb: $03
    inc bc                                        ; $7dec: $03
    inc bc                                        ; $7ded: $03
    inc bc                                        ; $7dee: $03
    inc bc                                        ; $7def: $03
    nop                                           ; $7df0: $00
    nop                                           ; $7df1: $00
    inc bc                                        ; $7df2: $03
    inc bc                                        ; $7df3: $03
    inc bc                                        ; $7df4: $03
    inc bc                                        ; $7df5: $03
    inc bc                                        ; $7df6: $03
    nop                                           ; $7df7: $00
    inc bc                                        ; $7df8: $03
    inc bc                                        ; $7df9: $03
    inc bc                                        ; $7dfa: $03
    inc bc                                        ; $7dfb: $03
    ld [bc], a                                    ; $7dfc: $02
    ld [bc], a                                    ; $7dfd: $02
    ld [bc], a                                    ; $7dfe: $02
    ld [bc], a                                    ; $7dff: $02
    ld [bc], a                                    ; $7e00: $02
    ld [bc], a                                    ; $7e01: $02
    ld [bc], a                                    ; $7e02: $02
    ld [bc], a                                    ; $7e03: $02
    ld [bc], a                                    ; $7e04: $02
    ld [bc], a                                    ; $7e05: $02
    ld [bc], a                                    ; $7e06: $02
    ld [bc], a                                    ; $7e07: $02
    ld [bc], a                                    ; $7e08: $02
    ld [bc], a                                    ; $7e09: $02
    ld [bc], a                                    ; $7e0a: $02
    ld [bc], a                                    ; $7e0b: $02
    ld [bc], a                                    ; $7e0c: $02
    ld [bc], a                                    ; $7e0d: $02
    ld [bc], a                                    ; $7e0e: $02
    ld [bc], a                                    ; $7e0f: $02
    ld [bc], a                                    ; $7e10: $02
    ld [bc], a                                    ; $7e11: $02
    ld [bc], a                                    ; $7e12: $02
    ld [bc], a                                    ; $7e13: $02
    ld [bc], a                                    ; $7e14: $02
    ld [bc], a                                    ; $7e15: $02
    ld [bc], a                                    ; $7e16: $02
    ld [bc], a                                    ; $7e17: $02
    ld [hl+], a                                   ; $7e18: $22
    ld [hl+], a                                   ; $7e19: $22
    ld [hl+], a                                   ; $7e1a: $22
    ld [bc], a                                    ; $7e1b: $02
    ld [bc], a                                    ; $7e1c: $02
    ld [bc], a                                    ; $7e1d: $02
    ld [bc], a                                    ; $7e1e: $02
    ld [bc], a                                    ; $7e1f: $02
    ld [bc], a                                    ; $7e20: $02
    ld [bc], a                                    ; $7e21: $02
    ld [bc], a                                    ; $7e22: $02
    ld [bc], a                                    ; $7e23: $02
    ld [bc], a                                    ; $7e24: $02
    ld [bc], a                                    ; $7e25: $02
    ld [bc], a                                    ; $7e26: $02
    ld [bc], a                                    ; $7e27: $02
    ld [bc], a                                    ; $7e28: $02
    ld [bc], a                                    ; $7e29: $02
    ld [bc], a                                    ; $7e2a: $02
    ld [bc], a                                    ; $7e2b: $02
    ld [bc], a                                    ; $7e2c: $02
    ld [hl+], a                                   ; $7e2d: $22
    ld [hl+], a                                   ; $7e2e: $22
    ld [hl+], a                                   ; $7e2f: $22
    ld [bc], a                                    ; $7e30: $02
    ld [bc], a                                    ; $7e31: $02
    ld [bc], a                                    ; $7e32: $02
    ld [bc], a                                    ; $7e33: $02
    ld [bc], a                                    ; $7e34: $02
    ld [bc], a                                    ; $7e35: $02
    ld [bc], a                                    ; $7e36: $02
    ld [bc], a                                    ; $7e37: $02
    ld [bc], a                                    ; $7e38: $02
    ld [bc], a                                    ; $7e39: $02
    ld [bc], a                                    ; $7e3a: $02
    ld [bc], a                                    ; $7e3b: $02
    ld b, $05                                     ; $7e3c: $06 $05
    dec b                                         ; $7e3e: $05
    dec b                                         ; $7e3f: $05
    dec b                                         ; $7e40: $05
    dec b                                         ; $7e41: $05
    dec h                                         ; $7e42: $25
    dec b                                         ; $7e43: $05
    dec b                                         ; $7e44: $05
    dec b                                         ; $7e45: $05
    dec b                                         ; $7e46: $05
    dec b                                         ; $7e47: $05
    dec b                                         ; $7e48: $05
    dec b                                         ; $7e49: $05
    dec b                                         ; $7e4a: $05
    dec b                                         ; $7e4b: $05
    ld h, $01                                     ; $7e4c: $26 $01
    ld b, $06                                     ; $7e4e: $06 $06
    ld b, $01                                     ; $7e50: $06 $01
    ld b, $04                                     ; $7e52: $06 $04
    inc b                                         ; $7e54: $04
    ld b, $01                                     ; $7e55: $06 $01
    ld b, $06                                     ; $7e57: $06 $06
    ld b, $06                                     ; $7e59: $06 $06
    ld bc, $0106                                  ; $7e5b: $01 $06 $01
    ld b, $06                                     ; $7e5e: $06 $06
    ld b, $06                                     ; $7e60: $06 $06
    inc b                                         ; $7e62: $04
    inc b                                         ; $7e63: $04
    ld b, $01                                     ; $7e64: $06 $01
    ld b, $05                                     ; $7e66: $06 $05
    dec b                                         ; $7e68: $05
    dec b                                         ; $7e69: $05
    dec c                                         ; $7e6a: $0d
    dec h                                         ; $7e6b: $25
    dec c                                         ; $7e6c: $0d
    ld bc, $2106                                  ; $7e6d: $01 $06 $21
    ld hl, $2622                                  ; $7e70: $21 $22 $26
    ld b, $26                                     ; $7e73: $06 $26
    ld c, $26                                     ; $7e75: $0e $26
    ld hl, $0606                                  ; $7e77: $21 $06 $06
    ld bc, $0906                                  ; $7e7a: $01 $06 $09
    dec c                                         ; $7e7d: $0d
    dec c                                         ; $7e7e: $0d
    dec c                                         ; $7e7f: $0d
    dec c                                         ; $7e80: $0d
    dec c                                         ; $7e81: $0d
    dec l                                         ; $7e82: $2d
    dec c                                         ; $7e83: $0d
    dec c                                         ; $7e84: $0d
    dec c                                         ; $7e85: $0d
    dec c                                         ; $7e86: $0d
    dec c                                         ; $7e87: $0d
    dec c                                         ; $7e88: $0d
    dec c                                         ; $7e89: $0d
    dec c                                         ; $7e8a: $0d
    dec c                                         ; $7e8b: $0d
    add hl, hl                                    ; $7e8c: $29
    ld c, $0e                                     ; $7e8d: $0e $0e
    ld c, $0e                                     ; $7e8f: $0e $0e
    ld c, $0e                                     ; $7e91: $0e $0e
    ld c, $09                                     ; $7e93: $0e $09
    ld c, $0e                                     ; $7e95: $0e $0e
    ld c, $0e                                     ; $7e97: $0e $0e
    ld c, $0e                                     ; $7e99: $0e $0e
    ld c, $09                                     ; $7e9b: $0e $09
    ld c, $0e                                     ; $7e9d: $0e $0e
    ld c, $09                                     ; $7e9f: $0e $09
    ld c, $0e                                     ; $7ea1: $0e $0e
    add hl, bc                                    ; $7ea3: $09
    ld c, $0e                                     ; $7ea4: $0e $0e
    ld l, $0d                                     ; $7ea6: $2e $0d
    ld h, l                                       ; $7ea8: $65
    dec c                                         ; $7ea9: $0d
    dec c                                         ; $7eaa: $0d
    dec c                                         ; $7eab: $0d
    add hl, bc                                    ; $7eac: $09
    ld c, $0e                                     ; $7ead: $0e $0e
    ld b, $29                                     ; $7eaf: $06 $29
    ld c, $0e                                     ; $7eb1: $0e $0e
    ld c, $0e                                     ; $7eb3: $0e $0e
    ld c, $2e                                     ; $7eb5: $0e $2e
    ld l, $09                                     ; $7eb7: $2e $09
    ld c, $0e                                     ; $7eb9: $0e $0e
    add hl, bc                                    ; $7ebb: $09
    ld [bc], a                                    ; $7ebc: $02
    ld [bc], a                                    ; $7ebd: $02
    ld [bc], a                                    ; $7ebe: $02
    ld [bc], a                                    ; $7ebf: $02
    ld [bc], a                                    ; $7ec0: $02
    ld [bc], a                                    ; $7ec1: $02
    ld [bc], a                                    ; $7ec2: $02
    ld [bc], a                                    ; $7ec3: $02
    ld [bc], a                                    ; $7ec4: $02
    ld [bc], a                                    ; $7ec5: $02
    ld [bc], a                                    ; $7ec6: $02
    ld [bc], a                                    ; $7ec7: $02
    ld [bc], a                                    ; $7ec8: $02
    ld [bc], a                                    ; $7ec9: $02
    ld [bc], a                                    ; $7eca: $02
    ld [bc], a                                    ; $7ecb: $02
    ld [bc], a                                    ; $7ecc: $02
    ld [bc], a                                    ; $7ecd: $02
    ld [bc], a                                    ; $7ece: $02
    ld [bc], a                                    ; $7ecf: $02
    ld [bc], a                                    ; $7ed0: $02
    ld [bc], a                                    ; $7ed1: $02
    ld [bc], a                                    ; $7ed2: $02
    ld [bc], a                                    ; $7ed3: $02
    ld [bc], a                                    ; $7ed4: $02
    ld [bc], a                                    ; $7ed5: $02
    ld [bc], a                                    ; $7ed6: $02
    ld [bc], a                                    ; $7ed7: $02
    ld [bc], a                                    ; $7ed8: $02
    ld [bc], a                                    ; $7ed9: $02
    ld [bc], a                                    ; $7eda: $02
    ld [bc], a                                    ; $7edb: $02
    ld [bc], a                                    ; $7edc: $02
    ld [bc], a                                    ; $7edd: $02
    ld [bc], a                                    ; $7ede: $02
    ld [bc], a                                    ; $7edf: $02
    ld [bc], a                                    ; $7ee0: $02
    ld [bc], a                                    ; $7ee1: $02
    ld [bc], a                                    ; $7ee2: $02
    ld [bc], a                                    ; $7ee3: $02
    ld [bc], a                                    ; $7ee4: $02
    ld [bc], a                                    ; $7ee5: $02
    ld [bc], a                                    ; $7ee6: $02
    ld [bc], a                                    ; $7ee7: $02
    ld [bc], a                                    ; $7ee8: $02
    ld [bc], a                                    ; $7ee9: $02
    ld [bc], a                                    ; $7eea: $02
    ld [bc], a                                    ; $7eeb: $02
    ld [bc], a                                    ; $7eec: $02
    ld [bc], a                                    ; $7eed: $02
    ld [bc], a                                    ; $7eee: $02
    ld [bc], a                                    ; $7eef: $02
    ld [bc], a                                    ; $7ef0: $02
    ld [bc], a                                    ; $7ef1: $02
    ld [bc], a                                    ; $7ef2: $02
    ld [bc], a                                    ; $7ef3: $02
    ld [bc], a                                    ; $7ef4: $02
    ld [bc], a                                    ; $7ef5: $02
    ld [bc], a                                    ; $7ef6: $02
    ld [bc], a                                    ; $7ef7: $02
    ld [bc], a                                    ; $7ef8: $02
    ld [bc], a                                    ; $7ef9: $02
    ld [bc], a                                    ; $7efa: $02
    ld [bc], a                                    ; $7efb: $02

    db $14, $00, $12, $00, $ac, $00, $40, $80, $01, $18, $81, $82, $83, $84, $85, $86
    db $c0, $0d, $20, $14, $10, $87, $88, $89, $8a, $8b, $8c, $08, $8d, $8e, $8f, $90
    db $16, $30, $91, $92, $93, $00, $94, $95, $96, $97, $98, $99, $9a, $9b, $40, $9c
    db $38, $20, $9d, $9e, $9f, $a0, $a1, $a2, $00, $a3, $a4, $a5, $a6, $a7, $a8, $a9
    db $aa, $80, $4d, $18, $ab, $ac, $ad, $ae, $af, $b0, $b1, $01, $b2, $b3, $b4, $b5
    db $b6, $b7, $b8, $61, $18, $00, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $01, $c1
    db $c2, $c3, $c4, $c5, $c6, $c7, $76, $10, $00, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $01, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $8a, $10, $00, $d7, $d8, $d9, $da
    db $db, $dc, $dd, $de, $02, $df, $e0, $e1, $e2, $e3, $e4, $9d, $20, $e5, $00, $e6
    db $e7, $e8, $e9, $ea, $eb, $ec, $ed, $10, $ee, $ef, $f0, $a3, $30, $f1, $f2, $f3
    db $f4, $02, $f5, $f6, $f7, $f8, $f9, $fa, $b6, $40, $fb, $01, $fc, $fd, $fe, $ff
    db $00, $01, $02, $c9, $48, $01, $80, $03, $04, $05, $06, $07, $08, $13, $50, $9e
    db $f6, $00, $09, $0a, $12, $68, $10, $f8, $32, $f8, $54, $b0, $00, $ff, $01, $f8
    db $23, $f8, $45, $f8, $67, $f8, $89, $f8, $ab, $f8, $cd, $f8, $ef, $90, $70, $01
    db $01, $f8, $23, $f8, $45, $e0

    rst $38                                       ; $7fe2: $ff
    ld a, a                                       ; $7fe3: $7f
    cp a                                          ; $7fe4: $bf
    rlca                                          ; $7fe5: $07
    ret nc                                        ; $7fe6: $d0

    ld bc, $0085                                  ; $7fe7: $01 $85 $00
    rst $38                                       ; $7fea: $ff
    ld a, a                                       ; $7feb: $7f
    rla                                           ; $7fec: $17
    ld l, a                                       ; $7fed: $6f
    adc h                                         ; $7fee: $8c
    ld b, c                                       ; $7fef: $41
    ld hl, $ff04                                  ; $7ff0: $21 $04 $ff
    ld a, a                                       ; $7ff3: $7f
    cp [hl]                                       ; $7ff4: $be
    ld d, a                                       ; $7ff5: $57
    rst $28                                       ; $7ff6: $ef
    ld sp, $0024                                  ; $7ff7: $31 $24 $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
