; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $094", ROMX[$4000], BANK[$94]

    sub h                                         ; $4000: $94
    ldh [rNR30], a                                ; $4001: $e0 $1a
    cp $0f                                        ; $4003: $fe $0f
    ld b, l                                       ; $4005: $45

Jump_094_4006:
    rst $38                                       ; $4006: $ff
    ld bc, $5530                                  ; $4007: $01 $30 $55
    rst $38                                       ; $400a: $ff
    xor d                                         ; $400b: $aa
    inc b                                         ; $400c: $04
    stop                                          ; $400d: $10 $00
    ld [bc], a                                    ; $400f: $02
    nop                                           ; $4010: $00
    db $10                                        ; $4011: $10
    xor d                                         ; $4012: $aa
    ld d, l                                       ; $4013: $55
    ld d, l                                       ; $4014: $55
    add hl, bc                                    ; $4015: $09
    nop                                           ; $4016: $00
    ld d, l                                       ; $4017: $55
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    nop                                           ; $401b: $00
    sbc l                                         ; $401c: $9d
    db $e3                                        ; $401d: $e3
    ld b, d                                       ; $401e: $42
    add c                                         ; $401f: $81
    add c                                         ; $4020: $81
    nop                                           ; $4021: $00
    ld l, d                                       ; $4022: $6a
    add c                                         ; $4023: $81
    nop                                           ; $4024: $00
    halt                                          ; $4025: $76
    add c                                         ; $4026: $81
    adc l                                         ; $4027: $8d
    di                                            ; $4028: $f3
    pop bc                                        ; $4029: $c1
    rst $38                                       ; $402a: $ff
    sbc h                                         ; $402b: $9c
    db $e3                                        ; $402c: $e3
    nop                                           ; $402d: $00
    rrca                                          ; $402e: $0f
    ldh a, [$67]                                  ; $402f: $f0 $67
    add b                                         ; $4031: $80
    ld b, b                                       ; $4032: $40
    add b                                         ; $4033: $80
    nop                                           ; $4034: $00
    add b                                         ; $4035: $80
    nop                                           ; $4036: $00
    ld d, b                                       ; $4037: $50
    add b                                         ; $4038: $80
    cp d                                          ; $4039: $ba
    ret nz                                        ; $403a: $c0

    dec e                                         ; $403b: $1d
    ldh [$a9], a                                  ; $403c: $e0 $a9
    rst $38                                       ; $403e: $ff
    nop                                           ; $403f: $00
    jp Jump_094_673c                              ; $4040: $c3 $3c $67


    db $18, $ac                                   ; $4043: $18 $ac
    db $10                                        ; $4045: $10
    jr jr_094_4048                                ; $4046: $18 $00

jr_094_4048:
    nop                                           ; $4048: $00
    stop                                          ; $4049: $10 $00
    xor d                                         ; $404b: $aa
    db $10                                        ; $404c: $10
    call Call_094_5330                            ; $404d: $cd $30 $53
    db $fc                                        ; $4050: $fc
    ret nz                                        ; $4051: $c0

    inc sp                                        ; $4052: $33
    nop                                           ; $4053: $00
    inc bc                                        ; $4054: $03
    ld d, b                                       ; $4055: $50
    ld h, d                                       ; $4056: $62
    add c                                         ; $4057: $81
    push bc                                       ; $4058: $c5
    nop                                           ; $4059: $00
    xor e                                         ; $405a: $ab
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    ld a, [hl]                                    ; $405d: $7e
    add c                                         ; $405e: $81
    add c                                         ; $405f: $81
    rst $38                                       ; $4060: $ff
    ld [hl+], a                                   ; $4061: $22
    pop bc                                        ; $4062: $c1
    ld [hl], l                                    ; $4063: $75
    add b                                         ; $4064: $80
    nop                                           ; $4065: $00
    sbc [hl]                                      ; $4066: $9e
    pop hl                                        ; $4067: $e1
    ret nz                                        ; $4068: $c0

    rst $38                                       ; $4069: $ff
    sub l                                         ; $406a: $95
    ld [$d0af], a                                 ; $406b: $ea $af $d0
    inc b                                         ; $406e: $04
    sbc l                                         ; $406f: $9d
    ld [c], a                                     ; $4070: $e2
    add d                                         ; $4071: $82
    db $fd                                        ; $4072: $fd
    ldh [$7b], a                                  ; $4073: $e0 $7b
    db $10                                        ; $4075: $10
    ld a, a                                       ; $4076: $7f
    rst $38                                       ; $4077: $ff
    nop                                           ; $4078: $00
    ld e, a                                       ; $4079: $5f
    cp a                                          ; $407a: $bf
    adc c                                         ; $407b: $89
    ld a, a                                       ; $407c: $7f
    dec d                                         ; $407d: $15
    ld a, [$f12e]                                 ; $407e: $fa $2e $f1
    jr jr_094_40e8                                ; $4081: $18 $65

    ei                                            ; $4083: $fb
    pop hl                                        ; $4084: $e1
    adc l                                         ; $4085: $8d
    nop                                           ; $4086: $00
    ld b, b                                       ; $4087: $40
    ld [$0030], sp                                ; $4088: $08 $30 $00
    ld d, h                                       ; $408b: $54
    ld c, $38                                     ; $408c: $0e $38
    cp d                                          ; $408e: $ba
    ld a, h                                       ; $408f: $7c
    ld a, [hl]                                    ; $4090: $7e
    sbc e                                         ; $4091: $9b
    db $10                                        ; $4092: $10
    adc [hl]                                      ; $4093: $8e
    ld [$4804], sp                                ; $4094: $08 $04 $48
    jp Jump_000_3c00                              ; $4097: $c3 $00 $3c


    and $18                                       ; $409a: $e6 $18
    inc [hl]                                      ; $409c: $34
    ld [$0018], sp                                ; $409d: $08 $18 $00
    ld a, [bc]                                    ; $40a0: $0a
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    dec d                                         ; $40a3: $15
    ld [$0cb3], sp                                ; $40a4: $08 $b3 $0c
    push de                                       ; $40a7: $d5
    ccf                                           ; $40a8: $3f
    ldh [rP1], a                                  ; $40a9: $e0 $00
    rra                                           ; $40ab: $1f
    ld sp, hl                                     ; $40ac: $f9
    ld b, $0d                                     ; $40ad: $06 $0d
    ld [bc], a                                    ; $40af: $02
    ld b, $00                                     ; $40b0: $06 $00
    ld b, $00                                     ; $40b2: $06 $00
    nop                                           ; $40b4: $00
    ld d, e                                       ; $40b5: $53
    inc b                                         ; $40b6: $04
    cp c                                          ; $40b7: $b9
    ld b, $f4                                     ; $40b8: $06 $f4
    rrca                                          ; $40ba: $0f
    ldh a, [$08]                                  ; $40bb: $f0 $08
    rrca                                          ; $40bd: $0f
    db $eb                                        ; $40be: $eb
    inc b                                         ; $40bf: $04
    inc d                                         ; $40c0: $14
    ld c, $00                                     ; $40c1: $0e $00
    dec d                                         ; $40c3: $15
    nop                                           ; $40c4: $00
    dec hl                                        ; $40c5: $2b
    nop                                           ; $40c6: $00
    inc b                                         ; $40c7: $04
    or b                                          ; $40c8: $b0
    rrca                                          ; $40c9: $0f
    ld a, [hl+]                                   ; $40ca: $2a
    rst $38                                       ; $40cb: $ff
    pop hl                                        ; $40cc: $e1
    ld e, $1a                                     ; $40cd: $1e $1a
    nop                                           ; $40cf: $00
    inc b                                         ; $40d0: $04
    dec b                                         ; $40d1: $05
    nop                                           ; $40d2: $00
    inc c                                         ; $40d3: $0c
    nop                                           ; $40d4: $00
    ld d, [hl]                                    ; $40d5: $56
    nop                                           ; $40d6: $00
    xor e                                         ; $40d7: $ab
    ld [$e104], sp                                ; $40d8: $08 $04 $e1
    ld e, $14                                     ; $40db: $1e $14
    rst $28                                       ; $40dd: $ef
    nop                                           ; $40de: $00
    pop hl                                        ; $40df: $e1
    rst $38                                       ; $40e0: $ff
    push de                                       ; $40e1: $d5
    nop                                           ; $40e2: $00
    db $eb                                        ; $40e3: $eb
    ret                                           ; $40e4: $c9


    rst $30                                       ; $40e5: $f7
    ld d, e                                       ; $40e6: $53
    rst $28                                       ; $40e7: $ef

jr_094_40e8:
    ld b, e                                       ; $40e8: $43
    rst $38                                       ; $40e9: $ff
    rst $20                                       ; $40ea: $e7
    add b                                         ; $40eb: $80
    db $fd                                        ; $40ec: $fd
    nop                                           ; $40ed: $00
    inc a                                         ; $40ee: $3c
    rst $38                                       ; $40ef: $ff
    sbc d                                         ; $40f0: $9a
    ld a, l                                       ; $40f1: $7d
    pop de                                        ; $40f2: $d1
    ld a, $93                                     ; $40f3: $3e $93
    ld [bc], a                                    ; $40f5: $02
    ld a, h                                       ; $40f6: $7c
    ld e, c                                       ; $40f7: $59
    cp [hl]                                       ; $40f8: $be
    ld a, [de]                                    ; $40f9: $1a
    db $fd                                        ; $40fa: $fd
    db $fc                                        ; $40fb: $fc
    dec c                                         ; $40fc: $0d
    ld de, $007c                                  ; $40fd: $11 $7c $00
    rst $38                                       ; $4100: $ff
    halt                                          ; $4101: $76
    ld sp, hl                                     ; $4102: $f9
    xor h                                         ; $4103: $ac
    ld [hl], e                                    ; $4104: $73
    ld [hl+], a                                   ; $4105: $22
    db $fd                                        ; $4106: $fd
    jr nc, jr_094_4139                            ; $4107: $30 $30

    rst $38                                       ; $4109: $ff
    ld a, b                                       ; $410a: $78
    dec e                                         ; $410b: $1d
    add hl, sp                                    ; $410c: $39
    daa                                           ; $410d: $27
    ld sp, $0000                                  ; $410e: $31 $00 $00
    inc a                                         ; $4111: $3c
    inc a                                         ; $4112: $3c
    nop                                           ; $4113: $00
    ld e, e                                       ; $4114: $5b
    ld h, a                                       ; $4115: $67
    ld b, [hl]                                    ; $4116: $46
    ld a, c                                       ; $4117: $79
    ld h, c                                       ; $4118: $61
    ld l, [hl]                                    ; $4119: $6e
    jr c, jr_094_4155                             ; $411a: $38 $39

    ld [$0e0e], sp                                ; $411c: $08 $0e $0e
    inc bc                                        ; $411f: $03
    inc bc                                        ; $4120: $03
    ldh a, [$58]                                  ; $4121: $f0 $58
    add b                                         ; $4123: $80
    add b                                         ; $4124: $80
    ld [bc], a                                    ; $4125: $02
    inc b                                         ; $4126: $04
    inc bc                                        ; $4127: $03
    inc bc                                        ; $4128: $03
    inc bc                                        ; $4129: $03
    ld bc, $0601                                  ; $412a: $01 $01 $06
    nop                                           ; $412d: $00
    ld [bc], a                                    ; $412e: $02
    dec b                                         ; $412f: $05
    nop                                           ; $4130: $00
    rlca                                          ; $4131: $07
    ld a, [bc]                                    ; $4132: $0a
    ld a, [bc]                                    ; $4133: $0a
    ld b, $06                                     ; $4134: $06 $06
    rst $38                                       ; $4136: $ff
    rst $38                                       ; $4137: $ff
    adc a                                         ; $4138: $8f

jr_094_4139:
    ld [bc], a                                    ; $4139: $02
    rst $38                                       ; $413a: $ff
    sbc e                                         ; $413b: $9b
    rst $20                                       ; $413c: $e7
    ld c, l                                       ; $413d: $4d
    or e                                          ; $413e: $b3
    sub c                                         ; $413f: $91
    ld [hl], b                                    ; $4140: $70
    nop                                           ; $4141: $00
    and a                                         ; $4142: $a7
    add b                                         ; $4143: $80
    ldh [rNR41], a                                ; $4144: $e0 $20
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    ret nz                                        ; $4148: $c0

    ret nz                                        ; $4149: $c0

    or b                                          ; $414a: $b0
    ld [hl], b                                    ; $414b: $70
    ld l, b                                       ; $414c: $68
    nop                                           ; $414d: $00
    sbc b                                         ; $414e: $98
    ld d, $7e                                     ; $414f: $16 $7e
    xor l                                         ; $4151: $ad
    or e                                          ; $4152: $b3
    pop af                                        ; $4153: $f1
    ld a, [c]                                     ; $4154: $f2

jr_094_4155:
    inc e                                         ; $4155: $1c
    nop                                           ; $4156: $00
    dec e                                         ; $4157: $1d
    rrca                                          ; $4158: $0f
    rrca                                          ; $4159: $0f
    rra                                           ; $415a: $1f
    rra                                           ; $415b: $1f
    scf                                           ; $415c: $37
    ccf                                           ; $415d: $3f
    ld l, d                                       ; $415e: $6a
    nop                                           ; $415f: $00
    ld a, e                                       ; $4160: $7b
    cp d                                          ; $4161: $ba
    xor e                                         ; $4162: $ab
    ld e, a                                       ; $4163: $5f
    ld a, a                                       ; $4164: $7f
    ld h, b                                       ; $4165: $60
    ldh [$58], a                                  ; $4166: $e0 $58
    nop                                           ; $4168: $00
    cp b                                          ; $4169: $b8
    inc e                                         ; $416a: $1c
    ld [hl], h                                    ; $416b: $74
    and [hl]                                      ; $416c: $a6
    cp [hl]                                       ; $416d: $be
    ld l, c                                       ; $416e: $69
    ld l, a                                       ; $416f: $6f
    sbc [hl]                                      ; $4170: $9e
    nop                                           ; $4171: $00
    sbc [hl]                                      ; $4172: $9e
    add b                                         ; $4173: $80
    add b                                         ; $4174: $80
    ret nz                                        ; $4175: $c0

    ld b, b                                       ; $4176: $40
    db $10                                        ; $4177: $10
    ld [$0028], a                                 ; $4178: $ea $28 $00
    push af                                       ; $417b: $f5
    db $10                                        ; $417c: $10
    xor e                                         ; $417d: $ab
    and b                                         ; $417e: $a0
    ld a, a                                       ; $417f: $7f
    dec d                                         ; $4180: $15
    rst $38                                       ; $4181: $ff
    ld a, [bc]                                    ; $4182: $0a
    nop                                           ; $4183: $00
    ld d, a                                       ; $4184: $57
    inc b                                         ; $4185: $04
    ei                                            ; $4186: $fb
    nop                                           ; $4187: $00
    rst $30                                       ; $4188: $f7
    inc b                                         ; $4189: $04
    xor e                                         ; $418a: $ab
    ld [hl+], a                                   ; $418b: $22
    nop                                           ; $418c: $00
    db $dd                                        ; $418d: $dd
    inc b                                         ; $418e: $04
    cp e                                          ; $418f: $bb
    ld [bc], a                                    ; $4190: $02
    db $fd                                        ; $4191: $fd
    ld d, l                                       ; $4192: $55
    cp $aa                                        ; $4193: $fe $aa
    nop                                           ; $4195: $00
    ld d, l                                       ; $4196: $55
    ld b, l                                       ; $4197: $45
    cp [hl]                                       ; $4198: $be
    adc d                                         ; $4199: $8a
    ld [hl], l                                    ; $419a: $75
    and c                                         ; $419b: $a1
    pop hl                                        ; $419c: $e1
    ldh [$0c], a                                  ; $419d: $e0 $0c
    and b                                         ; $419f: $a0
    ld b, b                                       ; $41a0: $40
    ret nz                                        ; $41a1: $c0

    add b                                         ; $41a2: $80
    ld bc, $7a00                                  ; $41a3: $01 $00 $7a
    add hl, de                                    ; $41a6: $19
    ld b, b                                       ; $41a7: $40
    ret nz                                        ; $41a8: $c0

    ld [bc], a                                    ; $41a9: $02
    ldh [$a0], a                                  ; $41aa: $e0 $a0
    ld d, b                                       ; $41ac: $50
    ld [hl], b                                    ; $41ad: $70
    ld h, b                                       ; $41ae: $60
    ld h, b                                       ; $41af: $60
    adc b                                         ; $41b0: $88
    add hl, hl                                    ; $41b1: $29
    dec [hl]                                      ; $41b2: $35
    nop                                           ; $41b3: $00
    rst $08                                       ; $41b4: $cf
    db $fc                                        ; $41b5: $fc
    ldh a, [$5a]                                  ; $41b6: $f0 $5a
    ld sp, $528d                                  ; $41b8: $31 $8d $52
    and d                                         ; $41bb: $a2
    nop                                           ; $41bc: $00
    dec e                                         ; $41bd: $1d
    ldh [$1f], a                                  ; $41be: $e0 $1f
    ld e, l                                       ; $41c0: $5d
    cp a                                          ; $41c1: $bf
    ld [hl], c                                    ; $41c2: $71
    ldh [$64], a                                  ; $41c3: $e0 $64
    nop                                           ; $41c5: $00
    rst $38                                       ; $41c6: $ff
    db $dd                                        ; $41c7: $dd
    ccf                                           ; $41c8: $3f
    add l                                         ; $41c9: $85
    ld a, b                                       ; $41ca: $78
    ld a, $d1                                     ; $41cb: $3e $d1
    ld c, c                                       ; $41cd: $49
    nop                                           ; $41ce: $00
    or h                                          ; $41cf: $b4
    inc de                                        ; $41d0: $13
    ld hl, sp-$20                                 ; $41d1: $f8 $e0
    rst $38                                       ; $41d3: $ff
    db $eb                                        ; $41d4: $eb
    adc a                                         ; $41d5: $8f
    stop                                          ; $41d6: $10 $00
    ld [$d52a], a                                 ; $41d8: $ea $2a $d5
    inc d                                         ; $41db: $14
    ld [$d7a8], a                                 ; $41dc: $ea $a8 $d7
    ld b, c                                       ; $41df: $41
    nop                                           ; $41e0: $00
    rst $38                                       ; $41e1: $ff
    ld [$11ff], sp                                ; $41e2: $08 $ff $11
    ld [$fdaa], a                                 ; $41e5: $ea $aa $fd
    cp c                                          ; $41e8: $b9
    nop                                           ; $41e9: $00
    inc c                                         ; $41ea: $0c
    xor d                                         ; $41eb: $aa
    ld e, c                                       ; $41ec: $59
    ld d, b                                       ; $41ed: $50
    xor a                                         ; $41ee: $af
    rrca                                          ; $41ef: $0f
    rst $38                                       ; $41f0: $ff
    or l                                          ; $41f1: $b5
    nop                                           ; $41f2: $00
    ld hl, sp-$1a                                 ; $41f3: $f8 $e6
    ld b, c                                       ; $41f5: $41
    add hl, de                                    ; $41f6: $19
    and $ee                                       ; $41f7: $e6 $ee
    ld a, a                                       ; $41f9: $7f
    ld [hl-], a                                   ; $41fa: $32
    ld [$d509], sp                                ; $41fb: $08 $09 $d5
    ld [hl+], a                                   ; $41fe: $22
    nop                                           ; $41ff: $00
    dec h                                         ; $4200: $25
    ld [bc], a                                    ; $4201: $02
    sub b                                         ; $4202: $90
    ld a, b                                       ; $4203: $78
    ld l, $01                                     ; $4204: $2e $01
    pop de                                        ; $4206: $d1
    ld e, b                                       ; $4207: $58
    xor a                                         ; $4208: $af
    ld a, [$b9ff]                                 ; $4209: $fa $ff $b9
    rst $00                                       ; $420c: $c7
    db $10                                        ; $420d: $10
    ld a, [bc]                                    ; $420e: $0a
    nop                                           ; $420f: $00
    ld d, a                                       ; $4210: $57
    add b                                         ; $4211: $80
    ld l, [hl]                                    ; $4212: $6e
    add c                                         ; $4213: $81
    or c                                          ; $4214: $b1
    rst $08                                       ; $4215: $cf
    add e                                         ; $4216: $83
    rst $38                                       ; $4217: $ff
    nop                                           ; $4218: $00
    add hl, sp                                    ; $4219: $39
    rst $00                                       ; $421a: $c7
    ld de, $aaae                                  ; $421b: $11 $ae $aa
    ld e, l                                       ; $421e: $5d
    ld d, b                                       ; $421f: $50
    xor a                                         ; $4220: $af
    nop                                           ; $4221: $00
    ld a, [bc]                                    ; $4222: $0a
    rst $38                                       ; $4223: $ff
    dec d                                         ; $4224: $15
    ld a, [$55a2]                                 ; $4225: $fa $a2 $55
    ld de, $00ee                                  ; $4228: $11 $ee $00
    xor d                                         ; $422b: $aa
    ld a, a                                       ; $422c: $7f
    sub b                                         ; $422d: $90
    ret nz                                        ; $422e: $c0

    ld l, e                                       ; $422f: $6b
    sub b                                         ; $4230: $90
    or h                                          ; $4231: $b4
    jp nz, $a800                                  ; $4232: $c2 $00 $a8

    rst $00                                       ; $4235: $c7
    jp $5c7f                                      ; $4236: $c3 $7f $5c


    cp [hl]                                       ; $4239: $be
    or c                                          ; $423a: $b1
    ld h, b                                       ; $423b: $60
    nop                                           ; $423c: $00
    cp e                                          ; $423d: $bb
    db $fc                                        ; $423e: $fc
    adc [hl]                                      ; $423f: $8e
    inc bc                                        ; $4240: $03
    xor d                                         ; $4241: $aa
    ld b, a                                       ; $4242: $47
    inc bc                                        ; $4243: $03
    cp $00                                        ; $4244: $fe $00
    jp c, $05ff                                   ; $4246: $da $ff $05

    inc bc                                        ; $4249: $03
    xor a                                         ; $424a: $af
    db $10                                        ; $424b: $10
    ld d, h                                       ; $424c: $54
    and e                                         ; $424d: $a3
    nop                                           ; $424e: $00
    xor c                                         ; $424f: $a9
    ld b, a                                       ; $4250: $47
    cp b                                          ; $4251: $b8
    ld h, b                                       ; $4252: $60
    add hl, hl                                    ; $4253: $29
    db $f4                                        ; $4254: $f4
    ld [hl-], a                                   ; $4255: $32
    xor c                                         ; $4256: $a9
    nop                                           ; $4257: $00
    and h                                         ; $4258: $a4
    ld a, e                                       ; $4259: $7b
    or a                                          ; $425a: $b7
    rst $38                                       ; $425b: $ff
    dec de                                        ; $425c: $1b
    ld b, $a6                                     ; $425d: $06 $a6
    ld e, e                                       ; $425f: $5b
    nop                                           ; $4260: $00
    ld b, h                                       ; $4261: $44
    or d                                          ; $4262: $b2
    xor h                                         ; $4263: $ac
    inc bc                                        ; $4264: $03
    inc sp                                        ; $4265: $33
    call $9b24                                    ; $4266: $cd $24 $9b
    nop                                           ; $4269: $00
    ld [bc], a                                    ; $426a: $02
    db $fd                                        ; $426b: $fd
    push de                                       ; $426c: $d5
    cp $ea                                        ; $426d: $fe $ea
    inc b                                         ; $426f: $04
    push bc                                       ; $4270: $c5
    ld d, $00                                     ; $4271: $16 $00
    sbc [hl]                                      ; $4273: $9e
    ld h, l                                       ; $4274: $65
    ld d, e                                       ; $4275: $53
    xor l                                         ; $4276: $ad
    add b                                         ; $4277: $80
    rst $38                                       ; $4278: $ff
    ld a, $ff                                     ; $4279: $3e $ff
    nop                                           ; $427b: $00
    push bc                                       ; $427c: $c5
    ld bc, $7389                                  ; $427d: $01 $89 $73
    ld [hl], $c1                                  ; $4280: $36 $c1
    inc bc                                        ; $4282: $03
    rst $38                                       ; $4283: $ff
    nop                                           ; $4284: $00
    db $f4                                        ; $4285: $f4
    cp $44                                        ; $4286: $fe $44
    rst $38                                       ; $4288: $ff
    adc b                                         ; $4289: $88
    ld a, a                                       ; $428a: $7f
    dec b                                         ; $428b: $05
    ld a, [$2a00]                                 ; $428c: $fa $00 $2a
    push de                                       ; $428f: $d5
    ld b, c                                       ; $4290: $41
    cp [hl]                                       ; $4291: $be
    ld [bc], a                                    ; $4292: $02
    db $fd                                        ; $4293: $fd
    ld b, b                                       ; $4294: $40
    rst $38                                       ; $4295: $ff
    nop                                           ; $4296: $00
    xor d                                         ; $4297: $aa
    rst $18                                       ; $4298: $df
    ld d, c                                       ; $4299: $51
    xor a                                         ; $429a: $af
    add b                                         ; $429b: $80
    rst $38                                       ; $429c: $ff
    inc d                                         ; $429d: $14
    rst $38                                       ; $429e: $ff
    nop                                           ; $429f: $00
    add b                                         ; $42a0: $80
    ld d, l                                       ; $42a1: $55
    ld bc, $22fb                                  ; $42a2: $01 $fb $22
    push de                                       ; $42a5: $d5
    ld bc, $00ff                                  ; $42a6: $01 $ff $00
    and b                                         ; $42a9: $a0
    rst $38                                       ; $42aa: $ff
    dec d                                         ; $42ab: $15
    rst $28                                       ; $42ac: $ef
    xor b                                         ; $42ad: $a8
    push af                                       ; $42ae: $f5

jr_094_42af:
    ld d, b                                       ; $42af: $50
    cp e                                          ; $42b0: $bb
    nop                                           ; $42b1: $00
    adc b                                         ; $42b2: $88
    ld d, a                                       ; $42b3: $57
    nop                                           ; $42b4: $00
    cp a                                          ; $42b5: $bf
    and b                                         ; $42b6: $a0
    ld e, a                                       ; $42b7: $5f
    ld d, l                                       ; $42b8: $55
    cp a                                          ; $42b9: $bf
    jr nz, jr_094_42dc                            ; $42ba: $20 $20

    push af                                       ; $42bc: $f5
    cp a                                          ; $42bd: $bf
    ld a, [bc]                                    ; $42be: $0a
    pop hl                                        ; $42bf: $e1
    ld e, $42                                     ; $42c0: $1e $42
    and c                                         ; $42c2: $a1
    or c                                          ; $42c3: $b1
    nop                                           ; $42c4: $00
    ld h, b                                       ; $42c5: $60
    call c, $ab3f                                 ; $42c6: $dc $3f $ab
    ld d, h                                       ; $42c9: $54
    rst $30                                       ; $42ca: $f7
    dec bc                                        ; $42cb: $0b
    pop hl                                        ; $42cc: $e1
    nop                                           ; $42cd: $00
    ld e, $52                                     ; $42ce: $1e $52
    and c                                         ; $42d0: $a1
    and a                                         ; $42d1: $a7
    ld a, d                                       ; $42d2: $7a
    sbc $3d                                       ; $42d3: $de $3d
    push af                                       ; $42d5: $f5
    nop                                           ; $42d6: $00
    adc d                                         ; $42d7: $8a
    rst $38                                       ; $42d8: $ff
    add h                                         ; $42d9: $84
    db $fd                                        ; $42da: $fd
    add [hl]                                      ; $42db: $86

jr_094_42dc:
    rst $00                                       ; $42dc: $c7
    ccf                                           ; $42dd: $3f
    rst $30                                       ; $42de: $f7
    nop                                           ; $42df: $00
    ld [$14eb], sp                                ; $42e0: $08 $eb $14
    push bc                                       ; $42e3: $c5
    ld a, [hl-]                                   ; $42e4: $3a
    scf                                           ; $42e5: $37
    call z, $019b                                 ; $42e6: $cc $9b $01
    ld b, $f3                                     ; $42e9: $06 $f3
    ld c, $87                                     ; $42eb: $0e $87
    ld a, h                                       ; $42ed: $7c
    ld d, [hl]                                    ; $42ee: $56

jr_094_42ef:
    db $fd                                        ; $42ef: $fd
    rst $28                                       ; $42f0: $ef
    ld a, [bc]                                    ; $42f1: $0a
    db $10                                        ; $42f2: $10
    db $fd                                        ; $42f3: $fd
    nop                                           ; $42f4: $00
    cp a                                          ; $42f5: $bf
    ld h, a                                       ; $42f6: $67
    ld [hl-], a                                   ; $42f7: $32
    rst $18                                       ; $42f8: $df
    jr nz, jr_094_42ef                            ; $42f9: $20 $f4

    dec bc                                        ; $42fb: $0b
    nop                                           ; $42fc: $00
    add sp, $14                                   ; $42fd: $e8 $14
    cp $04                                        ; $42ff: $fe $04
    ld a, [c]                                     ; $4301: $f2
    rrca                                          ; $4302: $0f
    ld l, e                                       ; $4303: $6b
    sub c                                         ; $4304: $91
    nop                                           ; $4305: $00
    sub l                                         ; $4306: $95
    ld h, b                                       ; $4307: $60
    rst $28                                       ; $4308: $ef
    jr nc, jr_094_42af                            ; $4309: $30 $a4

    ld b, e                                       ; $430b: $43
    ld d, b                                       ; $430c: $50
    ldh [rP1], a                                  ; $430d: $e0 $00
    ld l, d                                       ; $430f: $6a
    jr nc, jr_094_4349                            ; $4310: $30 $37

    jr jr_094_42ef                                ; $4312: $18 $db

    ccf                                           ; $4314: $3f
    ld [$00f7], a                                 ; $4315: $ea $f7 $00
    ld d, e                                       ; $4318: $53
    and $4a                                       ; $4319: $e6 $4a
    rst $30                                       ; $431b: $f7
    cp e                                          ; $431c: $bb
    db $fc                                        ; $431d: $fc
    or l                                          ; $431e: $b5
    ld a, d                                       ; $431f: $7a
    nop                                           ; $4320: $00
    xor e                                         ; $4321: $ab
    inc [hl]                                      ; $4322: $34
    ccf                                           ; $4323: $3f
    ldh [$f1], a                                  ; $4324: $e0 $f1
    adc $a2                                       ; $4326: $ce $a2
    ld d, c                                       ; $4328: $51
    ld [bc], a                                    ; $4329: $02

jr_094_432a:
    ld c, l                                       ; $432a: $4d
    or e                                          ; $432b: $b3
    rst $38                                       ; $432c: $ff
    ld e, $bf                                     ; $432d: $1e $bf
    ld b, b                                       ; $432f: $40
    and e                                         ; $4330: $a3
    ld e, d                                       ; $4331: $5a
    pop de                                        ; $4332: $d1
    ld [bc], a                                    ; $4333: $02
    ccf                                           ; $4334: $3f

jr_094_4335:
    xor [hl]                                      ; $4335: $ae
    ld e, a                                       ; $4336: $5f
    rst $10                                       ; $4337: $d7
    jr z, jr_094_4335                             ; $4338: $28 $fb

    ld l, h                                       ; $433a: $6c
    ld [bc], a                                    ; $433b: $02
    push de                                       ; $433c: $d5
    nop                                           ; $433d: $00

jr_094_433e:
    inc hl                                        ; $433e: $23
    ld [$fd37], a                                 ; $433f: $ea $37 $fd
    ld e, $d7                                     ; $4342: $1e $d7
    xor $ad                                       ; $4344: $ee $ad
    nop                                           ; $4346: $00
    cp $7b                                        ; $4347: $fe $7b

jr_094_4349:
    db $fc                                        ; $4349: $fc
    xor l                                         ; $434a: $ad
    ld d, d                                       ; $434b: $52
    rst $18                                       ; $434c: $df
    jr nz, jr_094_433e                            ; $434d: $20 $ef

jr_094_434f:
    ld c, e                                       ; $434f: $4b
    db $10                                        ; $4350: $10
    inc l                                         ; $4351: $2c
    jr jr_094_434f                                ; $4352: $18 $fb

    inc b                                         ; $4354: $04
    push de                                       ; $4355: $d5
    ld a, [hl+]                                   ; $4356: $2a
    rst $30                                       ; $4357: $f7
    ld a, h                                       ; $4358: $7c
    db $10                                        ; $4359: $10
    db $e3                                        ; $435a: $e3
    ld a, [hl-]                                   ; $435b: $3a
    nop                                           ; $435c: $00
    rst $18                                       ; $435d: $df
    jr nz, @+$01                                  ; $435e: $20 $ff

    nop                                           ; $4360: $00
    cp l                                          ; $4361: $bd
    ld b, a                                       ; $4362: $47
    db $e3                                        ; $4363: $e3
    ld e, $00                                     ; $4364: $1e $00
    ld e, a                                       ; $4366: $5f
    and d                                         ; $4367: $a2
    xor e                                         ; $4368: $ab
    ld b, [hl]                                    ; $4369: $46
    rst $00                                       ; $436a: $c7
    ld a, l                                       ; $436b: $7d
    cp c                                          ; $436c: $b9
    ld a, c                                       ; $436d: $79
    dec c                                         ; $436e: $0d
    ld a, e                                       ; $436f: $7b
    sub c                                         ; $4370: $91
    cp a                                          ; $4371: $bf
    ld e, [hl]                                    ; $4372: $5e
    ld [hl+], a                                   ; $4373: $22
    ld a, b                                       ; $4374: $78
    jr c, jr_094_4377                             ; $4375: $38 $00

jr_094_4377:
    ld [$1b17], sp                                ; $4377: $08 $17 $1b
    db $fc                                        ; $437a: $fc
    ld a, h                                       ; $437b: $7c
    ld c, b                                       ; $437c: $48
    ld d, [hl]                                    ; $437d: $56
    jr c, jr_094_43b3                             ; $437e: $38 $33

    dec hl                                        ; $4380: $2b
    call nc, $7438                                ; $4381: $d4 $38 $74
    nop                                           ; $4384: $00
    ld b, a                                       ; $4385: $47
    inc sp                                        ; $4386: $33
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    ld [$0101], sp                                ; $4389: $08 $01 $01
    rlca                                          ; $438c: $07
    rlca                                          ; $438d: $07
    ld [hl], d                                    ; $438e: $72
    ld a, [bc]                                    ; $438f: $0a
    ccf                                           ; $4390: $3f
    ccf                                           ; $4391: $3f
    ld [hl], d                                    ; $4392: $72
    ld c, a                                       ; $4393: $4f
    ld a, a                                       ; $4394: $7f
    ld [hl], d                                    ; $4395: $72
    inc bc                                        ; $4396: $03
    nop                                           ; $4397: $00
    rst $28                                       ; $4398: $ef
    ld [hl-], a                                   ; $4399: $32
    ld b, b                                       ; $439a: $40
    sbc h                                         ; $439b: $9c
    jr c, jr_094_432a                             ; $439c: $38 $8c

    ld [$0836], sp                                ; $439e: $08 $36 $08
    ld b, h                                       ; $43a1: $44
    ld bc, $0001                                  ; $43a2: $01 $01 $00
    inc bc                                        ; $43a5: $03
    inc bc                                        ; $43a6: $03
    rlca                                          ; $43a7: $07
    ld bc, $0f00                                  ; $43a8: $01 $00 $0f
    rrca                                          ; $43ab: $0f
    nop                                           ; $43ac: $00
    dec e                                         ; $43ad: $1d
    rra                                           ; $43ae: $1f
    ld e, $1f                                     ; $43af: $1e $1f
    ret c                                         ; $43b1: $d8

    rst $20                                       ; $43b2: $e7

jr_094_43b3:
    cp h                                          ; $43b3: $bc
    jp $fc00                                      ; $43b4: $c3 $00 $fc


    add e                                         ; $43b7: $83
    ld a, b                                       ; $43b8: $78
    add a                                         ; $43b9: $87
    ld h, c                                       ; $43ba: $61
    sbc a                                         ; $43bb: $9f
    rlca                                          ; $43bc: $07
    rst $38                                       ; $43bd: $ff
    nop                                           ; $43be: $00
    rra                                           ; $43bf: $1f
    rst $38                                       ; $43c0: $ff
    cp a                                          ; $43c1: $bf
    rst $38                                       ; $43c2: $ff
    inc b                                         ; $43c3: $04
    xor e                                         ; $43c4: $ab
    xor d                                         ; $43c5: $aa
    ld d, a                                       ; $43c6: $57
    nop                                           ; $43c7: $00
    ld bc, $8afe                                  ; $43c8: $01 $fe $8a
    rst $38                                       ; $43cb: $ff
    dec b                                         ; $43cc: $05
    xor e                                         ; $43cd: $ab
    xor d                                         ; $43ce: $aa
    ld d, l                                       ; $43cf: $55
    nop                                           ; $43d0: $00
    ld d, h                                       ; $43d1: $54
    xor e                                         ; $43d2: $ab
    xor b                                         ; $43d3: $a8
    ld d, a                                       ; $43d4: $57
    ld [$d015], a                                 ; $43d5: $ea $15 $d0
    cpl                                           ; $43d8: $2f
    nop                                           ; $43d9: $00
    jp hl                                         ; $43da: $e9


jr_094_43db:
    db $10                                        ; $43db: $10
    db $d3                                        ; $43dc: $d3
    jr nz, @-$52                                  ; $43dd: $20 $ac

    ld [hl], e                                    ; $43df: $73
    rst $38                                       ; $43e0: $ff
    rra                                           ; $43e1: $1f
    nop                                           ; $43e2: $00
    sub $2b                                       ; $43e3: $d6 $2b
    ld a, [$fe07]                                 ; $43e5: $fa $07 $fe
    ld bc, $8877                                  ; $43e8: $01 $77 $88
    nop                                           ; $43eb: $00
    add sp, $57                                   ; $43ec: $e8 $57
    ld d, b                                       ; $43ee: $50
    add sp, -$2c                                  ; $43ef: $e8 $d4
    ld hl, sp+$4b                                 ; $43f1: $f8 $4b
    cp h                                          ; $43f3: $bc
    nop                                           ; $43f4: $00
    call nc, Call_000_270f                        ; $43f5: $d4 $0f $27
    rst $08                                       ; $43f8: $cf
    db $fd                                        ; $43f9: $fd
    ld [bc], a                                    ; $43fa: $02
    adc $31                                       ; $43fb: $ce $31
    nop                                           ; $43fd: $00
    and e                                         ; $43fe: $a3

Call_094_43ff:
    ld c, h                                       ; $43ff: $4c
    ld d, l                                       ; $4400: $55
    and d                                         ; $4401: $a2
    jr z, jr_094_43db                             ; $4402: $28 $d7

    add c                                         ; $4404: $81
    rst $38                                       ; $4405: $ff
    nop                                           ; $4406: $00
    db $e3                                        ; $4407: $e3
    ld a, [hl]                                    ; $4408: $7e
    ld e, a                                       ; $4409: $5f
    cp l                                          ; $440a: $bd
    db $dd                                        ; $440b: $dd
    inc hl                                        ; $440c: $23
    ld a, [$0005]                                 ; $440d: $fa $05 $00
    sbc l                                         ; $4410: $9d
    ld h, d                                       ; $4411: $62
    ld h, d                                       ; $4412: $62
    sbc l                                         ; $4413: $9d

Call_094_4414:
    push bc                                       ; $4414: $c5
    add d                                         ; $4415: $82
    sbc a                                         ; $4416: $9f
    db $e4                                        ; $4417: $e4
    nop                                           ; $4418: $00
    db $fd                                        ; $4419: $fd
    ld a, d                                       ; $441a: $7a
    ei                                            ; $441b: $fb
    inc b                                         ; $441c: $04
    or l                                          ; $441d: $b5
    adc $dc                                       ; $441e: $ce $dc
    ld hl, sp+$00                                 ; $4420: $f8 $00
    ld a, e                                       ; $4422: $7b
    cp h                                          ; $4423: $bc
    xor h                                         ; $4424: $ac
    ld e, a                                       ; $4425: $5f
    rst $10                                       ; $4426: $d7
    cpl                                           ; $4427: $2f

jr_094_4428:
    cp a                                          ; $4428: $bf
    ld b, d                                       ; $4429: $42
    inc b                                         ; $442a: $04
    halt                                          ; $442b: $76
    adc e                                         ; $442c: $8b
    rst $38                                       ; $442d: $ff
    ld bc, $017f                                  ; $442e: $01 $7f $01
    inc h                                         ; $4431: $24
    rst $28                                       ; $4432: $ef
    db $10                                        ; $4433: $10
    ldh a, [$0b]                                  ; $4434: $f0 $0b
    ld c, h                                       ; $4436: $4c
    or h                                          ; $4437: $b4
    jr c, jr_094_4428                             ; $4438: $38 $ee

    jr nc, jr_094_4448                            ; $443a: $30 $0c

    sub c                                         ; $443c: $91
    ld a, a                                       ; $443d: $7f
    nop                                           ; $443e: $00
    ld sp, hl                                     ; $443f: $f9
    ld b, $00                                     ; $4440: $06 $00
    or d                                          ; $4442: $b2
    ld c, c                                       ; $4443: $49
    ld e, l                                       ; $4444: $5d
    or e                                          ; $4445: $b3
    xor [hl]                                      ; $4446: $ae
    ld e, a                                       ; $4447: $5f

jr_094_4448:
    ld [hl], l                                    ; $4448: $75
    ld a, [hl+]                                   ; $4449: $2a
    inc bc                                        ; $444a: $03
    rst $20                                       ; $444b: $e7
    ld a, b                                       ; $444c: $78
    xor e                                         ; $444d: $ab
    call nz, $e69d                                ; $444e: $c4 $9d $e6
    and b                                         ; $4451: $a0
    inc a                                         ; $4452: $3c
    jp c, RST_18                                  ; $4453: $da $18 $00

    ccf                                           ; $4456: $3f
    ccf                                           ; $4457: $3f
    ld [hl], e                                    ; $4458: $73
    ld a, a                                       ; $4459: $7f
    ld l, l                                       ; $445a: $6d
    ld [hl], e                                    ; $445b: $73
    db $ed                                        ; $445c: $ed
    di                                            ; $445d: $f3
    nop                                           ; $445e: $00
    db $e3                                        ; $445f: $e3
    rst $38                                       ; $4460: $ff
    rst $08                                       ; $4461: $cf
    rst $38                                       ; $4462: $ff
    cp a                                          ; $4463: $bf
    rst $18                                       ; $4464: $df
    ld e, a                                       ; $4465: $5f
    cp a                                          ; $4466: $bf
    and b                                         ; $4467: $a0
    di                                            ; $4468: $f3
    ld c, e                                       ; $4469: $4b
    cp $1d                                        ; $446a: $fe $1d
    dec b                                         ; $446c: $05
    ld a, [hl]                                    ; $446d: $7e
    db $fd                                        ; $446e: $fd
    rst $18                                       ; $446f: $df
    ld a, $a9                                     ; $4470: $3e $a9
    nop                                           ; $4472: $00
    ld [hl], e                                    ; $4473: $73
    ld e, e                                       ; $4474: $5b
    pop hl                                        ; $4475: $e1
    ld hl, $3fff                                  ; $4476: $21 $ff $3f
    ld e, $7b                                     ; $4479: $1e $7b
    nop                                           ; $447b: $00
    sub h                                         ; $447c: $94
    rst $30                                       ; $447d: $f7
    add sp, $03                                   ; $447e: $e8 $03
    inc bc                                        ; $4480: $03
    ld b, $07                                     ; $4481: $06 $07
    rlca                                          ; $4483: $07
    nop                                           ; $4484: $00
    ld b, $0d                                     ; $4485: $06 $0d
    ld c, $0f                                     ; $4487: $0e $0f
    dec c                                         ; $4489: $0d
    add hl, de                                    ; $448a: $19
    rra                                           ; $448b: $1f
    dec de                                        ; $448c: $1b
    add d                                         ; $448d: $82
    or [hl]                                       ; $448e: $b6
    inc bc                                        ; $448f: $03
    cp a                                          ; $4490: $bf
    ld a, a                                       ; $4491: $7f
    rst $38                                       ; $4492: $ff
    ld a, a                                       ; $4493: $7f
    ld a, a                                       ; $4494: $7f
    ld b, l                                       ; $4495: $45
    dec b                                         ; $4496: $05
    db $fd                                        ; $4497: $fd
    or c                                          ; $4498: $b1
    ld c, c                                       ; $4499: $49
    dec b                                         ; $449a: $05
    rst $30                                       ; $449b: $f7
    ld c, l                                       ; $449c: $4d
    dec d                                         ; $449d: $15
    ld a, [bc]                                    ; $449e: $0a
    ld [$ffff], sp                                ; $449f: $08 $ff $ff
    ei                                            ; $44a2: $fb
    ccf                                           ; $44a3: $3f
    nop                                           ; $44a4: $00
    ld b, b                                       ; $44a5: $40
    or $42                                        ; $44a6: $f6 $42
    nop                                           ; $44a8: $00
    scf                                           ; $44a9: $37
    ccf                                           ; $44aa: $3f
    ccf                                           ; $44ab: $3f
    ccf                                           ; $44ac: $3f
    ld l, a                                       ; $44ad: $6f
    ld a, a                                       ; $44ae: $7f
    nop                                           ; $44af: $00
    ld a, [hl]                                    ; $44b0: $7e
    ld a, a                                       ; $44b1: $7f
    ld e, l                                       ; $44b2: $5d
    ld a, a                                       ; $44b3: $7f
    ld a, d                                       ; $44b4: $7a
    ld a, a                                       ; $44b5: $7f
    push de                                       ; $44b6: $d5
    rst $38                                       ; $44b7: $ff
    ld d, $eb                                     ; $44b8: $16 $eb

jr_094_44ba:
    rst $18                                       ; $44ba: $df
    rst $18                                       ; $44bb: $df
    inc [hl]                                      ; $44bc: $34
    ld bc, $047f                                  ; $44bd: $01 $7f $04
    db $10                                        ; $44c0: $10
    ld h, d                                       ; $44c1: $62
    jr jr_094_44ba                                ; $44c2: $18 $f6

    nop                                           ; $44c4: $00
    rst $38                                       ; $44c5: $ff
    db $ed                                        ; $44c6: $ed
    cp $dc                                        ; $44c7: $fe $dc
    rst $38                                       ; $44c9: $ff
    cp h                                          ; $44ca: $bc
    rst $38                                       ; $44cb: $ff
    reti                                          ; $44cc: $d9


    ld c, $ff                                     ; $44cd: $0e $ff
    cp e                                          ; $44cf: $bb
    cp $73                                        ; $44d0: $fe $73
    ld c, $00                                     ; $44d2: $0e $00
    sbc d                                         ; $44d4: $9a
    jr z, jr_094_454f                             ; $44d5: $28 $78

    add hl, de                                    ; $44d7: $19
    inc bc                                        ; $44d8: $03
    nop                                           ; $44d9: $00
    inc bc                                        ; $44da: $03
    rst $10                                       ; $44db: $d7
    rst $28                                       ; $44dc: $ef
    xor e                                         ; $44dd: $ab
    rst $18                                       ; $44de: $df
    rst $10                                       ; $44df: $d7
    cp a                                          ; $44e0: $bf
    xor a                                         ; $44e1: $af
    ld a, [bc]                                    ; $44e2: $0a
    rst $18                                       ; $44e3: $df
    rst $18                                       ; $44e4: $df
    cp a                                          ; $44e5: $bf
    ccf                                           ; $44e6: $3f
    inc l                                         ; $44e7: $2c
    dec b                                         ; $44e8: $05
    ld a, a                                       ; $44e9: $7f
    ld l, b                                       ; $44ea: $68
    nop                                           ; $44eb: $00
    cp $80                                        ; $44ec: $fe $80
    ld l, h                                       ; $44ee: $6c
    nop                                           ; $44ef: $00
    ld sp, hl                                     ; $44f0: $f9
    rst $38                                       ; $44f1: $ff
    db $e3                                        ; $44f2: $e3
    rst $38                                       ; $44f3: $ff
    rst $00                                       ; $44f4: $c7
    rst $38                                       ; $44f5: $ff
    or a                                          ; $44f6: $b7
    nop                                           ; $44f7: $00
    rst $08                                       ; $44f8: $cf
    and a                                         ; $44f9: $a7
    rst $18                                       ; $44fa: $df
    ld l, [hl]                                    ; $44fb: $6e
    ei                                            ; $44fc: $fb
    db $ec                                        ; $44fd: $ec

jr_094_44fe:
    rst $38                                       ; $44fe: $ff
    ret c                                         ; $44ff: $d8

    nop                                           ; $4500: $00
    rst $38                                       ; $4501: $ff
    ld hl, sp-$11                                 ; $4502: $f8 $ef

Jump_094_4504:
    or b                                          ; $4504: $b0
    rst $38                                       ; $4505: $ff
    ldh [rIE], a                                  ; $4506: $e0 $ff
    ld h, b                                       ; $4508: $60
    ld bc, $c0ff                                  ; $4509: $01 $ff $c0

Jump_094_450c:
    rst $38                                       ; $450c: $ff
    db $10                                        ; $450d: $10
    xor e                                         ; $450e: $ab
    add b                                         ; $450f: $80
    ld [hl], a                                    ; $4510: $77
    ret nz                                        ; $4511: $c0

    dec b                                         ; $4512: $05
    ld [hl+], a                                   ; $4513: $22
    rst $38                                       ; $4514: $ff
    db $10                                        ; $4515: $10
    inc [hl]                                      ; $4516: $34
    inc bc                                        ; $4517: $03
    ld d, b                                       ; $4518: $50
    xor a                                         ; $4519: $af
    xor d                                         ; $451a: $aa
    ld d, c                                       ; $451b: $51
    dec b                                         ; $451c: $05
    ei                                            ; $451d: $fb
    inc h                                         ; $451e: $24
    inc b                                         ; $451f: $04
    rst $18                                       ; $4520: $df
    inc b                                         ; $4521: $04
    ld [hl+], a                                   ; $4522: $22
    ld a, a                                       ; $4523: $7f
    add b                                         ; $4524: $80
    ldh [rSC], a                                  ; $4525: $e0 $02
    ld hl, $0062                                  ; $4527: $21 $62 $00
    sbc a                                         ; $452a: $9f
    db $dd                                        ; $452b: $dd
    inc hl                                        ; $452c: $23
    and [hl]                                      ; $452d: $a6
    ld b, c                                       ; $452e: $41
    reti                                          ; $452f: $d9


    ld h, a                                       ; $4530: $67
    db $e3                                        ; $4531: $e3
    jr nc, jr_094_4573                            ; $4532: $30 $3f

    cp [hl]                                       ; $4534: $be
    xor d                                         ; $4535: $aa
    ld [bc], a                                    ; $4536: $02
    adc h                                         ; $4537: $8c
    inc b                                         ; $4538: $04
    ldh [$e0], a                                  ; $4539: $e0 $e0
    db $fc                                        ; $453b: $fc
    db $ec                                        ; $453c: $ec
    nop                                           ; $453d: $00
    di                                            ; $453e: $f3
    db $eb                                        ; $453f: $eb
    db $f4                                        ; $4540: $f4
    xor $f1                                       ; $4541: $ee $f1
    rst $28                                       ; $4543: $ef
    ldh a, [$6f]                                  ; $4544: $f0 $6f
    ld b, b                                       ; $4546: $40
    ldh a, [$c0]                                  ; $4547: $f0 $c0
    dec [hl]                                      ; $4549: $35
    ret nz                                        ; $454a: $c0

    ret nz                                        ; $454b: $c0

    jr nc, jr_094_44fe                            ; $454c: $30 $b0

    ld c, h                                       ; $454e: $4c

jr_094_454f:
    db $ec                                        ; $454f: $ec
    nop                                           ; $4550: $00
    inc de                                        ; $4551: $13
    rst $28                                       ; $4552: $ef
    ldh a, [rIE]                                  ; $4553: $f0 $ff
    ldh [$f7], a                                  ; $4555: $e0 $f7
    add sp, -$01                                  ; $4557: $e8 $ff
    nop                                           ; $4559: $00
    ldh [$7d], a                                  ; $455a: $e0 $7d
    ld [c], a                                     ; $455c: $e2
    rst $30                                       ; $455d: $f7
    add sp, $7e                                   ; $455e: $e8 $7e
    pop hl                                        ; $4560: $e1
    push af                                       ; $4561: $f5
    inc b                                         ; $4562: $04
    ld [$04fb], a                                 ; $4563: $ea $fb $04
    cp $01                                        ; $4566: $fe $01
    inc l                                         ; $4568: $2c
    dec sp                                        ; $4569: $3b
    ld a, e                                       ; $456a: $7b
    add h                                         ; $456b: $84
    add b                                         ; $456c: $80
    jr z, jr_094_4597                             ; $456d: $28 $28

    ei                                            ; $456f: $fb
    inc b                                         ; $4570: $04
    ld a, [c]                                     ; $4571: $f2
    dec c                                         ; $4572: $0d

jr_094_4573:
    db $ed                                        ; $4573: $ed
    ld [de], a                                    ; $4574: $12
    db $db                                        ; $4575: $db
    ld c, $2d                                     ; $4576: $0e $2d
    nop                                           ; $4578: $00
    rst $38                                       ; $4579: $ff
    add b                                         ; $457a: $80
    add b                                         ; $457b: $80
    ld d, c                                       ; $457c: $51
    ld [hl], e                                    ; $457d: $73
    ld a, [bc]                                    ; $457e: $0a
    ret nz                                        ; $457f: $c0

    ld c, c                                       ; $4580: $49
    ei                                            ; $4581: $fb
    nop                                           ; $4582: $00
    call nz, $fc23                                ; $4583: $c4 $23 $fc
    db $ed                                        ; $4586: $ed
    jp nz, $c1a2                                  ; $4587: $c2 $a2 $c1

    sub c                                         ; $458a: $91
    nop                                           ; $458b: $00
    rst $28                                       ; $458c: $ef
    rst $20                                       ; $458d: $e7
    cp $9a                                        ; $458e: $fe $9a
    dec a                                         ; $4590: $3d
    push af                                       ; $4591: $f5
    ld [$00f1], a                                 ; $4592: $ea $f1 $00
    ld c, $aa                                     ; $4595: $0e $aa

jr_094_4597:
    ld d, c                                       ; $4597: $51
    ret nc                                        ; $4598: $d0

    jr nz, @+$4e                                  ; $4599: $20 $4c

    or b                                          ; $459b: $b0
    or c                                          ; $459c: $b1
    nop                                           ; $459d: $00
    ld a, [hl]                                    ; $459e: $7e
    rst $18                                       ; $459f: $df
    ccf                                           ; $45a0: $3f
    push af                                       ; $45a1: $f5
    ld a, [bc]                                    ; $45a2: $0a
    cp e                                          ; $45a3: $bb
    ld b, h                                       ; $45a4: $44
    and e                                         ; $45a5: $a3
    nop                                           ; $45a6: $00
    ld e, h                                       ; $45a7: $5c
    ld d, l                                       ; $45a8: $55
    and d                                         ; $45a9: $a2
    jp hl                                         ; $45aa: $e9


    scf                                           ; $45ab: $37
    cp a                                          ; $45ac: $bf
    ld a, [hl]                                    ; $45ad: $7e
    ld a, [hl+]                                   ; $45ae: $2a
    nop                                           ; $45af: $00
    rst $00                                       ; $45b0: $c7
    di                                            ; $45b1: $f3
    adc [hl]                                      ; $45b2: $8e
    add [hl]                                      ; $45b3: $86
    db $fd                                        ; $45b4: $fd
    db $fd                                        ; $45b5: $fd
    ld a, d                                       ; $45b6: $7a
    push bc                                       ; $45b7: $c5
    nop                                           ; $45b8: $00
    ld a, [hl-]                                   ; $45b9: $3a
    xor e                                         ; $45ba: $ab
    ld b, h                                       ; $45bb: $44
    ld c, c                                       ; $45bc: $49
    add [hl]                                      ; $45bd: $86
    and d                                         ; $45be: $a2
    rst $18                                       ; $45bf: $df
    rst $38                                       ; $45c0: $ff
    ld bc, $717c                                  ; $45c1: $01 $7c $71
    sbc [hl]                                      ; $45c4: $9e
    rst $18                                       ; $45c5: $df
    cpl                                           ; $45c6: $2f
    db $eb                                        ; $45c7: $eb
    inc d                                         ; $45c8: $14
    ld d, b                                       ; $45c9: $50
    jr @-$76                                      ; $45ca: $18 $88

    or h                                          ; $45cc: $b4
    ld a, [hl-]                                   ; $45cd: $3a
    nop                                           ; $45ce: $00
    rst $38                                       ; $45cf: $ff
    ld bc, $530c                                  ; $45d0: $01 $0c $53
    db $eb                                        ; $45d3: $eb
    inc d                                         ; $45d4: $14
    ld b, c                                       ; $45d5: $41
    nop                                           ; $45d6: $00
    cp [hl]                                       ; $45d7: $be
    sub d                                         ; $45d8: $92
    ld h, c                                       ; $45d9: $61
    ld l, l                                       ; $45da: $6d
    inc sp                                        ; $45db: $33
    or e                                          ; $45dc: $b3
    ld a, [hl]                                    ; $45dd: $7e
    rst $08                                       ; $45de: $cf

jr_094_45df:
    nop                                           ; $45df: $00
    cp $a5                                        ; $45e0: $fe $a5
    jp $c7bb                                      ; $45e2: $c3 $bb $c7


    add a                                         ; $45e5: $87
    cp $dd                                        ; $45e6: $fe $dd
    nop                                           ; $45e8: $00
    ld a, [hl]                                    ; $45e9: $7e
    ei                                            ; $45ea: $fb
    inc a                                         ; $45eb: $3c
    push af                                       ; $45ec: $f5
    ld a, [bc]                                    ; $45ed: $0a
    dec bc                                        ; $45ee: $0b
    db $f4                                        ; $45ef: $f4
    rst $10                                       ; $45f0: $d7
    nop                                           ; $45f1: $00
    adc b                                         ; $45f2: $88
    and [hl]                                      ; $45f3: $a6
    db $dd                                        ; $45f4: $dd
    rst $38                                       ; $45f5: $ff
    ld a, b                                       ; $45f6: $78
    ld a, d                                       ; $45f7: $7a
    push hl                                       ; $45f8: $e5
    push de                                       ; $45f9: $d5
    nop                                           ; $45fa: $00
    ld [$e1de], a                                 ; $45fb: $ea $de $e1
    rst $28                                       ; $45fe: $ef
    ret nc                                        ; $45ff: $d0

    rst $38                                       ; $4600: $ff
    ret nz                                        ; $4601: $c0

    rst $18                                       ; $4602: $df
    nop                                           ; $4603: $00
    and b                                         ; $4604: $a0
    db $eb                                        ; $4605: $eb
    sub h                                         ; $4606: $94
    rst $18                                       ; $4607: $df
    and b                                         ; $4608: $a0
    rst $28                                       ; $4609: $ef
    db $10                                        ; $460a: $10
    ld d, l                                       ; $460b: $55
    nop                                           ; $460c: $00
    xor d                                         ; $460d: $aa
    xor [hl]                                      ; $460e: $ae
    ld d, c                                       ; $460f: $51
    ld d, a                                       ; $4610: $57
    xor d                                         ; $4611: $aa
    db $eb                                        ; $4612: $eb
    dec d                                         ; $4613: $15
    cp $00                                        ; $4614: $fe $00
    dec bc                                        ; $4616: $0b
    db $fc                                        ; $4617: $fc
    rla                                           ; $4618: $17
    ld e, b                                       ; $4619: $58
    xor a                                         ; $461a: $af
    or l                                          ; $461b: $b5
    ld e, [hl]                                    ; $461c: $5e
    ld [c], a                                     ; $461d: $e2
    jr nc, jr_094_45df                            ; $461e: $30 $bf

    pop bc                                        ; $4620: $c1
    add hl, hl                                    ; $4621: $29
    add hl, bc                                    ; $4622: $09
    ld a, d                                       ; $4623: $7a
    ld h, $7b                                     ; $4624: $26 $7b
    add h                                         ; $4626: $84
    cp $41                                        ; $4627: $fe $41
    nop                                           ; $4629: $00
    ld e, a                                       ; $462a: $5f
    and b                                         ; $462b: $a0
    cp a                                          ; $462c: $bf
    ret nc                                        ; $462d: $d0

    ld d, a                                       ; $462e: $57
    add sp, $2f                                   ; $462f: $e8 $2f
    db $f4                                        ; $4631: $f4
    nop                                           ; $4632: $00
    rla                                           ; $4633: $17
    db $fc                                        ; $4634: $fc
    ld c, $fd                                     ; $4635: $0e $fd
    ld [$5595], a                                 ; $4637: $ea $95 $55
    xor d                                         ; $463a: $aa
    nop                                           ; $463b: $00
    xor e                                         ; $463c: $ab
    ld d, l                                       ; $463d: $55
    rst $10                                       ; $463e: $d7
    ld a, [hl+]                                   ; $463f: $2a
    xor e                                         ; $4640: $ab
    ld d, a                                       ; $4641: $57
    ld d, [hl]                                    ; $4642: $56
    xor a                                         ; $4643: $af
    nop                                           ; $4644: $00
    xor [hl]                                      ; $4645: $ae
    ld e, e                                       ; $4646: $5b
    ld e, h                                       ; $4647: $5c
    or a                                          ; $4648: $b7
    ldh a, [$5f]                                  ; $4649: $f0 $5f
    ld h, b                                       ; $464b: $60
    cp a                                          ; $464c: $bf
    ld l, b                                       ; $464d: $68
    ret nz                                        ; $464e: $c0

    jr nc, jr_094_4691                            ; $464f: $30 $40

    ld a, $0f                                     ; $4651: $3e $0f
    ld [bc], a                                    ; $4653: $02
    push de                                       ; $4654: $d5
    inc bc                                        ; $4655: $03
    ld bc, $02fe                                  ; $4656: $01 $fe $02
    nop                                           ; $4659: $00
    db $fd                                        ; $465a: $fd
    dec b                                         ; $465b: $05
    ei                                            ; $465c: $fb
    ld a, [bc]                                    ; $465d: $0a
    rst $30                                       ; $465e: $f7
    sub a                                         ; $465f: $97
    ld l, h                                       ; $4660: $6c
    cpl                                           ; $4661: $2f

jr_094_4662:
    nop                                           ; $4662: $00
    ret c                                         ; $4663: $d8

    ld d, d                                       ; $4664: $52
    cp l                                          ; $4665: $bd
    and a                                         ; $4666: $a7
    ld a, b                                       ; $4667: $78
    ld c, d                                       ; $4668: $4a
    push af                                       ; $4669: $f5
    or l                                          ; $466a: $b5
    nop                                           ; $466b: $00
    jp z, $817e                                   ; $466c: $ca $7e $81

    rst $38                                       ; $466f: $ff
    nop                                           ; $4670: $00
    jr c, jr_094_4662                             ; $4671: $38 $ef

    ld [hl], b                                    ; $4673: $70
    ld [hl], b                                    ; $4674: $70
    rst $18                                       ; $4675: $df
    xor b                                         ; $4676: $a8
    add hl, bc                                    ; $4677: $09
    inc [hl]                                      ; $4678: $34
    ld c, b                                       ; $4679: $48
    jr nc, jr_094_46ac                            ; $467a: $30 $30

    ld a, [$f50b]                                 ; $467c: $fa $0b $f5
    ld d, l                                       ; $467f: $55
    nop                                           ; $4680: $00
    xor [hl]                                      ; $4681: $ae
    xor c                                         ; $4682: $a9
    ld e, [hl]                                    ; $4683: $5e
    ld d, d                                       ; $4684: $52
    cp l                                          ; $4685: $bd
    and l                                         ; $4686: $a5
    ld a, d                                       ; $4687: $7a
    ld c, [hl]                                    ; $4688: $4e
    nop                                           ; $4689: $00
    pop af                                        ; $468a: $f1
    sub a                                         ; $468b: $97
    add sp, -$56                                  ; $468c: $e8 $aa
    push de                                       ; $468e: $d5
    ld b, l                                       ; $468f: $45

jr_094_4690:
    cp d                                          ; $4690: $ba

jr_094_4691:
    cp a                                          ; $4691: $bf
    ld bc, $5f40                                  ; $4692: $01 $40 $5f
    and b                                         ; $4695: $a0
    db $eb                                        ; $4696: $eb
    inc d                                         ; $4697: $14
    ld e, l                                       ; $4698: $5d
    and d                                         ; $4699: $a2
    sub d                                         ; $469a: $92
    rrca                                          ; $469b: $0f
    ld [$15ea], sp                                ; $469c: $08 $ea $15
    ld [hl], l                                    ; $469f: $75
    adc d                                         ; $46a0: $8a
    ld h, b                                       ; $46a1: $60
    jr c, jr_094_46b6                             ; $46a2: $38 $12

    db $ed                                        ; $46a4: $ed
    ld bc, $fe00                                  ; $46a5: $01 $00 $fe
    ld a, [bc]                                    ; $46a8: $0a
    push af                                       ; $46a9: $f5
    sub [hl]                                      ; $46aa: $96
    ld l, e                                       ; $46ab: $6b

jr_094_46ac:
    inc l                                         ; $46ac: $2c
    rst $10                                       ; $46ad: $d7
    dec d                                         ; $46ae: $15
    nop                                           ; $46af: $00
    xor $28                                       ; $46b0: $ee $28
    rst $18                                       ; $46b2: $df
    ld d, b                                       ; $46b3: $50
    cp a                                          ; $46b4: $bf
    xor b                                         ; $46b5: $a8

jr_094_46b6:
    ld a, a                                       ; $46b6: $7f
    ld d, b                                       ; $46b7: $50
    nop                                           ; $46b8: $00
    rst $38                                       ; $46b9: $ff
    ldh [$7f], a                                  ; $46ba: $e0 $7f
    ld a, [hl+]                                   ; $46bc: $2a
    push de                                       ; $46bd: $d5
    dec b                                         ; $46be: $05
    ld a, [$7222]                                 ; $46bf: $fa $22 $72
    db $dd                                        ; $46c2: $dd
    add h                                         ; $46c3: $84
    jr jr_094_4690                                ; $46c4: $18 $ca

    rrca                                          ; $46c6: $0f
    call c, $a800                                 ; $46c7: $dc $00 $a8
    ld a, [hl+]                                   ; $46ca: $2a
    ld c, b                                       ; $46cb: $48
    nop                                           ; $46cc: $00
    ld a, [hl+]                                   ; $46cd: $2a
    ld c, [hl]                                    ; $46ce: $4e
    push de                                       ; $46cf: $d5
    sub d                                         ; $46d0: $92
    ld [$b748], sp                                ; $46d1: $08 $48 $b7
    or b                                          ; $46d4: $b0
    add hl, sp                                    ; $46d5: $39
    ret z                                         ; $46d6: $c8

    add hl, de                                    ; $46d7: $19
    ldh a, [rHDMA1]                               ; $46d8: $f0 $51
    ld c, b                                       ; $46da: $48
    inc h                                         ; $46db: $24
    add sp, $14                                   ; $46dc: $e8 $14
    add [hl]                                      ; $46de: $86
    inc e                                         ; $46df: $1c
    ld a, a                                       ; $46e0: $7f
    add b                                         ; $46e1: $80
    jr jr_094_46fd                                ; $46e2: $18 $19

    ld d, l                                       ; $46e4: $55
    xor d                                         ; $46e5: $aa
    inc c                                         ; $46e6: $0c
    db $fc                                        ; $46e7: $fc
    ld [bc], a                                    ; $46e8: $02
    cp $01                                        ; $46e9: $fe $01
    ld a, [c]                                     ; $46eb: $f2
    add hl, bc                                    ; $46ec: $09
    or $09                                        ; $46ed: $f6 $09
    sbc $21                                       ; $46ef: $de $21
    jr nz, jr_094_4771                            ; $46f1: $20 $7e

    add c                                         ; $46f3: $81
    jp hl                                         ; $46f4: $e9


    ld l, $00                                     ; $46f5: $2e $00
    ldh [$60], a                                  ; $46f7: $e0 $60

jr_094_46f9:
    sbc b                                         ; $46f9: $98
    ld e, b                                       ; $46fa: $58
    db $10                                        ; $46fb: $10
    and [hl]                                      ; $46fc: $a6

jr_094_46fd:
    halt                                          ; $46fd: $76
    adc c                                         ; $46fe: $89
    ldh a, [$67]                                  ; $46ff: $f0 $67
    add b                                         ; $4701: $80
    ld [$b515], a                                 ; $4702: $ea $15 $b5
    db $10                                        ; $4705: $10
    ld c, d                                       ; $4706: $4a
    ld a, [$9c05]                                 ; $4707: $fa $05 $9c
    inc c                                         ; $470a: $0c

jr_094_470b:
    rst $18                                       ; $470b: $df
    jr nz, jr_094_46f9                            ; $470c: $20 $eb

    inc d                                         ; $470e: $14
    nop                                           ; $470f: $00
    ld d, a                                       ; $4710: $57
    xor b                                         ; $4711: $a8
    db $eb                                        ; $4712: $eb
    dec d                                         ; $4713: $15
    ld d, [hl]                                    ; $4714: $56
    xor c                                         ; $4715: $a9
    xor a                                         ; $4716: $af
    ld d, c                                       ; $4717: $51
    nop                                           ; $4718: $00
    ld d, [hl]                                    ; $4719: $56
    xor c                                         ; $471a: $a9
    db $eb                                        ; $471b: $eb
    dec d                                         ; $471c: $15
    or [hl]                                       ; $471d: $b6
    ld c, c                                       ; $471e: $49
    rst $38                                       ; $471f: $ff
    ld bc, $fc09                                  ; $4720: $01 $09 $fc
    inc bc                                        ; $4723: $03
    db $fd                                        ; $4724: $fd
    ld [bc], a                                    ; $4725: $02
    add [hl]                                      ; $4726: $86
    ld a, [bc]                                    ; $4727: $0a
    ld a, a                                       ; $4728: $7f
    add b                                         ; $4729: $80
    db $ec                                        ; $472a: $ec
    inc c                                         ; $472b: $0c
    nop                                           ; $472c: $00
    or a                                          ; $472d: $b7
    ld c, b                                       ; $472e: $48
    ld a, a                                       ; $472f: $7f
    add b                                         ; $4730: $80
    add b                                         ; $4731: $80
    ld h, b                                       ; $4732: $60
    ld h, b                                       ; $4733: $60
    sbc b                                         ; $4734: $98
    ld [bc], a                                    ; $4735: $02
    ret c                                         ; $4736: $d8

jr_094_4737:
    ld h, $f6                                     ; $4737: $26 $f6
    add hl, bc                                    ; $4739: $09
    db $fd                                        ; $473a: $fd
    ld [bc], a                                    ; $473b: $02
    db $eb                                        ; $473c: $eb
    rra                                           ; $473d: $1f
    xor e                                         ; $473e: $ab
    ld [hl], b                                    ; $473f: $70
    ld d, h                                       ; $4740: $54
    add sp, $18                                   ; $4741: $e8 $18
    cp b                                          ; $4743: $b8
    ld [$08f4], sp                                ; $4744: $08 $f4 $08
    cp [hl]                                       ; $4747: $be
    ld b, e                                       ; $4748: $43
    ld e, h                                       ; $4749: $5c
    and e                                         ; $474a: $a3
    jr nz, jr_094_470b                            ; $474b: $20 $be

    ld b, e                                       ; $474d: $43
    ld e, d                                       ; $474e: $5a
    inc c                                         ; $474f: $0c
    ld e, l                                       ; $4750: $5d
    and [hl]                                      ; $4751: $a6
    add sp, $17                                   ; $4752: $e8 $17
    ld [hl], l                                    ; $4754: $75
    ld b, b                                       ; $4755: $40
    adc [hl]                                      ; $4756: $8e
    sub h                                         ; $4757: $94
    ld [$55aa], sp                                ; $4758: $08 $aa $55
    push de                                       ; $475b: $d5
    ld a, [hl+]                                   ; $475c: $2a
    ld a, [$0c05]                                 ; $475d: $fa $05 $0c
    db $fd                                        ; $4760: $fd
    ld [bc], a                                    ; $4761: $02
    rst $10                                       ; $4762: $d7
    jr z, jr_094_4737                             ; $4763: $28 $d2

    ld a, [bc]                                    ; $4765: $0a
    ld e, b                                       ; $4766: $58
    dec c                                         ; $4767: $0d
    ld a, l                                       ; $4768: $7d
    add d                                         ; $4769: $82
    add a                                         ; $476a: $87
    jr c, jr_094_4775                             ; $476b: $38 $08

    xor e                                         ; $476d: $ab
    ld d, h                                       ; $476e: $54
    push de                                       ; $476f: $d5
    ld a, [hl+]                                   ; $4770: $2a

jr_094_4771:
    adc c                                         ; $4771: $89
    scf                                           ; $4772: $37
    ld e, b                                       ; $4773: $58
    ld d, b                                       ; $4774: $50

jr_094_4775:
    and [hl]                                      ; $4775: $a6
    dec c                                         ; $4776: $0d
    ld [$08f7], sp                                ; $4777: $08 $f7 $08
    cp a                                          ; $477a: $bf
    ld b, b                                       ; $477b: $40
    ld [hl], b                                    ; $477c: $70
    db $10                                        ; $477d: $10
    sub b                                         ; $477e: $90
    ret nc                                        ; $477f: $d0

    jr z, jr_094_4782                             ; $4780: $28 $00

jr_094_4782:
    ld hl, sp+$04                                 ; $4782: $f8 $04
    ld hl, sp+$04                                 ; $4784: $f8 $04
    db $fc                                        ; $4786: $fc
    ld [bc], a                                    ; $4787: $02
    db $fc                                        ; $4788: $fc
    inc bc                                        ; $4789: $03
    jr nz, @-$05                                  ; $478a: $20 $f9

    ld b, $c0                                     ; $478c: $06 $c0
    ld h, b                                       ; $478e: $60
    ret nz                                        ; $478f: $c0

    inc [hl]                                      ; $4790: $34
    sla d                                         ; $4791: $cb $22
    add c                                         ; $4793: $81
    nop                                           ; $4794: $00
    ld d, h                                       ; $4795: $54
    add c                                         ; $4796: $81
    ld a, [hl]                                    ; $4797: $7e
    add c                                         ; $4798: $81
    add c                                         ; $4799: $81
    rst $38                                       ; $479a: $ff
    ld b, h                                       ; $479b: $44
    add e                                         ; $479c: $83
    nop                                           ; $479d: $00
    xor [hl]                                      ; $479e: $ae
    ld bc, $8779                                  ; $479f: $01 $79 $87
    dec l                                         ; $47a2: $2d
    ret nc                                        ; $47a3: $d0

    add sp, -$80                                  ; $47a4: $e8 $80
    add d                                         ; $47a6: $82
    rst $10                                       ; $47a7: $d7
    rlca                                          ; $47a8: $07
    add b                                         ; $47a9: $80
    ld b, b                                       ; $47aa: $40
    add b                                         ; $47ab: $80
    and l                                         ; $47ac: $a5
    ret nz                                        ; $47ad: $c0

    inc e                                         ; $47ae: $1c
    inc c                                         ; $47af: $0c
    ld h, d                                       ; $47b0: $62
    nop                                           ; $47b1: $00
    add c                                         ; $47b2: $81
    push bc                                       ; $47b3: $c5
    nop                                           ; $47b4: $00
    xor d                                         ; $47b5: $aa
    ld bc, $837d                                  ; $47b6: $01 $7d $83
    add c                                         ; $47b9: $81
    nop                                           ; $47ba: $00

jr_094_47bb:
    rst $38                                       ; $47bb: $ff
    ld [hl+], a                                   ; $47bc: $22
    pop bc                                        ; $47bd: $c1
    ld [hl], l                                    ; $47be: $75
    add b                                         ; $47bf: $80
    sbc [hl]                                      ; $47c0: $9e
    pop hl                                        ; $47c1: $e1
    sbc a                                         ; $47c2: $9f
    ld [bc], a                                    ; $47c3: $02
    ldh [rOCPS], a                                ; $47c4: $e0 $6a
    add b                                         ; $47c6: $80
    push de                                       ; $47c7: $d5
    add b                                         ; $47c8: $80
    ld a, [hl+]                                   ; $47c9: $2a
    inc b                                         ; $47ca: $04
    nop                                           ; $47cb: $00
    ld l, d                                       ; $47cc: $6a
    ld b, b                                       ; $47cd: $40
    add c                                         ; $47ce: $81
    inc a                                         ; $47cf: $3c
    inc c                                         ; $47d0: $0c
    ret nz                                        ; $47d1: $c0

    cp $28                                        ; $47d2: $fe $28
    push de                                       ; $47d4: $d5
    sub b                                         ; $47d5: $90
    xor d                                         ; $47d6: $aa
    ld [bc], a                                    ; $47d7: $02
    nop                                           ; $47d8: $00
    push de                                       ; $47d9: $d5
    add b                                         ; $47da: $80
    cp d                                          ; $47db: $ba

jr_094_47dc:
    jr nz, jr_094_47bb                            ; $47dc: $20 $dd

    ld c, h                                       ; $47de: $4c
    inc c                                         ; $47df: $0c
    ld [$fe00], a                                 ; $47e0: $ea $00 $fe
    ld d, l                                       ; $47e3: $55
    push de                                       ; $47e4: $d5
    xor d                                         ; $47e5: $aa
    xor d                                         ; $47e6: $aa
    push de                                       ; $47e7: $d5
    ld d, l                                       ; $47e8: $55
    ld [$aa20], a                                 ; $47e9: $ea $20 $aa
    push de                                       ; $47ec: $d5
    add hl, de                                    ; $47ed: $19
    inc d                                         ; $47ee: $14
    dec d                                         ; $47ef: $15
    inc bc                                        ; $47f0: $03
    inc bc                                        ; $47f1: $03
    nop                                           ; $47f2: $00
    ld bc, $0001                                  ; $47f3: $01 $01 $00
    dec b                                         ; $47f6: $05
    nop                                           ; $47f7: $00
    ld a, [hl+]                                   ; $47f8: $2a
    ld bc, $a758                                  ; $47f9: $01 $58 $a7
    ld l, h                                       ; $47fc: $6c
    inc c                                         ; $47fd: $0c
    nop                                           ; $47fe: $00
    ld d, h                                       ; $47ff: $54
    add b                                         ; $4800: $80
    jr nz, @-$7e                                  ; $4801: $20 $80

    ret nz                                        ; $4803: $c0

    nop                                           ; $4804: $00
    ld b, b                                       ; $4805: $40
    add b                                         ; $4806: $80
    ld [$8068], sp                                ; $4807: $08 $68 $80
    call nc, Call_094_7ce0                        ; $480a: $d4 $e0 $7c
    inc c                                         ; $480d: $0c
    ld d, e                                       ; $480e: $53
    cpl                                           ; $480f: $2f
    ld [bc], a                                    ; $4810: $02
    nop                                           ; $4811: $00
    ld bc, $0001                                  ; $4812: $01 $01 $00
    dec bc                                        ; $4815: $0b
    nop                                           ; $4816: $00
    ld d, [hl]                                    ; $4817: $56
    ld bc, $45a9                                  ; $4818: $01 $a9 $45
    rla                                           ; $481b: $17
    adc h                                         ; $481c: $8c
    inc c                                         ; $481d: $0c
    ld d, d                                       ; $481e: $52
    add c                                         ; $481f: $81
    ld bc, $0030                                  ; $4820: $01 $30 $00
    ld b, l                                       ; $4823: $45
    ld [hl], h                                    ; $4824: $74
    nop                                           ; $4825: $00
    jr nz, jr_094_47dc                            ; $4826: $20 $b4

    jp Jump_000_0c9c                              ; $4828: $c3 $9c $0c


    ld e, c                                       ; $482b: $59
    ld b, $ad                                     ; $482c: $06 $ad
    ld [bc], a                                    ; $482e: $02
    ld d, a                                       ; $482f: $57
    ld [bc], a                                    ; $4830: $02
    nop                                           ; $4831: $00
    xor b                                         ; $4832: $a8
    ld [bc], a                                    ; $4833: $02
    ld d, l                                       ; $4834: $55
    ld [bc], a                                    ; $4835: $02
    sbc [hl]                                      ; $4836: $9e
    ld b, e                                       ; $4837: $43
    inc d                                         ; $4838: $14
    db $fd                                        ; $4839: $fd
    nop                                           ; $483a: $00
    inc bc                                        ; $483b: $03
    xor d                                         ; $483c: $aa
    nop                                           ; $483d: $00
    ld d, l                                       ; $483e: $55
    nop                                           ; $483f: $00
    xor d                                         ; $4840: $aa
    nop                                           ; $4841: $00
    ld d, a                                       ; $4842: $57
    stop                                          ; $4843: $10 $00
    ld e, a                                       ; $4845: $5f
    and b                                         ; $4846: $a0
    cp h                                          ; $4847: $bc
    inc c                                         ; $4848: $0c
    and e                                         ; $4849: $a3
    db $fc                                        ; $484a: $fc
    or [hl]                                       ; $484b: $b6
    ld [$5d00], sp                                ; $484c: $08 $00 $5d
    nop                                           ; $484f: $00
    cp d                                          ; $4850: $ba
    nop                                           ; $4851: $00
    push af                                       ; $4852: $f5
    ld [$1dea], sp                                ; $4853: $08 $ea $1d
    add b                                         ; $4856: $80
    call z, $db0c                                 ; $4857: $cc $0c $db
    rlca                                          ; $485a: $07
    xor [hl]                                      ; $485b: $ae
    ld bc, $0055                                  ; $485c: $01 $55 $00
    xor e                                         ; $485f: $ab
    ld [$5400], sp                                ; $4860: $08 $00 $54
    ld bc, $ed9a                                  ; $4863: $01 $9a $ed
    dec b                                         ; $4866: $05
    rst $38                                       ; $4867: $ff
    rst $38                                       ; $4868: $ff
    ld d, b                                       ; $4869: $50
    ld l, b                                       ; $486a: $68
    xor a                                         ; $486b: $af
    cpl                                           ; $486c: $2f
    db $10                                        ; $486d: $10
    inc sp                                        ; $486e: $33
    ld [$ec5f], sp                                ; $486f: $08 $5f $ec
    inc c                                         ; $4872: $0c
    nop                                           ; $4873: $00
    ld a, [$4400]                                 ; $4874: $fa $00 $44
    ld [hl], l                                    ; $4877: $75
    ccf                                           ; $4878: $3f
    nop                                           ; $4879: $00
    ld [hl], l                                    ; $487a: $75
    ld b, b                                       ; $487b: $40
    cp d                                          ; $487c: $ba
    ccf                                           ; $487d: $3f
    db $10                                        ; $487e: $10
    rst $38                                       ; $487f: $ff
    ld d, c                                       ; $4880: $51
    add l                                         ; $4881: $85
    jr nz, jr_094_48a4                            ; $4882: $20 $20

    ld bc, $0aaa                                  ; $4884: $01 $aa $0a
    ld d, l                                       ; $4887: $55
    jr nc, jr_094_489a                            ; $4888: $30 $10

    db $eb                                        ; $488a: $eb
    ld l, h                                       ; $488b: $6c
    rlca                                          ; $488c: $07
    ld bc, $a0ea                                  ; $488d: $01 $ea $a0
    ld d, l                                       ; $4890: $55
    dec d                                         ; $4891: $15
    ld [$d52a], a                                 ; $4892: $ea $2a $d5
    inc e                                         ; $4895: $1c
    dec c                                         ; $4896: $0d
    and b                                         ; $4897: $a0
    db $fd                                        ; $4898: $fd
    ld [bc], a                                    ; $4899: $02

jr_094_489a:
    ld d, l                                       ; $489a: $55
    di                                            ; $489b: $f3
    dec b                                         ; $489c: $05
    ld d, l                                       ; $489d: $55
    cp [hl]                                       ; $489e: $be
    xor e                                         ; $489f: $ab
    ld a, a                                       ; $48a0: $7f
    ld d, a                                       ; $48a1: $57
    adc [hl]                                      ; $48a2: $8e
    inc l                                         ; $48a3: $2c

jr_094_48a4:
    dec c                                         ; $48a4: $0d
    inc bc                                        ; $48a5: $03
    inc bc                                        ; $48a6: $03
    ld [bc], a                                    ; $48a7: $02
    ld e, $06                                     ; $48a8: $1e $06
    inc d                                         ; $48aa: $14
    dec b                                         ; $48ab: $05
    inc b                                         ; $48ac: $04
    db $10                                        ; $48ad: $10
    rlca                                          ; $48ae: $07
    nop                                           ; $48af: $00
    rlca                                          ; $48b0: $07
    db $fd                                        ; $48b1: $fd
    rst $38                                       ; $48b2: $ff
    ld [$56ff], a                                 ; $48b3: $ea $ff $56
    rst $38                                       ; $48b6: $ff
    add e                                         ; $48b7: $83
    jr z, @+$01                                   ; $48b8: $28 $ff

    add hl, de                                    ; $48ba: $19
    jr z, jr_094_48c3                             ; $48bb: $28 $06

    ld a, h                                       ; $48bd: $7c
    jr z, jr_094_48c6                             ; $48be: $28 $06

    ld c, $ff                                     ; $48c0: $0e $ff
    rst $18                                       ; $48c2: $df

jr_094_48c3:
    ld [$9f3f], sp                                ; $48c3: $08 $3f $9f

jr_094_48c6:
    ld a, a                                       ; $48c6: $7f
    ld a, [hl-]                                   ; $48c7: $3a
    ld c, l                                       ; $48c8: $4d
    dec b                                         ; $48c9: $05
    db $fc                                        ; $48ca: $fc
    rst $38                                       ; $48cb: $ff
    xor $03                                       ; $48cc: $ee $03
    db $fd                                        ; $48ce: $fd
    db $fc                                        ; $48cf: $fc
    ei                                            ; $48d0: $fb
    add c                                         ; $48d1: $81
    cp $c0                                        ; $48d2: $fe $c0
    ld l, l                                       ; $48d4: $6d
    rla                                           ; $48d5: $17
    ret nz                                        ; $48d6: $c0

    ld a, [de]                                    ; $48d7: $1a
    inc l                                         ; $48d8: $2c
    ld [de], a                                    ; $48d9: $12
    db $ed                                        ; $48da: $ed
    adc h                                         ; $48db: $8c
    ld c, $0e                                     ; $48dc: $0e $0e
    ld [bc], a                                    ; $48de: $02
    nop                                           ; $48df: $00
    ld bc, $7028                                  ; $48e0: $01 $28 $70
    adc a                                         ; $48e3: $8f
    ld bc, $df21                                  ; $48e4: $01 $21 $df
    inc bc                                        ; $48e7: $03
    rst $38                                       ; $48e8: $ff
    rrca                                          ; $48e9: $0f
    rst $38                                       ; $48ea: $ff
    ccf                                           ; $48eb: $3f
    adc c                                         ; $48ec: $89
    dec h                                         ; $48ed: $25
    nop                                           ; $48ee: $00
    db $f4                                        ; $48ef: $f4
    ei                                            ; $48f0: $fb
    cp b                                          ; $48f1: $b8
    rst $30                                       ; $48f2: $f7
    add sp, -$09                                  ; $48f3: $e8 $f7
    ld [hl], b                                    ; $48f5: $70
    rst $28                                       ; $48f6: $ef
    nop                                           ; $48f7: $00
    push de                                       ; $48f8: $d5
    ld [$dde2], a                                 ; $48f9: $ea $e2 $dd
    and l                                         ; $48fc: $a5
    jp c, $b5ca                                   ; $48fd: $da $ca $b5

    ld hl, $fa05                                  ; $4900: $21 $05 $fa
    ld [$5719], a                                 ; $4903: $ea $19 $57
    xor b                                         ; $4906: $a8
    xor e                                         ; $4907: $ab
    ld d, h                                       ; $4908: $54
    ld d, b                                       ; $4909: $50
    inc bc                                        ; $490a: $03
    ld c, [hl]                                    ; $490b: $4e
    ld bc, $0839                                  ; $490c: $01 $39 $08
    rlca                                          ; $490f: $07
    rlca                                          ; $4910: $07
    ld d, l                                       ; $4911: $55
    ld bc, $25d9                                  ; $4912: $01 $d9 $25
    cp b                                          ; $4915: $b8
    dec h                                         ; $4916: $25
    cp $00                                        ; $4917: $fe $00
    rst $38                                       ; $4919: $ff
    cp $3d                                        ; $491a: $fe $3d
    ld a, $0f                                     ; $491c: $3e $0f
    inc c                                         ; $491e: $0c
    ld a, [bc]                                    ; $491f: $0a
    dec c                                         ; $4920: $0d
    sub d                                         ; $4921: $92
    ld d, $0a                                     ; $4922: $16 $0a
    sub a                                         ; $4924: $97
    ld l, b                                       ; $4925: $68
    ld d, [hl]                                    ; $4926: $56
    ld a, [bc]                                    ; $4927: $0a
    xor a                                         ; $4928: $af
    ld d, b                                       ; $4929: $50
    ret z                                         ; $492a: $c8

    inc bc                                        ; $492b: $03
    ld b, b                                       ; $492c: $40
    nop                                           ; $492d: $00
    cp l                                          ; $492e: $bd
    ld b, e                                       ; $492f: $43
    cp $03                                        ; $4930: $fe $03
    ld a, l                                       ; $4932: $7d
    add a                                         ; $4933: $87
    or $0f                                        ; $4934: $f6 $0f
    nop                                           ; $4936: $00
    db $fd                                        ; $4937: $fd
    rrca                                          ; $4938: $0f
    ld [$ff1f], a                                 ; $4939: $ea $1f $ff
    rra                                           ; $493c: $1f
    db $dd                                        ; $493d: $dd
    ccf                                           ; $493e: $3f
    nop                                           ; $493f: $00
    rrca                                          ; $4940: $0f
    jr jr_094_495a                                ; $4941: $18 $17

    jr jr_094_4964                                ; $4943: $18 $1f

    jr nc, jr_094_4984                            ; $4945: $30 $3d

    ld [hl-], a                                   ; $4947: $32
    nop                                           ; $4948: $00
    ccf                                           ; $4949: $3f
    ld h, b                                       ; $494a: $60
    ld a, a                                       ; $494b: $7f
    ld h, b                                       ; $494c: $60
    ld d, a                                       ; $494d: $57
    ld l, b                                       ; $494e: $68
    ld a, a                                       ; $494f: $7f
    ret nz                                        ; $4950: $c0

    db $e4                                        ; $4951: $e4
    ld b, [hl]                                    ; $4952: $46
    ld bc, $47d0                                  ; $4953: $01 $d0 $47
    db $ec                                        ; $4956: $ec
    inc b                                         ; $4957: $04
    ccf                                           ; $4958: $3f
    rst $38                                       ; $4959: $ff

jr_094_495a:
    db $e4                                        ; $495a: $e4
    dec h                                         ; $495b: $25
    cp a                                          ; $495c: $bf
    cp a                                          ; $495d: $bf
    ld bc, $8f8f                                  ; $495e: $01 $8f $8f
    add e                                         ; $4961: $83
    add e                                         ; $4962: $83
    ld a, a                                       ; $4963: $7f

jr_094_4964:
    add b                                         ; $4964: $80
    ccf                                           ; $4965: $3f
    ld [bc], a                                    ; $4966: $02
    ld h, b                                       ; $4967: $60
    ld c, h                                       ; $4968: $4c
    dec a                                         ; $4969: $3d
    ld [de], a                                    ; $496a: $12
    ld b, b                                       ; $496b: $40
    rra                                           ; $496c: $1f
    and b                                         ; $496d: $a0
    ld e, $68                                     ; $496e: $1e $68
    ld a, [de]                                    ; $4970: $1a
    ld c, b                                       ; $4971: $48
    dec sp                                        ; $4972: $3b
    add b                                         ; $4973: $80
    jr nc, jr_094_49f5                            ; $4974: $30 $7f

    add b                                         ; $4976: $80
    ld a, e                                       ; $4977: $7b
    ld [hl], $df                                  ; $4978: $36 $df
    dec d                                         ; $497a: $15
    ld [bc], a                                    ; $497b: $02
    inc bc                                        ; $497c: $03
    rst $38                                       ; $497d: $ff
    ret nz                                        ; $497e: $c0

    ld b, $bf                                     ; $497f: $06 $bf
    ret nz                                        ; $4981: $c0

    rst $38                                       ; $4982: $ff
    add b                                         ; $4983: $80

jr_094_4984:
    rst $38                                       ; $4984: $ff
    ld a, [de]                                    ; $4985: $1a
    nop                                           ; $4986: $00
    and $27                                       ; $4987: $e6 $27
    ld bc, $ff00                                  ; $4989: $01 $00 $ff
    ld bc, $03fd                                  ; $498c: $01 $fd $03
    cp $02                                        ; $498f: $fe $02
    jp c, Jump_000_0226                           ; $4991: $da $26 $02

    db $fc                                        ; $4994: $fc
    inc b                                         ; $4995: $04
    db $ec                                        ; $4996: $ec
    inc d                                         ; $4997: $14
    ld d, h                                       ; $4998: $54
    xor h                                         ; $4999: $ac
    ld e, a                                       ; $499a: $5f
    ld bc, $0006                                  ; $499b: $01 $06 $00
    rlca                                          ; $499e: $07
    ld b, $05                                     ; $499f: $06 $05
    ld b, $07                                     ; $49a1: $06 $07
    inc b                                         ; $49a3: $04
    rlca                                          ; $49a4: $07
    inc c                                         ; $49a5: $0c
    inc c                                         ; $49a6: $0c
    rrca                                          ; $49a7: $0f
    inc c                                         ; $49a8: $0c
    dec bc                                        ; $49a9: $0b
    inc c                                         ; $49aa: $0c
    ld a, [$600f]                                 ; $49ab: $fa $0f $60
    dec bc                                        ; $49ae: $0b
    cp $01                                        ; $49af: $fe $01
    nop                                           ; $49b1: $00
    ld [hl], l                                    ; $49b2: $75
    adc d                                         ; $49b3: $8a
    ld a, [$d505]                                 ; $49b4: $fa $05 $d5
    ld a, [hl+]                                   ; $49b7: $2a
    ld hl, sp+$08                                 ; $49b8: $f8 $08
    nop                                           ; $49ba: $00
    ld e, b                                       ; $49bb: $58
    xor b                                         ; $49bc: $a8
    xor b                                         ; $49bd: $a8
    ld e, b                                       ; $49be: $58
    ld [hl], b                                    ; $49bf: $70
    sub b                                         ; $49c0: $90
    or b                                          ; $49c1: $b0
    ld d, b                                       ; $49c2: $50
    nop                                           ; $49c3: $00
    ld [hl], b                                    ; $49c4: $70
    sub b                                         ; $49c5: $90
    ret nc                                        ; $49c6: $d0

    jr nc, @+$62                                  ; $49c7: $30 $60

jr_094_49c9:
    and b                                         ; $49c9: $a0
    dec c                                         ; $49ca: $0d
    ld a, [bc]                                    ; $49cb: $0a
    nop                                           ; $49cc: $00
    rrca                                          ; $49cd: $0f
    jr jr_094_49ee                                ; $49ce: $18 $1e

    add hl, de                                    ; $49d0: $19
    rla                                           ; $49d1: $17
    jr jr_094_49ee                                ; $49d2: $18 $1a

    dec d                                         ; $49d4: $15
    inc bc                                        ; $49d5: $03
    dec e                                         ; $49d6: $1d
    ld [de], a                                    ; $49d7: $12
    ld a, [de]                                    ; $49d8: $1a
    dec [hl]                                      ; $49d9: $35
    dec a                                         ; $49da: $3d
    ld [hl-], a                                   ; $49db: $32
    jr c, @+$0e                                   ; $49dc: $38 $0c

    sbc d                                         ; $49de: $9a
    rrca                                          ; $49df: $0f
    add b                                         ; $49e0: $80

jr_094_49e1:
    sbc [hl]                                      ; $49e1: $9e
    rrca                                          ; $49e2: $0f
    and c                                         ; $49e3: $a1
    ld e, [hl]                                    ; $49e4: $5e
    ld d, c                                       ; $49e5: $51
    xor [hl]                                      ; $49e6: $ae
    ldh [rNR41], a                                ; $49e7: $e0 $20
    ldh [rDIV], a                                 ; $49e9: $e0 $04
    jr nz, @-$5e                                  ; $49eb: $20 $a0

    ld h, b                                       ; $49ed: $60

jr_094_49ee:
    ret nz                                        ; $49ee: $c0

    ld b, b                                       ; $49ef: $40
    ld [bc], a                                    ; $49f0: $02
    jr jr_094_4a33                                ; $49f1: $18 $40

    ret nz                                        ; $49f3: $c0

    nop                                           ; $49f4: $00

jr_094_49f5:
    ld a, [hl+]                                   ; $49f5: $2a
    dec [hl]                                      ; $49f6: $35
    dec [hl]                                      ; $49f7: $35
    ld a, [hl+]                                   ; $49f8: $2a
    ld a, [hl-]                                   ; $49f9: $3a
    dec h                                         ; $49fa: $25
    inc [hl]                                      ; $49fb: $34
    dec hl                                        ; $49fc: $2b
    nop                                           ; $49fd: $00
    ld a, [hl-]                                   ; $49fe: $3a
    ld h, l                                       ; $49ff: $65
    ld [hl], h                                    ; $4a00: $74
    ld l, e                                       ; $4a01: $6b
    ld c, b                                       ; $4a02: $48
    ld [hl], a                                    ; $4a03: $77
    ld h, d                                       ; $4a04: $62
    ld e, l                                       ; $4a05: $5d
    ld [bc], a                                    ; $4a06: $02
    and l                                         ; $4a07: $a5
    ld e, d                                       ; $4a08: $5a
    ld b, c                                       ; $4a09: $41
    cp [hl]                                       ; $4a0a: $be
    ld bc, $04fe                                  ; $4a0b: $01 $fe $04
    ld [$0123], sp                                ; $4a0e: $08 $23 $01
    call c, $fd02                                 ; $4a11: $dc $02 $fd
    ld [bc], a                                    ; $4a14: $02
    db $fd                                        ; $4a15: $fd
    ld b, b                                       ; $4a16: $40
    ret nz                                        ; $4a17: $c0

    db $fd                                        ; $4a18: $fd
    ld [bc], a                                    ; $4a19: $02
    ret z                                         ; $4a1a: $c8

    inc bc                                        ; $4a1b: $03
    ld b, b                                       ; $4a1c: $40
    adc [hl]                                      ; $4a1d: $8e
    rrca                                          ; $4a1e: $0f
    db $fd                                        ; $4a1f: $fd
    nop                                           ; $4a20: $00
    jp $fc09                                      ; $4a21: $c3 $09 $fc


    nop                                           ; $4a24: $00
    db $fc                                        ; $4a25: $fc
    ld [hl], b                                    ; $4a26: $70
    ld bc, $0c65                                  ; $4a27: $01 $65 $0c
    ld h, b                                       ; $4a2a: $60
    ld l, $7d                                     ; $4a2b: $2e $7d
    ld de, $bd00                                  ; $4a2d: $11 $00 $bd
    ld b, b                                       ; $4a30: $40
    db $fd                                        ; $4a31: $fd
    db $fc                                        ; $4a32: $fc

jr_094_4a33:
    jr nz, jr_094_4a35                            ; $4a33: $20 $00

jr_094_4a35:
    inc b                                         ; $4a35: $04
    jr c, jr_094_49c9                             ; $4a36: $38 $91

    add hl, bc                                    ; $4a38: $09
    jr nz, jr_094_4a4a                            ; $4a39: $20 $0f

    inc b                                         ; $4a3b: $04
    jr z, jr_094_4a5c                             ; $4a3c: $28 $1e

    ld c, b                                       ; $4a3e: $48
    db $dd                                        ; $4a3f: $dd
    jr nz, jr_094_4a76                            ; $4a40: $20 $34

    db $fd                                        ; $4a42: $fd
    nop                                           ; $4a43: $00
    inc e                                         ; $4a44: $1c
    ld c, b                                       ; $4a45: $48
    jr nz, jr_094_4a80                            ; $4a46: $20 $38

    db $ed                                        ; $4a48: $ed
    ld b, h                                       ; $4a49: $44

jr_094_4a4a:
    jr nc, jr_094_4aac                            ; $4a4a: $30 $60

    ld e, a                                       ; $4a4c: $5f
    ld [$5f60], sp                                ; $4a4d: $08 $60 $5f
    ld [hl], b                                    ; $4a50: $70
    ld c, a                                       ; $4a51: $4f
    ld b, $08                                     ; $4a52: $06 $08
    ld h, b                                       ; $4a54: $60
    ld e, a                                       ; $4a55: $5f
    ld b, b                                       ; $4a56: $40
    sbc [hl]                                      ; $4a57: $9e
    ldh [rTMA], a                                 ; $4a58: $e0 $06
    inc bc                                        ; $4a5a: $03
    db $fd                                        ; $4a5b: $fd

jr_094_4a5c:
    ld [bc], a                                    ; $4a5c: $02
    ld e, b                                       ; $4a5d: $58
    sub b                                         ; $4a5e: $90
    jr c, jr_094_49e1                             ; $4a5f: $38 $80

    jr @-$0e                                      ; $4a61: $18 $f0

    ld a, $3b                                     ; $4a63: $3e $3b
    inc bc                                        ; $4a65: $03
    nop                                           ; $4a66: $00
    ccf                                           ; $4a67: $3f
    add b                                         ; $4a68: $80
    cp a                                          ; $4a69: $bf
    nop                                           ; $4a6a: $00
    add b                                         ; $4a6b: $80
    ld h, c                                       ; $4a6c: $61
    add hl, bc                                    ; $4a6d: $09
    ld [bc], a                                    ; $4a6e: $02
    ld b, b                                       ; $4a6f: $40
    or [hl]                                       ; $4a70: $b6
    ld b, b                                       ; $4a71: $40

jr_094_4a72:
    jr jr_094_4a75                                ; $4a72: $18 $01

    ld c, b                                       ; $4a74: $48

jr_094_4a75:
    db $10                                        ; $4a75: $10

jr_094_4a76:
    ld b, $08                                     ; $4a76: $06 $08
    cp a                                          ; $4a78: $bf
    call z, Call_000_0400                         ; $4a79: $cc $00 $04
    ld [$7fbb], sp                                ; $4a7c: $08 $bb $7f
    inc b                                         ; $4a7f: $04

jr_094_4a80:
    ld a, [bc]                                    ; $4a80: $0a
    jr jr_094_4ab1                                ; $4a81: $18 $2e

    ld [$2834], sp                                ; $4a83: $08 $34 $28
    inc a                                         ; $4a86: $3c
    ld [$082a], sp                                ; $4a87: $08 $2a $08
    sub e                                         ; $4a8a: $93
    ld bc, $1002                                  ; $4a8b: $01 $02 $10
    ld b, a                                       ; $4a8e: $47
    dec b                                         ; $4a8f: $05
    sbc l                                         ; $4a90: $9d
    ld bc, $00bf                                  ; $4a91: $01 $bf $00
    xor a                                         ; $4a94: $af
    ld [hl-], a                                   ; $4a95: $32
    jr nz, jr_094_4ace                            ; $4a96: $20 $36

    jr jr_094_4afa                                ; $4a98: $18 $60

    ld [$bfc0], sp                                ; $4a9a: $08 $c0 $bf
    ld bc, $1002                                  ; $4a9d: $01 $02 $10
    adc b                                         ; $4aa0: $88
    rst $38                                       ; $4aa1: $ff
    add l                                         ; $4aa2: $85
    rst $38                                       ; $4aa3: $ff
    dec bc                                        ; $4aa4: $0b
    rst $38                                       ; $4aa5: $ff
    ld b, h                                       ; $4aa6: $44
    ld b, c                                       ; $4aa7: $41
    inc b                                         ; $4aa8: $04
    nop                                           ; $4aa9: $00
    dec d                                         ; $4aaa: $15
    rst $38                                       ; $4aab: $ff

jr_094_4aac:
    xor e                                         ; $4aac: $ab
    inc b                                         ; $4aad: $04
    nop                                           ; $4aae: $00
    dec hl                                        ; $4aaf: $2b
    rst $38                                       ; $4ab0: $ff

jr_094_4ab1:
    ld d, b                                       ; $4ab1: $50
    ld d, l                                       ; $4ab2: $55
    ldh a, [rNR41]                                ; $4ab3: $f0 $20
    cp l                                          ; $4ab5: $bd
    inc d                                         ; $4ab6: $14
    ld sp, $ffc2                                  ; $4ab7: $31 $c2 $ff
    push hl                                       ; $4aba: $e5
    rst $38                                       ; $4abb: $ff
    db $10                                        ; $4abc: $10
    jp nz, $d5ff                                  ; $4abd: $c2 $ff $d5

    ld h, $03                                     ; $4ac0: $26 $03
    push de                                       ; $4ac2: $d5
    rst $38                                       ; $4ac3: $ff
    db $eb                                        ; $4ac4: $eb
    rst $38                                       ; $4ac5: $ff
    ld bc, $ffd7                                  ; $4ac6: $01 $d7 $ff
    xor a                                         ; $4ac9: $af
    rst $38                                       ; $4aca: $ff
    ld e, a                                       ; $4acb: $5f
    rst $38                                       ; $4acc: $ff
    xor l                                         ; $4acd: $ad

jr_094_4ace:
    inc b                                         ; $4ace: $04
    nop                                           ; $4acf: $00
    ldh a, [$5c]                                  ; $4ad0: $f0 $5c
    inc c                                         ; $4ad2: $0c
    pop de                                        ; $4ad3: $d1
    dec bc                                        ; $4ad4: $0b
    ld e, h                                       ; $4ad5: $5c
    jr c, jr_094_4a72                             ; $4ad6: $38 $9a

    jr jr_094_4adf                                ; $4ad8: $18 $05

    ld a, [$d52b]                                 ; $4ada: $fa $2b $d5
    ld b, b                                       ; $4add: $40
    ld d, a                                       ; $4ade: $57

jr_094_4adf:
    ld [hl], c                                    ; $4adf: $71
    dec bc                                        ; $4ae0: $0b
    xor a                                         ; $4ae1: $af
    xor [hl]                                      ; $4ae2: $ae
    ld d, a                                       ; $4ae3: $57
    ld e, h                                       ; $4ae4: $5c
    xor a                                         ; $4ae5: $af
    xor b                                         ; $4ae6: $a8
    ld [hl], b                                    ; $4ae7: $70
    ld e, a                                       ; $4ae8: $5f
    dec l                                         ; $4ae9: $2d
    ld a, [bc]                                    ; $4aea: $0a
    ld h, h                                       ; $4aeb: $64
    rlca                                          ; $4aec: $07
    and b                                         ; $4aed: $a0
    ld [hl], $74                                  ; $4aee: $36 $74
    sbc a                                         ; $4af0: $9f
    add sp, $3f                                   ; $4af1: $e8 $3f
    ld de, $7fb0                                  ; $4af3: $11 $b0 $7f
    add sp, -$04                                  ; $4af6: $e8 $fc
    dec b                                         ; $4af8: $05
    and b                                         ; $4af9: $a0

jr_094_4afa:
    rst $38                                       ; $4afa: $ff
    pop de                                        ; $4afb: $d1
    inc b                                         ; $4afc: $04
    nop                                           ; $4afd: $00
    ret nz                                        ; $4afe: $c0

    adc b                                         ; $4aff: $88
    ld c, [hl]                                    ; $4b00: $4e
    ld [hl], e                                    ; $4b01: $73
    rrca                                          ; $4b02: $0f
    ld d, d                                       ; $4b03: $52
    rst $38                                       ; $4b04: $ff
    xor b                                         ; $4b05: $a8
    rst $38                                       ; $4b06: $ff
    ld d, h                                       ; $4b07: $54
    rst $38                                       ; $4b08: $ff
    ld d, l                                       ; $4b09: $55
    xor d                                         ; $4b0a: $aa
    adc d                                         ; $4b0b: $8a
    nop                                           ; $4b0c: $00
    xor d                                         ; $4b0d: $aa
    halt                                          ; $4b0e: $76
    nop                                           ; $4b0f: $00
    cp d                                          ; $4b10: $ba
    cp e                                          ; $4b11: $bb
    rlca                                          ; $4b12: $07
    ld b, d                                       ; $4b13: $42
    ld l, a                                       ; $4b14: $6f
    ld [bc], a                                    ; $4b15: $02
    ld e, $08                                     ; $4b16: $1e $08
    rst $38                                       ; $4b18: $ff
    ld b, b                                       ; $4b19: $40
    jr nc, jr_094_4b1c                            ; $4b1a: $30 $00

jr_094_4b1c:
    jr jr_094_4b26                                ; $4b1c: $18 $08

    ld c, c                                       ; $4b1e: $49
    cpl                                           ; $4b1f: $2f
    ld [de], a                                    ; $4b20: $12
    ld [$af80], sp                                ; $4b21: $08 $80 $af
    ld [hl-], a                                   ; $4b24: $32
    nop                                           ; $4b25: $00

jr_094_4b26:
    push de                                       ; $4b26: $d5
    xor [hl]                                      ; $4b27: $ae
    ld bc, $7cf5                                  ; $4b28: $01 $f5 $7c
    inc hl                                        ; $4b2b: $23
    ldh a, [$0c]                                  ; $4b2c: $f0 $0c
    jr c, jr_094_4b38                             ; $4b2e: $38 $08

    inc a                                         ; $4b30: $3c
    ld [$dd45], sp                                ; $4b31: $08 $45 $dd
    inc a                                         ; $4b34: $3c
    nop                                           ; $4b35: $00
    db $fd                                        ; $4b36: $fd
    rst $38                                       ; $4b37: $ff

jr_094_4b38:
    rst $30                                       ; $4b38: $f7
    jr c, jr_094_4b3b                             ; $4b39: $38 $00

jr_094_4b3b:
    and d                                         ; $4b3b: $a2
    ld d, b                                       ; $4b3c: $50
    ld b, b                                       ; $4b3d: $40
    ld d, b                                       ; $4b3e: $50
    xor [hl]                                      ; $4b3f: $ae
    adc [hl]                                      ; $4b40: $8e
    db $10                                        ; $4b41: $10
    ld de, $02c1                                  ; $4b42: $11 $c1 $02
    ld b, l                                       ; $4b45: $45
    rst $38                                       ; $4b46: $ff
    and e                                         ; $4b47: $a3
    rst $38                                       ; $4b48: $ff
    ld b, d                                       ; $4b49: $42
    ld d, a                                       ; $4b4a: $57
    stop                                          ; $4b4b: $10 $00
    ld [bc], a                                    ; $4b4d: $02
    db $fd                                        ; $4b4e: $fd
    sub l                                         ; $4b4f: $95
    ld l, d                                       ; $4b50: $6a
    nop                                           ; $4b51: $00
    rrca                                          ; $4b52: $0f
    ld [$f710], sp                                ; $4b53: $08 $10 $f7
    ld bc, $f9fe                                  ; $4b56: $01 $fe $f9
    rrca                                          ; $4b59: $0f
    cp l                                          ; $4b5a: $bd
    ld c, [hl]                                    ; $4b5b: $4e
    ld e, c                                       ; $4b5c: $59
    xor [hl]                                      ; $4b5d: $ae

jr_094_4b5e:
    nop                                           ; $4b5e: $00
    cp d                                          ; $4b5f: $ba
    ld c, l                                       ; $4b60: $4d
    add hl, de                                    ; $4b61: $19
    xor $2a                                       ; $4b62: $ee $2a
    db $dd                                        ; $4b64: $dd
    add hl, sp                                    ; $4b65: $39
    sbc $08                                       ; $4b66: $de $08
    ld [de], a                                    ; $4b68: $12
    db $fd                                        ; $4b69: $fd
    sub l                                         ; $4b6a: $95
    ld a, d                                       ; $4b6b: $7a
    add [hl]                                      ; $4b6c: $86
    dec bc                                        ; $4b6d: $0b
    xor d                                         ; $4b6e: $aa
    ld d, l                                       ; $4b6f: $55
    rst $10                                       ; $4b70: $d7
    inc b                                         ; $4b71: $04
    jr z, jr_094_4b5e                             ; $4b72: $28 $ea

    dec d                                         ; $4b74: $15
    ld e, l                                       ; $4b75: $5d
    and d                                         ; $4b76: $a2
    sbc h                                         ; $4b77: $9c
    ld c, $7a                                     ; $4b78: $0e $7a
    add l                                         ; $4b7a: $85
    add c                                         ; $4b7b: $81
    ld a, [$7d0d]                                 ; $4b7c: $fa $0d $7d
    add d                                         ; $4b7f: $82
    xor a                                         ; $4b80: $af
    ld d, b                                       ; $4b81: $50
    ld [hl], a                                    ; $4b82: $77
    adc b                                         ; $4b83: $88
    db $e4                                        ; $4b84: $e4
    ld c, $c0                                     ; $4b85: $0e $c0
    ld c, b                                       ; $4b87: $48
    ld c, a                                       ; $4b88: $4f
    dec c                                         ; $4b89: $0d
    dec bc                                        ; $4b8a: $0b
    ld [hl-], a                                   ; $4b8b: $32
    db $fd                                        ; $4b8c: $fd
    ld l, b                                       ; $4b8d: $68
    or a                                          ; $4b8e: $b7
    jr nz, @+$01                                  ; $4b8f: $20 $ff

    jr nc, jr_094_4bfc                            ; $4b91: $30 $69

    or $fc                                        ; $4b93: $f6 $fc
    add hl, bc                                    ; $4b95: $09
    ld l, b                                       ; $4b96: $68
    add hl, bc                                    ; $4b97: $09
    ld a, [hl+]                                   ; $4b98: $2a
    push de                                       ; $4b99: $d5
    ld d, l                                       ; $4b9a: $55
    xor d                                         ; $4b9b: $aa
    sub c                                         ; $4b9c: $91
    call z, Call_000_0a0e                         ; $4b9d: $cc $0e $0a
    push af                                       ; $4ba0: $f5
    ldh [rP1], a                                  ; $4ba1: $e0 $00
    rst $28                                       ; $4ba3: $ef
    ld bc, $2cfe                                  ; $4ba4: $01 $fe $2c
    ld c, [hl]                                    ; $4ba7: $4e
    ld [$dd22], sp                                ; $4ba8: $08 $22 $dd
    dec b                                         ; $4bab: $05
    ld a, [$01da]                                 ; $4bac: $fa $da $01
    rst $38                                       ; $4baf: $ff
    ld [bc], a                                    ; $4bb0: $02
    rst $38                                       ; $4bb1: $ff
    dec b                                         ; $4bb2: $05
    ld b, $ff                                     ; $4bb3: $06 $ff
    inc b                                         ; $4bb5: $04
    rst $38                                       ; $4bb6: $ff
    inc c                                         ; $4bb7: $0c
    and $00                                       ; $4bb8: $e6 $00
    jr jr_094_4c26                                ; $4bba: $18 $6a

    inc d                                         ; $4bbc: $14
    ret                                           ; $4bbd: $c9


    sbc h                                         ; $4bbe: $9c
    ld c, a                                       ; $4bbf: $4f
    inc e                                         ; $4bc0: $1c
    rra                                           ; $4bc1: $1f
    ld [$24f7], sp                                ; $4bc2: $08 $f7 $24
    add hl, sp                                    ; $4bc5: $39
    jr nc, @+$01                                  ; $4bc6: $30 $ff

    sub b                                         ; $4bc8: $90
    rrca                                          ; $4bc9: $0f
    ld a, h                                       ; $4bca: $7c
    sub d                                         ; $4bcb: $92
    add l                                         ; $4bcc: $85
    inc bc                                        ; $4bcd: $03
    inc l                                         ; $4bce: $2c
    add hl, bc                                    ; $4bcf: $09
    add b                                         ; $4bd0: $80
    ld e, b                                       ; $4bd1: $58
    dec bc                                        ; $4bd2: $0b
    rlca                                          ; $4bd3: $07
    jp c, $0317                                   ; $4bd4: $da $17 $03

    rst $38                                       ; $4bd7: $ff
    nop                                           ; $4bd8: $00
    dec b                                         ; $4bd9: $05
    cp $0a                                        ; $4bda: $fe $0a
    db $fd                                        ; $4bdc: $fd
    dec d                                         ; $4bdd: $15
    ld a, [$f52a]                                 ; $4bde: $fa $2a $f5
    ld [bc], a                                    ; $4be1: $02
    rlca                                          ; $4be2: $07
    rst $38                                       ; $4be3: $ff
    inc sp                                        ; $4be4: $33
    db $fc                                        ; $4be5: $fc
    rst $18                                       ; $4be6: $df
    ldh [$f1], a                                  ; $4be7: $e0 $f1
    rrca                                          ; $4be9: $0f
    di                                            ; $4bea: $f3
    ld bc, $ba0f                                  ; $4beb: $01 $0f $ba
    ld a, l                                       ; $4bee: $7d
    add b                                         ; $4bef: $80
    rst $38                                       ; $4bf0: $ff
    xor a                                         ; $4bf1: $af
    ld d, b                                       ; $4bf2: $50
    sub b                                         ; $4bf3: $90
    ld l, $20                                     ; $4bf4: $2e $20
    ld a, l                                       ; $4bf6: $7d
    add d                                         ; $4bf7: $82
    ld h, $0f                                     ; $4bf8: $26 $0f
    ld e, h                                       ; $4bfa: $5c
    and e                                         ; $4bfb: $a3

jr_094_4bfc:
    ei                                            ; $4bfc: $fb
    ld b, $b9                                     ; $4bfd: $06 $b9
    nop                                           ; $4bff: $00
    ld b, [hl]                                    ; $4c00: $46
    ld a, l                                       ; $4c01: $7d
    add [hl]                                      ; $4c02: $86
    xor c                                         ; $4c03: $a9
    ld d, [hl]                                    ; $4c04: $56
    ld e, l                                       ; $4c05: $5d
    and [hl]                                      ; $4c06: $a6
    xor c                                         ; $4c07: $a9
    ld e, $56                                     ; $4c08: $1e $56
    db $dd                                        ; $4c0a: $dd
    ld h, $6e                                     ; $4c0b: $26 $6e
    ld e, a                                       ; $4c0d: $5f
    nop                                           ; $4c0e: $00
    inc h                                         ; $4c0f: $24
    ld l, [hl]                                    ; $4c10: $6e
    rra                                           ; $4c11: $1f
    add [hl]                                      ; $4c12: $86
    rla                                           ; $4c13: $17
    xor l                                         ; $4c14: $ad
    nop                                           ; $4c15: $00
    ld d, d                                       ; $4c16: $52
    ld [hl], a                                    ; $4c17: $77
    adc b                                         ; $4c18: $88
    cp d                                          ; $4c19: $ba
    ld b, l                                       ; $4c1a: $45
    ld d, l                                       ; $4c1b: $55
    xor d                                         ; $4c1c: $aa
    db $eb                                        ; $4c1d: $eb
    nop                                           ; $4c1e: $00
    inc d                                         ; $4c1f: $14
    ld [hl], l                                    ; $4c20: $75
    adc d                                         ; $4c21: $8a
    cp d                                          ; $4c22: $ba
    ld b, l                                       ; $4c23: $45
    ld d, a                                       ; $4c24: $57
    xor b                                         ; $4c25: $a8

jr_094_4c26:
    ei                                            ; $4c26: $fb
    nop                                           ; $4c27: $00
    inc b                                         ; $4c28: $04
    push de                                       ; $4c29: $d5
    ld l, $fa                                     ; $4c2a: $2e $fa
    dec c                                         ; $4c2c: $0d
    ld [hl], c                                    ; $4c2d: $71
    adc [hl]                                      ; $4c2e: $8e
    ld [$1d01], a                                 ; $4c2f: $ea $01 $1d
    ld e, c                                       ; $4c32: $59
    xor [hl]                                      ; $4c33: $ae
    xor a                                         ; $4c34: $af
    ld e, b                                       ; $4c35: $58
    ld [hl], a                                    ; $4c36: $77
    sbc b                                         ; $4c37: $98
    ldh [rNR34], a                                ; $4c38: $e0 $1e
    add hl, bc                                    ; $4c3a: $09
    ld a, a                                       ; $4c3b: $7f
    add b                                         ; $4c3c: $80
    xor d                                         ; $4c3d: $aa
    ld d, l                                       ; $4c3e: $55
    db $10                                        ; $4c3f: $10
    rrca                                          ; $4c40: $0f
    push de                                       ; $4c41: $d5
    ld a, [hl+]                                   ; $4c42: $2a
    or [hl]                                       ; $4c43: $b6
    rra                                           ; $4c44: $1f
    add b                                         ; $4c45: $80
    ret nc                                        ; $4c46: $d0

    ld c, $dd                                     ; $4c47: $0e $dd
    ld [hl+], a                                   ; $4c49: $22
    cp a                                          ; $4c4a: $bf
    ld b, b                                       ; $4c4b: $40
    ld e, a                                       ; $4c4c: $5f
    and b                                         ; $4c4d: $a0
    dec hl                                        ; $4c4e: $2b
    ld b, b                                       ; $4c4f: $40
    call nc, Call_000_0fdc                        ; $4c50: $d4 $dc $0f
    add h                                         ; $4c53: $84
    ld a, e                                       ; $4c54: $7b
    ld b, d                                       ; $4c55: $42
    cp l                                          ; $4c56: $bd
    nop                                           ; $4c57: $00
    rst $38                                       ; $4c58: $ff
    nop                                           ; $4c59: $00
    inc b                                         ; $4c5a: $04
    ei                                            ; $4c5b: $fb
    nop                                           ; $4c5c: $00
    rst $38                                       ; $4c5d: $ff
    or l                                          ; $4c5e: $b5
    ld e, d                                       ; $4c5f: $5a
    ld [hl], a                                    ; $4c60: $77
    sbc b                                         ; $4c61: $98
    nop                                           ; $4c62: $00
    or d                                          ; $4c63: $b2
    ld e, l                                       ; $4c64: $5d

jr_094_4c65:
    ld d, l                                       ; $4c65: $55

jr_094_4c66:
    cp d                                          ; $4c66: $ba
    ld a, [c]                                     ; $4c67: $f2
    dec a                                         ; $4c68: $3d
    ld h, a                                       ; $4c69: $67
    cp b                                          ; $4c6a: $b8
    nop                                           ; $4c6b: $00
    dec hl                                        ; $4c6c: $2b
    db $f4                                        ; $4c6d: $f4
    and l                                         ; $4c6e: $a5
    ld a, d                                       ; $4c6f: $7a
    ld a, [$bd05]                                 ; $4c70: $fa $05 $bd
    ld b, d                                       ; $4c73: $42
    sub e                                         ; $4c74: $93
    db $fc                                        ; $4c75: $fc
    ld c, $ad                                     ; $4c76: $0e $ad
    ld d, d                                       ; $4c78: $52
    ld a, b                                       ; $4c79: $78
    add hl, bc                                    ; $4c7a: $09
    ld [hl], l                                    ; $4c7b: $75
    adc d                                         ; $4c7c: $8a
    ld a, [hl-]                                   ; $4c7d: $3a
    dec c                                         ; $4c7e: $0d
    ld b, b                                       ; $4c7f: $40
    cpl                                           ; $4c80: $2f
    add c                                         ; $4c81: $81
    add b                                         ; $4c82: $80
    rrca                                          ; $4c83: $0f
    ldh a, [rIE]                                  ; $4c84: $f0 $ff
    and $1f                                       ; $4c86: $e6 $1f
    db $fd                                        ; $4c88: $fd
    inc bc                                        ; $4c89: $03
    ld a, h                                       ; $4c8a: $7c
    rrca                                          ; $4c8b: $0f
    nop                                           ; $4c8c: $00
    rst $20                                       ; $4c8d: $e7
    ld hl, sp-$12                                 ; $4c8e: $f8 $ee
    rra                                           ; $4c90: $1f
    inc e                                         ; $4c91: $1c
    db $e3                                        ; $4c92: $e3
    ld h, d                                       ; $4c93: $62
    db $fd                                        ; $4c94: $fd
    nop                                           ; $4c95: $00
    ld b, l                                       ; $4c96: $45
    ld a, [$efd0]                                 ; $4c97: $fa $d0 $ef
    ld h, b                                       ; $4c9a: $60
    rst $38                                       ; $4c9b: $ff
    call nc, Call_000_023b                        ; $4c9c: $d4 $3b $02
    xor b                                         ; $4c9f: $a8
    ld e, a                                       ; $4ca0: $5f
    call nc, $aa2f                                ; $4ca1: $d4 $2f $aa
    rst $10                                       ; $4ca4: $d7
    sub h                                         ; $4ca5: $94
    ld [$482b], sp                                ; $4ca6: $08 $2b $48
    call nc, Call_000_0998                        ; $4ca9: $d4 $98 $09
    add l                                         ; $4cac: $85
    ld a, d                                       ; $4cad: $7a
    sub $09                                       ; $4cae: $d6 $09
    rst $28                                       ; $4cb0: $ef
    db $10                                        ; $4cb1: $10
    ld d, a                                       ; $4cb2: $57
    db $10                                        ; $4cb3: $10
    xor b                                         ; $4cb4: $a8
    xor [hl]                                      ; $4cb5: $ae
    ld d, c                                       ; $4cb6: $51
    xor h                                         ; $4cb7: $ac
    jr jr_094_4c65                                ; $4cb8: $18 $ab

    ld d, h                                       ; $4cba: $54
    ld b, l                                       ; $4cbb: $45
    cp d                                          ; $4cbc: $ba
    ldh [$e0], a                                  ; $4cbd: $e0 $e0
    ld e, b                                       ; $4cbf: $58
    ld b, $14                                     ; $4cc0: $06 $14
    ldh [rNR23], a                                ; $4cc2: $e0 $18
    jr nz, jr_094_4c66                            ; $4cc4: $20 $a0

    ld d, b                                       ; $4cc6: $50
    ldh a, [$08]                                  ; $4cc7: $f0 $08
    nop                                           ; $4cc9: $00
    ldh a, [$08]                                  ; $4cca: $f0 $08
    ld a, a                                       ; $4ccc: $7f
    add b                                         ; $4ccd: $80
    rst $28                                       ; $4cce: $ef
    db $10                                        ; $4ccf: $10
    cp l                                          ; $4cd0: $bd
    ld b, d                                       ; $4cd1: $42
    ldh [$c0], a                                  ; $4cd2: $e0 $c0
    ld [$1fa0], sp                                ; $4cd4: $08 $a0 $1f
    ld a, d                                       ; $4cd7: $7a
    rrca                                          ; $4cd8: $0f
    ld hl, sp+$07                                 ; $4cd9: $f8 $07
    ei                                            ; $4cdb: $fb
    inc b                                         ; $4cdc: $04
    jp nc, Jump_000_2d01                          ; $4cdd: $d2 $01 $2d

    di                                            ; $4ce0: $f3
    inc c                                         ; $4ce1: $0c
    cp e                                          ; $4ce2: $bb
    ld c, h                                       ; $4ce3: $4c
    ld d, e                                       ; $4ce4: $53
    xor h                                         ; $4ce5: $ac
    nop                                           ; $4ce6: $00
    ld a, [de]                                    ; $4ce7: $1a
    ret nz                                        ; $4ce8: $c0

    call z, $f008                                 ; $4ce9: $cc $08 $f0
    rrca                                          ; $4cec: $0f
    ld [hl], a                                    ; $4ced: $77
    adc b                                         ; $4cee: $88
    cp c                                          ; $4cef: $b9
    ld c, [hl]                                    ; $4cf0: $4e
    ld [hl], a                                    ; $4cf1: $77
    adc b                                         ; $4cf2: $88
    nop                                           ; $4cf3: $00
    xor a                                         ; $4cf4: $af
    ld e, b                                       ; $4cf5: $58
    push af                                       ; $4cf6: $f5
    ld a, [de]                                    ; $4cf7: $1a
    db $e3                                        ; $4cf8: $e3
    inc e                                         ; $4cf9: $1c
    ld [hl], l                                    ; $4cfa: $75
    sbc d                                         ; $4cfb: $9a
    ld [$3dc2], sp                                ; $4cfc: $08 $c2 $3d
    ld e, l                                       ; $4cff: $5d
    or d                                          ; $4d00: $b2
    ldh a, [$38]                                  ; $4d01: $f0 $38
    ld e, e                                       ; $4d03: $5b
    and h                                         ; $4d04: $a4
    cp [hl]                                       ; $4d05: $be
    jr jr_094_4d49                                ; $4d06: $18 $41

    ld d, l                                       ; $4d08: $55
    xor d                                         ; $4d09: $aa
    ld d, b                                       ; $4d0a: $50
    add hl, sp                                    ; $4d0b: $39
    call nc, $ef0f                                ; $4d0c: $d4 $0f $ef
    db $10                                        ; $4d0f: $10
    rst $38                                       ; $4d10: $ff
    rlca                                          ; $4d11: $07
    rst $38                                       ; $4d12: $ff
    ccf                                           ; $4d13: $3f
    ccf                                           ; $4d14: $3f
    rrca                                          ; $4d15: $0f
    rrca                                          ; $4d16: $0f
    nop                                           ; $4d17: $00
    ld e, [hl]                                    ; $4d18: $5e
    dec sp                                        ; $4d19: $3b
    ld e, $18                                     ; $4d1a: $1e $18
    jr @+$1f                                      ; $4d1c: $18 $1d

    rst $10                                       ; $4d1e: $d7
    rst $38                                       ; $4d1f: $ff
    cp e                                          ; $4d20: $bb
    cp b                                          ; $4d21: $b8
    ld [bc], a                                    ; $4d22: $02
    inc d                                         ; $4d23: $14
    ld d, $e0                                     ; $4d24: $16 $e0
    ld d, $5d                                     ; $4d26: $16 $5d

Jump_094_4d28:
    ld e, $06                                     ; $4d28: $1e $06
    ld d, e                                       ; $4d2a: $53
    ld a, l                                       ; $4d2b: $7d
    ld [hl+], a                                   ; $4d2c: $22
    ld b, $fb                                     ; $4d2d: $06 $fb
    ld h, b                                       ; $4d2f: $60
    ld h, $fc                                     ; $4d30: $26 $fc
    db $fc                                        ; $4d32: $fc
    rst $38                                       ; $4d33: $ff
    ld c, a                                       ; $4d34: $4f
    ld b, b                                       ; $4d35: $40
    ld c, $80                                     ; $4d36: $0e $80
    ld d, b                                       ; $4d38: $50
    ld [$0707], sp                                ; $4d39: $08 $07 $07
    ld [$100f], sp                                ; $4d3c: $08 $0f $10
    rra                                           ; $4d3f: $1f
    jr nz, @+$1e                                  ; $4d40: $20 $1c

    ccf                                           ; $4d42: $3f
    ld b, d                                       ; $4d43: $42
    ld a, a                                       ; $4d44: $7f
    xor a                                         ; $4d45: $af
    dec l                                         ; $4d46: $2d
    xor l                                         ; $4d47: $ad
    dec b                                         ; $4d48: $05

jr_094_4d49:
    add sp, $06                                   ; $4d49: $e8 $06
    rlca                                          ; $4d4b: $07
    rlca                                          ; $4d4c: $07
    jp c, Jump_000_018b                           ; $4d4d: $da $8b $01

    cp [hl]                                       ; $4d50: $be
    ld b, $aa                                     ; $4d51: $06 $aa
    ld [hl+], a                                   ; $4d53: $22
    inc sp                                        ; $4d54: $33
    cp c                                          ; $4d55: $b9
    ld c, $1f                                     ; $4d56: $0e $1f
    ld bc, $3f10                                  ; $4d58: $01 $10 $3f
    pop de                                        ; $4d5b: $d1
    ld bc, $6810                                  ; $4d5c: $01 $10 $68
    dec de                                        ; $4d5f: $1b
    xor d                                         ; $4d60: $aa
    ld b, h                                       ; $4d61: $44
    inc bc                                        ; $4d62: $03
    xor $ff                                       ; $4d63: $ee $ff
    cp l                                          ; $4d65: $bd
    adc d                                         ; $4d66: $8a
    ld b, $14                                     ; $4d67: $06 $14
    inc b                                         ; $4d69: $04
    rst $38                                       ; $4d6a: $ff
    add c                                         ; $4d6b: $81
    add b                                         ; $4d6c: $80
    inc bc                                        ; $4d6d: $03
    xor b                                         ; $4d6e: $a8
    ld c, b                                       ; $4d6f: $48
    inc hl                                        ; $4d70: $23
    db $eb                                        ; $4d71: $eb
    rst $38                                       ; $4d72: $ff
    ld b, l                                       ; $4d73: $45
    ld [hl+], a                                   ; $4d74: $22
    adc [hl]                                      ; $4d75: $8e
    inc bc                                        ; $4d76: $03
    ld l, b                                       ; $4d77: $68
    rst $38                                       ; $4d78: $ff
    ret nc                                        ; $4d79: $d0

    xor [hl]                                      ; $4d7a: $ae
    inc bc                                        ; $4d7b: $03
    ldh [$ce], a                                  ; $4d7c: $e0 $ce
    inc b                                         ; $4d7e: $04
    ld b, b                                       ; $4d7f: $40
    ret nz                                        ; $4d80: $c0

    ld l, l                                       ; $4d81: $6d
    ld b, [hl]                                    ; $4d82: $46
    inc bc                                        ; $4d83: $03
    rst $38                                       ; $4d84: $ff
    dec bc                                        ; $4d85: $0b
    db $fc                                        ; $4d86: $fc
    dec e                                         ; $4d87: $1d
    di                                            ; $4d88: $f3
    push de                                       ; $4d89: $d5
    db $f4                                        ; $4d8a: $f4
    rrca                                          ; $4d8b: $0f
    sbc h                                         ; $4d8c: $9c
    jr jr_094_4dce                                ; $4d8d: $18 $3f

    ld b, $07                                     ; $4d8f: $06 $07
    inc bc                                        ; $4d91: $03
    ld a, [hl+]                                   ; $4d92: $2a
    inc b                                         ; $4d93: $04
    rst $28                                       ; $4d94: $ef
    ld b, b                                       ; $4d95: $40
    dec d                                         ; $4d96: $15
    ldh [$93], a                                  ; $4d97: $e0 $93
    dec hl                                        ; $4d99: $2b
    ld b, $1b                                     ; $4d9a: $06 $1b
    inc b                                         ; $4d9c: $04
    jr c, @+$2e                                   ; $4d9d: $38 $2c

    rst $38                                       ; $4d9f: $ff
    ld sp, $64fe                                  ; $4da0: $31 $fe $64
    inc hl                                        ; $4da3: $23
    ei                                            ; $4da4: $fb
    ld h, b                                       ; $4da5: $60
    ret nc                                        ; $4da6: $d0

    inc bc                                        ; $4da7: $03
    ld b, b                                       ; $4da8: $40
    rst $38                                       ; $4da9: $ff
    ld d, b                                       ; $4daa: $50
    ld [bc], a                                    ; $4dab: $02
    nop                                           ; $4dac: $00
    ldh [$0b], a                                  ; $4dad: $e0 $0b
    ld e, l                                       ; $4daf: $5d
    nop                                           ; $4db0: $00
    db $f4                                        ; $4db1: $f4
    inc bc                                        ; $4db2: $03
    db $fc                                        ; $4db3: $fc
    ld [bc], a                                    ; $4db4: $02
    nop                                           ; $4db5: $00
    db $f4                                        ; $4db6: $f4
    jr jr_094_4e01                                ; $4db7: $18 $48

    ld [$d543], sp                                ; $4db9: $08 $43 $d5
    ld d, $c0                                     ; $4dbc: $16 $c0
    or [hl]                                       ; $4dbe: $b6
    ld [$0874], sp                                ; $4dbf: $08 $74 $08
    ldh [$df], a                                  ; $4dc2: $e0 $df
    pop bc                                        ; $4dc4: $c1
    cp $e2                                        ; $4dc5: $fe $e2
    db $dd                                        ; $4dc7: $dd
    nop                                           ; $4dc8: $00
    ld b, l                                       ; $4dc9: $45
    ld a, [$d4eb]                                 ; $4dca: $fa $eb $d4
    rst $30                                       ; $4dcd: $f7

jr_094_4dce:
    ret z                                         ; $4dce: $c8

    ld d, b                                       ; $4dcf: $50
    rst $38                                       ; $4dd0: $ff
    nop                                           ; $4dd1: $00
    jr c, @+$01                                   ; $4dd2: $38 $ff

    xor [hl]                                      ; $4dd4: $ae
    ld a, a                                       ; $4dd5: $7f
    rla                                           ; $4dd6: $17
    rst $38                                       ; $4dd7: $ff
    call Call_000_003f                            ; $4dd8: $cd $3f $00
    db $e3                                        ; $4ddb: $e3
    rra                                           ; $4ddc: $1f
    ret nc                                        ; $4ddd: $d0

    cpl                                           ; $4dde: $2f
    xor b                                         ; $4ddf: $a8
    ld d, a                                       ; $4de0: $57
    rst $28                                       ; $4de1: $ef
    ret nc                                        ; $4de2: $d0

    nop                                           ; $4de3: $00
    cp $c1                                        ; $4de4: $fe $c1
    db $fd                                        ; $4de6: $fd
    jp nz, $c5fa                                  ; $4de7: $c2 $fa $c5

    push af                                       ; $4dea: $f5
    jp z, $ea00                                   ; $4deb: $ca $00 $ea

    push de                                       ; $4dee: $d5
    ldh a, [$cf]                                  ; $4def: $f0 $cf
    add sp, -$29                                  ; $4df1: $e8 $d7
    ld d, d                                       ; $4df3: $52
    xor l                                         ; $4df4: $ad
    ld bc, $7f80                                  ; $4df5: $01 $80 $7f
    ld b, b                                       ; $4df8: $40
    cp a                                          ; $4df9: $bf
    sub c                                         ; $4dfa: $91
    ld l, a                                       ; $4dfb: $6f
    nop                                           ; $4dfc: $00
    cp $04                                        ; $4dfd: $fe $04
    ld c, b                                       ; $4dff: $48
    ld [bc], a                                    ; $4e00: $02

jr_094_4e01:
    ret c                                         ; $4e01: $d8

jr_094_4e02:
    inc b                                         ; $4e02: $04
    inc bc                                        ; $4e03: $03
    db $fc                                        ; $4e04: $fc
    cp [hl]                                       ; $4e05: $be
    rra                                           ; $4e06: $1f
    ld [bc], a                                    ; $4e07: $02
    db $fd                                        ; $4e08: $fd
    push hl                                       ; $4e09: $e5
    nop                                           ; $4e0a: $00
    ld a, [$1ceb]                                 ; $4e0b: $fa $eb $1c
    rst $18                                       ; $4e0e: $df
    db $e4                                        ; $4e0f: $e4
    ld [hl+], a                                   ; $4e10: $22
    rst $38                                       ; $4e11: $ff
    push de                                       ; $4e12: $d5
    db $10                                        ; $4e13: $10
    ccf                                           ; $4e14: $3f
    cp e                                          ; $4e15: $bb
    ld c, a                                       ; $4e16: $4f
    ld d, d                                       ; $4e17: $52
    rlca                                          ; $4e18: $07
    dec bc                                        ; $4e19: $0b
    db $eb                                        ; $4e1a: $eb
    rla                                           ; $4e1b: $17
    push de                                       ; $4e1c: $d5
    ld b, $2b                                     ; $4e1d: $06 $2b
    xor l                                         ; $4e1f: $ad
    ld d, e                                       ; $4e20: $53
    jr nz, jr_094_4e02                            ; $4e21: $20 $df

    ld hl, sp+$1b                                 ; $4e23: $f8 $1b
    inc d                                         ; $4e25: $14
    dec l                                         ; $4e26: $2d
    ld [$f701], sp                                ; $4e27: $08 $01 $f7
    dec b                                         ; $4e2a: $05
    ld a, [$df20]                                 ; $4e2b: $fa $20 $df
    ld d, b                                       ; $4e2e: $50
    xor a                                         ; $4e2f: $af
    adc b                                         ; $4e30: $88
    dec hl                                        ; $4e31: $2b
    nop                                           ; $4e32: $00
    db $db                                        ; $4e33: $db
    ld a, $f6                                     ; $4e34: $3e $f6
    rrca                                          ; $4e36: $0f
    dec sp                                        ; $4e37: $3b
    rst $00                                       ; $4e38: $c7
    rrca                                          ; $4e39: $0f
    di                                            ; $4e3a: $f3
    jr nz, jr_094_4e42                            ; $4e3b: $20 $05

    ei                                            ; $4e3d: $fb
    ld [bc], a                                    ; $4e3e: $02
    ld [$ff01], sp                                ; $4e3f: $08 $01 $ff

jr_094_4e42:
    ld d, a                                       ; $4e42: $57
    xor c                                         ; $4e43: $a9
    and d                                         ; $4e44: $a2
    rlca                                          ; $4e45: $07
    ld e, l                                       ; $4e46: $5d
    ld b, d                                       ; $4e47: $42
    cp l                                          ; $4e48: $bd
    add c                                         ; $4e49: $81
    ld a, a                                       ; $4e4a: $7f
    ld h, b                                       ; $4e4b: $60
    jr z, jr_094_4e9a                             ; $4e4c: $28 $4c

    dec l                                         ; $4e4e: $2d
    dec d                                         ; $4e4f: $15
    rrca                                          ; $4e50: $0f
    ld d, b                                       ; $4e51: $50
    and b                                         ; $4e52: $a0
    add hl, de                                    ; $4e53: $19
    rlca                                          ; $4e54: $07
    ld bc, $03ce                                  ; $4e55: $01 $ce $03
    ld [de], a                                    ; $4e58: $12
    rst $38                                       ; $4e59: $ff
    push bc                                       ; $4e5a: $c5
    rst $38                                       ; $4e5b: $ff
    ld l, b                                       ; $4e5c: $68
    sbc b                                         ; $4e5d: $98
    jr c, jr_094_4e65                             ; $4e5e: $38 $05

    add b                                         ; $4e60: $80
    ld [$540b], sp                                ; $4e61: $08 $0b $54
    dec b                                         ; $4e64: $05

jr_094_4e65:
    add hl, hl                                    ; $4e65: $29
    rst $38                                       ; $4e66: $ff
    ld d, [hl]                                    ; $4e67: $56
    nop                                           ; $4e68: $00
    db $fd                                        ; $4e69: $fd
    and c                                         ; $4e6a: $a1
    rst $38                                       ; $4e6b: $ff
    ld d, d                                       ; $4e6c: $52
    db $fd                                        ; $4e6d: $fd
    add c                                         ; $4e6e: $81
    rst $38                                       ; $4e6f: $ff
    ld b, d                                       ; $4e70: $42
    ld a, [bc]                                    ; $4e71: $0a
    db $fd                                        ; $4e72: $fd
    ld d, b                                       ; $4e73: $50
    rst $38                                       ; $4e74: $ff
    add d                                         ; $4e75: $82
    ld c, [hl]                                    ; $4e76: $4e
    ld bc, $52a8                                  ; $4e77: $01 $a8 $52
    dec h                                         ; $4e7a: $25
    ld [$bdaa], a                                 ; $4e7b: $ea $aa $bd
    rla                                           ; $4e7e: $17
    sub b                                         ; $4e7f: $90
    sbc $04                                       ; $4e80: $de $04
    ld bc, $058e                                  ; $4e82: $01 $8e $05
    ld d, c                                       ; $4e85: $51
    db $fc                                        ; $4e86: $fc
    inc b                                         ; $4e87: $04
    ld a, [bc]                                    ; $4e88: $0a
    xor b                                         ; $4e89: $a8
    add h                                         ; $4e8a: $84
    dec b                                         ; $4e8b: $05
    jr z, jr_094_4e90                             ; $4e8c: $28 $02

    dec b                                         ; $4e8e: $05
    and b                                         ; $4e8f: $a0

jr_094_4e90:
    ld e, $01                                     ; $4e90: $1e $01
    add c                                         ; $4e92: $81
    cp $40                                        ; $4e93: $fe $40
    nop                                           ; $4e95: $00
    rst $38                                       ; $4e96: $ff
    ld b, $f9                                     ; $4e97: $06 $f9
    ld a, [bc]                                    ; $4e99: $0a

jr_094_4e9a:
    push af                                       ; $4e9a: $f5
    ld b, $f9                                     ; $4e9b: $06 $f9
    ld l, $00                                     ; $4e9d: $2e $00
    pop de                                        ; $4e9f: $d1
    ld e, [hl]                                    ; $4ea0: $5e
    and c                                         ; $4ea1: $a1
    cp [hl]                                       ; $4ea2: $be
    ld b, c                                       ; $4ea3: $41
    ld a, d                                       ; $4ea4: $7a
    add l                                         ; $4ea5: $85
    or $5d                                        ; $4ea6: $f6 $5d
    add hl, bc                                    ; $4ea8: $09
    xor b                                         ; $4ea9: $a8
    add hl, bc                                    ; $4eaa: $09
    push af                                       ; $4eab: $f5
    ld h, h                                       ; $4eac: $64
    ld bc, $069a                                  ; $4ead: $01 $9a $06
    ldh a, [rNR50]                                ; $4eb0: $f0 $24
    xor e                                         ; $4eb2: $ab
    ret z                                         ; $4eb3: $c8

    inc b                                         ; $4eb4: $04
    ld [hl], b                                    ; $4eb5: $70
    cp [hl]                                       ; $4eb6: $be
    jr z, jr_094_4ecb                             ; $4eb7: $28 $12

    inc d                                         ; $4eb9: $14
    ld [$0b94], sp                                ; $4eba: $08 $94 $0b
    adc d                                         ; $4ebd: $8a
    ld [hl], l                                    ; $4ebe: $75
    ld b, l                                       ; $4ebf: $45
    cp d                                          ; $4ec0: $ba
    add b                                         ; $4ec1: $80
    ret z                                         ; $4ec2: $c8

    ld [$ef10], sp                                ; $4ec3: $08 $10 $ef
    ld b, c                                       ; $4ec6: $41
    cp [hl]                                       ; $4ec7: $be
    cp $31                                        ; $4ec8: $fe $31
    ld h, a                                       ; $4eca: $67

jr_094_4ecb:
    nop                                           ; $4ecb: $00
    cp b                                          ; $4ecc: $b8
    xor $31                                       ; $4ecd: $ee $31
    and a                                         ; $4ecf: $a7
    ld a, b                                       ; $4ed0: $78
    db $eb                                        ; $4ed1: $eb
    ld [hl], h                                    ; $4ed2: $74
    push de                                       ; $4ed3: $d5
    inc b                                         ; $4ed4: $04
    ld l, d                                       ; $4ed5: $6a
    jp z, Jump_094_5775                           ; $4ed6: $ca $75 $57

    add sp, -$2c                                  ; $4ed9: $e8 $d4
    ld a, [bc]                                    ; $4edb: $0a
    ld [$0015], a                                 ; $4edc: $ea $15 $00
    db $fd                                        ; $4edf: $fd
    ld [bc], a                                    ; $4ee0: $02
    cp $01                                        ; $4ee1: $fe $01
    ld e, a                                       ; $4ee3: $5f
    and b                                         ; $4ee4: $a0
    cp e                                          ; $4ee5: $bb
    ld b, h                                       ; $4ee6: $44
    ld c, c                                       ; $4ee7: $49
    ld d, a                                       ; $4ee8: $57
    ld b, c                                       ; $4ee9: $41
    inc b                                         ; $4eea: $04
    ld a, a                                       ; $4eeb: $7f
    add b                                         ; $4eec: $80
    inc d                                         ; $4eed: $14
    inc c                                         ; $4eee: $0c
    xor [hl]                                      ; $4eef: $ae
    ld d, c                                       ; $4ef0: $51
    jr jr_094_4efb                                ; $4ef1: $18 $08

    inc a                                         ; $4ef3: $3c
    ld a, l                                       ; $4ef4: $7d
    add d                                         ; $4ef5: $82
    sub d                                         ; $4ef6: $92
    inc b                                         ; $4ef7: $04
    ld [$4205], sp                                ; $4ef8: $08 $05 $42

jr_094_4efb:
    ld c, $98                                     ; $4efb: $0e $98
    inc e                                         ; $4efd: $1c
    set 6, h                                      ; $4efe: $cb $f4
    ld b, $85                                     ; $4f00: $06 $85
    ld a, [$f58a]                                 ; $4f02: $fa $8a $f5
    add h                                         ; $4f05: $84
    xor d                                         ; $4f06: $aa
    inc bc                                        ; $4f07: $03
    or b                                          ; $4f08: $b0
    dec de                                        ; $4f09: $1b
    xor e                                         ; $4f0a: $ab
    ld b, b                                       ; $4f0b: $40
    ld d, h                                       ; $4f0c: $54
    ld c, h                                       ; $4f0d: $4c
    dec sp                                        ; $4f0e: $3b
    ld [$84f7], sp                                ; $4f0f: $08 $f7 $84
    ld a, e                                       ; $4f12: $7b
    ld a, [$3c05]                                 ; $4f13: $fa $05 $3c
    ld e, a                                       ; $4f16: $5f
    and b                                         ; $4f17: $a0
    inc c                                         ; $4f18: $0c
    dec bc                                        ; $4f19: $0b
    jr jr_094_4f44                                ; $4f1a: $18 $28

    ret z                                         ; $4f1c: $c8

    inc l                                         ; $4f1d: $2c
    xor b                                         ; $4f1e: $a8
    inc c                                         ; $4f1f: $0c
    ld h, c                                       ; $4f20: $61
    rst $38                                       ; $4f21: $ff
    ld a, b                                       ; $4f22: $78
    call nz, $04f4                                ; $4f23: $c4 $f4 $04
    ld [$e60b], a                                 ; $4f26: $ea $0b $e6
    dec a                                         ; $4f29: $3d
    sbc h                                         ; $4f2a: $9c
    dec de                                        ; $4f2b: $1b
    dec b                                         ; $4f2c: $05
    ld a, [$4a80]                                 ; $4f2d: $fa $80 $4a
    ld a, a                                       ; $4f30: $7f
    ld [hl], d                                    ; $4f31: $72
    dec c                                         ; $4f32: $0d
    ld [bc], a                                    ; $4f33: $02
    db $fd                                        ; $4f34: $fd
    inc c                                         ; $4f35: $0c
    add hl, bc                                    ; $4f36: $09
    ld d, c                                       ; $4f37: $51
    ldh a, [$35]                                  ; $4f38: $f0 $35
    ld l, [hl]                                    ; $4f3a: $6e
    xor e                                         ; $4f3b: $ab
    xor a                                         ; $4f3c: $af
    rlca                                          ; $4f3d: $07
    and d                                         ; $4f3e: $a2
    ld [$8006], sp                                ; $4f3f: $08 $06 $80
    inc e                                         ; $4f42: $1c
    ld [bc], a                                    ; $4f43: $02

jr_094_4f44:
    adc b                                         ; $4f44: $88
    inc b                                         ; $4f45: $04
    ld d, $38                                     ; $4f46: $16 $38
    ld l, $47                                     ; $4f48: $2e $47
    ld c, b                                       ; $4f4a: $48
    db $f4                                        ; $4f4b: $f4
    dec d                                         ; $4f4c: $15
    nop                                           ; $4f4d: $00
    rst $38                                       ; $4f4e: $ff
    ld a, a                                       ; $4f4f: $7f
    ld bc, $f530                                  ; $4f50: $01 $30 $f5
    ld b, l                                       ; $4f53: $45
    nop                                           ; $4f54: $00
    ld [hl], $f7                                  ; $4f55: $36 $f7
    ld e, $38                                     ; $4f57: $1e $38
    sbc $1a                                       ; $4f59: $de $1a
    ld [$f41a], a                                 ; $4f5b: $ea $1a $f4
    ld a, [bc]                                    ; $4f5e: $0a
    ld b, $0d                                     ; $4f5f: $06 $0d
    inc bc                                        ; $4f61: $03
    inc d                                         ; $4f62: $14
    dec bc                                        ; $4f63: $0b
    dec hl                                        ; $4f64: $2b
    ld l, $a0                                     ; $4f65: $2e $a0
    ld c, d                                       ; $4f67: $4a
    ld c, $80                                     ; $4f68: $0e $80
    ld d, [hl]                                    ; $4f6a: $56
    ld b, $f4                                     ; $4f6b: $06 $f4
    set 4, b                                      ; $4f6d: $cb $e0
    rst $18                                       ; $4f6f: $df
    ldh [rNR41], a                                ; $4f70: $e0 $20
    rst $18                                       ; $4f72: $df
    pop hl                                        ; $4f73: $e1
    inc b                                         ; $4f74: $04
    nop                                           ; $4f75: $00
    push hl                                       ; $4f76: $e5
    rst $18                                       ; $4f77: $df
    ld [c], a                                     ; $4f78: $e2
    rst $18                                       ; $4f79: $df
    push af                                       ; $4f7a: $f5
    ld b, b                                       ; $4f7b: $40
    rst $18                                       ; $4f7c: $df
    add b                                         ; $4f7d: $80
    ld e, c                                       ; $4f7e: $59
    ld b, d                                       ; $4f7f: $42
    db $fd                                        ; $4f80: $fd
    jp z, $f5ff                                   ; $4f81: $ca $ff $f5

    rst $18                                       ; $4f84: $df
    ld a, [bc]                                    ; $4f85: $0a
    ret z                                         ; $4f86: $c8

    rst $38                                       ; $4f87: $ff
    db $f4                                        ; $4f88: $f4
    rst $18                                       ; $4f89: $df
    add [hl]                                      ; $4f8a: $86
    ld a, [de]                                    ; $4f8b: $1a
    ldh [$2e], a                                  ; $4f8c: $e0 $2e
    ld [bc], a                                    ; $4f8e: $02
    dec bc                                        ; $4f8f: $0b
    nop                                           ; $4f90: $00
    db $f4                                        ; $4f91: $f4
    rla                                           ; $4f92: $17
    add sp, $2f                                   ; $4f93: $e8 $2f
    ret nc                                        ; $4f95: $d0

    ld e, [hl]                                    ; $4f96: $5e
    and c                                         ; $4f97: $a1
    cp l                                          ; $4f98: $bd
    ld bc, $7a42                                  ; $4f99: $01 $42 $7a
    add l                                         ; $4f9c: $85
    push af                                       ; $4f9d: $f5
    ld a, [bc]                                    ; $4f9e: $0a
    push hl                                       ; $4f9f: $e5
    jp c, Jump_000_0a96                           ; $4fa0: $da $96 $0a

    and b                                         ; $4fa3: $a0
    add [hl]                                      ; $4fa4: $86
    ld b, d                                       ; $4fa5: $42
    dec d                                         ; $4fa6: $15
    sub [hl]                                      ; $4fa7: $96
    ld a, [bc]                                    ; $4fa8: $0a
    ld d, h                                       ; $4fa9: $54
    xor e                                         ; $4faa: $ab
    and b                                         ; $4fab: $a0
    ld e, a                                       ; $4fac: $5f
    ld [$f73c], sp                                ; $4fad: $08 $3c $f7
    add b                                         ; $4fb0: $80
    ld h, $02                                     ; $4fb1: $26 $02
    jp z, $dc0b                                   ; $4fb3: $ca $0b $dc

    ld a, [bc]                                    ; $4fb6: $0a
    xor d                                         ; $4fb7: $aa
    dec e                                         ; $4fb8: $1d
    ld b, b                                       ; $4fb9: $40
    cp a                                          ; $4fba: $bf
    ldh [$7a], a                                  ; $4fbb: $e0 $7a
    jr @+$0c                                      ; $4fbd: $18 $0a

    nop                                           ; $4fbf: $00
    cp $14                                        ; $4fc0: $fe $14
    nop                                           ; $4fc2: $00
    rst $38                                       ; $4fc3: $ff
    add sp, -$29                                  ; $4fc4: $e8 $d7
    db $f4                                        ; $4fc6: $f4
    ld [bc], a                                    ; $4fc7: $02
    bit 5, b                                      ; $4fc8: $cb $68
    rst $10                                       ; $4fca: $d7
    ld [hl], h                                    ; $4fcb: $74
    bit 0, b                                      ; $4fcc: $cb $40
    cp h                                          ; $4fce: $bc
    dec b                                         ; $4fcf: $05
    rra                                           ; $4fd0: $1f
    cp h                                          ; $4fd1: $bc
    cp $01                                        ; $4fd2: $fe $01
    ld b, b                                       ; $4fd4: $40
    jp nz, $bc07                                  ; $4fd5: $c2 $07 $bc

    ld a, [bc]                                    ; $4fd8: $0a
    ld [$a60a], sp                                ; $4fd9: $08 $0a $a6
    ld [$fa05], sp                                ; $4fdc: $08 $05 $fa
    ld [$f40b], sp                                ; $4fdf: $08 $0b $f4
    rlca                                          ; $4fe2: $07
    ld hl, sp+$70                                 ; $4fe3: $f8 $70
    jr z, @-$0a                                   ; $4fe5: $28 $f4

    dec bc                                        ; $4fe7: $0b
    ld [$1501], a                                 ; $4fe8: $ea $01 $15
    sub $29                                       ; $4feb: $d6 $29
    xor d                                         ; $4fed: $aa
    ld d, l                                       ; $4fee: $55
    ld b, d                                       ; $4fef: $42
    cp l                                          ; $4ff0: $bd
    add [hl]                                      ; $4ff1: $86
    ld a, [bc]                                    ; $4ff2: $0a
    nop                                           ; $4ff3: $00
    sub d                                         ; $4ff4: $92
    ld l, l                                       ; $4ff5: $6d
    ld [bc], a                                    ; $4ff6: $02
    db $fd                                        ; $4ff7: $fd
    cp a                                          ; $4ff8: $bf
    rst $38                                       ; $4ff9: $ff
    rst $08                                       ; $4ffa: $cf
    rst $38                                       ; $4ffb: $ff
    ld b, c                                       ; $4ffc: $41
    ldh a, [$0b]                                  ; $4ffd: $f0 $0b
    ld d, c                                       ; $4fff: $51
    rra                                           ; $5000: $1f
    rst $38                                       ; $5001: $ff
    rst $20                                       ; $5002: $e7
    rst $38                                       ; $5003: $ff
    ld sp, hl                                     ; $5004: $f9
    ld b, b                                       ; $5005: $40
    inc [hl]                                      ; $5006: $34

Call_094_5007:
    nop                                           ; $5007: $00
    ld [$d515], a                                 ; $5008: $ea $15 $d5
    ld a, [hl+]                                   ; $500b: $2a
    xor d                                         ; $500c: $aa
    ld d, l                                       ; $500d: $55
    ld d, b                                       ; $500e: $50
    xor a                                         ; $500f: $af
    inc bc                                        ; $5010: $03
    and b                                         ; $5011: $a0
    ld e, a                                       ; $5012: $5f
    nop                                           ; $5013: $00
    rst $38                                       ; $5014: $ff
    adc b                                         ; $5015: $88
    ld [hl], a                                    ; $5016: $77
    ld c, h                                       ; $5017: $4c
    ld c, $02                                     ; $5018: $0e $02
    jr jr_094_502c                                ; $501a: $18 $10

    ld a, [bc]                                    ; $501c: $0a
    db $fd                                        ; $501d: $fd
    ld [de], a                                    ; $501e: $12
    inc b                                         ; $501f: $04
    nop                                           ; $5020: $00
    ld d, d                                       ; $5021: $52
    db $fd                                        ; $5022: $fd
    ld b, b                                       ; $5023: $40
    cp a                                          ; $5024: $bf
    call nz, Call_000_0660                        ; $5025: $c4 $60 $06
    inc l                                         ; $5028: $2c
    inc de                                        ; $5029: $13
    dec b                                         ; $502a: $05
    rst $38                                       ; $502b: $ff

jr_094_502c:
    dec hl                                        ; $502c: $2b
    ld [de], a                                    ; $502d: $12
    rlca                                          ; $502e: $07
    ld a, [hl+]                                   ; $502f: $2a
    db $fd                                        ; $5030: $fd
    nop                                           ; $5031: $00
    ld e, d                                       ; $5032: $5a
    db $fd                                        ; $5033: $fd
    cp e                                          ; $5034: $bb
    db $fd                                        ; $5035: $fd
    ld a, d                                       ; $5036: $7a
    db $fd                                        ; $5037: $fd
    ei                                            ; $5038: $fb
    db $fd                                        ; $5039: $fd
    dec de                                        ; $503a: $1b
    ldh a, [rIE]                                  ; $503b: $f0 $ff
    db $eb                                        ; $503d: $eb
    sbc [hl]                                      ; $503e: $9e
    ld bc, $4966                                  ; $503f: $01 $66 $49
    cp $9c                                        ; $5042: $fe $9c
    rlca                                          ; $5044: $07
    ld b, b                                       ; $5045: $40
    ld c, c                                       ; $5046: $49
    adc b                                         ; $5047: $88
    call nc, Call_000_2f0f                        ; $5048: $d4 $0f $2f
    rst $38                                       ; $504b: $ff
    ld e, a                                       ; $504c: $5f
    ld a, [hl]                                    ; $504d: $7e
    ld [bc], a                                    ; $504e: $02
    ld a, l                                       ; $504f: $7d
    rst $38                                       ; $5050: $ff
    ld a, [$8680]                                 ; $5051: $fa $80 $86
    rla                                           ; $5054: $17
    xor d                                         ; $5055: $aa
    rst $38                                       ; $5056: $ff
    xor e                                         ; $5057: $ab
    db $fd                                        ; $5058: $fd
    ld b, c                                       ; $5059: $41
    rst $38                                       ; $505a: $ff
    ld hl, $40ab                                  ; $505b: $21 $ab $40
    ld [de], a                                    ; $505e: $12
    ld [bc], a                                    ; $505f: $02
    add b                                         ; $5060: $80
    rlca                                          ; $5061: $07
    xor d                                         ; $5062: $aa
    db $e4                                        ; $5063: $e4
    inc bc                                        ; $5064: $03
    and b                                         ; $5065: $a0
    cp h                                          ; $5066: $bc
    rla                                           ; $5067: $17
    xor [hl]                                      ; $5068: $ae
    rrca                                          ; $5069: $0f
    cp b                                          ; $506a: $b8
    inc h                                         ; $506b: $24
    cpl                                           ; $506c: $2f
    ld b, b                                       ; $506d: $40
    jp z, Jump_000_2011                           ; $506e: $ca $11 $20

    ld bc, $06fa                                  ; $5071: $01 $fa $06
    push af                                       ; $5074: $f5
    rst $38                                       ; $5075: $ff
    sbc $8a                                       ; $5076: $de $8a
    call c, Call_094_7f14                         ; $5078: $dc $14 $7f
    rst $38                                       ; $507b: $ff
    sbc a                                         ; $507c: $9f
    cp b                                          ; $507d: $b8
    db $10                                        ; $507e: $10
    ld d, l                                       ; $507f: $55
    jr jr_094_5085                                ; $5080: $18 $03

    push af                                       ; $5082: $f5
    dec hl                                        ; $5083: $2b
    rst $38                                       ; $5084: $ff

jr_094_5085:
    ld l, d                                       ; $5085: $6a
    cp d                                          ; $5086: $ba
    rlca                                          ; $5087: $07
    xor [hl]                                      ; $5088: $ae
    ld e, d                                       ; $5089: $5a
    inc d                                         ; $508a: $14
    ld d, b                                       ; $508b: $50
    ret nz                                        ; $508c: $c0

    rlca                                          ; $508d: $07
    call nc, Call_094_562f                        ; $508e: $d4 $2f $56
    ld [hl], l                                    ; $5091: $75
    jr nc, @+$15                                  ; $5092: $30 $13

Jump_094_5094:
    inc h                                         ; $5094: $24
    cp $07                                        ; $5095: $fe $07
    ld [bc], a                                    ; $5097: $02
    ld e, b                                       ; $5098: $58
    db $10                                        ; $5099: $10
    db $ec                                        ; $509a: $ec
    rlca                                          ; $509b: $07
    cp $f1                                        ; $509c: $fe $f1
    jr z, jr_094_50cd                             ; $509e: $28 $2d

    ld [bc], a                                    ; $50a0: $02
    ld [hl-], a                                   ; $50a1: $32
    ld c, b                                       ; $50a2: $48
    db $10                                        ; $50a3: $10
    ld l, $2d                                     ; $50a4: $2e $2d
    cp $fe                                        ; $50a6: $fe $fe
    or a                                          ; $50a8: $b7
    ld c, d                                       ; $50a9: $4a
    dec b                                         ; $50aa: $05
    ld b, b                                       ; $50ab: $40
    rst $30                                       ; $50ac: $f7
    inc e                                         ; $50ad: $1c
    ld [hl+], a                                   ; $50ae: $22
    rra                                           ; $50af: $1f
    rra                                           ; $50b0: $1f
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    ld d, [hl]                                    ; $50b3: $56
    cp $00                                        ; $50b4: $fe $00
    db $ec                                        ; $50b6: $ec
    db $fc                                        ; $50b7: $fc
    ld e, b                                       ; $50b8: $58
    ld hl, sp-$10                                 ; $50b9: $f8 $f0
    ldh a, [$e0]                                  ; $50bb: $f0 $e0
    ldh [$28], a                                  ; $50bd: $e0 $28
    ret nz                                        ; $50bf: $c0

    ret nz                                        ; $50c0: $c0

    call c, $fe0e                                 ; $50c1: $dc $0e $fe
    ld bc, $ac20                                  ; $50c4: $01 $20 $ac

jr_094_50c7:
    db $fc                                        ; $50c7: $fc
    inc c                                         ; $50c8: $0c
    inc b                                         ; $50c9: $04
    db $fc                                        ; $50ca: $fc
    inc e                                         ; $50cb: $1c
    db $fc                                        ; $50cc: $fc

jr_094_50cd:
    jr jr_094_50c7                                ; $50cd: $18 $f8

    adc $5f                                       ; $50cf: $ce $5f
    ld [bc], a                                    ; $50d1: $02
    rst $38                                       ; $50d2: $ff
    ld bc, $f838                                  ; $50d3: $01 $38 $f8
    jr c, @-$06                                   ; $50d6: $38 $f8

    ld [hl], b                                    ; $50d8: $70
    ldh a, [rSVBK]                                ; $50d9: $f0 $70
    jr nc, jr_094_50dd                            ; $50db: $30 $00

jr_094_50dd:
    adc l                                         ; $50dd: $8d
    ld [hl-], a                                   ; $50de: $32
    ld [$c0c0], sp                                ; $50df: $08 $c0 $c0
    add b                                         ; $50e2: $80
    ld bc, $8200                                  ; $50e3: $01 $00 $82
    ld c, l                                       ; $50e6: $4d
    pop bc                                        ; $50e7: $c1
    adc [hl]                                      ; $50e8: $8e
    rlca                                          ; $50e9: $07
    nop                                           ; $50ea: $00
    or b                                          ; $50eb: $b0
    rst $38                                       ; $50ec: $ff
    ld e, b                                       ; $50ed: $58
    ld a, a                                       ; $50ee: $7f
    ld l, h                                       ; $50ef: $6c
    ld a, a                                       ; $50f0: $7f
    ld a, [hl-]                                   ; $50f1: $3a
    ccf                                           ; $50f2: $3f
    nop                                           ; $50f3: $00
    dec d                                         ; $50f4: $15
    rra                                           ; $50f5: $1f
    ld a, [bc]                                    ; $50f6: $0a
    rrca                                          ; $50f7: $0f
    dec b                                         ; $50f8: $05
    rlca                                          ; $50f9: $07
    ld [bc], a                                    ; $50fa: $02
    inc bc                                        ; $50fb: $03
    dec hl                                        ; $50fc: $2b
    ld bc, $a401                                  ; $50fd: $01 $01 $a4
    dec a                                         ; $5100: $3d
    inc b                                         ; $5101: $04
    jp nc, Jump_000_2027                          ; $5102: $d2 $27 $20

    and $07                                       ; $5105: $e6 $07
    ld h, [hl]                                    ; $5107: $66
    inc c                                         ; $5108: $0c
    rst $28                                       ; $5109: $ef
    and h                                         ; $510a: $a4
    rra                                           ; $510b: $1f
    ld d, $08                                     ; $510c: $16 $08
    ld [de], a                                    ; $510e: $12
    nop                                           ; $510f: $00
    db $fd                                        ; $5110: $fd
    ld [de], a                                    ; $5111: $12
    jr jr_094_511c                                ; $5112: $18 $08

    ld [$07ea], sp                                ; $5114: $08 $ea $07
    inc e                                         ; $5117: $1c
    ld de, $e6c5                                  ; $5118: $11 $c5 $e6
    ld a, [de]                                    ; $511b: $1a

jr_094_511c:
    ldh a, [$1f]                                  ; $511c: $f0 $1f
    inc b                                         ; $511e: $04
    ei                                            ; $511f: $fb
    ld [$0528], sp                                ; $5120: $08 $28 $05
    ld hl, $034e                                  ; $5123: $21 $4e $03
    nop                                           ; $5126: $00
    add h                                         ; $5127: $84
    rst $38                                       ; $5128: $ff
    ld b, e                                       ; $5129: $43
    ld a, a                                       ; $512a: $7f
    jr nz, jr_094_516c                            ; $512b: $20 $3f

    jr jr_094_514e                                ; $512d: $18 $1f

    inc [hl]                                      ; $512f: $34
    inc b                                         ; $5130: $04
    rlca                                          ; $5131: $07
    call nc, $bb0e                                ; $5132: $d4 $0e $bb
    ld e, $c8                                     ; $5135: $1e $c8
    ld h, d                                       ; $5137: $62
    inc bc                                        ; $5138: $03
    adc h                                         ; $5139: $8c
    ld a, a                                       ; $513a: $7f
    sub [hl]                                      ; $513b: $96
    ld a, [c]                                     ; $513c: $f2
    rra                                           ; $513d: $1f

jr_094_513e:
    ld [hl+], a                                   ; $513e: $22
    db $dd                                        ; $513f: $dd
    ld e, b                                       ; $5140: $58
    jr nz, jr_094_513e                            ; $5141: $20 $fb

    ld e, d                                       ; $5143: $5a
    ld a, $ba                                     ; $5144: $3e $ba
    rra                                           ; $5146: $1f
    dec hl                                        ; $5147: $2b
    ld bc, $c4d7                                  ; $5148: $01 $d7 $c4
    ei                                            ; $514b: $fb
    ld [hl-], a                                   ; $514c: $32
    dec a                                         ; $514d: $3d

jr_094_514e:
    dec c                                         ; $514e: $0d
    ld c, $72                                     ; $514f: $0e $72
    ld l, $80                                     ; $5151: $2e $80
    ld e, d                                       ; $5153: $5a
    dec bc                                        ; $5154: $0b
    xor d                                         ; $5155: $aa
    ld e, a                                       ; $5156: $5f
    ld e, a                                       ; $5157: $5f
    and b                                         ; $5158: $a0
    xor a                                         ; $5159: $af
    ret nc                                        ; $515a: $d0

    ld [hl], l                                    ; $515b: $75
    add hl, de                                    ; $515c: $19
    ld a, d                                       ; $515d: $7a
    rrca                                          ; $515e: $0f
    rrca                                          ; $515f: $0f
    add c                                         ; $5160: $81
    ld c, $fc                                     ; $5161: $0e $fc
    inc c                                         ; $5163: $0c
    ld e, a                                       ; $5164: $5f
    rst $38                                       ; $5165: $ff
    xor $0f                                       ; $5166: $ee $0f
    nop                                           ; $5168: $00
    xor a                                         ; $5169: $af
    ret nc                                        ; $516a: $d0

    ld a, a                                       ; $516b: $7f

jr_094_516c:
    ld a, a                                       ; $516c: $7f
    xor e                                         ; $516d: $ab
    cp $f7                                        ; $516e: $fe $f7
    ld e, l                                       ; $5170: $5d
    and b                                         ; $5171: $a0
    adc a                                         ; $5172: $8f
    inc hl                                        ; $5173: $23
    ld e, l                                       ; $5174: $5d
    sbc h                                         ; $5175: $9c
    ld c, $07                                     ; $5176: $0e $07
    ld hl, sp-$61                                 ; $5178: $f8 $9f
    ldh [$30], a                                  ; $517a: $e0 $30
    nop                                           ; $517c: $00
    ret nz                                        ; $517d: $c0

    and b                                         ; $517e: $a0
    ret nz                                        ; $517f: $c0

    jr nz, @-$3e                                  ; $5180: $20 $c0

    adc d                                         ; $5182: $8a
    ldh [$9d], a                                  ; $5183: $e0 $9d
    jr @-$1e                                      ; $5185: $18 $e0

    xor a                                         ; $5187: $af
    ldh a, [rSB]                                  ; $5188: $f0 $01
    ld b, [hl]                                    ; $518a: $46
    ret c                                         ; $518b: $d8

    rlca                                          ; $518c: $07
    ld a, a                                       ; $518d: $7f

jr_094_518e:
    add b                                         ; $518e: $80
    ei                                            ; $518f: $fb
    ld b, l                                       ; $5190: $45
    xor a                                         ; $5191: $af
    dec hl                                        ; $5192: $2b
    ld e, $fe                                     ; $5193: $1e $fe
    xor e                                         ; $5195: $ab
    rst $18                                       ; $5196: $df
    ld bc, $ff0a                                  ; $5197: $01 $0a $ff
    ldh a, [rIF]                                  ; $519a: $f0 $0f
    add b                                         ; $519c: $80
    ld [hl], e                                    ; $519d: $73
    ld c, $ef                                     ; $519e: $0e $ef
    db $10                                        ; $51a0: $10
    ld e, l                                       ; $51a1: $5d
    and d                                         ; $51a2: $a2
    xor a                                         ; $51a3: $af
    ld d, b                                       ; $51a4: $50
    ld e, l                                       ; $51a5: $5d
    db $10                                        ; $51a6: $10
    and d                                         ; $51a7: $a2
    add b                                         ; $51a8: $80
    ld b, b                                       ; $51a9: $40
    dec sp                                        ; $51aa: $3b
    nop                                           ; $51ab: $00
    jr nz, jr_094_518e                            ; $51ac: $20 $e0

    db $10                                        ; $51ae: $10
    ldh [rSB], a                                  ; $51af: $e0 $01
    db $10                                        ; $51b1: $10
    ldh a, [rNR10]                                ; $51b2: $f0 $10
    ld h, b                                       ; $51b4: $60
    sub b                                         ; $51b5: $90
    ldh a, [rNR10]                                ; $51b6: $f0 $10
    ld d, h                                       ; $51b8: $54
    rrca                                          ; $51b9: $0f
    nop                                           ; $51ba: $00
    ld l, d                                       ; $51bb: $6a
    sub l                                         ; $51bc: $95
    db $fd                                        ; $51bd: $fd
    ld [bc], a                                    ; $51be: $02
    sbc $21                                       ; $51bf: $de $21
    ld a, a                                       ; $51c1: $7f
    add b                                         ; $51c2: $80
    nop                                           ; $51c3: $00
    cp l                                          ; $51c4: $bd
    ld b, d                                       ; $51c5: $42
    ld d, [hl]                                    ; $51c6: $56
    xor c                                         ; $51c7: $a9
    ldh [rNR10], a                                ; $51c8: $e0 $10
    ld d, b                                       ; $51ca: $50
    or b                                          ; $51cb: $b0
    nop                                           ; $51cc: $00
    ret nz                                        ; $51cd: $c0

    jr nz, jr_094_5230                            ; $51ce: $20 $60

    and b                                         ; $51d0: $a0
    add b                                         ; $51d1: $80
    ld h, b                                       ; $51d2: $60
    and b                                         ; $51d3: $a0
    ld h, b                                       ; $51d4: $60
    ld [$40c0], sp                                ; $51d5: $08 $c0 $40
    add b                                         ; $51d8: $80
    ld b, b                                       ; $51d9: $40
    ld h, b                                       ; $51da: $60
    inc e                                         ; $51db: $1c
    ld d, l                                       ; $51dc: $55
    xor d                                         ; $51dd: $aa
    ld a, [hl+]                                   ; $51de: $2a
    nop                                           ; $51df: $00
    push de                                       ; $51e0: $d5
    ld b, a                                       ; $51e1: $47
    cp c                                          ; $51e2: $b9

jr_094_51e3:
    rrca                                          ; $51e3: $0f
    pop af                                        ; $51e4: $f1
    dec b                                         ; $51e5: $05
    ei                                            ; $51e6: $fb
    ret nz                                        ; $51e7: $c0

    nop                                           ; $51e8: $00
    ld b, b                                       ; $51e9: $40
    ld b, b                                       ; $51ea: $40
    ret nz                                        ; $51eb: $c0

    ld b, b                                       ; $51ec: $40
    ldh [$a0], a                                  ; $51ed: $e0 $a0
    ret c                                         ; $51ef: $d8

    ld hl, sp+$01                                 ; $51f0: $f8 $01
    add [hl]                                      ; $51f2: $86
    ld l, [hl]                                    ; $51f3: $6e
    sub c                                         ; $51f4: $91
    ld a, e                                       ; $51f5: $7b
    add h                                         ; $51f6: $84
    xor l                                         ; $51f7: $ad
    ld d, d                                       ; $51f8: $52
    cp $56                                        ; $51f9: $fe $56
    add b                                         ; $51fb: $80
    adc l                                         ; $51fc: $8d
    ld bc, $fb06                                  ; $51fd: $01 $06 $fb
    ld [hl+], a                                   ; $5200: $22
    rst $18                                       ; $5201: $df
    ld c, $f7                                     ; $5202: $0e $f7
    inc b                                         ; $5204: $04
    and b                                         ; $5205: $a0
    cp b                                          ; $5206: $b8
    ld b, $0d                                     ; $5207: $06 $0d
    ld a, b                                       ; $5209: $78
    inc b                                         ; $520a: $04
    inc e                                         ; $520b: $1c
    rst $38                                       ; $520c: $ff
    ld e, a                                       ; $520d: $5f
    and b                                         ; $520e: $a0
    xor d                                         ; $520f: $aa
    nop                                           ; $5210: $00
    ld d, l                                       ; $5211: $55
    rla                                           ; $5212: $17
    jp hl                                         ; $5213: $e9


    ld c, e                                       ; $5214: $4b
    or l                                          ; $5215: $b5
    inc bc                                        ; $5216: $03
    db $fd                                        ; $5217: $fd
    ld bc, $ff07                                  ; $5218: $01 $07 $ff
    ld b, $fb                                     ; $521b: $06 $fb
    rlca                                          ; $521d: $07
    ld a, [$0824]                                 ; $521e: $fa $24 $08
    ld a, [hl+]                                   ; $5221: $2a
    db $10                                        ; $5222: $10
    ld b, a                                       ; $5223: $47
    nop                                           ; $5224: $00
    ld b, c                                       ; $5225: $41
    add b                                         ; $5226: $80
    ld c, h                                       ; $5227: $4c
    nop                                           ; $5228: $00
    ld a, [de]                                    ; $5229: $1a
    rst $38                                       ; $522a: $ff
    dec [hl]                                      ; $522b: $35
    rst $38                                       ; $522c: $ff
    ld a, [hl]                                    ; $522d: $7e
    ld l, [hl]                                    ; $522e: $6e
    ld a, [bc]                                    ; $522f: $0a

jr_094_5230:
    db $10                                        ; $5230: $10

jr_094_5231:
    sbc a                                         ; $5231: $9f
    add a                                         ; $5232: $87
    add a                                         ; $5233: $87
    xor b                                         ; $5234: $a8
    add hl, bc                                    ; $5235: $09
    xor d                                         ; $5236: $aa
    rst $30                                       ; $5237: $f7
    ld b, h                                       ; $5238: $44
    rst $38                                       ; $5239: $ff
    jr nz, jr_094_51e3                            ; $523a: $20 $a7

    rst $38                                       ; $523c: $ff
    ld [de], a                                    ; $523d: $12
    ld a, [hl-]                                   ; $523e: $3a
    add b                                         ; $523f: $80
    rst $38                                       ; $5240: $ff
    ld d, l                                       ; $5241: $55
    xor d                                         ; $5242: $aa
    ld a, [$8400]                                 ; $5243: $fa $00 $84
    ld [hl], a                                    ; $5246: $77
    add b                                         ; $5247: $80
    cp $81                                        ; $5248: $fe $81
    ld l, l                                       ; $524a: $6d
    sub e                                         ; $524b: $93
    jp c, $a700                                   ; $524c: $da $00 $a7

    ld l, c                                       ; $524f: $69
    add [hl]                                      ; $5250: $86
    nop                                           ; $5251: $00
    rst $38                                       ; $5252: $ff
    db $dd                                        ; $5253: $dd
    ld [hl+], a                                   ; $5254: $22
    ei                                            ; $5255: $fb
    nop                                           ; $5256: $00
    inc b                                         ; $5257: $04
    and b                                         ; $5258: $a0
    ld e, a                                       ; $5259: $5f
    ld e, [hl]                                    ; $525a: $5e
    rst $38                                       ; $525b: $ff
    ld a, l                                       ; $525c: $7d
    add d                                         ; $525d: $82
    cp $40                                        ; $525e: $fe $40
    ld bc, $07de                                  ; $5260: $01 $de $07
    add h                                         ; $5263: $84
    ld h, c                                       ; $5264: $61
    sbc [hl]                                      ; $5265: $9e
    db $f4                                        ; $5266: $f4
    adc a                                         ; $5267: $8f
    ld d, h                                       ; $5268: $54
    nop                                           ; $5269: $00
    adc a                                         ; $526a: $8f
    rst $10                                       ; $526b: $d7
    xor h                                         ; $526c: $ac
    ld [hl], a                                    ; $526d: $77
    adc h                                         ; $526e: $8c
    rst $30                                       ; $526f: $f7
    adc h                                         ; $5270: $8c
    ld d, l                                       ; $5271: $55
    nop                                           ; $5272: $00
    adc [hl]                                      ; $5273: $8e
    db $f4                                        ; $5274: $f4
    dec bc                                        ; $5275: $0b
    xor c                                         ; $5276: $a9
    ld d, a                                       ; $5277: $57
    ld b, l                                       ; $5278: $45
    cp [hl]                                       ; $5279: $be
    rst $30                                       ; $527a: $f7
    nop                                           ; $527b: $00
    ld hl, sp-$21                                 ; $527c: $f8 $df
    jr nz, @-$1f                                  ; $527e: $20 $df

    jr nz, jr_094_5231                            ; $5280: $20 $af

    ld [hl], b                                    ; $5282: $70
    ld [hl], e                                    ; $5283: $73
    nop                                           ; $5284: $00

jr_094_5285:
    db $fc                                        ; $5285: $fc
    or $8f                                        ; $5286: $f6 $8f
    dec [hl]                                      ; $5288: $35
    adc $f7                                       ; $5289: $ce $f7
    adc h                                         ; $528b: $8c
    ld h, a                                       ; $528c: $67
    nop                                           ; $528d: $00
    sbc h                                         ; $528e: $9c
    push af                                       ; $528f: $f5
    adc [hl]                                      ; $5290: $8e
    ld [hl], h                                    ; $5291: $74
    adc a                                         ; $5292: $8f
    db $d3                                        ; $5293: $d3
    adc a                                         ; $5294: $8f
    scf                                           ; $5295: $37
    nop                                           ; $5296: $00
    call z, $8f74                                 ; $5297: $cc $74 $8f
    push af                                       ; $529a: $f5
    dec bc                                        ; $529b: $0b
    rst $38                                       ; $529c: $ff
    ld [$00a7], sp                                ; $529d: $08 $a7 $00
    ld e, b                                       ; $52a0: $58
    ld c, e                                       ; $52a1: $4b
    cp h                                          ; $52a2: $bc
    jr @+$01                                      ; $52a3: $18 $ff

    dec l                                         ; $52a5: $2d
    db $d3                                        ; $52a6: $d3
    rst $38                                       ; $52a7: $ff
    nop                                           ; $52a8: $00
    stop                                          ; $52a9: $10 $00
    rst $38                                       ; $52ab: $ff
    cp e                                          ; $52ac: $bb
    inc b                                         ; $52ad: $04
    db $dd                                        ; $52ae: $dd
    jr nz, jr_094_52b1                            ; $52af: $20 $00

jr_094_52b1:
    ld [$1eff], sp                                ; $52b1: $08 $ff $1e
    rst $38                                       ; $52b4: $ff
    di                                            ; $52b5: $f3
    add hl, hl                                    ; $52b6: $29
    dec b                                         ; $52b7: $05
    ei                                            ; $52b8: $fb
    inc c                                         ; $52b9: $0c
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    rst $38                                       ; $52bc: $ff
    db $ed                                        ; $52bd: $ed
    ld [bc], a                                    ; $52be: $02
    cp e                                          ; $52bf: $bb
    ld b, b                                       ; $52c0: $40
    nop                                           ; $52c1: $00
    rst $38                                       ; $52c2: $ff
    rlca                                          ; $52c3: $07
    nop                                           ; $52c4: $00
    rst $38                                       ; $52c5: $ff
    ld sp, hl                                     ; $52c6: $f9
    rlca                                          ; $52c7: $07
    db $fd                                        ; $52c8: $fd
    inc bc                                        ; $52c9: $03
    db $fd                                        ; $52ca: $fd
    ld [bc], a                                    ; $52cb: $02
    ret nc                                        ; $52cc: $d0

    ld [bc], a                                    ; $52cd: $02
    ccf                                           ; $52ce: $3f
    inc a                                         ; $52cf: $3c
    jp Jump_000_24db                              ; $52d0: $c3 $db $24


    rst $20                                       ; $52d3: $e7
    ld b, c                                       ; $52d4: $41
    dec b                                         ; $52d5: $05
    rst $00                                       ; $52d6: $c7
    nop                                           ; $52d7: $00
    jr c, jr_094_5285                             ; $52d8: $38 $ab

    ld e, h                                       ; $52da: $5c
    ld d, e                                       ; $52db: $53
    cp a                                          ; $52dc: $bf
    ld a, e                                       ; $52dd: $7b
    add h                                         ; $52de: $84
    di                                            ; $52df: $f3
    nop                                           ; $52e0: $00
    db $fc                                        ; $52e1: $fc
    ret c                                         ; $52e2: $d8

    daa                                           ; $52e3: $27
    db $fd                                        ; $52e4: $fd
    inc hl                                        ; $52e5: $23
    xor $31                                       ; $52e6: $ee $31
    sub [hl]                                      ; $52e8: $96
    nop                                           ; $52e9: $00
    ld l, c                                       ; $52ea: $69
    dec bc                                        ; $52eb: $0b
    push af                                       ; $52ec: $f5
    or b                                          ; $52ed: $b0
    rst $08                                       ; $52ee: $cf
    ccf                                           ; $52ef: $3f
    ldh a, [$ef]                                  ; $52f0: $f0 $ef
    nop                                           ; $52f2: $00
    ldh a, [rIE]                                  ; $52f3: $f0 $ff
    db $10                                        ; $52f5: $10
    rst $30                                       ; $52f6: $f7
    jr jr_094_5344                                ; $52f7: $18 $4b

    cp h                                          ; $52f9: $bc
    sub b                                         ; $52fa: $90
    db $10                                        ; $52fb: $10
    ld l, a                                       ; $52fc: $6f
    cp d                                          ; $52fd: $ba
    rst $00                                       ; $52fe: $c7
    ld c, e                                       ; $52ff: $4b
    dec bc                                        ; $5300: $0b
    rst $30                                       ; $5301: $f7
    ld [$08ff], sp                                ; $5302: $08 $ff $08
    nop                                           ; $5305: $00
    xor a                                         ; $5306: $af
    ld e, b                                       ; $5307: $58
    ld b, d                                       ; $5308: $42
    cp l                                          ; $5309: $bd
    ld [hl], l                                    ; $530a: $75
    cp $b9                                        ; $530b: $fe $b9
    ld b, a                                       ; $530d: $47
    nop                                           ; $530e: $00
    cp [hl]                                       ; $530f: $be
    ld b, c                                       ; $5310: $41
    di                                            ; $5311: $f3
    adc h                                         ; $5312: $8c
    ld d, a                                       ; $5313: $57
    xor h                                         ; $5314: $ac
    ld a, [$0187]                                 ; $5315: $fa $87 $01
    ld a, [hl]                                    ; $5318: $7e
    add c                                         ; $5319: $81
    or a                                          ; $531a: $b7
    ret nz                                        ; $531b: $c0

    ld a, a                                       ; $531c: $7f
    add b                                         ; $531d: $80
    push de                                       ; $531e: $d5
    ld l, d                                       ; $531f: $6a
    dec b                                         ; $5320: $05
    nop                                           ; $5321: $00
    rst $28                                       ; $5322: $ef
    db $10                                        ; $5323: $10
    and $19                                       ; $5324: $e6 $19
    ret                                           ; $5326: $c9


    ld a, $5c                                     ; $5327: $3e $5c
    rst $38                                       ; $5329: $ff
    ld a, [bc]                                    ; $532a: $0a
    ret nc                                        ; $532b: $d0

    cpl                                           ; $532c: $2f
    ld a, e                                       ; $532d: $7b
    add b                                         ; $532e: $80
    ld [hl], h                                    ; $532f: $74

Call_094_5330:
    add hl, bc                                    ; $5330: $09
    rst $28                                       ; $5331: $ef
    ld a, [hl+]                                   ; $5332: $2a
    ld b, $bb                                     ; $5333: $06 $bb
    jr nz, @+$01                                  ; $5335: $20 $ff

    ld [hl], d                                    ; $5337: $72
    ldh a, [rTAC]                                 ; $5338: $f0 $07
    ld l, e                                       ; $533a: $6b
    rst $38                                       ; $533b: $ff
    sub $ff                                       ; $533c: $d6 $ff
    ld l, l                                       ; $533e: $6d
    nop                                           ; $533f: $00
    rst $38                                       ; $5340: $ff
    ld [hl], a                                    ; $5341: $77
    add b                                         ; $5342: $80
    rst $28                                       ; $5343: $ef

jr_094_5344:
    sub b                                         ; $5344: $90
    ld a, a                                       ; $5345: $7f
    add b                                         ; $5346: $80
    xor $68                                       ; $5347: $ee $68
    add c                                         ; $5349: $81
    or h                                          ; $534a: $b4
    ld bc, $17c6                                  ; $534b: $01 $c6 $17
    or d                                          ; $534e: $b2
    ld a, $04                                     ; $534f: $3e $04
    sbc $ff                                       ; $5351: $de $ff
    or a                                          ; $5353: $b7
    and b                                         ; $5354: $a0
    ld h, [hl]                                    ; $5355: $66
    ld b, $df                                     ; $5356: $06 $df
    ld d, [hl]                                    ; $5358: $56
    ld b, $5b                                     ; $5359: $06 $5b
    rst $38                                       ; $535b: $ff
    ld [$bf05], a                                 ; $535c: $ea $05 $bf
    ld b, $41                                     ; $535f: $06 $41
    cp $01                                        ; $5361: $fe $01
    ld [hl], a                                    ; $5363: $77
    add hl, bc                                    ; $5364: $09
    ret c                                         ; $5365: $d8

    ld bc, $17e6                                  ; $5366: $01 $e6 $17
    cp a                                          ; $5369: $bf
    ld [bc], a                                    ; $536a: $02
    ld b, b                                       ; $536b: $40
    xor [hl]                                      ; $536c: $ae
    ld d, c                                       ; $536d: $51
    ld d, h                                       ; $536e: $54
    db $eb                                        ; $536f: $eb
    push de                                       ; $5370: $d5
    cp b                                          ; $5371: $b8
    rlca                                          ; $5372: $07
    ei                                            ; $5373: $fb
    db $10                                        ; $5374: $10
    inc b                                         ; $5375: $04
    rst $18                                       ; $5376: $df
    nop                                           ; $5377: $00
    rlca                                          ; $5378: $07
    rlca                                          ; $5379: $07
    ld b, b                                       ; $537a: $40
    xor $51                                       ; $537b: $ee $51
    dec d                                         ; $537d: $15
    ld b, h                                       ; $537e: $44
    ld [$0ec8], a                                 ; $537f: $ea $c8 $0e
    ld a, a                                       ; $5382: $7f
    nop                                           ; $5383: $00
    or [hl]                                       ; $5384: $b6
    and l                                         ; $5385: $a5
    dec b                                         ; $5386: $05
    ld a, [hl]                                    ; $5387: $7e
    add c                                         ; $5388: $81
    nop                                           ; $5389: $00
    cp [hl]                                       ; $538a: $be
    ld b, c                                       ; $538b: $41
    inc d                                         ; $538c: $14
    db $eb                                        ; $538d: $eb
    db $f4                                        ; $538e: $f4
    rst $38                                       ; $538f: $ff
    dec bc                                        ; $5390: $0b
    db $f4                                        ; $5391: $f4
    db $10                                        ; $5392: $10
    cp l                                          ; $5393: $bd
    ld b, b                                       ; $5394: $40
    or $30                                        ; $5395: $f6 $30
    ld bc, $10ef                                  ; $5397: $01 $ef $10
    ld a, a                                       ; $539a: $7f
    nop                                           ; $539b: $00
    jr @-$03                                      ; $539c: $18 $fb

    nop                                           ; $539e: $00
    push af                                       ; $539f: $f5
    cp e                                          ; $53a0: $bb
    dec c                                         ; $53a1: $0d
    sbc $17                                       ; $53a2: $de $17
    db $fd                                        ; $53a4: $fd
    nop                                           ; $53a5: $00
    db $fc                                        ; $53a6: $fc

jr_094_53a7:
    rla                                           ; $53a7: $17
    nop                                           ; $53a8: $00
    db $fc                                        ; $53a9: $fc
    inc bc                                        ; $53aa: $03
    ld de, $df2e                                  ; $53ab: $11 $2e $df
    dec c                                         ; $53ae: $0d
    inc bc                                        ; $53af: $03
    add h                                         ; $53b0: $84
    ld a, [bc]                                    ; $53b1: $0a
    ld hl, $3e1e                                  ; $53b2: $21 $1e $3e
    cp a                                          ; $53b5: $bf
    ld b, b                                       ; $53b6: $40
    rst $30                                       ; $53b7: $f7
    rrca                                          ; $53b8: $0f
    sub h                                         ; $53b9: $94
    ld a, [bc]                                    ; $53ba: $0a
    sub l                                         ; $53bb: $95
    inc b                                         ; $53bc: $04

jr_094_53bd:
    dec [hl]                                      ; $53bd: $35
    ld [hl], $20                                  ; $53be: $36 $20
    jr z, jr_094_53bd                             ; $53c0: $28 $fb

    ldh [$58], a                                  ; $53c2: $e0 $58
    ld [de], a                                    ; $53c4: $12
    jr nc, jr_094_540f                            ; $53c5: $30 $48

    ld b, b                                       ; $53c7: $40
    ld [$00bf], sp                                ; $53c8: $08 $bf $00
    ccf                                           ; $53cb: $3f
    nop                                           ; $53cc: $00
    scf                                           ; $53cd: $37
    ld h, b                                       ; $53ce: $60
    ret z                                         ; $53cf: $c8

    ld b, b                                       ; $53d0: $40
    jr c, jr_094_53a7                             ; $53d1: $38 $d4

    dec bc                                        ; $53d3: $0b
    ccf                                           ; $53d4: $3f
    ccf                                           ; $53d5: $3f
    ld c, e                                       ; $53d6: $4b
    ld a, h                                       ; $53d7: $7c
    or l                                          ; $53d8: $b5
    nop                                           ; $53d9: $00
    adc $84                                       ; $53da: $ce $84
    rst $30                                       ; $53dc: $f7
    and h                                         ; $53dd: $a4
    rst $00                                       ; $53de: $c7
    add h                                         ; $53df: $84
    and h                                         ; $53e0: $a4
    adc l                                         ; $53e1: $8d
    ld [bc], a                                    ; $53e2: $02
    ld a, [c]                                     ; $53e3: $f2
    ld h, a                                       ; $53e4: $67
    add b                                         ; $53e5: $80
    ld b, b                                       ; $53e6: $40
    add b                                         ; $53e7: $80
    nop                                           ; $53e8: $00
    inc b                                         ; $53e9: $04
    nop                                           ; $53ea: $00
    ld [hl-], a                                   ; $53eb: $32
    nop                                           ; $53ec: $00
    ret nz                                        ; $53ed: $c0

    dec e                                         ; $53ee: $1d
    ldh [$80], a                                  ; $53ef: $e0 $80
    rst $38                                       ; $53f1: $ff
    rst $10                                       ; $53f2: $d7
    rst $38                                       ; $53f3: $ff
    sub l                                         ; $53f4: $95
    nop                                           ; $53f5: $00
    db $eb                                        ; $53f6: $eb
    xor [hl]                                      ; $53f7: $ae
    pop de                                        ; $53f8: $d1
    sbc l                                         ; $53f9: $9d
    ld [c], a                                     ; $53fa: $e2
    add d                                         ; $53fb: $82
    db $fd                                        ; $53fc: $fd
    ldh [$c0], a                                  ; $53fd: $e0 $c0
    ld b, b                                       ; $53ff: $40
    rla                                           ; $5400: $17
    inc b                                         ; $5401: $04
    inc c                                         ; $5402: $0c
    ldh [$e0], a                                  ; $5403: $e0 $e0
    sbc a                                         ; $5405: $9f
    ld a, a                                       ; $5406: $7f
    ld [hl], l                                    ; $5407: $75
    adc [hl]                                      ; $5408: $8e
    adc b                                         ; $5409: $88
    ldh [rTMA], a                                 ; $540a: $e0 $06
    db $e4                                        ; $540c: $e4
    cpl                                           ; $540d: $2f
    cpl                                           ; $540e: $2f

jr_094_540f:
    call c, $fe1b                                 ; $540f: $dc $1b $fe
    cp $f5                                        ; $5412: $fe $f5
    nop                                           ; $5414: $00
    dec c                                         ; $5415: $0d
    ld b, $c6                                     ; $5416: $06 $c6
    ld e, h                                       ; $5418: $5c
    ld e, h                                       ; $5419: $5c
    ldh [$e0], a                                  ; $541a: $e0 $e0
    ld b, e                                       ; $541c: $43
    nop                                           ; $541d: $00
    cp h                                          ; $541e: $bc
    and $18                                       ; $541f: $e6 $18
    inc [hl]                                      ; $5421: $34
    ld [$0018], sp                                ; $5422: $08 $18 $00
    ld a, [hl+]                                   ; $5425: $2a
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    ld d, l                                       ; $5428: $55
    ld [$0cb3], sp                                ; $5429: $08 $b3 $0c
    push de                                       ; $542c: $d5
    ccf                                           ; $542d: $3f
    ld c, a                                       ; $542e: $4f
    inc d                                         ; $542f: $14
    ld c, a                                       ; $5430: $4f
    ld a, $3e                                     ; $5431: $3e $3e
    jr c, jr_094_5441                             ; $5433: $38 $0c

    ld bc, $0001                                  ; $5435: $01 $01 $00
    ld [bc], a                                    ; $5438: $02
    inc bc                                        ; $5439: $03
    nop                                           ; $543a: $00
    rlca                                          ; $543b: $07
    dec b                                         ; $543c: $05
    dec b                                         ; $543d: $05
    rlca                                          ; $543e: $07
    ld c, $0a                                     ; $543f: $0e $0a

jr_094_5441:
    ld a, [bc]                                    ; $5441: $0a
    ld c, $20                                     ; $5442: $0e $20
    ld b, $06                                     ; $5444: $06 $06
    inc d                                         ; $5446: $14
    inc l                                         ; $5447: $2c
    cp $fe                                        ; $5448: $fe $fe
    ld a, a                                       ; $544a: $7f
    ld a, a                                       ; $544b: $7f

jr_094_544c:
    and a                                         ; $544c: $a7
    nop                                           ; $544d: $00
    and a                                         ; $544e: $a7
    and l                                         ; $544f: $a5
    and l                                         ; $5450: $a5
    ld b, l                                       ; $5451: $45
    rst $00                                       ; $5452: $c7
    ld b, d                                       ; $5453: $42
    jp Jump_000_2083                              ; $5454: $c3 $83 $20


    add d                                         ; $5457: $82
    ld [bc], a                                    ; $5458: $02
    adc [hl]                                      ; $5459: $8e
    inc de                                        ; $545a: $13
    add b                                         ; $545b: $80
    add b                                         ; $545c: $80
    ret nz                                        ; $545d: $c0

    ret nz                                        ; $545e: $c0

    and b                                         ; $545f: $a0
    ld bc, $d0a0                                  ; $5460: $01 $a0 $d0
    ldh a, [$b8]                                  ; $5463: $f0 $b8
    xor b                                         ; $5465: $a8
    sub h                                         ; $5466: $94
    sbc h                                         ; $5467: $9c
    jr c, jr_094_5472                             ; $5468: $38 $08

    sub b                                         ; $546a: $90
    jr nz, jr_094_54b9                            ; $546b: $20 $4c

    ld c, h                                       ; $546d: $4c
    call z, $0ae2                                 ; $546e: $cc $e2 $0a
    and b                                         ; $5471: $a0

jr_094_5472:
    ldh [$e0], a                                  ; $5472: $e0 $e0
    and b                                         ; $5474: $a0
    nop                                           ; $5475: $00
    sub b                                         ; $5476: $90
    ldh a, [$50]                                  ; $5477: $f0 $50
    ld [hl], b                                    ; $5479: $70
    ld h, b                                       ; $547a: $60

jr_094_547b:
    ld h, b                                       ; $547b: $60
    nop                                           ; $547c: $00
    dec c                                         ; $547d: $0d
    sub c                                         ; $547e: $91
    rlca                                          ; $547f: $07
    ld [de], a                                    ; $5480: $12
    rst $38                                       ; $5481: $ff
    rst $38                                       ; $5482: $ff
    add b                                         ; $5483: $80
    ld [bc], a                                    ; $5484: $02
    nop                                           ; $5485: $00
    ret nz                                        ; $5486: $c0

    cp a                                          ; $5487: $bf
    inc b                                         ; $5488: $04
    jr jr_094_544c                                ; $5489: $18 $c1

    nop                                           ; $548b: $00
    cp a                                          ; $548c: $bf
    rst $38                                       ; $548d: $ff
    rst $38                                       ; $548e: $ff
    nop                                           ; $548f: $00
    rst $38                                       ; $5490: $ff
    xor d                                         ; $5491: $aa
    ld d, l                                       ; $5492: $55
    nop                                           ; $5493: $00
    jp Jump_000_0006                              ; $5494: $c3 $06 $00


    ld [$ff00], sp                                ; $5497: $08 $00 $ff
    rst $38                                       ; $549a: $ff
    rst $38                                       ; $549b: $ff
    add e                                         ; $549c: $83
    inc d                                         ; $549d: $14
    nop                                           ; $549e: $00
    inc b                                         ; $549f: $04
    ld c, b                                       ; $54a0: $48
    nop                                           ; $54a1: $00
    jr z, jr_094_547b                             ; $54a2: $28 $d7

    ld d, l                                       ; $54a4: $55
    xor d                                         ; $54a5: $aa
    xor d                                         ; $54a6: $aa
    ld d, b                                       ; $54a7: $50
    ld d, l                                       ; $54a8: $55
    and b                                         ; $54a9: $a0
    nop                                           ; $54aa: $00
    add sp, $00                                   ; $54ab: $e8 $00
    ld d, c                                       ; $54ad: $51
    add b                                         ; $54ae: $80
    xor d                                         ; $54af: $aa
    nop                                           ; $54b0: $00
    ld d, h                                       ; $54b1: $54
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    xor b                                         ; $54b4: $a8
    ld d, a                                       ; $54b5: $57
    ld e, c                                       ; $54b6: $59
    ld h, $b7                                     ; $54b7: $26 $b7

jr_094_54b9:
    ld [$102d], sp                                ; $54b9: $08 $2d $10
    nop                                           ; $54bc: $00
    ld d, d                                       ; $54bd: $52
    jr nz, jr_094_54e4                            ; $54be: $20 $24

    nop                                           ; $54c0: $00
    ld h, b                                       ; $54c1: $60
    nop                                           ; $54c2: $00
    ld b, h                                       ; $54c3: $44
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    sub c                                         ; $54c6: $91
    ld l, [hl]                                    ; $54c7: $6e
    ld l, h                                       ; $54c8: $6c
    sub e                                         ; $54c9: $93
    push af                                       ; $54ca: $f5
    ld a, [bc]                                    ; $54cb: $0a
    ld e, e                                       ; $54cc: $5b
    inc b                                         ; $54cd: $04
    inc b                                         ; $54ce: $04
    ld a, $01                                     ; $54cf: $3e $01
    ld d, c                                       ; $54d1: $51
    nop                                           ; $54d2: $00
    add e                                         ; $54d3: $83
    jr nz, jr_094_54d6                            ; $54d4: $20 $00

jr_094_54d6:
    adc b                                         ; $54d6: $88

jr_094_54d7:
    nop                                           ; $54d7: $00
    jr nz, @+$04                                  ; $54d8: $20 $02

    nop                                           ; $54da: $00
    ld bc, $0a60                                  ; $54db: $01 $60 $0a
    ld a, [hl+]                                   ; $54de: $2a
    ld d, l                                       ; $54df: $55

Jump_094_54e0:
    ld a, a                                       ; $54e0: $7f
    add b                                         ; $54e1: $80
    ld b, $ca                                     ; $54e2: $06 $ca

jr_094_54e4:
    rst $38                                       ; $54e4: $ff
    inc bc                                        ; $54e5: $03
    ld e, a                                       ; $54e6: $5f
    inc bc                                        ; $54e7: $03
    ld bc, $1d00                                  ; $54e8: $01 $00 $1d
    nop                                           ; $54eb: $00
    xor d                                         ; $54ec: $aa
    ld e, l                                       ; $54ed: $5d
    nop                                           ; $54ee: $00
    ld [hl], l                                    ; $54ef: $75
    nop                                           ; $54f0: $00
    cp d                                          ; $54f1: $ba
    adc b                                         ; $54f2: $88
    ld [$0001], sp                                ; $54f3: $08 $01 $00
    dec l                                         ; $54f6: $2d
    ld l, b                                       ; $54f7: $68
    ld bc, $603e                                  ; $54f8: $01 $3e $60
    nop                                           ; $54fb: $00
    ld a, [hl+]                                   ; $54fc: $2a
    push de                                       ; $54fd: $d5
    pop de                                        ; $54fe: $d1
    ld l, $ae                                     ; $54ff: $2e $ae
    ld d, c                                       ; $5501: $51
    ld a, d                                       ; $5502: $7a
    add c                                         ; $5503: $81
    nop                                           ; $5504: $00

Jump_094_5505:
    push de                                       ; $5505: $d5
    ld [bc], a                                    ; $5506: $02
    adc h                                         ; $5507: $8c
    nop                                           ; $5508: $00
    ld c, c                                       ; $5509: $49
    nop                                           ; $550a: $00
    add d                                         ; $550b: $82
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    and [hl]                                      ; $550e: $a6
    ld e, c                                       ; $550f: $59
    ld c, c                                       ; $5510: $49
    or d                                          ; $5511: $b2
    ld e, [hl]                                    ; $5512: $5e
    and c                                         ; $5513: $a1
    xor c                                         ; $5514: $a9
    ld [bc], a                                    ; $5515: $02
    nop                                           ; $5516: $00
    ld e, e                                       ; $5517: $5b
    nop                                           ; $5518: $00
    dec d                                         ; $5519: $15
    jr nz, @+$6a                                  ; $551a: $20 $68

    nop                                           ; $551c: $00
    ld d, b                                       ; $551d: $50
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    and h                                         ; $5520: $a4
    ld e, e                                       ; $5521: $5b
    ld c, e                                       ; $5522: $4b
    or h                                          ; $5523: $b4
    and l                                         ; $5524: $a5
    ld e, d                                       ; $5525: $5a
    ld e, d                                       ; $5526: $5a
    and l                                         ; $5527: $a5
    ld bc, $0af5                                  ; $5528: $01 $f5 $0a
    ld d, [hl]                                    ; $552b: $56
    jr nz, jr_094_54d7                            ; $552c: $20 $a9

    ld b, b                                       ; $552e: $40
    sub d                                         ; $552f: $92
    ld a, h                                       ; $5530: $7c
    ld [$aa00], sp                                ; $5531: $08 $00 $aa
    ld a, [hl+]                                   ; $5534: $2a
    push de                                       ; $5535: $d5
    rst $38                                       ; $5536: $ff
    nop                                           ; $5537: $00
    and h                                         ; $5538: $a4
    rst $38                                       ; $5539: $ff
    ld bc, $ff30                                  ; $553a: $01 $30 $ff
    ld bc, $0001                                  ; $553d: $01 $01 $00
    adc l                                         ; $5540: $8d
    nop                                           ; $5541: $00
    xor a                                         ; $5542: $af
    inc [hl]                                      ; $5543: $34
    ei                                            ; $5544: $fb
    dec hl                                        ; $5545: $2b
    nop                                           ; $5546: $00
    db $f4                                        ; $5547: $f4
    ld [hl], l                                    ; $5548: $75
    ld a, [$ffde]                                 ; $5549: $fa $de $ff
    jp $c0cf                                      ; $554c: $c3 $cf $c0


jr_094_554f:
    nop                                           ; $554f: $00
    jp nz, Jump_000_3f01                          ; $5550: $c2 $01 $3f

    scf                                           ; $5553: $37
    rst $08                                       ; $5554: $cf
    sbc b                                         ; $5555: $98
    halt                                          ; $5556: $76
    halt                                          ; $5557: $76
    ld [$38ae], sp                                ; $5558: $08 $ae $38
    add $e6                                       ; $555b: $c6 $e6
    db $fc                                        ; $555d: $fc
    nop                                           ; $555e: $00
    inc c                                         ; $555f: $0c
    cp [hl]                                       ; $5560: $be
    ld [bc], a                                    ; $5561: $02
    nop                                           ; $5562: $00
    db $fd                                        ; $5563: $fd
    cp l                                          ; $5564: $bd
    pop bc                                        ; $5565: $c1
    ld h, l                                       ; $5566: $65
    sbc c                                         ; $5567: $99
    and l                                         ; $5568: $a5
    reti                                          ; $5569: $d9


    ld h, h                                       ; $556a: $64
    ld b, l                                       ; $556b: $45
    sbc b                                         ; $556c: $98
    ld [$8818], sp                                ; $556d: $08 $18 $88
    nop                                           ; $5570: $00
    ld de, $50c0                                  ; $5571: $11 $c0 $50
    and b                                         ; $5574: $a0
    sub d                                         ; $5575: $92
    ld h, b                                       ; $5576: $60
    nop                                           ; $5577: $00
    xor b                                         ; $5578: $a8
    ld d, a                                       ; $5579: $57
    rst $30                                       ; $557a: $f7
    pop af                                        ; $557b: $f1
    ld d, $11                                     ; $557c: $16 $11
    rst $30                                       ; $557e: $f7
    pop af                                        ; $557f: $f1
    ld [hl], $06                                  ; $5580: $36 $06
    ld bc, $1808                                  ; $5582: $01 $08 $18
    db $ed                                        ; $5585: $ed
    ld [$0280], sp                                ; $5586: $08 $80 $02
    db $10                                        ; $5589: $10
    rlca                                          ; $558a: $07
    ld [$c040], sp                                ; $558b: $08 $40 $c0
    ret nc                                        ; $558e: $d0

    ld [$00e0], sp                                ; $558f: $08 $e0 $00
    rst $10                                       ; $5592: $d7
    jr z, jr_094_554f                             ; $5593: $28 $ba

    rst $38                                       ; $5595: $ff
    ret nz                                        ; $5596: $c0

    rst $38                                       ; $5597: $ff
    ld h, b                                       ; $5598: $60
    ret nz                                        ; $5599: $c0

    ld bc, $8000                                  ; $559a: $01 $00 $80
    jr c, jr_094_55bd                             ; $559d: $38 $1e

    rst $38                                       ; $559f: $ff
    inc bc                                        ; $55a0: $03
    rrca                                          ; $55a1: $0f
    nop                                           ; $55a2: $00
    ld h, b                                       ; $55a3: $60
    ld [bc], a                                    ; $55a4: $02
    ld de, $2108                                  ; $55a5: $11 $08 $21
    ld e, c                                       ; $55a8: $59
    ld [bc], a                                    ; $55a9: $02
    nop                                           ; $55aa: $00
    ld [$2000], sp                                ; $55ab: $08 $00 $20
    jr nz, jr_094_55b0                            ; $55ae: $20 $00

jr_094_55b0:
    inc b                                         ; $55b0: $04
    sbc $00                                       ; $55b1: $de $00
    sub l                                         ; $55b3: $95
    ld [bc], a                                    ; $55b4: $02
    ld l, d                                       ; $55b5: $6a
    inc b                                         ; $55b6: $04
    nop                                           ; $55b7: $00
    adc b                                         ; $55b8: $88
    ld a, [bc]                                    ; $55b9: $0a
    nop                                           ; $55ba: $00
    ld c, b                                       ; $55bb: $48
    nop                                           ; $55bc: $00

jr_094_55bd:
    ld d, c                                       ; $55bd: $51
    ld d, h                                       ; $55be: $54
    nop                                           ; $55bf: $00
    ld a, [bc]                                    ; $55c0: $0a
    nop                                           ; $55c1: $00

jr_094_55c2:
    ld d, $02                                     ; $55c2: $16 $02
    nop                                           ; $55c4: $00
    xor b                                         ; $55c5: $a8
    inc b                                         ; $55c6: $04
    add hl, bc                                    ; $55c7: $09
    nop                                           ; $55c8: $00
    db $10                                        ; $55c9: $10
    ld h, b                                       ; $55ca: $60
    nop                                           ; $55cb: $00
    ld [bc], a                                    ; $55cc: $02
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    inc h                                         ; $55cf: $24
    nop                                           ; $55d0: $00
    ld b, l                                       ; $55d1: $45
    ld [$108a], sp                                ; $55d2: $08 $8a $10
    ld sp, $0000                                  ; $55d5: $31 $00 $00
    or a                                          ; $55d8: $b7
    ld c, b                                       ; $55d9: $48
    ld l, d                                       ; $55da: $6a
    sub l                                         ; $55db: $95
    pop bc                                        ; $55dc: $c1
    ld a, $d2                                     ; $55dd: $3e $d2
    nop                                           ; $55df: $00
    ld l, l                                       ; $55e0: $6d
    jr z, jr_094_55c2                             ; $55e1: $28 $df

    sub h                                         ; $55e3: $94
    ei                                            ; $55e4: $fb
    jp hl                                         ; $55e5: $e9


    rst $30                                       ; $55e6: $f7
    rst $38                                       ; $55e7: $ff
    nop                                           ; $55e8: $00
    rst $38                                       ; $55e9: $ff
    jp c, $9500                                   ; $55ea: $da $00 $95

    ld b, b                                       ; $55ed: $40
    ld a, d                                       ; $55ee: $7a
    add l                                         ; $55ef: $85
    sub d                                         ; $55f0: $92
    nop                                           ; $55f1: $00
    ld c, l                                       ; $55f2: $4d
    ld h, h                                       ; $55f3: $64
    sbc e                                         ; $55f4: $9b
    add c                                         ; $55f5: $81
    rst $38                                       ; $55f6: $ff
    ld l, e                                       ; $55f7: $6b
    cp $ff                                        ; $55f8: $fe $ff
    nop                                           ; $55fa: $00
    rst $38                                       ; $55fb: $ff
    xor e                                         ; $55fc: $ab
    ld b, b                                       ; $55fd: $40
    ld e, [hl]                                    ; $55fe: $5e
    add c                                         ; $55ff: $81
    ld [hl], l                                    ; $5600: $75
    adc d                                         ; $5601: $8a
    adc e                                         ; $5602: $8b
    nop                                           ; $5603: $00
    ld [hl], h                                    ; $5604: $74

Jump_094_5605:
    db $10                                        ; $5605: $10
    rst $28                                       ; $5606: $ef
    jp nc, Jump_000_257d                          ; $5607: $d2 $7d $25

    ei                                            ; $560a: $fb
    rst $38                                       ; $560b: $ff
    ld bc, $f5ff                                  ; $560c: $01 $ff $f5
    rst $38                                       ; $560f: $ff
    and d                                         ; $5610: $a2
    rst $38                                       ; $5611: $ff
    ld c, d                                       ; $5612: $4a
    push af                                       ; $5613: $f5
    call nz, Call_000_0001                        ; $5614: $c4 $01 $00
    ld d, l                                       ; $5617: $55
    ld e, l                                       ; $5618: $5d
    and d                                         ; $5619: $a2
    cp [hl]                                       ; $561a: $be
    ld b, c                                       ; $561b: $41

jr_094_561c:
    ld a, a                                       ; $561c: $7f
    add b                                         ; $561d: $80
    ld d, l                                       ; $561e: $55
    nop                                           ; $561f: $00
    rst $38                                       ; $5620: $ff
    dec b                                         ; $5621: $05
    ld a, [$54ab]                                 ; $5622: $fa $ab $54
    ld [hl], a                                    ; $5625: $77
    adc b                                         ; $5626: $88
    ei                                            ; $5627: $fb
    nop                                           ; $5628: $00
    inc b                                         ; $5629: $04
    rst $18                                       ; $562a: $df
    jr nz, jr_094_561c                            ; $562b: $20 $ef

    db $10                                        ; $562d: $10
    rst $30                                       ; $562e: $f7

Call_094_562f:
    ld [$0055], sp                                ; $562f: $08 $55 $00
    rst $38                                       ; $5632: $ff
    ld d, l                                       ; $5633: $55
    xor d                                         ; $5634: $aa
    cp a                                          ; $5635: $bf
    ld b, b                                       ; $5636: $40
    db $db                                        ; $5637: $db
    inc h                                         ; $5638: $24
    db $fd                                        ; $5639: $fd
    ld bc, $f702                                  ; $563a: $01 $02 $f7
    ld [$04fb], sp                                ; $563d: $08 $fb $04
    rst $38                                       ; $5640: $ff
    nop                                           ; $5641: $00
    ld [$8a29], sp                                ; $5642: $08 $29 $8a
    db $10                                        ; $5645: $10
    add hl, de                                    ; $5646: $19
    and [hl]                                      ; $5647: $a6
    ret c                                         ; $5648: $d8

    inc b                                         ; $5649: $04
    sbc h                                         ; $564a: $9c
    nop                                           ; $564b: $00
    ld [bc], a                                    ; $564c: $02
    ld [c], a                                     ; $564d: $e2
    nop                                           ; $564e: $00
    dec b                                         ; $564f: $05
    ld [bc], a                                    ; $5650: $02
    nop                                           ; $5651: $00
    dec hl                                        ; $5652: $2b
    nop                                           ; $5653: $00
    push bc                                       ; $5654: $c5
    ld [bc], a                                    ; $5655: $02
    adc d                                         ; $5656: $8a
    and b                                         ; $5657: $a0
    nop                                           ; $5658: $00
    ld [$9e83], sp                                ; $5659: $08 $83 $9e
    nop                                           ; $565c: $00
    adc b                                         ; $565d: $88
    nop                                           ; $565e: $00
    sub b                                         ; $565f: $90
    nop                                           ; $5660: $00
    ld hl, $1096                                  ; $5661: $21 $96 $10
    or b                                          ; $5664: $b0
    ld [$2810], sp                                ; $5665: $08 $10 $28
    nop                                           ; $5668: $00
    ld b, b                                       ; $5669: $40
    ld [hl], $01                                  ; $566a: $36 $01
    dec hl                                        ; $566c: $2b
    nop                                           ; $566d: $00
    ld d, [hl]                                    ; $566e: $56
    ld bc, $8b00                                  ; $566f: $01 $00 $8b
    nop                                           ; $5672: $00
    ld h, a                                       ; $5673: $67
    sbc b                                         ; $5674: $98
    cp a                                          ; $5675: $bf
    ret nz                                        ; $5676: $c0

    ld l, l                                       ; $5677: $6d
    add b                                         ; $5678: $80
    nop                                           ; $5679: $00
    xor d                                         ; $567a: $aa
    ret nz                                        ; $567b: $c0

    ld l, d                                       ; $567c: $6a
    add b                                         ; $567d: $80
    or [hl]                                       ; $567e: $b6
    ret nz                                        ; $567f: $c0

    ld a, a                                       ; $5680: $7f
    add b                                         ; $5681: $80
    nop                                           ; $5682: $00
    and c                                         ; $5683: $a1
    ret nz                                        ; $5684: $c0

    ld a, h                                       ; $5685: $7c
    add b                                         ; $5686: $80
    jp c, $af20                                   ; $5687: $da $20 $af

    ld d, b                                       ; $568a: $50
    ld bc, $c976                                  ; $568b: $01 $76 $c9
    ld c, c                                       ; $568e: $49
    or $a2                                        ; $568f: $f6 $a2
    db $dd                                        ; $5691: $dd
    add hl, hl                                    ; $5692: $29
    ld h, b                                       ; $5693: $60
    ld [bc], a                                    ; $5694: $02
    nop                                           ; $5695: $00
    ld c, d                                       ; $5696: $4a
    inc b                                         ; $5697: $04
    or h                                          ; $5698: $b4
    ld [$10ed], sp                                ; $5699: $08 $ed $10
    sbc [hl]                                      ; $569c: $9e
    ld h, b                                       ; $569d: $60
    inc b                                         ; $569e: $04
    ld d, l                                       ; $569f: $55
    ld [$d9e6], a                                 ; $56a0: $ea $e6 $d9
    ld d, b                                       ; $56a3: $50
    ld [hl], b                                    ; $56a4: $70
    ld [bc], a                                    ; $56a5: $02
    dec d                                         ; $56a6: $15
    ld [bc], a                                    ; $56a7: $02
    nop                                           ; $56a8: $00
    xor d                                         ; $56a9: $aa
    dec b                                         ; $56aa: $05
    ld d, h                                       ; $56ab: $54
    dec bc                                        ; $56ac: $0b
    jp hl                                         ; $56ad: $e9


    rla                                           ; $56ae: $17
    and h                                         ; $56af: $a4
    ld e, a                                       ; $56b0: $5f
    db $10                                        ; $56b1: $10
    jp z, $943f                                   ; $56b2: $ca $3f $94

    add b                                         ; $56b5: $80
    ld [bc], a                                    ; $56b6: $02
    ld a, [hl]                                    ; $56b7: $7e
    add b                                         ; $56b8: $80
    cp [hl]                                       ; $56b9: $be
    ret nz                                        ; $56ba: $c0

    inc b                                         ; $56bb: $04
    ld h, c                                       ; $56bc: $61
    add b                                         ; $56bd: $80
    cp a                                          ; $56be: $bf
    ret nz                                        ; $56bf: $c0

    ld [hl], l                                    ; $56c0: $75
    ld b, h                                       ; $56c1: $44
    db $10                                        ; $56c2: $10
    and b                                         ; $56c3: $a0

Call_094_56c4:
    ret nz                                        ; $56c4: $c0

    inc bc                                        ; $56c5: $03
    ld d, l                                       ; $56c6: $55
    rst $38                                       ; $56c7: $ff
    xor c                                         ; $56c8: $a9
    ld d, [hl]                                    ; $56c9: $56
    ld [hl], a                                    ; $56ca: $77
    adc b                                         ; $56cb: $88
    sbc a                                         ; $56cc: $9f
    ld [de], a                                    ; $56cd: $12
    and l                                         ; $56ce: $a5

jr_094_56cf:
    ld [de], a                                    ; $56cf: $12
    nop                                           ; $56d0: $00
    ld d, l                                       ; $56d1: $55
    rst $38                                       ; $56d2: $ff
    ld [hl], l                                    ; $56d3: $75
    adc d                                         ; $56d4: $8a
    rst $18                                       ; $56d5: $df
    jr nz, jr_094_56cf                            ; $56d6: $20 $f7

jr_094_56d8:
    ld [$12a1], sp                                ; $56d8: $08 $a1 $12
    jr z, @+$56                                   ; $56db: $28 $54

    ret nz                                        ; $56dd: $c0

    nop                                           ; $56de: $00
    cp d                                          ; $56df: $ba
    ld b, l                                       ; $56e0: $45
    rst $18                                       ; $56e1: $df
    jr nz, jr_094_5706                            ; $56e2: $20 $22

    jr z, jr_094_572b                             ; $56e4: $28 $45

    ld a, a                                       ; $56e6: $7f
    inc [hl]                                      ; $56e7: $34
    nop                                           ; $56e8: $00
    ld [hl], a                                    ; $56e9: $77
    add b                                         ; $56ea: $80
    cp e                                          ; $56eb: $bb
    inc b                                         ; $56ec: $04
    nop                                           ; $56ed: $00
    and b                                         ; $56ee: $a0
    add b                                         ; $56ef: $80
    nop                                           ; $56f0: $00
    jr nz, @-$56                                  ; $56f1: $20 $a8

    ret nz                                        ; $56f3: $c0

    xor b                                         ; $56f4: $a8
    add hl, hl                                    ; $56f5: $29
    ld b, $01                                     ; $56f6: $06 $01
    rst $10                                       ; $56f8: $d7
    pop de                                        ; $56f9: $d1
    halt                                          ; $56fa: $76
    inc c                                         ; $56fb: $0c
    ld [hl], c                                    ; $56fc: $71
    rlca                                          ; $56fd: $07
    ld bc, $a440                                  ; $56fe: $01 $40 $a4
    ld bc, $0804                                  ; $5701: $01 $04 $08
    nop                                           ; $5704: $00
    ret nz                                        ; $5705: $c0

jr_094_5706:
    and b                                         ; $5706: $a0
    ld [bc], a                                    ; $5707: $02
    ld [$2020], sp                                ; $5708: $08 $20 $20
    nop                                           ; $570b: $00
    add a                                         ; $570c: $87
    ld bc, $01c6                                  ; $570d: $01 $c6 $01
    rst $00                                       ; $5710: $c7
    add b                                         ; $5711: $80
    inc b                                         ; $5712: $04
    jr nc, jr_094_573e                            ; $5713: $30 $29

    ret nz                                        ; $5715: $c0

    jr nc, jr_094_56d8                            ; $5716: $30 $c0

    and b                                         ; $5718: $a0
    ret nz                                        ; $5719: $c0

    ld [hl+], a                                   ; $571a: $22
    nop                                           ; $571b: $00
    ret nz                                        ; $571c: $c0

    add h                                         ; $571d: $84
    ldh [$15], a                                  ; $571e: $e0 $15
    add sp, -$76                                  ; $5720: $e8 $8a
    ldh a, [rNR11]                                ; $5722: $f0 $11
    ld l, $e0                                     ; $5724: $2e $e0
    dec b                                         ; $5726: $05
    nop                                           ; $5727: $00
    ld h, c                                       ; $5728: $61
    add b                                         ; $5729: $80
    nop                                           ; $572a: $00

jr_094_572b:
    ld h, c                                       ; $572b: $61
    inc a                                         ; $572c: $3c
    ld c, b                                       ; $572d: $48
    ld c, b                                       ; $572e: $48
    ld [$009b], sp                                ; $572f: $08 $9b $00
    ldh [$4e], a                                  ; $5732: $e0 $4e
    pop af                                        ; $5734: $f1
    add l                                         ; $5735: $85
    ld a, [$f44b]                                 ; $5736: $fa $4b $f4
    add b                                         ; $5739: $80
    ld [$42ff], sp                                ; $573a: $08 $ff $42
    db $fd                                        ; $573d: $fd

jr_094_573e:
    and l                                         ; $573e: $a5
    add b                                         ; $573f: $80
    ld bc, $fffa                                  ; $5740: $01 $fa $ff
    ld hl, sp+$00                                 ; $5743: $f8 $00
    rst $38                                       ; $5745: $ff

jr_094_5746:
    ld a, [c]                                     ; $5746: $f2
    db $fd                                        ; $5747: $fd
    push af                                       ; $5748: $f5
    ld a, [$f5fa]                                 ; $5749: $fa $fa $f5
    push hl                                       ; $574c: $e5
    ld [bc], a                                    ; $574d: $02
    ld a, [$f1ee]                                 ; $574e: $fa $ee $f1
    rst $38                                       ; $5751: $ff
    ldh [$aa], a                                  ; $5752: $e0 $aa
    add b                                         ; $5754: $80
    ld bc, $00aa                                  ; $5755: $01 $aa $00
    ld d, l                                       ; $5758: $55
    rst $10                                       ; $5759: $d7
    jr z, jr_094_5746                             ; $575a: $28 $ea

    dec d                                         ; $575c: $15
    ld a, l                                       ; $575d: $7d
    add d                                         ; $575e: $82
    or a                                          ; $575f: $b7
    nop                                           ; $5760: $00
    ld c, b                                       ; $5761: $48
    ld a, e                                       ; $5762: $7b
    add h                                         ; $5763: $84
    xor d                                         ; $5764: $aa
    rst $38                                       ; $5765: $ff
    ld b, b                                       ; $5766: $40
    cp a                                          ; $5767: $bf
    xor d                                         ; $5768: $aa
    nop                                           ; $5769: $00
    ld d, l                                       ; $576a: $55
    push de                                       ; $576b: $d5
    ld a, [hl+]                                   ; $576c: $2a

jr_094_576d:
    cp d                                          ; $576d: $ba

jr_094_576e:
    ld b, l                                       ; $576e: $45
    ld a, l                                       ; $576f: $7d
    add d                                         ; $5770: $82
    cp [hl]                                       ; $5771: $be
    ld a, [bc]                                    ; $5772: $0a
    ld b, c                                       ; $5773: $41
    db $eb                                        ; $5774: $eb

Jump_094_5775:
    inc d                                         ; $5775: $14
    ret nz                                        ; $5776: $c0

    db $10                                        ; $5777: $10
    ld h, d                                       ; $5778: $62
    xor d                                         ; $5779: $aa
    and b                                         ; $577a: $a0
    inc bc                                        ; $577b: $03
    add h                                         ; $577c: $84

jr_094_577d:
    inc b                                         ; $577d: $04
    ld a, e                                       ; $577e: $7b
    ld d, d                                       ; $577f: $52
    xor l                                         ; $5780: $ad

jr_094_5781:
    add b                                         ; $5781: $80
    ld a, a                                       ; $5782: $7f
    call nz, $5f09                                ; $5783: $c4 $09 $5f
    and b                                         ; $5786: $a0
    add b                                         ; $5787: $80
    db $10                                        ; $5788: $10
    ld [$f708], sp                                ; $5789: $08 $08 $f7
    ld b, b                                       ; $578c: $40
    cp a                                          ; $578d: $bf
    ld [hl+], a                                   ; $578e: $22
    db $dd                                        ; $578f: $dd
    ld d, c                                       ; $5790: $51
    inc b                                         ; $5791: $04
    xor [hl]                                      ; $5792: $ae
    ld [$7515], a                                 ; $5793: $ea $15 $75

jr_094_5796:
    adc d                                         ; $5796: $8a
    jr nz, @+$0a                                  ; $5797: $20 $08

    add b                                         ; $5799: $80
    ld a, a                                       ; $579a: $7f
    nop                                           ; $579b: $00
    jr nz, jr_094_577d                            ; $579c: $20 $df

    ld c, b                                       ; $579e: $48
    or a                                          ; $579f: $b7
    jr nz, jr_094_5781                            ; $57a0: $20 $df

    ld [bc], a                                    ; $57a2: $02
    db $fd                                        ; $57a3: $fd
    ld bc, $af50                                  ; $57a4: $01 $50 $af
    xor d                                         ; $57a7: $aa
    rst $38                                       ; $57a8: $ff
    ld d, l                                       ; $57a9: $55
    rst $38                                       ; $57aa: $ff
    ld [bc], a                                    ; $57ab: $02
    ld [de], a                                    ; $57ac: $12
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    rst $38                                       ; $57b0: $ff
    inc h                                         ; $57b1: $24
    db $db                                        ; $57b2: $db
    db $10                                        ; $57b3: $10
    rst $28                                       ; $57b4: $ef
    jr nz, jr_094_5796                            ; $57b5: $20 $df

    nop                                           ; $57b7: $00
    add b                                         ; $57b8: $80
    ld a, a                                       ; $57b9: $7f
    ret nz                                        ; $57ba: $c0

    ld b, b                                       ; $57bb: $40
    adc a                                         ; $57bc: $8f
    ld b, b                                       ; $57bd: $40
    pop bc                                        ; $57be: $c1
    ld b, b                                       ; $57bf: $40
    db $10                                        ; $57c0: $10
    adc d                                         ; $57c1: $8a
    ld b, b                                       ; $57c2: $40
    rst $18                                       ; $57c3: $df
    inc b                                         ; $57c4: $04
    nop                                           ; $57c5: $00
    rst $10                                       ; $57c6: $d7
    ld b, b                                       ; $57c7: $40
    ld a, [bc]                                    ; $57c8: $0a
    push af                                       ; $57c9: $f5
    nop                                           ; $57ca: $00
    rra                                           ; $57cb: $1f
    jr nz, jr_094_576d                            ; $57cc: $20 $9f

    jr nz, jr_094_576e                            ; $57ce: $20 $9e

    inc hl                                        ; $57d0: $23
    adc l                                         ; $57d1: $8d
    ld [hl-], a                                   ; $57d2: $32
    daa                                           ; $57d3: $27
    adc a                                         ; $57d4: $8f
    ld [hl-], a                                   ; $57d5: $32
    inc b                                         ; $57d6: $04
    ld [$55aa], sp                                ; $57d7: $08 $aa $55
    ei                                            ; $57da: $fb
    dec bc                                        ; $57db: $0b
    ld a, [$6203]                                 ; $57dc: $fa $03 $62
    ld hl, $8000                                  ; $57df: $21 $00 $80
    ld b, b                                       ; $57e2: $40
    db $e3                                        ; $57e3: $e3
    ld a, h                                       ; $57e4: $7c
    sbc $41                                       ; $57e5: $de $41
    db $e4                                        ; $57e7: $e4
    ld a, b                                       ; $57e8: $78
    nop                                           ; $57e9: $00
    add $41                                       ; $57ea: $c6 $41
    rst $38                                       ; $57ec: $ff
    ld a, a                                       ; $57ed: $7f
    ret nz                                        ; $57ee: $c0

    ccf                                           ; $57ef: $3f
    rst $38                                       ; $57f0: $ff
    nop                                           ; $57f1: $00
    nop                                           ; $57f2: $00
    dec c                                         ; $57f3: $0d

jr_094_57f4:
    ld [hl-], a                                   ; $57f4: $32
    ld c, [hl]                                    ; $57f5: $4e
    inc sp                                        ; $57f6: $33
    ld c, a                                       ; $57f7: $4f
    ldh a, [$2f]                                  ; $57f8: $f0 $2f
    jr nc, jr_094_57ff                            ; $57fa: $30 $03

    ld l, a                                       ; $57fc: $6f
    ldh a, [$ef]                                  ; $57fd: $f0 $ef

jr_094_57ff:
    ldh a, [rIF]                                  ; $57ff: $f0 $0f
    ldh a, [$2c]                                  ; $5801: $f0 $2c
    ld e, b                                       ; $5803: $58
    jr nc, @+$12                                  ; $5804: $30 $10

    rst $10                                       ; $5806: $d7
    ld [hl], d                                    ; $5807: $72
    ld bc, $299d                                  ; $5808: $01 $9d $29
    ld d, l                                       ; $580b: $55
    ld b, b                                       ; $580c: $40
    inc b                                         ; $580d: $04
    nop                                           ; $580e: $00
    ld c, e                                       ; $580f: $4b
    inc b                                         ; $5810: $04
    db $10                                        ; $5811: $10
    ld c, b                                       ; $5812: $48
    ret nz                                        ; $5813: $c0

    ld [$5500], sp                                ; $5814: $08 $00 $55
    add b                                         ; $5817: $80
    pop hl                                        ; $5818: $e1
    nop                                           ; $5819: $00

jr_094_581a:
    ret nc                                        ; $581a: $d0

    nop                                           ; $581b: $00
    xor c                                         ; $581c: $a9
    nop                                           ; $581d: $00
    ld e, $dc                                     ; $581e: $1e $dc
    nop                                           ; $5820: $00

jr_094_5821:
    ld [$006a], a                                 ; $5821: $ea $6a $00
    jr z, jr_094_5826                             ; $5824: $28 $00

jr_094_5826:
    inc [hl]                                      ; $5826: $34
    inc de                                        ; $5827: $13
    daa                                           ; $5828: $27
    inc c                                         ; $5829: $0c
    ld b, b                                       ; $582a: $40
    ret                                           ; $582b: $c9


    db $10                                        ; $582c: $10
    jr nc, jr_094_5864                            ; $582d: $30 $35

    inc e                                         ; $582f: $1c
    add b                                         ; $5830: $80
    nop                                           ; $5831: $00
    sub b                                         ; $5832: $90
    jr jr_094_57f4                                ; $5833: $18 $bf

    ldh [$d2], a                                  ; $5835: $e0 $d2
    ld bc, $2042                                  ; $5837: $01 $42 $20
    inc b                                         ; $583a: $04
    ld [$55aa], sp                                ; $583b: $08 $aa $55
    cp $01                                        ; $583e: $fe $01
    ld [bc], a                                    ; $5840: $02
    ld b, b                                       ; $5841: $40
    ld b, c                                       ; $5842: $41
    db $10                                        ; $5843: $10
    rst $38                                       ; $5844: $ff
    nop                                           ; $5845: $00
    ei                                            ; $5846: $fb
    xor l                                         ; $5847: $ad
    inc b                                         ; $5848: $04
    cp $00                                        ; $5849: $fe $00
    ld a, a                                       ; $584b: $7f
    nop                                           ; $584c: $00
    jr @-$1f                                      ; $584d: $18 $df

    nop                                           ; $584f: $00
    db $ed                                        ; $5850: $ed
    ld [$2408], sp                                ; $5851: $08 $08 $24
    ld [bc], a                                    ; $5854: $02
    ld a, e                                       ; $5855: $7b
    add b                                         ; $5856: $80
    or a                                          ; $5857: $b7
    jr nc, jr_094_581a                            ; $5858: $30 $c0

    ld h, b                                       ; $585a: $60
    inc [hl]                                      ; $585b: $34
    ld [bc], a                                    ; $585c: $02
    ld e, b                                       ; $585d: $58
    inc b                                         ; $585e: $04
    rst $38                                       ; $585f: $ff
    rst $18                                       ; $5860: $df
    jr nz, jr_094_5821                            ; $5861: $20 $be

    nop                                           ; $5863: $00

jr_094_5864:
    pop hl                                        ; $5864: $e1
    cp $03                                        ; $5865: $fe $03
    cp $03                                        ; $5867: $fe $03
    rst $38                                       ; $5869: $ff
    inc bc                                        ; $586a: $03
    db $fd                                        ; $586b: $fd
    ld b, b                                       ; $586c: $40
    inc bc                                        ; $586d: $03
    push de                                       ; $586e: $d5
    inc c                                         ; $586f: $0c
    ld e, [hl]                                    ; $5870: $5e
    pop hl                                        ; $5871: $e1
    ld l, [hl]                                    ; $5872: $6e
    ld d, c                                       ; $5873: $51
    ld l, $19                                     ; $5874: $2e $19
    nop                                           ; $5876: $00
    xor [hl]                                      ; $5877: $ae
    add hl, de                                    ; $5878: $19
    ld e, $f9                                     ; $5879: $1e $f9
    or $f9                                        ; $587b: $f6 $f9
    ld e, $e1                                     ; $587d: $1e $e1
    ld bc, $01fe                                  ; $587f: $01 $fe $01
    ei                                            ; $5882: $fb
    nop                                           ; $5883: $00
    cp a                                          ; $5884: $bf
    nop                                           ; $5885: $00
    ld d, l                                       ; $5886: $55
    jp z, $1004                                   ; $5887: $ca $04 $10

    ld b, l                                       ; $588a: $45
    add b                                         ; $588b: $80
    and d                                         ; $588c: $a2
    cp c                                          ; $588d: $b9
    inc bc                                        ; $588e: $03
    ret z                                         ; $588f: $c8

    nop                                           ; $5890: $00
    add b                                         ; $5891: $80
    ld a, a                                       ; $5892: $7f
    nop                                           ; $5893: $00
    rst $38                                       ; $5894: $ff
    nop                                           ; $5895: $00
    push de                                       ; $5896: $d5
    nop                                           ; $5897: $00
    xor e                                         ; $5898: $ab
    nop                                           ; $5899: $00
    ld [hl], l                                    ; $589a: $75
    nop                                           ; $589b: $00
    ld b, b                                       ; $589c: $40
    xor b                                         ; $589d: $a8
    sbc $04                                       ; $589e: $de $04
    add hl, hl                                    ; $58a0: $29
    nop                                           ; $58a1: $00
    inc bc                                        ; $58a2: $03
    ld bc, $03fc                                  ; $58a3: $01 $fc $03
    ld [hl], h                                    ; $58a6: $74
    ld bc, $0514                                  ; $58a7: $01 $14 $05
    inc b                                         ; $58aa: $04
    ld [$08d0], sp                                ; $58ab: $08 $d0 $08
    dec h                                         ; $58ae: $25
    and e                                         ; $58af: $a3
    inc b                                         ; $58b0: $04
    ld de, $0080                                  ; $58b1: $11 $80 $00
    ldh [rP1], a                                  ; $58b4: $e0 $00
    db $10                                        ; $58b6: $10
    add b                                         ; $58b7: $80
    adc c                                         ; $58b8: $89
    nop                                           ; $58b9: $00
    db $10                                        ; $58ba: $10
    adc b                                         ; $58bb: $88
    dec d                                         ; $58bc: $15
    xor $10                                       ; $58bd: $ee $10
    db $10                                        ; $58bf: $10
    sbc b                                         ; $58c0: $98
    inc bc                                        ; $58c1: $03
    inc b                                         ; $58c2: $04
    db $e4                                        ; $58c3: $e4
    inc b                                         ; $58c4: $04
    ld c, b                                       ; $58c5: $48
    or d                                          ; $58c6: $b2
    inc bc                                        ; $58c7: $03
    ld a, [bc]                                    ; $58c8: $0a
    cp d                                          ; $58c9: $ba
    nop                                           ; $58ca: $00
    inc b                                         ; $58cb: $04
    ld b, b                                       ; $58cc: $40
    ret nc                                        ; $58cd: $d0

    jr jr_094_58d8                                ; $58ce: $18 $08

    ld [hl], $04                                  ; $58d0: $36 $04
    ld [$be80], sp                                ; $58d2: $08 $80 $be
    inc d                                         ; $58d5: $14
    xor d                                         ; $58d6: $aa
    rst $38                                       ; $58d7: $ff

jr_094_58d8:
    inc bc                                        ; $58d8: $03
    rst $38                                       ; $58d9: $ff
    ld e, b                                       ; $58da: $58
    nop                                           ; $58db: $00
    or b                                          ; $58dc: $b0
    add b                                         ; $58dd: $80
    ld [de], a                                    ; $58de: $12
    inc bc                                        ; $58df: $03
    ld hl, $5d40                                  ; $58e0: $21 $40 $5d
    inc hl                                        ; $58e3: $23
    dec hl                                        ; $58e4: $2b
    inc e                                         ; $58e5: $1c
    ld bc, $e000                                  ; $58e6: $01 $00 $e0
    ld b, b                                       ; $58e9: $40
    add b                                         ; $58ea: $80
    ld [hl], c                                    ; $58eb: $71
    add b                                         ; $58ec: $80
    ld l, $71                                     ; $58ed: $2e $71
    push af                                       ; $58ef: $f5
    nop                                           ; $58f0: $00
    ld c, [hl]                                    ; $58f1: $4e
    sub l                                         ; $58f2: $95
    ld b, e                                       ; $58f3: $43
    ld a, [hl+]                                   ; $58f4: $2a
    add c                                         ; $58f5: $81
    ld d, c                                       ; $58f6: $51
    nop                                           ; $58f7: $00
    inc bc                                        ; $58f8: $03
    nop                                           ; $58f9: $00
    ret nz                                        ; $58fa: $c0

    ld h, c                                       ; $58fb: $61
    ld b, b                                       ; $58fc: $40
    ld e, d                                       ; $58fd: $5a
    and c                                         ; $58fe: $a1
    dec c                                         ; $58ff: $0d
    ld e, $08                                     ; $5900: $1e $08
    inc bc                                        ; $5902: $03
    inc b                                         ; $5903: $04
    ld [hl], l                                    ; $5904: $75
    adc b                                         ; $5905: $88
    ld [$64f0], a                                 ; $5906: $ea $f0 $64
    ld b, b                                       ; $5909: $40
    ld d, d                                       ; $590a: $52
    ret nz                                        ; $590b: $c0

    ld [$cf0c], sp                                ; $590c: $08 $0c $cf
    ldh a, [$df]                                  ; $590f: $f0 $df
    ldh [$9f], a                                  ; $5911: $e0 $9f
    dec b                                         ; $5913: $05
    ld [bc], a                                    ; $5914: $02
    nop                                           ; $5915: $00
    ld a, a                                       ; $5916: $7f
    add b                                         ; $5917: $80
    ld b, $3f                                     ; $5918: $06 $3f
    add b                                         ; $591a: $80
    ld e, l                                       ; $591b: $5d
    add b                                         ; $591c: $80
    cp [hl]                                       ; $591d: $be
    ld a, [c]                                     ; $591e: $f2
    nop                                           ; $591f: $00
    cp $2a                                        ; $5920: $fe $2a
    rst $30                                       ; $5922: $f7
    sub h                                         ; $5923: $94
    db $fc                                        ; $5924: $fc
    nop                                           ; $5925: $00
    db $fd                                        ; $5926: $fd

jr_094_5927:
    ld [bc], a                                    ; $5927: $02
    inc c                                         ; $5928: $0c
    dec sp                                        ; $5929: $3b
    rst $18                                       ; $592a: $df
    ld l, h                                       ; $592b: $6c
    ld de, $00ff                                  ; $592c: $11 $ff $00
    ld b, [hl]                                    ; $592f: $46
    rst $10                                       ; $5930: $d7
    ret nz                                        ; $5931: $c0

    nop                                           ; $5932: $00
    push de                                       ; $5933: $d5
    nop                                           ; $5934: $00
    ld c, d                                       ; $5935: $4a
    sub d                                         ; $5936: $92
    inc bc                                        ; $5937: $03
    ld a, [hl]                                    ; $5938: $7e
    add hl, bc                                    ; $5939: $09
    rst $28                                       ; $593a: $ef
    ld a, [hl+]                                   ; $593b: $2a
    nop                                           ; $593c: $00
    ld d, a                                       ; $593d: $57
    ret nc                                        ; $593e: $d0

    nop                                           ; $593f: $00
    ld a, a                                       ; $5940: $7f
    call nc, $5500                                ; $5941: $d4 $00 $55
    ld l, e                                       ; $5944: $6b
    dec b                                         ; $5945: $05
    db $fd                                        ; $5946: $fd
    or a                                          ; $5947: $b7
    ld a, [hl+]                                   ; $5948: $2a
    ld bc, $dfbf                                  ; $5949: $01 $bf $df
    dec b                                         ; $594c: $05
    inc d                                         ; $594d: $14
    ld [$7b5d], sp                                ; $594e: $08 $5d $7b
    dec b                                         ; $5951: $05
    ld b, d                                       ; $5952: $42
    nop                                           ; $5953: $00
    db $ed                                        ; $5954: $ed
    dec b                                         ; $5955: $05
    ld b, c                                       ; $5956: $41
    cp e                                          ; $5957: $bb
    inc c                                         ; $5958: $0c
    nop                                           ; $5959: $00
    cp [hl]                                       ; $595a: $be
    nop                                           ; $595b: $00
    db $db                                        ; $595c: $db
    nop                                           ; $595d: $00
    xor h                                         ; $595e: $ac
    jp nz, Jump_094_5505                          ; $595f: $c2 $05 $55

    ld [hl+], a                                   ; $5962: $22
    or b                                          ; $5963: $b0
    dec b                                         ; $5964: $05
    db $10                                        ; $5965: $10
    or h                                          ; $5966: $b4
    dec [hl]                                      ; $5967: $35
    inc d                                         ; $5968: $14
    adc h                                         ; $5969: $8c
    inc d                                         ; $596a: $14
    add d                                         ; $596b: $82
    adc b                                         ; $596c: $88
    dec b                                         ; $596d: $05
    ld d, [hl]                                    ; $596e: $56
    ld b, b                                       ; $596f: $40
    jr @+$12                                      ; $5970: $18 $10

jr_094_5972:
    ld d, l                                       ; $5972: $55
    inc e                                         ; $5973: $1c
    ld bc, $5c14                                  ; $5974: $01 $14 $5c
    nop                                           ; $5977: $00
    sbc d                                         ; $5978: $9a
    dec c                                         ; $5979: $0d
    jr nz, jr_094_5927                            ; $597a: $20 $ab

    jp c, Jump_094_5605                           ; $597c: $da $05 $56

    cp a                                          ; $597f: $bf
    dec b                                         ; $5980: $05
    call nz, $0578                                ; $5981: $c4 $78 $05
    add hl, hl                                    ; $5984: $29
    or d                                          ; $5985: $b2
    inc b                                         ; $5986: $04
    cp l                                          ; $5987: $bd
    dec h                                         ; $5988: $25
    cp d                                          ; $5989: $ba
    push bc                                       ; $598a: $c5
    dec b                                         ; $598b: $05
    db $10                                        ; $598c: $10
    inc e                                         ; $598d: $1c
    db $10                                        ; $598e: $10
    sub $29                                       ; $598f: $d6 $29

jr_094_5991:
    ld bc, $080e                                  ; $5991: $01 $0e $08
    jp z, Jump_000_0a15                           ; $5994: $ca $15 $0a

    and d                                         ; $5997: $a2
    inc c                                         ; $5998: $0c
    ld d, $82                                     ; $5999: $16 $82
    cp d                                          ; $599b: $ba
    dec b                                         ; $599c: $05
    inc b                                         ; $599d: $04
    nop                                           ; $599e: $00
    inc de                                        ; $599f: $13
    call nz, $e004                                ; $59a0: $c4 $04 $e0

jr_094_59a3:
    nop                                           ; $59a3: $00
    jr jr_094_59ab                                ; $59a4: $18 $05

    nop                                           ; $59a6: $00
    ld c, e                                       ; $59a7: $4b
    nop                                           ; $59a8: $00
    ld h, $18                                     ; $59a9: $26 $18

jr_094_59ab:
    ld d, b                                       ; $59ab: $50
    nop                                           ; $59ac: $00
    jr nz, @+$22                                  ; $59ad: $20 $20

    ld b, b                                       ; $59af: $40
    jr nz, jr_094_5972                            ; $59b0: $20 $c0

    ld a, [de]                                    ; $59b2: $1a
    jr nz, jr_094_59c0                            ; $59b3: $20 $0b

    ld bc, $eb1c                                  ; $59b5: $01 $1c $eb
    inc d                                         ; $59b8: $14
    db $fd                                        ; $59b9: $fd
    ld [bc], a                                    ; $59ba: $02
    ld a, a                                       ; $59bb: $7f
    add b                                         ; $59bc: $80

jr_094_59bd:
    ldh [$3b], a                                  ; $59bd: $e0 $3b
    nop                                           ; $59bf: $00

jr_094_59c0:
    db $fc                                        ; $59c0: $fc
    inc bc                                        ; $59c1: $03
    or e                                          ; $59c2: $b3
    ld c, h                                       ; $59c3: $4c
    db $db                                        ; $59c4: $db
    inc h                                         ; $59c5: $24
    db $eb                                        ; $59c6: $eb
    rla                                           ; $59c7: $17
    nop                                           ; $59c8: $00
    db $e4                                        ; $59c9: $e4
    jr jr_094_59a3                                ; $59ca: $18 $d7

    jr nz, jr_094_59bd                            ; $59cc: $20 $ef

    jr nc, @-$2d                                  ; $59ce: $30 $d1

    ld a, $00                                     ; $59d0: $3e $00
    ld [hl-], a                                   ; $59d2: $32
    db $fd                                        ; $59d3: $fd
    ld d, c                                       ; $59d4: $51
    ldh [$ab], a                                  ; $59d5: $e0 $ab
    ld b, b                                       ; $59d7: $40
    sbc a                                         ; $59d8: $9f
    ldh [rP1], a                                  ; $59d9: $e0 $00
    and a                                         ; $59db: $a7
    ld a, b                                       ; $59dc: $78
    xor $1f                                       ; $59dd: $ee $1f
    push af                                       ; $59df: $f5
    jr jr_094_5991                                ; $59e0: $18 $af

    ld [hl], b                                    ; $59e2: $70
    jr nz, jr_094_59ed                            ; $59e3: $20 $08

    rst $30                                       ; $59e5: $f7
    ldh a, [$0a]                                  ; $59e6: $f0 $0a
    call nc, Call_094_6e23                        ; $59e8: $d4 $23 $6e
    pop bc                                        ; $59eb: $c1
    rst $18                                       ; $59ec: $df

jr_094_59ed:
    ld b, $e0                                     ; $59ed: $06 $e0
    xor a                                         ; $59ef: $af
    ld a, a                                       ; $59f0: $7f
    pop bc                                        ; $59f1: $c1
    ld a, $0c                                     ; $59f2: $3e $0c
    ld a, [bc]                                    ; $59f4: $0a
    ld [$fb09], sp                                ; $59f5: $08 $09 $fb
    and b                                         ; $59f8: $a0
    ld c, $02                                     ; $59f9: $0e $02
    ld d, [hl]                                    ; $59fb: $56
    ret c                                         ; $59fc: $d8

    nop                                           ; $59fd: $00
    rst $20                                       ; $59fe: $e7
    rra                                           ; $59ff: $1f
    call c, $7f03                                 ; $5a00: $dc $03 $7f
    and b                                         ; $5a03: $a0
    ld [hl-], a                                   ; $5a04: $32
    ld [bc], a                                    ; $5a05: $02
    ld a, l                                       ; $5a06: $7d
    ldh [rP1], a                                  ; $5a07: $e0 $00
    rst $30                                       ; $5a09: $f7
    nop                                           ; $5a0a: $00
    db $eb                                        ; $5a0b: $eb
    nop                                           ; $5a0c: $00
    ld l, e                                       ; $5a0d: $6b
    nop                                           ; $5a0e: $00
    sbc h                                         ; $5a0f: $9c
    sbc e                                         ; $5a10: $9b
    rlca                                          ; $5a11: $07
    ld a, a                                       ; $5a12: $7f
    add c                                         ; $5a13: $81
    sbc d                                         ; $5a14: $9a
    rst $20                                       ; $5a15: $e7
    ld [hl-], a                                   ; $5a16: $32
    nop                                           ; $5a17: $00
    db $fc                                        ; $5a18: $fc
    rst $30                                       ; $5a19: $f7
    nop                                           ; $5a1a: $00
    ld a, e                                       ; $5a1b: $7b
    nop                                           ; $5a1c: $00
    xor l                                         ; $5a1d: $ad
    nop                                           ; $5a1e: $00
    ld l, e                                       ; $5a1f: $6b
    ld bc, $75d4                                  ; $5a20: $01 $d4 $75
    adc d                                         ; $5a23: $8a
    ld a, d                                       ; $5a24: $7a
    add l                                         ; $5a25: $85
    cp a                                          ; $5a26: $bf
    ld b, b                                       ; $5a27: $40
    ld a, [hl+]                                   ; $5a28: $2a
    inc b                                         ; $5a29: $04
    xor d                                         ; $5a2a: $aa
    ld a, [bc]                                    ; $5a2b: $0a
    ld [bc], a                                    ; $5a2c: $02
    db $eb                                        ; $5a2d: $eb
    inc d                                         ; $5a2e: $14
    ld bc, $282e                                  ; $5a2f: $01 $2e $28
    ld bc, $2c8a                                  ; $5a32: $01 $8a $2c
    ld bc, $8a2a                                  ; $5a35: $01 $2a $8a
    db $e4                                        ; $5a38: $e4
    inc b                                         ; $5a39: $04
    ld [de], a                                    ; $5a3a: $12
    nop                                           ; $5a3b: $00
    ld [hl], a                                    ; $5a3c: $77
    inc c                                         ; $5a3d: $0c
    ld [de], a                                    ; $5a3e: $12
    xor d                                         ; $5a3f: $aa
    inc a                                         ; $5a40: $3c
    ld bc, $aa80                                  ; $5a41: $01 $80 $aa
    ld [hl], h                                    ; $5a44: $74
    dec b                                         ; $5a45: $05
    ld [de], a                                    ; $5a46: $12
    ld h, [hl]                                    ; $5a47: $66
    ld [bc], a                                    ; $5a48: $02
    db $eb                                        ; $5a49: $eb
    jr nz, jr_094_5a4e                            ; $5a4a: $20 $02

    ei                                            ; $5a4c: $fb
    inc a                                         ; $5a4d: $3c

jr_094_5a4e:
    ld bc, $0a2a                                  ; $5a4e: $01 $2a $0a
    nop                                           ; $5a51: $00
    sub l                                         ; $5a52: $95
    nop                                           ; $5a53: $00
    ld b, d                                       ; $5a54: $42
    ld d, b                                       ; $5a55: $50
    ld bc, $42fe                                  ; $5a56: $01 $fe $42
    ld [bc], a                                    ; $5a59: $02
    rst $18                                       ; $5a5a: $df
    ld [bc], a                                    ; $5a5b: $02
    nop                                           ; $5a5c: $00
    ld l, e                                       ; $5a5d: $6b
    nop                                           ; $5a5e: $00
    cp l                                          ; $5a5f: $bd
    nop                                           ; $5a60: $00
    sbc $60                                       ; $5a61: $de $60
    nop                                           ; $5a63: $00
    ld [$0e88], sp                                ; $5a64: $08 $88 $0e
    ld bc, $0038                                  ; $5a67: $01 $38 $00
    ld a, [bc]                                    ; $5a6a: $0a
    inc de                                        ; $5a6b: $13
    ld [bc], a                                    ; $5a6c: $02
    inc h                                         ; $5a6d: $24
    ld [bc], a                                    ; $5a6e: $02
    sbc e                                         ; $5a6f: $9b
    ld a, [bc]                                    ; $5a70: $0a
    inc b                                         ; $5a71: $04
    ret nc                                        ; $5a72: $d0

    jr c, @+$0a                                   ; $5a73: $38 $08

    inc c                                         ; $5a75: $0c
    dec b                                         ; $5a76: $05
    ld [hl+], a                                   ; $5a77: $22
    ld b, h                                       ; $5a78: $44
    ld b, $40                                     ; $5a79: $06 $40
    add e                                         ; $5a7b: $83
    call nc, $0105                                ; $5a7c: $d4 $05 $01
    add b                                         ; $5a7f: $80
    nop                                           ; $5a80: $00
    ld b, b                                       ; $5a81: $40
    add hl, hl                                    ; $5a82: $29
    ret nz                                        ; $5a83: $c0

    dec b                                         ; $5a84: $05
    ld [de], a                                    ; $5a85: $12
    rra                                           ; $5a86: $1f
    ld d, l                                       ; $5a87: $55
    ld [$152e], sp                                ; $5a88: $08 $2e $15
    ld e, l                                       ; $5a8b: $5d
    ld l, h                                       ; $5a8c: $6c
    ld [bc], a                                    ; $5a8d: $02
    dec d                                         ; $5a8e: $15
    inc h                                         ; $5a8f: $24
    rlca                                          ; $5a90: $07
    ld b, c                                       ; $5a91: $41
    db $f4                                        ; $5a92: $f4
    dec b                                         ; $5a93: $05
    adc d                                         ; $5a94: $8a
    halt                                          ; $5a95: $76
    add hl, bc                                    ; $5a96: $09
    push af                                       ; $5a97: $f5
    nop                                           ; $5a98: $00
    ld l, d                                       ; $5a99: $6a
    ld c, d                                       ; $5a9a: $4a
    nop                                           ; $5a9b: $00
    ld a, [$01a8]                                 ; $5a9c: $fa $a8 $01
    xor $28                                       ; $5a9f: $ee $28
    nop                                           ; $5aa1: $00
    ld [hl], a                                    ; $5aa2: $77
    ld [$2001], sp                                ; $5aa3: $08 $01 $20
    ld c, [hl]                                    ; $5aa6: $4e
    ld b, $42                                     ; $5aa7: $06 $42
    nop                                           ; $5aa9: $00
    add c                                         ; $5aaa: $81
    xor a                                         ; $5aab: $af
    or $05                                        ; $5aac: $f6 $05
    adc b                                         ; $5aae: $88
    sbc $06                                       ; $5aaf: $de $06
    ld [$1048], a                                 ; $5ab1: $ea $48 $10
    ld d, c                                       ; $5ab4: $51
    rrca                                          ; $5ab5: $0f
    ld l, [hl]                                    ; $5ab6: $6e
    add hl, bc                                    ; $5ab7: $09
    ld [hl-], a                                   ; $5ab8: $32
    ld [$bb00], sp                                ; $5ab9: $08 $00 $bb
    ld b, b                                       ; $5abc: $40
    ld a, a                                       ; $5abd: $7f
    add b                                         ; $5abe: $80
    cp e                                          ; $5abf: $bb
    ld b, h                                       ; $5ac0: $44
    ld e, a                                       ; $5ac1: $5f
    and b                                         ; $5ac2: $a0
    nop                                           ; $5ac3: $00
    xor [hl]                                      ; $5ac4: $ae
    ld d, c                                       ; $5ac5: $51
    ld b, a                                       ; $5ac6: $47
    cp b                                          ; $5ac7: $b8
    ld a, [hl+]                                   ; $5ac8: $2a
    push de                                       ; $5ac9: $d5
    dec b                                         ; $5aca: $05
    ld a, [$5550]                                 ; $5acb: $fa $50 $55
    ld d, h                                       ; $5ace: $54
    inc bc                                        ; $5acf: $03
    cp l                                          ; $5ad0: $bd
    db $10                                        ; $5ad1: $10
    inc bc                                        ; $5ad2: $03
    ei                                            ; $5ad3: $fb
    nop                                           ; $5ad4: $00
    db $fc                                        ; $5ad5: $fc
    ld bc, $de00                                  ; $5ad6: $01 $00 $de
    ld hl, $906f                                  ; $5ad9: $21 $6f $90
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    add h                                         ; $5ade: $84
    nop                                           ; $5adf: $00
    nop                                           ; $5ae0: $00
    pop de                                        ; $5ae1: $d1
    nop                                           ; $5ae2: $00
    adc h                                         ; $5ae3: $8c
    ld [hl], b                                    ; $5ae4: $70
    ld bc, $048c                                  ; $5ae5: $01 $8c $04
    inc bc                                        ; $5ae8: $03
    nop                                           ; $5ae9: $00
    and c                                         ; $5aea: $a1
    ld [bc], a                                    ; $5aeb: $02
    or l                                          ; $5aec: $b5
    jp nz, $bd42                                  ; $5aed: $c2 $42 $bd

    ld hl, $40de                                  ; $5af0: $21 $de $40

jr_094_5af3:
    add b                                         ; $5af3: $80
    ld de, $1201                                  ; $5af4: $11 $01 $12
    db $ed                                        ; $5af7: $ed
    ld c, c                                       ; $5af8: $49
    or $a4                                        ; $5af9: $f6 $a4
    ei                                            ; $5afb: $fb
    jr nz, jr_094_5af3                            ; $5afc: $20 $f5

    rst $38                                       ; $5afe: $ff
    inc a                                         ; $5aff: $3c
    ld [$55aa], sp                                ; $5b00: $08 $aa $55
    ld d, l                                       ; $5b03: $55
    xor d                                         ; $5b04: $aa
    xor b                                         ; $5b05: $a8
    nop                                           ; $5b06: $00
    ld d, a                                       ; $5b07: $57
    ld b, h                                       ; $5b08: $44
    cp e                                          ; $5b09: $bb
    add b                                         ; $5b0a: $80
    ld a, a                                       ; $5b0b: $7f
    ld d, d                                       ; $5b0c: $52
    db $fd                                        ; $5b0d: $fd
    ld [hl], d                                    ; $5b0e: $72
    nop                                           ; $5b0f: $00
    db $fd                                        ; $5b10: $fd
    ret nz                                        ; $5b11: $c0

    jr nc, @-$15                                  ; $5b12: $30 $e9

    db $10                                        ; $5b14: $10
    ld a, [hl]                                    ; $5b15: $7e
    adc b                                         ; $5b16: $88
    xor e                                         ; $5b17: $ab
    ld [hl+], a                                   ; $5b18: $22
    ld d, a                                       ; $5b19: $57
    ld d, l                                       ; $5b1a: $55
    jr c, jr_094_5b24                             ; $5b1b: $38 $07

    inc b                                         ; $5b1d: $04
    ei                                            ; $5b1e: $fb
    add c                                         ; $5b1f: $81
    ld a, l                                       ; $5b20: $7d
    ld [bc], a                                    ; $5b21: $02
    add b                                         ; $5b22: $80
    db $db                                        ; $5b23: $db

jr_094_5b24:
    inc b                                         ; $5b24: $04
    jr nz, jr_094_5b3d                            ; $5b25: $20 $16

    inc b                                         ; $5b27: $04
    rst $38                                       ; $5b28: $ff
    ld b, $0a                                     ; $5b29: $06 $0a
    sbc [hl]                                      ; $5b2b: $9e
    dec sp                                        ; $5b2c: $3b
    ld [$12fe], sp                                ; $5b2d: $08 $fe $12
    xor [hl]                                      ; $5b30: $ae

jr_094_5b31:
    dec sp                                        ; $5b31: $3b
    ld a, l                                       ; $5b32: $7d
    ld b, b                                       ; $5b33: $40
    cp h                                          ; $5b34: $bc
    ld b, $10                                     ; $5b35: $06 $10
    jr c, jr_094_5b31                             ; $5b37: $38 $f8

    add hl, de                                    ; $5b39: $19
    ld d, $08                                     ; $5b3a: $16 $08
    rst $38                                       ; $5b3c: $ff

jr_094_5b3d:
    ccf                                           ; $5b3d: $3f
    ld d, a                                       ; $5b3e: $57
    ld e, $01                                     ; $5b3f: $1e $01
    ld bc, $1008                                  ; $5b41: $01 $08 $10
    dec d                                         ; $5b44: $15
    ld a, b                                       ; $5b45: $78
    ld c, l                                       ; $5b46: $4d
    add [hl]                                      ; $5b47: $86
    ld [bc], a                                    ; $5b48: $02
    adc l                                         ; $5b49: $8d
    rlca                                          ; $5b4a: $07
    ld b, b                                       ; $5b4b: $40
    ld d, l                                       ; $5b4c: $55
    ld d, b                                       ; $5b4d: $50
    rlca                                          ; $5b4e: $07
    ld [hl], h                                    ; $5b4f: $74
    nop                                           ; $5b50: $00
    ld a, [de]                                    ; $5b51: $1a
    nop                                           ; $5b52: $00
    ld bc, $0110                                  ; $5b53: $01 $10 $01
    ret z                                         ; $5b56: $c8

    jr nz, @-$5a                                  ; $5b57: $20 $a4

    ret nz                                        ; $5b59: $c0

    ld d, b                                       ; $5b5a: $50
    add b                                         ; $5b5b: $80
    ld l, b                                       ; $5b5c: $68
    rlca                                          ; $5b5d: $07
    inc d                                         ; $5b5e: $14
    xor l                                         ; $5b5f: $ad
    ld d, b                                       ; $5b60: $50
    dec bc                                        ; $5b61: $0b
    db $10                                        ; $5b62: $10
    ld b, [hl]                                    ; $5b63: $46
    ld b, $14                                     ; $5b64: $06 $14
    jr nc, jr_094_5b7a                            ; $5b66: $30 $12

    ld l, $09                                     ; $5b68: $2e $09
    ld b, b                                       ; $5b6a: $40
    ld d, h                                       ; $5b6b: $54
    ld b, $80                                     ; $5b6c: $06 $80
    cp e                                          ; $5b6e: $bb
    rrca                                          ; $5b6f: $0f
    sub b                                         ; $5b70: $90
    nop                                           ; $5b71: $00
    ld a, [hl+]                                   ; $5b72: $2a
    add c                                         ; $5b73: $81
    or e                                          ; $5b74: $b3
    ld c, a                                       ; $5b75: $4f
    ld a, e                                       ; $5b76: $7b
    ld [bc], a                                    ; $5b77: $02
    inc a                                         ; $5b78: $3c
    db $db                                        ; $5b79: $db

jr_094_5b7a:
    jr nz, @-$3f                                  ; $5b7a: $20 $bf

    ret nz                                        ; $5b7c: $c0

    cp $fc                                        ; $5b7d: $fe $fc
    ld b, $5b                                     ; $5b7f: $06 $5b
    dec hl                                        ; $5b81: $2b
    and h                                         ; $5b82: $a4
    call c, Call_000_03bc                         ; $5b83: $dc $bc $03
    ld a, l                                       ; $5b86: $7d
    nop                                           ; $5b87: $00
    inc b                                         ; $5b88: $04
    db $dd                                        ; $5b89: $dd
    jr nc, @+$03                                  ; $5b8a: $30 $01

    ld d, $0e                                     ; $5b8c: $16 $0e
    ld d, l                                       ; $5b8e: $55
    daa                                           ; $5b8f: $27
    cp h                                          ; $5b90: $bc
    ld de, $c4ae                                  ; $5b91: $11 $ae $c4
    inc bc                                        ; $5b94: $03
    ld a, [$0414]                                 ; $5b95: $fa $14 $04
    rst $28                                       ; $5b98: $ef
    and d                                         ; $5b99: $a2
    ld bc, $a115                                  ; $5b9a: $01 $15 $a1
    nop                                           ; $5b9d: $00
    ld [hl], b                                    ; $5b9e: $70
    add e                                         ; $5b9f: $83
    rlca                                          ; $5ba0: $07
    push de                                       ; $5ba1: $d5
    ldh [rSC], a                                  ; $5ba2: $e0 $02
    ld a, a                                       ; $5ba4: $7f
    inc l                                         ; $5ba5: $2c
    inc b                                         ; $5ba6: $04
    ld b, d                                       ; $5ba7: $42
    dec d                                         ; $5ba8: $15
    ld h, c                                       ; $5ba9: $61
    rlca                                          ; $5baa: $07
    ld bc, $0a02                                  ; $5bab: $01 $02 $0a
    ld bc, $28b6                                  ; $5bae: $01 $b6 $28
    inc d                                         ; $5bb1: $14
    nop                                           ; $5bb2: $00
    ld [$0c0b], sp                                ; $5bb3: $08 $0b $0c
    ld l, l                                       ; $5bb6: $6d
    inc de                                        ; $5bb7: $13
    jp c, Jump_094_54e0                           ; $5bb8: $da $e0 $54

    add b                                         ; $5bbb: $80
    sub [hl]                                      ; $5bbc: $96
    ld de, $0010                                  ; $5bbd: $11 $10 $00
    add hl, bc                                    ; $5bc0: $09
    rlca                                          ; $5bc1: $07
    ld d, l                                       ; $5bc2: $55
    ld [bc], a                                    ; $5bc3: $02
    ld d, b                                       ; $5bc4: $50
    dec bc                                        ; $5bc5: $0b
    xor [hl]                                      ; $5bc6: $ae
    cp e                                          ; $5bc7: $bb
    ld a, h                                       ; $5bc8: $7c
    dec d                                         ; $5bc9: $15
    inc h                                         ; $5bca: $24
    nop                                           ; $5bcb: $00
    sub b                                         ; $5bcc: $90
    db $f4                                        ; $5bcd: $f4
    ld [de], a                                    ; $5bce: $12
    jp nc, $5608                                  ; $5bcf: $d2 $08 $56

    ld [bc], a                                    ; $5bd2: $02
    sbc [hl]                                      ; $5bd3: $9e
    ld de, $ca84                                  ; $5bd4: $11 $84 $ca
    jr nc, jr_094_5bdd                            ; $5bd7: $30 $04

    add [hl]                                      ; $5bd9: $86
    rlca                                          ; $5bda: $07
    ld [de], a                                    ; $5bdb: $12
    dec bc                                        ; $5bdc: $0b

jr_094_5bdd:
    and h                                         ; $5bdd: $a4
    db $dd                                        ; $5bde: $dd
    and $13                                       ; $5bdf: $e6 $13
    db $f4                                        ; $5be1: $f4
    rrca                                          ; $5be2: $0f
    db $10                                        ; $5be3: $10
    ldh a, [rNR13]                                ; $5be4: $f0 $13
    ld e, $49                                     ; $5be6: $1e $49
    jp z, $800f                                   ; $5be8: $ca $0f $80

    ret z                                         ; $5beb: $c8

    rlca                                          ; $5bec: $07
    ld l, d                                       ; $5bed: $6a
    ld b, d                                       ; $5bee: $42
    call z, Call_094_5007                         ; $5bef: $cc $07 $50
    ld a, [bc]                                    ; $5bf2: $0a
    xor a                                         ; $5bf3: $af
    call c, $fa01                                 ; $5bf4: $dc $01 $fa
    jp z, Jump_000_2807                           ; $5bf7: $ca $07 $28

    and e                                         ; $5bfa: $a3
    adc b                                         ; $5bfb: $88
    inc bc                                        ; $5bfc: $03
    cp d                                          ; $5bfd: $ba
    ld a, h                                       ; $5bfe: $7c
    inc bc                                        ; $5bff: $03
    xor [hl]                                      ; $5c00: $ae
    nop                                           ; $5c01: $00
    ld e, a                                       ; $5c02: $5f
    cp h                                          ; $5c03: $bc
    inc b                                         ; $5c04: $04
    ld a, [$570c]                                 ; $5c05: $fa $0c $57
    ld c, b                                       ; $5c08: $48
    and h                                         ; $5c09: $a4
    ld bc, $a4d0                                  ; $5c0a: $01 $d0 $a4
    db $10                                        ; $5c0d: $10
    xor $3a                                       ; $5c0e: $ee $3a
    rlca                                          ; $5c10: $07
    ld a, h                                       ; $5c11: $7c
    dec bc                                        ; $5c12: $0b
    ld c, d                                       ; $5c13: $4a
    add hl, bc                                    ; $5c14: $09
    ld d, b                                       ; $5c15: $50
    and d                                         ; $5c16: $a2
    inc d                                         ; $5c17: $14
    ld [bc], a                                    ; $5c18: $02
    xor d                                         ; $5c19: $aa
    jp $0104                                      ; $5c1a: $c3 $04 $01


    rst $38                                       ; $5c1d: $ff
    add e                                         ; $5c1e: $83
    ld a, a                                       ; $5c1f: $7f
    ld h, e                                       ; $5c20: $63
    ld bc, $0446                                  ; $5c21: $01 $46 $04
    inc b                                         ; $5c24: $04
    ld [$bfc1], sp                                ; $5c25: $08 $c1 $bf
    ld a, l                                       ; $5c28: $7d
    ld a, [$b416]                                 ; $5c29: $fa $16 $b4
    dec bc                                        ; $5c2c: $0b
    ld b, l                                       ; $5c2d: $45
    rst $18                                       ; $5c2e: $df
    jp c, $ff03                                   ; $5c2f: $da $03 $ff

    nop                                           ; $5c32: $00
    or a                                          ; $5c33: $b7
    or [hl]                                       ; $5c34: $b6
    inc bc                                        ; $5c35: $03
    ld l, l                                       ; $5c36: $6d
    ld c, $17                                     ; $5c37: $0e $17
    ld d, l                                       ; $5c39: $55
    ld a, l                                       ; $5c3a: $7d
    ret c                                         ; $5c3b: $d8

    inc de                                        ; $5c3c: $13
    ld [hl], l                                    ; $5c3d: $75
    db $fc                                        ; $5c3e: $fc
    nop                                           ; $5c3f: $00
    rst $10                                       ; $5c40: $d7
    jp c, $bf02                                   ; $5c41: $da $02 $bf

    ld hl, sp+$03                                 ; $5c44: $f8 $03
    add c                                         ; $5c46: $81
    ldh a, [$08]                                  ; $5c47: $f0 $08
    sub b                                         ; $5c49: $90

jr_094_5c4a:
    ldh [$0d], a                                  ; $5c4a: $e0 $0d
    db $10                                        ; $5c4c: $10
    ld b, $0f                                     ; $5c4d: $06 $0f
    ld h, [hl]                                    ; $5c4f: $66
    rrca                                          ; $5c50: $0f
    db $10                                        ; $5c51: $10
    and d                                         ; $5c52: $a2
    ldh a, [rLY]                                  ; $5c53: $f0 $44
    and [hl]                                      ; $5c55: $a6
    rlca                                          ; $5c56: $07
    add b                                         ; $5c57: $80
    ld b, b                                       ; $5c58: $40
    ld d, b                                       ; $5c59: $50
    add b                                         ; $5c5a: $80
    ld e, d                                       ; $5c5b: $5a
    and b                                         ; $5c5c: $a0
    or b                                          ; $5c5d: $b0
    inc bc                                        ; $5c5e: $03
    xor b                                         ; $5c5f: $a8
    ld [$7303], a                                 ; $5c60: $ea $03 $73
    dec c                                         ; $5c63: $0d
    ld bc, $257a                                  ; $5c64: $01 $7a $25
    ld de, $a4c7                                  ; $5c67: $11 $c7 $a4
    inc de                                        ; $5c6a: $13
    ld e, d                                       ; $5c6b: $5a
    ld a, [de]                                    ; $5c6c: $1a
    ld [de], a                                    ; $5c6d: $12
    nop                                           ; $5c6e: $00
    add hl, bc                                    ; $5c6f: $09
    cp h                                          ; $5c70: $bc
    ld d, e                                       ; $5c71: $53
    di                                            ; $5c72: $f3
    add hl, sp                                    ; $5c73: $39
    jr @+$0e                                      ; $5c74: $18 $0c

    db $ed                                        ; $5c76: $ed
    ret z                                         ; $5c77: $c8

    dec bc                                        ; $5c78: $0b
    add d                                         ; $5c79: $82
    ld a, [de]                                    ; $5c7a: $1a
    jp nc, $010b                                  ; $5c7b: $d2 $0b $01

    jr jr_094_5c91                                ; $5c7e: $18 $11

    and h                                         ; $5c80: $a4
    ld c, $00                                     ; $5c81: $0e $00
    db $10                                        ; $5c83: $10
    inc d                                         ; $5c84: $14
    ld [hl], h                                    ; $5c85: $74
    adc b                                         ; $5c86: $88
    db $10                                        ; $5c87: $10
    ld [de], a                                    ; $5c88: $12
    xor $0a                                       ; $5c89: $ee $0a
    ld a, [$aa0a]                                 ; $5c8b: $fa $0a $aa
    jp z, Jump_000_2025                           ; $5c8e: $ca $25 $20

jr_094_5c91:
    nop                                           ; $5c91: $00
    ld b, h                                       ; $5c92: $44
    rlca                                          ; $5c93: $07
    inc h                                         ; $5c94: $24
    rlca                                          ; $5c95: $07
    ld b, b                                       ; $5c96: $40
    db $10                                        ; $5c97: $10
    add hl, sp                                    ; $5c98: $39
    ld e, c                                       ; $5c99: $59
    inc h                                         ; $5c9a: $24
    ld c, $01                                     ; $5c9b: $0e $01
    nop                                           ; $5c9d: $00
    ld de, $8000                                  ; $5c9e: $11 $00 $80
    ld h, b                                       ; $5ca1: $60
    xor b                                         ; $5ca2: $a8
    ld b, b                                       ; $5ca3: $40
    ld d, h                                       ; $5ca4: $54
    ldh [rDIV], a                                 ; $5ca5: $e0 $04
    nop                                           ; $5ca7: $00
    nop                                           ; $5ca8: $00
    jr jr_094_5cab                                ; $5ca9: $18 $00

jr_094_5cab:
    ld h, [hl]                                    ; $5cab: $66
    ld a, [de]                                    ; $5cac: $1a
    inc bc                                        ; $5cad: $03

jr_094_5cae:
    ld h, l                                       ; $5cae: $65
    add b                                         ; $5caf: $80
    ld bc, $75aa                                  ; $5cb0: $01 $aa $75
    ld d, $0f                                     ; $5cb3: $16 $0f
    inc c                                         ; $5cb5: $0c
    ld [bc], a                                    ; $5cb6: $02
    inc h                                         ; $5cb7: $24
    ld b, h                                       ; $5cb8: $44
    ld h, c                                       ; $5cb9: $61
    ld a, e                                       ; $5cba: $7b
    ld bc, $038c                                  ; $5cbb: $01 $8c $03
    ld d, c                                       ; $5cbe: $51
    ld c, d                                       ; $5cbf: $4a
    ld a, [bc]                                    ; $5cc0: $0a
    rrca                                          ; $5cc1: $0f
    ld h, c                                       ; $5cc2: $61
    ld d, d                                       ; $5cc3: $52
    rst $38                                       ; $5cc4: $ff
    ld a, [de]                                    ; $5cc5: $1a
    dec c                                         ; $5cc6: $0d
    inc b                                         ; $5cc7: $04
    jr c, jr_094_5c4a                             ; $5cc8: $38 $80

    ld sp, $fe09                                  ; $5cca: $31 $09 $fe
    add hl, sp                                    ; $5ccd: $39
    rst $38                                       ; $5cce: $ff
    ld b, l                                       ; $5ccf: $45
    cp $45                                        ; $5cd0: $fe $45
    rst $38                                       ; $5cd2: $ff
    dec b                                         ; $5cd3: $05
    add hl, sp                                    ; $5cd4: $39
    cp $01                                        ; $5cd5: $fe $01
    rst $38                                       ; $5cd7: $ff
    add hl, bc                                    ; $5cd8: $09
    inc e                                         ; $5cd9: $1c
    jr z, jr_094_5d59                             ; $5cda: $28 $7d

    inc h                                         ; $5cdc: $24
    db $10                                        ; $5cdd: $10
    ld [bc], a                                    ; $5cde: $02
    cp e                                          ; $5cdf: $bb
    ret nz                                        ; $5ce0: $c0

    cp $55                                        ; $5ce1: $fe $55
    rst $38                                       ; $5ce3: $ff
    ld d, l                                       ; $5ce4: $55
    jr nz, jr_094_5ce7                            ; $5ce5: $20 $00

jr_094_5ce7:
    ld bc, $fe22                                  ; $5ce7: $01 $22 $fe
    dec h                                         ; $5cea: $25
    ld [$4d00], sp                                ; $5ceb: $08 $00 $4d
    rst $38                                       ; $5cee: $ff
    dec h                                         ; $5cef: $25
    inc e                                         ; $5cf0: $1c
    jr jr_094_5cae                                ; $5cf1: $18 $bb

    and b                                         ; $5cf3: $a0
    jr nz, jr_094_5cf6                            ; $5cf4: $20 $00

jr_094_5cf6:
    xor a                                         ; $5cf6: $af
    jr c, jr_094_5cff                             ; $5cf7: $38 $06

    cp a                                          ; $5cf9: $bf
    ret nz                                        ; $5cfa: $c0

    ld a, [hl]                                    ; $5cfb: $7e
    ld bc, $04ff                                  ; $5cfc: $01 $ff $04

jr_094_5cff:
    ld bc, $45ba                                  ; $5cff: $01 $ba $45
    inc bc                                        ; $5d02: $03
    db $fd                                        ; $5d03: $fd
    ld l, b                                       ; $5d04: $68
    dec b                                         ; $5d05: $05
    ld bc, HeaderDestinationCode                  ; $5d06: $01 $4a $01
    dec [hl]                                      ; $5d09: $35
    xor e                                         ; $5d0a: $ab
    ld d, l                                       ; $5d0b: $55
    ld [hl], a                                    ; $5d0c: $77
    add b                                         ; $5d0d: $80
    cp l                                          ; $5d0e: $bd
    ret nz                                        ; $5d0f: $c0

    inc b                                         ; $5d10: $04
    ld [$7f10], sp                                ; $5d11: $08 $10 $7f
    add b                                         ; $5d14: $80
    or l                                          ; $5d15: $b5
    add d                                         ; $5d16: $82
    dec b                                         ; $5d17: $05
    sub l                                         ; $5d18: $95
    ret nz                                        ; $5d19: $c0

    and d                                         ; $5d1a: $a2
    ld d, l                                       ; $5d1b: $55
    nop                                           ; $5d1c: $00
    rst $00                                       ; $5d1d: $c7
    add hl, sp                                    ; $5d1e: $39
    cp [hl]                                       ; $5d1f: $be
    ld bc, $3dc3                                  ; $5d20: $01 $c3 $3d

jr_094_5d23:
    cp [hl]                                       ; $5d23: $be
    ld b, c                                       ; $5d24: $41
    db $10                                        ; $5d25: $10
    inc bc                                        ; $5d26: $03
    ld a, l                                       ; $5d27: $7d
    xor [hl]                                      ; $5d28: $ae
    inc b                                         ; $5d29: $04
    nop                                           ; $5d2a: $00
    ld c, [hl]                                    ; $5d2b: $4e
    add b                                         ; $5d2c: $80
    add l                                         ; $5d2d: $85
    ret nz                                        ; $5d2e: $c0

    inc d                                         ; $5d2f: $14
    ld l, d                                       ; $5d30: $6a
    add b                                         ; $5d31: $80
    add h                                         ; $5d32: $84
    inc b                                         ; $5d33: $04
    nop                                           ; $5d34: $00
    and b                                         ; $5d35: $a0
    inc b                                         ; $5d36: $04
    ld [$fec1], sp                                ; $5d37: $08 $c1 $fe
    nop                                           ; $5d3a: $00
    ld bc, $3947                                  ; $5d3b: $01 $47 $39
    ld a, [hl-]                                   ; $5d3e: $3a
    ld b, l                                       ; $5d3f: $45
    dec de                                        ; $5d40: $1b
    ld b, l                                       ; $5d41: $45
    add [hl]                                      ; $5d42: $86

jr_094_5d43:
    ld bc, $3f39                                  ; $5d43: $01 $39 $3f
    ld bc, $8936                                  ; $5d46: $01 $36 $89
    dec sp                                        ; $5d49: $3b
    dec b                                         ; $5d4a: $05
    inc bc                                        ; $5d4b: $03
    rlca                                          ; $5d4c: $07
    ld [hl+], a                                   ; $5d4d: $22
    rst $38                                       ; $5d4e: $ff
    rst $30                                       ; $5d4f: $f7
    ld [$fb07], sp                                ; $5d50: $08 $07 $fb
    rst $38                                       ; $5d53: $ff
    rst $28                                       ; $5d54: $ef
    ld [$eb00], sp                                ; $5d55: $08 $00 $eb
    nop                                           ; $5d58: $00

jr_094_5d59:
    rst $38                                       ; $5d59: $ff
    ld l, b                                       ; $5d5a: $68
    add c                                         ; $5d5b: $81
    or b                                          ; $5d5c: $b0
    pop bc                                        ; $5d5d: $c1
    ld a, b                                       ; $5d5e: $78
    add b                                         ; $5d5f: $80
    cp b                                          ; $5d60: $b8
    jr nz, jr_094_5d23                            ; $5d61: $20 $c0

    ld a, h                                       ; $5d63: $7c
    and b                                         ; $5d64: $a0
    ld h, $3a                                     ; $5d65: $26 $3a
    dec b                                         ; $5d67: $05
    dec de                                        ; $5d68: $1b
    dec b                                         ; $5d69: $05
    ld b, $0c                                     ; $5d6a: $06 $0c
    ld sp, hl                                     ; $5d6c: $f9
    rra                                           ; $5d6d: $1f
    ld bc, $783e                                  ; $5d6e: $01 $3e $78
    nop                                           ; $5d71: $00
    or b                                          ; $5d72: $b0
    ld c, $d5                                     ; $5d73: $0e $d5
    rst $38                                       ; $5d75: $ff
    ld bc, $ffc3                                  ; $5d76: $01 $c3 $ff
    pop bc                                        ; $5d79: $c1
    rst $38                                       ; $5d7a: $ff
    sub d                                         ; $5d7b: $92
    rst $38                                       ; $5d7c: $ff
    adc c                                         ; $5d7d: $89
    add sp, $07                                   ; $5d7e: $e8 $07
    ld hl, $f50b                                  ; $5d80: $21 $0b $f5
    sub h                                         ; $5d83: $94
    dec bc                                        ; $5d84: $0b
    rst $10                                       ; $5d85: $d7
    jr z, @-$04                                   ; $5d86: $28 $fa

    dec b                                         ; $5d88: $05
    ld [de], a                                    ; $5d89: $12
    dec c                                         ; $5d8a: $0d
    ret nz                                        ; $5d8b: $c0

    adc $00                                       ; $5d8c: $ce $00
    ld c, h                                       ; $5d8e: $4c
    rla                                           ; $5d8f: $17
    or l                                          ; $5d90: $b5
    ld c, d                                       ; $5d91: $4a
    ld a, [$dd05]                                 ; $5d92: $fa $05 $dd
    ld [hl+], a                                   ; $5d95: $22
    ld [$916e], sp                                ; $5d96: $08 $6e $91
    rst $30                                       ; $5d99: $f7
    ld [$05dc], sp                                ; $5d9a: $08 $dc $05
    db $10                                        ; $5d9d: $10
    ld [hl+], a                                   ; $5d9e: $22
    db $dd                                        ; $5d9f: $dd
    jr nz, @+$12                                  ; $5da0: $20 $10

    rst $28                                       ; $5da2: $ef
    ret nz                                        ; $5da3: $c0

    dec bc                                        ; $5da4: $0b
    xor d                                         ; $5da5: $aa
    ld d, l                                       ; $5da6: $55
    pop de                                        ; $5da7: $d1
    ld l, $68                                     ; $5da8: $2e $68
    jr jr_094_5d43                                ; $5daa: $18 $97

    push de                                       ; $5dac: $d5
    ld a, [hl+]                                   ; $5dad: $2a
    inc d                                         ; $5dae: $14
    ld a, [bc]                                    ; $5daf: $0a
    call nc, $fe0d                                ; $5db0: $d4 $0d $fe
    nop                                           ; $5db3: $00
    db $e3                                        ; $5db4: $e3
    ld bc, $dc1c                                  ; $5db5: $01 $1c $dc
    inc hl                                        ; $5db8: $23
    and a                                         ; $5db9: $a7
    ld b, b                                       ; $5dba: $40
    ei                                            ; $5dbb: $fb
    inc b                                         ; $5dbc: $04
    ld b, b                                       ; $5dbd: $40
    rla                                           ; $5dbe: $17
    ld [bc], a                                    ; $5dbf: $02
    nop                                           ; $5dc0: $00
    pop bc                                        ; $5dc1: $c1
    ld e, $d2                                     ; $5dc2: $1e $d2
    ld hl, $38a5                                  ; $5dc4: $21 $a5 $38
    dec b                                         ; $5dc7: $05
    xor d                                         ; $5dc8: $aa
    nop                                           ; $5dc9: $00
    ld d, l                                       ; $5dca: $55
    push af                                       ; $5dcb: $f5
    ld a, [bc]                                    ; $5dcc: $0a
    ld [$7d15], a                                 ; $5dcd: $ea $15 $7d
    add d                                         ; $5dd0: $82
    cp d                                          ; $5dd1: $ba
    nop                                           ; $5dd2: $00
    ld b, l                                       ; $5dd3: $45
    ld hl, $d2de                                  ; $5dd4: $21 $de $d2
    ld hl, $40a3                                  ; $5dd7: $21 $a3 $40
    ld e, $00                                     ; $5dda: $1e $00
    ld h, c                                       ; $5ddc: $61
    sbc l                                         ; $5ddd: $9d
    ld a, $da                                     ; $5dde: $3e $da
    inc b                                         ; $5de0: $04
    xor h                                         ; $5de1: $ac
    inc bc                                        ; $5de2: $03
    ld d, [hl]                                    ; $5de3: $56
    jr nz, jr_094_5de7                            ; $5de4: $20 $01

    xor e                                         ; $5de6: $ab

jr_094_5de7:
    jr z, jr_094_5def                             ; $5de7: $28 $06

    ld a, [hl+]                                   ; $5de9: $2a
    nop                                           ; $5dea: $00
    ret nc                                        ; $5deb: $d0

    ccf                                           ; $5dec: $3f
    dec sp                                        ; $5ded: $3b
    nop                                           ; $5dee: $00

jr_094_5def:
    rlca                                          ; $5def: $07
    pop af                                        ; $5df0: $f1
    ld c, $c4                                     ; $5df1: $0e $c4
    ccf                                           ; $5df3: $3f
    xor $f1                                       ; $5df4: $ee $f1
    xor c                                         ; $5df6: $a9
    ld bc, $db10                                  ; $5df7: $01 $10 $db
    inc c                                         ; $5dfa: $0c
    db $eb                                        ; $5dfb: $eb
    rlca                                          ; $5dfc: $07
    ld a, a                                       ; $5dfd: $7f
    ret nz                                        ; $5dfe: $c0

    ld e, h                                       ; $5dff: $5c
    inc b                                         ; $5e00: $04
    nop                                           ; $5e01: $00
    ld e, c                                       ; $5e02: $59
    push af                                       ; $5e03: $f5
    rrca                                          ; $5e04: $0f
    ld a, [hl-]                                   ; $5e05: $3a
    push bc                                       ; $5e06: $c5
    rst $18                                       ; $5e07: $df
    jr nz, @-$5f                                  ; $5e08: $20 $9f

    dec c                                         ; $5e0a: $0d
    ld h, b                                       ; $5e0b: $60
    cp a                                          ; $5e0c: $bf
    ret nz                                        ; $5e0d: $c0

    ld b, l                                       ; $5e0e: $45
    db $ec                                        ; $5e0f: $ec
    ld b, $dc                                     ; $5e10: $06 $dc
    ld c, $84                                     ; $5e12: $0e $84
    jr jr_094_5e1c                                ; $5e14: $18 $06

    xor b                                         ; $5e16: $a8
    and b                                         ; $5e17: $a0
    dec bc                                        ; $5e18: $0b
    ld a, a                                       ; $5e19: $7f
    add d                                         ; $5e1a: $82
    ld [bc], a                                    ; $5e1b: $02

jr_094_5e1c:
    ld e, e                                       ; $5e1c: $5b
    db $fc                                        ; $5e1d: $fc
    inc b                                         ; $5e1e: $04
    ld e, a                                       ; $5e1f: $5f
    nop                                           ; $5e20: $00
    dec hl                                        ; $5e21: $2b
    cp d                                          ; $5e22: $ba
    ret z                                         ; $5e23: $c8

    inc b                                         ; $5e24: $04
    adc a                                         ; $5e25: $8f
    adc b                                         ; $5e26: $88
    rlca                                          ; $5e27: $07
    sub [hl]                                      ; $5e28: $96
    ld d, $f3                                     ; $5e29: $16 $f3
    rla                                           ; $5e2b: $17
    ld [hl], a                                    ; $5e2c: $77
    ld e, b                                       ; $5e2d: $58
    ld b, $17                                     ; $5e2e: $06 $17
    ld a, $00                                     ; $5e30: $3e $00
    adc e                                         ; $5e32: $8b
    ld e, h                                       ; $5e33: $5c
    ld [hl+], a                                   ; $5e34: $22
    ld h, $0f                                     ; $5e35: $26 $0f
    nop                                           ; $5e37: $00
    inc c                                         ; $5e38: $0c
    ld c, h                                       ; $5e39: $4c
    dec c                                         ; $5e3a: $0d
    ld d, b                                       ; $5e3b: $50
    dec c                                         ; $5e3c: $0d
    dec hl                                        ; $5e3d: $2b
    cp e                                          ; $5e3e: $bb
    ld h, b                                       ; $5e3f: $60
    dec b                                         ; $5e40: $05
    ld [bc], a                                    ; $5e41: $02
    ret z                                         ; $5e42: $c8

    ld [hl+], a                                   ; $5e43: $22
    ld b, d                                       ; $5e44: $42
    dec c                                         ; $5e45: $0d
    adc $0a                                       ; $5e46: $ce $0a
    rst $38                                       ; $5e48: $ff
    ld b, h                                       ; $5e49: $44
    inc d                                         ; $5e4a: $14
    add d                                         ; $5e4b: $82
    ld c, $96                                     ; $5e4c: $0e $96
    ei                                            ; $5e4e: $fb
    rlca                                          ; $5e4f: $07
    add b                                         ; $5e50: $80
    ld [$0582], sp                                ; $5e51: $08 $82 $05
    add hl, bc                                    ; $5e54: $09
    ld e, [hl]                                    ; $5e55: $5e
    rlca                                          ; $5e56: $07
    ld h, d                                       ; $5e57: $62
    rrca                                          ; $5e58: $0f
    db $10                                        ; $5e59: $10
    ret nc                                        ; $5e5a: $d0

    add h                                         ; $5e5b: $84
    ld b, $94                                     ; $5e5c: $06 $94
    dec c                                         ; $5e5e: $0d
    ld e, a                                       ; $5e5f: $5f
    or h                                          ; $5e60: $b4
    dec b                                         ; $5e61: $05
    ld d, [hl]                                    ; $5e62: $56
    nop                                           ; $5e63: $00
    cpl                                           ; $5e64: $2f
    nop                                           ; $5e65: $00
    inc b                                         ; $5e66: $04
    sub a                                         ; $5e67: $97
    nop                                           ; $5e68: $00
    ld l, a                                       ; $5e69: $6f
    nop                                           ; $5e6a: $00
    ccf                                           ; $5e6b: $3f
    db $f4                                        ; $5e6c: $f4
    rlca                                          ; $5e6d: $07
    add e                                         ; $5e6e: $83
    rst $38                                       ; $5e6f: $ff
    inc l                                         ; $5e70: $2c
    ld b, c                                       ; $5e71: $41
    cp a                                          ; $5e72: $bf
    jr nz, jr_094_5ea0                            ; $5e73: $20 $2b

    xor e                                         ; $5e75: $ab
    ld l, l                                       ; $5e76: $6d
    add hl, bc                                    ; $5e77: $09
    inc b                                         ; $5e78: $04
    add b                                         ; $5e79: $80
    nop                                           ; $5e7a: $00
    rst $38                                       ; $5e7b: $ff
    scf                                           ; $5e7c: $37
    xor d                                         ; $5e7d: $aa
    ld d, l                                       ; $5e7e: $55
    inc b                                         ; $5e7f: $04
    nop                                           ; $5e80: $00
    ld e, $18                                     ; $5e81: $1e $18
    ld d, l                                       ; $5e83: $55
    ret                                           ; $5e84: $c9


    rla                                           ; $5e85: $17
    rrc h                                         ; $5e86: $cb $0c
    rst $08                                       ; $5e88: $cf
    rrca                                          ; $5e89: $0f
    nop                                           ; $5e8a: $00
    db $db                                        ; $5e8b: $db
    ld b, b                                       ; $5e8c: $40
    rla                                           ; $5e8d: $17
    ld sp, $4211                                  ; $5e8e: $31 $11 $42
    rst $38                                       ; $5e91: $ff
    ld bc, $8360                                  ; $5e92: $01 $60 $83
    rst $38                                       ; $5e95: $ff
    pop bc                                        ; $5e96: $c1
    cp a                                          ; $5e97: $bf
    inc b                                         ; $5e98: $04
    ld c, b                                       ; $5e99: $48
    dec d                                         ; $5e9a: $15
    nop                                           ; $5e9b: $00
    ei                                            ; $5e9c: $fb
    rrca                                          ; $5e9d: $0f
    rst $38                                       ; $5e9e: $ff
    inc bc                                        ; $5e9f: $03

jr_094_5ea0:
    db $fc                                        ; $5ea0: $fc
    ld e, $fd                                     ; $5ea1: $1e $fd
    rla                                           ; $5ea3: $17
    nop                                           ; $5ea4: $00
    ld a, [$fe0f]                                 ; $5ea5: $fa $0f $fe
    rla                                           ; $5ea8: $17
    ld a, [$fe1f]                                 ; $5ea9: $fa $1f $fe
    rst $38                                       ; $5eac: $ff
    nop                                           ; $5ead: $00
    ld d, l                                       ; $5eae: $55
    rst $38                                       ; $5eaf: $ff
    rst $18                                       ; $5eb0: $df
    call nc, $f100                                ; $5eb1: $d4 $00 $f1
    nop                                           ; $5eb4: $00
    ret z                                         ; $5eb5: $c8

    nop                                           ; $5eb6: $00
    nop                                           ; $5eb7: $00
    ei                                            ; $5eb8: $fb
    cp e                                          ; $5eb9: $bb
    xor d                                         ; $5eba: $aa
    xor d                                         ; $5ebb: $aa
    ei                                            ; $5ebc: $fb
    cp e                                          ; $5ebd: $bb
    rlca                                          ; $5ebe: $07
    nop                                           ; $5ebf: $00
    ld hl, sp+$0f                                 ; $5ec0: $f8 $0f
    db $f4                                        ; $5ec2: $f4
    rra                                           ; $5ec3: $1f
    ld a, [$f51b]                                 ; $5ec4: $fa $1b $f5
    rla                                           ; $5ec7: $17
    nop                                           ; $5ec8: $00
    ld sp, hl                                     ; $5ec9: $f9
    rrca                                          ; $5eca: $0f
    cp $07                                        ; $5ecb: $fe $07
    ld hl, sp+$17                                 ; $5ecd: $f8 $17
    ld a, [$00d0]                                 ; $5ecf: $fa $d0 $00
    nop                                           ; $5ed2: $00
    and b                                         ; $5ed3: $a0
    nop                                           ; $5ed4: $00
    ret nc                                        ; $5ed5: $d0

    nop                                           ; $5ed6: $00
    push de                                       ; $5ed7: $d5
    push de                                       ; $5ed8: $d5
    ld d, l                                       ; $5ed9: $55
    ld bc, $fd55                                  ; $5eda: $01 $55 $fd
    db $dd                                        ; $5edd: $dd
    and b                                         ; $5ede: $a0
    nop                                           ; $5edf: $00
    ld c, b                                       ; $5ee0: $48
    ld [$0834], sp                                ; $5ee1: $08 $34 $08
    nop                                           ; $5ee4: $00
    rla                                           ; $5ee5: $17
    ld a, [$fa17]                                 ; $5ee6: $fa $17 $fa
    dec bc                                        ; $5ee9: $0b
    db $f4                                        ; $5eea: $f4
    rra                                           ; $5eeb: $1f
    db $fc                                        ; $5eec: $fc
    add b                                         ; $5eed: $80
    ld [$f900], sp                                ; $5eee: $08 $00 $f9
    sbc b                                         ; $5ef1: $98
    ld [$eaea], sp                                ; $5ef2: $08 $ea $ea
    ld [$00aa], a                                 ; $5ef5: $ea $aa $00
    rst $38                                       ; $5ef8: $ff
    ld [$00ea], a                                 ; $5ef9: $ea $ea $00
    sbc $04                                       ; $5efc: $de $04
    rst $28                                       ; $5efe: $ef
    inc b                                         ; $5eff: $04
    nop                                           ; $5f00: $00
    rst $38                                       ; $5f01: $ff
    push af                                       ; $5f02: $f5
    rra                                           ; $5f03: $1f
    pop af                                        ; $5f04: $f1
    rra                                           ; $5f05: $1f
    cp $0f                                        ; $5f06: $fe $0f
    ldh a, [rP1]                                  ; $5f08: $f0 $00
    rra                                           ; $5f0a: $1f
    db $ec                                        ; $5f0b: $ec
    rra                                           ; $5f0c: $1f
    ld a, [c]                                     ; $5f0d: $f2
    rra                                           ; $5f0e: $1f
    pop af                                        ; $5f0f: $f1
    rla                                           ; $5f10: $17
    ld sp, hl                                     ; $5f11: $f9
    nop                                           ; $5f12: $00
    rra                                           ; $5f13: $1f
    xor $fd                                       ; $5f14: $ee $fd
    db $f4                                        ; $5f16: $f4
    cp $f4                                        ; $5f17: $fe $f4
    push af                                       ; $5f19: $f5
    nop                                           ; $5f1a: $00
    nop                                           ; $5f1b: $00
    cp [hl]                                       ; $5f1c: $be
    db $10                                        ; $5f1d: $10
    ld a, [c]                                     ; $5f1e: $f2
    db $10                                        ; $5f1f: $10
    db $fd                                        ; $5f20: $fd
    ld [hl], b                                    ; $5f21: $70
    cp $50                                        ; $5f22: $fe $50
    nop                                           ; $5f24: $00
    di                                            ; $5f25: $f3
    ld [hl], b                                    ; $5f26: $70
    rst $38                                       ; $5f27: $ff
    xor d                                         ; $5f28: $aa
    cp a                                          ; $5f29: $bf
    cp e                                          ; $5f2a: $bb
    and e                                         ; $5f2b: $a3
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    dec hl                                        ; $5f2e: $2b
    nop                                           ; $5f2f: $00
    ld b, l                                       ; $5f30: $45
    nop                                           ; $5f31: $00
    cp a                                          ; $5f32: $bf
    cp a                                          ; $5f33: $bf
    xor e                                         ; $5f34: $ab
    xor d                                         ; $5f35: $aa
    nop                                           ; $5f36: $00
    cp a                                          ; $5f37: $bf
    cp a                                          ; $5f38: $bf
    ld sp, hl                                     ; $5f39: $f9
    xor a                                         ; $5f3a: $af
    rst $38                                       ; $5f3b: $ff
    cp e                                          ; $5f3c: $bb
    ld a, [$0005]                                 ; $5f3d: $fa $05 $00
    push af                                       ; $5f40: $f5
    ld a, [bc]                                    ; $5f41: $0a
    cp [hl]                                       ; $5f42: $be
    ld bc, $abff                                  ; $5f43: $01 $ff $ab
    rst $38                                       ; $5f46: $ff
    xor d                                         ; $5f47: $aa
    nop                                           ; $5f48: $00
    rst $38                                       ; $5f49: $ff
    cp c                                          ; $5f4a: $b9
    ld [de], a                                    ; $5f4b: $12
    rst $38                                       ; $5f4c: $ff
    ld e, $ff                                     ; $5f4d: $1e $ff
    nop                                           ; $5f4f: $00
    rst $38                                       ; $5f50: $ff
    nop                                           ; $5f51: $00
    ld b, l                                       ; $5f52: $45
    rst $38                                       ; $5f53: $ff
    ld b, c                                       ; $5f54: $41
    rst $38                                       ; $5f55: $ff
    pop hl                                        ; $5f56: $e1
    rst $38                                       ; $5f57: $ff
    and c                                         ; $5f58: $a1
    ld a, a                                       ; $5f59: $7f
    nop                                           ; $5f5a: $00
    ld hl, sp-$09                                 ; $5f5b: $f8 $f7
    push af                                       ; $5f5d: $f5
    rst $38                                       ; $5f5e: $ff
    push af                                       ; $5f5f: $f5
    rst $38                                       ; $5f60: $ff
    ld [$00ff], sp                                ; $5f61: $08 $ff $00
    ld h, d                                       ; $5f64: $62
    rst $38                                       ; $5f65: $ff
    add b                                         ; $5f66: $80
    rst $38                                       ; $5f67: $ff
    rra                                           ; $5f68: $1f
    rst $38                                       ; $5f69: $ff
    rrca                                          ; $5f6a: $0f
    rst $38                                       ; $5f6b: $ff
    nop                                           ; $5f6c: $00
    rst $28                                       ; $5f6d: $ef
    rst $38                                       ; $5f6e: $ff
    ld bc, $0800                                  ; $5f6f: $01 $00 $08
    ld [$080b], sp                                ; $5f72: $08 $0b $08
    nop                                           ; $5f75: $00
    ld a, [hl]                                    ; $5f76: $7e
    ld a, [hl]                                    ; $5f77: $7e
    ld c, e                                       ; $5f78: $4b
    ld c, d                                       ; $5f79: $4a
    ld a, $3e                                     ; $5f7a: $3e $3e
    inc bc                                        ; $5f7c: $03
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    adc d                                         ; $5f7f: $8a
    add b                                         ; $5f80: $80
    rst $38                                       ; $5f81: $ff
    nop                                           ; $5f82: $00
    cp $3d                                        ; $5f83: $fe $3d
    ld a, a                                       ; $5f85: $7f
    jr nz, jr_094_5f88                            ; $5f86: $20 $00

jr_094_5f88:
    rst $38                                       ; $5f88: $ff
    dec de                                        ; $5f89: $1b
    rst $30                                       ; $5f8a: $f7
    inc hl                                        ; $5f8b: $23
    rst $38                                       ; $5f8c: $ff
    ld hl, $00ae                                  ; $5f8d: $21 $ae $00
    nop                                           ; $5f90: $00
    ld b, a                                       ; $5f91: $47
    rlca                                          ; $5f92: $07
    sub $29                                       ; $5f93: $d6 $29
    ei                                            ; $5f95: $fb
    ld b, $ef                                     ; $5f96: $06 $ef
    ld [de], a                                    ; $5f98: $12
    ld [$fbff], sp                                ; $5f99: $08 $ff $fb
    rst $38                                       ; $5f9c: $ff
    ld a, d                                       ; $5f9d: $7a
    ld a, [bc]                                    ; $5f9e: $0a
    ld bc, $ff00                                  ; $5f9f: $01 $00 $ff
    nop                                           ; $5fa2: $00
    ld [$55aa], sp                                ; $5fa3: $08 $aa $55
    ld d, l                                       ; $5fa6: $55
    xor d                                         ; $5fa7: $aa
    inc h                                         ; $5fa8: $24
    nop                                           ; $5fa9: $00
    cp l                                          ; $5faa: $bd
    rst $38                                       ; $5fab: $ff
    or h                                          ; $5fac: $b4
    jr nz, @+$01                                  ; $5fad: $20 $ff

    sbc h                                         ; $5faf: $9c
    inc l                                         ; $5fb0: $2c
    nop                                           ; $5fb1: $00
    ld bc, $8085                                  ; $5fb2: $01 $85 $80
    cp $ce                                        ; $5fb5: $fe $ce
    nop                                           ; $5fb7: $00
    xor [hl]                                      ; $5fb8: $ae
    xor d                                         ; $5fb9: $aa
    xor $ce                                       ; $5fba: $ee $ce
    xor b                                         ; $5fbc: $a8
    nop                                           ; $5fbd: $00
    and a                                         ; $5fbe: $a7
    rlca                                          ; $5fbf: $07
    nop                                           ; $5fc0: $00
    ld d, h                                       ; $5fc1: $54
    inc b                                         ; $5fc2: $04
    push bc                                       ; $5fc3: $c5
    push bc                                       ; $5fc4: $c5
    ld d, [hl]                                    ; $5fc5: $56
    inc b                                         ; $5fc6: $04
    rst $28                                       ; $5fc7: $ef
    rst $20                                       ; $5fc8: $e7
    nop                                           ; $5fc9: $00
    and a                                         ; $5fca: $a7
    and h                                         ; $5fcb: $a4
    db $e4                                        ; $5fcc: $e4
    db $e4                                        ; $5fcd: $e4
    ld bc, $0000                                  ; $5fce: $01 $00 $00
    nop                                           ; $5fd1: $00
    nop                                           ; $5fd2: $00
    add b                                         ; $5fd3: $80
    add b                                         ; $5fd4: $80
    ld e, l                                       ; $5fd5: $5d
    ld e, l                                       ; $5fd6: $5d
    rst $18                                       ; $5fd7: $df
    nop                                           ; $5fd8: $00
    rst $38                                       ; $5fd9: $ff
    ld [hl], a                                    ; $5fda: $77
    nop                                           ; $5fdb: $00
    ld e, a                                       ; $5fdc: $5f
    ld d, l                                       ; $5fdd: $55
    ld [hl], a                                    ; $5fde: $77
    ld [hl], l                                    ; $5fdf: $75
    cpl                                           ; $5fe0: $2f
    nop                                           ; $5fe1: $00
    sub [hl]                                      ; $5fe2: $96
    db $10                                        ; $5fe3: $10
    ld [$1010], sp                                ; $5fe4: $08 $10 $10
    db $dd                                        ; $5fe7: $dd
    db $dd                                        ; $5fe8: $dd
    adc l                                         ; $5fe9: $8d
    nop                                           ; $5fea: $00
    ld [hl], a                                    ; $5feb: $77
    rst $38                                       ; $5fec: $ff
    ld d, [hl]                                    ; $5fed: $56
    db $10                                        ; $5fee: $10
    rst $38                                       ; $5fef: $ff
    ld d, e                                       ; $5ff0: $53
    ld a, a                                       ; $5ff1: $7f
    ld c, h                                       ; $5ff2: $4c
    nop                                           ; $5ff3: $00
    cp l                                          ; $5ff4: $bd
    nop                                           ; $5ff5: $00
    rst $28                                       ; $5ff6: $ef
    ldh [rP1], a                                  ; $5ff7: $e0 $00
    sub $c6                                       ; $5ff9: $d6 $c6
    add h                                         ; $5ffb: $84
    add h                                         ; $5ffc: $84
    ret nz                                        ; $5ffd: $c0

    add b                                         ; $5ffe: $80
    ld h, c                                       ; $5fff: $61
    ld h, c                                       ; $6000: $61
    nop                                           ; $6001: $00
    add c                                         ; $6002: $81
    add c                                         ; $6003: $81
    call $694d                                    ; $6004: $cd $4d $69
    add hl, hl                                    ; $6007: $29
    db $ed                                        ; $6008: $ed
    db $ed                                        ; $6009: $ed
    nop                                           ; $600a: $00
    ld d, l                                       ; $600b: $55
    ld d, l                                       ; $600c: $55
    ld e, l                                       ; $600d: $5d
    ld e, l                                       ; $600e: $5d
    ld bc, $0c01                                  ; $600f: $01 $01 $0c
    inc c                                         ; $6012: $0c
    nop                                           ; $6013: $00
    db $10                                        ; $6014: $10
    db $10                                        ; $6015: $10
    db $db                                        ; $6016: $db
    db $db                                        ; $6017: $db
    ld d, d                                       ; $6018: $52
    ld d, d                                       ; $6019: $52
    db $d3                                        ; $601a: $d3
    db $d3                                        ; $601b: $d3
    nop                                           ; $601c: $00
    ld d, l                                       ; $601d: $55
    ld d, l                                       ; $601e: $55
    call c, $80dc                                 ; $601f: $dc $dc $80
    add b                                         ; $6022: $80
    ld hl, $1021                                  ; $6023: $21 $21 $10
    jr nz, jr_094_6048                            ; $6026: $20 $20

    and b                                         ; $6028: $a0
    ld bc, $b000                                  ; $6029: $01 $00 $b0
    and b                                         ; $602c: $a0
    cp l                                          ; $602d: $bd
    and b                                         ; $602e: $a0
    nop                                           ; $602f: $00
    rst $30                                       ; $6030: $f7
    ldh a, [$0b]                                  ; $6031: $f0 $0b
    nop                                           ; $6033: $00
    push af                                       ; $6034: $f5
    ret nz                                        ; $6035: $c0

    add e                                         ; $6036: $83
    add b                                         ; $6037: $80
    nop                                           ; $6038: $00
    sub a                                         ; $6039: $97
    sub a                                         ; $603a: $97
    sub [hl]                                      ; $603b: $96
    sub [hl]                                      ; $603c: $96
    sub e                                         ; $603d: $93
    sub e                                         ; $603e: $93
    ld d, l                                       ; $603f: $55
    rst $38                                       ; $6040: $ff
    nop                                           ; $6041: $00
    db $dd                                        ; $6042: $dd
    rst $38                                       ; $6043: $ff
    ld [hl+], a                                   ; $6044: $22
    rst $38                                       ; $6045: $ff
    adc e                                         ; $6046: $8b
    rst $38                                       ; $6047: $ff

jr_094_6048:
    ld [bc], a                                    ; $6048: $02
    rst $38                                       ; $6049: $ff
    ld d, b                                       ; $604a: $50
    ld [hl], e                                    ; $604b: $73
    sub $00                                       ; $604c: $d6 $00
    ld [hl-], a                                   ; $604e: $32
    add sp, $00                                   ; $604f: $e8 $00
    jp nz, Jump_000_21ff                          ; $6051: $c2 $ff $21

    rst $38                                       ; $6054: $ff
    inc b                                         ; $6055: $04
    ret z                                         ; $6056: $c8

    rst $38                                       ; $6057: $ff
    add c                                         ; $6058: $81
    rst $38                                       ; $6059: $ff
    ld b, b                                       ; $605a: $40
    inc b                                         ; $605b: $04
    db $10                                        ; $605c: $10
    dec h                                         ; $605d: $25
    or l                                          ; $605e: $b5
    nop                                           ; $605f: $00
    dec h                                         ; $6060: $25
    or a                                          ; $6061: $b7
    dec hl                                        ; $6062: $2b
    cp e                                          ; $6063: $bb
    ld e, c                                       ; $6064: $59
    reti                                          ; $6065: $d9


    ld h, e                                       ; $6066: $63
    rlc b                                         ; $6067: $cb $00
    sbc e                                         ; $6069: $9b
    sbc a                                         ; $606a: $9f
    sbc l                                         ; $606b: $9d
    push de                                       ; $606c: $d5
    ld d, l                                       ; $606d: $55
    push af                                       ; $606e: $f5
    ld hl, $00e5                                  ; $606f: $21 $e5 $00
    ld c, l                                       ; $6072: $4d
    rst $08                                       ; $6073: $cf
    jp z, $aaca                                   ; $6074: $ca $ca $aa

    xor d                                         ; $6077: $aa
    ld [hl-], a                                   ; $6078: $32
    sub d                                         ; $6079: $92
    db $10                                        ; $607a: $10
    ld [de], a                                    ; $607b: $12
    sub d                                         ; $607c: $92
    ld a, [de]                                    ; $607d: $1a
    inc b                                         ; $607e: $04
    nop                                           ; $607f: $00
    ret nz                                        ; $6080: $c0

    ccf                                           ; $6081: $3f
    ld [hl], b                                    ; $6082: $70
    adc a                                         ; $6083: $8f
    nop                                           ; $6084: $00
    ret z                                         ; $6085: $c8

    scf                                           ; $6086: $37
    or b                                          ; $6087: $b0
    ld c, a                                       ; $6088: $4f
    ret z                                         ; $6089: $c8

    scf                                           ; $608a: $37
    ldh [$1f], a                                  ; $608b: $e0 $1f
    nop                                           ; $608d: $00
    cp b                                          ; $608e: $b8
    ld b, a                                       ; $608f: $47
    db $e4                                        ; $6090: $e4
    dec de                                        ; $6091: $1b
    ld hl, $8aff                                  ; $6092: $21 $ff $8a
    rst $38                                       ; $6095: $ff
    ld de, $ff01                                  ; $6096: $11 $01 $ff
    ld a, [hl+]                                   ; $6099: $2a
    inc b                                         ; $609a: $04
    nop                                           ; $609b: $00
    db $10                                        ; $609c: $10
    rst $38                                       ; $609d: $ff
    ld b, e                                       ; $609e: $43
    ld a, [hl+]                                   ; $609f: $2a
    ld bc, $2704                                  ; $60a0: $01 $04 $27
    or l                                          ; $60a3: $b5
    dec h                                         ; $60a4: $25
    or l                                          ; $60a5: $b5
    cpl                                           ; $60a6: $2f
    inc b                                         ; $60a7: $04
    nop                                           ; $60a8: $00
    daa                                           ; $60a9: $27
    or l                                          ; $60aa: $b5
    nop                                           ; $60ab: $00
    dec hl                                        ; $60ac: $2b
    cp e                                          ; $60ad: $bb
    ld a, e                                       ; $60ae: $7b
    db $db                                        ; $60af: $db
    ld d, e                                       ; $60b0: $53
    rst $10                                       ; $60b1: $d7
    ld [hl-], a                                   ; $60b2: $32
    sub e                                         ; $60b3: $93
    nop                                           ; $60b4: $00
    dec d                                         ; $60b5: $15
    sbc l                                         ; $60b6: $9d
    dec l                                         ; $60b7: $2d
    xor a                                         ; $60b8: $af
    dec hl                                        ; $60b9: $2b
    xor e                                         ; $60ba: $ab
    rst $08                                       ; $60bb: $cf
    rst $28                                       ; $60bc: $ef

jr_094_60bd:
    nop                                           ; $60bd: $00
    cp h                                          ; $60be: $bc
    db $fc                                        ; $60bf: $fc
    ei                                            ; $60c0: $fb
    db $fd                                        ; $60c1: $fd
    call $d8cd                                    ; $60c2: $cd $cd $d8
    daa                                           ; $60c5: $27
    nop                                           ; $60c6: $00
    or $89                                        ; $60c7: $f6 $89
    ld a, [$ed85]                                 ; $60c9: $fa $85 $ed
    sub d                                         ; $60cc: $92
    rst $38                                       ; $60cd: $ff
    nop                                           ; $60ce: $00
    ld bc, $05fa                                  ; $60cf: $01 $fa $05
    rst $38                                       ; $60d2: $ff
    nop                                           ; $60d3: $00
    rst $18                                       ; $60d4: $df
    jr nz, jr_094_60d8                            ; $60d5: $20 $01

    ld l, [hl]                                    ; $60d7: $6e

jr_094_60d8:
    ld bc, $8100                                  ; $60d8: $01 $00 $81
    ld a, a                                       ; $60db: $7f
    jr nz, jr_094_60bd                            ; $60dc: $20 $df

    ret                                           ; $60de: $c9


    scf                                           ; $60df: $37
    or h                                          ; $60e0: $b4
    ld c, e                                       ; $60e1: $4b
    nop                                           ; $60e2: $00
    rst $30                                       ; $60e3: $f7
    add hl, bc                                    ; $60e4: $09
    call c, $bf23                                 ; $60e5: $dc $23 $bf
    sbc a                                         ; $60e8: $9f
    dec e                                         ; $60e9: $1d
    cp l                                          ; $60ea: $bd
    nop                                           ; $60eb: $00
    ei                                            ; $60ec: $fb
    pop af                                        ; $60ed: $f1
    db $db                                        ; $60ee: $db
    db $db                                        ; $60ef: $db
    cp e                                          ; $60f0: $bb
    db $db                                        ; $60f1: $db
    ld d, l                                       ; $60f2: $55
    push de                                       ; $60f3: $d5
    nop                                           ; $60f4: $00
    ld e, a                                       ; $60f5: $5f
    push af                                       ; $60f6: $f5
    dec h                                         ; $60f7: $25
    or l                                          ; $60f8: $b5
    call $aeef                                    ; $60f9: $cd $ef $ae
    xor d                                         ; $60fc: $aa
    ld bc, $baaa                                  ; $60fd: $01 $aa $ba
    ld [de], a                                    ; $6100: $12
    sub d                                         ; $6101: $92
    ld a, [hl-]                                   ; $6102: $3a
    sub d                                         ; $6103: $92
    ld d, [hl]                                    ; $6104: $56
    inc b                                         ; $6105: $04
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    inc de                                        ; $6108: $13
    sub d                                         ; $6109: $92
    db $fd                                        ; $610a: $fd
    ld [bc], a                                    ; $610b: $02
    rst $38                                       ; $610c: $ff
    nop                                           ; $610d: $00
    cp [hl]                                       ; $610e: $be
    nop                                           ; $610f: $00
    nop                                           ; $6110: $00
    rst $30                                       ; $6111: $f7
    nop                                           ; $6112: $00
    rst $18                                       ; $6113: $df
    nop                                           ; $6114: $00
    ld l, a                                       ; $6115: $6f
    ld h, b                                       ; $6116: $60
    cp $50                                        ; $6117: $fe $50
    ld [$507b], sp                                ; $6119: $08 $7b $50
    cp a                                          ; $611c: $bf
    ld b, c                                       ; $611d: $41
    ld c, b                                       ; $611e: $48
    nop                                           ; $611f: $00
    ld bc, $01fe                                  ; $6120: $01 $fe $01
    ld b, b                                       ; $6123: $40
    rst $18                                       ; $6124: $df
    inc b                                         ; $6125: $04
    nop                                           ; $6126: $00
    ei                                            ; $6127: $fb
    ld bc, $01ae                                  ; $6128: $01 $ae $01
    cpl                                           ; $612b: $2f
    or l                                          ; $612c: $b5
    ld l, b                                       ; $612d: $68
    ld h, l                                       ; $612e: $65
    add b                                         ; $612f: $80
    ld [$00c4], sp                                ; $6130: $08 $c4 $00
    ld e, l                                       ; $6133: $5d
    call nz, $db00                                ; $6134: $c4 $00 $db
    sbc a                                         ; $6137: $9f
    scf                                           ; $6138: $37
    nop                                           ; $6139: $00
    sbc l                                         ; $613a: $9d
    ld l, l                                       ; $613b: $6d
    xor h                                         ; $613c: $ac
    dec hl                                        ; $613d: $2b
    push hl                                       ; $613e: $e5
    ld e, l                                       ; $613f: $5d
    rst $08                                       ; $6140: $cf
    ld [$ca00], a                                 ; $6141: $ea $00 $ca
    rst $38                                       ; $6144: $ff
    xor d                                         ; $6145: $aa
    ld a, [hl-]                                   ; $6146: $3a
    sub d                                         ; $6147: $92
    ld d, a                                       ; $6148: $57
    sub d                                         ; $6149: $92
    ld a, [c]                                     ; $614a: $f2
    inc c                                         ; $614b: $0c
    or $f2                                        ; $614c: $f6 $f2
    or $fa                                        ; $614e: $f6 $fa
    inc b                                         ; $6150: $04
    nop                                           ; $6151: $00
    ld [$f518], sp                                ; $6152: $08 $18 $f5
    push af                                       ; $6155: $f5
    jr z, jr_094_615c                             ; $6156: $28 $04

    inc c                                         ; $6158: $0c
    ld [bc], a                                    ; $6159: $02
    jr jr_094_6180                                ; $615a: $18 $24

jr_094_615c:
    ld [$8400], sp                                ; $615c: $08 $00 $84
    inc c                                         ; $615f: $0c
    ld a, [bc]                                    ; $6160: $0a
    db $10                                        ; $6161: $10
    ld a, [de]                                    ; $6162: $1a
    ld h, h                                       ; $6163: $64
    db $ec                                        ; $6164: $ec
    ld [bc], a                                    ; $6165: $02
    ld c, b                                       ; $6166: $48
    ld l, d                                       ; $6167: $6a
    ld [$1909], a                                 ; $6168: $ea $09 $19
    and b                                         ; $616b: $a0
    ld [bc], a                                    ; $616c: $02
    jr jr_094_6198                                ; $616d: $18 $29

    ld [$8900], sp                                ; $616f: $08 $00 $89
    add hl, de                                    ; $6172: $19
    dec d                                         ; $6173: $15
    dec [hl]                                      ; $6174: $35
    ld a, [$f808]                                 ; $6175: $fa $08 $f8
    ldh a, [$f0]                                  ; $6178: $f0 $f0
    ld hl, sp-$1b                                 ; $617a: $f8 $e5
    ld [bc], a                                    ; $617c: $02
    ld a, [c]                                     ; $617d: $f2
    ldh a, [$f8]                                  ; $617e: $f0 $f8

jr_094_6180:
    nop                                           ; $6180: $00
    ld hl, sp-$01                                 ; $6181: $f8 $ff
    push af                                       ; $6183: $f5
    ld a, [c]                                     ; $6184: $f2
    or $93                                        ; $6185: $f6 $93
    or c                                          ; $6187: $b1
    ld h, b                                       ; $6188: $60
    jr nz, @+$62                                  ; $6189: $20 $60

    pop af                                        ; $618b: $f1
    push af                                       ; $618c: $f5
    ld [bc], a                                    ; $618d: $02
    ld [c], a                                     ; $618e: $e2
    ld h, c                                       ; $618f: $61

jr_094_6190:
    sub c                                         ; $6190: $91
    or e                                          ; $6191: $b3
    xor d                                         ; $6192: $aa
    ld bc, $041e                                  ; $6193: $01 $1e $04
    inc c                                         ; $6196: $0c
    ld [hl], e                                    ; $6197: $73

jr_094_6198:
    pop af                                        ; $6198: $f1
    ldh [$e0], a                                  ; $6199: $e0 $e0
    db $10                                        ; $619b: $10
    stop                                          ; $619c: $10 $00
    ldh [$f1], a                                  ; $619e: $e0 $f1
    pop af                                        ; $61a0: $f1
    ld l, d                                       ; $61a1: $6a
    ld [$ec64], a                                 ; $61a2: $ea $64 $ec
    inc hl                                        ; $61a5: $23
    ld [$c163], sp                                ; $61a6: $08 $63 $c1
    pop bc                                        ; $61a9: $c1
    db $e3                                        ; $61aa: $e3
    dec d                                         ; $61ab: $15
    inc bc                                        ; $61ac: $03
    pop hl                                        ; $61ad: $e1
    jp Jump_000_0623                              ; $61ae: $c3 $23 $06


    ld h, a                                       ; $61b1: $67
    sub a                                         ; $61b2: $97
    dec a                                         ; $61b3: $3d
    add hl, bc                                    ; $61b4: $09
    add hl, de                                    ; $61b5: $19
    ld a, h                                       ; $61b6: $7c
    ld [$1804], sp                                ; $61b7: $08 $04 $18
    push af                                       ; $61ba: $f5
    inc bc                                        ; $61bb: $03

jr_094_61bc:
    db $fd                                        ; $61bc: $fd
    ld a, [$f1f8]                                 ; $61bd: $fa $f8 $f1
    ldh a, [$a6]                                  ; $61c0: $f0 $a6
    add b                                         ; $61c2: $80
    nop                                           ; $61c3: $00
    inc b                                         ; $61c4: $04
    jr jr_094_61c8                                ; $61c5: $18 $01

    ld c, [hl]                                    ; $61c7: $4e

jr_094_61c8:
    ld a, [de]                                    ; $61c8: $1a
    sbc e                                         ; $61c9: $9b
    or c                                          ; $61ca: $b1
    ld [hl], b                                    ; $61cb: $70
    pop hl                                        ; $61cc: $e1
    ld h, [hl]                                    ; $61cd: $66
    add b                                         ; $61ce: $80
    nop                                           ; $61cf: $00
    add b                                         ; $61d0: $80
    inc b                                         ; $61d1: $04
    jr jr_094_6242                                ; $61d2: $18 $6e

    ld a, [$f1fb]                                 ; $61d4: $fa $fb $f1
    ldh a, [$e1]                                  ; $61d7: $f0 $e1
    xor e                                         ; $61d9: $ab
    ld [$0d19], sp                                ; $61da: $08 $19 $0d
    add hl, de                                    ; $61dd: $19
    xor e                                         ; $61de: $ab
    add h                                         ; $61df: $84
    nop                                           ; $61e0: $00
    xor e                                         ; $61e1: $ab
    add hl, de                                    ; $61e2: $19
    ld d, l                                       ; $61e3: $55
    nop                                           ; $61e4: $00
    dec [hl]                                      ; $61e5: $35
    xor e                                         ; $61e6: $ab
    ld h, e                                       ; $61e7: $63
    pop de                                        ; $61e8: $d1
    jp $f9fa                                      ; $61e9: $c3 $fa $f9


    push af                                       ; $61ec: $f5
    inc c                                         ; $61ed: $0c
    rst $30                                       ; $61ee: $f7
    ld a, [$f3f6]                                 ; $61ef: $fa $f6 $f3
    call nz, Call_000_0400                        ; $61f2: $c4 $00 $04
    jr jr_094_6190                                ; $61f5: $18 $99

    or e                                          ; $61f7: $b3
    dec b                                         ; $61f8: $05
    ld c, e                                       ; $61f9: $4b
    ld e, $a6                                     ; $61fa: $1e $a6
    inc c                                         ; $61fc: $0c
    dec d                                         ; $61fd: $15
    ld b, h                                       ; $61fe: $44
    nop                                           ; $61ff: $00
    ld d, l                                       ; $6200: $55
    inc b                                         ; $6201: $04
    db $10                                        ; $6202: $10
    ld bc, $f3f9                                  ; $6203: $01 $f9 $f3
    ld l, e                                       ; $6206: $6b
    xor $66                                       ; $6207: $ee $66
    db $ec                                        ; $6209: $ec
    ld [hl], l                                    ; $620a: $75
    ld b, h                                       ; $620b: $44
    nop                                           ; $620c: $00
    add l                                         ; $620d: $85
    inc b                                         ; $620e: $04
    jr jr_094_61bc                                ; $620f: $18 $ab

    ld h, a                                       ; $6211: $67
    ld d, l                                       ; $6212: $55
    dec a                                         ; $6213: $3d
    ld b, b                                       ; $6214: $40
    jr jr_094_6264                                ; $6215: $18 $4d

    inc b                                         ; $6217: $04
    stop                                          ; $6218: $10 $00
    cpl                                           ; $621a: $2f
    ret nc                                        ; $621b: $d0

    rra                                           ; $621c: $1f
    xor $3f                                       ; $621d: $ee $3f
    jp nc, $f31f                                  ; $621f: $d2 $1f $f3

    add hl, bc                                    ; $6222: $09
    rra                                           ; $6223: $1f
    ld a, [c]                                     ; $6224: $f2
    rrca                                          ; $6225: $0f
    cp $0c                                        ; $6226: $fe $0c
    nop                                           ; $6228: $00
    db $ec                                        ; $6229: $ec
    ld e, [hl]                                    ; $622a: $5e
    ld c, h                                       ; $622b: $4c
    ld bc, $5e00                                  ; $622c: $01 $00 $5e
    nop                                           ; $622f: $00
    rst $38                                       ; $6230: $ff
    cp c                                          ; $6231: $b9
    rst $38                                       ; $6232: $ff
    xor c                                         ; $6233: $a9
    rst $38                                       ; $6234: $ff
    cp d                                          ; $6235: $ba
    nop                                           ; $6236: $00
    ei                                            ; $6237: $fb
    nop                                           ; $6238: $00
    rst $30                                       ; $6239: $f7

jr_094_623a:
    add b                                         ; $623a: $80
    rra                                           ; $623b: $1f
    pop af                                        ; $623c: $f1
    rrca                                          ; $623d: $0f
    db $fd                                        ; $623e: $fd
    nop                                           ; $623f: $00
    rra                                           ; $6240: $1f
    push hl                                       ; $6241: $e5

jr_094_6242:
    ccf                                           ; $6242: $3f
    reti                                          ; $6243: $d9


    dec bc                                        ; $6244: $0b
    db $f4                                        ; $6245: $f4
    ld e, a                                       ; $6246: $5f
    cp e                                          ; $6247: $bb
    ld bc, $da37                                  ; $6248: $01 $37 $da
    ld e, a                                       ; $624b: $5f
    or d                                          ; $624c: $b2
    ld d, h                                       ; $624d: $54
    xor e                                         ; $624e: $ab
    add b                                         ; $624f: $80
    db $d3                                        ; $6250: $d3
    inc bc                                        ; $6251: $03
    db $10                                        ; $6252: $10
    ret nz                                        ; $6253: $c0

    pop bc                                        ; $6254: $c1
    nop                                           ; $6255: $00
    reti                                          ; $6256: $d9


    inc bc                                        ; $6257: $03
    ld b, b                                       ; $6258: $40
    ret nz                                        ; $6259: $c0

    push bc                                       ; $625a: $c5
    jp z, Jump_000_3f00                           ; $625b: $ca $00 $3f

    sbc $17                                       ; $625e: $de $17
    ld a, [$d12e]                                 ; $6260: $fa $2e $d1
    dec de                                        ; $6263: $1b

jr_094_6264:
    db $e4                                        ; $6264: $e4
    nop                                           ; $6265: $00
    ld d, [hl]                                    ; $6266: $56
    xor c                                         ; $6267: $a9
    ccf                                           ; $6268: $3f
    db $dd                                        ; $6269: $dd
    dec d                                         ; $626a: $15
    rst $38                                       ; $626b: $ff
    rra                                           ; $626c: $1f
    push af                                       ; $626d: $f5
    ld [$c040], sp                                ; $626e: $08 $40 $c0
    add $c9                                       ; $6271: $c6 $c9
    inc b                                         ; $6273: $04
    jr jr_094_623a                                ; $6274: $18 $c4

    bit 0, b                                      ; $6276: $cb $40

jr_094_6278:
    nop                                           ; $6278: $00
    ret nz                                        ; $6279: $c0

    ret nz                                        ; $627a: $c0

    push bc                                       ; $627b: $c5
    add hl, de                                    ; $627c: $19
    cp $1a                                        ; $627d: $fe $1a
    db $fd                                        ; $627f: $fd
    ld bc, $fe02                                  ; $6280: $01 $02 $fe
    ld a, [de]                                    ; $6283: $1a
    rst $38                                       ; $6284: $ff
    ld a, [bc]                                    ; $6285: $0a
    rst $38                                       ; $6286: $ff
    dec de                                        ; $6287: $1b
    ld c, b                                       ; $6288: $48
    inc bc                                        ; $6289: $03
    xor d                                         ; $628a: $aa
    ld [bc], a                                    ; $628b: $02
    rst $38                                       ; $628c: $ff
    ld b, l                                       ; $628d: $45
    ret nz                                        ; $628e: $c0

    pop bc                                        ; $628f: $c1
    call nz, Call_000_1845                        ; $6290: $c4 $45 $18
    nop                                           ; $6293: $00
    ld b, h                                       ; $6294: $44
    nop                                           ; $6295: $00
    pop bc                                        ; $6296: $c1
    pop bc                                        ; $6297: $c1
    call nz, $c140                                ; $6298: $c4 $40 $c1
    ret nz                                        ; $629b: $c0

    ret nz                                        ; $629c: $c0

    and b                                         ; $629d: $a0
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    add c                                         ; $62a0: $81
    ld bc, $01e1                                  ; $62a1: $01 $e1 $01
    db $e3                                        ; $62a4: $e3
    ld b, c                                       ; $62a5: $41
    jp nz, $c208                                  ; $62a6: $c2 $08 $c2

    and d                                         ; $62a9: $a2
    and d                                         ; $62aa: $a2
    ld c, b                                       ; $62ab: $48
    call c, $0103                                 ; $62ac: $dc $03 $01
    nop                                           ; $62af: $00
    ld [bc], a                                    ; $62b0: $02
    add c                                         ; $62b1: $81
    inc b                                         ; $62b2: $04
    nop                                           ; $62b3: $00
    cp d                                          ; $62b4: $ba
    ld a, [hl-]                                   ; $62b5: $3a
    xor e                                         ; $62b6: $ab
    xor d                                         ; $62b7: $aa
    cp e                                          ; $62b8: $bb
    cp e                                          ; $62b9: $bb
    inc bc                                        ; $62ba: $03
    inc bc                                        ; $62bb: $03
    nop                                           ; $62bc: $00
    nop                                           ; $62bd: $00
    ld d, [hl]                                    ; $62be: $56
    nop                                           ; $62bf: $00
    or l                                          ; $62c0: $b5

jr_094_62c1:
    ld bc, $026f                                  ; $62c1: $01 $6f $02
    cp d                                          ; $62c4: $ba
    nop                                           ; $62c5: $00
    and d                                         ; $62c6: $a2
    rst $30                                       ; $62c7: $f7
    and d                                         ; $62c8: $a2
    cp e                                          ; $62c9: $bb
    and c                                         ; $62ca: $a1
    ld b, h                                       ; $62cb: $44
    nop                                           ; $62cc: $00
    sbc c                                         ; $62cd: $99
    add b                                         ; $62ce: $80
    jr nz, jr_094_62d1                            ; $62cf: $20 $00

jr_094_62d1:
    add b                                         ; $62d1: $80
    add b                                         ; $62d2: $80
    ld b, b                                       ; $62d3: $40
    ld b, b                                       ; $62d4: $40
    or l                                          ; $62d5: $b5
    dec [hl]                                      ; $62d6: $35
    ld l, $10                                     ; $62d7: $2e $10
    ld l, $ca                                     ; $62d9: $2e $ca
    jp z, $0820                                   ; $62db: $ca $20 $08

    dec b                                         ; $62de: $05
    ld a, [$ff00]                                 ; $62df: $fa $00 $ff
    ld [$df6f], sp                                ; $62e2: $08 $6f $df
    ld b, b                                       ; $62e5: $40
    jr nz, jr_094_6278                            ; $62e6: $20 $90

    ld [$0000], sp                                ; $62e8: $08 $00 $00
    adc h                                         ; $62eb: $8c
    nop                                           ; $62ec: $00
    ld d, b                                       ; $62ed: $50
    and b                                         ; $62ee: $a0
    ld e, a                                       ; $62ef: $5f
    nop                                           ; $62f0: $00
    rst $38                                       ; $62f1: $ff
    or $fb                                        ; $62f2: $f6 $fb
    ld [bc], a                                    ; $62f4: $02
    ld b, c                                       ; $62f5: $41
    inc b                                         ; $62f6: $04
    db $10                                        ; $62f7: $10
    jr jr_094_62fa                                ; $62f8: $18 $00

jr_094_62fa:
    adc b                                         ; $62fa: $88
    ld a, [de]                                    ; $62fb: $1a
    push hl                                       ; $62fc: $e5
    ld bc, $0483                                  ; $62fd: $01 $83 $04
    inc h                                         ; $6300: $24
    inc bc                                        ; $6301: $03
    add e                                         ; $6302: $83
    or b                                          ; $6303: $b0
    ld [$0302], sp                                ; $6304: $08 $02 $03
    ld [$0000], sp                                ; $6307: $08 $00 $00
    cp [hl]                                       ; $630a: $be
    inc b                                         ; $630b: $04
    cp [hl]                                       ; $630c: $be
    inc d                                         ; $630d: $14
    inc d                                         ; $630e: $14
    cp [hl]                                       ; $630f: $be
    cp [hl]                                       ; $6310: $be
    ld e, h                                       ; $6311: $5c
    ld [$0000], sp                                ; $6312: $08 $00 $00
    nop                                           ; $6315: $00
    ld d, a                                       ; $6316: $57
    ld d, a                                       ; $6317: $57
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    jr nc, @+$0a                                  ; $631a: $30 $08

    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    ld [bc], a                                    ; $631e: $02
    ret z                                         ; $631f: $c8

    inc [hl]                                      ; $6320: $34
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    ldh [rNR10], a                                ; $6323: $e0 $10
    ld [hl], e                                    ; $6325: $73
    inc bc                                        ; $6326: $03
    ld d, b                                       ; $6327: $50
    nop                                           ; $6328: $00
    adc b                                         ; $6329: $88
    ld [hl+], a                                   ; $632a: $22
    ld a, [hl+]                                   ; $632b: $2a
    add b                                         ; $632c: $80
    ld [hl+], a                                   ; $632d: $22
    ld [$a802], sp                                ; $632e: $08 $02 $a8
    nop                                           ; $6331: $00
    xor b                                         ; $6332: $a8
    nop                                           ; $6333: $00
    adc b                                         ; $6334: $88
    jr nz, jr_094_62c1                            ; $6335: $20 $8a

    jr nz, @-$54                                  ; $6337: $20 $aa

    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    add d                                         ; $633b: $82
    inc bc                                        ; $633c: $03
    add e                                         ; $633d: $83
    inc hl                                        ; $633e: $23
    and d                                         ; $633f: $a2
    inc bc                                        ; $6340: $03
    inc hl                                        ; $6341: $23
    add e                                         ; $6342: $83
    nop                                           ; $6343: $00
    ld [hl+], a                                   ; $6344: $22
    inc bc                                        ; $6345: $03
    inc bc                                        ; $6346: $03
    and e                                         ; $6347: $a3
    add d                                         ; $6348: $82
    inc hl                                        ; $6349: $23
    and e                                         ; $634a: $a3
    inc bc                                        ; $634b: $03
    inc b                                         ; $634c: $04
    ld d, [hl]                                    ; $634d: $56
    ld d, [hl]                                    ; $634e: $56
    ld d, e                                       ; $634f: $53
    ld d, e                                       ; $6350: $53
    ld a, [bc]                                    ; $6351: $0a
    and [hl]                                      ; $6352: $a6
    nop                                           ; $6353: $00
    inc e                                         ; $6354: $1c
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00

jr_094_6357:
    set 1, d                                      ; $6357: $cb $ca
    adc a                                         ; $6359: $8f
    adc d                                         ; $635a: $8a
    rst $08                                       ; $635b: $cf
    adc $50                                       ; $635c: $ce $50
    nop                                           ; $635e: $00
    nop                                           ; $635f: $00
    db $10                                        ; $6360: $10
    ld b, b                                       ; $6361: $40
    ld b, c                                       ; $6362: $41
    ld [de], a                                    ; $6363: $12
    ld b, b                                       ; $6364: $40
    db $10                                        ; $6365: $10
    ld de, $0842                                  ; $6366: $11 $42 $08
    stop                                          ; $6369: $10 $00
    ld bc, $b512                                  ; $636b: $01 $12 $b5
    inc bc                                        ; $636e: $03
    xor d                                         ; $636f: $aa
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    jr nz, jr_094_6357                            ; $6372: $20 $e3

    inc d                                         ; $6374: $14
    adc d                                         ; $6375: $8a
    nop                                           ; $6376: $00
    ld b, d                                       ; $6377: $42
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    or d                                          ; $637a: $b2
    ld c, l                                       ; $637b: $4d
    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    ld [bc], a                                    ; $637f: $02
    and e                                         ; $6380: $a3
    inc bc                                        ; $6381: $03
    inc bc                                        ; $6382: $03
    ld [bc], a                                    ; $6383: $02
    dec hl                                        ; $6384: $2b
    ld bc, $032b                                  ; $6385: $01 $2b $03
    ld a, [hl+]                                   ; $6388: $2a
    inc bc                                        ; $6389: $03
    dec bc                                        ; $638a: $0b
    inc hl                                        ; $638b: $23
    ld a, [bc]                                    ; $638c: $0a
    inc b                                         ; $638d: $04
    nop                                           ; $638e: $00
    ld bc, $0010                                  ; $638f: $01 $10 $00
    ld a, [bc]                                    ; $6392: $0a
    nop                                           ; $6393: $00
    sub l                                         ; $6394: $95
    nop                                           ; $6395: $00
    ld l, e                                       ; $6396: $6b
    ld a, [bc]                                    ; $6397: $0a
    inc b                                         ; $6398: $04
    nop                                           ; $6399: $00
    ei                                            ; $639a: $fb
    inc b                                         ; $639b: $04
    and h                                         ; $639c: $a4
    ld e, e                                       ; $639d: $5b
    xor d                                         ; $639e: $aa
    rst $38                                       ; $639f: $ff
    dec b                                         ; $63a0: $05
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    ld d, a                                       ; $63a3: $57
    inc bc                                        ; $63a4: $03
    dec bc                                        ; $63a5: $0b
    ld bc, $e1eb                                  ; $63a6: $01 $eb $e1
    or l                                          ; $63a9: $b5
    and c                                         ; $63aa: $a1
    nop                                           ; $63ab: $00
    db $eb                                        ; $63ac: $eb
    ldh [rNR21], a                                ; $63ad: $e0 $16
    nop                                           ; $63af: $00
    inc b                                         ; $63b0: $04
    nop                                           ; $63b1: $00
    ld d, e                                       ; $63b2: $53
    ld bc, $fc00                                  ; $63b3: $01 $00 $fc
    pop de                                        ; $63b6: $d1
    ei                                            ; $63b7: $fb
    ld d, c                                       ; $63b8: $51
    xor $61                                       ; $63b9: $ee $61
    or a                                          ; $63bb: $b7
    and c                                         ; $63bc: $a1
    ld bc, $a1ee                                  ; $63bd: $01 $ee $a1
    and a                                         ; $63c0: $a7
    ld bc, $0186                                  ; $63c1: $01 $86 $01
    cp a                                          ; $63c4: $bf
    ld [hl], h                                    ; $63c5: $74
    inc bc                                        ; $63c6: $03
    ld b, b                                       ; $63c7: $40
    ld l, a                                       ; $63c8: $6f
    call nz, Call_094_6512                        ; $63c9: $c4 $12 $65
    or l                                          ; $63cc: $b5
    ld l, a                                       ; $63cd: $6f
    or l                                          ; $63ce: $b5
    ld l, a                                       ; $63cf: $6f
    cp e                                          ; $63d0: $bb
    add b                                         ; $63d1: $80
    or h                                          ; $63d2: $b4
    ld a, [bc]                                    ; $63d3: $0a
    ld a, [hl]                                    ; $63d4: $7e
    sub e                                         ; $63d5: $93
    ld d, l                                       ; $63d6: $55
    sbc l                                         ; $63d7: $9d
    dec a                                         ; $63d8: $3d
    xor a                                         ; $63d9: $af
    ld a, a                                       ; $63da: $7f
    adc d                                         ; $63db: $8a

jr_094_63dc:
    ld b, h                                       ; $63dc: $44
    inc bc                                        ; $63dd: $03
    cp l                                          ; $63de: $bd
    db $fc                                        ; $63df: $fc
    dec de                                        ; $63e0: $1b
    inc [hl]                                      ; $63e1: $34
    nop                                           ; $63e2: $00
    ld de, HeaderTitle                            ; $63e3: $11 $34 $01
    ld [$0000], sp                                ; $63e6: $08 $00 $00
    and l                                         ; $63e9: $a5
    and b                                         ; $63ea: $a0
    or c                                          ; $63eb: $b1
    and b                                         ; $63ec: $a0
    xor a                                         ; $63ed: $af
    xor a                                         ; $63ee: $af
    dec bc                                        ; $63ef: $0b
    nop                                           ; $63f0: $00
    ld bc, HeaderSGBFlag                          ; $63f1: $01 $46 $01
    inc bc                                        ; $63f4: $03
    ld bc, $0106                                  ; $63f5: $01 $06 $01
    dec bc                                        ; $63f8: $0b
    ld bc, $4201                                  ; $63f9: $01 $01 $42
    ld bc, $0127                                  ; $63fc: $01 $27 $01
    ld c, [hl]                                    ; $63ff: $4e
    ld bc, $0b74                                  ; $6400: $01 $74 $0b
    ld de, $9fff                                  ; $6403: $11 $ff $9f
    ld e, l                                       ; $6406: $5d
    ld b, h                                       ; $6407: $44
    inc bc                                        ; $6408: $03
    rst $18                                       ; $6409: $df
    db $db                                        ; $640a: $db
    cp a                                          ; $640b: $bf
    ld b, h                                       ; $640c: $44
    inc bc                                        ; $640d: $03
    inc b                                         ; $640e: $04
    ld l, [hl]                                    ; $640f: $6e
    sbc a                                         ; $6410: $9f
    ld c, $91                                     ; $6411: $0e $91
    nop                                           ; $6413: $00
    ld [bc], a                                    ; $6414: $02
    nop                                           ; $6415: $00
    pop af                                        ; $6416: $f1
    pop af                                        ; $6417: $f1
    ld bc, $ff9f                                  ; $6418: $01 $9f $ff
    sbc a                                         ; $641b: $9f
    pop af                                        ; $641c: $f1
    cp a                                          ; $641d: $bf
    pop af                                        ; $641e: $f1
    xor d                                         ; $641f: $aa
    ld bc, $1000                                  ; $6420: $01 $00 $10
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    ld b, b                                       ; $6425: $40
    ld l, [hl]                                    ; $6426: $6e
    inc b                                         ; $6427: $04
    or $f6                                        ; $6428: $f6 $f6
    jp nc, Jump_000_00d2                          ; $642a: $d2 $d2 $00

    and $c6                                       ; $642d: $e6 $c6
    sub a                                         ; $642f: $97
    ld bc, HeaderLogo                             ; $6430: $01 $04 $01
    inc hl                                        ; $6433: $23
    ld bc, $0063                                  ; $6434: $01 $63 $00
    ld b, h                                       ; $6437: $44
    nop                                           ; $6438: $00
    inc b                                         ; $6439: $04
    jr jr_094_649b                                ; $643a: $18 $5f

    push af                                       ; $643c: $f5
    ld l, l                                       ; $643d: $6d
    ld a, b                                       ; $643e: $78
    nop                                           ; $643f: $00
    ld a, h                                       ; $6440: $7c
    ld [$6d00], sp                                ; $6441: $08 $00 $6d
    or a                                          ; $6444: $b7
    ld l, a                                       ; $6445: $6f
    cp e                                          ; $6446: $bb
    ld a, a                                       ; $6447: $7f
    reti                                          ; $6448: $d9


    pop de                                        ; $6449: $d1
    rst $38                                       ; $644a: $ff
    add hl, de                                    ; $644b: $19
    or c                                          ; $644c: $b1
    rst $38                                       ; $644d: $ff
    pop de                                        ; $644e: $d1
    ld a, [hl-]                                   ; $644f: $3a
    nop                                           ; $6450: $00
    ld [bc], a                                    ; $6451: $02
    jr z, @+$72                                   ; $6452: $28 $70

    jr nz, jr_094_63dc                            ; $6454: $20 $86

    dec b                                         ; $6456: $05
    jr nz, jr_094_6459                            ; $6457: $20 $00

jr_094_6459:
    push af                                       ; $6459: $f5
    jp c, Jump_094_4504                           ; $645a: $da $04 $45

    cp d                                          ; $645d: $ba
    db $10                                        ; $645e: $10
    rst $28                                       ; $645f: $ef
    xor d                                         ; $6460: $aa
    nop                                           ; $6461: $00
    rst $38                                       ; $6462: $ff
    inc bc                                        ; $6463: $03
    ld bc, $0124                                  ; $6464: $01 $24 $01
    add e                                         ; $6467: $83
    ld bc, $0256                                  ; $6468: $01 $56 $02
    ld bc, $01eb                                  ; $646b: $01 $eb $01
    ld e, [hl]                                    ; $646e: $5e
    and c                                         ; $646f: $a1
    ld bc, $0541                                  ; $6470: $01 $41 $05
    ld [hl], a                                    ; $6473: $77
    adc a                                         ; $6474: $8f
    ld [hl], h                                    ; $6475: $74
    inc bc                                        ; $6476: $03
    cp a                                          ; $6477: $bf
    push de                                       ; $6478: $d5
    ld d, a                                       ; $6479: $57
    call nz, Call_000_0200                        ; $647a: $c4 $00 $02
    jr jr_094_64b9                                ; $647d: $18 $3a

    jr jr_094_6497                                ; $647f: $18 $16

    ld c, $02                                     ; $6481: $0e $02
    ldh a, [$1f]                                  ; $6483: $f0 $1f
    ldh a, [$1f]                                  ; $6485: $f0 $1f
    ld a, [$74ff]                                 ; $6487: $fa $ff $74
    dec bc                                        ; $648a: $0b
    cp $20                                        ; $648b: $fe $20
    ld hl, sp-$0b                                 ; $648d: $f8 $f5
    ld b, h                                       ; $648f: $44
    inc de                                        ; $6490: $13
    cp $f0                                        ; $6491: $fe $f0
    db $fd                                        ; $6493: $fd
    ld hl, sp-$5a                                 ; $6494: $f8 $a6
    ld [bc], a                                    ; $6496: $02

jr_094_6497:
    inc c                                         ; $6497: $0c
    ld c, a                                       ; $6498: $4f
    ld a, [de]                                    ; $6499: $1a
    rst $18                                       ; $649a: $df

jr_094_649b:
    or c                                          ; $649b: $b1
    ld [hl], l                                    ; $649c: $75
    ld b, h                                       ; $649d: $44
    inc de                                        ; $649e: $13
    xor $00                                       ; $649f: $ee $00
    ld h, c                                       ; $64a1: $61
    push de                                       ; $64a2: $d5
    or e                                          ; $64a3: $b3
    ld h, [hl]                                    ; $64a4: $66
    db $ec                                        ; $64a5: $ec
    ld a, a                                       ; $64a6: $7f
    ld [$217f], a                                 ; $64a7: $ea $7f $21
    pop af                                        ; $64aa: $f1
    push af                                       ; $64ab: $f5
    ld b, h                                       ; $64ac: $44
    inc de                                        ; $64ad: $13
    xor $e0                                       ; $64ae: $ee $e0
    push af                                       ; $64b0: $f5
    pop af                                        ; $64b1: $f1
    ld hl, sp+$0a                                 ; $64b2: $f8 $0a
    db $10                                        ; $64b4: $10
    xor a                                         ; $64b5: $af
    ld h, e                                       ; $64b6: $63
    push de                                       ; $64b7: $d5
    ld b, h                                       ; $64b8: $44

jr_094_64b9:
    inc de                                        ; $64b9: $13
    db $ed                                        ; $64ba: $ed
    jp Jump_094_6733                              ; $64bb: $c3 $33 $67


    ld [$1fee], sp                                ; $64be: $08 $ee $1f
    ld c, $11                                     ; $64c1: $0e $11
    ld bc, $1101                                  ; $64c3: $01 $01 $11
    pop af                                        ; $64c6: $f1
    pop af                                        ; $64c7: $f1
    db $10                                        ; $64c8: $10
    rra                                           ; $64c9: $1f
    rst $38                                       ; $64ca: $ff
    rra                                           ; $64cb: $1f
    ret nc                                        ; $64cc: $d0

    nop                                           ; $64cd: $00
    xor e                                         ; $64ce: $ab
    ld e, $55                                     ; $64cf: $1e $55
    inc c                                         ; $64d1: $0c
    ld h, b                                       ; $64d2: $60
    rst $30                                       ; $64d3: $f7
    db $fc                                        ; $64d4: $fc
    ld [bc], a                                    ; $64d5: $02
    inc b                                         ; $64d6: $04
    jr jr_094_6528                                ; $64d7: $18 $4f

    ld a, [de]                                    ; $64d9: $1a
    ld a, e                                       ; $64da: $7b
    ld [$3075], a                                 ; $64db: $ea $75 $30
    db $ec                                        ; $64de: $ec
    ld [hl], a                                    ; $64df: $77
    nop                                           ; $64e0: $00
    inc bc                                        ; $64e1: $03
    inc b                                         ; $64e2: $04
    jr jr_094_6554                                ; $64e3: $18 $6f

    ld a, [$3d97]                                 ; $64e5: $fa $97 $3d
    dec d                                         ; $64e8: $15
    ld c, l                                       ; $64e9: $4d
    add hl, de                                    ; $64ea: $19
    rst $28                                       ; $64eb: $ef
    db $fc                                        ; $64ec: $fc
    ld [bc], a                                    ; $64ed: $02
    db $eb                                        ; $64ee: $eb
    nop                                           ; $64ef: $00
    inc bc                                        ; $64f0: $03
    rst $28                                       ; $64f1: $ef
    ld b, h                                       ; $64f2: $44
    inc bc                                        ; $64f3: $03
    ld e, b                                       ; $64f4: $58
    ld d, c                                       ; $64f5: $51
    ret nc                                        ; $64f6: $d0

    nop                                           ; $64f7: $00
    ld d, c                                       ; $64f8: $51
    ld a, [hl-]                                   ; $64f9: $3a
    nop                                           ; $64fa: $00
    ld [bc], a                                    ; $64fb: $02
    jr z, @-$1f                                   ; $64fc: $28 $df

    or c                                          ; $64fe: $b1
    ld a, h                                       ; $64ff: $7c
    nop                                           ; $6500: $00
    pop hl                                        ; $6501: $e1
    db $dd                                        ; $6502: $dd
    or e                                          ; $6503: $b3
    ld l, e                                       ; $6504: $6b
    ld e, $f7                                     ; $6505: $1e $f7
    inc c                                         ; $6507: $0c
    push de                                       ; $6508: $d5
    add b                                         ; $6509: $80
    ld c, b                                       ; $650a: $48
    nop                                           ; $650b: $00
    ld [hl], a                                    ; $650c: $77
    inc c                                         ; $650d: $0c
    rst $38                                       ; $650e: $ff
    pop af                                        ; $650f: $f1
    db $fc                                        ; $6510: $fc
    pop hl                                        ; $6511: $e1

Call_094_6512:
    db $fd                                        ; $6512: $fd
    db $10                                        ; $6513: $10

jr_094_6514:
    di                                            ; $6514: $f3
    ld a, e                                       ; $6515: $7b
    xor $44                                       ; $6516: $ee $44
    jr jr_094_6591                                ; $6518: $18 $77

    db $ec                                        ; $651a: $ec
    cp a                                          ; $651b: $bf
    ld h, e                                       ; $651c: $63
    ld de, $c3dd                                  ; $651d: $11 $dd $c3
    cp e                                          ; $6520: $bb
    ld b, h                                       ; $6521: $44
    inc bc                                        ; $6522: $03
    rst $28                                       ; $6523: $ef
    add hl, de                                    ; $6524: $19
    call LCDCInterrupt                            ; $6525: $cd $48 $00

jr_094_6528:
    jr c, jr_094_6599                             ; $6528: $38 $6f

    add hl, de                                    ; $652a: $19
    ld a, [hl-]                                   ; $652b: $3a
    jr jr_094_6514                                ; $652c: $18 $e6

    ld c, $44                                     ; $652e: $0e $44
    ld [$ffb1], sp                                ; $6530: $08 $b1 $ff
    xor $00                                       ; $6533: $ee $00
    pop af                                        ; $6535: $f1
    ldh [$f1], a                                  ; $6536: $e0 $f1
    ldh [rNR11], a                                ; $6538: $e0 $11
    ld [$1f11], sp                                ; $653a: $08 $11 $1f
    ld [hl+], a                                   ; $653d: $22
    rra                                           ; $653e: $1f
    sub c                                         ; $653f: $91
    sub h                                         ; $6540: $94
    nop                                           ; $6541: $00
    push af                                       ; $6542: $f5
    dec d                                         ; $6543: $15
    xor $9e                                       ; $6544: $ee $9e
    db $10                                        ; $6546: $10
    add b                                         ; $6547: $80
    ld l, b                                       ; $6548: $68
    ld de, $3020                                  ; $6549: $11 $20 $30
    xor [hl]                                      ; $654c: $ae
    db $10                                        ; $654d: $10
    adc b                                         ; $654e: $88
    stop                                          ; $654f: $10 $00
    ld de, $111f                                  ; $6551: $11 $1f $11

jr_094_6554:
    jr nc, jr_094_6575                            ; $6554: $30 $1f

    push af                                       ; $6556: $f5
    and h                                         ; $6557: $a4
    ld a, [bc]                                    ; $6558: $0a
    inc hl                                        ; $6559: $23
    rlca                                          ; $655a: $07
    ld a, a                                       ; $655b: $7f
    rst $38                                       ; $655c: $ff
    ld h, b                                       ; $655d: $60
    rst $38                                       ; $655e: $ff
    jr nz, jr_094_65e0                            ; $655f: $20 $7f

    rst $28                                       ; $6561: $ef
    ld [bc], a                                    ; $6562: $02
    ld [$c847], sp                                ; $6563: $08 $47 $c8
    ret nz                                        ; $6566: $c0

    ret nz                                        ; $6567: $c0

    ld b, [hl]                                    ; $6568: $46
    ld a, h                                       ; $6569: $7c
    ret                                           ; $656a: $c9


    inc b                                         ; $656b: $04
    nop                                           ; $656c: $00
    ld [$0c00], sp                                ; $656d: $08 $00 $0c
    ld [$1816], sp                                ; $6570: $08 $16 $18
    ld b, $20                                     ; $6573: $06 $20

jr_094_6575:
    ldh [$7f], a                                  ; $6575: $e0 $7f
    nop                                           ; $6577: $00
    rst $38                                       ; $6578: $ff
    ld b, h                                       ; $6579: $44
    set 0, b                                      ; $657a: $cb $c0
    ret nz                                        ; $657c: $c0

    ld b, l                                       ; $657d: $45
    jp z, Jump_000_00c0                           ; $657e: $ca $c0 $00

    ret nz                                        ; $6581: $c0

    ld b, b                                       ; $6582: $40
    jp nz, $c0c2                                  ; $6583: $c2 $c2 $c0

    ld b, b                                       ; $6586: $40
    jp z, $00c8                                   ; $6587: $ca $c8 $00

    jp nz, $0d72                                  ; $658a: $c2 $72 $0d

    ld a, [$f00d]                                 ; $658d: $fa $0d $f0
    rrca                                          ; $6590: $0f

jr_094_6591:
    jp c, $0d08                                   ; $6591: $da $08 $0d

    ld d, d                                       ; $6594: $52
    dec c                                         ; $6595: $0d
    jp c, RST_08                                  ; $6596: $da $08 $00

jr_094_6599:
    cp a                                          ; $6599: $bf
    rrca                                          ; $659a: $0f
    ld c, d                                       ; $659b: $4a
    nop                                           ; $659c: $00
    ret nz                                        ; $659d: $c0

    jp nz, $42c8                                  ; $659e: $c2 $c8 $42

    ret z                                         ; $65a1: $c8

    ret z                                         ; $65a2: $c8

    jp nz, $204a                                  ; $65a3: $c2 $4a $20

    ret nz                                        ; $65a6: $c0

    ret nz                                        ; $65a7: $c0

    ld h, $00                                     ; $65a8: $26 $00
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff

jr_094_65ac:
    cp a                                          ; $65ac: $bf
    nop                                           ; $65ad: $00
    or l                                          ; $65ae: $b5
    nop                                           ; $65af: $00
    ld [$00ff], sp                                ; $65b0: $08 $ff $00
    db $d3                                        ; $65b3: $d3
    ld [$00db], sp                                ; $65b4: $08 $db $00
    push de                                       ; $65b7: $d5
    nop                                           ; $65b8: $00
    ld [$00fb], sp                                ; $65b9: $08 $fb $00
    ld d, a                                       ; $65bc: $57
    ld [$ffa3], sp                                ; $65bd: $08 $a3 $ff
    push bc                                       ; $65c0: $c5
    db $10                                        ; $65c1: $10
    rst $38                                       ; $65c2: $ff
    xor e                                         ; $65c3: $ab
    rst $30                                       ; $65c4: $f7
    inc b                                         ; $65c5: $04
    jr z, jr_094_6625                             ; $65c6: $28 $5d

    db $e3                                        ; $65c8: $e3
    ld h, b                                       ; $65c9: $60
    sub c                                         ; $65ca: $91
    nop                                           ; $65cb: $00
    ld bc, $3900                                  ; $65cc: $01 $00 $39
    ld b, h                                       ; $65cf: $44
    nop                                           ; $65d0: $00
    ld bc, $0870                                  ; $65d1: $01 $70 $08
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    ld bc, $6499                                  ; $65d6: $01 $99 $64
    ld bc, $0f00                                  ; $65d9: $01 $00 $0f
    ld d, b                                       ; $65dc: $50
    ld [$0040], sp                                ; $65dd: $08 $40 $00

jr_094_65e0:
    ld c, [hl]                                    ; $65e0: $4e
    ld de, $0211                                  ; $65e1: $11 $11 $02
    ld b, b                                       ; $65e4: $40
    ld c, b                                       ; $65e5: $48
    dec d                                         ; $65e6: $15
    nop                                           ; $65e7: $00
    ld b, b                                       ; $65e8: $40
    nop                                           ; $65e9: $00
    ld b, $48                                     ; $65ea: $06 $48
    ld a, [hl+]                                   ; $65ec: $2a
    add e                                         ; $65ed: $83
    inc hl                                        ; $65ee: $23
    dec bc                                        ; $65ef: $0b
    add b                                         ; $65f0: $80
    db $fc                                        ; $65f1: $fc
    ld [bc], a                                    ; $65f2: $02
    inc hl                                        ; $65f3: $23
    ld [bc], a                                    ; $65f4: $02
    inc bc                                        ; $65f5: $03
    db $d3                                        ; $65f6: $d3
    dec hl                                        ; $65f7: $2b
    ld [bc], a                                    ; $65f8: $02
    inc bc                                        ; $65f9: $03
    jr nz, jr_094_662f                            ; $65fa: $20 $33

    ld c, e                                       ; $65fc: $4b
    or b                                          ; $65fd: $b0
    jr @+$01                                      ; $65fe: $18 $ff

    cp $07                                        ; $6600: $fe $07
    cp $f7                                        ; $6602: $fe $f7
    and b                                         ; $6604: $a0
    ld [bc], a                                    ; $6605: $02
    db $10                                        ; $6606: $10
    pop af                                        ; $6607: $f1
    jr c, jr_094_660a                             ; $6608: $38 $00

jr_094_660a:
    adc b                                         ; $660a: $88
    ld d, h                                       ; $660b: $54
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    jr nz, jr_094_6610                            ; $660e: $20 $00

jr_094_6610:
    nop                                           ; $6610: $00
    ld [hl+], a                                   ; $6611: $22
    add l                                         ; $6612: $85
    add b                                         ; $6613: $80
    jr nz, jr_094_6599                            ; $6614: $20 $83

    inc b                                         ; $6616: $04
    nop                                           ; $6617: $00
    stop                                          ; $6618: $10 $00
    add hl, bc                                    ; $661a: $09
    ld d, $f6                                     ; $661b: $16 $f6
    ld [bc], a                                    ; $661d: $02
    dec b                                         ; $661e: $05
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    add $00                                       ; $6621: $c6 $00
    jr z, jr_094_6625                             ; $6623: $28 $00

jr_094_6625:
    nop                                           ; $6625: $00
    jr jr_094_65ac                                ; $6626: $18 $84

    ld [bc], a                                    ; $6628: $02
    inc bc                                        ; $6629: $03
    sub e                                         ; $662a: $93
    inc b                                         ; $662b: $04
    ld l, e                                       ; $662c: $6b
    ld [bc], a                                    ; $662d: $02
    inc bc                                        ; $662e: $03

jr_094_662f:
    ld [hl], e                                    ; $662f: $73
    adc e                                         ; $6630: $8b
    ld a, h                                       ; $6631: $7c
    inc bc                                        ; $6632: $03
    ld b, e                                       ; $6633: $43
    ld b, d                                       ; $6634: $42
    jr @+$05                                      ; $6635: $18 $03

    ld b, e                                       ; $6637: $43
    inc de                                        ; $6638: $13
    ld [hl], $18                                  ; $6639: $36 $18
    ld b, $20                                     ; $663b: $06 $20
    ld c, $ff                                     ; $663d: $0e $ff
    cp $00                                        ; $663f: $fe $00
    nop                                           ; $6641: $00
    jr nz, jr_094_6667                            ; $6642: $20 $23

    inc b                                         ; $6644: $04
    jr nz, @-$7e                                  ; $6645: $20 $80

    and d                                         ; $6647: $a2
    dec b                                         ; $6648: $05
    ld [$00a0], sp                                ; $6649: $08 $a0 $00
    inc bc                                        ; $664c: $03
    and h                                         ; $664d: $a4
    dec bc                                        ; $664e: $0b
    add hl, bc                                    ; $664f: $09
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    ld h, h                                       ; $6652: $64
    ld h, b                                       ; $6653: $60
    sbc d                                         ; $6654: $9a
    inc a                                         ; $6655: $3c
    jr z, jr_094_6673                             ; $6656: $28 $1b

    add hl, bc                                    ; $6658: $09
    ld d, d                                       ; $6659: $52
    inc bc                                        ; $665a: $03
    inc bc                                        ; $665b: $03
    ld d, e                                       ; $665c: $53
    ld [bc], a                                    ; $665d: $02
    db $10                                        ; $665e: $10
    inc de                                        ; $665f: $13
    inc de                                        ; $6660: $13
    ld b, e                                       ; $6661: $43
    ld [$0308], sp                                ; $6662: $08 $08 $03
    inc bc                                        ; $6665: $03
    rst $38                                       ; $6666: $ff

jr_094_6667:
    rst $38                                       ; $6667: $ff
    nop                                           ; $6668: $00
    ld b, $f8                                     ; $6669: $06 $f8
    adc d                                         ; $666b: $8a
    ld [hl], b                                    ; $666c: $70
    and b                                         ; $666d: $a0
    ld e, a                                       ; $666e: $5f
    cpl                                           ; $666f: $2f
    rst $18                                       ; $6670: $df
    nop                                           ; $6671: $00
    xor d                                         ; $6672: $aa

jr_094_6673:
    ld d, b                                       ; $6673: $50
    nop                                           ; $6674: $00
    ld hl, sp+$2a                                 ; $6675: $f8 $2a
    ret nc                                        ; $6677: $d0

    ldh a, [$f8]                                  ; $6678: $f0 $f8
    nop                                           ; $667a: $00
    add d                                         ; $667b: $82
    dec c                                         ; $667c: $0d
    jr z, jr_094_668c                             ; $667d: $28 $0d

    and b                                         ; $667f: $a0
    dec c                                         ; $6680: $0d
    adc d                                         ; $6681: $8a
    dec c                                         ; $6682: $0d
    nop                                           ; $6683: $00
    add b                                         ; $6684: $80
    rrca                                          ; $6685: $0f
    xor b                                         ; $6686: $a8
    rrca                                          ; $6687: $0f
    ld h, d                                       ; $6688: $62
    dec c                                         ; $6689: $0d
    xor h                                         ; $668a: $ac
    dec bc                                        ; $668b: $0b

jr_094_668c:
    nop                                           ; $668c: $00
    adc e                                         ; $668d: $8b
    ld [hl], b                                    ; $668e: $70
    ld h, $d8                                     ; $668f: $26 $d8
    dec c                                         ; $6691: $0d
    ret nc                                        ; $6692: $d0

    ld b, $d8                                     ; $6693: $06 $d8
    nop                                           ; $6695: $00
    xor l                                         ; $6696: $ad
    ld d, b                                       ; $6697: $50
    rlca                                          ; $6698: $07
    ld hl, sp+$0e                                 ; $6699: $f8 $0e
    ldh a, [$a5]                                  ; $669b: $f0 $a5

jr_094_669d:
    ld e, b                                       ; $669d: $58
    nop                                           ; $669e: $00
    ld a, d                                       ; $669f: $7a
    nop                                           ; $66a0: $00
    ld a, [c]                                     ; $66a1: $f2
    ld [$00d8], sp                                ; $66a2: $08 $d8 $00
    ld d, d                                       ; $66a5: $52
    ld [$7806], sp                                ; $66a6: $08 $06 $78
    nop                                           ; $66a9: $00
    ld [hl], b                                    ; $66aa: $70
    ld [$0c5a], sp                                ; $66ab: $08 $5a $0c
    nop                                           ; $66ae: $00
    jr nc, @+$1c                                  ; $66af: $30 $1a

    add b                                         ; $66b1: $80
    add h                                         ; $66b2: $84
    jr nc, jr_094_66e7                            ; $66b3: $30 $32

    push af                                       ; $66b5: $f5
    rst $38                                       ; $66b6: $ff
    ld a, [$771f]                                 ; $66b7: $fa $1f $77
    ld [$02fd], sp                                ; $66ba: $08 $fd $02
    ccf                                           ; $66bd: $3f
    ei                                            ; $66be: $fb
    inc b                                         ; $66bf: $04
    ld c, h                                       ; $66c0: $4c
    ld c, $10                                     ; $66c1: $0e $10
    ld e, d                                       ; $66c3: $5a
    or h                                          ; $66c4: $b4
    rla                                           ; $66c5: $17
    or a                                          ; $66c6: $b7
    rrca                                          ; $66c7: $0f
    cp l                                          ; $66c8: $bd
    rra                                           ; $66c9: $1f
    jp Jump_000_0007                              ; $66ca: $c3 $07 $00


    ret nc                                        ; $66cd: $d0

    dec c                                         ; $66ce: $0d
    ld hl, sp+$0d                                 ; $66cf: $f8 $0d
    ld bc, $fafc                                  ; $66d1: $01 $fc $fa
    db $fd                                        ; $66d4: $fd
    nop                                           ; $66d5: $00
    jr nz, jr_094_66e7                            ; $66d6: $20 $0f

    adc d                                         ; $66d8: $8a
    dec c                                         ; $66d9: $0d
    jr nz, jr_094_66eb                            ; $66da: $20 $0f

    adc b                                         ; $66dc: $88
    rrca                                          ; $66dd: $0f
    nop                                           ; $66de: $00
    rst $08                                       ; $66df: $cf
    db $10                                        ; $66e0: $10
    ld h, $58                                     ; $66e1: $26 $58
    adc l                                         ; $66e3: $8d
    ld [hl], b                                    ; $66e4: $70
    and a                                         ; $66e5: $a7
    ld e, b                                       ; $66e6: $58

jr_094_66e7:
    nop                                           ; $66e7: $00
    dec hl                                        ; $66e8: $2b
    ret nc                                        ; $66e9: $d0

    add [hl]                                      ; $66ea: $86

jr_094_66eb:
    ld e, b                                       ; $66eb: $58
    ld a, [hl+]                                   ; $66ec: $2a
    ld d, b                                       ; $66ed: $50
    rlca                                          ; $66ee: $07
    ld a, b                                       ; $66ef: $78
    nop                                           ; $66f0: $00
    ld e, a                                       ; $66f1: $5f
    rst $38                                       ; $66f2: $ff
    cp a                                          ; $66f3: $bf
    rst $38                                       ; $66f4: $ff
    dec b                                         ; $66f5: $05
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    dec b                                         ; $66f8: $05
    nop                                           ; $66f9: $00
    sbc a                                         ; $66fa: $9f
    ld h, l                                       ; $66fb: $65
    ld e, l                                       ; $66fc: $5d
    and a                                         ; $66fd: $a7
    rra                                           ; $66fe: $1f
    push hl                                       ; $66ff: $e5
    rra                                           ; $6700: $1f
    push hl                                       ; $6701: $e5
    nop                                           ; $6702: $00
    ei                                            ; $6703: $fb
    dec de                                        ; $6704: $1b
    push af                                       ; $6705: $f5
    push af                                       ; $6706: $f5
    pop af                                        ; $6707: $f1
    pop af                                        ; $6708: $f1
    pop af                                        ; $6709: $f1
    ld de, $0283                                  ; $670a: $11 $83 $02
    jr @+$01                                      ; $670d: $18 $ff

    rst $38                                       ; $670f: $ff
    ei                                            ; $6710: $fb
    rst $38                                       ; $6711: $ff
    dec d                                         ; $6712: $15
    ld hl, sp+$01                                 ; $6713: $f8 $01
    ld [bc], a                                    ; $6715: $02
    jr z, jr_094_669d                             ; $6716: $28 $85

    add hl, sp                                    ; $6718: $39
    ld b, $05                                     ; $6719: $06 $05
    rst $38                                       ; $671b: $ff
    db $fd                                        ; $671c: $fd
    rlca                                          ; $671d: $07
    ld [bc], a                                    ; $671e: $02
    nop                                           ; $671f: $00
    rst $38                                       ; $6720: $ff
    ld [hl], $07                                  ; $6721: $36 $07
    sub b                                         ; $6723: $90
    xor d                                         ; $6724: $aa
    inc c                                         ; $6725: $0c
    ld b, b                                       ; $6726: $40
    rrca                                          ; $6727: $0f
    ld bc, $f000                                  ; $6728: $01 $00 $f0
    push af                                       ; $672b: $f5
    ld hl, sp+$0f                                 ; $672c: $f8 $0f
    nop                                           ; $672e: $00
    ldh a, [rNR51]                                ; $672f: $f0 $25
    ret c                                         ; $6731: $d8

    adc [hl]                                      ; $6732: $8e

Jump_094_6733:
    ld [hl], b                                    ; $6733: $70
    dec h                                         ; $6734: $25
    ld e, b                                       ; $6735: $58
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    db $fd                                        ; $6738: $fd
    ld a, [$f0fd]                                 ; $6739: $fa $fd $f0

Jump_094_673c:
    rrca                                          ; $673c: $0f
    ld a, d                                       ; $673d: $7a
    dec c                                         ; $673e: $0d
    ret nc                                        ; $673f: $d0

    nop                                           ; $6740: $00
    dec c                                         ; $6741: $0d
    ld a, b                                       ; $6742: $78
    dec c                                         ; $6743: $0d
    jp nc, $d80d                                  ; $6744: $d2 $0d $d8

    rrca                                          ; $6747: $0f
    add l                                         ; $6748: $85
    ld [bc], a                                    ; $6749: $02
    ld a, b                                       ; $674a: $78
    ld l, $50                                     ; $674b: $2e $50
    add l                                         ; $674d: $85
    ld a, b                                       ; $674e: $78
    inc c                                         ; $674f: $0c
    jp c, $2c00                                   ; $6750: $da $00 $2c

    jr nz, jr_094_67a5                            ; $6753: $20 $50

    add a                                         ; $6755: $87
    halt                                          ; $6756: $76
    nop                                           ; $6757: $00
    db $fd                                        ; $6758: $fd
    nop                                           ; $6759: $00
    ld d, e                                       ; $675a: $53
    ld [$007f], sp                                ; $675b: $08 $7f $00
    nop                                           ; $675e: $00
    push af                                       ; $675f: $f5
    ld [$00fd], sp                                ; $6760: $08 $fd $00
    dec b                                         ; $6763: $05
    ld hl, sp-$03                                 ; $6764: $f8 $fd
    ld a, [bc]                                    ; $6766: $0a
    ldh a, [$27]                                  ; $6767: $f0 $27
    ld [$e87a], sp                                ; $6769: $08 $7a $e8
    nop                                           ; $676c: $00
    jp c, Jump_000_00f4                           ; $676d: $da $f4 $00

    ld e, d                                       ; $6770: $5a
    jr nz, jr_094_6773                            ; $6771: $20 $00

jr_094_6773:
    ld [hl], d                                    ; $6773: $72
    ld hl, sp+$00                                 ; $6774: $f8 $00
    or d                                          ; $6776: $b2
    ld [$008f], sp                                ; $6777: $08 $8f $00
    dec h                                         ; $677a: $25
    nop                                           ; $677b: $00
    ld [$008b], sp                                ; $677c: $08 $8b $00
    add l                                         ; $677f: $85
    ld [$002b], sp                                ; $6780: $08 $2b $00
    and a                                         ; $6783: $a7
    ld [bc], a                                    ; $6784: $02
    ld [$008d], sp                                ; $6785: $08 $8d $00
    add a                                         ; $6788: $87
    ld [$1cba], sp                                ; $6789: $08 $ba $1c
    db $10                                        ; $678c: $10
    ldh a, [$08]                                  ; $678d: $f0 $08
    rrca                                          ; $678f: $0f
    ld a, a                                       ; $6790: $7f
    rrca                                          ; $6791: $0f
    rst $18                                       ; $6792: $df
    ld [de], a                                    ; $6793: $12
    ld [bc], a                                    ; $6794: $02
    ld e, a                                       ; $6795: $5f
    nop                                           ; $6796: $00
    xor a                                         ; $6797: $af
    ld a, [bc]                                    ; $6798: $0a
    nop                                           ; $6799: $00
    ld h, l                                       ; $679a: $65
    ld [$24ad], sp                                ; $679b: $08 $ad $24
    nop                                           ; $679e: $00
    adc a                                         ; $679f: $8f
    inc h                                         ; $67a0: $24
    nop                                           ; $67a1: $00
    cpl                                           ; $67a2: $2f
    add d                                         ; $67a3: $82
    inc h                                         ; $67a4: $24

jr_094_67a5:
    nop                                           ; $67a5: $00
    push af                                       ; $67a6: $f5
    ld [$00fe], sp                                ; $67a7: $08 $fe $00
    ld d, l                                       ; $67aa: $55
    jr jr_094_67ad                                ; $67ab: $18 $00

jr_094_67ad:
    sub $00                                       ; $67ad: $d6 $00
    ld [$005d], sp                                ; $67af: $08 $5d $00
    rst $30                                       ; $67b2: $f7
    ld [$005b], sp                                ; $67b3: $08 $5b $00
    adc l                                         ; $67b6: $8d
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    add b                                         ; $67b9: $80
    rrca                                          ; $67ba: $0f
    xor a                                         ; $67bb: $af
    rrca                                          ; $67bc: $0f
    ld l, b                                       ; $67bd: $68
    rrca                                          ; $67be: $0f
    and b                                         ; $67bf: $a0
    nop                                           ; $67c0: $00
    rrca                                          ; $67c1: $0f
    ld c, d                                       ; $67c2: $4a
    dec c                                         ; $67c3: $0d
    add b                                         ; $67c4: $80
    dec c                                         ; $67c5: $0d
    ld c, b                                       ; $67c6: $48
    dec c                                         ; $67c7: $0d
    halt                                          ; $67c8: $76
    nop                                           ; $67c9: $00
    ld [$f00a], sp                                ; $67ca: $08 $0a $f0
    rst $30                                       ; $67cd: $f7
    ld hl, sp+$0b                                 ; $67ce: $f8 $0b
    ldh a, [$86]                                  ; $67d0: $f0 $86
    db $10                                        ; $67d2: $10
    ld a, b                                       ; $67d3: $78
    xor l                                         ; $67d4: $ad
    ld d, b                                       ; $67d5: $50

jr_094_67d6:
    ld a, [$5000]                                 ; $67d6: $fa $00 $50
    ld b, d                                       ; $67d9: $42
    add hl, bc                                    ; $67da: $09
    adc h                                         ; $67db: $8c
    jr nz, jr_094_67e9                            ; $67dc: $20 $0b

    ld b, d                                       ; $67de: $42
    ld a, b                                       ; $67df: $78
    ld bc, $0fc0                                  ; $67e0: $01 $c0 $0f
    ld l, h                                       ; $67e3: $6c
    dec bc                                        ; $67e4: $0b
    and b                                         ; $67e5: $a0
    nop                                           ; $67e6: $00
    rrca                                          ; $67e7: $0f
    xor d                                         ; $67e8: $aa

jr_094_67e9:
    dec c                                         ; $67e9: $0d
    dec c                                         ; $67ea: $0d
    ld [hl], b                                    ; $67eb: $70
    add a                                         ; $67ec: $87
    ld a, b                                       ; $67ed: $78
    dec c                                         ; $67ee: $0d
    nop                                           ; $67ef: $00
    ld [hl], b                                    ; $67f0: $70
    daa                                           ; $67f1: $27
    ld e, b                                       ; $67f2: $58
    adc [hl]                                      ; $67f3: $8e
    ld [hl], b                                    ; $67f4: $70
    jr nz, jr_094_67d6                            ; $67f5: $20 $df

    ld c, a                                       ; $67f7: $4f
    ld [$cabf], sp                                ; $67f8: $08 $bf $ca
    jr nc, @+$04                                  ; $67fb: $30 $02

    and b                                         ; $67fd: $a0
    ld bc, $0d80                                  ; $67fe: $01 $80 $0d
    ld a, [bc]                                    ; $6801: $0a
    ld [bc], a                                    ; $6802: $02
    db $fd                                        ; $6803: $fd
    ldh a, [rIE]                                  ; $6804: $f0 $ff
    ld a, [$720d]                                 ; $6806: $fa $0d $72
    ret nz                                        ; $6809: $c0

    nop                                           ; $680a: $00
    and b                                         ; $680b: $a0
    nop                                           ; $680c: $00
    ld e, b                                       ; $680d: $58
    ld c, d                                       ; $680e: $4a
    db $10                                        ; $680f: $10
    add b                                         ; $6810: $80
    ld e, b                                       ; $6811: $58
    ld a, [hl+]                                   ; $6812: $2a
    ret nc                                        ; $6813: $d0

    and d                                         ; $6814: $a2
    nop                                           ; $6815: $00
    ld e, b                                       ; $6816: $58
    ld [$82f0], sp                                ; $6817: $08 $f0 $82
    ld a, b                                       ; $681a: $78
    jr z, jr_094_686d                             ; $681b: $28 $50

    ld [hl], d                                    ; $681d: $72
    and b                                         ; $681e: $a0
    cp b                                          ; $681f: $b8
    ld [bc], a                                    ; $6820: $02
    ret nc                                        ; $6821: $d0

    adc [hl]                                      ; $6822: $8e
    nop                                           ; $6823: $00
    ldh a, [$08]                                  ; $6824: $f0 $08
    ld a, [$d000]                                 ; $6826: $fa $00 $d0
    ret nz                                        ; $6829: $c0

    and d                                         ; $682a: $a2
    ld bc, $081c                                  ; $682b: $01 $1c $08
    ld [bc], a                                    ; $682e: $02
    ld hl, sp-$06                                 ; $682f: $f8 $fa
    ldh a, [rLCDC]                                ; $6831: $f0 $40
    ld [$8a01], sp                                ; $6833: $08 $01 $8a
    nop                                           ; $6836: $00
    and d                                         ; $6837: $a2
    ld [$0048], sp                                ; $6838: $08 $48 $00
    pop de                                        ; $683b: $d1
    jr jr_094_683e                                ; $683c: $18 $00

jr_094_683e:
    ld b, h                                       ; $683e: $44
    or e                                          ; $683f: $b3
    or [hl]                                       ; $6840: $b6
    nop                                           ; $6841: $00
    or d                                          ; $6842: $b2
    ld [$20f9], sp                                ; $6843: $08 $f9 $20
    nop                                           ; $6846: $00
    ret c                                         ; $6847: $d8

    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    ld [bc], a                                    ; $684a: $02
    ld [$0028], sp                                ; $684b: $08 $28 $00
    ld b, b                                       ; $684e: $40
    ld [$002a], sp                                ; $684f: $08 $2a $00
    ld a, b                                       ; $6852: $78
    ld b, d                                       ; $6853: $42
    inc b                                         ; $6854: $04
    nop                                           ; $6855: $00
    inc h                                         ; $6856: $24
    ld [$3c50], sp                                ; $6857: $08 $50 $3c
    adc b                                         ; $685a: $88
    inc de                                        ; $685b: $13
    push af                                       ; $685c: $f5
    rst $38                                       ; $685d: $ff
    ei                                            ; $685e: $fb
    nop                                           ; $685f: $00
    rra                                           ; $6860: $1f
    push af                                       ; $6861: $f5
    ld hl, $3fff                                  ; $6862: $21 $ff $3f
    pop hl                                        ; $6865: $e1
    add hl, sp                                    ; $6866: $39
    rst $20                                       ; $6867: $e7
    nop                                           ; $6868: $00
    cp e                                          ; $6869: $bb
    push hl                                       ; $686a: $e5
    ld sp, hl                                     ; $686b: $f9
    and a                                         ; $686c: $a7

jr_094_686d:
    ld hl, sp-$59                                 ; $686d: $f8 $a7
    inc l                                         ; $686f: $2c
    db $d3                                        ; $6870: $d3
    nop                                           ; $6871: $00
    add b                                         ; $6872: $80
    rst $38                                       ; $6873: $ff
    ld h, h                                       ; $6874: $64
    sbc e                                         ; $6875: $9b
    add b                                         ; $6876: $80
    rst $38                                       ; $6877: $ff
    ld h, b                                       ; $6878: $60
    sbc a                                         ; $6879: $9f
    nop                                           ; $687a: $00
    add a                                         ; $687b: $87
    rst $38                                       ; $687c: $ff
    rrca                                          ; $687d: $0f
    rst $38                                       ; $687e: $ff
    rst $18                                       ; $687f: $df
    cp a                                          ; $6880: $bf
    or l                                          ; $6881: $b5
    ld c, d                                       ; $6882: $4a
    ld [bc], a                                    ; $6883: $02
    nop                                           ; $6884: $00
    rst $38                                       ; $6885: $ff
    ld d, b                                       ; $6886: $50
    xor a                                         ; $6887: $af
    dec c                                         ; $6888: $0d
    ld a, [c]                                     ; $6889: $f2
    jr z, jr_094_689a                             ; $688a: $28 $0e

    or l                                          ; $688c: $b5
    nop                                           ; $688d: $00
    jp z, $ffc0                                   ; $688e: $ca $c0 $ff

    rra                                           ; $6891: $1f
    rst $38                                       ; $6892: $ff
    adc a                                         ; $6893: $8f

jr_094_6894:
    rst $28                                       ; $6894: $ef
    rlca                                          ; $6895: $07
    nop                                           ; $6896: $00
    rst $28                                       ; $6897: $ef
    add b                                         ; $6898: $80
    rst $28                                       ; $6899: $ef

jr_094_689a:
    nop                                           ; $689a: $00
    rst $30                                       ; $689b: $f7
    and b                                         ; $689c: $a0
    jp c, $0002                                   ; $689d: $da $02 $00

    ld hl, sp-$79                                 ; $68a0: $f8 $87
    ldh a, [$d0]                                  ; $68a2: $f0 $d0
    rst $28                                       ; $68a4: $ef
    add [hl]                                      ; $68a5: $86
    cp c                                          ; $68a6: $b9
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    cp a                                          ; $68a9: $bf
    nop                                           ; $68aa: $00
    cp a                                          ; $68ab: $bf
    ld d, $69                                     ; $68ac: $16 $69
    nop                                           ; $68ae: $00
    rst $38                                       ; $68af: $ff
    db $10                                        ; $68b0: $10
    dec e                                         ; $68b1: $1d
    rst $28                                       ; $68b2: $ef
    ld a, [bc]                                    ; $68b3: $0a
    ld [hl], l                                    ; $68b4: $75
    or b                                          ; $68b5: $b0
    inc l                                         ; $68b6: $2c
    inc h                                         ; $68b7: $24
    ld a, [hl+]                                   ; $68b8: $2a
    ldh a, [$2b]                                  ; $68b9: $f0 $2b
    rlca                                          ; $68bb: $07
    db $e4                                        ; $68bc: $e4
    ld hl, $0f00                                  ; $68bd: $21 $00 $0f
    ldh [$8f], a                                  ; $68c0: $e0 $8f

jr_094_68c2:
    ldh [$2f], a                                  ; $68c2: $e0 $2f
    ldh [$a7], a                                  ; $68c4: $e0 $a7
    ldh a, [rNR10]                                ; $68c6: $f0 $10
    jr nc, jr_094_68c2                            ; $68c8: $30 $f8

    sbc a                                         ; $68ca: $9f
    ld h, b                                       ; $68cb: $60
    nop                                           ; $68cc: $00
    add b                                         ; $68cd: $80
    rst $38                                       ; $68ce: $ff
    add b                                         ; $68cf: $80
    ccf                                           ; $68d0: $3f
    nop                                           ; $68d1: $00
    add c                                         ; $68d2: $81
    ld a, $a4                                     ; $68d3: $3e $a4
    dec sp                                        ; $68d5: $3b
    jr nz, jr_094_6957                            ; $68d6: $20 $7f

    ld l, l                                       ; $68d8: $6d
    ld a, [c]                                     ; $68d9: $f2
    inc bc                                        ; $68da: $03
    ret nz                                        ; $68db: $c0

    rst $38                                       ; $68dc: $ff
    cp c                                          ; $68dd: $b9
    add $00                                       ; $68de: $c6 $00
    rst $38                                       ; $68e0: $ff
    ld d, h                                       ; $68e1: $54
    ld a, [bc]                                    ; $68e2: $0a
    ld b, h                                       ; $68e3: $44
    ld a, [hl-]                                   ; $68e4: $3a
    ld sp, $00ff                                  ; $68e5: $31 $ff $00
    inc d                                         ; $68e8: $14
    ld a, [bc]                                    ; $68e9: $0a
    db $f4                                        ; $68ea: $f4
    add hl, sp                                    ; $68eb: $39
    rst $38                                       ; $68ec: $ff
    ld bc, $4eaa                                  ; $68ed: $01 $aa $4e
    rlca                                          ; $68f0: $07
    ld e, $aa                                     ; $68f1: $1e $aa
    push de                                       ; $68f3: $d5
    cp a                                          ; $68f4: $bf
    ld [hl], $02                                  ; $68f5: $36 $02
    inc b                                         ; $68f7: $04
    ld [$000c], sp                                ; $68f8: $08 $0c $00
    db $10                                        ; $68fb: $10
    ld [$c155], sp                                ; $68fc: $08 $55 $c1
    jr nz, jr_094_690e                            ; $68ff: $20 $0d

    inc b                                         ; $6901: $04
    jr jr_094_6894                                ; $6902: $18 $90

    or b                                          ; $6904: $b0
    sub b                                         ; $6905: $90
    or b                                          ; $6906: $b0
    sbc b                                         ; $6907: $98
    inc b                                         ; $6908: $04
    nop                                           ; $6909: $00
    add b                                         ; $690a: $80
    ld [$a818], sp                                ; $690b: $08 $18 $a8

jr_094_690e:
    xor b                                         ; $690e: $a8
    inc hl                                        ; $690f: $23
    ld h, a                                       ; $6910: $67
    inc hl                                        ; $6911: $23
    ld h, a                                       ; $6912: $67
    dec hl                                        ; $6913: $2b
    ret nz                                        ; $6914: $c0

    inc b                                         ; $6915: $04
    nop                                           ; $6916: $00
    ld [$ab08], sp                                ; $6917: $08 $08 $ab
    ld h, a                                       ; $691a: $67
    ld d, e                                       ; $691b: $53
    rst $10                                       ; $691c: $d7
    jr nz, jr_094_697f                            ; $691d: $20 $60

    jr @+$22                                      ; $691f: $18 $20

    ld h, b                                       ; $6921: $60
    jr z, jr_094_6928                             ; $6922: $28 $04

    nop                                           ; $6924: $00
    ld [$a808], sp                                ; $6925: $08 $08 $a8

jr_094_6928:
    ld h, b                                       ; $6928: $60
    ld d, b                                       ; $6929: $50
    inc d                                         ; $692a: $14
    ld d, c                                       ; $692b: $51
    ld b, a                                       ; $692c: $47
    rst $08                                       ; $692d: $cf
    ld [bc], a                                    ; $692e: $02
    jr jr_094_6998                                ; $692f: $18 $67

    ld [$a710], sp                                ; $6931: $08 $10 $a7
    xor a                                         ; $6934: $af
    inc b                                         ; $6935: $04
    and $c5                                       ; $6936: $e6 $c5
    add e                                         ; $6938: $83
    add e                                         ; $6939: $83
    rst $00                                       ; $693a: $c7
    or d                                          ; $693b: $b2

jr_094_693c:
    rlca                                          ; $693c: $07
    and e                                         ; $693d: $a3
    add e                                         ; $693e: $83
    nop                                           ; $693f: $00
    call nz, $aac5                                ; $6940: $c4 $c5 $aa
    xor b                                         ; $6943: $a8
    sub b                                         ; $6944: $90
    or b                                          ; $6945: $b0
    xor e                                         ; $6946: $ab
    adc a                                         ; $6947: $8f
    db $10                                        ; $6948: $10
    rlca                                          ; $6949: $07
    rlca                                          ; $694a: $07
    adc a                                         ; $694b: $8f
    jp nz, $a707                                  ; $694c: $c2 $07 $a7

    rrca                                          ; $694f: $0f
    adc a                                         ; $6950: $8f
    sbc a                                         ; $6951: $9f
    nop                                           ; $6952: $00
    ld e, e                                       ; $6953: $5b
    rst $30                                       ; $6954: $f7
    inc hl                                        ; $6955: $23
    ld h, a                                       ; $6956: $67

jr_094_6957:
    xor c                                         ; $6957: $a9
    adc e                                         ; $6958: $8b
    ld b, $06                                     ; $6959: $06 $06
    add b                                         ; $695b: $80
    db $10                                        ; $695c: $10
    ld [$06a6], sp                                ; $695d: $08 $a6 $06
    adc c                                         ; $6960: $89
    adc e                                         ; $6961: $8b
    ld a, [$2051]                                 ; $6962: $fa $51 $20
    inc b                                         ; $6965: $04
    ld h, b                                       ; $6966: $60
    scf                                           ; $6967: $37
    rra                                           ; $6968: $1f
    rrca                                          ; $6969: $0f
    rrca                                          ; $696a: $0f
    sub a                                         ; $696b: $97
    ld a, [bc]                                    ; $696c: $0a
    xor a                                         ; $696d: $af
    rra                                           ; $696e: $1f
    nop                                           ; $696f: $00

jr_094_6970:
    rra                                           ; $6970: $1f
    ccf                                           ; $6971: $3f
    and a                                         ; $6972: $a7
    rst $28                                       ; $6973: $ef
    ld b, a                                       ; $6974: $47
    rst $08                                       ; $6975: $cf
    sbc d                                         ; $6976: $9a
    or b                                          ; $6977: $b0
    db $10                                        ; $6978: $10
    sub h                                         ; $6979: $94
    or b                                          ; $697a: $b0
    sbc d                                         ; $697b: $9a
    add h                                         ; $697c: $84
    nop                                           ; $697d: $00
    sbc d                                         ; $697e: $9a

jr_094_697f:
    or b                                          ; $697f: $b0
    xor h                                         ; $6980: $ac
    add sp, $06                                   ; $6981: $e8 $06
    xor $c5                                       ; $6983: $ee $c5
    sub e                                         ; $6985: $93
    add a                                         ; $6986: $87
    xor e                                         ; $6987: $ab
    ld a, b                                       ; $6988: $78
    db $10                                        ; $6989: $10
    ld a, h                                       ; $698a: $7c
    jr jr_094_693c                                ; $698b: $18 $af

    nop                                           ; $698d: $00
    adc a                                         ; $698e: $8f
    rla                                           ; $698f: $17
    rrca                                          ; $6990: $0f
    xor d                                         ; $6991: $aa
    ld h, b                                       ; $6992: $60
    inc h                                         ; $6993: $24
    ld h, b                                       ; $6994: $60
    xor d                                         ; $6995: $aa
    add b                                         ; $6996: $80
    add h                                         ; $6997: $84

jr_094_6998:
    nop                                           ; $6998: $00
    xor d                                         ; $6999: $aa
    ld h, b                                       ; $699a: $60
    ld d, h                                       ; $699b: $54
    pop de                                        ; $699c: $d1
    xor c                                         ; $699d: $a9
    adc e                                         ; $699e: $8b
    rla                                           ; $699f: $17
    ld h, b                                       ; $69a0: $60
    ld c, $78                                     ; $69a1: $0e $78
    ld [$1804], sp                                ; $69a3: $08 $04 $18
    rst $20                                       ; $69a6: $e7
    xor a                                         ; $69a7: $af
    cp a                                          ; $69a8: $bf
    rra                                           ; $69a9: $1f
    rrca                                          ; $69aa: $0f
    nop                                           ; $69ab: $00
    rra                                           ; $69ac: $1f
    and $cd                                       ; $69ad: $e6 $cd
    db $ed                                        ; $69af: $ed
    cp b                                          ; $69b0: $b8
    sbc d                                         ; $69b1: $9a
    or b                                          ; $69b2: $b0
    sub c                                         ; $69b3: $91
    and b                                         ; $69b4: $a0
    ld b, h                                       ; $69b5: $44
    nop                                           ; $69b6: $00
    push de                                       ; $69b7: $d5
    inc b                                         ; $69b8: $04
    db $10                                        ; $69b9: $10
    xor a                                         ; $69ba: $af
    sbc a                                         ; $69bb: $9f
    ld d, e                                       ; $69bc: $53
    rst $30                                       ; $69bd: $f7
    xor e                                         ; $69be: $ab
    jr nc, jr_094_6a28                            ; $69bf: $30 $67

    inc sp                                        ; $69c1: $33
    cp h                                          ; $69c2: $bc
    nop                                           ; $69c3: $00
    inc b                                         ; $69c4: $04
    jr jr_094_6970                                ; $69c5: $18 $a9

    sbc e                                         ; $69c7: $9b
    ld d, h                                       ; $69c8: $54
    ld [hl], c                                    ; $69c9: $71
    dec d                                         ; $69ca: $15
    xor d                                         ; $69cb: $aa
    ld h, b                                       ; $69cc: $60
    ld sp, $0044                                  ; $69cd: $31 $44 $00
    dec [hl]                                      ; $69d0: $35
    inc b                                         ; $69d1: $04
    db $10                                        ; $69d2: $10
    sbc a                                         ; $69d3: $9f
    halt                                          ; $69d4: $76
    nop                                           ; $69d5: $00
    jr jr_094_6a3f                                ; $69d6: $18 $67

    rst $08                                       ; $69d8: $cf
    ld d, a                                       ; $69d9: $57
    ret nz                                        ; $69da: $c0

    nop                                           ; $69db: $00
    inc b                                         ; $69dc: $04
    jr @-$7a                                      ; $69dd: $18 $84

    and a                                         ; $69df: $a7
    or d                                          ; $69e0: $b2
    nop                                           ; $69e1: $00
    di                                            ; $69e2: $f3
    ld e, e                                       ; $69e3: $5b
    ld d, e                                       ; $69e4: $53
    ld d, l                                       ; $69e5: $55
    ld d, l                                       ; $69e6: $55
    ld l, b                                       ; $69e7: $68
    ld c, c                                       ; $69e8: $49
    ld c, b                                       ; $69e9: $48
    jr nz, jr_094_6a35                            ; $69ea: $20 $49

    ret z                                         ; $69ec: $c8

    inc b                                         ; $69ed: $04
    nop                                           ; $69ee: $00
    and h                                         ; $69ef: $a4
    xor l                                         ; $69f0: $ad
    and h                                         ; $69f1: $a4
    db $ed                                        ; $69f2: $ed
    call nc, $dd00                                ; $69f3: $d4 $00 $dd
    sbc d                                         ; $69f6: $9a
    sbc e                                         ; $69f7: $9b
    ld [c], a                                     ; $69f8: $e2
    db $d3                                        ; $69f9: $d3
    reti                                          ; $69fa: $d9


    ld sp, hl                                     ; $69fb: $f9
    xor c                                         ; $69fc: $a9
    nop                                           ; $69fd: $00
    xor e                                         ; $69fe: $ab
    xor d                                         ; $69ff: $aa
    xor a                                         ; $6a00: $af
    dec d                                         ; $6a01: $15
    ei                                            ; $6a02: $fb
    adc a                                         ; $6a03: $8f
    rst $38                                       ; $6a04: $ff
    inc bc                                        ; $6a05: $03
    nop                                           ; $6a06: $00
    db $fc                                        ; $6a07: $fc
    sbc [hl]                                      ; $6a08: $9e
    db $fd                                        ; $6a09: $fd
    rla                                           ; $6a0a: $17
    ld a, [$fe8f]                                 ; $6a0b: $fa $8f $fe
    rla                                           ; $6a0e: $17
    nop                                           ; $6a0f: $00
    ld a, [$fe9f]                                 ; $6a10: $fa $9f $fe
    ld l, d                                       ; $6a13: $6a
    ret                                           ; $6a14: $c9


    xor b                                         ; $6a15: $a8
    cp c                                          ; $6a16: $b9
    cp [hl]                                       ; $6a17: $be
    nop                                           ; $6a18: $00
    push af                                       ; $6a19: $f5
    call nc, $f3d5                                ; $6a1a: $d4 $d5 $f3
    rst $30                                       ; $6a1d: $f7
    dec a                                         ; $6a1e: $3d
    ccf                                           ; $6a1f: $3f
    sbc a                                         ; $6a20: $9f
    ld bc, $b3bf                                  ; $6a21: $01 $bf $b3
    or e                                          ; $6a24: $b3
    and [hl]                                      ; $6a25: $a6
    xor l                                         ; $6a26: $ad
    and h                                         ; $6a27: $a4

jr_094_6a28:
    xor l                                         ; $6a28: $ad
    inc b                                         ; $6a29: $04
    jr jr_094_6a2c                                ; $6a2a: $18 $00

jr_094_6a2c:
    call nc, $fadd                                ; $6a2c: $d4 $dd $fa
    db $db                                        ; $6a2f: $db
    jp z, Jump_000_07eb                           ; $6a30: $ca $eb $07

    ld hl, sp+$00                                 ; $6a33: $f8 $00

jr_094_6a35:
    adc a                                         ; $6a35: $8f
    db $f4                                        ; $6a36: $f4
    rra                                           ; $6a37: $1f
    ld a, [$f59b]                                 ; $6a38: $fa $9b $f5
    rla                                           ; $6a3b: $17
    ld sp, hl                                     ; $6a3c: $f9
    nop                                           ; $6a3d: $00
    adc a                                         ; $6a3e: $8f

jr_094_6a3f:
    cp $07                                        ; $6a3f: $fe $07
    ld hl, sp-$6a                                 ; $6a41: $f8 $96
    ei                                            ; $6a43: $fb
    cp e                                          ; $6a44: $bb
    rst $30                                       ; $6a45: $f7
    nop                                           ; $6a46: $00
    ld d, l                                       ; $6a47: $55
    ld d, l                                       ; $6a48: $55
    rst $30                                       ; $6a49: $f7
    ld e, l                                       ; $6a4a: $5d
    ld c, b                                       ; $6a4b: $48
    ld c, c                                       ; $6a4c: $49
    ld [$4049], a                                 ; $6a4d: $ea $49 $40
    ld c, h                                       ; $6a50: $4c
    inc b                                         ; $6a51: $04
    nop                                           ; $6a52: $00
    ld e, b                                       ; $6a53: $58
    ld c, c                                       ; $6a54: $49
    ei                                            ; $6a55: $fb
    ld sp, hl                                     ; $6a56: $f9
    cp b                                          ; $6a57: $b8
    cp l                                          ; $6a58: $bd
    ld bc, $8faf                                  ; $6a59: $01 $af $8f
    db $db                                        ; $6a5c: $db
    db $db                                        ; $6a5d: $db
    ld sp, hl                                     ; $6a5e: $f9
    db $db                                        ; $6a5f: $db
    xor $5e                                       ; $6a60: $ee $5e
    nop                                           ; $6a62: $00
    nop                                           ; $6a63: $00
    or h                                          ; $6a64: $b4
    xor l                                         ; $6a65: $ad
    dec b                                         ; $6a66: $05
    ld a, [$f69b]                                 ; $6a67: $fa $9b $f6
    inc de                                        ; $6a6a: $13
    cp $00                                        ; $6a6b: $fe $00
    sub a                                         ; $6a6d: $97
    ld a, [$f40b]                                 ; $6a6e: $fa $0b $f4
    sbc a                                         ; $6a71: $9f
    db $fc                                        ; $6a72: $fc
    rla                                           ; $6a73: $17
    ld hl, sp+$00                                 ; $6a74: $f8 $00
    sub a                                         ; $6a76: $97
    ld sp, hl                                     ; $6a77: $f9
    sbc b                                         ; $6a78: $98
    ld [$ea6a], sp                                ; $6a79: $08 $6a $ea
    ld [$00aa], a                                 ; $6a7c: $ea $aa $00
    rst $38                                       ; $6a7f: $ff
    ld [$00ea], a                                 ; $6a80: $ea $ea $00
    cp $14                                        ; $6a83: $fe $14
    rst $38                                       ; $6a85: $ff
    inc d                                         ; $6a86: $14
    ld bc, $55ff                                  ; $6a87: $01 $ff $55
    xor d                                         ; $6a8a: $aa
    cp c                                          ; $6a8b: $b9
    ld [hl], h                                    ; $6a8c: $74
    dec [hl]                                      ; $6a8d: $35
    adc h                                         ; $6a8e: $8c
    and h                                         ; $6a8f: $a4
    nop                                           ; $6a90: $00
    ld b, b                                       ; $6a91: $40
    ei                                            ; $6a92: $fb
    and h                                         ; $6a93: $a4
    nop                                           ; $6a94: $00
    ld [$5c49], a                                 ; $6a95: $ea $49 $5c
    ld c, c                                       ; $6a98: $49
    and [hl]                                      ; $6a99: $a6
    xor l                                         ; $6a9a: $ad
    ld b, b                                       ; $6a9b: $40
    db $e4                                        ; $6a9c: $e4
    ld [hl], b                                    ; $6a9d: $70
    nop                                           ; $6a9e: $00
    or h                                          ; $6a9f: $b4
    db $ed                                        ; $6aa0: $ed
    or $dd                                        ; $6aa1: $f6 $dd
    sbc $9b                                       ; $6aa3: $de $9b
    nop                                           ; $6aa5: $00
    ld [$ddd3], a                                 ; $6aa6: $ea $d3 $dd
    ld sp, hl                                     ; $6aa9: $f9
    rra                                           ; $6aaa: $1f
    pop af                                        ; $6aab: $f1
    sbc a                                         ; $6aac: $9f
    db $fd                                        ; $6aad: $fd
    nop                                           ; $6aae: $00
    rrca                                          ; $6aaf: $0f
    ldh a, [$97]                                  ; $6ab0: $f0 $97
    db $ec                                        ; $6ab2: $ec
    rra                                           ; $6ab3: $1f
    ld hl, sp-$61                                 ; $6ab4: $f8 $9f
    ldh a, [rP1]                                  ; $6ab6: $f0 $00
    rla                                           ; $6ab8: $17
    ld hl, sp-$61                                 ; $6ab9: $f8 $9f
    db $ec                                        ; $6abb: $ec
    db $fd                                        ; $6abc: $fd
    ld d, h                                       ; $6abd: $54
    cp $d4                                        ; $6abe: $fe $d4
    nop                                           ; $6ac0: $00
    push af                                       ; $6ac1: $f5
    nop                                           ; $6ac2: $00
    sbc $80                                       ; $6ac3: $de $80
    ld a, [$fd80]                                 ; $6ac5: $fa $80 $fd
    sub b                                         ; $6ac8: $90
    nop                                           ; $6ac9: $00
    cp $a8                                        ; $6aca: $fe $a8
    ei                                            ; $6acc: $fb
    cp b                                          ; $6acd: $b8
    ld bc, $0800                                  ; $6ace: $01 $00 $08
    ld [$0b00], sp                                ; $6ad1: $08 $00 $0b
    ld [$7e7e], sp                                ; $6ad4: $08 $7e $7e
    ld c, e                                       ; $6ad7: $4b
    ld c, d                                       ; $6ad8: $4a
    ld a, $3e                                     ; $6ad9: $3e $3e
    nop                                           ; $6adb: $00
    inc bc                                        ; $6adc: $03
    nop                                           ; $6add: $00
    ld a, [bc]                                    ; $6ade: $0a
    nop                                           ; $6adf: $00
    dec b                                         ; $6ae0: $05
    jr nz, @+$01                                  ; $6ae1: $20 $ff

    rst $28                                       ; $6ae3: $ef
    nop                                           ; $6ae4: $00
    xor [hl]                                      ; $6ae5: $ae
    xor [hl]                                      ; $6ae6: $ae
    xor $ee                                       ; $6ae7: $ee $ee
    xor b                                         ; $6ae9: $a8
    nop                                           ; $6aea: $00
    and [hl]                                      ; $6aeb: $a6
    ld b, $00                                     ; $6aec: $06 $00
    ld d, h                                       ; $6aee: $54
    inc b                                         ; $6aef: $04
    call nz, Call_094_56c4                        ; $6af0: $c4 $c4 $56
    inc b                                         ; $6af3: $04
    call Call_000_04c5                            ; $6af4: $cd $c5 $04
    rst $00                                       ; $6af7: $c7
    add $c4                                       ; $6af8: $c6 $c4
    call nz, $a201                                ; $6afa: $c4 $01 $a2
    rlca                                          ; $6afd: $07
    add b                                         ; $6afe: $80
    add b                                         ; $6aff: $80
    nop                                           ; $6b00: $00
    ld e, e                                       ; $6b01: $5b
    ld e, e                                       ; $6b02: $5b
    rst $18                                       ; $6b03: $df
    add b                                         ; $6b04: $80
    rst $38                                       ; $6b05: $ff
    ld [hl], a                                    ; $6b06: $77
    ld e, a                                       ; $6b07: $5f
    ld d, l                                       ; $6b08: $55
    nop                                           ; $6b09: $00
    ld [hl], a                                    ; $6b0a: $77
    ld [hl], l                                    ; $6b0b: $75
    cpl                                           ; $6b0c: $2f
    ld b, $96                                     ; $6b0d: $06 $96
    inc d                                         ; $6b0f: $14
    db $10                                        ; $6b10: $10
    db $10                                        ; $6b11: $10
    jr nz, @+$5b                                  ; $6b12: $20 $59

    ld e, c                                       ; $6b14: $59
    and b                                         ; $6b15: $a0
    inc b                                         ; $6b16: $04
    ld [hl], a                                    ; $6b17: $77
    rst $38                                       ; $6b18: $ff
    ld d, l                                       ; $6b19: $55
    rst $38                                       ; $6b1a: $ff
    ld d, a                                       ; $6b1b: $57
    nop                                           ; $6b1c: $00
    ld a, a                                       ; $6b1d: $7f
    ld h, b                                       ; $6b1e: $60
    rst $38                                       ; $6b1f: $ff
    ld b, b                                       ; $6b20: $40
    cp l                                          ; $6b21: $bd
    nop                                           ; $6b22: $00
    rst $18                                       ; $6b23: $df
    ret nz                                        ; $6b24: $c0

    nop                                           ; $6b25: $00
    sub $c6                                       ; $6b26: $d6 $c6
    add h                                         ; $6b28: $84
    add h                                         ; $6b29: $84
    ret nz                                        ; $6b2a: $c0

    add b                                         ; $6b2b: $80
    ld h, b                                       ; $6b2c: $60
    ld h, b                                       ; $6b2d: $60
    nop                                           ; $6b2e: $00
    add b                                         ; $6b2f: $80
    add b                                         ; $6b30: $80
    rst $08                                       ; $6b31: $cf
    ld b, a                                       ; $6b32: $47
    ld l, e                                       ; $6b33: $6b
    dec hl                                        ; $6b34: $2b
    db $e4                                        ; $6b35: $e4
    db $e4                                        ; $6b36: $e4
    inc b                                         ; $6b37: $04
    ld d, c                                       ; $6b38: $51
    ld d, c                                       ; $6b39: $51
    ld e, e                                       ; $6b3a: $5b
    ld e, e                                       ; $6b3b: $5b
    ld bc, $083d                                  ; $6b3c: $01 $3d $08
    nop                                           ; $6b3f: $00
    sbc h                                         ; $6b40: $9c
    db $10                                        ; $6b41: $10
    sbc h                                         ; $6b42: $9c
    ld d, l                                       ; $6b43: $55
    ld d, l                                       ; $6b44: $55
    inc b                                         ; $6b45: $04
    ld [$5959], sp                                ; $6b46: $08 $59 $59
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    ld de, $1011                                  ; $6b4c: $11 $11 $10
    db $10                                        ; $6b4f: $10
    sub b                                         ; $6b50: $90
    sub b                                         ; $6b51: $90
    ld d, b                                       ; $6b52: $50
    ld d, b                                       ; $6b53: $50
    nop                                           ; $6b54: $00
    sbc b                                         ; $6b55: $98
    sub b                                         ; $6b56: $90
    ld a, l                                       ; $6b57: $7d
    ld b, b                                       ; $6b58: $40
    rst $28                                       ; $6b59: $ef
    ldh [$0b], a                                  ; $6b5a: $e0 $0b
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    push af                                       ; $6b5e: $f5
    ret nc                                        ; $6b5f: $d0

    sub e                                         ; $6b60: $93
    sub b                                         ; $6b61: $90
    rst $30                                       ; $6b62: $f7
    di                                            ; $6b63: $f3
    sub [hl]                                      ; $6b64: $96
    sub [hl]                                      ; $6b65: $96
    nop                                           ; $6b66: $00
    sub e                                         ; $6b67: $93
    sub e                                         ; $6b68: $93
    ld c, b                                       ; $6b69: $48
    rst $38                                       ; $6b6a: $ff
    jp c, $24ff                                   ; $6b6b: $da $ff $24

    rst $38                                       ; $6b6e: $ff
    nop                                           ; $6b6f: $00
    ret                                           ; $6b70: $c9


    rst $38                                       ; $6b71: $ff
    sub d                                         ; $6b72: $92
    rst $38                                       ; $6b73: $ff
    ld d, h                                       ; $6b74: $54
    rst $38                                       ; $6b75: $ff
    sub [hl]                                      ; $6b76: $96
    rst $38                                       ; $6b77: $ff
    dec b                                         ; $6b78: $05
    ld d, [hl]                                    ; $6b79: $56
    rst $38                                       ; $6b7a: $ff
    jr nz, @+$01                                  ; $6b7b: $20 $ff

    adc d                                         ; $6b7d: $8a
    inc bc                                        ; $6b7e: $03
    dec b                                         ; $6b7f: $05
    ld a, [hl+]                                   ; $6b80: $2a
    rlca                                          ; $6b81: $07

jr_094_6b82:
    dec b                                         ; $6b82: $05
    nop                                           ; $6b83: $00
    db $10                                        ; $6b84: $10
    rst $38                                       ; $6b85: $ff
    ld b, d                                       ; $6b86: $42
    rst $38                                       ; $6b87: $ff
    ld [$d8ff], sp                                ; $6b88: $08 $ff $d8
    daa                                           ; $6b8b: $27
    nop                                           ; $6b8c: $00
    or $09                                        ; $6b8d: $f6 $09
    ld a, [$ed05]                                 ; $6b8f: $fa $05 $ed
    ld [de], a                                    ; $6b92: $12
    rst $38                                       ; $6b93: $ff
    nop                                           ; $6b94: $00
    ld [bc], a                                    ; $6b95: $02
    ld a, [$ff05]                                 ; $6b96: $fa $05 $ff
    nop                                           ; $6b99: $00
    rst $18                                       ; $6b9a: $df
    jr nz, jr_094_6bb9                            ; $6b9b: $20 $1c

    dec c                                         ; $6b9d: $0d
    add b                                         ; $6b9e: $80
    nop                                           ; $6b9f: $00
    ld a, a                                       ; $6ba0: $7f
    jr nz, jr_094_6b82                            ; $6ba1: $20 $df

    ret z                                         ; $6ba3: $c8

    scf                                           ; $6ba4: $37
    or l                                          ; $6ba5: $b5
    ld c, d                                       ; $6ba6: $4a
    or $10                                        ; $6ba7: $f6 $10
    add hl, bc                                    ; $6ba9: $09
    db $dd                                        ; $6baa: $dd
    ld [hl+], a                                   ; $6bab: $22
    ld b, h                                       ; $6bac: $44
    dec c                                         ; $6bad: $0d
    cp [hl]                                       ; $6bae: $be
    nop                                           ; $6baf: $00
    rst $30                                       ; $6bb0: $f7
    nop                                           ; $6bb1: $00
    db $10                                        ; $6bb2: $10
    rst $18                                       ; $6bb3: $df
    nop                                           ; $6bb4: $00
    ld l, a                                       ; $6bb5: $6f
    ld [$6b00], sp                                ; $6bb6: $08 $00 $6b

jr_094_6bb9:
    nop                                           ; $6bb9: $00
    cp a                                          ; $6bba: $bf
    ld b, b                                       ; $6bbb: $40
    ld a, [hl+]                                   ; $6bbc: $2a
    ei                                            ; $6bbd: $fb
    inc b                                         ; $6bbe: $04
    ld b, c                                       ; $6bbf: $41
    dec c                                         ; $6bc0: $0d
    rst $18                                       ; $6bc1: $df
    ld b, l                                       ; $6bc2: $45
    dec b                                         ; $6bc3: $05
    ei                                            ; $6bc4: $fb
    ld l, [hl]                                    ; $6bc5: $6e
    inc b                                         ; $6bc6: $04
    sbc d                                         ; $6bc7: $9a
    ld [bc], a                                    ; $6bc8: $02
    or b                                          ; $6bc9: $b0
    db $fd                                        ; $6bca: $fd
    xor b                                         ; $6bcb: $a8
    xor $c5                                       ; $6bcc: $ee $c5
    rst $10                                       ; $6bce: $d7
    sub h                                         ; $6bcf: $94
    ld [de], a                                    ; $6bd0: $12
    rst $28                                       ; $6bd1: $ef
    ld de, $d483                                  ; $6bd2: $11 $83 $d4
    push bc                                       ; $6bd5: $c5
    call nz, $eb0a                                ; $6bd6: $c4 $0a $eb
    adc a                                         ; $6bd9: $8f
    ld d, a                                       ; $6bda: $57
    sub h                                         ; $6bdb: $94
    ld [de], a                                    ; $6bdc: $12
    ld [$0fe7], sp                                ; $6bdd: $08 $e7 $0f
    rst $08                                       ; $6be0: $cf
    sbc a                                         ; $6be1: $9f

jr_094_6be2:
    ld c, b                                       ; $6be2: $48
    ld [bc], a                                    ; $6be3: $02
    ld d, c                                       ; $6be4: $51
    db $ed                                        ; $6be5: $ed
    adc e                                         ; $6be6: $8b
    ld b, b                                       ; $6be7: $40
    ld d, a                                       ; $6be8: $57
    sub h                                         ; $6be9: $94
    ld [de], a                                    ; $6bea: $12
    xor $06                                       ; $6beb: $ee $06
    db $dd                                        ; $6bed: $dd
    adc e                                         ; $6bee: $8b
    ld h, a                                       ; $6bef: $67
    rst $08                                       ; $6bf0: $cf
    inc b                                         ; $6bf1: $04
    rst $30                                       ; $6bf2: $f7
    xor a                                         ; $6bf3: $af
    rst $30                                       ; $6bf4: $f7
    rra                                           ; $6bf5: $1f
    ld e, a                                       ; $6bf6: $5f
    sub h                                         ; $6bf7: $94
    ld [de], a                                    ; $6bf8: $12
    rst $28                                       ; $6bf9: $ef
    rra                                           ; $6bfa: $1f
    ld bc, $3f5f                                  ; $6bfb: $01 $5f $3f
    cp e                                          ; $6bfe: $bb
    xor b                                         ; $6bff: $a8
    push de                                       ; $6c00: $d5
    or b                                          ; $6c01: $b0
    rst $18                                       ; $6c02: $df
    ld c, h                                       ; $6c03: $4c
    ld [bc], a                                    ; $6c04: $02
    ld b, b                                       ; $6c05: $40
    db $db                                        ; $6c06: $db
    ld d, b                                       ; $6c07: $50
    ld [bc], a                                    ; $6c08: $02
    rst $18                                       ; $6c09: $df
    or b                                          ; $6c0a: $b0
    cp l                                          ; $6c0b: $bd
    add sp, $5b                                   ; $6c0c: $e8 $5b
    rst $30                                       ; $6c0e: $f7
    jr jr_094_6c44                                ; $6c0f: $18 $33

    ld h, a                                       ; $6c11: $67
    cp e                                          ; $6c12: $bb
    ld d, b                                       ; $6c13: $50
    ld [bc], a                                    ; $6c14: $02
    inc b                                         ; $6c15: $04
    jr jr_094_6c6b                                ; $6c16: $18 $53

    rst $10                                       ; $6c18: $d7
    ld a, [$510a]                                 ; $6c19: $fa $0a $51
    dec [hl]                                      ; $6c1c: $35
    ld h, b                                       ; $6c1d: $60
    cp a                                          ; $6c1e: $bf
    ld c, h                                       ; $6c1f: $4c
    ld [bc], a                                    ; $6c20: $02
    cp e                                          ; $6c21: $bb
    ld d, b                                       ; $6c22: $50
    ld [bc], a                                    ; $6c23: $02
    cp a                                          ; $6c24: $bf
    add d                                         ; $6c25: $82

jr_094_6c26:
    sub h                                         ; $6c26: $94
    ld [bc], a                                    ; $6c27: $02
    cp $c5                                        ; $6c28: $fe $c5

jr_094_6c2a:
    db $db                                        ; $6c2a: $db
    add a                                         ; $6c2b: $87
    or $84                                        ; $6c2c: $f6 $84
    ld [bc], a                                    ; $6c2e: $02
    rst $18                                       ; $6c2f: $df
    jr nz, jr_094_6be2                            ; $6c30: $20 $b0

    db $dd                                        ; $6c32: $dd
    jr c, jr_094_6c35                             ; $6c33: $38 $00

jr_094_6c35:
    rst $10                                       ; $6c35: $d7
    or b                                          ; $6c36: $b0
    rst $38                                       ; $6c37: $ff
    adc a                                         ; $6c38: $8f
    ld d, a                                       ; $6c39: $57
    inc l                                         ; $6c3a: $2c
    rrca                                          ; $6c3b: $0f
    rst $28                                       ; $6c3c: $ef
    add h                                         ; $6c3d: $84
    ld [bc], a                                    ; $6c3e: $02
    cp e                                          ; $6c3f: $bb
    ld [hl], $00                                  ; $6c40: $36 $00
    jr c, jr_094_6c4c                             ; $6c42: $38 $08

jr_094_6c44:
    db $fd                                        ; $6c44: $fd
    adc e                                         ; $6c45: $8b
    ld de, $0e57                                  ; $6c46: $11 $57 $0e
    db $ed                                        ; $6c49: $ed
    add h                                         ; $6c4a: $84
    ld [bc], a                                    ; $6c4b: $02

jr_094_6c4c:
    cp a                                          ; $6c4c: $bf
    ld h, b                                       ; $6c4d: $60
    cp l                                          ; $6c4e: $bd
    jr c, jr_094_6c51                             ; $6c4f: $38 $00

jr_094_6c51:
    inc b                                         ; $6c51: $04
    scf                                           ; $6c52: $37
    ld h, b                                       ; $6c53: $60
    rst $28                                       ; $6c54: $ef
    stop                                          ; $6c55: $10 $00
    ld [bc], a                                    ; $6c57: $02
    nop                                           ; $6c58: $00
    adc b                                         ; $6c59: $88
    db $10                                        ; $6c5a: $10
    ld b, l                                       ; $6c5b: $45
    rst $38                                       ; $6c5c: $ff
    ldh a, [rP1]                                  ; $6c5d: $f0 $00
    db $10                                        ; $6c5f: $10
    rst $38                                       ; $6c60: $ff
    ld a, [$27b0]                                 ; $6c61: $fa $b0 $27
    jr nz, jr_094_6c26                            ; $6c64: $20 $c0

    scf                                           ; $6c66: $37
    adc b                                         ; $6c67: $88
    db $e4                                        ; $6c68: $e4
    add hl, bc                                    ; $6c69: $09
    ld l, [hl]                                    ; $6c6a: $6e

jr_094_6c6b:
    ret                                           ; $6c6b: $c9


    db $ec                                        ; $6c6c: $ec
    ld h, h                                       ; $6c6d: $64
    ld [de], a                                    ; $6c6e: $12
    ei                                            ; $6c6f: $fb
    rst $30                                       ; $6c70: $f7
    ld a, l                                       ; $6c71: $7d
    nop                                           ; $6c72: $00
    ccf                                           ; $6c73: $3f
    xor c                                         ; $6c74: $a9
    xor e                                         ; $6c75: $ab
    ld a, [$e6af]                                 ; $6c76: $fa $af $e6
    xor l                                         ; $6c79: $ad
    db $f4                                        ; $6c7a: $f4
    jr z, jr_094_6c2a                             ; $6c7b: $28 $ad

    or [hl]                                       ; $6c7d: $b6
    inc b                                         ; $6c7e: $04
    nop                                           ; $6c7f: $00
    and $64                                       ; $6c80: $e6 $64
    ld [bc], a                                    ; $6c82: $02
    rrca                                          ; $6c83: $0f
    ldh a, [$9f]                                  ; $6c84: $f0 $9f
    nop                                           ; $6c86: $00
    ld [c], a                                     ; $6c87: $e2
    rra                                           ; $6c88: $1f
    ld a, [$f39f]                                 ; $6c89: $fa $9f $f3
    rra                                           ; $6c8c: $1f
    ld a, [c]                                     ; $6c8d: $f2
    adc a                                         ; $6c8e: $8f
    nop                                           ; $6c8f: $00
    ld a, [$d02f]                                 ; $6c90: $fa $2f $d0
    sbc a                                         ; $6c93: $9f
    db $ed                                        ; $6c94: $ed
    ld e, [hl]                                    ; $6c95: $5e
    nop                                           ; $6c96: $00
    rst $30                                       ; $6c97: $f7
    nop                                           ; $6c98: $00
    add b                                         ; $6c99: $80
    sbc $80                                       ; $6c9a: $de $80
    rst $38                                       ; $6c9c: $ff
    cp d                                          ; $6c9d: $ba
    rst $38                                       ; $6c9e: $ff
    xor c                                         ; $6c9f: $a9
    rst $38                                       ; $6ca0: $ff
    ld hl, $fbb9                                  ; $6ca1: $21 $b9 $fb
    inc c                                         ; $6ca4: $0c
    nop                                           ; $6ca5: $00
    sbc a                                         ; $6ca6: $9f
    cp a                                          ; $6ca7: $bf
    rst $30                                       ; $6ca8: $f7
    or e                                          ; $6ca9: $b3
    ld [hl], h                                    ; $6caa: $74
    ld a, [de]                                    ; $6cab: $1a
    db $10                                        ; $6cac: $10
    ld e, h                                       ; $6cad: $5c
    ld c, c                                       ; $6cae: $49
    cp $30                                        ; $6caf: $fe $30
    ld [bc], a                                    ; $6cb1: $02
    ld a, [$dedb]                                 ; $6cb2: $fa $db $de
    db $eb                                        ; $6cb5: $eb
    nop                                           ; $6cb6: $00
    rst $38                                       ; $6cb7: $ff
    ld sp, hl                                     ; $6cb8: $f9
    ld hl, sp-$43                                 ; $6cb9: $f8 $bd
    rst $38                                       ; $6cbb: $ff
    adc a                                         ; $6cbc: $8f
    rst $18                                       ; $6cbd: $df
    db $db                                        ; $6cbe: $db
    nop                                           ; $6cbf: $00
    db $fd                                        ; $6cc0: $fd
    db $db                                        ; $6cc1: $db
    cp $ab                                        ; $6cc2: $fe $ab
    rra                                           ; $6cc4: $1f
    pop af                                        ; $6cc5: $f1
    adc a                                         ; $6cc6: $8f
    db $fd                                        ; $6cc7: $fd
    nop                                           ; $6cc8: $00
    rra                                           ; $6cc9: $1f
    push hl                                       ; $6cca: $e5
    cp a                                          ; $6ccb: $bf
    reti                                          ; $6ccc: $d9


    dec bc                                        ; $6ccd: $0b
    db $f4                                        ; $6cce: $f4
    rst $18                                       ; $6ccf: $df
    xor h                                         ; $6cd0: $ac
    ld [bc], a                                    ; $6cd1: $02
    scf                                           ; $6cd2: $37
    jp c, $b2df                                   ; $6cd3: $da $df $b2

    cp $00                                        ; $6cd6: $fe $00
    ld l, e                                       ; $6cd8: $6b
    inc b                                         ; $6cd9: $04
    dec b                                         ; $6cda: $05
    inc b                                         ; $6cdb: $04
    rst $38                                       ; $6cdc: $ff
    push bc                                       ; $6cdd: $c5
    ld a, a                                       ; $6cde: $7f
    add b                                         ; $6cdf: $80
    rst $38                                       ; $6ce0: $ff
    ld c, h                                       ; $6ce1: $4c
    ld bc, $f5ff                                  ; $6ce2: $01 $ff $f5
    and b                                         ; $6ce5: $a0
    inc [hl]                                      ; $6ce6: $34
    ld [$74ee], sp                                ; $6ce7: $08 $ee $74
    ld [bc], a                                    ; $6cea: $02
    call c, $bea7                                 ; $6ceb: $dc $a7 $be
    di                                            ; $6cee: $f3
    rst $38                                       ; $6cef: $ff
    nop                                           ; $6cf0: $00
    ld d, e                                       ; $6cf1: $53
    ld [hl], a                                    ; $6cf2: $77
    ld d, l                                       ; $6cf3: $55
    ld a, [$f4af]                                 ; $6cf4: $fa $af $f4
    xor l                                         ; $6cf7: $ad
    or $a0                                        ; $6cf8: $f6 $a0
    add b                                         ; $6cfa: $80
    nop                                           ; $6cfb: $00
    or $74                                        ; $6cfc: $f6 $74
    ld [de], a                                    ; $6cfe: $12
    cp $9b                                        ; $6cff: $fe $9b
    ccf                                           ; $6d01: $3f
    sbc $97                                       ; $6d02: $de $97
    nop                                           ; $6d04: $00
    ld a, [$d12e]                                 ; $6d05: $fa $2e $d1
    sbc e                                         ; $6d08: $9b
    db $e4                                        ; $6d09: $e4
    ld d, [hl]                                    ; $6d0a: $56
    xor c                                         ; $6d0b: $a9
    cp a                                          ; $6d0c: $bf
    nop                                           ; $6d0d: $00
    db $dd                                        ; $6d0e: $dd
    dec d                                         ; $6d0f: $15
    rst $38                                       ; $6d10: $ff
    sbc a                                         ; $6d11: $9f
    push af                                       ; $6d12: $f5
    rst $38                                       ; $6d13: $ff
    xor [hl]                                      ; $6d14: $ae
    rst $38                                       ; $6d15: $ff
    nop                                           ; $6d16: $00
    xor d                                         ; $6d17: $aa
    cp a                                          ; $6d18: $bf
    ld b, b                                       ; $6d19: $40
    ld a, a                                       ; $6d1a: $7f
    add b                                         ; $6d1b: $80
    cp $00                                        ; $6d1c: $fe $00
    ld a, a                                       ; $6d1e: $7f
    nop                                           ; $6d1f: $00
    cp $7f                                        ; $6d20: $fe $7f
    ld [c], a                                     ; $6d22: $e2
    rst $38                                       ; $6d23: $ff
    rst $18                                       ; $6d24: $df
    xor $d3                                       ; $6d25: $ee $d3
    rst $18                                       ; $6d27: $df
    inc l                                         ; $6d28: $2c
    ld sp, hl                                     ; $6d29: $f9
    db $fd                                        ; $6d2a: $fd
    or h                                          ; $6d2b: $b4
    nop                                           ; $6d2c: $00
    or $36                                        ; $6d2d: $f6 $36
    nop                                           ; $6d2f: $00
    inc b                                         ; $6d30: $04
    ld [$fe01], sp                                ; $6d31: $08 $01 $fe
    nop                                           ; $6d34: $00
    add d                                         ; $6d35: $82
    db $fd                                        ; $6d36: $fd
    ld bc, $9afe                                  ; $6d37: $01 $fe $9a
    rst $38                                       ; $6d3a: $ff
    ld a, [bc]                                    ; $6d3b: $0a
    rst $38                                       ; $6d3c: $ff
    ld b, b                                       ; $6d3d: $40
    sbc e                                         ; $6d3e: $9b
    db $eb                                        ; $6d3f: $eb
    ld b, $aa                                     ; $6d40: $06 $aa
    rst $38                                       ; $6d42: $ff
    ld e, h                                       ; $6d43: $5c
    and b                                         ; $6d44: $a0
    ld a, [hl]                                    ; $6d45: $7e
    add b                                         ; $6d46: $80
    nop                                           ; $6d47: $00
    dec c                                         ; $6d48: $0d
    ldh a, [rIE]                                  ; $6d49: $f0 $ff
    pop af                                        ; $6d4b: $f1
    rst $30                                       ; $6d4c: $f7
    ld sp, hl                                     ; $6d4d: $f9
    ei                                            ; $6d4e: $fb
    db $f4                                        ; $6d4f: $f4
    nop                                           ; $6d50: $00
    dec b                                         ; $6d51: $05
    ld a, [$ffaa]                                 ; $6d52: $fa $aa $ff
    and b                                         ; $6d55: $a0
    nop                                           ; $6d56: $00
    add d                                         ; $6d57: $82
    ld [bc], a                                    ; $6d58: $02
    nop                                           ; $6d59: $00
    ld [c], a                                     ; $6d5a: $e2
    ld [bc], a                                    ; $6d5b: $02
    and c                                         ; $6d5c: $a1
    and c                                         ; $6d5d: $a1
    jp nz, $e2c2                                  ; $6d5e: $c2 $c2 $e2

    ld b, d                                       ; $6d61: $42
    nop                                           ; $6d62: $00
    ld c, b                                       ; $6d63: $48
    nop                                           ; $6d64: $00
    and b                                         ; $6d65: $a0
    nop                                           ; $6d66: $00
    add hl, de                                    ; $6d67: $19
    db $10                                        ; $6d68: $10
    add d                                         ; $6d69: $82
    add b                                         ; $6d6a: $80
    nop                                           ; $6d6b: $00
    add c                                         ; $6d6c: $81
    add b                                         ; $6d6d: $80
    ld a, [hl-]                                   ; $6d6e: $3a
    ld a, [hl-]                                   ; $6d6f: $3a
    xor e                                         ; $6d70: $ab
    xor d                                         ; $6d71: $aa
    cp e                                          ; $6d72: $bb
    cp e                                          ; $6d73: $bb
    add b                                         ; $6d74: $80
    ld d, [hl]                                    ; $6d75: $56
    ld a, [bc]                                    ; $6d76: $0a
    ld d, [hl]                                    ; $6d77: $56
    nop                                           ; $6d78: $00
    or l                                          ; $6d79: $b5
    nop                                           ; $6d7a: $00
    ld l, a                                       ; $6d7b: $6f
    inc bc                                        ; $6d7c: $03
    cp d                                          ; $6d7d: $ba
    nop                                           ; $6d7e: $00
    and d                                         ; $6d7f: $a2
    rst $30                                       ; $6d80: $f7
    and d                                         ; $6d81: $a2
    cp e                                          ; $6d82: $bb
    and c                                         ; $6d83: $a1
    ld b, h                                       ; $6d84: $44
    nop                                           ; $6d85: $00
    sbc c                                         ; $6d86: $99
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    call nc, Call_094_7e00                        ; $6d89: $d4 $00 $7e
    ld a, d                                       ; $6d8c: $7a
    ld [$fe6a], a                                 ; $6d8d: $ea $6a $fe
    nop                                           ; $6d90: $00
    ld a, [hl-]                                   ; $6d91: $3a
    add b                                         ; $6d92: $80
    nop                                           ; $6d93: $00
    ld [hl], l                                    ; $6d94: $75
    ld bc, $01d5                                  ; $6d95: $01 $d5 $01
    db $fc                                        ; $6d98: $fc
    nop                                           ; $6d99: $00
    ld e, h                                       ; $6d9a: $5c
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    db $fd                                        ; $6d9d: $fd
    inc c                                         ; $6d9e: $0c
    sbc b                                         ; $6d9f: $98
    ld [$026c], sp                                ; $6da0: $08 $6c $02
    inc c                                         ; $6da3: $0c
    nop                                           ; $6da4: $00
    nop                                           ; $6da5: $00
    ld b, $06                                     ; $6da6: $06 $06
    inc b                                         ; $6da8: $04
    ret nc                                        ; $6da9: $d0

    ld [bc], a                                    ; $6daa: $02
    jr nz, jr_094_6dae                            ; $6dab: $20 $01

    nop                                           ; $6dad: $00

jr_094_6dae:
    xor e                                         ; $6dae: $ab
    xor e                                         ; $6daf: $ab
    ld [hl], e                                    ; $6db0: $73
    ld [hl], e                                    ; $6db1: $73
    ld d, c                                       ; $6db2: $51
    ld d, c                                       ; $6db3: $51
    adc $0a                                       ; $6db4: $ce $0a
    nop                                           ; $6db6: $00
    add b                                         ; $6db7: $80
    add b                                         ; $6db8: $80
    xor a                                         ; $6db9: $af
    xor a                                         ; $6dba: $af
    push af                                       ; $6dbb: $f5
    ld d, h                                       ; $6dbc: $54
    call c, $005c                                 ; $6dbd: $dc $5c $00
    or d                                          ; $6dc0: $b2
    nop                                           ; $6dc1: $00
    ld b, h                                       ; $6dc2: $44
    nop                                           ; $6dc3: $00
    adc c                                         ; $6dc4: $89
    ld bc, $1d1d                                  ; $6dc5: $01 $1d $1d
    nop                                           ; $6dc8: $00
    sub l                                         ; $6dc9: $95
    dec d                                         ; $6dca: $15
    dec e                                         ; $6dcb: $1d
    dec e                                         ; $6dcc: $1d
    ld b, h                                       ; $6dcd: $44
    ld b, h                                       ; $6dce: $44
    jp $00c3                                      ; $6dcf: $c3 $c3 $00


    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    ret nz                                        ; $6dd4: $c0

    ret nz                                        ; $6dd5: $c0

    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    dec e                                         ; $6dd8: $1d
    add hl, bc                                    ; $6dd9: $09
    nop                                           ; $6dda: $00
    dec d                                         ; $6ddb: $15
    dec d                                         ; $6ddc: $15
    dec e                                         ; $6ddd: $1d
    add hl, bc                                    ; $6dde: $09
    xor e                                         ; $6ddf: $ab
    xor e                                         ; $6de0: $ab
    xor a                                         ; $6de1: $af
    xor a                                         ; $6de2: $af
    add c                                         ; $6de3: $81
    cp [hl]                                       ; $6de4: $be
    ld a, [bc]                                    ; $6de5: $0a
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    ld a, a                                       ; $6de8: $7f
    ld a, a                                       ; $6de9: $7f
    ld l, d                                       ; $6dea: $6a
    ld l, d                                       ; $6deb: $6a
    xor c                                         ; $6dec: $a9
    rlca                                          ; $6ded: $07
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00

jr_094_6df0:
    jr nz, jr_094_6e12                            ; $6df0: $20 $20

    dec h                                         ; $6df2: $25
    jr nz, jr_094_6df0                            ; $6df3: $20 $fb

    ei                                            ; $6df5: $fb
    cpl                                           ; $6df6: $2f
    ld [bc], a                                    ; $6df7: $02
    dec hl                                        ; $6df8: $2b
    ei                                            ; $6df9: $fb
    ei                                            ; $6dfa: $fb
    ld e, a                                       ; $6dfb: $5f
    and b                                         ; $6dfc: $a0
    xor d                                         ; $6dfd: $aa
    stop                                          ; $6dfe: $10 $00
    ld b, d                                       ; $6e00: $42
    add b                                         ; $6e01: $80
    ld a, [de]                                    ; $6e02: $1a
    inc bc                                        ; $6e03: $03
    jp c, $ffd0                                   ; $6e04: $da $d0 $ff

    ret nc                                        ; $6e07: $d0

    rst $38                                       ; $6e08: $ff
    ret c                                         ; $6e09: $d8

    rst $38                                       ; $6e0a: $ff
    ld b, b                                       ; $6e0b: $40
    nop                                           ; $6e0c: $00
    db $10                                        ; $6e0d: $10
    ld [$0000], sp                                ; $6e0e: $08 $00 $00
    add d                                         ; $6e11: $82

jr_094_6e12:
    nop                                           ; $6e12: $00
    ld d, l                                       ; $6e13: $55
    nop                                           ; $6e14: $00
    ld h, b                                       ; $6e15: $60
    db $eb                                        ; $6e16: $eb
    or l                                          ; $6e17: $b5
    rrca                                          ; $6e18: $0f
    stop                                          ; $6e19: $10 $00
    ld d, d                                       ; $6e1b: $52
    nop                                           ; $6e1c: $00
    db $fd                                        ; $6e1d: $fd
    ret nc                                        ; $6e1e: $d0

    ld a, [$5000]                                 ; $6e1f: $fa $00 $50
    rst $28                                       ; $6e22: $ef

Call_094_6e23:
    ld h, a                                       ; $6e23: $67
    or a                                          ; $6e24: $b7
    and a                                         ; $6e25: $a7
    rst $28                                       ; $6e26: $ef
    and a                                         ; $6e27: $a7
    and d                                         ; $6e28: $a2
    inc l                                         ; $6e29: $2c
    nop                                           ; $6e2a: $00
    add c                                         ; $6e2b: $81
    ld b, [hl]                                    ; $6e2c: $46
    inc bc                                        ; $6e2d: $03
    ld b, b                                       ; $6e2e: $40
    ld c, a                                       ; $6e2f: $4f
    jr jr_094_6e3a                                ; $6e30: $18 $08

    nop                                           ; $6e32: $00
    ld hl, $0100                                  ; $6e33: $21 $00 $01
    ld c, e                                       ; $6e36: $4b
    nop                                           ; $6e37: $00
    sub l                                         ; $6e38: $95
    add b                                         ; $6e39: $80

jr_094_6e3a:
    add l                                         ; $6e3a: $85
    add b                                         ; $6e3b: $80
    ld [hl+], a                                   ; $6e3c: $22

jr_094_6e3d:
    ld e, h                                       ; $6e3d: $5c
    inc bc                                        ; $6e3e: $03
    ret nz                                        ; $6e3f: $c0

    inc hl                                        ; $6e40: $23
    inc de                                        ; $6e41: $13
    ld l, c                                       ; $6e42: $69
    db $10                                        ; $6e43: $10
    jr nz, jr_094_6e46                            ; $6e44: $20 $00

jr_094_6e46:
    add b                                         ; $6e46: $80
    nop                                           ; $6e47: $00
    ld d, h                                       ; $6e48: $54
    nop                                           ; $6e49: $00
    ld bc, $00ea                                  ; $6e4a: $01 $ea $00
    ld e, a                                       ; $6e4d: $5f
    and b                                         ; $6e4e: $a0
    ld bc, $aafe                                  ; $6e4f: $01 $fe $aa
    ld d, c                                       ; $6e52: $51
    ld b, $19                                     ; $6e53: $06 $19
    ld a, [de]                                    ; $6e55: $1a
    rst $38                                       ; $6e56: $ff
    dec d                                         ; $6e57: $15
    inc c                                         ; $6e58: $0c
    ld [de], a                                    ; $6e59: $12
    db $10                                        ; $6e5a: $10
    ld a, [bc]                                    ; $6e5b: $0a
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    ldh [rIF], a                                  ; $6e5e: $e0 $0f
    ld [hl], b                                    ; $6e60: $70
    ld d, c                                       ; $6e61: $51
    ld l, h                                       ; $6e62: $6c
    ld d, $08                                     ; $6e63: $16 $08
    ld e, $70                                     ; $6e65: $1e $70
    ld c, $20                                     ; $6e67: $0e $20
    rst $38                                       ; $6e69: $ff
    ccf                                           ; $6e6a: $3f
    ldh [rTIMA], a                                ; $6e6b: $e0 $05
    add hl, sp                                    ; $6e6d: $39
    and $ba                                       ; $6e6e: $e6 $ba
    push hl                                       ; $6e70: $e5

jr_094_6e71:
    ld hl, sp+$70                                 ; $6e71: $f8 $70
    ld b, $52                                     ; $6e73: $06 $52
    halt                                          ; $6e75: $76
    rlca                                          ; $6e76: $07
    nop                                           ; $6e77: $00
    ldh a, [rIF]                                  ; $6e78: $f0 $0f
    rst $38                                       ; $6e7a: $ff
    rrca                                          ; $6e7b: $0f
    ret nc                                        ; $6e7c: $d0

    rrca                                          ; $6e7d: $0f

jr_094_6e7e:
    ld a, [$000d]                                 ; $6e7e: $fa $0d $00
    ld d, b                                       ; $6e81: $50
    rrca                                          ; $6e82: $0f
    jp c, $800d                                   ; $6e83: $da $0d $80

    rst $38                                       ; $6e86: $ff
    rra                                           ; $6e87: $1f

jr_094_6e88:
    ldh [rP1], a                                  ; $6e88: $e0 $00
    rst $08                                       ; $6e8a: $cf
    or b                                          ; $6e8b: $b0
    ld l, a                                       ; $6e8c: $6f
    sbc a                                         ; $6e8d: $9f
    rst $28                                       ; $6e8e: $ef
    sbc a                                         ; $6e8f: $9f
    ld c, a                                       ; $6e90: $4f
    cp a                                          ; $6e91: $bf
    inc c                                         ; $6e92: $0c
    rst $18                                       ; $6e93: $df
    and b                                         ; $6e94: $a0
    ld c, a                                       ; $6e95: $4f
    or b                                          ; $6e96: $b0
    ld b, b                                       ; $6e97: $40
    ld [$0e4c], sp                                ; $6e98: $08 $4c $0e
    cp a                                          ; $6e9b: $bf
    ld b, b                                       ; $6e9c: $40
    jr nz, jr_094_6e7e                            ; $6e9d: $20 $df

    jr nz, jr_094_6e71                            ; $6e9f: $20 $d0

    ld bc, $ee00                                  ; $6ea1: $01 $00 $ee
    pop af                                        ; $6ea4: $f1
    ldh [$f1], a                                  ; $6ea5: $e0 $f1
    ld bc, $9160                                  ; $6ea7: $01 $60 $91
    ld [$1f91], sp                                ; $6eaa: $08 $91 $1f
    sbc a                                         ; $6ead: $9f
    ld de, $06c7                                  ; $6eae: $11 $c7 $06
    ld b, c                                       ; $6eb1: $41
    sub l                                         ; $6eb2: $95
    add [hl]                                      ; $6eb3: $86
    ld bc, $fff5                                  ; $6eb4: $01 $f5 $ff
    pop af                                        ; $6eb7: $f1
    rst $38                                       ; $6eb8: $ff
    sub c                                         ; $6eb9: $91
    ld [bc], a                                    ; $6eba: $02
    jr nz, jr_094_6e3d                            ; $6ebb: $20 $80

    inc d                                         ; $6ebd: $14
    inc bc                                        ; $6ebe: $03
    sbc b                                         ; $6ebf: $98
    ld [hl], e                                    ; $6ec0: $73
    adc h                                         ; $6ec1: $8c
    rst $20                                       ; $6ec2: $e7
    sbc b                                         ; $6ec3: $98
    rrca                                          ; $6ec4: $0f
    ldh a, [$90]                                  ; $6ec5: $f0 $90
    ld h, l                                       ; $6ec7: $65

jr_094_6ec8:
    inc bc                                        ; $6ec8: $03
    add b                                         ; $6ec9: $80
    rst $38                                       ; $6eca: $ff
    ld h, b                                       ; $6ecb: $60
    ld b, $ff                                     ; $6ecc: $06 $ff
    add b                                         ; $6ece: $80
    ret nz                                        ; $6ecf: $c0

    add b                                         ; $6ed0: $80
    ld d, d                                       ; $6ed1: $52
    jp z, Jump_000_0004                           ; $6ed2: $ca $04 $00

    rst $10                                       ; $6ed5: $d7
    ld [$bf00], sp                                ; $6ed6: $08 $00 $bf
    ret nz                                        ; $6ed9: $c0

    ld d, d                                       ; $6eda: $52
    ld c, $01                                     ; $6edb: $0e $01
    ldh [$66], a                                  ; $6edd: $e0 $66
    inc bc                                        ; $6edf: $03
    inc b                                         ; $6ee0: $04
    jr jr_094_6e88                                ; $6ee1: $18 $a5

    ld c, $7f                                     ; $6ee3: $0e $7f
    rst $38                                       ; $6ee5: $ff
    ccf                                           ; $6ee6: $3f
    rst $38                                       ; $6ee7: $ff
    xor b                                         ; $6ee8: $a8
    nop                                           ; $6ee9: $00
    ld d, a                                       ; $6eea: $57
    nop                                           ; $6eeb: $00
    rst $38                                       ; $6eec: $ff
    ld [hl-], a                                   ; $6eed: $32
    call $ff00                                    ; $6eee: $cd $00 $ff
    xor c                                         ; $6ef1: $a9
    ld b, b                                       ; $6ef2: $40
    ld d, [hl]                                    ; $6ef3: $56
    ld [hl], h                                    ; $6ef4: $74
    ld d, $ff                                     ; $6ef5: $16 $ff
    call z, $0133                                 ; $6ef7: $cc $33 $01
    rst $38                                       ; $6efa: $ff
    ld [hl], h                                    ; $6efb: $74
    nop                                           ; $6efc: $00
    adc e                                         ; $6efd: $8b
    ld bc, $68ff                                  ; $6efe: $01 $ff $68
    sub a                                         ; $6f01: $97
    ld bc, $abff                                  ; $6f02: $01 $ff $ab
    add h                                         ; $6f05: $84
    dec hl                                        ; $6f06: $2b
    rlca                                          ; $6f07: $07
    xor e                                         ; $6f08: $ab
    ld d, l                                       ; $6f09: $55
    db $fd                                        ; $6f0a: $fd
    rst $38                                       ; $6f0b: $ff
    ld [bc], a                                    ; $6f0c: $02
    jr @+$01                                      ; $6f0d: $18 $ff

    rst $38                                       ; $6f0f: $ff
    inc b                                         ; $6f10: $04
    and d                                         ; $6f11: $a2
    dec c                                         ; $6f12: $0d
    ret z                                         ; $6f13: $c8

    rrca                                          ; $6f14: $0f
    ld h, b                                       ; $6f15: $60
    cp b                                          ; $6f16: $b8
    rlca                                          ; $6f17: $07
    and d                                         ; $6f18: $a2
    dec c                                         ; $6f19: $0d
    nop                                           ; $6f1a: $00
    ld [$200f], sp                                ; $6f1b: $08 $0f $20
    rrca                                          ; $6f1e: $0f
    adc d                                         ; $6f1f: $8a
    dec c                                         ; $6f20: $0d
    rlca                                          ; $6f21: $07
    ret c                                         ; $6f22: $d8

    ld [$d00e], sp                                ; $6f23: $08 $0e $d0
    and l                                         ; $6f26: $a5
    ld e, b                                       ; $6f27: $58
    jp nz, $8d0f                                  ; $6f28: $c2 $0f $8d

    ld [hl], b                                    ; $6f2b: $70
    and a                                         ; $6f2c: $a7
    nop                                           ; $6f2d: $00
    ld e, b                                       ; $6f2e: $58
    ld l, $d0                                     ; $6f2f: $2e $d0
    jp nc, $f808                                  ; $6f31: $d2 $08 $f8

    nop                                           ; $6f34: $00
    ld d, d                                       ; $6f35: $52
    add d                                         ; $6f36: $82
    ld a, h                                       ; $6f37: $7c
    rlca                                          ; $6f38: $07
    ld d, c                                       ; $6f39: $51
    ld [$007a], sp                                ; $6f3a: $08 $7a $00
    pop af                                        ; $6f3d: $f1
    and h                                         ; $6f3e: $a4
    rlca                                          ; $6f3f: $07
    and d                                         ; $6f40: $a2
    dec hl                                        ; $6f41: $2b
    ld [$7caa], sp                                ; $6f42: $08 $aa $7c
    rlca                                          ; $6f45: $07
    jr jr_094_6ec8                                ; $6f46: $18 $80

    rlca                                          ; $6f48: $07
    ld e, d                                       ; $6f49: $5a
    adc h                                         ; $6f4a: $8c
    rlca                                          ; $6f4b: $07
    or b                                          ; $6f4c: $b0
    rlca                                          ; $6f4d: $07
    ld [bc], a                                    ; $6f4e: $02
    rst $38                                       ; $6f4f: $ff
    add hl, de                                    ; $6f50: $19
    ldh [$8a], a                                  ; $6f51: $e0 $8a
    push af                                       ; $6f53: $f5
    ld e, d                                       ; $6f54: $5a
    ld a, [$5d06]                                 ; $6f55: $fa $06 $5d
    ld a, [bc]                                    ; $6f58: $0a
    and b                                         ; $6f59: $a0
    adc d                                         ; $6f5a: $8a
    push af                                       ; $6f5b: $f5
    ld e, h                                       ; $6f5c: $5c
    ld a, [hl+]                                   ; $6f5d: $2a
    inc b                                         ; $6f5e: $04
    or d                                          ; $6f5f: $b2
    db $f4                                        ; $6f60: $f4
    inc bc                                        ; $6f61: $03
    sbc h                                         ; $6f62: $9c
    add b                                         ; $6f63: $80
    jr nc, @+$09                                  ; $6f64: $30 $07

    ld c, b                                       ; $6f66: $48
    nop                                           ; $6f67: $00
    cp $01                                        ; $6f68: $fe $01
    add b                                         ; $6f6a: $80
    rst $38                                       ; $6f6b: $ff
    add sp, $00                                   ; $6f6c: $e8 $00
    rst $38                                       ; $6f6e: $ff
    and e                                         ; $6f6f: $a3
    nop                                           ; $6f70: $00
    ld [$a015], a                                 ; $6f71: $ea $15 $a0
    rst $38                                       ; $6f74: $ff
    ld b, $00                                     ; $6f75: $06 $00
    rst $38                                       ; $6f77: $ff
    jp nc, $a10c                                  ; $6f78: $d2 $0c $a1

    ld e, [hl]                                    ; $6f7b: $5e
    ld [hl], l                                    ; $6f7c: $75
    rst $38                                       ; $6f7d: $ff
    ld [bc], a                                    ; $6f7e: $02
    nop                                           ; $6f7f: $00
    rst $38                                       ; $6f80: $ff
    ld b, b                                       ; $6f81: $40
    cp a                                          ; $6f82: $bf
    ld l, c                                       ; $6f83: $69
    add b                                         ; $6f84: $80
    ld a, [hl+]                                   ; $6f85: $2a
    push de                                       ; $6f86: $d5
    ld b, b                                       ; $6f87: $40
    nop                                           ; $6f88: $00
    rst $38                                       ; $6f89: $ff
    or c                                          ; $6f8a: $b1
    nop                                           ; $6f8b: $00
    ld d, a                                       ; $6f8c: $57

jr_094_6f8d:
    xor b                                         ; $6f8d: $a8
    ld b, b                                       ; $6f8e: $40
    rst $38                                       ; $6f8f: $ff
    add d                                         ; $6f90: $82
    nop                                           ; $6f91: $00
    db $fc                                        ; $6f92: $fc
    ld bc, $80fe                                  ; $6f93: $01 $fe $80
    rst $38                                       ; $6f96: $ff
    ld a, [hl-]                                   ; $6f97: $3a
    rst $38                                       ; $6f98: $ff
    add e                                         ; $6f99: $83
    add b                                         ; $6f9a: $80
    ld [$9000], sp                                ; $6f9b: $08 $00 $90
    rst $38                                       ; $6f9e: $ff
    dec e                                         ; $6f9f: $1d
    ldh [$89], a                                  ; $6fa0: $e0 $89
    nop                                           ; $6fa2: $00
    ld d, [hl]                                    ; $6fa3: $56
    nop                                           ; $6fa4: $00
    xor c                                         ; $6fa5: $a9
    nop                                           ; $6fa6: $00
    rst $38                                       ; $6fa7: $ff
    ld c, d                                       ; $6fa8: $4a
    rst $38                                       ; $6fa9: $ff
    ld b, e                                       ; $6faa: $43
    nop                                           ; $6fab: $00
    ld d, l                                       ; $6fac: $55
    nop                                           ; $6fad: $00
    xor d                                         ; $6fae: $aa
    ld a, [bc]                                    ; $6faf: $0a
    rst $38                                       ; $6fb0: $ff
    inc hl                                        ; $6fb1: $23
    nop                                           ; $6fb2: $00
    ld d, [hl]                                    ; $6fb3: $56
    xor b                                         ; $6fb4: $a8
    ld a, [hl+]                                   ; $6fb5: $2a
    jr z, jr_094_6f8d                             ; $6fb6: $28 $d5

    ld [hl], b                                    ; $6fb8: $70
    ld a, [hl]                                    ; $6fb9: $7e
    rlca                                          ; $6fba: $07
    dec h                                         ; $6fbb: $25
    ld [hl], b                                    ; $6fbc: $70
    inc b                                         ; $6fbd: $04
    ldh [rIE], a                                  ; $6fbe: $e0 $ff
    ld l, d                                       ; $6fc0: $6a
    jr nz, jr_094_6fd8                            ; $6fc1: $20 $15

    dec l                                         ; $6fc3: $2d
    ld d, d                                       ; $6fc4: $52
    inc b                                         ; $6fc5: $04
    inc bc                                        ; $6fc6: $03
    rst $38                                       ; $6fc7: $ff
    inc l                                         ; $6fc8: $2c
    ret nc                                        ; $6fc9: $d0

    ld b, l                                       ; $6fca: $45

jr_094_6fcb:
    nop                                           ; $6fcb: $00
    ld a, [hl-]                                   ; $6fcc: $3a
    add b                                         ; $6fcd: $80
    ld a, a                                       ; $6fce: $7f
    add hl, bc                                    ; $6fcf: $09
    rst $38                                       ; $6fd0: $ff
    ret nc                                        ; $6fd1: $d0

    nop                                           ; $6fd2: $00
    adc d                                         ; $6fd3: $8a
    jr nz, jr_094_6fcb                            ; $6fd4: $20 $f5

    dec l                                         ; $6fd6: $2d
    halt                                          ; $6fd7: $76

jr_094_6fd8:
    rlca                                          ; $6fd8: $07
    ld d, [hl]                                    ; $6fd9: $56
    xor b                                         ; $6fda: $a8
    add d                                         ; $6fdb: $82
    db $fd                                        ; $6fdc: $fd
    nop                                           ; $6fdd: $00
    add b                                         ; $6fde: $80
    ld h, l                                       ; $6fdf: $65
    inc bc                                        ; $6fe0: $03
    nop                                           ; $6fe1: $00
    rst $38                                       ; $6fe2: $ff
    cp a                                          ; $6fe3: $bf
    ld b, b                                       ; $6fe4: $40
    nop                                           ; $6fe5: $00
    rst $38                                       ; $6fe6: $ff
    ld hl, $f68c                                  ; $6fe7: $21 $8c $f6
    ld bc, $54ab                                  ; $6fea: $01 $ab $54
    nop                                           ; $6fed: $00
    cp [hl]                                       ; $6fee: $be
    inc b                                         ; $6fef: $04
    db $ec                                        ; $6ff0: $ec
    rrca                                          ; $6ff1: $0f
    nop                                           ; $6ff2: $00
    rst $38                                       ; $6ff3: $ff
    ld bc, $ff57                                  ; $6ff4: $01 $57 $ff
    adc c                                         ; $6ff7: $89
    nop                                           ; $6ff8: $00
    push de                                       ; $6ff9: $d5
    ld a, [hl+]                                   ; $6ffa: $2a
    nop                                           ; $6ffb: $00
    call z, Call_000_0004                         ; $6ffc: $cc $04 $00
    ld e, e                                       ; $6fff: $5b
    and b                                         ; $7000: $a0
    ld d, l                                       ; $7001: $55
    xor d                                         ; $7002: $aa
    nop                                           ; $7003: $00
    rst $38                                       ; $7004: $ff
    ld b, d                                       ; $7005: $42
    db $fc                                        ; $7006: $fc
    ld [$1669], sp                                ; $7007: $08 $69 $16
    ld d, b                                       ; $700a: $50
    xor a                                         ; $700b: $af
    sbc c                                         ; $700c: $99
    rrca                                          ; $700d: $0f
    inc sp                                        ; $700e: $33
    nop                                           ; $700f: $00
    xor [hl]                                      ; $7010: $ae
    and b                                         ; $7011: $a0
    jp c, Jump_000_2c07                           ; $7012: $da $07 $2c

    xor d                                         ; $7015: $aa
    nop                                           ; $7016: $00
    dec h                                         ; $7017: $25
    rst $38                                       ; $7018: $ff
    sub h                                         ; $7019: $94
    nop                                           ; $701a: $00
    push af                                       ; $701b: $f5
    ld [$0b0a], sp                                ; $701c: $08 $0a $0b
    rst $38                                       ; $701f: $ff
    add c                                         ; $7020: $81
    ld [$d507], a                                 ; $7021: $ea $07 $d5
    dec hl                                        ; $7024: $2b
    add b                                         ; $7025: $80
    jr nz, jr_094_70a7                            ; $7026: $20 $7f

    rst $10                                       ; $7028: $d7
    ld b, [hl]                                    ; $7029: $46
    ld bc, $ff01                                  ; $702a: $01 $01 $ff
    inc [hl]                                      ; $702d: $34
    rst $38                                       ; $702e: $ff
    sbc c                                         ; $702f: $99
    nop                                           ; $7030: $00
    ld b, $50                                     ; $7031: $06 $50
    xor a                                         ; $7033: $af
    ld a, [de]                                    ; $7034: $1a
    rst $38                                       ; $7035: $ff
    sub $00                                       ; $7036: $d6 $00
    ld a, d                                       ; $7038: $7a
    nop                                           ; $7039: $00
    add l                                         ; $703a: $85
    nop                                           ; $703b: $00
    rst $38                                       ; $703c: $ff
    ld h, d                                       ; $703d: $62
    rst $38                                       ; $703e: $ff
    xor c                                         ; $703f: $a9
    nop                                           ; $7040: $00
    ld c, c                                       ; $7041: $49
    nop                                           ; $7042: $00
    rlca                                          ; $7043: $07
    or b                                          ; $7044: $b0
    ld c, a                                       ; $7045: $4f
    call $d4ff                                    ; $7046: $cd $ff $d4
    dec hl                                        ; $7049: $2b
    add c                                         ; $704a: $81
    ld [bc], a                                    ; $704b: $02
    ld a, a                                       ; $704c: $7f
    nop                                           ; $704d: $00
    rst $38                                       ; $704e: $ff
    cp l                                          ; $704f: $bd
    rst $38                                       ; $7050: $ff
    ld e, d                                       ; $7051: $5a
    inc b                                         ; $7052: $04
    dec b                                         ; $7053: $05
    dec d                                         ; $7054: $15
    add h                                         ; $7055: $84
    ld b, b                                       ; $7056: $40
    nop                                           ; $7057: $00
    ld e, l                                       ; $7058: $5d
    and d                                         ; $7059: $a2
    nop                                           ; $705a: $00
    rst $38                                       ; $705b: $ff
    db $f4                                        ; $705c: $f4

jr_094_705d:
    ld [$006a], sp                                ; $705d: $08 $6a $00
    nop                                           ; $7060: $00
    ld d, c                                       ; $7061: $51
    xor a                                         ; $7062: $af

jr_094_7063:
    inc a                                         ; $7063: $3c
    rst $38                                       ; $7064: $ff
    ld l, e                                       ; $7065: $6b
    dec d                                         ; $7066: $15
    ld b, b                                       ; $7067: $40
    cp a                                          ; $7068: $bf
    ld a, [bc]                                    ; $7069: $0a
    ld bc, $6aff                                  ; $706a: $01 $ff $6a
    rst $38                                       ; $706d: $ff
    inc b                                         ; $706e: $04
    nop                                           ; $706f: $00
    dec b                                         ; $7070: $05
    dec b                                         ; $7071: $05
    nop                                           ; $7072: $00
    rst $38                                       ; $7073: $ff
    and b                                         ; $7074: $a0
    db $ec                                        ; $7075: $ec
    rra                                           ; $7076: $1f
    ld bc, $080b                                  ; $7077: $01 $0b $08
    rst $38                                       ; $707a: $ff
    ld e, $ff                                     ; $707b: $1e $ff
    db $ec                                        ; $707d: $ec
    sbc a                                         ; $707e: $9f
    jr nz, jr_094_705d                            ; $707f: $20 $dc

    cp a                                          ; $7081: $bf
    inc b                                         ; $7082: $04
    jr jr_094_7063                                ; $7083: $18 $de

    cp a                                          ; $7085: $bf
    and $9f                                       ; $7086: $e6 $9f
    or h                                          ; $7088: $b4
    ld a, [bc]                                    ; $7089: $0a
    ret nz                                        ; $708a: $c0

    dec d                                         ; $708b: $15
    ld [$6280], a                                 ; $708c: $ea $80 $62
    ld [bc], a                                    ; $708f: $02
    push de                                       ; $7090: $d5
    sbc b                                         ; $7091: $98
    nop                                           ; $7092: $00
    xor $80                                       ; $7093: $ee $80
    call $a105                                    ; $7095: $cd $05 $a1
    nop                                           ; $7098: $00
    ld a, l                                       ; $7099: $7d
    add d                                         ; $709a: $82
    nop                                           ; $709b: $00
    rst $38                                       ; $709c: $ff
    and d                                         ; $709d: $a2
    inc b                                         ; $709e: $04
    rst $38                                       ; $709f: $ff
    xor b                                         ; $70a0: $a8
    nop                                           ; $70a1: $00
    xor a                                         ; $70a2: $af
    ld d, b                                       ; $70a3: $50
    di                                            ; $70a4: $f3
    inc bc                                        ; $70a5: $03
    rst $38                                       ; $70a6: $ff

jr_094_70a7:
    xor d                                         ; $70a7: $aa
    dec bc                                        ; $70a8: $0b
    ld d, l                                       ; $70a9: $55
    ld b, b                                       ; $70aa: $40
    cp a                                          ; $70ab: $bf
    dec b                                         ; $70ac: $05
    ccf                                           ; $70ad: $3f
    inc b                                         ; $70ae: $04
    xor a                                         ; $70af: $af
    ld b, [hl]                                    ; $70b0: $46
    ld bc, $0d6c                                  ; $70b1: $01 $6c $0d
    add b                                         ; $70b4: $80
    ldh [$08], a                                  ; $70b5: $e0 $08
    ld d, h                                       ; $70b7: $54
    rst $38                                       ; $70b8: $ff
    dec [hl]                                      ; $70b9: $35
    ret nz                                        ; $70ba: $c0

    ld d, l                                       ; $70bb: $55
    xor d                                         ; $70bc: $aa
    add b                                         ; $70bd: $80
    jr nz, jr_094_713f                            ; $70be: $20 $7f

    inc hl                                        ; $70c0: $23
    db $fd                                        ; $70c1: $fd
    dec b                                         ; $70c2: $05
    inc bc                                        ; $70c3: $03
    db $fc                                        ; $70c4: $fc
    ld b, $f8                                     ; $70c5: $06 $f8
    add hl, bc                                    ; $70c7: $09
    nop                                           ; $70c8: $00
    ldh a, [rNR32]                                ; $70c9: $f0 $1c
    ldh [$31], a                                  ; $70cb: $e0 $31
    ldh [$3a], a                                  ; $70cd: $e0 $3a
    ldh [$2d], a                                  ; $70cf: $e0 $2d
    add b                                         ; $70d1: $80
    ld h, d                                       ; $70d2: $62
    ld b, $c0                                     ; $70d3: $06 $c0
    ccf                                           ; $70d5: $3f
    and b                                         ; $70d6: $a0
    rra                                           ; $70d7: $1f
    db $10                                        ; $70d8: $10
    rrca                                          ; $70d9: $0f

jr_094_70da:
    ret z                                         ; $70da: $c8

    nop                                           ; $70db: $00
    rlca                                          ; $70dc: $07
    ld a, h                                       ; $70dd: $7c
    rlca                                          ; $70de: $07
    call c, Call_094_7407                         ; $70df: $dc $07 $74
    rrca                                          ; $70e2: $0f
    add sp, $00                                   ; $70e3: $e8 $00
    rra                                           ; $70e5: $1f
    cp b                                          ; $70e6: $b8
    rra                                           ; $70e7: $1f
    rst $20                                       ; $70e8: $e7
    ccf                                           ; $70e9: $3f
    halt                                          ; $70ea: $76
    cpl                                           ; $70eb: $2f
    rst $00                                       ; $70ec: $c7
    nop                                           ; $70ed: $00
    dec l                                         ; $70ee: $2d
    ld h, d                                       ; $70ef: $62
    ld c, h                                       ; $70f0: $4c
    rst $18                                       ; $70f1: $df
    ld c, a                                       ; $70f2: $4f
    cpl                                           ; $70f3: $2f
    ld e, b                                       ; $70f4: $58
    rst $38                                       ; $70f5: $ff
    nop                                           ; $70f6: $00
    jr nc, jr_094_7116                            ; $70f7: $30 $1d

    ld hl, sp-$1a                                 ; $70f9: $f8 $e6
    db $fc                                        ; $70fb: $fc
    ld l, a                                       ; $70fc: $6f
    db $f4                                        ; $70fd: $f4
    ld [c], a                                     ; $70fe: $e2
    nop                                           ; $70ff: $00
    or h                                          ; $7100: $b4
    ld b, a                                       ; $7101: $47
    ld [hl-], a                                   ; $7102: $32
    ld a, [$f5f2]                                 ; $7103: $fa $f2 $f5
    ld a, [de]                                    ; $7106: $1a
    cp $00                                        ; $7107: $fe $00
    inc c                                         ; $7109: $0c
    db $fd                                        ; $710a: $fd
    ld [bc], a                                    ; $710b: $02
    nop                                           ; $710c: $00
    rst $38                                       ; $710d: $ff
    and [hl]                                      ; $710e: $a6
    rst $38                                       ; $710f: $ff
    and [hl]                                      ; $7110: $a6
    adc d                                         ; $7111: $8a
    xor h                                         ; $7112: $ac
    ld bc, $ff00                                  ; $7113: $01 $00 $ff

jr_094_7116:
    ld c, e                                       ; $7116: $4b
    ld c, l                                       ; $7117: $4d
    ld b, $51                                     ; $7118: $06 $51
    jr nc, jr_094_711d                            ; $711a: $30 $01

    add hl, hl                                    ; $711c: $29

jr_094_711d:
    ld a, [bc]                                    ; $711d: $0a
    rst $38                                       ; $711e: $ff
    ld l, h                                       ; $711f: $6c
    inc bc                                        ; $7120: $03
    xor c                                         ; $7121: $a9
    ld b, h                                       ; $7122: $44
    ld [bc], a                                    ; $7123: $02
    and c                                         ; $7124: $a1
    ld e, l                                       ; $7125: $5d
    ld b, $81                                     ; $7126: $06 $81
    dec bc                                        ; $7128: $0b
    rst $38                                       ; $7129: $ff
    ret nz                                        ; $712a: $c0

    cp a                                          ; $712b: $bf
    add b                                         ; $712c: $80
    inc b                                         ; $712d: $04
    jr nz, jr_094_70da                            ; $712e: $20 $aa

    ld c, [hl]                                    ; $7130: $4e
    ld [de], a                                    ; $7131: $12
    sub h                                         ; $7132: $94
    ld [$5de0], sp                                ; $7133: $08 $e0 $5d
    inc de                                        ; $7136: $13
    ld l, $04                                     ; $7137: $2e $04
    ld e, a                                       ; $7139: $5f
    ld a, [bc]                                    ; $713a: $0a
    ld bc, $83ff                                  ; $713b: $01 $ff $83
    ld a, a                                       ; $713e: $7f

jr_094_713f:
    ld bc, $ff21                                  ; $713f: $01 $21 $ff
    inc bc                                        ; $7142: $03
    xor $00                                       ; $7143: $ee $00
    inc bc                                        ; $7145: $03
    rst $38                                       ; $7146: $ff
    pop bc                                        ; $7147: $c1
    cp a                                          ; $7148: $bf
    and h                                         ; $7149: $a4
    ld a, [bc]                                    ; $714a: $0a
    and c                                         ; $714b: $a1
    jr nc, jr_094_7176                            ; $714c: $30 $28

    add b                                         ; $714e: $80
    stop                                          ; $714f: $10 $00
    add e                                         ; $7151: $83
    rst $38                                       ; $7152: $ff
    ld b, c                                       ; $7153: $41
    cp a                                          ; $7154: $bf
    jr nz, jr_094_717f                            ; $7155: $20 $28

    ldh [$7c], a                                  ; $7157: $e0 $7c
    ld a, [bc]                                    ; $7159: $0a

jr_094_715a:
    ld a, [hl-]                                   ; $715a: $3a
    jr jr_094_7193                                ; $715b: $18 $36

    ld c, $01                                     ; $715d: $0e $01
    cp $04                                        ; $715f: $fe $04
    ei                                            ; $7161: $fb
    ld de, $ee00                                  ; $7162: $11 $00 $ee
    ld bc, $09fe                                  ; $7165: $01 $fe $09
    or $54                                        ; $7168: $f6 $54
    xor e                                         ; $716a: $ab
    ld hl, $de00                                  ; $716b: $21 $00 $de
    sub e                                         ; $716e: $93
    ld l, h                                       ; $716f: $6c
    ld d, [hl]                                    ; $7170: $56
    xor b                                         ; $7171: $a8
    sbc a                                         ; $7172: $9f
    ld h, b                                       ; $7173: $60
    ld l, [hl]                                    ; $7174: $6e
    nop                                           ; $7175: $00

jr_094_7176:
    sub b                                         ; $7176: $90
    ld d, c                                       ; $7177: $51
    xor [hl]                                      ; $7178: $ae
    xor a                                         ; $7179: $af
    ld d, b                                       ; $717a: $50
    rst $18                                       ; $717b: $df
    jr nz, jr_094_715a                            ; $717c: $20 $dc

    ld [bc], a                                    ; $717e: $02

jr_094_717f:
    nop                                           ; $717f: $00
    ld a, [$d500]                                 ; $7180: $fa $00 $d5
    nop                                           ; $7183: $00
    ld a, [hl+]                                   ; $7184: $2a
    adc d                                         ; $7185: $8a
    inc bc                                        ; $7186: $03
    add hl, de                                    ; $7187: $19
    nop                                           ; $7188: $00
    and $fe                                       ; $7189: $e6 $fe
    ld bc, $00f6                                  ; $718b: $01 $f6 $00
    xor e                                         ; $718e: $ab
    nop                                           ; $718f: $00
    ld b, c                                       ; $7190: $41
    add b                                         ; $7191: $80
    nop                                           ; $7192: $00

jr_094_7193:
    rlca                                          ; $7193: $07
    ld [$0500], sp                                ; $7194: $08 $00 $05
    nop                                           ; $7197: $00
    ld b, b                                       ; $7198: $40
    cp a                                          ; $7199: $bf
    xor c                                         ; $719a: $a9
    xor c                                         ; $719b: $a9
    rst $10                                       ; $719c: $d7
    ld bc, $76db                                  ; $719d: $01 $db $76
    inc b                                         ; $71a0: $04
    ld c, d                                       ; $71a1: $4a
    ret nz                                        ; $71a2: $c0

    inc bc                                        ; $71a3: $03
    inc b                                         ; $71a4: $04
    nop                                           ; $71a5: $00
    ld c, b                                       ; $71a6: $48
    nop                                           ; $71a7: $00
    nop                                           ; $71a8: $00
    rst $38                                       ; $71a9: $ff
    and b                                         ; $71aa: $a0
    ld e, a                                       ; $71ab: $5f
    pop de                                        ; $71ac: $d1
    cpl                                           ; $71ad: $2f
    xor b                                         ; $71ae: $a8
    ld d, a                                       ; $71af: $57
    push af                                       ; $71b0: $f5
    nop                                           ; $71b1: $00
    dec bc                                        ; $71b2: $0b
    ret nc                                        ; $71b3: $d0

    cpl                                           ; $71b4: $2f
    ld l, c                                       ; $71b5: $69
    rla                                           ; $71b6: $17
    ld a, [hl+]                                   ; $71b7: $2a
    push de                                       ; $71b8: $d5
    stop                                          ; $71b9: $10 $00
    rst $28                                       ; $71bb: $ef
    inc hl                                        ; $71bc: $23
    call c, $f807                                 ; $71bd: $dc $07 $f8
    rla                                           ; $71c0: $17
    add sp, $4e                                   ; $71c1: $e8 $4e
    nop                                           ; $71c3: $00
    or b                                          ; $71c4: $b0
    dec d                                         ; $71c5: $15
    add sp, -$51                                  ; $71c6: $e8 $af
    ld d, b                                       ; $71c8: $50
    cp l                                          ; $71c9: $bd
    ld b, b                                       ; $71ca: $40
    ld a, [c]                                     ; $71cb: $f2
    ld l, $00                                     ; $71cc: $2e $00
    ldh [$f4], a                                  ; $71ce: $e0 $f4
    inc bc                                        ; $71d0: $03
    sub b                                         ; $71d1: $90
    ld hl, sp+$03                                 ; $71d2: $f8 $03
    cp $0b                                        ; $71d4: $fe $0b
    ld [$100b], a                                 ; $71d6: $ea $0b $10
    and b                                         ; $71d9: $a0
    ld l, b                                       ; $71da: $68
    rlca                                          ; $71db: $07
    inc e                                         ; $71dc: $1c
    ld e, [hl]                                    ; $71dd: $5e
    nop                                           ; $71de: $00
    stop                                          ; $71df: $10 $00
    ld c, b                                       ; $71e1: $48
    nop                                           ; $71e2: $00
    dec bc                                        ; $71e3: $0b
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    ld b, $00                                     ; $71e6: $06 $00
    cpl                                           ; $71e8: $2f
    nop                                           ; $71e9: $00
    add a                                         ; $71ea: $87
    nop                                           ; $71eb: $00
    inc d                                         ; $71ec: $14
    dec [hl]                                      ; $71ed: $35
    nop                                           ; $71ee: $00
    ld [bc], a                                    ; $71ef: $02
    ld h, a                                       ; $71f0: $67
    inc d                                         ; $71f1: $14
    ld [hl+], a                                   ; $71f2: $22
    inc c                                         ; $71f3: $0c
    add b                                         ; $71f4: $80
    ld c, $04                                     ; $71f5: $0e $04
    add [hl]                                      ; $71f7: $86
    ld a, [de]                                    ; $71f8: $1a
    nop                                           ; $71f9: $00
    nop                                           ; $71fa: $00
    rla                                           ; $71fb: $17
    nop                                           ; $71fc: $00
    ld c, $01                                     ; $71fd: $0e $01
    jr nc, jr_094_7210                            ; $71ff: $30 $0f

    reti                                          ; $7201: $d9


    rlca                                          ; $7202: $07
    nop                                           ; $7203: $00
    ld l, h                                       ; $7204: $6c
    inc bc                                        ; $7205: $03
    ld e, c                                       ; $7206: $59
    rlca                                          ; $7207: $07
    cp d                                          ; $7208: $ba
    dec b                                         ; $7209: $05
    push de                                       ; $720a: $d5
    dec bc                                        ; $720b: $0b
    inc c                                         ; $720c: $0c
    ld e, b                                       ; $720d: $58
    and a                                         ; $720e: $a7
    adc l                                         ; $720f: $8d

jr_094_7210:
    ld [hl], e                                    ; $7210: $73
    jr nz, jr_094_721f                            ; $7211: $20 $0c

    ld c, [hl]                                    ; $7213: $4e
    rrca                                          ; $7214: $0f
    ld d, b                                       ; $7215: $50
    nop                                           ; $7216: $00
    dec b                                         ; $7217: $05
    or l                                          ; $7218: $b5
    ld b, b                                       ; $7219: $40
    ld d, a                                       ; $721a: $57
    xor b                                         ; $721b: $a8
    ld d, l                                       ; $721c: $55
    ld [hl], b                                    ; $721d: $70
    inc d                                         ; $721e: $14

jr_094_721f:
    ld hl, $0046                                  ; $721f: $21 $46 $00
    nop                                           ; $7222: $00
    cp a                                          ; $7223: $bf
    nop                                           ; $7224: $00
    ld a, d                                       ; $7225: $7a
    dec b                                         ; $7226: $05
    and l                                         ; $7227: $a5
    ld e, d                                       ; $7228: $5a
    ld d, l                                       ; $7229: $55
    rst $38                                       ; $722a: $ff
    ld b, b                                       ; $722b: $40
    rra                                           ; $722c: $1f
    db $e4                                        ; $722d: $e4
    ld b, $7e                                     ; $722e: $06 $7e
    ld bc, $16e9                                  ; $7230: $01 $e9 $16
    call nz, $803b                                ; $7233: $c4 $3b $80
    ld a, [hl]                                    ; $7236: $7e
    dec bc                                        ; $7237: $0b
    ld d, l                                       ; $7238: $55
    rst $38                                       ; $7239: $ff
    db $10                                        ; $723a: $10
    rst $28                                       ; $723b: $ef
    ld b, c                                       ; $723c: $41
    cp a                                          ; $723d: $bf
    adc b                                         ; $723e: $88
    rra                                           ; $723f: $1f
    ld [hl], a                                    ; $7240: $77
    ld hl, $12df                                  ; $7241: $21 $df $12
    ld a, [bc]                                    ; $7244: $0a
    db $10                                        ; $7245: $10
    ld [$0f20], sp                                ; $7246: $08 $20 $0f
    ld bc, $0614                                  ; $7249: $01 $14 $06
    inc c                                         ; $724c: $0c
    rra                                           ; $724d: $1f
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    ld b, b                                       ; $7250: $40
    ld [bc], a                                    ; $7251: $02
    nop                                           ; $7252: $00
    inc c                                         ; $7253: $0c
    jr nz, jr_094_7268                            ; $7254: $20 $12

    jr nz, jr_094_72ba                            ; $7256: $20 $62

    ld sp, $196e                                  ; $7258: $31 $6e $19
    call nc, Call_000_07dc                        ; $725b: $d4 $dc $07
    ld b, a                                       ; $725e: $47
    ld [$e4aa], sp                                ; $725f: $08 $aa $e4
    rlca                                          ; $7262: $07
    rst $38                                       ; $7263: $ff
    ld [hl], c                                    ; $7264: $71
    add hl, bc                                    ; $7265: $09
    add b                                         ; $7266: $80
    rst $38                                       ; $7267: $ff

jr_094_7268:
    nop                                           ; $7268: $00
    push hl                                       ; $7269: $e5
    jp nz, $ffab                                  ; $726a: $c2 $ab $ff

    call $80f2                                    ; $726d: $cd $f2 $80
    rst $38                                       ; $7270: $ff
    nop                                           ; $7271: $00
    pop af                                        ; $7272: $f1
    adc $86                                       ; $7273: $ce $86
    rst $38                                       ; $7275: $ff
    pop hl                                        ; $7276: $e1
    sbc $00                                       ; $7277: $de $00
    rst $38                                       ; $7279: $ff
    nop                                           ; $727a: $00
    ld e, d                                       ; $727b: $5a
    and c                                         ; $727c: $a1
    push de                                       ; $727d: $d5
    rst $38                                       ; $727e: $ff
    and [hl]                                      ; $727f: $a6
    ld b, c                                       ; $7280: $41
    nop                                           ; $7281: $00
    rst $38                                       ; $7282: $ff
    inc b                                         ; $7283: $04
    or d                                          ; $7284: $b2
    ld b, b                                       ; $7285: $40
    ccf                                           ; $7286: $3f
    rst $38                                       ; $7287: $ff
    add hl, de                                    ; $7288: $19
    sub b                                         ; $7289: $90
    rlca                                          ; $728a: $07
    xor l                                         ; $728b: $ad
    ld [de], a                                    ; $728c: $12
    nop                                           ; $728d: $00
    ret z                                         ; $728e: $c8

    rst $38                                       ; $728f: $ff
    db $eb                                        ; $7290: $eb
    stop                                          ; $7291: $10 $00
    rst $38                                       ; $7293: $ff
    or l                                          ; $7294: $b5
    ld [$0c00], sp                                ; $7295: $08 $00 $0c
    rst $38                                       ; $7298: $ff
    ld c, h                                       ; $7299: $4c
    or b                                          ; $729a: $b0
    ld bc, $47ff                                  ; $729b: $01 $ff $47
    dec sp                                        ; $729e: $3b

jr_094_729f:
    db $10                                        ; $729f: $10
    call Call_094_43ff                            ; $72a0: $cd $ff $43
    sub b                                         ; $72a3: $90
    ld [bc], a                                    ; $72a4: $02
    ld d, a                                       ; $72a5: $57
    adc e                                         ; $72a6: $8b
    ld [hl], c                                    ; $72a7: $71
    rst $38                                       ; $72a8: $ff
    nop                                           ; $72a9: $00
    rst $10                                       ; $72aa: $d7
    inc hl                                        ; $72ab: $23
    ld d, c                                       ; $72ac: $51
    xor [hl]                                      ; $72ad: $ae
    cpl                                           ; $72ae: $2f
    ret nc                                        ; $72af: $d0

    ld e, a                                       ; $72b0: $5f
    and b                                         ; $72b1: $a0
    nop                                           ; $72b2: $00
    ld e, l                                       ; $72b3: $5d
    add b                                         ; $72b4: $80
    ei                                            ; $72b5: $fb
    nop                                           ; $72b6: $00
    ld d, l                                       ; $72b7: $55
    add b                                         ; $72b8: $80
    xor e                                         ; $72b9: $ab

jr_094_72ba:
    nop                                           ; $72ba: $00
    ld bc, $8001                                  ; $72bb: $01 $01 $80
    add b                                         ; $72be: $80
    rst $38                                       ; $72bf: $ff
    push af                                       ; $72c0: $f5
    jp nz, Jump_094_5094                          ; $72c1: $c2 $94 $50

    db $10                                        ; $72c4: $10
    db $10                                        ; $72c5: $10
    push af                                       ; $72c6: $f5
    jp z, $50be                                   ; $72c7: $ca $be $50

    db $10                                        ; $72ca: $10
    ld d, [hl]                                    ; $72cb: $56
    and c                                         ; $72cc: $a1
    rst $18                                       ; $72cd: $df
    rst $38                                       ; $72ce: $ff
    ld b, c                                       ; $72cf: $41
    ld c, [hl]                                    ; $72d0: $4e
    ld c, l                                       ; $72d1: $4d
    inc b                                         ; $72d2: $04
    cp d                                          ; $72d3: $ba
    ld b, c                                       ; $72d4: $41
    sub e                                         ; $72d5: $93
    rst $38                                       ; $72d6: $ff
    ld d, e                                       ; $72d7: $53
    ldh [rTAC], a                                 ; $72d8: $e0 $07
    inc b                                         ; $72da: $04
    adc l                                         ; $72db: $8d
    ld [bc], a                                    ; $72dc: $02
    jr z, @+$01                                   ; $72dd: $28 $ff

    db $ed                                        ; $72df: $ed
    ld d, b                                       ; $72e0: $50
    nop                                           ; $72e1: $00
    sub l                                         ; $72e2: $95
    ld [$4d08], sp                                ; $72e3: $08 $08 $4d
    rst $38                                       ; $72e6: $ff
    ld c, l                                       ; $72e7: $4d
    or d                                          ; $72e8: $b2
    ld d, c                                       ; $72e9: $51
    inc c                                         ; $72ea: $0c
    push de                                       ; $72eb: $d5
    rst $38                                       ; $72ec: $ff
    add sp, $03                                   ; $72ed: $e8 $03
    ld hl, sp-$40                                 ; $72ef: $f8 $c0
    ldh a, [$e0]                                  ; $72f1: $f0 $e0
    ldh [$f0], a                                  ; $72f3: $e0 $f0
    ld [bc], a                                    ; $72f5: $02
    nop                                           ; $72f6: $00

jr_094_72f7:
    and e                                         ; $72f7: $a3
    jr jr_094_72fb                                ; $72f8: $18 $01

    ld a, [hl+]                                   ; $72fa: $2a

jr_094_72fb:
    ccf                                           ; $72fb: $3f
    nop                                           ; $72fc: $00
    rra                                           ; $72fd: $1f
    ld a, [bc]                                    ; $72fe: $0a
    rrca                                          ; $72ff: $0f

jr_094_7300:
    nop                                           ; $7300: $00
    ld [bc], a                                    ; $7301: $02
    nop                                           ; $7302: $00
    ldh [$b3], a                                  ; $7303: $e0 $b3
    jr jr_094_729f                                ; $7305: $18 $98

    dec b                                         ; $7307: $05
    inc b                                         ; $7308: $04
    stop                                          ; $7309: $10 $00
    rst $38                                       ; $730b: $ff
    ld hl, sp-$10                                 ; $730c: $f8 $f0
    rst $38                                       ; $730e: $ff
    ld bc, $dee8                                  ; $730f: $01 $e8 $de
    rst $30                                       ; $7312: $f7
    call c, $cef0                                 ; $7313: $dc $f0 $ce
    ld hl, sp-$24                                 ; $7316: $f8 $dc
    jr nz, jr_094_731a                            ; $7318: $20 $00

jr_094_731a:
    rra                                           ; $731a: $1f
    ret nc                                        ; $731b: $d0

    cpl                                           ; $731c: $2f
    nop                                           ; $731d: $00
    rst $18                                       ; $731e: $df
    jr nz, jr_094_7340                            ; $731f: $20 $1f

    nop                                           ; $7321: $00
    ld [hl], b                                    ; $7322: $70
    ccf                                           ; $7323: $3f
    db $ec                                        ; $7324: $ec
    jr z, jr_094_7339                             ; $7325: $28 $12

    ld a, [hl+]                                   ; $7327: $2a
    db $fd                                        ; $7328: $fd
    jr jr_094_7300                                ; $7329: $18 $d5

    rst $38                                       ; $732b: $ff

jr_094_732c:
    ld [$71ff], a                                 ; $732c: $ea $ff $71
    ret nz                                        ; $732f: $c0

    inc b                                         ; $7330: $04
    db $10                                        ; $7331: $10
    ld [bc], a                                    ; $7332: $02
    jr @+$4e                                      ; $7333: $18 $4c

    jr jr_094_72f7                                ; $7335: $18 $c0

    ret nz                                        ; $7337: $c0

    ld b, b                                       ; $7338: $40

jr_094_7339:
    ld [bc], a                                    ; $7339: $02
    nop                                           ; $733a: $00
    ld b, b                                       ; $733b: $40
    ld a, a                                       ; $733c: $7f
    ld [bc], a                                    ; $733d: $02
    nop                                           ; $733e: $00
    ld d, l                                       ; $733f: $55

jr_094_7340:
    rst $38                                       ; $7340: $ff
    xor h                                         ; $7341: $ac
    db $fc                                        ; $7342: $fc
    ld [$00f8], sp                                ; $7343: $08 $f8 $00
    jr c, jr_094_7378                             ; $7346: $38 $30

    jr jr_094_737a                                ; $7348: $18 $30

    inc e                                         ; $734a: $1c
    jr c, jr_094_732c                             ; $734b: $38 $df

    inc [hl]                                      ; $734d: $34
    ld bc, $3bcf                                  ; $734e: $01 $cf $3b
    ld bc, $c7ff                                  ; $7351: $01 $ff $c7
    dec sp                                        ; $7354: $3b
    sub c                                         ; $7355: $91
    ldh [rNR41], a                                ; $7356: $e0 $20

jr_094_7358:
    inc b                                         ; $7358: $04
    jp hl                                         ; $7359: $e9


    rst $38                                       ; $735a: $ff
    ld e, a                                       ; $735b: $5f
    inc hl                                        ; $735c: $23
    add e                                         ; $735d: $83
    db $e4                                        ; $735e: $e4
    dec b                                         ; $735f: $05
    sub c                                         ; $7360: $91
    nop                                           ; $7361: $00
    ld de, $008b                                  ; $7362: $11 $8b $00

jr_094_7365:
    sbc l                                         ; $7365: $9d
    inc [hl]                                      ; $7366: $34
    ld [bc], a                                    ; $7367: $02
    sub c                                         ; $7368: $91
    nop                                           ; $7369: $00
    ld c, c                                       ; $736a: $49
    inc [hl]                                      ; $736b: $34
    dec b                                         ; $736c: $05
    ld e, b                                       ; $736d: $58
    rst $38                                       ; $736e: $ff
    nop                                           ; $736f: $00
    inc b                                         ; $7370: $04
    xor e                                         ; $7371: $ab
    and b                                         ; $7372: $a0
    ld [bc], a                                    ; $7373: $02
    inc b                                         ; $7374: $04
    ld [$ff03], sp                                ; $7375: $08 $03 $ff

jr_094_7378:
    add c                                         ; $7378: $81
    nop                                           ; $7379: $00

jr_094_737a:
    nop                                           ; $737a: $00
    ld hl, $4380                                  ; $737b: $21 $80 $43
    add b                                         ; $737e: $80
    ld hl, $5380                                  ; $737f: $21 $80 $53
    ld e, $80                                     ; $7382: $1e $80
    dec [hl]                                      ; $7384: $35
    ret nz                                        ; $7385: $c0

    ret nz                                        ; $7386: $c0

    add hl, bc                                    ; $7387: $09
    inc d                                         ; $7388: $14
    ld [$1804], sp                                ; $7389: $08 $04 $18
    ld a, l                                       ; $738c: $7d
    add hl, de                                    ; $738d: $19
    ld d, a                                       ; $738e: $57
    nop                                           ; $738f: $00
    rst $38                                       ; $7390: $ff
    dec hl                                        ; $7391: $2b
    ccf                                           ; $7392: $3f
    inc bc                                        ; $7393: $03
    rra                                           ; $7394: $1f
    dec bc                                        ; $7395: $0b
    rrca                                          ; $7396: $0f
    inc bc                                        ; $7397: $03
    ld bc, $030f                                  ; $7398: $01 $0f $03
    rra                                           ; $739b: $1f
    db $d3                                        ; $739c: $d3
    cpl                                           ; $739d: $2f
    inc bc                                        ; $739e: $03
    rst $18                                       ; $739f: $df
    adc b                                         ; $73a0: $88
    ld [$9ab0], sp                                ; $73a1: $08 $b0 $9a
    ld c, b                                       ; $73a4: $48
    ld a, a                                       ; $73a5: $7f
    and [hl]                                      ; $73a6: $a6
    ld sp, $18e6                                  ; $73a7: $31 $e6 $18
    call z, $06f8                                 ; $73aa: $cc $f8 $06
    db $fc                                        ; $73ad: $fc
    ldh a, [rNR10]                                ; $73ae: $f0 $10
    ld c, b                                       ; $73b0: $48
    cp d                                          ; $73b1: $ba
    jr c, jr_094_73ec                             ; $73b2: $38 $38

    jr jr_094_7358                                ; $73b4: $18 $a2

    ld b, $fc                                     ; $73b6: $06 $fc
    ld [bc], a                                    ; $73b8: $02
    ld sp, hl                                     ; $73b9: $f9
    nop                                           ; $73ba: $00
    ld b, b                                       ; $73bb: $40
    jp nz, $29de                                  ; $73bc: $c2 $de $29

    ld a, [bc]                                    ; $73bf: $0a
    rlca                                          ; $73c0: $07
    add b                                         ; $73c1: $80
    ld c, a                                       ; $73c2: $4f
    db $10                                        ; $73c3: $10
    rrca                                          ; $73c4: $0f
    inc hl                                        ; $73c5: $23
    ld b, b                                       ; $73c6: $40
    ccf                                           ; $73c7: $3f
    xor $29                                       ; $73c8: $ee $29
    inc hl                                        ; $73ca: $23
    rra                                           ; $73cb: $1f
    inc bc                                        ; $73cc: $03
    ld a, [bc]                                    ; $73cd: $0a
    ld hl, $48a6                                  ; $73ce: $21 $a6 $48
    add b                                         ; $73d1: $80
    sub d                                         ; $73d2: $92
    jr c, jr_094_7365                             ; $73d3: $38 $90

    rlca                                          ; $73d5: $07
    ld a, [c]                                     ; $73d6: $f2
    inc b                                         ; $73d7: $04
    ld b, e                                       ; $73d8: $43
    rst $38                                       ; $73d9: $ff
    ld bc, $8360                                  ; $73da: $01 $60 $83
    rst $38                                       ; $73dd: $ff
    pop bc                                        ; $73de: $c1
    cp a                                          ; $73df: $bf
    inc b                                         ; $73e0: $04
    ld c, b                                       ; $73e1: $48
    jr nz, @+$1a                                  ; $73e2: $20 $18

    ld b, c                                       ; $73e4: $41
    db $fd                                        ; $73e5: $fd
    daa                                           ; $73e6: $27
    nop                                           ; $73e7: $00
    rst $18                                       ; $73e8: $df
    rst $38                                       ; $73e9: $ff
    push af                                       ; $73ea: $f5
    rst $38                                       ; $73eb: $ff

jr_094_73ec:
    ld [$200e], a                                 ; $73ec: $ea $0e $20
    nop                                           ; $73ef: $00
    ei                                            ; $73f0: $fb
    rst $38                                       ; $73f1: $ff
    db $dd                                        ; $73f2: $dd
    rst $38                                       ; $73f3: $ff
    cp d                                          ; $73f4: $ba
    rst $38                                       ; $73f5: $ff
    push de                                       ; $73f6: $d5
    rst $38                                       ; $73f7: $ff

jr_094_73f8:
    ld d, b                                       ; $73f8: $50
    and d                                         ; $73f9: $a2
    ccf                                           ; $73fa: $3f
    jr nz, jr_094_73f8                            ; $73fb: $20 $fb

    ld e, $00                                     ; $73fd: $1e $00
    ei                                            ; $73ff: $fb
    rst $38                                       ; $7400: $ff
    ld e, a                                       ; $7401: $5f
    rst $38                                       ; $7402: $ff
    nop                                           ; $7403: $00
    xor e                                         ; $7404: $ab
    rst $38                                       ; $7405: $ff
    ld d, b                                       ; $7406: $50

Call_094_7407:
    rst $38                                       ; $7407: $ff
    inc h                                         ; $7408: $24
    rst $38                                       ; $7409: $ff
    nop                                           ; $740a: $00
    rst $38                                       ; $740b: $ff
    nop                                           ; $740c: $00
    ld b, b                                       ; $740d: $40
    rst $38                                       ; $740e: $ff
    ld [bc], a                                    ; $740f: $02
    db $fd                                        ; $7410: $fd
    nop                                           ; $7411: $00
    rst $38                                       ; $7412: $ff
    inc b                                         ; $7413: $04
    ei                                            ; $7414: $fb
    ld bc, $be41                                  ; $7415: $01 $41 $be
    add hl, bc                                    ; $7418: $09
    rst $38                                       ; $7419: $ff
    add b                                         ; $741a: $80
    rst $38                                       ; $741b: $ff
    ld [bc], a                                    ; $741c: $02
    ld [de], a                                    ; $741d: $12
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    nop                                           ; $7420: $00
    rst $38                                       ; $7421: $ff
    ld b, h                                       ; $7422: $44
    cp e                                          ; $7423: $bb
    ld [hl+], a                                   ; $7424: $22
    db $dd                                        ; $7425: $dd
    ld b, h                                       ; $7426: $44
    cp e                                          ; $7427: $bb
    nop                                           ; $7428: $00
    ld d, l                                       ; $7429: $55
    rst $38                                       ; $742a: $ff
    dec bc                                        ; $742b: $0b
    rst $38                                       ; $742c: $ff
    ld hl, $03ff                                  ; $742d: $21 $ff $03
    rst $38                                       ; $7430: $ff
    nop                                           ; $7431: $00
    add c                                         ; $7432: $81
    ld a, a                                       ; $7433: $7f
    ld [de], a                                    ; $7434: $12
    rst $28                                       ; $7435: $ef
    ld hl, $48df                                  ; $7436: $21 $df $48
    or a                                          ; $7439: $b7
    nop                                           ; $743a: $00
    ld a, [bc]                                    ; $743b: $0a
    push af                                       ; $743c: $f5
    dec d                                         ; $743d: $15
    ld [$50af], a                                 ; $743e: $ea $af $50
    rst $10                                       ; $7441: $d7
    jr z, jr_094_7464                             ; $7442: $28 $20

    cp [hl]                                       ; $7444: $be
    ld b, c                                       ; $7445: $41
    dec h                                         ; $7446: $25
    ld [$00fe], sp                                ; $7447: $08 $fe $00
    xor d                                         ; $744a: $aa
    ld d, l                                       ; $744b: $55
    push af                                       ; $744c: $f5
    ld bc, $6f0a                                  ; $744d: $01 $0a $6f
    sub b                                         ; $7450: $90
    ei                                            ; $7451: $fb
    inc b                                         ; $7452: $04
    db $dd                                        ; $7453: $dd
    ld [hl+], a                                   ; $7454: $22
    dec [hl]                                      ; $7455: $35
    stop                                          ; $7456: $10 $00
    nop                                           ; $7458: $00
    add c                                         ; $7459: $81
    ld a, a                                       ; $745a: $7f
    call nz, $ab3b                                ; $745b: $c4 $3b $ab
    ld d, l                                       ; $745e: $55
    ld [hl], h                                    ; $745f: $74
    inc b                                         ; $7460: $04
    adc e                                         ; $7461: $8b
    cp $01                                        ; $7462: $fe $01

jr_094_7464:
    sbc $21                                       ; $7464: $de $21
    inc b                                         ; $7466: $04
    nop                                           ; $7467: $00
    ld bc, $80fb                                  ; $7468: $01 $fb $80
    ld c, e                                       ; $746b: $4b
    nop                                           ; $746c: $00
    or l                                          ; $746d: $b5
    nop                                           ; $746e: $00
    ld [$5400], a                                 ; $746f: $ea $00 $54
    nop                                           ; $7472: $00
    ld hl, $0000                                  ; $7473: $21 $00 $00
    ld [$0000], sp                                ; $7476: $08 $00 $00
    nop                                           ; $7479: $00
    rst $18                                       ; $747a: $df
    nop                                           ; $747b: $00
    xor [hl]                                      ; $747c: $ae
    nop                                           ; $747d: $00
    nop                                           ; $747e: $00
    ld a, l                                       ; $747f: $7d
    nop                                           ; $7480: $00
    xor d                                         ; $7481: $aa
    nop                                           ; $7482: $00
    dec d                                         ; $7483: $15
    nop                                           ; $7484: $00
    ld a, [bc]                                    ; $7485: $0a
    add b                                         ; $7486: $80
    ld c, $00                                     ; $7487: $0e $00
    nop                                           ; $7489: $00
    nop                                           ; $748a: $00
    cp a                                          ; $748b: $bf
    nop                                           ; $748c: $00
    ld [$d701], a                                 ; $748d: $ea $01 $d7
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    and d                                         ; $7492: $a2
    ld bc, $0013                                  ; $7493: $01 $13 $00
    inc bc                                        ; $7496: $03
    nop                                           ; $7497: $00
    ld b, c                                       ; $7498: $41
    ld bc, $0100                                  ; $7499: $01 $00 $01
    nop                                           ; $749c: $00
    call $a6f0                                    ; $749d: $cd $f0 $a6
    ret nc                                        ; $74a0: $d0

    inc b                                         ; $74a1: $04
    ld c, b                                       ; $74a2: $48
    dec c                                         ; $74a3: $0d
    dec bc                                        ; $74a4: $0b
    rlca                                          ; $74a5: $07
    dec b                                         ; $74a6: $05
    inc bc                                        ; $74a7: $03
    inc b                                         ; $74a8: $04
    ld c, b                                       ; $74a9: $48
    nop                                           ; $74aa: $00
    add hl, bc                                    ; $74ab: $09
    rst $30                                       ; $74ac: $f7
    ld [c], a                                     ; $74ad: $e2
    db $10                                        ; $74ae: $10
    ld c, b                                       ; $74af: $48
    db $eb                                        ; $74b0: $eb
    ldh [rP1], a                                  ; $74b1: $e0 $00
    add sp, -$01                                  ; $74b3: $e8 $ff
    jr nc, jr_094_74ff                            ; $74b5: $30 $48

    db $ed                                        ; $74b7: $ed
    ldh a, [$a1]                                  ; $74b8: $f0 $a1
    ld b, b                                       ; $74ba: $40
    sbc $30                                       ; $74bb: $de $30
    ld c, b                                       ; $74bd: $48
    rrca                                          ; $74be: $0f
    rlca                                          ; $74bf: $07
    push af                                       ; $74c0: $f5
    dec bc                                        ; $74c1: $0b
    jp nc, $04ff                                  ; $74c2: $d2 $ff $04

    ldh [rIE], a                                  ; $74c5: $e0 $ff
    ret nc                                        ; $74c7: $d0

    rst $38                                       ; $74c8: $ff
    ret nz                                        ; $74c9: $c0

    sub $00                                       ; $74ca: $d6 $00
    ld b, b                                       ; $74cc: $40
    rst $38                                       ; $74cd: $ff
    nop                                           ; $74ce: $00
    adc c                                         ; $74cf: $89
    or $14                                        ; $74d0: $f6 $14
    db $eb                                        ; $74d2: $eb
    xor b                                         ; $74d3: $a8
    rst $10                                       ; $74d4: $d7
    inc d                                         ; $74d5: $14
    db $eb                                        ; $74d6: $eb
    nop                                           ; $74d7: $00
    xor d                                         ; $74d8: $aa
    push de                                       ; $74d9: $d5
    dec c                                         ; $74da: $0d
    ld a, [c]                                     ; $74db: $f2
    cpl                                           ; $74dc: $2f
    ret nc                                        ; $74dd: $d0

    ld e, a                                       ; $74de: $5f
    and b                                         ; $74df: $a0
    nop                                           ; $74e0: $00
    ccf                                           ; $74e1: $3f
    ret nz                                        ; $74e2: $c0

    ld [hl], a                                    ; $74e3: $77
    add b                                         ; $74e4: $80
    dec a                                         ; $74e5: $3d
    ret nz                                        ; $74e6: $c0

    ld a, a                                       ; $74e7: $7f
    add b                                         ; $74e8: $80
    nop                                           ; $74e9: $00
    db $eb                                        ; $74ea: $eb
    nop                                           ; $74eb: $00
    ld d, h                                       ; $74ec: $54
    add b                                         ; $74ed: $80
    ret                                           ; $74ee: $c9


    nop                                           ; $74ef: $00
    ld h, b                                       ; $74f0: $60
    add b                                         ; $74f1: $80
    ld [$00c0], sp                                ; $74f2: $08 $c0 $00
    ret nz                                        ; $74f5: $c0

    nop                                           ; $74f6: $00
    or b                                          ; $74f7: $b0
    ld [$01b4], sp                                ; $74f8: $08 $b4 $01
    jp hl                                         ; $74fb: $e9


    nop                                           ; $74fc: $00
    inc bc                                        ; $74fd: $03
    ld d, [hl]                                    ; $74fe: $56

jr_094_74ff:
    rrca                                          ; $74ff: $0f
    add hl, hl                                    ; $7500: $29
    inc e                                         ; $7501: $1c
    ld [$1c10], sp                                ; $7502: $08 $10 $1c
    ld b, b                                       ; $7505: $40
    ld [$08e0], sp                                ; $7506: $08 $e0 $08
    cpl                                           ; $7509: $2f
    ret nc                                        ; $750a: $d0

    cp e                                          ; $750b: $bb
    ld b, h                                       ; $750c: $44
    db $dd                                        ; $750d: $dd
    ld h, d                                       ; $750e: $62

jr_094_750f:
    nop                                           ; $750f: $00
    rst $38                                       ; $7510: $ff
    ld b, b                                       ; $7511: $40
    rst $18                                       ; $7512: $df
    ld h, b                                       ; $7513: $60
    rst $18                                       ; $7514: $df
    ld h, b                                       ; $7515: $60
    ld e, a                                       ; $7516: $5f
    ret nz                                        ; $7517: $c0

    ld [bc], a                                    ; $7518: $02
    xor [hl]                                      ; $7519: $ae
    ret nz                                        ; $751a: $c0

    db $fd                                        ; $751b: $fd
    add b                                         ; $751c: $80
    ld a, [hl+]                                   ; $751d: $2a
    add b                                         ; $751e: $80
    ret nz                                        ; $751f: $c0

    jr z, jr_094_7522                             ; $7520: $28 $00

jr_094_7522:
    xor b                                         ; $7522: $a8
    call z, $5500                                 ; $7523: $cc $00 $55
    ld b, $01                                     ; $7526: $06 $01
    rst $38                                       ; $7528: $ff
    inc [hl]                                      ; $7529: $34
    add hl, bc                                    ; $752a: $09
    nop                                           ; $752b: $00
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    ld de, $fc03                                  ; $752e: $11 $03 $fc
    ld b, $2e                                     ; $7531: $06 $2e
    ld bc, $ff0c                                  ; $7533: $01 $0c $ff
    ld a, a                                       ; $7536: $7f
    ld [bc], a                                    ; $7537: $02
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    cp a                                          ; $753a: $bf
    rst $38                                       ; $753b: $ff
    cp [hl]                                       ; $753c: $be
    rst $38                                       ; $753d: $ff
    cp $01                                        ; $753e: $fe $01
    cp h                                          ; $7540: $bc
    ld b, d                                       ; $7541: $42
    nop                                           ; $7542: $00
    adc d                                         ; $7543: $8a
    db $f4                                        ; $7544: $f4
    ld bc, $42fe                                  ; $7545: $01 $fe $42
    add c                                         ; $7548: $81
    ld b, b                                       ; $7549: $40
    add c                                         ; $754a: $81
    nop                                           ; $754b: $00
    jr nz, jr_094_750f                            ; $754c: $20 $c1

    ld de, $1fe3                                  ; $754e: $11 $e3 $1f
    ccf                                           ; $7551: $3f
    rrca                                          ; $7552: $0f
    ccf                                           ; $7553: $3f
    nop                                           ; $7554: $00
    ld bc, $3d3f                                  ; $7555: $01 $3f $3d
    ld b, e                                       ; $7558: $43
    ld h, d                                       ; $7559: $62
    add c                                         ; $755a: $81
    ld a, h                                       ; $755b: $7c
    add e                                         ; $755c: $83
    nop                                           ; $755d: $00
    cp $01                                        ; $755e: $fe $01
    ld a, [hl]                                    ; $7560: $7e
    add c                                         ; $7561: $81
    cp b                                          ; $7562: $b8
    rst $38                                       ; $7563: $ff
    ld b, c                                       ; $7564: $41
    cp [hl]                                       ; $7565: $be
    nop                                           ; $7566: $00
    db $10                                        ; $7567: $10
    rrca                                          ; $7568: $0f
    nop                                           ; $7569: $00
    rlca                                          ; $756a: $07
    inc b                                         ; $756b: $04
    inc bc                                        ; $756c: $03
    inc b                                         ; $756d: $04
    inc bc                                        ; $756e: $03
    nop                                           ; $756f: $00
    add e                                         ; $7570: $83
    inc b                                         ; $7571: $04
    ld c, c                                       ; $7572: $49
    add [hl]                                      ; $7573: $86
    nop                                           ; $7574: $00
    rst $38                                       ; $7575: $ff
    adc [hl]                                      ; $7576: $8e
    ld [hl], c                                    ; $7577: $71
    nop                                           ; $7578: $00
    ret c                                         ; $7579: $d8

    jr nz, jr_094_759b                            ; $757a: $20 $1f

    ldh [$3f], a                                  ; $757c: $e0 $3f
    ret nz                                        ; $757e: $c0

    rra                                           ; $757f: $1f
    ldh [rP1], a                                  ; $7580: $e0 $00
    cpl                                           ; $7582: $2f
    ldh a, [$d5]                                  ; $7583: $f0 $d5
    ld a, [hl-]                                   ; $7585: $3a
    rst $18                                       ; $7586: $df
    ldh [$27], a                                  ; $7587: $e0 $27
    ld hl, sp+$00                                 ; $7589: $f8 $00
    call c, Call_000_203f                         ; $758b: $dc $3f $20
    rra                                           ; $758e: $1f
    or a                                          ; $758f: $b7
    ld [$10ee], sp                                ; $7590: $08 $ee $10
    nop                                           ; $7593: $00
    rst $18                                       ; $7594: $df
    jr nz, jr_094_75f6                            ; $7595: $20 $5f

    and b                                         ; $7597: $a0
    add b                                         ; $7598: $80
    ld a, a                                       ; $7599: $7f
    cp b                                          ; $759a: $b8

jr_094_759b:
    ld b, a                                       ; $759b: $47
    nop                                           ; $759c: $00
    ld h, h                                       ; $759d: $64
    add e                                         ; $759e: $83
    dec a                                         ; $759f: $3d
    jp nz, $fa65                                  ; $75a0: $c2 $65 $fa

    nop                                           ; $75a3: $00
    rst $38                                       ; $75a4: $ff
    nop                                           ; $75a5: $00
    jr @-$1e                                      ; $75a6: $18 $e0

    cp h                                          ; $75a8: $bc
    ret nz                                        ; $75a9: $c0

    rrca                                          ; $75aa: $0f
    rst $38                                       ; $75ab: $ff
    ld [de], a                                    ; $75ac: $12
    rst $28                                       ; $75ad: $ef
    jr nz, jr_094_75f5                            ; $75ae: $20 $45

    add d                                         ; $75b0: $82
    dec a                                         ; $75b1: $3d
    nop                                           ; $75b2: $00
    inc c                                         ; $75b3: $0c
    ld d, $0f                                     ; $75b4: $16 $0f
    ld b, c                                       ; $75b6: $41
    cp a                                          ; $75b7: $bf
    nop                                           ; $75b8: $00
    sbc h                                         ; $75b9: $9c
    ld h, e                                       ; $75ba: $63
    rra                                           ; $75bb: $1f
    ldh a, [$0b]                                  ; $75bc: $f0 $0b
    db $fc                                        ; $75be: $fc
    rla                                           ; $75bf: $17
    rrca                                          ; $75c0: $0f
    nop                                           ; $75c1: $00
    ret z                                         ; $75c2: $c8

    rlca                                          ; $75c3: $07
    ei                                            ; $75c4: $fb
    inc b                                         ; $75c5: $04
    db $f4                                        ; $75c6: $f4
    ld [$f08f], sp                                ; $75c7: $08 $8f $f0
    inc d                                         ; $75ca: $14
    rrca                                          ; $75cb: $0f
    ldh a, [$80]                                  ; $75cc: $f0 $80
    ld l, h                                       ; $75ce: $6c
    ld bc, $a0d5                                  ; $75cf: $01 $d5 $a0
    ld b, b                                       ; $75d2: $40
    ld [bc], a                                    ; $75d3: $02
    inc c                                         ; $75d4: $0c
    ld b, $ae                                     ; $75d5: $06 $ae
    inc b                                         ; $75d7: $04
    ld e, a                                       ; $75d8: $5f
    inc b                                         ; $75d9: $04
    xor [hl]                                      ; $75da: $ae
    or b                                          ; $75db: $b0
    jr nc, jr_094_764e                            ; $75dc: $30 $70

    ld b, c                                       ; $75de: $41
    ldh a, [$08]                                  ; $75df: $f0 $08
    push de                                       ; $75e1: $d5
    ld hl, sp+$71                                 ; $75e2: $f8 $71
    cp $70                                        ; $75e4: $fe $70
    ld e, c                                       ; $75e6: $59
    or [hl]                                       ; $75e7: $b6
    rrca                                          ; $75e8: $0f
    cp [hl]                                       ; $75e9: $be
    ld [bc], a                                    ; $75ea: $02
    pop bc                                        ; $75eb: $c1
    cp h                                          ; $75ec: $bc
    jp nz, $f48a                                  ; $75ed: $c2 $8a $f4

    add c                                         ; $75f0: $81
    ret nz                                        ; $75f1: $c0

    jr nc, jr_094_7612                            ; $75f2: $30 $1e

    nop                                           ; $75f4: $00

jr_094_75f5:
    ccf                                           ; $75f5: $3f

jr_094_75f6:
    ld c, $3f                                     ; $75f6: $0e $3f
    nop                                           ; $75f8: $00
    ccf                                           ; $75f9: $3f
    ccf                                           ; $75fa: $3f
    ld b, b                                       ; $75fb: $40
    ld h, c                                       ; $75fc: $61
    nop                                           ; $75fd: $00
    add b                                         ; $75fe: $80
    ld a, h                                       ; $75ff: $7c
    add b                                         ; $7600: $80
    rst $38                                       ; $7601: $ff
    nop                                           ; $7602: $00
    ld a, a                                       ; $7603: $7f
    add b                                         ; $7604: $80
    sbc a                                         ; $7605: $9f
    nop                                           ; $7606: $00
    ld a, a                                       ; $7607: $7f
    ld h, $ff                                     ; $7608: $26 $ff
    ld sp, hl                                     ; $760a: $f9
    cp $08                                        ; $760b: $fe $08
    db $fc                                        ; $760d: $fc
    ldh [rP1], a                                  ; $760e: $e0 $00
    jr jr_094_7626                                ; $7610: $18 $14

jr_094_7612:
    ld [$0cd3], sp                                ; $7612: $08 $d3 $0c
    db $f4                                        ; $7615: $f4
    dec bc                                        ; $7616: $0b
    cp b                                          ; $7617: $b8
    db $10                                        ; $7618: $10
    rst $38                                       ; $7619: $ff
    ld bc, $d0fe                                  ; $761a: $01 $fe $d0
    ld c, b                                       ; $761d: $48
    rst $30                                       ; $761e: $f7
    ld [$10e8], sp                                ; $761f: $08 $e8 $10
    nop                                           ; $7622: $00
    inc e                                         ; $7623: $1c
    ldh [$7f], a                                  ; $7624: $e0 $7f

jr_094_7626:
    add b                                         ; $7626: $80
    ld a, a                                       ; $7627: $7f
    add b                                         ; $7628: $80
    ccf                                           ; $7629: $3f
    ret nz                                        ; $762a: $c0

    db $10                                        ; $762b: $10
    ld d, h                                       ; $762c: $54
    db $eb                                        ; $762d: $eb
    add hl, sp                                    ; $762e: $39
    daa                                           ; $762f: $27
    ld bc, $817e                                  ; $7630: $01 $7e $81
    xor b                                         ; $7633: $a8
    rst $10                                       ; $7634: $d7
    ld [bc], a                                    ; $7635: $02
    ld [hl], b                                    ; $7636: $70
    rst $38                                       ; $7637: $ff
    adc [hl]                                      ; $7638: $8e
    ld a, a                                       ; $7639: $7f
    rst $18                                       ; $763a: $df
    ccf                                           ; $763b: $3f
    ld [bc], a                                    ; $763c: $02
    ld [$2a01], sp                                ; $763d: $08 $01 $2a
    rst $38                                       ; $7640: $ff
    rlca                                          ; $7641: $07
    ld e, [hl]                                    ; $7642: $5e
    ld [bc], a                                    ; $7643: $02
    dec c                                         ; $7644: $0d
    jr nc, jr_094_7678                            ; $7645: $30 $31

    rlca                                          ; $7647: $07
    nop                                           ; $7648: $00
    ld h, c                                       ; $7649: $61
    di                                            ; $764a: $f3
    ld d, b                                       ; $764b: $50
    db $fc                                        ; $764c: $fc
    nop                                           ; $764d: $00

jr_094_764e:
    ld e, c                                       ; $764e: $59
    xor a                                         ; $764f: $af
    ldh [rP1], a                                  ; $7650: $e0 $00
    or $ff                                        ; $7652: $f6 $ff
    ld hl, sp-$01                                 ; $7654: $f8 $ff
    inc b                                         ; $7656: $04
    ei                                            ; $7657: $fb
    db $fc                                        ; $7658: $fc

jr_094_7659:
    or $f8                                        ; $7659: $f6 $f8
    rst $30                                       ; $765b: $f7
    ld [bc], a                                    ; $765c: $02
    nop                                           ; $765d: $00
    add [hl]                                      ; $765e: $86
    ld a, c                                       ; $765f: $79
    ld b, b                                       ; $7660: $40
    nop                                           ; $7661: $00
    sbc $01                                       ; $7662: $de $01
    ld bc, $edff                                  ; $7664: $01 $ff $ed
    rra                                           ; $7667: $1f
    sub c                                         ; $7668: $91
    rrca                                          ; $7669: $0f
    nop                                           ; $766a: $00
    push bc                                       ; $766b: $c5
    inc bc                                        ; $766c: $03
    ld a, [$d401]                                 ; $766d: $fa $01 $d4
    ei                                            ; $7670: $fb
    adc h                                         ; $7671: $8c
    cp $00                                        ; $7672: $fe $00
    ld [hl], d                                    ; $7674: $72
    db $fc                                        ; $7675: $fc
    ld hl, sp-$04                                 ; $7676: $f8 $fc

jr_094_7678:
    ld a, [$f5fc]                                 ; $7678: $fa $fc $f5
    cp $00                                        ; $767b: $fe $00
    xor $ff                                       ; $767d: $ee $ff
    rra                                           ; $767f: $1f
    rst $38                                       ; $7680: $ff
    rst $00                                       ; $7681: $c7
    ccf                                           ; $7682: $3f
    ld c, $1f                                     ; $7683: $0e $1f
    nop                                           ; $7685: $00
    dec b                                         ; $7686: $05
    rrca                                          ; $7687: $0f
    inc bc                                        ; $7688: $03
    rlca                                          ; $7689: $07
    inc bc                                        ; $768a: $03
    rlca                                          ; $768b: $07
    dec bc                                        ; $768c: $0b
    dec b                                         ; $768d: $05
    ld [$3cc3], sp                                ; $768e: $08 $c3 $3c
    ld a, $c0                                     ; $7691: $3e $c0
    ld b, b                                       ; $7693: $40

jr_094_7694:
    jr c, jr_094_7694                             ; $7694: $38 $fe

    ld d, b                                       ; $7696: $50
    rst $38                                       ; $7697: $ff
    call z, $01ba                                 ; $7698: $cc $ba $01
    ld b, b                                       ; $769b: $40
    jr c, jr_094_7659                             ; $769c: $38 $bb

    dec b                                         ; $769e: $05
    db $10                                        ; $769f: $10
    ld [$3840], sp                                ; $76a0: $08 $40 $38
    rst $38                                       ; $76a3: $ff
    ld d, h                                       ; $76a4: $54
    add b                                         ; $76a5: $80
    jr nz, jr_094_76b0                            ; $76a6: $20 $08

    db $fc                                        ; $76a8: $fc
    nop                                           ; $76a9: $00
    ld a, [hl]                                    ; $76aa: $7e
    add b                                         ; $76ab: $80
    xor h                                         ; $76ac: $ac
    ret nc                                        ; $76ad: $d0

    halt                                          ; $76ae: $76
    nop                                           ; $76af: $00

jr_094_76b0:
    ld hl, sp-$74                                 ; $76b0: $f8 $8c
    ld [hl], b                                    ; $76b2: $70
    sbc $38                                       ; $76b3: $de $38
    call c, $de30                                 ; $76b5: $dc $30 $de
    nop                                           ; $76b8: $00
    jr c, jr_094_7710                             ; $76b9: $38 $55

    add b                                         ; $76bb: $80
    add b                                         ; $76bc: $80
    nop                                           ; $76bd: $00
    db $10                                        ; $76be: $10
    add b                                         ; $76bf: $80
    add h                                         ; $76c0: $84
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    ld d, b                                       ; $76c3: $50
    add b                                         ; $76c4: $80
    and b                                         ; $76c5: $a0
    nop                                           ; $76c6: $00
    ld d, c                                       ; $76c7: $51
    add b                                         ; $76c8: $80
    and d                                         ; $76c9: $a2
    nop                                           ; $76ca: $00
    ld b, b                                       ; $76cb: $40
    ld d, h                                       ; $76cc: $54
    ld bc, $0001                                  ; $76cd: $01 $01 $00
    ld b, d                                       ; $76d0: $42
    ld bc, $0015                                  ; $76d1: $01 $15 $00
    ld [bc], a                                    ; $76d4: $02
    xor d                                         ; $76d5: $aa
    ld de, $2055                                  ; $76d6: $11 $55 $20
    ld l, b                                       ; $76d9: $68
    ld bc, $0041                                  ; $76da: $01 $41 $00
    nop                                           ; $76dd: $00
    ld d, l                                       ; $76de: $55
    xor d                                         ; $76df: $aa
    cp a                                          ; $76e0: $bf
    ret nz                                        ; $76e1: $c0

    ld l, l                                       ; $76e2: $6d
    add b                                         ; $76e3: $80
    or [hl]                                       ; $76e4: $b6
    ld [bc], a                                    ; $76e5: $02
    ret z                                         ; $76e6: $c8

    ld l, c                                       ; $76e7: $69
    add h                                         ; $76e8: $84
    rst $18                                       ; $76e9: $df
    add b                                         ; $76ea: $80
    scf                                           ; $76eb: $37
    ld a, [hl+]                                   ; $76ec: $2a
    ld [bc], a                                    ; $76ed: $02
    sbc h                                         ; $76ee: $9c
    nop                                           ; $76ef: $00
    ld [hl], b                                    ; $76f0: $70
    ld h, $f8                                     ; $76f1: $26 $f8
    db $fc                                        ; $76f3: $fc
    ldh a, [$0e]                                  ; $76f4: $f0 $0e
    ld hl, sp-$14                                 ; $76f6: $f8 $ec
    nop                                           ; $76f8: $00
    db $10                                        ; $76f9: $10
    ld d, $08                                     ; $76fa: $16 $08
    call c, $f600                                 ; $76fc: $dc $00 $f6
    ld [$0040], sp                                ; $76ff: $08 $40 $00
    add b                                         ; $7702: $80
    and h                                         ; $7703: $a4
    nop                                           ; $7704: $00
    ld b, c                                       ; $7705: $41
    add b                                         ; $7706: $80
    sub [hl]                                      ; $7707: $96
    nop                                           ; $7708: $00
    add hl, bc                                    ; $7709: $09
    inc b                                         ; $770a: $04
    add h                                         ; $770b: $84
    sub d                                         ; $770c: $92
    inc c                                         ; $770d: $0c
    ld l, c                                       ; $770e: $69
    sub [hl]                                      ; $770f: $96

jr_094_7710:
    ld [hl], $02                                  ; $7710: $36 $02
    ld bc, $0091                                  ; $7712: $01 $91 $00
    nop                                           ; $7715: $00
    inc h                                         ; $7716: $24
    ld bc, $000b                                  ; $7717: $01 $0b $00
    inc [hl]                                      ; $771a: $34
    ld bc, $0269                                  ; $771b: $01 $69 $02
    nop                                           ; $771e: $00
    cp $01                                        ; $771f: $fe $01
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    dec hl                                        ; $7723: $2b
    jr c, jr_094_7726                             ; $7724: $38 $00

jr_094_7726:
    dec [hl]                                      ; $7726: $35
    ld bc, $eb80                                  ; $7727: $01 $80 $eb
    add b                                         ; $772a: $80
    ld e, [hl]                                    ; $772b: $5e
    add c                                         ; $772c: $81
    push af                                       ; $772d: $f5
    add d                                         ; $772e: $82
    ld c, a                                       ; $772f: $4f
    ld [bc], a                                    ; $7730: $02
    ld a, [bc]                                    ; $7731: $0a
    rst $38                                       ; $7732: $ff
    db $fc                                        ; $7733: $fc
    nop                                           ; $7734: $00
    xor $40                                       ; $7735: $ee $40
    ld bc, $6e7e                                  ; $7737: $01 $7e $6e
    ld bc, $003e                                  ; $773a: $01 $3e $00
    ret nz                                        ; $773d: $c0

    ld e, h                                       ; $773e: $5c
    ldh [$3e], a                                  ; $773f: $e0 $3e
    ld hl, sp+$54                                 ; $7741: $f8 $54
    xor e                                         ; $7743: $ab
    rst $38                                       ; $7744: $ff
    nop                                           ; $7745: $00
    ld bc, $51aa                                  ; $7746: $01 $aa $51
    ld d, l                                       ; $7749: $55
    add hl, hl                                    ; $774a: $29
    xor d                                         ; $774b: $aa
    ld d, l                                       ; $774c: $55
    rst $10                                       ; $774d: $d7
    nop                                           ; $774e: $00
    add hl, hl                                    ; $774f: $29
    ld h, d                                       ; $7750: $62
    dec e                                         ; $7751: $1d
    or c                                          ; $7752: $b1
    rrca                                          ; $7753: $0f
    ld d, l                                       ; $7754: $55
    xor d                                         ; $7755: $aa
    xor $00                                       ; $7756: $ee $00
    sub c                                         ; $7758: $91
    ld d, d                                       ; $7759: $52
    xor b                                         ; $775a: $a8
    xor l                                         ; $775b: $ad
    sub b                                         ; $775c: $90
    ld b, a                                       ; $775d: $47
    cp b                                          ; $775e: $b8
    and h                                         ; $775f: $a4
    nop                                           ; $7760: $00
    sbc d                                         ; $7761: $9a
    ld d, e                                       ; $7762: $53
    xor h                                         ; $7763: $ac
    and c                                         ; $7764: $a1
    sbc $54                                       ; $7765: $de $54
    ld bc, $0003                                  ; $7767: $01 $03 $00
    nop                                           ; $776a: $00
    ld b, b                                       ; $776b: $40
    ld bc, $0029                                  ; $776c: $01 $29 $00
    sub h                                         ; $776f: $94
    ld bc, $054b                                  ; $7770: $01 $4b $05
    add b                                         ; $7773: $80
    and b                                         ; $7774: $a0
    ld b, c                                       ; $7775: $41
    ld d, l                                       ; $7776: $55
    jr nz, jr_094_7779                            ; $7777: $20 $00

jr_094_7779:
    add hl, sp                                    ; $7779: $39
    xor e                                         ; $777a: $ab
    ldh [rNR10], a                                ; $777b: $e0 $10
    add b                                         ; $777d: $80
    ld b, b                                       ; $777e: $40
    ld [$116a], sp                                ; $777f: $08 $6a $11
    xor l                                         ; $7782: $ad
    ld b, e                                       ; $7783: $43
    ld a, d                                       ; $7784: $7a
    add l                                         ; $7785: $85
    cp l                                          ; $7786: $bd
    nop                                           ; $7787: $00
    ld b, e                                       ; $7788: $43
    halt                                          ; $7789: $76
    add c                                         ; $778a: $81
    db $db                                        ; $778b: $db
    dec b                                         ; $778c: $05
    and [hl]                                      ; $778d: $a6
    add hl, bc                                    ; $778e: $09
    ld a, l                                       ; $778f: $7d
    nop                                           ; $7790: $00
    ld bc, $41ba                                  ; $7791: $01 $ba $41
    ld l, a                                       ; $7794: $6f
    add c                                         ; $7795: $81

jr_094_7796:
    sub $01                                       ; $7796: $d6 $01
    cpl                                           ; $7798: $2f
    ld b, b                                       ; $7799: $40
    add c                                         ; $779a: $81
    ld [hl], b                                    ; $779b: $70
    ld [$8055], sp                                ; $779c: $08 $55 $80
    xor b                                         ; $779f: $a8
    nop                                           ; $77a0: $00
    ld d, d                                       ; $77a1: $52
    add b                                         ; $77a2: $80
    nop                                           ; $77a3: $00
    xor c                                         ; $77a4: $a9
    ld b, b                                       ; $77a5: $40
    ld d, d                                       ; $77a6: $52
    and b                                         ; $77a7: $a0
    and c                                         ; $77a8: $a1
    db $10                                        ; $77a9: $10
    ld e, d                                       ; $77aa: $5a
    add b                                         ; $77ab: $80
    nop                                           ; $77ac: $00
    xor l                                         ; $77ad: $ad
    nop                                           ; $77ae: $00
    call z, Call_000_0e30                         ; $77af: $cc $30 $0e
    jr jr_094_77c0                                ; $77b2: $18 $0c

    nop                                           ; $77b4: $00
    inc b                                         ; $77b5: $04
    ld b, $00                                     ; $77b6: $06 $00

jr_094_77b8:
    inc c                                         ; $77b8: $0c
    nop                                           ; $77b9: $00
    ld c, $0c                                     ; $77ba: $0e $0c
    nop                                           ; $77bc: $00
    ld a, $c0                                     ; $77bd: $3e $c0
    nop                                           ; $77bf: $00

jr_094_77c0:
    ret nc                                        ; $77c0: $d0

    cpl                                           ; $77c1: $2f
    db $eb                                        ; $77c2: $eb
    dec d                                         ; $77c3: $15
    or h                                          ; $77c4: $b4
    ld b, e                                       ; $77c5: $43
    db $db                                        ; $77c6: $db
    ld hl, $2c08                                  ; $77c7: $21 $08 $2c
    ld d, c                                       ; $77ca: $51
    db $d3                                        ; $77cb: $d3
    add hl, hl                                    ; $77cc: $29
    and b                                         ; $77cd: $a0
    ld [$af50], sp                                ; $77ce: $08 $50 $af
    ld [$9500], a                                 ; $77d1: $ea $00 $95
    ld d, l                                       ; $77d4: $55
    xor b                                         ; $77d5: $a8
    xor $90                                       ; $77d6: $ee $90
    dec [hl]                                      ; $77d8: $35
    adc d                                         ; $77d9: $8a
    jp c, $8540                                   ; $77da: $da $40 $85

    or b                                          ; $77dd: $b0
    ld [$41a2], sp                                ; $77de: $08 $a2 $41
    ld b, l                                       ; $77e1: $45
    jr nz, jr_094_7796                            ; $77e2: $20 $b2

    ld bc, $5102                                  ; $77e4: $01 $02 $51
    nop                                           ; $77e7: $00
    ld a, [hl+]                                   ; $77e8: $2a
    ld de, $0895                                  ; $77e9: $11 $95 $08
    ret nc                                        ; $77ec: $d0

    ld [$0810], sp                                ; $77ed: $08 $10 $08
    add b                                         ; $77f0: $80
    adc b                                         ; $77f1: $88
    nop                                           ; $77f2: $00
    ld b, h                                       ; $77f3: $44
    inc b                                         ; $77f4: $04
    nop                                           ; $77f5: $00
    ld b, l                                       ; $77f6: $45
    add b                                         ; $77f7: $80
    xor d                                         ; $77f8: $aa
    jp hl                                         ; $77f9: $e9


    ld l, $02                                     ; $77fa: $2e $02
    cp [hl]                                       ; $77fc: $be
    inc l                                         ; $77fd: $2c
    add b                                         ; $77fe: $80
    inc c                                         ; $77ff: $0c
    rst $38                                       ; $7800: $ff
    add b                                         ; $7801: $80
    inc b                                         ; $7802: $04
    cp e                                          ; $7803: $bb
    rst $38                                       ; $7804: $ff
    ld [hl], b                                    ; $7805: $70
    inc a                                         ; $7806: $3c
    nop                                           ; $7807: $00
    ld b, l                                       ; $7808: $45
    cp e                                          ; $7809: $bb
    inc hl                                        ; $780a: $23
    rst $18                                       ; $780b: $df
    ld b, [hl]                                    ; $780c: $46
    cp a                                          ; $780d: $bf
    ld e, l                                       ; $780e: $5d
    rst $38                                       ; $780f: $ff
    nop                                           ; $7810: $00
    dec sp                                        ; $7811: $3b
    rst $38                                       ; $7812: $ff
    ld [hl], c                                    ; $7813: $71
    rst $38                                       ; $7814: $ff
    ld [hl], e                                    ; $7815: $73
    rst $38                                       ; $7816: $ff
    pop bc                                        ; $7817: $c1
    rst $38                                       ; $7818: $ff
    ld b, b                                       ; $7819: $40
    sub d                                         ; $781a: $92
    ld [hl], b                                    ; $781b: $70
    inc d                                         ; $781c: $14
    xor h                                         ; $781d: $ac
    ld e, a                                       ; $781e: $5f

jr_094_781f:
    rst $38                                       ; $781f: $ff
    ld c, $6b                                     ; $7820: $0e $6b
    sub [hl]                                      ; $7822: $96
    ld bc, $06fb                                  ; $7823: $01 $fb $06
    rst $18                                       ; $7826: $df
    ld [hl+], a                                   ; $7827: $22
    db $fd                                        ; $7828: $fd
    ld [bc], a                                    ; $7829: $02
    db $fd                                        ; $782a: $fd
    sbc c                                         ; $782b: $99
    inc c                                         ; $782c: $0c
    add b                                         ; $782d: $80
    ret nz                                        ; $782e: $c0

    ld d, h                                       ; $782f: $54
    xor [hl]                                      ; $7830: $ae
    rst $38                                       ; $7831: $ff
    ld d, l                                       ; $7832: $55
    rst $38                                       ; $7833: $ff
    ld a, [bc]                                    ; $7834: $0a
    rst $38                                       ; $7835: $ff
    jr nz, jr_094_77b8                            ; $7836: $20 $80

    or d                                          ; $7838: $b2
    inc b                                         ; $7839: $04
    add b                                         ; $783a: $80
    ld a, a                                       ; $783b: $7f
    ld [de], a                                    ; $783c: $12
    db $ed                                        ; $783d: $ed
    jr nz, jr_094_781f                            ; $783e: $20 $df

    ld c, c                                       ; $7840: $49
    ld b, b                                       ; $7841: $40
    or [hl]                                       ; $7842: $b6
    ldh [$2b], a                                  ; $7843: $e0 $2b
    xor a                                         ; $7845: $af
    ret nc                                        ; $7846: $d0

    rst $18                                       ; $7847: $df
    ldh [$7f], a                                  ; $7848: $e0 $7f
    ldh [rP1], a                                  ; $784a: $e0 $00
    ld h, a                                       ; $784c: $67
    or b                                          ; $784d: $b0
    add d                                         ; $784e: $82
    ld a, l                                       ; $784f: $7d
    push bc                                       ; $7850: $c5
    ld a, [hl-]                                   ; $7851: $3a
    xor e                                         ; $7852: $ab
    ld d, h                                       ; $7853: $54
    nop                                           ; $7854: $00
    halt                                          ; $7855: $76
    adc c                                         ; $7856: $89
    rst $38                                       ; $7857: $ff
    nop                                           ; $7858: $00
    rst $18                                       ; $7859: $df
    jr nz, @+$01                                  ; $785a: $20 $ff

    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    sbc $00                                       ; $785e: $de $00
    add hl, sp                                    ; $7860: $39
    db $fc                                        ; $7861: $fc
    ld a, h                                       ; $7862: $7c
    add a                                         ; $7863: $87
    rst $20                                       ; $7864: $e7
    rrca                                          ; $7865: $0f
    ld [$bc58], sp                                ; $7866: $08 $58 $bc
    ret                                           ; $7869: $c9


    ldh [$f0], a                                  ; $786a: $e0 $f0
    dec sp                                        ; $786c: $3b
    push de                                       ; $786d: $d5
    ldh [$b2], a                                  ; $786e: $e0 $b2
    nop                                           ; $7870: $00
    ld a, b                                       ; $7871: $78
    ld e, h                                       ; $7872: $5c
    ld [$0c29], sp                                ; $7873: $08 $29 $0c
    inc c                                         ; $7876: $0c
    inc b                                         ; $7877: $04
    ld c, $20                                     ; $7878: $0e $20
    inc b                                         ; $787a: $04
    cp l                                          ; $787b: $bd
    xor h                                         ; $787c: $ac
    inc b                                         ; $787d: $04
    push de                                       ; $787e: $d5
    nop                                           ; $787f: $00
    and b                                         ; $7880: $a0
    nop                                           ; $7881: $00
    db $10                                        ; $7882: $10
    ld [$0200], sp                                ; $7883: $08 $00 $02
    nop                                           ; $7886: $00
    ld b, b                                       ; $7887: $40
    and b                                         ; $7888: $a0
    inc c                                         ; $7889: $0c
    ret nz                                        ; $788a: $c0

    cp [hl]                                       ; $788b: $be
    pop bc                                        ; $788c: $c1
    nop                                           ; $788d: $00
    xor b                                         ; $788e: $a8
    rst $10                                       ; $788f: $d7
    ldh a, [rIE]                                  ; $7890: $f0 $ff
    adc [hl]                                      ; $7892: $8e
    rst $38                                       ; $7893: $ff
    ld e, a                                       ; $7894: $5f
    cp a                                          ; $7895: $bf
    nop                                           ; $7896: $00
    ld e, a                                       ; $7897: $5f
    cp a                                          ; $7898: $bf
    rst $18                                       ; $7899: $df
    ccf                                           ; $789a: $3f
    ld b, $04                                     ; $789b: $06 $04
    xor h                                         ; $789d: $ac
    ld b, $0c                                     ; $789e: $06 $0c
    ld d, l                                       ; $78a0: $55
    ld b, $aa                                     ; $78a1: $06 $aa
    ld d, a                                       ; $78a3: $57
    ldh a, [$2b]                                  ; $78a4: $f0 $2b
    sub b                                         ; $78a6: $90
    ld d, d                                       ; $78a7: $52
    cp b                                          ; $78a8: $b8
    rst $30                                       ; $78a9: $f7
    nop                                           ; $78aa: $00
    jr jr_094_78f0                                ; $78ab: $18 $43

    inc a                                         ; $78ad: $3c
    ld [hl], $0f                                  ; $78ae: $36 $0f
    ld h, e                                       ; $78b0: $63
    rra                                           ; $78b1: $1f
    inc a                                         ; $78b2: $3c
    jr nz, @+$11                                  ; $78b3: $20 $0f

    ld a, a                                       ; $78b5: $7f
    jp hl                                         ; $78b6: $e9


    inc bc                                        ; $78b7: $03
    ld a, a                                       ; $78b8: $7f
    rra                                           ; $78b9: $1f
    ld a, $0f                                     ; $78ba: $3e $0f
    ld a, b                                       ; $78bc: $78
    nop                                           ; $78bd: $00
    rra                                           ; $78be: $1f
    ld sp, $700e                                  ; $78bf: $31 $0e $70

jr_094_78c2:
    rrca                                          ; $78c2: $0f
    jr nc, jr_094_78cc                            ; $78c3: $30 $07

    ld h, h                                       ; $78c5: $64
    nop                                           ; $78c6: $00
    inc bc                                        ; $78c7: $03
    inc [hl]                                      ; $78c8: $34
    inc bc                                        ; $78c9: $03
    ld h, e                                       ; $78ca: $63
    inc b                                         ; $78cb: $04

jr_094_78cc:
    add hl, sp                                    ; $78cc: $39
    ld b, $60                                     ; $78cd: $06 $60
    jr nz, jr_094_78f0                            ; $78cf: $20 $1f

    jr c, jr_094_78df                             ; $78d1: $38 $0c

    nop                                           ; $78d3: $00
    dec a                                         ; $78d4: $3d
    ld [bc], a                                    ; $78d5: $02
    ld h, l                                       ; $78d6: $65
    ld a, [de]                                    ; $78d7: $1a
    jr nc, jr_094_78de                            ; $78d8: $30 $04

    rrca                                          ; $78da: $0f
    ld a, b                                       ; $78db: $78
    nop                                           ; $78dc: $00
    inc a                                         ; $78dd: $3c

jr_094_78de:
    nop                                           ; $78de: $00

jr_094_78df:
    and b                                         ; $78df: $a0
    ld b, d                                       ; $78e0: $42
    rlca                                          ; $78e1: $07
    jp Jump_000_3f08                              ; $78e2: $c3 $08 $3f


    inc a                                         ; $78e5: $3c
    jp $80ff                                      ; $78e6: $c3 $ff $80


    dec b                                         ; $78e9: $05
    add b                                         ; $78ea: $80
    rst $38                                       ; $78eb: $ff
    ret nz                                        ; $78ec: $c0

    ld h, c                                       ; $78ed: $61
    cp a                                          ; $78ee: $bf
    inc b                                         ; $78ef: $04

jr_094_78f0:
    jr jr_094_78c2                                ; $78f0: $18 $d0

    dec c                                         ; $78f2: $0d
    nop                                           ; $78f3: $00
    rst $38                                       ; $78f4: $ff
    xor d                                         ; $78f5: $aa
    ld d, l                                       ; $78f6: $55
    ld e, e                                       ; $78f7: $5b
    dec d                                         ; $78f8: $15
    jr nz, @+$01                                  ; $78f9: $20 $ff

    xor d                                         ; $78fb: $aa
    db $fd                                        ; $78fc: $fd
    dec b                                         ; $78fd: $05
    ld l, a                                       ; $78fe: $6f
    db $10                                        ; $78ff: $10
    dec sp                                        ; $7900: $3b
    inc c                                         ; $7901: $0c
    halt                                          ; $7902: $76
    nop                                           ; $7903: $00
    rra                                           ; $7904: $1f
    jr c, jr_094_7916                             ; $7905: $38 $0f

    ld a, e                                       ; $7907: $7b
    inc e                                         ; $7908: $1c
    ld [hl], $08                                  ; $7909: $36 $08
    ld [hl], a                                    ; $790b: $77
    dec b                                         ; $790c: $05
    jr jr_094_7946                                ; $790d: $18 $37

    ld [$1c63], sp                                ; $790f: $08 $63 $1c
    ld [hl], b                                    ; $7912: $70
    ld e, b                                       ; $7913: $58
    add c                                         ; $7914: $81
    inc a                                         ; $7915: $3c

jr_094_7916:
    jr nc, jr_094_7940                            ; $7916: $30 $28

    ret nz                                        ; $7918: $c0

    cp a                                          ; $7919: $bf
    jr nc, jr_094_7924                            ; $791a: $30 $08

    rst $38                                       ; $791c: $ff
    inc e                                         ; $791d: $1c
    inc bc                                        ; $791e: $03
    add e                                         ; $791f: $83
    ld a, a                                       ; $7920: $7f
    ld bc, $c2d0                                  ; $7921: $01 $d0 $c2

jr_094_7924:
    dec b                                         ; $7924: $05
    inc b                                         ; $7925: $04
    ld [$14c1], sp                                ; $7926: $08 $c1 $14
    nop                                           ; $7929: $00
    add b                                         ; $792a: $80
    rst $38                                       ; $792b: $ff
    ld [$00f7], sp                                ; $792c: $08 $f7 $00
    sub l                                         ; $792f: $95
    ld [$d02f], a                                 ; $7930: $ea $2f $d0
    rst $18                                       ; $7933: $df
    and b                                         ; $7934: $a0
    ld a, e                                       ; $7935: $7b
    add b                                         ; $7936: $80
    db $10                                        ; $7937: $10
    push af                                       ; $7938: $f5
    add b                                         ; $7939: $80
    xor d                                         ; $793a: $aa
    cp $05                                        ; $793b: $fe $05
    and d                                         ; $793d: $a2
    ld e, l                                       ; $793e: $5d
    ld b, l                                       ; $793f: $45

jr_094_7940:
    cp d                                          ; $7940: $ba
    db $10                                        ; $7941: $10
    ld [$ff15], a                                 ; $7942: $ea $15 $ff
    adc h                                         ; $7945: $8c

jr_094_7946:
    dec b                                         ; $7946: $05
    ld l, l                                       ; $7947: $6d
    nop                                           ; $7948: $00
    ld l, d                                       ; $7949: $6a
    add b                                         ; $794a: $80
    inc d                                         ; $794b: $14
    ld d, b                                       ; $794c: $50
    add b                                         ; $794d: $80
    nop                                           ; $794e: $00
    ld [bc], a                                    ; $794f: $02
    ld b, b                                       ; $7950: $40
    cp d                                          ; $7951: $ba
    cp d                                          ; $7952: $ba
    dec b                                         ; $7953: $05
    ld a, [hl+]                                   ; $7954: $2a
    nop                                           ; $7955: $00
    ld d, b                                       ; $7956: $50
    ld d, b                                       ; $7957: $50
    cp d                                          ; $7958: $ba
    dec b                                         ; $7959: $05
    db $10                                        ; $795a: $10
    or b                                          ; $795b: $b0
    dec d                                         ; $795c: $15

jr_094_795d:
    rst $00                                       ; $795d: $c7
    rst $38                                       ; $795e: $ff
    db $e3                                        ; $795f: $e3
    rst $18                                       ; $7960: $df
    ldh a, [rDIV]                                 ; $7961: $f0 $04
    ld c, b                                       ; $7963: $48
    inc l                                         ; $7964: $2c
    ld c, b                                       ; $7965: $48
    jr c, jr_094_7978                             ; $7966: $38 $10

    ld bc, $0450                                  ; $7968: $01 $50 $04
    nop                                           ; $796b: $00
    ld [$0580], sp                                ; $796c: $08 $80 $05
    ld d, c                                       ; $796f: $51
    add b                                         ; $7970: $80
    ld l, d                                       ; $7971: $6a
    add b                                         ; $7972: $80
    ld d, l                                       ; $7973: $55
    inc b                                         ; $7974: $04
    nop                                           ; $7975: $00
    ld [hl], a                                    ; $7976: $77
    ld [bc], a                                    ; $7977: $02

jr_094_7978:
    inc b                                         ; $7978: $04
    inc d                                         ; $7979: $14
    ld e, [hl]                                    ; $797a: $5e
    and c                                         ; $797b: $a1
    jr z, jr_094_79ac                             ; $797c: $28 $2e

    dec b                                         ; $797e: $05
    ld l, e                                       ; $797f: $6b
    ld b, $06                                     ; $7980: $06 $06
    ei                                            ; $7982: $fb
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    xor $11                                       ; $7985: $ee $11
    ld e, a                                       ; $7987: $5f
    and b                                         ; $7988: $a0
    sbc d                                         ; $7989: $9a
    ld h, l                                       ; $798a: $65
    dec l                                         ; $798b: $2d
    jp nc, Jump_094_4006                          ; $798c: $d2 $06 $40

    cp a                                          ; $798f: $bf
    ld bc, $12ff                                  ; $7990: $01 $ff $12
    jp z, Jump_000_1201                           ; $7993: $ca $01 $12

    ld a, [bc]                                    ; $7996: $0a
    rst $38                                       ; $7997: $ff
    inc bc                                        ; $7998: $03
    rst $38                                       ; $7999: $ff
    inc d                                         ; $799a: $14
    db $eb                                        ; $799b: $eb
    ld [$02f7], sp                                ; $799c: $08 $f7 $02
    sub $01                                       ; $799f: $d6 $01
    db $10                                        ; $79a1: $10
    jr z, jr_094_79ac                             ; $79a2: $28 $08

    rst $38                                       ; $79a4: $ff
    rla                                           ; $79a5: $17
    rst $38                                       ; $79a6: $ff
    xor l                                         ; $79a7: $ad
    inc b                                         ; $79a8: $04
    ld c, b                                       ; $79a9: $48
    add e                                         ; $79aa: $83
    rst $38                                       ; $79ab: $ff

jr_094_79ac:
    ld b, c                                       ; $79ac: $41
    ld d, h                                       ; $79ad: $54
    cp a                                          ; $79ae: $bf
    ret nc                                        ; $79af: $d0

    jr z, jr_094_795d                             ; $79b0: $28 $ab

    dec c                                         ; $79b2: $0d
    rlca                                          ; $79b3: $07
    cp $a0                                        ; $79b4: $fe $a0
    inc bc                                        ; $79b6: $03
    xor e                                         ; $79b7: $ab
    call nc, $5090                                ; $79b8: $d4 $90 $50
    inc a                                         ; $79bb: $3c
    add b                                         ; $79bc: $80
    ld a, a                                       ; $79bd: $7f
    sub d                                         ; $79be: $92
    dec c                                         ; $79bf: $0d
    rst $38                                       ; $79c0: $ff
    nop                                           ; $79c1: $00
    ld e, l                                       ; $79c2: $5d
    xor d                                         ; $79c3: $aa
    and $80                                       ; $79c4: $e6 $80
    dec e                                         ; $79c6: $1d
    sub [hl]                                      ; $79c7: $96
    dec c                                         ; $79c8: $0d
    db $10                                        ; $79c9: $10
    ld [$aa55], sp                                ; $79ca: $08 $55 $aa
    add b                                         ; $79cd: $80
    dec e                                         ; $79ce: $1d
    db $10                                        ; $79cf: $10
    jr z, jr_094_7a51                             ; $79d0: $28 $7f

    ld h, a                                       ; $79d2: $67
    nop                                           ; $79d3: $00
    ret nz                                        ; $79d4: $c0

    inc e                                         ; $79d5: $1c
    jr nz, @+$2a                                  ; $79d6: $20 $28

    ld [hl], l                                    ; $79d8: $75
    xor d                                         ; $79d9: $aa
    sub b                                         ; $79da: $90
    inc e                                         ; $79db: $1c
    jr nc, jr_094_7a06                            ; $79dc: $30 $28

    ld b, b                                       ; $79de: $40
    jr z, @+$22                                   ; $79df: $28 $20

    ld bc, $20fe                                  ; $79e1: $01 $fe $20
    ld e, b                                       ; $79e4: $58
    ld b, e                                       ; $79e5: $43
    inc a                                         ; $79e6: $3c
    ld h, [hl]                                    ; $79e7: $66
    rra                                           ; $79e8: $1f
    jp Jump_000_3f40                              ; $79e9: $c3 $40 $3f


    ldh [$3d], a                                  ; $79ec: $e0 $3d
    ld bc, $ff00                                  ; $79ee: $01 $00 $ff
    ld a, a                                       ; $79f1: $7f
    dec d                                         ; $79f2: $15
    ld d, h                                       ; $79f3: $54
    dec d                                         ; $79f4: $15
    ld d, h                                       ; $79f5: $54
    ld [hl], l                                    ; $79f6: $75
    ld b, d                                       ; $79f7: $42
    or c                                          ; $79f8: $b1
    add hl, hl                                    ; $79f9: $29
    call z, Call_094_4414                         ; $79fa: $cc $14 $44
    inc b                                         ; $79fd: $04
    pop de                                        ; $79fe: $d1
    ld sp, $192d                                  ; $79ff: $31 $2d $19
    ld l, c                                       ; $7a02: $69
    ld [$0024], sp                                ; $7a03: $08 $24 $00

jr_094_7a06:
    inc d                                         ; $7a06: $14
    ld [hl], $31                                  ; $7a07: $36 $31
    dec e                                         ; $7a09: $1d
    ld l, h                                       ; $7a0a: $6c
    ld [$0027], sp                                ; $7a0b: $08 $27 $00
    rst $30                                       ; $7a0e: $f7
    ld d, d                                       ; $7a0f: $52
    rst $28                                       ; $7a10: $ef
    dec [hl]                                      ; $7a11: $35
    add sp, $24                                   ; $7a12: $e8 $24
    inc hl                                        ; $7a14: $23
    db $10                                        ; $7a15: $10
    ld c, l                                       ; $7a16: $4d
    ld hl, $08a9                                  ; $7a17: $21 $a9 $08
    dec b                                         ; $7a1a: $05
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    sub $66                                       ; $7a1e: $d6 $66
    adc $51                                       ; $7a20: $ce $51
    rst $00                                       ; $7a22: $c7
    inc [hl]                                      ; $7a23: $34
    ld [hl+], a                                   ; $7a24: $22
    jr @-$45                                      ; $7a25: $18 $b9

    ld h, a                                       ; $7a27: $67
    ld l, $3a                                     ; $7a28: $2e $3a
    dec h                                         ; $7a2a: $25
    add hl, de                                    ; $7a2b: $19
    ld b, b                                       ; $7a2c: $40
    nop                                           ; $7a2d: $00
    ld bc, $ff00                                  ; $7a2e: $01 $00 $ff
    ld a, a                                       ; $7a31: $7f
    dec d                                         ; $7a32: $15
    ld d, h                                       ; $7a33: $54
    dec d                                         ; $7a34: $15
    ld d, h                                       ; $7a35: $54
    ld [hl], l                                    ; $7a36: $75
    ld b, d                                       ; $7a37: $42
    or c                                          ; $7a38: $b1
    add hl, hl                                    ; $7a39: $29
    call z, Call_094_4414                         ; $7a3a: $cc $14 $44
    inc b                                         ; $7a3d: $04
    pop de                                        ; $7a3e: $d1
    ld sp, $192d                                  ; $7a3f: $31 $2d $19
    ld l, c                                       ; $7a42: $69
    ld [$0024], sp                                ; $7a43: $08 $24 $00
    or c                                          ; $7a46: $b1
    add hl, hl                                    ; $7a47: $29
    ld sp, hl                                     ; $7a48: $f9
    ld d, [hl]                                    ; $7a49: $56
    db $eb                                        ; $7a4a: $eb
    jr nz, jr_094_7ab1                            ; $7a4b: $20 $64

    ld [$52f7], sp                                ; $7a4d: $08 $f7 $52
    rst $28                                       ; $7a50: $ef

jr_094_7a51:
    dec [hl]                                      ; $7a51: $35
    add sp, $24                                   ; $7a52: $e8 $24
    inc hl                                        ; $7a54: $23
    db $10                                        ; $7a55: $10
    ld c, l                                       ; $7a56: $4d
    ld hl, $08a9                                  ; $7a57: $21 $a9 $08
    dec b                                         ; $7a5a: $05
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    cp h                                          ; $7a5e: $bc
    ld l, d                                       ; $7a5f: $6a
    ld [hl], d                                    ; $7a60: $72
    ld d, c                                       ; $7a61: $51
    ld l, h                                       ; $7a62: $6c
    inc [hl]                                      ; $7a63: $34
    dec b                                         ; $7a64: $05
    inc e                                         ; $7a65: $1c
    cp c                                          ; $7a66: $b9
    ld h, a                                       ; $7a67: $67
    cpl                                           ; $7a68: $2f
    ld b, d                                       ; $7a69: $42
    dec h                                         ; $7a6a: $25
    add hl, de                                    ; $7a6b: $19
    ld b, b                                       ; $7a6c: $40
    nop                                           ; $7a6d: $00
    ld bc, $ff00                                  ; $7a6e: $01 $00 $ff
    ld a, a                                       ; $7a71: $7f
    dec hl                                        ; $7a72: $2b
    dec e                                         ; $7a73: $1d
    sub [hl]                                      ; $7a74: $96
    ld c, d                                       ; $7a75: $4a
    ld [hl], e                                    ; $7a76: $73
    ld bc, $00ed                                  ; $7a77: $01 $ed $00
    add a                                         ; $7a7a: $87
    nop                                           ; $7a7b: $00
    inc hl                                        ; $7a7c: $23
    nop                                           ; $7a7d: $00
    call c, $d869                                 ; $7a7e: $dc $69 $d8
    inc [hl]                                      ; $7a81: $34
    db $10                                        ; $7a82: $10
    jr z, jr_094_7a8b                             ; $7a83: $28 $06

    inc e                                         ; $7a85: $1c
    db $10                                        ; $7a86: $10
    jr z, @+$28                                   ; $7a87: $28 $26

    ld h, e                                       ; $7a89: $63
    ld h, d                                       ; $7a8a: $62

jr_094_7a8b:
    add hl, sp                                    ; $7a8b: $39
    ld b, b                                       ; $7a8c: $40
    inc d                                         ; $7a8d: $14
    sbc d                                         ; $7a8e: $9a
    ld d, a                                       ; $7a8f: $57
    xor $41                                       ; $7a90: $ee $41
    push bc                                       ; $7a92: $c5
    inc h                                         ; $7a93: $24
    nop                                           ; $7a94: $00
    db $10                                        ; $7a95: $10
    ld d, c                                       ; $7a96: $51
    ld a, e                                       ; $7a97: $7b
    add hl, hl                                    ; $7a98: $29
    ld l, d                                       ; $7a99: $6a
    add e                                         ; $7a9a: $83
    dec b                                         ; $7a9b: $05
    ret nz                                        ; $7a9c: $c0

    inc c                                         ; $7a9d: $0c
    db $ed                                        ; $7a9e: $ed
    nop                                           ; $7a9f: $00
    add hl, hl                                    ; $7aa0: $29
    ld bc, $0583                                  ; $7aa1: $01 $83 $05
    rst $38                                       ; $7aa4: $ff
    inc bc                                        ; $7aa5: $03
    rst $30                                       ; $7aa6: $f7
    ld de, $1171                                  ; $7aa7: $11 $71 $11
    dec bc                                        ; $7aaa: $0b
    ld de, $0865                                  ; $7aab: $11 $65 $08
    ld bc, $ff00                                  ; $7aae: $01 $00 $ff

jr_094_7ab1:
    ld a, a                                       ; $7ab1: $7f
    ld h, l                                       ; $7ab2: $65
    add hl, de                                    ; $7ab3: $19
    inc b                                         ; $7ab4: $04
    nop                                           ; $7ab5: $00
    db $fd                                        ; $7ab6: $fd
    ld a, $b6                                     ; $7ab7: $3e $b6
    dec c                                         ; $7ab9: $0d
    xor a                                         ; $7aba: $af
    nop                                           ; $7abb: $00
    ld b, l                                       ; $7abc: $45
    nop                                           ; $7abd: $00
    cp l                                          ; $7abe: $bd
    ld [hl], a                                    ; $7abf: $77
    db $fd                                        ; $7ac0: $fd
    ld c, $35                                     ; $7ac1: $0e $35
    ld bc, $0448                                  ; $7ac3: $01 $48 $04
    ld a, a                                       ; $7ac6: $7f
    nop                                           ; $7ac7: $00
    ld [$7201], a                                 ; $7ac8: $ea $01 $72
    inc h                                         ; $7acb: $24
    ld hl, $1c04                                  ; $7acc: $21 $04 $1c
    rlca                                          ; $7acf: $07
    ld l, a                                       ; $7ad0: $6f
    ld h, $67                                     ; $7ad1: $26 $67
    add hl, de                                    ; $7ad3: $19
    ld h, b                                       ; $7ad4: $60
    inc c                                         ; $7ad5: $0c
    sbc [hl]                                      ; $7ad6: $9e
    ld a, a                                       ; $7ad7: $7f
    sub h                                         ; $7ad8: $94
    ld d, [hl]                                    ; $7ad9: $56
    xor l                                         ; $7ada: $ad
    add hl, sp                                    ; $7adb: $39
    add $28                                       ; $7adc: $c6 $28
    sbc d                                         ; $7ade: $9a
    ld a, a                                       ; $7adf: $7f
    sub b                                         ; $7ae0: $90
    ld d, [hl]                                    ; $7ae1: $56
    xor c                                         ; $7ae2: $a9
    add hl, sp                                    ; $7ae3: $39
    jp nz, Jump_094_4d28                          ; $7ae4: $c2 $28 $4d

    ld d, [hl]                                    ; $7ae7: $56
    ld h, [hl]                                    ; $7ae8: $66
    add hl, sp                                    ; $7ae9: $39
    add b                                         ; $7aea: $80
    jr z, jr_094_7aed                             ; $7aeb: $28 $00

jr_094_7aed:
    ld [$0001], sp                                ; $7aed: $08 $01 $00
    rst $38                                       ; $7af0: $ff
    ld a, a                                       ; $7af1: $7f
    dec sp                                        ; $7af2: $3b
    jr jr_094_7b36                                ; $7af3: $18 $41

    ld [$437f], sp                                ; $7af5: $08 $7f $43
    sub [hl]                                      ; $7af8: $96
    ld a, [hl-]                                   ; $7af9: $3a
    adc l                                         ; $7afa: $8d
    dec l                                         ; $7afb: $2d
    add l                                         ; $7afc: $85
    db $10                                        ; $7afd: $10
    cp l                                          ; $7afe: $bd
    ld a, a                                       ; $7aff: $7f
    ld sp, $6656                                  ; $7b00: $31 $56 $66
    ld sp, $1022                                  ; $7b03: $31 $22 $10
    ld e, [hl]                                    ; $7b06: $5e
    ld e, e                                       ; $7b07: $5b
    inc de                                        ; $7b08: $13
    ld a, $e8                                     ; $7b09: $3e $e8
    inc l                                         ; $7b0b: $2c
    ld b, d                                       ; $7b0c: $42
    jr jr_094_7b8e                                ; $7b0d: $18 $7f

    dec sp                                        ; $7b0f: $3b
    rla                                           ; $7b10: $17
    ld [hl+], a                                   ; $7b11: $22
    ret nc                                        ; $7b12: $d0

    inc d                                         ; $7b13: $14
    ld h, a                                       ; $7b14: $67
    inc b                                         ; $7b15: $04
    ldh [rKEY1], a                                ; $7b16: $e0 $4d
    inc d                                         ; $7b18: $14
    db $10                                        ; $7b19: $10
    jr z, jr_094_7b41                             ; $7b1a: $28 $25

    ld b, d                                       ; $7b1c: $42
    jr jr_094_7b7a                                ; $7b1d: $18 $5b

    ld h, e                                       ; $7b1f: $63
    ld [hl], e                                    ; $7b20: $73
    ld b, [hl]                                    ; $7b21: $46
    add hl, hl                                    ; $7b22: $29
    ld hl, $10a5                                  ; $7b23: $21 $a5 $10
    ld d, e                                       ; $7b26: $53
    ld d, d                                       ; $7b27: $52
    ld l, e                                       ; $7b28: $6b
    dec [hl]                                      ; $7b29: $35
    add e                                         ; $7b2a: $83
    db $10                                        ; $7b2b: $10
    ld hl, $0100                                  ; $7b2c: $21 $00 $01
    nop                                           ; $7b2f: $00
    rst $38                                       ; $7b30: $ff
    ld a, a                                       ; $7b31: $7f
    rrca                                          ; $7b32: $0f
    ld e, b                                       ; $7b33: $58
    inc b                                         ; $7b34: $04
    db $10                                        ; $7b35: $10

jr_094_7b36:
    add hl, bc                                    ; $7b36: $09
    ld b, [hl]                                    ; $7b37: $46
    rst $38                                       ; $7b38: $ff
    ld a, e                                       ; $7b39: $7b
    db $eb                                        ; $7b3a: $eb
    dec a                                         ; $7b3b: $3d
    nop                                           ; $7b3c: $00
    nop                                           ; $7b3d: $00
    add hl, bc                                    ; $7b3e: $09
    ld b, [hl]                                    ; $7b3f: $46
    ld e, a                                       ; $7b40: $5f

jr_094_7b41:
    inc de                                        ; $7b41: $13
    ld d, l                                       ; $7b42: $55
    add hl, bc                                    ; $7b43: $09
    ld bc, $0000                                  ; $7b44: $01 $00 $00
    nop                                           ; $7b47: $00
    rst $38                                       ; $7b48: $ff
    ld a, e                                       ; $7b49: $7b
    dec bc                                        ; $7b4a: $0b
    ld b, d                                       ; $7b4b: $42
    nop                                           ; $7b4c: $00
    nop                                           ; $7b4d: $00
    scf                                           ; $7b4e: $37
    ld b, a                                       ; $7b4f: $47
    add hl, bc                                    ; $7b50: $09
    ld b, [hl]                                    ; $7b51: $46
    dec h                                         ; $7b52: $25
    ld hl, $0c40                                  ; $7b53: $21 $40 $0c
    ld a, e                                       ; $7b56: $7b
    ld h, a                                       ; $7b57: $67
    add hl, bc                                    ; $7b58: $09
    ld b, [hl]                                    ; $7b59: $46
    db $ec                                        ; $7b5a: $ec
    inc [hl]                                      ; $7b5b: $34
    daa                                           ; $7b5c: $27
    db $10                                        ; $7b5d: $10
    ld [hl], a                                    ; $7b5e: $77
    ld [hl], a                                    ; $7b5f: $77
    add hl, bc                                    ; $7b60: $09
    ld b, [hl]                                    ; $7b61: $46
    add sp, $44                                   ; $7b62: $e8 $44
    inc hl                                        ; $7b64: $23
    jr nz, @-$6e                                  ; $7b65: $20 $90

    ld e, d                                       ; $7b67: $5a
    ld [hl+], a                                   ; $7b68: $22
    add hl, hl                                    ; $7b69: $29
    ld [hl+], a                                   ; $7b6a: $22
    inc l                                         ; $7b6b: $2c
    nop                                           ; $7b6c: $00
    db $10                                        ; $7b6d: $10
    ld bc, $ff00                                  ; $7b6e: $01 $00 $ff
    ld a, a                                       ; $7b71: $7f
    dec sp                                        ; $7b72: $3b
    jr jr_094_7bb6                                ; $7b73: $18 $41

    ld [$66f5], sp                                ; $7b75: $08 $f5 $66
    rst $28                                       ; $7b78: $ef
    ld c, l                                       ; $7b79: $4d

jr_094_7b7a:
    ld h, $29                                     ; $7b7a: $26 $29
    and d                                         ; $7b7c: $a2
    inc e                                         ; $7b7d: $1c
    adc $31                                       ; $7b7e: $ce $31
    db $fc                                        ; $7b80: $fc
    ld a, [hl]                                    ; $7b81: $7e
    ld c, [hl]                                    ; $7b82: $4e
    ld b, c                                       ; $7b83: $41
    ld b, a                                       ; $7b84: $47
    jr jr_094_7b9b                                ; $7b85: $18 $14

    ld d, e                                       ; $7b87: $53

jr_094_7b88:
    adc $31                                       ; $7b88: $ce $31
    rrc h                                         ; $7b8a: $cb $0c
    ld h, a                                       ; $7b8c: $67
    nop                                           ; $7b8d: $00

jr_094_7b8e:
    sbc [hl]                                      ; $7b8e: $9e
    ccf                                           ; $7b8f: $3f
    ld sp, hl                                     ; $7b90: $f9
    ld sp, $2d2e                                  ; $7b91: $31 $2e $2d
    dec h                                         ; $7b94: $25
    jr @+$30                                      ; $7b95: $18 $2e

    dec l                                         ; $7b97: $2d
    cp $7b                                        ; $7b98: $fe $7b
    xor e                                         ; $7b9a: $ab

jr_094_7b9b:
    dec a                                         ; $7b9b: $3d
    ld [hl+], a                                   ; $7b9c: $22
    inc c                                         ; $7b9d: $0c
    sub [hl]                                      ; $7b9e: $96
    ld e, $f1                                     ; $7b9f: $1e $f1
    db $10                                        ; $7ba1: $10
    adc b                                         ; $7ba2: $88
    jr jr_094_7ba5                                ; $7ba3: $18 $00

jr_094_7ba5:
    nop                                           ; $7ba5: $00
    inc c                                         ; $7ba6: $0c
    ld [hl-], a                                   ; $7ba7: $32
    ld [$4519], sp                                ; $7ba8: $08 $19 $45
    ld [$0442], sp                                ; $7bab: $08 $42 $04
    nop                                           ; $7bae: $00
    nop                                           ; $7baf: $00
    rst $38                                       ; $7bb0: $ff
    ld a, a                                       ; $7bb1: $7f
    ld d, c                                       ; $7bb2: $51
    nop                                           ; $7bb3: $00
    inc b                                         ; $7bb4: $04
    nop                                           ; $7bb5: $00

jr_094_7bb6:
    rst $38                                       ; $7bb6: $ff
    ld a, a                                       ; $7bb7: $7f
    rrca                                          ; $7bb8: $0f
    ld e, [hl]                                    ; $7bb9: $5e
    and $38                                       ; $7bba: $e6 $38
    jr nz, @+$12                                  ; $7bbc: $20 $10

    cp c                                          ; $7bbe: $b9
    ld h, $df                                     ; $7bbf: $26 $df
    ld [hl], a                                    ; $7bc1: $77
    pop de                                        ; $7bc2: $d1
    ld sp, $0043                                  ; $7bc3: $31 $43 $00
    ld de, $607f                                  ; $7bc6: $11 $7f $60
    ld l, d                                       ; $7bc9: $6a
    ld b, b                                       ; $7bca: $40
    ld b, l                                       ; $7bcb: $45
    ld h, b                                       ; $7bcc: $60
    jr jr_094_7b88                                ; $7bcd: $18 $b9

    ld h, $f7                                     ; $7bcf: $26 $f7
    ld a, a                                       ; $7bd1: $7f
    ld [$4341], a                                 ; $7bd2: $ea $41 $43
    db $10                                        ; $7bd5: $10
    ld a, a                                       ; $7bd6: $7f
    ccf                                           ; $7bd7: $3f
    ld [hl], $2a                                  ; $7bd8: $36 $2a
    ld [hl], b                                    ; $7bda: $70
    ld hl, $14a9                                  ; $7bdb: $21 $a9 $14
    ld a, e                                       ; $7bde: $7b
    ccf                                           ; $7bdf: $3f
    ld [hl-], a                                   ; $7be0: $32
    ld l, $6c                                     ; $7be1: $2e $6c
    ld hl, $14a5                                  ; $7be3: $21 $a5 $14
    ld d, d                                       ; $7be6: $52
    ld [hl], $8d                                  ; $7be7: $36 $8d
    dec [hl]                                      ; $7be9: $35
    add l                                         ; $7bea: $85
    jr z, jr_094_7bed                             ; $7beb: $28 $00

jr_094_7bed:
    inc d                                         ; $7bed: $14
    ld bc, $ff00                                  ; $7bee: $01 $00 $ff
    ld a, a                                       ; $7bf1: $7f
    push de                                       ; $7bf2: $d5
    ld bc, $0000                                  ; $7bf3: $01 $00 $00
    db $d3                                        ; $7bf6: $d3
    ld e, d                                       ; $7bf7: $5a
    db $eb                                        ; $7bf8: $eb
    ld b, l                                       ; $7bf9: $45
    dec b                                         ; $7bfa: $05
    add hl, hl                                    ; $7bfb: $29
    ld b, b                                       ; $7bfc: $40
    inc c                                         ; $7bfd: $0c
    rst $38                                       ; $7bfe: $ff
    inc bc                                        ; $7bff: $03
    ld [hl], b                                    ; $7c00: $70
    ld a, [hl-]                                   ; $7c01: $3a
    daa                                           ; $7c02: $27
    dec e                                         ; $7c03: $1d
    ld b, e                                       ; $7c04: $43
    ld [$36f7], sp                                ; $7c05: $08 $f7 $36
    dec d                                         ; $7c08: $15
    ld e, $ec                                     ; $7c09: $1e $ec
    inc b                                         ; $7c0b: $04
    inc b                                         ; $7c0c: $04
    inc b                                         ; $7c0d: $04
    rst $30                                       ; $7c0e: $f7
    ld [hl], $3b                                  ; $7c0f: $36 $3b
    ld [de], a                                    ; $7c11: $12
    rst $08                                       ; $7c12: $cf
    nop                                           ; $7c13: $00
    ld b, l                                       ; $7c14: $45
    inc c                                         ; $7c15: $0c
    cp $7f                                        ; $7c16: $fe $7f
    adc [hl]                                      ; $7c18: $8e
    halt                                          ; $7c19: $76
    jr nz, @+$37                                  ; $7c1a: $20 $35

    ld h, b                                       ; $7c1c: $60
    inc c                                         ; $7c1d: $0c
    rst $30                                       ; $7c1e: $f7
    ld [hl], $ff                                  ; $7c1f: $36 $ff
    inc bc                                        ; $7c21: $03
    jp nc, Jump_094_450c                          ; $7c22: $d2 $0c $45

    inc e                                         ; $7c25: $1c
    ld [hl], a                                    ; $7c26: $77
    daa                                           ; $7c27: $27
    inc l                                         ; $7c28: $2c
    ld d, $07                                     ; $7c29: $16 $07
    dec b                                         ; $7c2b: $05
    inc h                                         ; $7c2c: $24
    nop                                           ; $7c2d: $00
    ld bc, $ff00                                  ; $7c2e: $01 $00 $ff
    ld a, a                                       ; $7c31: $7f
    rrca                                          ; $7c32: $0f
    ld e, b                                       ; $7c33: $58
    inc b                                         ; $7c34: $04
    db $10                                        ; $7c35: $10
    cp b                                          ; $7c36: $b8
    ld c, [hl]                                    ; $7c37: $4e
    or d                                          ; $7c38: $b2
    add hl, hl                                    ; $7c39: $29
    ld a, [bc]                                    ; $7c3a: $0a
    add hl, de                                    ; $7c3b: $19
    add h                                         ; $7c3c: $84
    inc b                                         ; $7c3d: $04
    call c, Call_000_127f                         ; $7c3e: $dc $7f $12
    ld [hl], e                                    ; $7c41: $73
    add hl, hl                                    ; $7c42: $29
    dec a                                         ; $7c43: $3d
    inc hl                                        ; $7c44: $23
    inc d                                         ; $7c45: $14
    rst $18                                       ; $7c46: $df
    ld [hl-], a                                   ; $7c47: $32
    sub $25                                       ; $7c48: $d6 $25
    ld d, c                                       ; $7c4a: $51
    ld hl, $1406                                  ; $7c4b: $21 $06 $14
    ei                                            ; $7c4e: $fb
    ld a, a                                       ; $7c4f: $7f
    ld l, $5b                                     ; $7c50: $2e $5b
    and $35                                       ; $7c52: $e6 $35
    and c                                         ; $7c54: $a1
    db $10                                        ; $7c55: $10
    sbc $6a                                       ; $7c56: $de $6a
    push de                                       ; $7c58: $d5
    ld h, l                                       ; $7c59: $65
    adc $40                                       ; $7c5a: $ce $40
    dec b                                         ; $7c5c: $05
    ld [$3f1f], sp                                ; $7c5d: $08 $1f $3f
    ld e, c                                       ; $7c60: $59
    ld [hl], $b4                                  ; $7c61: $36 $b4
    dec l                                         ; $7c63: $2d
    adc c                                         ; $7c64: $89
    inc h                                         ; $7c65: $24
    rst $10                                       ; $7c66: $d7
    ld de, $04ce                                  ; $7c67: $11 $ce $04
    ld c, c                                       ; $7c6a: $49
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    ld bc, $ff00                                  ; $7c6e: $01 $00 $ff
    ld a, a                                       ; $7c71: $7f
    rrca                                          ; $7c72: $0f
    ld e, b                                       ; $7c73: $58
    inc b                                         ; $7c74: $04
    db $10                                        ; $7c75: $10
    cp l                                          ; $7c76: $bd
    ld h, e                                       ; $7c77: $63
    ld [hl], h                                    ; $7c78: $74
    dec l                                         ; $7c79: $2d
    ld l, e                                       ; $7c7a: $6b
    jr jr_094_7ca0                                ; $7c7b: $18 $23

    ld [$26de], sp                                ; $7c7d: $08 $de $26
    ld [hl], l                                    ; $7c80: $75
    dec d                                         ; $7c81: $15
    ld l, [hl]                                    ; $7c82: $6e
    jr @+$42                                      ; $7c83: $18 $40

    jr jr_094_7ce0                                ; $7c85: $18 $59

    ld h, e                                       ; $7c87: $63
    xor $59                                       ; $7c88: $ee $59
    dec b                                         ; $7c8a: $05
    dec [hl]                                      ; $7c8b: $35
    dec b                                         ; $7c8c: $05
    ld [$3fbf], sp                                ; $7c8d: $08 $bf $3f
    db $dd                                        ; $7c90: $dd
    ld [bc], a                                    ; $7c91: $02
    ld l, a                                       ; $7c92: $6f
    add hl, bc                                    ; $7c93: $09
    inc h                                         ; $7c94: $24
    inc e                                         ; $7c95: $1c
    cp l                                          ; $7c96: $bd
    ld [hl], a                                    ; $7c97: $77
    rst $08                                       ; $7c98: $cf
    ld a, [hl+]                                   ; $7c99: $2a
    ld h, e                                       ; $7c9a: $63
    add hl, de                                    ; $7c9b: $19
    add b                                         ; $7c9c: $80
    ld [$637b], sp                                ; $7c9d: $08 $7b $63

jr_094_7ca0:
    pop af                                        ; $7ca0: $f1
    ld b, c                                       ; $7ca1: $41
    ld a, [bc]                                    ; $7ca2: $0a
    dec [hl]                                      ; $7ca3: $35
    ld [bc], a                                    ; $7ca4: $02
    jr jr_094_7cf9                                ; $7ca5: $18 $52

    ld b, d                                       ; $7ca7: $42
    dec hl                                        ; $7ca8: $2b
    add hl, hl                                    ; $7ca9: $29
    ld b, h                                       ; $7caa: $44
    inc e                                         ; $7cab: $1c
    ld bc, $0110                                  ; $7cac: $01 $10 $01
    nop                                           ; $7caf: $00
    rst $38                                       ; $7cb0: $ff
    ld a, a                                       ; $7cb1: $7f
    ld l, [hl]                                    ; $7cb2: $6e
    ld sp, $0c64                                  ; $7cb3: $31 $64 $0c
    db $ec                                        ; $7cb6: $ec
    ld d, c                                       ; $7cb7: $51
    ld e, $17                                     ; $7cb8: $1e $17
    jr jr_094_7cbd                                ; $7cba: $18 $01

    ld h, a                                       ; $7cbc: $67

jr_094_7cbd:
    db $10                                        ; $7cbd: $10
    ld hl, sp+$73                                 ; $7cbe: $f8 $73
    db $f4                                        ; $7cc0: $f4
    ld h, d                                       ; $7cc1: $62
    db $ec                                        ; $7cc2: $ec
    ld d, c                                       ; $7cc3: $51
    call nz, $ec20                                ; $7cc4: $c4 $20 $ec
    ld d, c                                       ; $7cc7: $51
    ld e, c                                       ; $7cc8: $59
    ld a, d                                       ; $7cc9: $7a
    adc a                                         ; $7cca: $8f
    ld d, b                                       ; $7ccb: $50
    inc hl                                        ; $7ccc: $23
    inc e                                         ; $7ccd: $1c
    rst $38                                       ; $7cce: $ff
    ld a, $36                                     ; $7ccf: $3e $36
    ld [hl-], a                                   ; $7cd1: $32
    ld l, [hl]                                    ; $7cd2: $6e
    add hl, hl                                    ; $7cd3: $29
    jp hl                                         ; $7cd4: $e9


    inc d                                         ; $7cd5: $14
    rst $38                                       ; $7cd6: $ff
    ccf                                           ; $7cd7: $3f
    ei                                            ; $7cd8: $fb
    ld a, $f2                                     ; $7cd9: $3e $f2
    add hl, hl                                    ; $7cdb: $29
    add hl, bc                                    ; $7cdc: $09
    dec d                                         ; $7cdd: $15
    dec de                                        ; $7cde: $1b
    ld b, e                                       ; $7cdf: $43

Call_094_7ce0:
jr_094_7ce0:
    db $f4                                        ; $7ce0: $f4
    dec l                                         ; $7ce1: $2d
    rst $28                                       ; $7ce2: $ef
    db $10                                        ; $7ce3: $10
    ld b, [hl]                                    ; $7ce4: $46
    inc b                                         ; $7ce5: $04
    ld e, b                                       ; $7ce6: $58
    ld [hl+], a                                   ; $7ce7: $22
    or d                                          ; $7ce8: $b2
    ld hl, $10ab                                  ; $7ce9: $21 $ab $10
    ld [hl+], a                                   ; $7cec: $22
    nop                                           ; $7ced: $00
    ld bc, $ff00                                  ; $7cee: $01 $00 $ff
    ld a, a                                       ; $7cf1: $7f
    dec d                                         ; $7cf2: $15
    ld d, h                                       ; $7cf3: $54
    dec d                                         ; $7cf4: $15
    ld d, h                                       ; $7cf5: $54
    ld sp, hl                                     ; $7cf6: $f9
    ld b, [hl]                                    ; $7cf7: $46
    pop de                                        ; $7cf8: $d1

jr_094_7cf9:
    ld e, c                                       ; $7cf9: $59
    dec b                                         ; $7cfa: $05
    dec [hl]                                      ; $7cfb: $35
    ld bc, $0508                                  ; $7cfc: $01 $08 $05
    dec [hl]                                      ; $7cff: $35
    sbc c                                         ; $7d00: $99
    ld a, [hl-]                                   ; $7d01: $3a
    rrca                                          ; $7d02: $0f
    dec e                                         ; $7d03: $1d
    ld h, a                                       ; $7d04: $67
    db $10                                        ; $7d05: $10
    rrca                                          ; $7d06: $0f
    ld hl, $76ff                                  ; $7d07: $21 $ff $76
    or e                                          ; $7d0a: $b3
    jr nc, jr_094_7d30                            ; $7d0b: $30 $23

    nop                                           ; $7d0d: $00
    rst $28                                       ; $7d0e: $ef
    dec a                                         ; $7d0f: $3d
    rst $28                                       ; $7d10: $ef
    dec a                                         ; $7d11: $3d
    rst $28                                       ; $7d12: $ef
    dec a                                         ; $7d13: $3d
    rst $28                                       ; $7d14: $ef
    dec a                                         ; $7d15: $3d
    rrca                                          ; $7d16: $0f
    ld hl, $76ff                                  ; $7d17: $21 $ff $76
    inc sp                                        ; $7d1a: $33
    ld [hl], b                                    ; $7d1b: $70
    inc hl                                        ; $7d1c: $23
    nop                                           ; $7d1d: $00
    dec b                                         ; $7d1e: $05
    dec [hl]                                      ; $7d1f: $35
    sbc l                                         ; $7d20: $9d
    ld [bc], a                                    ; $7d21: $02
    rrca                                          ; $7d22: $0f
    dec e                                         ; $7d23: $1d
    ld d, $10                                     ; $7d24: $16 $10
    ld sp, hl                                     ; $7d26: $f9
    ld b, [hl]                                    ; $7d27: $46
    ld d, c                                       ; $7d28: $51
    ld c, c                                       ; $7d29: $49
    xor c                                         ; $7d2a: $a9
    jr z, @+$03                                   ; $7d2b: $28 $01

    ld [$0001], sp                                ; $7d2d: $08 $01 $00

jr_094_7d30:
    rst $38                                       ; $7d30: $ff
    ld a, a                                       ; $7d31: $7f
    dec d                                         ; $7d32: $15
    ld d, h                                       ; $7d33: $54
    dec d                                         ; $7d34: $15
    ld d, h                                       ; $7d35: $54
    dec de                                        ; $7d36: $1b
    ld b, a                                       ; $7d37: $47
    jp nc, $e849                                  ; $7d38: $d2 $49 $e8

    jr nc, jr_094_7d3d                            ; $7d3b: $30 $00

jr_094_7d3d:
    inc d                                         ; $7d3d: $14
    add sp, $30                                   ; $7d3e: $e8 $30
    sbc a                                         ; $7d40: $9f
    ld a, [hl-]                                   ; $7d41: $3a
    rrca                                          ; $7d42: $0f
    dec h                                         ; $7d43: $25
    ld h, a                                       ; $7d44: $67
    db $10                                        ; $7d45: $10
    rrca                                          ; $7d46: $0f
    ld hl, $7776                                  ; $7d47: $21 $76 $77
    ld c, [hl]                                    ; $7d4a: $4e
    ld sp, $0023                                  ; $7d4b: $31 $23 $00
    rra                                           ; $7d4e: $1f
    daa                                           ; $7d4f: $27
    ld [hl], e                                    ; $7d50: $73
    ld hl, $10aa                                  ; $7d51: $21 $aa $10
    ld [bc], a                                    ; $7d54: $02
    nop                                           ; $7d55: $00
    rrca                                          ; $7d56: $0f
    ld hl, $7776                                  ; $7d57: $21 $76 $77
    ld d, b                                       ; $7d5a: $50
    ld e, c                                       ; $7d5b: $59
    inc hl                                        ; $7d5c: $23
    nop                                           ; $7d5d: $00
    rst $28                                       ; $7d5e: $ef
    dec a                                         ; $7d5f: $3d
    inc de                                        ; $7d60: $13
    dec sp                                        ; $7d61: $3b
    rrca                                          ; $7d62: $0f
    dec h                                         ; $7d63: $25
    ldh [$08], a                                  ; $7d64: $e0 $08
    rst $28                                       ; $7d66: $ef
    dec a                                         ; $7d67: $3d
    rra                                           ; $7d68: $1f
    ld bc, $250f                                  ; $7d69: $01 $0f $25
    nop                                           ; $7d6c: $00
    ld b, h                                       ; $7d6d: $44
    ld bc, $ff00                                  ; $7d6e: $01 $00 $ff
    ld a, a                                       ; $7d71: $7f
    dec d                                         ; $7d72: $15
    ld d, h                                       ; $7d73: $54
    dec d                                         ; $7d74: $15
    ld d, h                                       ; $7d75: $54
    cp b                                          ; $7d76: $b8
    ld b, a                                       ; $7d77: $47
    dec l                                         ; $7d78: $2d
    ld a, $e6                                     ; $7d79: $3e $e6
    inc e                                         ; $7d7b: $1c
    ld b, d                                       ; $7d7c: $42
    ld [$1d06], sp                                ; $7d7d: $08 $06 $1d
    sbc a                                         ; $7d80: $9f
    ld a, [hl-]                                   ; $7d81: $3a
    rrca                                          ; $7d82: $0f
    dec h                                         ; $7d83: $25
    ld h, a                                       ; $7d84: $67
    db $10                                        ; $7d85: $10
    rrca                                          ; $7d86: $0f
    ld hl, $7776                                  ; $7d87: $21 $76 $77
    ld sp, $4218                                  ; $7d8a: $31 $18 $42
    ld [$3def], sp                                ; $7d8d: $08 $ef $3d
    rst $28                                       ; $7d90: $ef
    dec a                                         ; $7d91: $3d
    rst $28                                       ; $7d92: $ef
    dec a                                         ; $7d93: $3d
    rst $28                                       ; $7d94: $ef
    dec a                                         ; $7d95: $3d
    ld b, $1d                                     ; $7d96: $06 $1d
    sbc a                                         ; $7d98: $9f
    ld l, d                                       ; $7d99: $6a
    rrca                                          ; $7d9a: $0f
    dec h                                         ; $7d9b: $25
    ld h, a                                       ; $7d9c: $67
    jr nc, @+$11                                  ; $7d9d: $30 $0f

    ld hl, $7776                                  ; $7d9f: $21 $76 $77
    dec a                                         ; $7da2: $3d
    add hl, bc                                    ; $7da3: $09
    ld b, d                                       ; $7da4: $42
    ld [$3efa], sp                                ; $7da5: $08 $fa $3e
    ld c, a                                       ; $7da8: $4f
    dec [hl]                                      ; $7da9: $35
    ld h, a                                       ; $7daa: $67
    inc e                                         ; $7dab: $1c
    ld b, d                                       ; $7dac: $42
    ld [$0001], sp                                ; $7dad: $08 $01 $00
    rst $38                                       ; $7db0: $ff
    ld a, a                                       ; $7db1: $7f
    dec d                                         ; $7db2: $15
    ld d, h                                       ; $7db3: $54
    dec d                                         ; $7db4: $15
    ld d, h                                       ; $7db5: $54
    ld a, a                                       ; $7db6: $7f
    ld d, e                                       ; $7db7: $53
    dec l                                         ; $7db8: $2d
    ld c, [hl]                                    ; $7db9: $4e
    and $2c                                       ; $7dba: $e6 $2c
    ld hl, $e604                                  ; $7dbc: $21 $04 $e6
    inc l                                         ; $7dbf: $2c
    sbc a                                         ; $7dc0: $9f
    ld a, [hl-]                                   ; $7dc1: $3a
    rst $08                                       ; $7dc2: $cf
    inc h                                         ; $7dc3: $24
    dec h                                         ; $7dc4: $25
    inc c                                         ; $7dc5: $0c
    rst $08                                       ; $7dc6: $cf
    inc h                                         ; $7dc7: $24
    ld a, l                                       ; $7dc8: $7d
    cpl                                           ; $7dc9: $2f
    push bc                                       ; $7dca: $c5
    add hl, hl                                    ; $7dcb: $29
    ld hl, $e604                                  ; $7dcc: $21 $04 $e6
    inc l                                         ; $7dcf: $2c
    ccf                                           ; $7dd0: $3f
    ld bc, $24cf                                  ; $7dd1: $01 $cf $24
    dec hl                                        ; $7dd4: $2b
    nop                                           ; $7dd5: $00
    rst $08                                       ; $7dd6: $cf
    inc h                                         ; $7dd7: $24
    ld a, l                                       ; $7dd8: $7d
    cpl                                           ; $7dd9: $2f
    jp hl                                         ; $7dda: $e9


    ld d, h                                       ; $7ddb: $54
    ld hl, $7f04                                  ; $7ddc: $21 $04 $7f
    ld d, e                                       ; $7ddf: $53

jr_094_7de0:
    pop af                                        ; $7de0: $f1
    dec a                                         ; $7de1: $3d
    jp hl                                         ; $7de2: $e9


    inc e                                         ; $7de3: $1c
    ld [bc], a                                    ; $7de4: $02
    nop                                           ; $7de5: $00
    rst $08                                       ; $7de6: $cf
    inc h                                         ; $7de7: $24
    cp a                                          ; $7de8: $bf
    ld b, [hl]                                    ; $7de9: $46
    rst $08                                       ; $7dea: $cf
    add hl, sp                                    ; $7deb: $39
    ld b, a                                       ; $7dec: $47
    dec l                                         ; $7ded: $2d
    ld bc, $ff00                                  ; $7dee: $01 $00 $ff
    ld a, a                                       ; $7df1: $7f
    dec d                                         ; $7df2: $15
    ld d, h                                       ; $7df3: $54
    dec d                                         ; $7df4: $15
    ld d, h                                       ; $7df5: $54
    sub $5e                                       ; $7df6: $d6 $5e
    xor l                                         ; $7df8: $ad
    ld d, c                                       ; $7df9: $51
    and $2c                                       ; $7dfa: $e6 $2c
    ld b, d                                       ; $7dfc: $42
    ld [$2ce6], sp                                ; $7dfd: $08 $e6 $2c

Call_094_7e00:
    dec de                                        ; $7e00: $1b
    dec sp                                        ; $7e01: $3b
    ld c, h                                       ; $7e02: $4c
    dec l                                         ; $7e03: $2d
    rlca                                          ; $7e04: $07
    db $10                                        ; $7e05: $10
    ld c, h                                       ; $7e06: $4c
    dec l                                         ; $7e07: $2d
    sub $5e                                       ; $7e08: $d6 $5e
    ld l, $19                                     ; $7e0a: $2e $19
    ld b, d                                       ; $7e0c: $42
    ld [$5ed6], sp                                ; $7e0d: $08 $d6 $5e
    sub l                                         ; $7e10: $95
    add hl, hl                                    ; $7e11: $29
    adc d                                         ; $7e12: $8a
    inc c                                         ; $7e13: $0c
    ld b, d                                       ; $7e14: $42
    ld [$2ce6], sp                                ; $7e15: $08 $e6 $2c
    rst $38                                       ; $7e18: $ff
    ld a, a                                       ; $7e19: $7f
    ld c, h                                       ; $7e1a: $4c
    dec l                                         ; $7e1b: $2d
    sub d                                         ; $7e1c: $92
    ld d, d                                       ; $7e1d: $52
    ld c, h                                       ; $7e1e: $4c
    dec l                                         ; $7e1f: $2d
    sub $5e                                       ; $7e20: $d6 $5e
    or [hl]                                       ; $7e22: $b6
    add hl, de                                    ; $7e23: $19
    ld b, d                                       ; $7e24: $42
    ld [$290f], sp                                ; $7e25: $08 $0f $29
    cp a                                          ; $7e28: $bf
    ld b, [hl]                                    ; $7e29: $46
    rst $08                                       ; $7e2a: $cf
    add hl, sp                                    ; $7e2b: $39
    ld b, a                                       ; $7e2c: $47
    dec l                                         ; $7e2d: $2d
    ld bc, $ff00                                  ; $7e2e: $01 $00 $ff
    ld a, a                                       ; $7e31: $7f
    dec d                                         ; $7e32: $15
    ld d, h                                       ; $7e33: $54
    dec d                                         ; $7e34: $15
    ld d, h                                       ; $7e35: $54
    ccf                                           ; $7e36: $3f
    ld b, a                                       ; $7e37: $47
    inc de                                        ; $7e38: $13
    ld l, $e7                                     ; $7e39: $2e $e7
    jr jr_094_7e5e                                ; $7e3b: $18 $21

    inc b                                         ; $7e3d: $04
    rst $20                                       ; $7e3e: $e7
    jr jr_094_7de0                                ; $7e3f: $18 $9f

    ld a, [hl-]                                   ; $7e41: $3a
    rrca                                          ; $7e42: $0f
    dec h                                         ; $7e43: $25
    ld h, a                                       ; $7e44: $67
    db $10                                        ; $7e45: $10
    rrca                                          ; $7e46: $0f
    ld hl, $2e9d                                  ; $7e47: $21 $9d $2e
    ldh a, [rDIV]                                 ; $7e4a: $f0 $04
    ld hl, $0f04                                  ; $7e4c: $21 $04 $0f
    ld hl, $026b                                  ; $7e4f: $21 $6b $02
    xor c                                         ; $7e52: $a9
    dec c                                         ; $7e53: $0d
    ld hl, $e704                                  ; $7e54: $21 $04 $e7
    jr @+$01                                      ; $7e57: $18 $ff

    dec sp                                        ; $7e59: $3b
    rrca                                          ; $7e5a: $0f
    dec h                                         ; $7e5b: $25
    ld h, b                                       ; $7e5c: $60
    ld b, h                                       ; $7e5d: $44

jr_094_7e5e:
    cp h                                          ; $7e5e: $bc
    ld l, [hl]                                    ; $7e5f: $6e
    sub c                                         ; $7e60: $91
    ld b, l                                       ; $7e61: $45
    rst $00                                       ; $7e62: $c7
    inc e                                         ; $7e63: $1c
    ld hl, $0f04                                  ; $7e64: $21 $04 $0f
    ld hl, $0de6                                  ; $7e67: $21 $e6 $0d
    pop bc                                        ; $7e6a: $c1
    inc b                                         ; $7e6b: $04
    ld c, a                                       ; $7e6c: $4f
    ld c, d                                       ; $7e6d: $4a
    ld bc, $ff00                                  ; $7e6e: $01 $00 $ff
    ld a, a                                       ; $7e71: $7f
    xor e                                         ; $7e72: $ab
    dec c                                         ; $7e73: $0d
    add d                                         ; $7e74: $82
    nop                                           ; $7e75: $00
    or e                                          ; $7e76: $b3
    ld e, l                                       ; $7e77: $5d
    ld c, [hl]                                    ; $7e78: $4e
    ld c, c                                       ; $7e79: $49
    xor b                                         ; $7e7a: $a8
    jr nc, jr_094_7e7e                            ; $7e7b: $30 $01

    inc c                                         ; $7e7d: $0c

jr_094_7e7e:
    inc l                                         ; $7e7e: $2c
    dec a                                         ; $7e7f: $3d
    ld l, [hl]                                    ; $7e80: $6e
    ld [bc], a                                    ; $7e81: $02
    add l                                         ; $7e82: $85
    ld bc, $00a1                                  ; $7e83: $01 $a1 $00
    ei                                            ; $7e86: $fb
    ld a, $33                                     ; $7e87: $3e $33
    ld a, $2c                                     ; $7e89: $3e $2c
    ld b, c                                       ; $7e8b: $41
    ld h, a                                       ; $7e8c: $67
    inc e                                         ; $7e8d: $1c
    inc l                                         ; $7e8e: $2c
    dec a                                         ; $7e8f: $3d
    halt                                          ; $7e90: $76
    ld [bc], a                                    ; $7e91: $02
    ld h, l                                       ; $7e92: $65
    add hl, sp                                    ; $7e93: $39
    and b                                         ; $7e94: $a0
    inc c                                         ; $7e95: $0c
    ld a, e                                       ; $7e96: $7b
    ld a, $b3                                     ; $7e97: $3e $b3
    dec a                                         ; $7e99: $3d
    inc l                                         ; $7e9a: $2c
    ld b, c                                       ; $7e9b: $41
    rlca                                          ; $7e9c: $07
    inc e                                         ; $7e9d: $1c
    ld h, [hl]                                    ; $7e9e: $66
    jr z, @+$11                                   ; $7e9f: $28 $0f

    ld [bc], a                                    ; $7ea1: $02
    nop                                           ; $7ea2: $00
    ld bc, $0000                                  ; $7ea3: $01 $00 $00
    inc d                                         ; $7ea6: $14
    ld [hl+], a                                   ; $7ea7: $22
    ld c, h                                       ; $7ea8: $4c
    ld hl, $2045                                  ; $7ea9: $21 $45 $20
    inc bc                                        ; $7eac: $03
    inc c                                         ; $7ead: $0c
    ld bc, $ff00                                  ; $7eae: $01 $00 $ff
    ld a, a                                       ; $7eb1: $7f
    xor e                                         ; $7eb2: $ab
    dec c                                         ; $7eb3: $0d
    add d                                         ; $7eb4: $82
    nop                                           ; $7eb5: $00
    rla                                           ; $7eb6: $17
    ld [hl+], a                                   ; $7eb7: $22
    ld [hl], c                                    ; $7eb8: $71
    dec e                                         ; $7eb9: $1d
    db $ec                                        ; $7eba: $ec
    jr @+$48                                      ; $7ebb: $18 $46

    inc d                                         ; $7ebd: $14
    or b                                          ; $7ebe: $b0
    ld d, [hl]                                    ; $7ebf: $56
    jp hl                                         ; $7ec0: $e9


    ld c, c                                       ; $7ec1: $49
    nop                                           ; $7ec2: $00
    dec [hl]                                      ; $7ec3: $35
    ld b, b                                       ; $7ec4: $40
    inc d                                         ; $7ec5: $14
    or h                                          ; $7ec6: $b4
    ld b, [hl]                                    ; $7ec7: $46
    db $ed                                        ; $7ec8: $ed
    add hl, sp                                    ; $7ec9: $39
    inc b                                         ; $7eca: $04
    dec h                                         ; $7ecb: $25
    ld b, h                                       ; $7ecc: $44
    inc b                                         ; $7ecd: $04
    inc de                                        ; $7ece: $13
    ld [hl-], a                                   ; $7ecf: $32
    adc [hl]                                      ; $7ed0: $8e
    add hl, hl                                    ; $7ed1: $29
    ld [$4424], a                                 ; $7ed2: $ea $24 $44
    inc e                                         ; $7ed5: $1c
    inc [hl]                                      ; $7ed6: $34
    ld d, [hl]                                    ; $7ed7: $56
    ld l, l                                       ; $7ed8: $6d
    ld c, c                                       ; $7ed9: $49
    add h                                         ; $7eda: $84
    inc [hl]                                      ; $7edb: $34
    inc b                                         ; $7edc: $04
    inc d                                         ; $7edd: $14
    rst $28                                       ; $7ede: $ef
    dec a                                         ; $7edf: $3d
    rst $28                                       ; $7ee0: $ef
    dec a                                         ; $7ee1: $3d
    rst $28                                       ; $7ee2: $ef
    dec a                                         ; $7ee3: $3d
    rst $28                                       ; $7ee4: $ef
    dec a                                         ; $7ee5: $3d
    inc l                                         ; $7ee6: $2c
    ld b, [hl]                                    ; $7ee7: $46
    pop hl                                        ; $7ee8: $e1
    jr z, jr_094_7eeb                             ; $7ee9: $28 $00

jr_094_7eeb:
    inc d                                         ; $7eeb: $14
    nop                                           ; $7eec: $00
    nop                                           ; $7eed: $00
    ld bc, $ff00                                  ; $7eee: $01 $00 $ff
    ld a, a                                       ; $7ef1: $7f
    xor e                                         ; $7ef2: $ab
    dec c                                         ; $7ef3: $0d
    add d                                         ; $7ef4: $82
    nop                                           ; $7ef5: $00
    rst $38                                       ; $7ef6: $ff
    ld a, a                                       ; $7ef7: $7f
    or h                                          ; $7ef8: $b4
    ld e, [hl]                                    ; $7ef9: $5e
    ld l, e                                       ; $7efa: $6b
    dec a                                         ; $7efb: $3d
    jp hl                                         ; $7efc: $e9


    inc e                                         ; $7efd: $1c
    sub e                                         ; $7efe: $93
    ld d, [hl]                                    ; $7eff: $56
    ld l, d                                       ; $7f00: $6a
    ld sp, $18c5                                  ; $7f01: $31 $c5 $18
    ld hl, $9f08                                  ; $7f04: $21 $08 $9f
    ld [hl], $b5                                  ; $7f07: $36 $b5
    dec b                                         ; $7f09: $05
    ld [$8504], a                                 ; $7f0a: $ea $04 $85
    ld [$1db0], sp                                ; $7f0d: $08 $b0 $1d
    db $eb                                        ; $7f10: $eb
    nop                                           ; $7f11: $00
    ld h, l                                       ; $7f12: $65
    nop                                           ; $7f13: $00

Call_094_7f14:
    nop                                           ; $7f14: $00
    inc b                                         ; $7f15: $04
    sbc e                                         ; $7f16: $9b
    ld d, [hl]                                    ; $7f17: $56
    or c                                          ; $7f18: $b1
    dec h                                         ; $7f19: $25
    ld [$8124], a                                 ; $7f1a: $ea $24 $81
    jr z, jr_094_7f3a                             ; $7f1d: $28 $1b

    ld b, a                                       ; $7f1f: $47
    inc d                                         ; $7f20: $14
    ld l, $0e                                     ; $7f21: $2e $0e
    dec d                                         ; $7f23: $15
    ld h, a                                       ; $7f24: $67
    jr jr_094_7f4f                                ; $7f25: $18 $28

    ld c, a                                       ; $7f27: $4f
    inc b                                         ; $7f28: $04
    ld h, $e0                                     ; $7f29: $26 $e0
    nop                                           ; $7f2b: $00
    ld b, b                                       ; $7f2c: $40
    nop                                           ; $7f2d: $00
    ld bc, $ff00                                  ; $7f2e: $01 $00 $ff
    ld a, a                                       ; $7f31: $7f
    xor e                                         ; $7f32: $ab
    dec c                                         ; $7f33: $0d
    add d                                         ; $7f34: $82
    nop                                           ; $7f35: $00
    ld c, $2d                                     ; $7f36: $0e $2d
    ret c                                         ; $7f38: $d8

    ld d, d                                       ; $7f39: $52

jr_094_7f3a:
    or d                                          ; $7f3a: $b2
    ld hl, $0000                                  ; $7f3b: $21 $00 $00
    or a                                          ; $7f3e: $b7
    ld l, d                                       ; $7f3f: $6a
    push de                                       ; $7f40: $d5
    ld c, c                                       ; $7f41: $49
    ld c, $2d                                     ; $7f42: $0e $2d
    ld b, a                                       ; $7f44: $47
    inc d                                         ; $7f45: $14
    sbc [hl]                                      ; $7f46: $9e
    scf                                           ; $7f47: $37
    ld hl, sp+$1d                                 ; $7f48: $f8 $1d
    ld c, $15                                     ; $7f4a: $0e $15
    ld c, b                                       ; $7f4c: $48
    nop                                           ; $7f4d: $00
    ld e, a                                       ; $7f4e: $5f

jr_094_7f4f:
    ld e, $b9                                     ; $7f4f: $1e $b9
    jr nz, jr_094_7fc2                            ; $7f51: $20 $6f

    jr jr_094_7f58                                ; $7f53: $18 $03

    inc b                                         ; $7f55: $04
    ccf                                           ; $7f56: $3f
    ld e, d                                       ; $7f57: $5a

jr_094_7f58:
    ld d, a                                       ; $7f58: $57
    ld sp, $2d0e                                  ; $7f59: $31 $0e $2d
    ld b, a                                       ; $7f5c: $47
    inc b                                         ; $7f5d: $04
    or h                                          ; $7f5e: $b4
    ld a, [hl]                                    ; $7f5f: $7e
    ld [hl], b                                    ; $7f60: $70
    ld h, l                                       ; $7f61: $65
    ld c, $2d                                     ; $7f62: $0e $2d
    ld b, h                                       ; $7f64: $44
    jr z, @-$2e                                   ; $7f65: $28 $d0

    ld c, l                                       ; $7f67: $4d
    jr nc, jr_094_7f9f                            ; $7f68: $30 $35

    ld l, c                                       ; $7f6a: $69
    jr jr_094_7faf                                ; $7f6b: $18 $42

    ld [$0001], sp                                ; $7f6d: $08 $01 $00
    rst $38                                       ; $7f70: $ff
    ld a, a                                       ; $7f71: $7f
    xor e                                         ; $7f72: $ab
    dec c                                         ; $7f73: $0d
    add d                                         ; $7f74: $82
    nop                                           ; $7f75: $00
    ld a, a                                       ; $7f76: $7f
    inc sp                                        ; $7f77: $33
    dec d                                         ; $7f78: $15
    ld [hl-], a                                   ; $7f79: $32
    adc [hl]                                      ; $7f7a: $8e
    inc l                                         ; $7f7b: $2c
    ld [bc], a                                    ; $7f7c: $02
    inc e                                         ; $7f7d: $1c
    xor $7e                                       ; $7f7e: $ee $7e
    ld c, d                                       ; $7f80: $4a
    ld e, [hl]                                    ; $7f81: $5e
    add $3d                                       ; $7f82: $c6 $3d
    and l                                         ; $7f84: $a5
    inc e                                         ; $7f85: $1c
    rst $38                                       ; $7f86: $ff
    inc bc                                        ; $7f87: $03
    cp c                                          ; $7f88: $b9
    ld [bc], a                                    ; $7f89: $02
    ld d, c                                       ; $7f8a: $51
    dec e                                         ; $7f8b: $1d
    dec b                                         ; $7f8c: $05
    nop                                           ; $7f8d: $00
    rst $28                                       ; $7f8e: $ef
    ld c, a                                       ; $7f8f: $4f
    ld h, l                                       ; $7f90: $65
    ld [hl-], a                                   ; $7f91: $32
    add $3d                                       ; $7f92: $c6 $3d
    and h                                         ; $7f94: $a4
    inc c                                         ; $7f95: $0c
    ld a, e                                       ; $7f96: $7b
    ld c, e                                       ; $7f97: $4b
    ld d, d                                       ; $7f98: $52
    ld a, [hl-]                                   ; $7f99: $3a
    add $3d                                       ; $7f9a: $c6 $3d
    add l                                         ; $7f9c: $85
    nop                                           ; $7f9d: $00
    rra                                           ; $7f9e: $1f

jr_094_7f9f:
    ld [hl], b                                    ; $7f9f: $70
    cp c                                          ; $7fa0: $b9
    ld [bc], a                                    ; $7fa1: $02
    ld d, c                                       ; $7fa2: $51
    dec e                                         ; $7fa3: $1d
    dec b                                         ; $7fa4: $05
    nop                                           ; $7fa5: $00
    ld [$6751], a                                 ; $7fa6: $ea $51 $67
    ld b, c                                       ; $7fa9: $41
    db $e3                                        ; $7faa: $e3
    jr z, @+$62                                   ; $7fab: $28 $60

    jr jr_094_7fb0                                ; $7fad: $18 $01

jr_094_7faf:
    nop                                           ; $7faf: $00

jr_094_7fb0:
    rst $38                                       ; $7fb0: $ff
    ld a, a                                       ; $7fb1: $7f
    xor e                                         ; $7fb2: $ab
    dec c                                         ; $7fb3: $0d
    add d                                         ; $7fb4: $82
    nop                                           ; $7fb5: $00
    ldh [rDMA], a                                 ; $7fb6: $e0 $46
    ld e, $17                                     ; $7fb8: $1e $17
    jr jr_094_7fbd                                ; $7fba: $18 $01

    ld h, a                                       ; $7fbc: $67

jr_094_7fbd:
    db $10                                        ; $7fbd: $10
    jp c, $0d52                                   ; $7fbe: $da $52 $0d

    ld b, [hl]                                    ; $7fc1: $46

jr_094_7fc2:
    ld h, l                                       ; $7fc2: $65
    ld hl, $1440                                  ; $7fc3: $21 $40 $14
    cp d                                          ; $7fc6: $ba
    ld b, d                                       ; $7fc7: $42
    xor a                                         ; $7fc8: $af
    ld sp, $14c8                                  ; $7fc9: $31 $c8 $14
    ld b, e                                       ; $7fcc: $43
    inc b                                         ; $7fcd: $04
    ld e, e                                       ; $7fce: $5b
    ld h, e                                       ; $7fcf: $63
    ld d, c                                       ; $7fd0: $51
    ld c, d                                       ; $7fd1: $4a
    rlca                                          ; $7fd2: $07
    add hl, hl                                    ; $7fd3: $29
    ld bc, $d414                                  ; $7fd4: $01 $14 $d4
    ld d, e                                       ; $7fd7: $53
    ldh [rDMA], a                                 ; $7fd8: $e0 $46
    ret nz                                        ; $7fda: $c0

    dec h                                         ; $7fdb: $25
    and b                                         ; $7fdc: $a0
    inc d                                         ; $7fdd: $14
    ld [hl], h                                    ; $7fde: $74
    ld a, a                                       ; $7fdf: $7f
    ld c, l                                       ; $7fe0: $4d
    ld h, d                                       ; $7fe1: $62
    add a                                         ; $7fe2: $87
    ld b, l                                       ; $7fe3: $45
    ld h, b                                       ; $7fe4: $60
    inc h                                         ; $7fe5: $24
    ld l, h                                       ; $7fe6: $6c
    ld [hl-], a                                   ; $7fe7: $32
    and b                                         ; $7fe8: $a0
    dec h                                         ; $7fe9: $25
    add b                                         ; $7fea: $80
    inc b                                         ; $7feb: $04
    nop                                           ; $7fec: $00
    nop                                           ; $7fed: $00
    ld bc, $803c                                  ; $7fee: $01 $3c $80
    nop                                           ; $7ff1: $00
    jr nz, jr_094_7ff6                            ; $7ff2: $20 $02

    ldh a, [$03]                                  ; $7ff4: $f0 $03

jr_094_7ff6:
    add $50                                       ; $7ff6: $c6 $50
    ldh [rNR10], a                                ; $7ff8: $e0 $10
    and l                                         ; $7ffa: $a5
    ld a, [bc]                                    ; $7ffb: $0a
    db $fc                                        ; $7ffc: $fc
    ld [hl], e                                    ; $7ffd: $73
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
