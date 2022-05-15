; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0bd", ROMX[$4000], BANK[$bd]

    db $bd

    ld [hl], b                                    ; $4001: $70
    add hl, bc                                    ; $4002: $09

Jump_0bd_4003:
    ld h, l                                       ; $4003: $65
    ld b, $40                                     ; $4004: $06 $40
    rst $38                                       ; $4006: $ff
    ld bc, $9f60                                  ; $4007: $01 $60 $9f
    rra                                           ; $400a: $1f
    rst $38                                       ; $400b: $ff
    rrca                                          ; $400c: $0f
    rst $38                                       ; $400d: $ff
    rst $08                                       ; $400e: $cf
    ld [bc], a                                    ; $400f: $02
    cp a                                          ; $4010: $bf
    ld a, a                                       ; $4011: $7f
    cp a                                          ; $4012: $bf
    rst $18                                       ; $4013: $df
    rst $38                                       ; $4014: $ff
    cp a                                          ; $4015: $bf
    inc e                                         ; $4016: $1c
    ld [$0217], sp                                ; $4017: $08 $17 $02
    rst $28                                       ; $401a: $ef
    adc a                                         ; $401b: $8f
    ld a, a                                       ; $401c: $7f
    scf                                           ; $401d: $37
    rst $08                                       ; $401e: $cf

Jump_0bd_401f:
    rlca                                          ; $401f: $07
    ld [$3f00], sp                                ; $4020: $08 $00 $3f
    nop                                           ; $4023: $00
    rst $08                                       ; $4024: $cf
    rla                                           ; $4025: $17
    rst $28                                       ; $4026: $ef
    ld b, a                                       ; $4027: $47
    cp a                                          ; $4028: $bf
    rst $20                                       ; $4029: $e7
    rst $38                                       ; $402a: $ff
    and e                                         ; $402b: $a3
    nop                                           ; $402c: $00
    rst $38                                       ; $402d: $ff
    adc e                                         ; $402e: $8b
    rst $30                                       ; $402f: $f7
    add hl, de                                    ; $4030: $19
    rst $20                                       ; $4031: $e7
    dec l                                         ; $4032: $2d
    db $d3                                        ; $4033: $d3
    dec d                                         ; $4034: $15
    nop                                           ; $4035: $00
    db $e3                                        ; $4036: $e3
    ld e, l                                       ; $4037: $5d
    and e                                         ; $4038: $a3
    dec [hl]                                      ; $4039: $35
    jp $ff1e                                      ; $403a: $c3 $1e $ff


    ld a, a                                       ; $403d: $7f
    jr nz, @+$01                                  ; $403e: $20 $ff

    ccf                                           ; $4040: $3f
    ld b, l                                       ; $4041: $45
    db $10                                        ; $4042: $10
    db $fc                                        ; $4043: $fc
    rst $38                                       ; $4044: $ff
    pop bc                                        ; $4045: $c1
    cp $97                                        ; $4046: $fe $97
    ld [bc], a                                    ; $4048: $02
    add sp, $63                                   ; $4049: $e8 $63
    sbc a                                         ; $404b: $9f
    inc sp                                        ; $404c: $33
    rst $08                                       ; $404d: $cf
    rst $00                                       ; $404e: $c7
    ld d, l                                       ; $404f: $55
    nop                                           ; $4050: $00
    cp $00                                        ; $4051: $fe $00
    rst $38                                       ; $4053: $ff
    ld a, a                                       ; $4054: $7f
    cp $1f                                        ; $4055: $fe $1f
    cp $0d                                        ; $4057: $fe $0d
    cp $ff                                        ; $4059: $fe $ff
    nop                                           ; $405b: $00
    rst $38                                       ; $405c: $ff
    rst $00                                       ; $405d: $c7
    rst $38                                       ; $405e: $ff
    ld bc, $6cff                                  ; $405f: $01 $ff $6c
    sub e                                         ; $4062: $93
    sbc b                                         ; $4063: $98
    nop                                           ; $4064: $00
    ld h, a                                       ; $4065: $67

jr_0bd_4066:
    ld a, [c]                                     ; $4066: $f2
    dec c                                         ; $4067: $0d
    sbc c                                         ; $4068: $99
    ld b, $bd                                     ; $4069: $06 $bd
    ld [bc], a                                    ; $406b: $02
    xor [hl]                                      ; $406c: $ae
    nop                                           ; $406d: $00
    pop de                                        ; $406e: $d1
    sbc h                                         ; $406f: $9c
    db $e3                                        ; $4070: $e3
    call z, $e1f3                                 ; $4071: $cc $f3 $e1
    cp $70                                        ; $4074: $fe $70
    add b                                         ; $4076: $80
    jr c, jr_0bd_4079                             ; $4077: $38 $00

jr_0bd_4079:
    ld a, a                                       ; $4079: $7f
    rst $38                                       ; $407a: $ff
    ld a, b                                       ; $407b: $78
    rst $38                                       ; $407c: $ff
    inc b                                         ; $407d: $04
    ei                                            ; $407e: $fb
    inc b                                         ; $407f: $04
    ld [bc], a                                    ; $4080: $02
    ei                                            ; $4081: $fb
    ld h, c                                       ; $4082: $61
    sbc a                                         ; $4083: $9f
    or e                                          ; $4084: $b3
    ld a, a                                       ; $4085: $7f
    ld a, a                                       ; $4086: $7f
    adc c                                         ; $4087: $89
    db $10                                        ; $4088: $10
    rrca                                          ; $4089: $0f
    nop                                           ; $408a: $00
    rst $38                                       ; $408b: $ff
    and $f9                                       ; $408c: $e6 $f9
    xor $f1                                       ; $408e: $ee $f1
    call $eaf2                                    ; $4090: $cd $f2 $ea
    nop                                           ; $4093: $00
    pop af                                        ; $4094: $f1
    jp z, $e7f1                                   ; $4095: $ca $f1 $e7

    ld hl, sp-$12                                 ; $4098: $f8 $ee
    pop af                                        ; $409a: $f1
    push af                                       ; $409b: $f5
    nop                                           ; $409c: $00
    ld hl, sp+$07                                 ; $409d: $f8 $07
    rst $38                                       ; $409f: $ff
    daa                                           ; $40a0: $27
    rst $18                                       ; $40a1: $df
    cpl                                           ; $40a2: $2f
    rst $18                                       ; $40a3: $df
    ld e, a                                       ; $40a4: $5f
    jr nz, jr_0bd_4066                            ; $40a5: $20 $bf

    rrca                                          ; $40a7: $0f
    sub a                                         ; $40a8: $97
    nop                                           ; $40a9: $00
    daa                                           ; $40aa: $27
    rst $18                                       ; $40ab: $df
    and a                                         ; $40ac: $a7
    ld e, a                                       ; $40ad: $5f
    sbc d                                         ; $40ae: $9a
    nop                                           ; $40af: $00
    pop hl                                        ; $40b0: $e1
    inc sp                                        ; $40b1: $33
    ret nz                                        ; $40b2: $c0

    ld d, $e1                                     ; $40b3: $16 $e1
    ccf                                           ; $40b5: $3f
    ret nz                                        ; $40b6: $c0

    sbc d                                         ; $40b7: $9a
    ld [$8fe1], sp                                ; $40b8: $08 $e1 $8f
    ldh a, [$e4]                                  ; $40bb: $f0 $e4
    cp l                                          ; $40bd: $bd
    nop                                           ; $40be: $00
    cpl                                           ; $40bf: $2f
    rst $18                                       ; $40c0: $df
    add a                                         ; $40c1: $87
    nop                                           ; $40c2: $00
    ld a, a                                       ; $40c3: $7f
    ld c, $ff                                     ; $40c4: $0e $ff
    adc a                                         ; $40c6: $8f
    ld a, a                                       ; $40c7: $7f
    rra                                           ; $40c8: $1f
    rst $38                                       ; $40c9: $ff
    rra                                           ; $40ca: $1f
    add b                                         ; $40cb: $80
    adc d                                         ; $40cc: $8a
    nop                                           ; $40cd: $00
    cp $ff                                        ; $40ce: $fe $ff
    db $e3                                        ; $40d0: $e3
    sbc a                                         ; $40d1: $9f
    reti                                          ; $40d2: $d9


    rlca                                          ; $40d3: $07
    ld h, b                                       ; $40d4: $60
    nop                                           ; $40d5: $00
    sbc a                                         ; $40d6: $9f
    add hl, sp                                    ; $40d7: $39
    rst $00                                       ; $40d8: $c7
    ld d, c                                       ; $40d9: $51
    xor a                                         ; $40da: $af
    halt                                          ; $40db: $76
    adc c                                         ; $40dc: $89
    ld d, d                                       ; $40dd: $52
    nop                                           ; $40de: $00
    adc l                                         ; $40df: $8d
    sbc b                                         ; $40e0: $98
    rlca                                          ; $40e1: $07
    ld a, [c]                                     ; $40e2: $f2
    ld sp, hl                                     ; $40e3: $f9
    ld [$c4f1], a                                 ; $40e4: $ea $f1 $c4
    nop                                           ; $40e7: $00
    di                                            ; $40e8: $f3
    xor $f1                                       ; $40e9: $ee $f1
    ret z                                         ; $40eb: $c8

    rst $30                                       ; $40ec: $f7

Call_0bd_40ed:
    rst $20                                       ; $40ed: $e7
    ld hl, sp-$18                                 ; $40ee: $f8 $e8
    db $10                                        ; $40f0: $10
    pop af                                        ; $40f1: $f1
    db $e3                                        ; $40f2: $e3
    db $fc                                        ; $40f3: $fc
    ld d, b                                       ; $40f4: $50
    ld c, b                                       ; $40f5: $48
    rlca                                          ; $40f6: $07
    rst $38                                       ; $40f7: $ff
    and e                                         ; $40f8: $a3
    ld e, a                                       ; $40f9: $5f
    add b                                         ; $40fa: $80
    nop                                           ; $40fb: $00
    add hl, sp                                    ; $40fc: $39
    db $fc                                        ; $40fd: $fc
    rst $38                                       ; $40fe: $ff
    ei                                            ; $40ff: $fb

Jump_0bd_4100:
    db $fc                                        ; $4100: $fc
    or $f9                                        ; $4101: $f6 $f9
    rrca                                          ; $4103: $0f
    ld b, b                                       ; $4104: $40
    rst $38                                       ; $4105: $ff
    inc de                                        ; $4106: $13
    ld [$ffe2], sp                                ; $4107: $08 $e2 $ff
    ret nc                                        ; $410a: $d0

    rst $28                                       ; $410b: $ef
    inc c                                         ; $410c: $0c
    di                                            ; $410d: $f3
    ld [$c43b], sp                                ; $410e: $08 $3b $c4
    rla                                           ; $4111: $17
    ldh [rNR41], a                                ; $4112: $e0 $20
    add hl, de                                    ; $4114: $19
    ld l, a                                       ; $4115: $6f
    rst $38                                       ; $4116: $ff
    inc bc                                        ; $4117: $03
    ld bc, $d9ff                                  ; $4118: $01 $ff $d9
    daa                                           ; $411b: $27
    add b                                         ; $411c: $80
    ld a, a                                       ; $411d: $7f
    dec d                                         ; $411e: $15
    db $eb                                        ; $411f: $eb
    jr nc, jr_0bd_417b                            ; $4120: $30 $59

    nop                                           ; $4122: $00
    di                                            ; $4123: $f3
    rst $38                                       ; $4124: $ff
    db $dd                                        ; $4125: $dd
    ldh [$cf], a                                  ; $4126: $e0 $cf
    ldh a, [$b2]                                  ; $4128: $f0 $b2
    pop bc                                        ; $412a: $c1
    nop                                           ; $412b: $00
    or a                                          ; $412c: $b7
    ret nz                                        ; $412d: $c0

    sub [hl]                                      ; $412e: $96
    pop hl                                        ; $412f: $e1
    jp nc, $cce1                                  ; $4130: $d2 $e1 $cc

    di                                            ; $4133: $f3
    nop                                           ; $4134: $00
    rst $10                                       ; $4135: $d7
    add sp, -$33                                  ; $4136: $e8 $cd
    ld a, $1f                                     ; $4138: $3e $1f
    cp $0e                                        ; $413a: $fe $0e
    rst $38                                       ; $413c: $ff
    ld [bc], a                                    ; $413d: $02
    dec l                                         ; $413e: $2d
    sbc $8d                                       ; $413f: $de $8d
    ld a, [hl]                                    ; $4141: $7e
    xor h                                         ; $4142: $ac
    ld e, a                                       ; $4143: $5f
    sub h                                         ; $4144: $94
    ld [$00e8], sp                                ; $4145: $08 $e8 $00
    rlca                                          ; $4148: $07
    ld a, [c]                                     ; $4149: $f2
    dec c                                         ; $414a: $0d
    call c, $9903                                 ; $414b: $dc $03 $99
    ld b, $71                                     ; $414e: $06 $71
    nop                                           ; $4150: $00
    adc [hl]                                      ; $4151: $8e
    call c, Call_000_3003                         ; $4152: $dc $03 $30
    rst $08                                       ; $4155: $cf
    add hl, sp                                    ; $4156: $39
    add $71                                       ; $4157: $c6 $71
    nop                                           ; $4159: $00
    cp $72                                        ; $415a: $fe $72
    db $fd                                        ; $415c: $fd
    ld h, $f9                                     ; $415d: $26 $f9
    ld h, e                                       ; $415f: $63
    db $fc                                        ; $4160: $fc
    dec [hl]                                      ; $4161: $35
    nop                                           ; $4162: $00
    ld a, [$f936]                                 ; $4163: $fa $36 $f9
    inc sp                                        ; $4166: $33
    db $fc                                        ; $4167: $fc
    ld a, d                                       ; $4168: $7a
    db $fd                                        ; $4169: $fd
    or e                                          ; $416a: $b3
    nop                                           ; $416b: $00
    ld c, a                                       ; $416c: $4f
    add l                                         ; $416d: $85
    ld a, e                                       ; $416e: $7b
    add $39                                       ; $416f: $c6 $39
    ld h, h                                       ; $4171: $64
    sbc e                                         ; $4172: $9b
    ld de, $ef01                                  ; $4173: $11 $01 $ef
    pop bc                                        ; $4176: $c1
    ccf                                           ; $4177: $3f
    add h                                         ; $4178: $84
    ld a, e                                       ; $4179: $7b
    and l                                         ; $417a: $a5

jr_0bd_417b:
    ld e, e                                       ; $417b: $5b
    ld sp, $2001                                  ; $417c: $31 $01 $20
    rst $38                                       ; $417f: $ff
    rst $18                                       ; $4180: $df
    sbc d                                         ; $4181: $9a
    nop                                           ; $4182: $00
    dec sp                                        ; $4183: $3b
    rst $00                                       ; $4184: $c7
    db $fd                                        ; $4185: $fd
    inc bc                                        ; $4186: $03
    call nc, $2300                                ; $4187: $d4 $00 $23
    ld h, $c1                                     ; $418a: $26 $c1
    ld [hl], e                                    ; $418c: $73
    adc a                                         ; $418d: $8f
    jp $873f                                      ; $418e: $c3 $3f $87


    ld [$d77f], sp                                ; $4191: $08 $7f $d7
    ccf                                           ; $4194: $3f
    ccf                                           ; $4195: $3f
    ld d, d                                       ; $4196: $52
    ld bc, $ffff                                  ; $4197: $01 $ff $ff
    ld a, [hl]                                    ; $419a: $7e
    add b                                         ; $419b: $80
    xor a                                         ; $419c: $af
    ld de, $fff2                                  ; $419d: $11 $f2 $ff
    add b                                         ; $41a0: $80
    rst $38                                       ; $41a1: $ff
    dec c                                         ; $41a2: $0d
    ld a, [c]                                     ; $41a3: $f2
    inc de                                        ; $41a4: $13
    ld [bc], a                                    ; $41a5: $02
    ldh [$3e], a                                  ; $41a6: $e0 $3e
    pop bc                                        ; $41a8: $c1
    or a                                          ; $41a9: $b7
    ld b, b                                       ; $41aa: $40
    rst $38                                       ; $41ab: $ff
    add b                                         ; $41ac: $80
    ld bc, $0083                                  ; $41ad: $01 $83 $00
    ld a, a                                       ; $41b0: $7f
    or c                                          ; $41b1: $b1
    ld c, a                                       ; $41b2: $4f
    ld l, l                                       ; $41b3: $6d
    add e                                         ; $41b4: $83
    ld b, l                                       ; $41b5: $45
    add e                                         ; $41b6: $83
    ld e, c                                       ; $41b7: $59
    nop                                           ; $41b8: $00
    add a                                         ; $41b9: $87
    inc sp                                        ; $41ba: $33
    rst $08                                       ; $41bb: $cf
    ld [hl], c                                    ; $41bc: $71
    adc a                                         ; $41bd: $8f
    xor h                                         ; $41be: $ac
    inc de                                        ; $41bf: $13
    pop de                                        ; $41c0: $d1
    inc b                                         ; $41c1: $04
    cpl                                           ; $41c2: $2f
    ld [hl], e                                    ; $41c3: $73
    adc a                                         ; $41c4: $8f
    rst $20                                       ; $41c5: $e7
    rst $18                                       ; $41c6: $df
    jp c, $f619                                   ; $41c7: $da $19 $f6

    ld sp, hl                                     ; $41ca: $f9
    db $10                                        ; $41cb: $10
    push hl                                       ; $41cc: $e5
    ld hl, sp-$1c                                 ; $41cd: $f8 $e4
    ld c, d                                       ; $41cf: $4a
    ld bc, $f9f6                                  ; $41d0: $01 $f6 $f9
    pop af                                        ; $41d3: $f1
    db $fc                                        ; $41d4: $fc
    nop                                           ; $41d5: $00
    ei                                            ; $41d6: $fb
    db $fc                                        ; $41d7: $fc
    ld hl, sp-$01                                 ; $41d8: $f8 $ff
    daa                                           ; $41da: $27
    sbc a                                         ; $41db: $9f
    rst $10                                       ; $41dc: $d7
    rrca                                          ; $41dd: $0f
    inc b                                         ; $41de: $04
    ld [hl], a                                    ; $41df: $77
    adc a                                         ; $41e0: $8f
    rst $10                                       ; $41e1: $d7
    rrca                                          ; $41e2: $0f
    sbc a                                         ; $41e3: $9f
    ld b, $00                                     ; $41e4: $06 $00
    ld d, a                                       ; $41e6: $57
    adc a                                         ; $41e7: $8f
    ld [$1faf], sp                                ; $41e8: $08 $af $1f
    ld c, a                                       ; $41eb: $4f
    cp a                                          ; $41ec: $bf
    cp [hl]                                       ; $41ed: $be
    add hl, de                                    ; $41ee: $19
    ei                                            ; $41ef: $fb
    rst $38                                       ; $41f0: $ff
    pop af                                        ; $41f1: $f1
    nop                                           ; $41f2: $00
    rst $38                                       ; $41f3: $ff
    ld h, a                                       ; $41f4: $67
    ld sp, hl                                     ; $41f5: $f9
    db $eb                                        ; $41f6: $eb
    push af                                       ; $41f7: $f5
    sbc [hl]                                      ; $41f8: $9e
    pop hl                                        ; $41f9: $e1
    jp $fc00                                      ; $41fa: $c3 $00 $fc


    add c                                         ; $41fd: $81
    cp $0c                                        ; $41fe: $fe $0c
    di                                            ; $4200: $f3
    ld e, h                                       ; $4201: $5c
    db $e3                                        ; $4202: $e3
    adc d                                         ; $4203: $8a
    nop                                           ; $4204: $00
    push af                                       ; $4205: $f5
    add e                                         ; $4206: $83
    db $fc                                        ; $4207: $fc
    rst $00                                       ; $4208: $c7
    ld hl, sp-$01                                 ; $4209: $f8 $ff
    rst $38                                       ; $420b: $ff
    ld a, h                                       ; $420c: $7c
    add b                                         ; $420d: $80
    and [hl]                                      ; $420e: $a6
    ld bc, $fcf3                                  ; $420f: $01 $f3 $fc
    and $f9                                       ; $4212: $e6 $f9
    ldh a, [rIE]                                  ; $4214: $f0 $ff
    add sp, $00                                   ; $4216: $e8 $00
    rst $30                                       ; $4218: $f7
    ldh a, [rIE]                                  ; $4219: $f0 $ff
    and a                                         ; $421b: $a7
    rra                                           ; $421c: $1f
    ld h, a                                       ; $421d: $67
    rra                                           ; $421e: $1f
    xor a                                         ; $421f: $af
    jr nc, jr_0bd_4281                            ; $4220: $30 $5f

    rrca                                          ; $4222: $0f
    or $01                                        ; $4223: $f6 $01
    ld a, [hl-]                                   ; $4225: $3a
    ld a, [bc]                                    ; $4226: $0a
    ld c, a                                       ; $4227: $4f
    rst $38                                       ; $4228: $ff
    call $00f2                                    ; $4229: $cd $f2 $00
    and c                                         ; $422c: $a1
    sbc $63                                       ; $422d: $de $63
    sbc h                                         ; $422f: $9c
    daa                                           ; $4230: $27
    ret c                                         ; $4231: $d8

    adc b                                         ; $4232: $88
    rst $30                                       ; $4233: $f7
    nop                                           ; $4234: $00
    add e                                         ; $4235: $83
    db $fc                                        ; $4236: $fc
    ld hl, $a5de                                  ; $4237: $21 $de $a5
    jp c, $7f8e                                   ; $423a: $da $8e $7f

    nop                                           ; $423d: $00
    ld c, [hl]                                    ; $423e: $4e
    ccf                                           ; $423f: $3f
    inc h                                         ; $4240: $24
    rra                                           ; $4241: $1f
    add $3f                                       ; $4242: $c6 $3f
    db $ec                                        ; $4244: $ec
    rra                                           ; $4245: $1f
    nop                                           ; $4246: $00
    inc l                                         ; $4247: $2c
    rra                                           ; $4248: $1f
    ld c, h                                       ; $4249: $4c
    ccf                                           ; $424a: $3f
    sbc $3f                                       ; $424b: $de $3f
    add a                                         ; $424d: $87
    rst $38                                       ; $424e: $ff
    nop                                           ; $424f: $00
    sbc h                                         ; $4250: $9c
    rst $38                                       ; $4251: $ff
    ld sp, hl                                     ; $4252: $f9
    cp $f1                                        ; $4253: $fe $f1
    cp $f2                                        ; $4255: $fe $f2
    db $fd                                        ; $4257: $fd
    nop                                           ; $4258: $00
    ld hl, sp-$01                                 ; $4259: $f8 $ff
    pop af                                        ; $425b: $f1
    cp $f4                                        ; $425c: $fe $f4
    ei                                            ; $425e: $fb
    scf                                           ; $425f: $37
    rst $08                                       ; $4260: $cf
    ld b, b                                       ; $4261: $40
    ld d, a                                       ; $4262: $57
    ld a, b                                       ; $4263: $78
    nop                                           ; $4264: $00
    cp e                                          ; $4265: $bb
    rlca                                          ; $4266: $07
    ld e, e                                       ; $4267: $5b
    and a                                         ; $4268: $a7
    inc sp                                        ; $4269: $33
    rst $08                                       ; $426a: $cf
    nop                                           ; $426b: $00
    ld e, e                                       ; $426c: $5b
    add a                                         ; $426d: $87
    or a                                          ; $426e: $b7
    rrca                                          ; $426f: $0f
    ld h, e                                       ; $4270: $63
    sbc h                                         ; $4271: $9c
    ld h, b                                       ; $4272: $60
    sbc a                                         ; $4273: $9f
    nop                                           ; $4274: $00
    or [hl]                                       ; $4275: $b6
    ret                                           ; $4276: $c9


    ld [hl+], a                                   ; $4277: $22
    db $dd                                        ; $4278: $dd
    add hl, sp                                    ; $4279: $39
    add $99                                       ; $427a: $c6 $99
    and $00                                       ; $427c: $e6 $00
    ret z                                         ; $427e: $c8

    rst $30                                       ; $427f: $f7
    db $e4                                        ; $4280: $e4

jr_0bd_4281:
    ei                                            ; $4281: $fb
    ld h, $c1                                     ; $4282: $26 $c1
    db $fc                                        ; $4284: $fc
    inc bc                                        ; $4285: $03
    nop                                           ; $4286: $00
    ld a, [hl+]                                   ; $4287: $2a
    add l                                         ; $4288: $85
    and h                                         ; $4289: $a4
    inc bc                                        ; $428a: $03
    ret c                                         ; $428b: $d8

    daa                                           ; $428c: $27
    dec [hl]                                      ; $428d: $35
    bit 4, b                                      ; $428e: $cb $60
    and c                                         ; $4290: $a1
    ld l, b                                       ; $4291: $68
    nop                                           ; $4292: $00
    and b                                         ; $4293: $a0
    ld a, [hl-]                                   ; $4294: $3a
    db $fd                                        ; $4295: $fd
    pop hl                                        ; $4296: $e1
    cp $de                                        ; $4297: $fe $de
    ld c, b                                       ; $4299: $48
    nop                                           ; $429a: $00
    ld [hl], c                                    ; $429b: $71
    jp c, $ff25                                   ; $429c: $da $25 $ff

    nop                                           ; $429f: $00
    rst $20                                       ; $42a0: $e7
    jr jr_0bd_4315                                ; $42a1: $18 $72

jr_0bd_42a3:
    nop                                           ; $42a3: $00
    adc l                                         ; $42a4: $8d
    xor d                                         ; $42a5: $aa
    push de                                       ; $42a6: $d5
    sub h                                         ; $42a7: $94
    rst $38                                       ; $42a8: $ff
    xor l                                         ; $42a9: $ad
    rst $38                                       ; $42aa: $ff
    db $ed                                        ; $42ab: $ed
    ld a, [bc]                                    ; $42ac: $0a
    rst $38                                       ; $42ad: $ff
    ldh a, [rIE]                                  ; $42ae: $f0 $ff
    ld a, [$42c3]                                 ; $42b0: $fa $c3 $42
    rst $08                                       ; $42b3: $cf
    adc h                                         ; $42b4: $8c
    ld [bc], a                                    ; $42b5: $02
    ld hl, sp+$00                                 ; $42b6: $f8 $00
    rst $38                                       ; $42b8: $ff
    ld [c], a                                     ; $42b9: $e2
    db $fd                                        ; $42ba: $fd
    sbc a                                         ; $42bb: $9f
    ldh [$b3], a                                  ; $42bc: $e0 $b3
    call z, RST_20                                ; $42be: $cc $20 $00
    rst $18                                       ; $42c1: $df
    jr nz, jr_0bd_42a3                            ; $42c2: $20 $df

    add [hl]                                      ; $42c4: $86
    ld sp, hl                                     ; $42c5: $f9
    ldh [rIE], a                                  ; $42c6: $e0 $ff
    ret z                                         ; $42c8: $c8

    nop                                           ; $42c9: $00
    rst $30                                       ; $42ca: $f7
    call nz, $e0fb                                ; $42cb: $c4 $fb $e0
    rst $38                                       ; $42ce: $ff
    ret c                                         ; $42cf: $d8

    rst $20                                       ; $42d0: $e7
    adc $00                                       ; $42d1: $ce $00
    pop af                                        ; $42d3: $f1
    ldh [rIE], a                                  ; $42d4: $e0 $ff
    ld sp, hl                                     ; $42d6: $f9
    rst $38                                       ; $42d7: $ff
    ld a, [hl-]                                   ; $42d8: $3a
    pop bc                                        ; $42d9: $c1
    or e                                          ; $42da: $b3
    nop                                           ; $42db: $00
    ld b, b                                       ; $42dc: $40
    xor a                                         ; $42dd: $af
    ld b, b                                       ; $42de: $40
    ld [hl-], a                                   ; $42df: $32
    ret                                           ; $42e0: $c9


    call z, $4e33                                 ; $42e1: $cc $33 $4e
    ld [bc], a                                    ; $42e4: $02
    or c                                          ; $42e5: $b1
    inc e                                         ; $42e6: $1c
    db $e3                                        ; $42e7: $e3
    ld [bc], a                                    ; $42e8: $02
    db $fd                                        ; $42e9: $fd
    ld a, h                                       ; $42ea: $7c
    ld d, h                                       ; $42eb: $54
    ld bc, $007d                                  ; $42ec: $01 $7d $00
    cp $79                                        ; $42ef: $fe $79
    cp $f8                                        ; $42f1: $fe $f8

jr_0bd_42f3:
    rst $38                                       ; $42f3: $ff
    ld a, [c]                                     ; $42f4: $f2
    db $fd                                        ; $42f5: $fd
    ld a, b                                       ; $42f6: $78
    add b                                         ; $42f7: $80
    ld c, [hl]                                    ; $42f8: $4e
    nop                                           ; $42f9: $00
    rlca                                          ; $42fa: $07
    rst $38                                       ; $42fb: $ff
    rst $20                                       ; $42fc: $e7
    rra                                           ; $42fd: $1f
    ld [hl], e                                    ; $42fe: $73

Jump_0bd_42ff:
    rrca                                          ; $42ff: $0f
    ld [hl], a                                    ; $4300: $77
    nop                                           ; $4301: $00
    rrca                                          ; $4302: $0f
    rlc a                                         ; $4303: $cb $07
    jp hl                                         ; $4305: $e9


    rlca                                          ; $4306: $07
    db $fd                                        ; $4307: $fd
    inc bc                                        ; $4308: $03
    sub l                                         ; $4309: $95
    ld [bc], a                                    ; $430a: $02
    ld h, e                                       ; $430b: $63
    or e                                          ; $430c: $b3
    call z, $ffc0                                 ; $430d: $cc $c0 $ff
    rst $20                                       ; $4310: $e7
    dec h                                         ; $4311: $25
    inc hl                                        ; $4312: $23
    rst $28                                       ; $4313: $ef
    and b                                         ; $4314: $a0

jr_0bd_4315:
    call z, $be02                                 ; $4315: $cc $02 $be
    xor d                                         ; $4318: $aa
    ld [de], a                                    ; $4319: $12
    ld a, [$e1ff]                                 ; $431a: $fa $ff $e1
    rst $38                                       ; $431d: $ff
    push bc                                       ; $431e: $c5
    nop                                           ; $431f: $00
    ei                                            ; $4320: $fb
    adc h                                         ; $4321: $8c
    di                                            ; $4322: $f3
    and b                                         ; $4323: $a0
    rst $18                                       ; $4324: $df
    ld hl, sp-$01                                 ; $4325: $f8 $ff
    db $fd                                        ; $4327: $fd
    add b                                         ; $4328: $80
    ld b, e                                       ; $4329: $43
    inc hl                                        ; $432a: $23
    ld hl, sp-$01                                 ; $432b: $f8 $ff
    db $e3                                        ; $432d: $e3
    db $fc                                        ; $432e: $fc
    add $f9                                       ; $432f: $c6 $f9
    ld c, a                                       ; $4331: $4f
    jr nz, jr_0bd_42f3                            ; $4332: $20 $bf

    rra                                           ; $4334: $1f
    ld d, e                                       ; $4335: $53
    inc hl                                        ; $4336: $23
    ccf                                           ; $4337: $3f
    rst $38                                       ; $4338: $ff
    rst $18                                       ; $4339: $df
    ccf                                           ; $433a: $3f
    rst $18                                       ; $433b: $df
    nop                                           ; $433c: $00
    ccf                                           ; $433d: $3f
    or l                                          ; $433e: $b5
    ld a, e                                       ; $433f: $7b
    xor c                                         ; $4340: $a9
    di                                            ; $4341: $f3
    push af                                       ; $4342: $f5
    ei                                            ; $4343: $fb
    jp hl                                         ; $4344: $e9


    nop                                           ; $4345: $00
    di                                            ; $4346: $f3
    inc sp                                        ; $4347: $33
    ld a, a                                       ; $4348: $7f
    sub [hl]                                      ; $4349: $96
    ld a, e                                       ; $434a: $7b

jr_0bd_434b:
    sub [hl]                                      ; $434b: $96
    ei                                            ; $434c: $fb
    di                                            ; $434d: $f3
    ld d, $ff                                     ; $434e: $16 $ff
    ld a, a                                       ; $4350: $7f
    cp a                                          ; $4351: $bf
    dec sp                                        ; $4352: $3b
    add hl, de                                    ; $4353: $19
    ccf                                           ; $4354: $3f
    ld h, e                                       ; $4355: $63
    inc bc                                        ; $4356: $03
    ld b, l                                       ; $4357: $45
    add hl, bc                                    ; $4358: $09
    daa                                           ; $4359: $27
    ld b, h                                       ; $435a: $44
    rst $18                                       ; $435b: $df
    adc b                                         ; $435c: $88
    add hl, bc                                    ; $435d: $09
    db $db                                        ; $435e: $db
    rlca                                          ; $435f: $07
    ld l, e                                       ; $4360: $6b
    cp h                                          ; $4361: $bc
    ld bc, $875b                                  ; $4362: $01 $5b $87
    inc c                                         ; $4365: $0c
    rst $30                                       ; $4366: $f7
    rrca                                          ; $4367: $0f
    call $02fe                                    ; $4368: $cd $fe $02
    ld a, [bc]                                    ; $436b: $0a
    sub [hl]                                      ; $436c: $96
    dec bc                                        ; $436d: $0b
    ldh [rIE], a                                  ; $436e: $e0 $ff
    ld [bc], a                                    ; $4370: $02

jr_0bd_4371:
    sbc e                                         ; $4371: $9b
    db $e4                                        ; $4372: $e4
    ld b, [hl]                                    ; $4373: $46
    cp b                                          ; $4374: $b8
    add a                                         ; $4375: $87
    ld a, a                                       ; $4376: $7f
    inc b                                         ; $4377: $04
    add hl, de                                    ; $4378: $19
    cp $8a                                        ; $4379: $fe $8a
    ld h, [hl]                                    ; $437b: $66
    inc bc                                        ; $437c: $03
    ld e, $ff                                     ; $437d: $1e $ff
    sbc [hl]                                      ; $437f: $9e
    daa                                           ; $4380: $27
    inc bc                                        ; $4381: $03
    db $eb                                        ; $4382: $eb
    cp $01                                        ; $4383: $fe $01
    stop                                          ; $4385: $10 $00
    rst $28                                       ; $4387: $ef
    jr jr_0bd_4371                                ; $4388: $18 $e7

    ld c, [hl]                                    ; $438a: $4e
    or c                                          ; $438b: $b1
    sbc e                                         ; $438c: $9b
    ld h, h                                       ; $438d: $64
    or l                                          ; $438e: $b5
    jr z, jr_0bd_43d1                             ; $438f: $28 $40

    jp hl                                         ; $4391: $e9


    pop bc                                        ; $4392: $c1
    inc hl                                        ; $4393: $23
    ld a, a                                       ; $4394: $7f
    inc e                                         ; $4395: $1c
    ld [bc], a                                    ; $4396: $02
    ld a, b                                       ; $4397: $78
    rst $38                                       ; $4398: $ff
    jr nc, jr_0bd_434b                            ; $4399: $30 $b0

    cp $00                                        ; $439b: $fe $00
    cp $02                                        ; $439d: $fe $02
    ld bc, $1880                                  ; $439f: $01 $80 $18
    add e                                         ; $43a2: $83
    ld a, a                                       ; $43a3: $7f
    jp hl                                         ; $43a4: $e9


    rla                                           ; $43a5: $17
    nop                                           ; $43a6: $00
    dec a                                         ; $43a7: $3d
    jp $ab55                                      ; $43a8: $c3 $55 $ab


    dec c                                         ; $43ab: $0d
    di                                            ; $43ac: $f3
    dec l                                         ; $43ad: $2d
    db $d3                                        ; $43ae: $d3
    inc b                                         ; $43af: $04
    add hl, de                                    ; $43b0: $19
    rst $20                                       ; $43b1: $e7
    adc e                                         ; $43b2: $8b
    rst $30                                       ; $43b3: $f7
    and e                                         ; $43b4: $a3
    jp z, $8300                                   ; $43b5: $ca $00 $83

    rst $38                                       ; $43b8: $ff
    nop                                           ; $43b9: $00
    set 6, a                                      ; $43ba: $cb $f7
    sub l                                         ; $43bc: $95
    db $e3                                        ; $43bd: $e3
    ret                                           ; $43be: $c9


    rst $30                                       ; $43bf: $f7

jr_0bd_43c0:
    sub a                                         ; $43c0: $97
    db $e3                                        ; $43c1: $e3
    nop                                           ; $43c2: $00
    db $db                                        ; $43c3: $db
    rst $20                                       ; $43c4: $e7
    set 6, a                                      ; $43c5: $cb $f7
    rst $20                                       ; $43c7: $e7
    rst $38                                       ; $43c8: $ff
    add $f9                                       ; $43c9: $c6 $f9
    nop                                           ; $43cb: $00
    or e                                          ; $43cc: $b3
    call $fd82                                    ; $43cd: $cd $82 $fd
    and d                                         ; $43d0: $a2

jr_0bd_43d1:
    db $dd                                        ; $43d1: $dd
    ldh a, [$cf]                                  ; $43d2: $f0 $cf
    inc b                                         ; $43d4: $04
    and c                                         ; $43d5: $a1
    rst $18                                       ; $43d6: $df
    set 6, l                                      ; $43d7: $cb $f5
    pop af                                        ; $43d9: $f1
    ld [$9f3c], sp                                ; $43da: $08 $3c $9f
    rst $20                                       ; $43dd: $e7
    inc b                                         ; $43de: $04
    rlca                                          ; $43df: $07
    ld sp, hl                                     ; $43e0: $f9
    pop bc                                        ; $43e1: $c1
    ld a, $f0                                     ; $43e2: $3e $f0

jr_0bd_43e4:
    jr nz, jr_0bd_4442                            ; $43e4: $20 $5c

    ld a, a                                       ; $43e6: $7f
    ld a, a                                       ; $43e7: $7f
    ret nz                                        ; $43e8: $c0

    jp Jump_000_3300                              ; $43e9: $c3 $00 $33


    inc d                                         ; $43ec: $14
    ldh a, [rIE]                                  ; $43ed: $f0 $ff
    ld [$fff5], a                                 ; $43ef: $ea $f5 $ff
    ldh [rNR30], a                                ; $43f2: $e0 $1a
    jp hl                                         ; $43f4: $e9


    ldh a, [$fe]                                  ; $43f5: $f0 $fe
    sbc b                                         ; $43f7: $98
    ld [de], a                                    ; $43f8: $12
    and d                                         ; $43f9: $a2
    jr @+$01                                      ; $43fa: $18 $ff

    cp h                                          ; $43fc: $bc
    nop                                           ; $43fd: $00
    ld c, [hl]                                    ; $43fe: $4e
    jr nz, jr_0bd_43c0                            ; $43ff: $20 $bf

    ld e, $b0                                     ; $4401: $1e $b0

Jump_0bd_4403:
    jr nc, jr_0bd_43e4                            ; $4403: $30 $df

    ccf                                           ; $4405: $3f
    ld e, a                                       ; $4406: $5f
    cp a                                          ; $4407: $bf
    jp nz, Jump_000_3c00                          ; $4408: $c2 $00 $3c

    ld c, a                                       ; $440b: $4f
    or b                                          ; $440c: $b0
    ld de, $06ee                                  ; $440d: $11 $ee $06
    ld hl, sp+$42                                 ; $4410: $f8 $42
    nop                                           ; $4412: $00
    cp h                                          ; $4413: $bc
    ld c, e                                       ; $4414: $4b
    or h                                          ; $4415: $b4
    ld h, a                                       ; $4416: $67
    sbc b                                         ; $4417: $98
    add b                                         ; $4418: $80
    rst $38                                       ; $4419: $ff
    ld c, [hl]                                    ; $441a: $4e
    nop                                           ; $441b: $00
    ccf                                           ; $441c: $3f
    adc [hl]                                      ; $441d: $8e
    ld a, a                                       ; $441e: $7f
    sbc h                                         ; $441f: $9c
    ld a, a                                       ; $4420: $7f
    ld e, h                                       ; $4421: $5c
    ccf                                           ; $4422: $3f
    sbc [hl]                                      ; $4423: $9e
    ld [$be7f], sp                                ; $4424: $08 $7f $be
    ld a, a                                       ; $4427: $7f
    ld a, h                                       ; $4428: $7c
    ld h, $04                                     ; $4429: $26 $04
    ld [de], a                                    ; $442b: $12
    pop hl                                        ; $442c: $e1
    ld c, e                                       ; $442d: $4b
    nop                                           ; $442e: $00
    or b                                          ; $442f: $b0
    add hl, sp                                    ; $4430: $39
    ret nz                                        ; $4431: $c0

    sbc l                                         ; $4432: $9d
    ld h, b                                       ; $4433: $60
    adc d                                         ; $4434: $8a

jr_0bd_4435:
    ld [hl], c                                    ; $4435: $71
    scf                                           ; $4436: $37
    nop                                           ; $4437: $00
    ret nz                                        ; $4438: $c0

    ld [$9cf3], sp                                ; $4439: $08 $f3 $9c
    ld h, e                                       ; $443c: $63
    inc sp                                        ; $443d: $33
    db $fc                                        ; $443e: $fc

jr_0bd_443f:
    ld a, b                                       ; $443f: $78
    nop                                           ; $4440: $00
    rst $38                                       ; $4441: $ff

jr_0bd_4442:
    ld [hl], b                                    ; $4442: $70
    rst $38                                       ; $4443: $ff
    or h                                          ; $4444: $b4

jr_0bd_4445:
    ld a, e                                       ; $4445: $7b
    or c                                          ; $4446: $b1
    ld a, [hl]                                    ; $4447: $7e
    ld [hl], l                                    ; $4448: $75
    jr nz, jr_0bd_4445                            ; $4449: $20 $fa

    ldh a, [$cc]                                  ; $444b: $f0 $cc
    ld bc, $07f3                                  ; $444d: $01 $f3 $07
    reti                                          ; $4450: $d9


    rlca                                          ; $4451: $07
    call $0301                                    ; $4452: $cd $01 $03
    or a                                          ; $4455: $b7
    inc bc                                        ; $4456: $03
    push af                                       ; $4457: $f5
    inc bc                                        ; $4458: $03
    ld c, e                                       ; $4459: $4b
    add a                                         ; $445a: $87
    sub $02                                       ; $445b: $d6 $02
    add b                                         ; $445d: $80
    ld e, l                                       ; $445e: $5d
    ld hl, $ff47                                  ; $445f: $21 $47 $ff
    dec bc                                        ; $4462: $0b
    rst $30                                       ; $4463: $f7
    jr nc, jr_0bd_4435                            ; $4464: $30 $cf

    call c, $0300                                 ; $4466: $dc $00 $03
    add sp, $07                                   ; $4469: $e8 $07
    xor a                                         ; $446b: $af
    call c, $b7eb                                 ; $446c: $dc $eb $b7
    ld a, [$ed00]                                 ; $446f: $fa $00 $ed
    cp $fb                                        ; $4472: $fe $fb
    ccf                                           ; $4474: $3f
    ld a, $cf                                     ; $4475: $3e $cf
    rrca                                          ; $4477: $0f
    di                                            ; $4478: $f3
    inc b                                         ; $4479: $04
    jp $b07c                                      ; $447a: $c3 $7c $b0


    sbc a                                         ; $447d: $9f
    rra                                           ; $447e: $1f
    cp b                                          ; $447f: $b8
    ld [$70be], sp                                ; $4480: $08 $be $70
    ldh [rNR23], a                                ; $4483: $e0 $18
    jr z, jr_0bd_443f                             ; $4485: $28 $b8

jr_0bd_4487:
    jr z, jr_0bd_44a1                             ; $4487: $28 $18

    jr z, jr_0bd_4487                             ; $4489: $28 $fc

    pop hl                                        ; $448b: $e1
    ld a, [$fdf4]                                 ; $448c: $fa $f4 $fd
    add $63                                       ; $448f: $c6 $63
    add hl, hl                                    ; $4491: $29
    ld [hl], d                                    ; $4492: $72
    inc d                                         ; $4493: $14
    and [hl]                                      ; $4494: $a6
    ld e, a                                       ; $4495: $5f
    ld l, $2c                                     ; $4496: $2e $2c
    inc hl                                        ; $4498: $23
    inc c                                         ; $4499: $0c
    dec c                                         ; $449a: $0d
    ld h, [hl]                                    ; $449b: $66
    nop                                           ; $449c: $00
    add c                                         ; $449d: $81
    dec sp                                        ; $449e: $3b
    ret nz                                        ; $449f: $c0

    ld e, d                                       ; $44a0: $5a

jr_0bd_44a1:
    and c                                         ; $44a1: $a1
    and l                                         ; $44a2: $a5
    ret nz                                        ; $44a3: $c0

    sbc l                                         ; $44a4: $9d

jr_0bd_44a5:
    ld [bc], a                                    ; $44a5: $02
    ldh [$ae], a                                  ; $44a6: $e0 $ae
    pop de                                        ; $44a8: $d1
    and l                                         ; $44a9: $a5
    ld a, [$5af2]                                 ; $44aa: $fa $f2 $5a
    inc d                                         ; $44ad: $14
    ld a, a                                       ; $44ae: $7f
    cp b                                          ; $44af: $b8
    ld h, h                                       ; $44b0: $64
    ld [bc], a                                    ; $44b1: $02
    ldh a, [rDIV]                                 ; $44b2: $f0 $04
    inc bc                                        ; $44b4: $03
    ld b, b                                       ; $44b5: $40
    dec bc                                        ; $44b6: $0b
    and [hl]                                      ; $44b7: $a6
    inc e                                         ; $44b8: $1c
    rst $10                                       ; $44b9: $d7
    cpl                                           ; $44ba: $2f
    db $eb                                        ; $44bb: $eb
    nop                                           ; $44bc: $00
    rlca                                          ; $44bd: $07
    add hl, hl                                    ; $44be: $29
    rst $00                                       ; $44bf: $c7
    push de                                       ; $44c0: $d5
    inc hl                                        ; $44c1: $23
    adc c                                         ; $44c2: $89
    ld [hl], a                                    ; $44c3: $77
    rst $08                                       ; $44c4: $cf
    and b                                         ; $44c5: $a0
    ld b, c                                       ; $44c6: $41
    dec h                                         ; $44c7: $25
    ld a, [c]                                     ; $44c8: $f2
    or b                                          ; $44c9: $b0
    ld bc, $f8e7                                  ; $44ca: $01 $e7 $f8
    call z, $f7f3                                 ; $44cd: $cc $f3 $f7
    nop                                           ; $44d0: $00
    ld hl, sp-$0e                                 ; $44d1: $f8 $f2
    db $fd                                        ; $44d3: $fd
    ei                                            ; $44d4: $fb
    db $fc                                        ; $44d5: $fc
    db $ed                                        ; $44d6: $ed
    ld a, [c]                                     ; $44d7: $f2
    db $d3                                        ; $44d8: $d3
    ld bc, $99ec                                  ; $44d9: $01 $ec $99
    and $b7                                       ; $44dc: $e6 $b7
    ret nz                                        ; $44de: $c0

    xor c                                         ; $44df: $a9
    add $e7                                       ; $44e0: $c6 $e7
    inc c                                         ; $44e2: $0c
    ldh [$dc], a                                  ; $44e3: $e0 $dc
    inc b                                         ; $44e5: $04
    ldh [rDIV], a                                 ; $44e6: $e0 $04
    ld [bc], a                                    ; $44e8: $02
    jr jr_0bd_450a                                ; $44e9: $18 $1f

    db $ec                                        ; $44eb: $ec
    add a                                         ; $44ec: $87
    ei                                            ; $44ed: $fb
    pop hl                                        ; $44ee: $e1
    ldh a, [$6e]                                  ; $44ef: $f0 $6e
    ld [bc], a                                    ; $44f1: $02
    and $29                                       ; $44f2: $e6 $29
    cp b                                          ; $44f4: $b8
    jr z, jr_0bd_450f                             ; $44f5: $28 $18

    jr z, jr_0bd_44a5                             ; $44f7: $28 $ac

    db $d3                                        ; $44f9: $d3
    and d                                         ; $44fa: $a2
    db $dd                                        ; $44fb: $dd
    nop                                           ; $44fc: $00
    and b                                         ; $44fd: $a0
    rst $18                                       ; $44fe: $df
    and h                                         ; $44ff: $a4
    db $db                                        ; $4500: $db
    add b                                         ; $4501: $80
    rst $38                                       ; $4502: $ff
    pop de                                        ; $4503: $d1
    rst $28                                       ; $4504: $ef
    ld e, d                                       ; $4505: $5a
    push bc                                       ; $4506: $c5
    sub [hl]                                      ; $4507: $96
    inc bc                                        ; $4508: $03
    db $fc                                        ; $4509: $fc

jr_0bd_450a:
    ld e, b                                       ; $450a: $58
    dec b                                         ; $450b: $05
    ld [de], a                                    ; $450c: $12
    ld a, [de]                                    ; $450d: $1a
    ld sp, hl                                     ; $450e: $f9

jr_0bd_450f:
    ld h, b                                       ; $450f: $60
    ld [bc], a                                    ; $4510: $02
    and $03                                       ; $4511: $e6 $03
    ld sp, hl                                     ; $4513: $f9
    add e                                         ; $4514: $83
    ld a, a                                       ; $4515: $7f
    rla                                           ; $4516: $17
    rst $28                                       ; $4517: $ef
    ld c, a                                       ; $4518: $4f
    ld h, b                                       ; $4519: $60
    ld b, d                                       ; $451a: $42
    ld [hl], $0b                                  ; $451b: $36 $0b
    nop                                           ; $451d: $00
    sbc l                                         ; $451e: $9d
    ld [c], a                                     ; $451f: $e2
    ret                                           ; $4520: $c9


    or $95                                        ; $4521: $f6 $95
    ld [$f7c8], a                                 ; $4523: $ea $c8 $f7
    ld b, b                                       ; $4526: $40
    jp nz, Jump_000_02aa                          ; $4527: $c2 $aa $02

    xor $01                                       ; $452a: $ee $01
    dec sp                                        ; $452c: $3b
    pop bc                                        ; $452d: $c1
    ld [hl-], a                                   ; $452e: $32
    pop bc                                        ; $452f: $c1
    nop                                           ; $4530: $00
    adc d                                         ; $4531: $8a
    ld [hl], c                                    ; $4532: $71
    ld c, $f1                                     ; $4533: $0e $f1
    db $dd                                        ; $4535: $dd
    inc hl                                        ; $4536: $23
    add hl, bc                                    ; $4537: $09
    rst $30                                       ; $4538: $f7
    nop                                           ; $4539: $00
    ld b, a                                       ; $453a: $47
    rst $38                                       ; $453b: $ff
    xor h                                         ; $453c: $ac
    jp $c5aa                                      ; $453d: $c3 $aa $c5


    or b                                          ; $4540: $b0
    rst $08                                       ; $4541: $cf
    ld bc, $e39c                                  ; $4542: $01 $9c $e3
    ret z                                         ; $4545: $c8

    rst $30                                       ; $4546: $f7
    pop bc                                        ; $4547: $c1
    rst $38                                       ; $4548: $ff
    push hl                                       ; $4549: $e5
    db $ed                                        ; $454a: $ed
    dec b                                         ; $454b: $05
    nop                                           ; $454c: $00
    xor [hl]                                      ; $454d: $ae
    pop de                                        ; $454e: $d1
    dec sp                                        ; $454f: $3b
    call nz, $d7a8                                ; $4550: $c4 $a8 $d7
    adc d                                         ; $4553: $8a
    push af                                       ; $4554: $f5
    nop                                           ; $4555: $00
    xor b                                         ; $4556: $a8
    rst $10                                       ; $4557: $d7
    sub l                                         ; $4558: $95
    rst $38                                       ; $4559: $ff
    call nc, $d6ff                                ; $455a: $d4 $ff $d6
    rst $38                                       ; $455d: $ff
    nop                                           ; $455e: $00
    jr nz, @+$01                                  ; $455f: $20 $ff

    inc de                                        ; $4561: $13
    rst $28                                       ; $4562: $ef
    ld d, a                                       ; $4563: $57
    xor c                                         ; $4564: $a9
    ld [hl], a                                    ; $4565: $77
    adc b                                         ; $4566: $88
    nop                                           ; $4567: $00
    ld e, [hl]                                    ; $4568: $5e
    and c                                         ; $4569: $a1
    ld a, a                                       ; $456a: $7f
    add b                                         ; $456b: $80
    rst $28                                       ; $456c: $ef
    sub b                                         ; $456d: $90
    ld a, [hl]                                    ; $456e: $7e
    add c                                         ; $456f: $81
    ld b, b                                       ; $4570: $40
    cp $08                                        ; $4571: $fe $08
    inc b                                         ; $4573: $04
    db $fc                                        ; $4574: $fc
    ld a, e                                       ; $4575: $7b
    add b                                         ; $4576: $80
    ld a, a                                       ; $4577: $7f
    push bc                                       ; $4578: $c5
    dec sp                                        ; $4579: $3b
    nop                                           ; $457a: $00
    db $f4                                        ; $457b: $f4
    dec bc                                        ; $457c: $0b
    or [hl]                                       ; $457d: $b6
    ld c, c                                       ; $457e: $49
    cp [hl]                                       ; $457f: $be
    ld b, c                                       ; $4580: $41
    pop de                                        ; $4581: $d1
    xor $31                                       ; $4582: $ee $31
    db $d3                                        ; $4584: $d3
    db $ec                                        ; $4585: $ec
    dec b                                         ; $4586: $05
    dec h                                         ; $4587: $25
    dec hl                                        ; $4588: $2b
    ld d, $2f                                     ; $4589: $16 $2f
    rra                                           ; $458b: $1f
    ld c, a                                       ; $458c: $4f
    sub $02                                       ; $458d: $d6 $02
    sub h                                         ; $458f: $94
    ld a, [c]                                     ; $4590: $f2
    add hl, hl                                    ; $4591: $29

jr_0bd_4592:
    cp $ff                                        ; $4592: $fe $ff
    db $10                                        ; $4594: $10
    ld a, [hl+]                                   ; $4595: $2a
    ld a, [$03de]                                 ; $4596: $fa $de $03
    ld h, [hl]                                    ; $4599: $66
    ld sp, hl                                     ; $459a: $f9
    db $10                                        ; $459b: $10
    ld [$eff5], a                                 ; $459c: $ea $f5 $ef
    ld a, b                                       ; $459f: $78
    inc h                                         ; $45a0: $24
    rrca                                          ; $45a1: $0f
    rst $38                                       ; $45a2: $ff
    ld d, e                                       ; $45a3: $53
    xor a                                         ; $45a4: $af
    jr jr_0bd_4592                                ; $45a5: $18 $eb

    rlca                                          ; $45a7: $07
    sub e                                         ; $45a8: $93
    pop bc                                        ; $45a9: $c1
    inc hl                                        ; $45aa: $23
    or b                                          ; $45ab: $b0
    ld hl, $f023                                  ; $45ac: $21 $23 $f0
    rlca                                          ; $45af: $07
    nop                                           ; $45b0: $00
    ld l, [hl]                                    ; $45b1: $6e
    sub c                                         ; $45b2: $91
    ld l, a                                       ; $45b3: $6f
    sub b                                         ; $45b4: $90
    ld a, d                                       ; $45b5: $7a
    add l                                         ; $45b6: $85
    cp d                                          ; $45b7: $ba
    push bc                                       ; $45b8: $c5
    nop                                           ; $45b9: $00
    ld a, b                                       ; $45ba: $78
    add a                                         ; $45bb: $87
    ld [hl], b                                    ; $45bc: $70
    adc a                                         ; $45bd: $8f
    ld h, h                                       ; $45be: $64
    sbc e                                         ; $45bf: $9b
    ld b, h                                       ; $45c0: $44
    cp e                                          ; $45c1: $bb
    nop                                           ; $45c2: $00
    xor a                                         ; $45c3: $af
    ld d, b                                       ; $45c4: $50
    cp $01                                        ; $45c5: $fe $01
    xor d                                         ; $45c7: $aa
    ld d, l                                       ; $45c8: $55
    add sp, $17                                   ; $45c9: $e8 $17
    nop                                           ; $45cb: $00
    ld [$6a15], a                                 ; $45cc: $ea $15 $6a
    sub l                                         ; $45cf: $95
    ld c, b                                       ; $45d0: $48
    or a                                          ; $45d1: $b7
    ld b, b                                       ; $45d2: $40
    cp a                                          ; $45d3: $bf
    nop                                           ; $45d4: $00
    inc de                                        ; $45d5: $13
    rst $38                                       ; $45d6: $ff
    call nz, Call_0bd_6f3b                        ; $45d7: $c4 $3b $6f
    sub b                                         ; $45da: $90
    xor l                                         ; $45db: $ad
    ld d, d                                       ; $45dc: $52
    nop                                           ; $45dd: $00
    ccf                                           ; $45de: $3f
    ret nz                                        ; $45df: $c0

    cpl                                           ; $45e0: $2f
    ret nc                                        ; $45e1: $d0

    ccf                                           ; $45e2: $3f
    ret nz                                        ; $45e3: $c0

    ld a, a                                       ; $45e4: $7f
    add b                                         ; $45e5: $80
    add b                                         ; $45e6: $80
    db $10                                        ; $45e7: $10

jr_0bd_45e8:
    dec c                                         ; $45e8: $0d
    ld a, a                                       ; $45e9: $7f
    rst $38                                       ; $45ea: $ff
    sub e                                         ; $45eb: $93
    ld a, a                                       ; $45ec: $7f
    ret                                           ; $45ed: $c9


    scf                                           ; $45ee: $37
    ld e, h                                       ; $45ef: $5c
    ld b, $a3                                     ; $45f0: $06 $a3
    sbc $21                                       ; $45f2: $de $21
    db $fd                                        ; $45f4: $fd
    inc bc                                        ; $45f5: $03
    ld [hl], b                                    ; $45f6: $70
    ld a, [hl-]                                   ; $45f7: $3a
    sub b                                         ; $45f8: $90
    ld a, [de]                                    ; $45f9: $1a
    ldh a, [$08]                                  ; $45fa: $f0 $08
    rst $38                                       ; $45fc: $ff
    ld [hl], c                                    ; $45fd: $71
    cp $78                                        ; $45fe: $fe $78
    add h                                         ; $4600: $84
    ld [hl], $ff                                  ; $4601: $36 $ff
    rst $38                                       ; $4603: $ff
    ld [hl], a                                    ; $4604: $77
    dec e                                         ; $4605: $1d
    adc a                                         ; $4606: $8f
    adc a                                         ; $4607: $8f
    ld a, a                                       ; $4608: $7f
    inc c                                         ; $4609: $0c
    jr z, jr_0bd_45e8                             ; $460a: $28 $dc

    ld c, $60                                     ; $460c: $0e $60
    ld c, h                                       ; $460e: $4c
    add sp, $60                                   ; $460f: $e8 $60
    inc b                                         ; $4611: $04
    nop                                           ; $4612: $00
    ld c, $c1                                     ; $4613: $0e $c1
    db $e4                                        ; $4615: $e4
    inc bc                                        ; $4616: $03
    ld c, d                                       ; $4617: $4a
    add l                                         ; $4618: $85
    sub l                                         ; $4619: $95
    inc bc                                        ; $461a: $03
    ld d, b                                       ; $461b: $50
    reti                                          ; $461c: $d9


    ld h, b                                       ; $461d: $60
    inc h                                         ; $461e: $24
    db $ec                                        ; $461f: $ec
    inc e                                         ; $4620: $1c
    ld b, $ee                                     ; $4621: $06 $ee
    pop af                                        ; $4623: $f1
    rst $18                                       ; $4624: $df
    ldh [rSB], a                                  ; $4625: $e0 $01
    jp c, $ece5                                   ; $4627: $da $e5 $ec

    di                                            ; $462a: $f3
    sbc $e1                                       ; $462b: $de $e1
    rst $28                                       ; $462d: $ef
    ldh a, [rSC]                                  ; $462e: $f0 $02
    ldh [$ae], a                                  ; $4630: $e0 $ae
    add hl, bc                                    ; $4632: $09
    or b                                          ; $4633: $b0
    add hl, de                                    ; $4634: $19
    cp d                                          ; $4635: $ba
    add hl, bc                                    ; $4636: $09
    ld b, h                                       ; $4637: $44
    cp e                                          ; $4638: $bb
    add h                                         ; $4639: $84
    ei                                            ; $463a: $fb
    ld d, h                                       ; $463b: $54
    nop                                           ; $463c: $00
    cp e                                          ; $463d: $bb
    ld b, c                                       ; $463e: $41
    cp a                                          ; $463f: $bf
    ld d, h                                       ; $4640: $54
    cp e                                          ; $4641: $bb
    ld d, c                                       ; $4642: $51
    cp a                                          ; $4643: $bf
    sub c                                         ; $4644: $91
    nop                                           ; $4645: $00
    rst $38                                       ; $4646: $ff
    ld d, e                                       ; $4647: $53
    cp a                                          ; $4648: $bf
    ld [$48f7], sp                                ; $4649: $08 $f7 $48
    or a                                          ; $464c: $b7
    nop                                           ; $464d: $00
    ld [$00ff], sp                                ; $464e: $08 $ff $00
    rst $38                                       ; $4651: $ff
    ld [bc], a                                    ; $4652: $02
    ld [bc], a                                    ; $4653: $02
    db $10                                        ; $4654: $10
    ld b, [hl]                                    ; $4655: $46
    rst $38                                       ; $4656: $ff
    cp a                                          ; $4657: $bf
    nop                                           ; $4658: $00
    ret nz                                        ; $4659: $c0

    dec sp                                        ; $465a: $3b
    call nz, $d0af                                ; $465b: $c4 $af $d0
    xor e                                         ; $465e: $ab
    call nc, $00ab                                ; $465f: $d4 $ab $00
    call nc, $d5aa                                ; $4662: $d4 $aa $d5
    adc e                                         ; $4665: $8b
    db $f4                                        ; $4666: $f4
    xor d                                         ; $4667: $aa
    push de                                       ; $4668: $d5
    call c, $2300                                 ; $4669: $dc $00 $23
    db $fd                                        ; $466c: $fd
    ld [bc], a                                    ; $466d: $02
    rst $28                                       ; $466e: $ef
    db $10                                        ; $466f: $10
    cp $01                                        ; $4670: $fe $01
    xor $00                                       ; $4672: $ee $00
    ld de, $10ef                                  ; $4674: $11 $ef $10
    ld a, [$ba05]                                 ; $4677: $fa $05 $ba
    ld b, l                                       ; $467a: $45
    ld a, [hl-]                                   ; $467b: $3a
    ld bc, $05ff                                  ; $467c: $01 $ff $05
    ld a, [$48b7]                                 ; $467f: $fa $b7 $48
    cp [hl]                                       ; $4682: $be
    ld b, c                                       ; $4683: $41
    add sp, $28                                   ; $4684: $e8 $28
    nop                                           ; $4686: $00
    ld [hl-], a                                   ; $4687: $32
    rst $38                                       ; $4688: $ff
    ld d, c                                       ; $4689: $51
    cp a                                          ; $468a: $bf
    push hl                                       ; $468b: $e5
    dec de                                        ; $468c: $1b
    add sp, $17                                   ; $468d: $e8 $17
    nop                                           ; $468f: $00
    db $ed                                        ; $4690: $ed
    inc de                                        ; $4691: $13
    db $fc                                        ; $4692: $fc
    inc bc                                        ; $4693: $03
    ld a, [hl]                                    ; $4694: $7e
    add c                                         ; $4695: $81

jr_0bd_4696:
    cp h                                          ; $4696: $bc
    ld b, e                                       ; $4697: $43
    add b                                         ; $4698: $80
    nop                                           ; $4699: $00
    ld e, d                                       ; $469a: $5a
    cp $ff                                        ; $469b: $fe $ff
    xor a                                         ; $469d: $af
    rst $38                                       ; $469e: $ff
    ld c, e                                       ; $469f: $4b
    cp a                                          ; $46a0: $bf
    adc e                                         ; $46a1: $8b
    nop                                           ; $46a2: $00
    ld a, a                                       ; $46a3: $7f
    ld [c], a                                     ; $46a4: $e2
    rra                                           ; $46a5: $1f
    xor c                                         ; $46a6: $a9
    ld d, a                                       ; $46a7: $57
    sbc h                                         ; $46a8: $9c
    ld h, e                                       ; $46a9: $63
    ld d, [hl]                                    ; $46aa: $56
    jr nz, jr_0bd_4696                            ; $46ab: $20 $e9

    ret                                           ; $46ad: $c9


    ret nz                                        ; $46ae: $c0

    ld bc, $c5ba                                  ; $46af: $01 $ba $c5
    xor b                                         ; $46b2: $a8
    rst $00                                       ; $46b3: $c7
    or h                                          ; $46b4: $b4
    nop                                           ; $46b5: $00
    res 3, b                                      ; $46b6: $cb $98
    rst $20                                       ; $46b8: $e7
    pop de                                        ; $46b9: $d1
    rst $28                                       ; $46ba: $ef
    call nz, $e6ff                                ; $46bb: $c4 $ff $e6
    ldh [$36], a                                  ; $46be: $e0 $36
    rla                                           ; $46c0: $17
    ld a, [c]                                     ; $46c1: $f2
    dec hl                                        ; $46c2: $2b
    ld b, d                                       ; $46c3: $42
    rrca                                          ; $46c4: $0f
    ld de, $37ff                                  ; $46c5: $11 $ff $37
    rst $38                                       ; $46c8: $ff
    or a                                          ; $46c9: $b7
    jr z, @+$01                                   ; $46ca: $28 $ff

    or e                                          ; $46cc: $b3
    ld [bc], a                                    ; $46cd: $02
    nop                                           ; $46ce: $00
    and [hl]                                      ; $46cf: $a6
    ld [bc], a                                    ; $46d0: $02
    db $10                                        ; $46d1: $10
    rlca                                          ; $46d2: $07
    rst $38                                       ; $46d3: $ff
    cpl                                           ; $46d4: $2f
    ld a, [bc]                                    ; $46d5: $0a
    rst $38                                       ; $46d6: $ff
    adc a                                         ; $46d7: $8f
    rst $38                                       ; $46d8: $ff
    and l                                         ; $46d9: $a5
    ld [bc], a                                    ; $46da: $02
    nop                                           ; $46db: $00
    db $f4                                        ; $46dc: $f4
    ld l, $00                                     ; $46dd: $2e $00
    and $04                                       ; $46df: $e6 $04
    rst $38                                       ; $46e1: $ff
    adc d                                         ; $46e2: $8a
    push af                                       ; $46e3: $f5
    xor d                                         ; $46e4: $aa
    push af                                       ; $46e5: $f5
    inc b                                         ; $46e6: $04
    ld [$f7a8], sp                                ; $46e7: $08 $a8 $f7
    ld b, b                                       ; $46ea: $40
    xor d                                         ; $46eb: $aa
    ld [bc], a                                    ; $46ec: $02
    nop                                           ; $46ed: $00
    and d                                         ; $46ee: $a2
    rst $38                                       ; $46ef: $ff
    ld hl, sp+$07                                 ; $46f0: $f8 $07
    ldh a, [rIF]                                  ; $46f2: $f0 $0f
    adc b                                         ; $46f4: $88
    ld a, b                                       ; $46f5: $78
    add hl, bc                                    ; $46f6: $09
    ld b, h                                       ; $46f7: $44
    cp e                                          ; $46f8: $bb
    inc b                                         ; $46f9: $04
    ret c                                         ; $46fa: $d8

    db $10                                        ; $46fb: $10
    ld [$6815], a                                 ; $46fc: $ea $15 $68
    ld b, d                                       ; $46ff: $42
    sub a                                         ; $4700: $97
    ld a, b                                       ; $4701: $78
    add hl, bc                                    ; $4702: $09
    ld [$40f7], sp                                ; $4703: $08 $f7 $40
    cp a                                          ; $4706: $bf
    ret c                                         ; $4707: $d8

    ld [$14be], sp                                ; $4708: $08 $be $14
    ld b, c                                       ; $470b: $41
    cp [hl]                                       ; $470c: $be
    ld b, c                                       ; $470d: $41
    ld a, b                                       ; $470e: $78
    add hl, bc                                    ; $470f: $09
    ccf                                           ; $4710: $3f
    ret c                                         ; $4711: $d8

    db $10                                        ; $4712: $10
    dec hl                                        ; $4713: $2b
    call nc, Call_000_1904                        ; $4714: $d4 $04 $19
    rst $38                                       ; $4717: $ff
    ld b, b                                       ; $4718: $40
    cp a                                          ; $4719: $bf
    ld d, [hl]                                    ; $471a: $56
    jr nz, jr_0bd_471f                            ; $471b: $20 $02

    sbc $21                                       ; $471d: $de $21

jr_0bd_471f:
    jr nz, jr_0bd_4798                            ; $471f: $20 $77

    adc b                                         ; $4721: $88
    ret c                                         ; $4722: $d8

    ld [$ff4e], sp                                ; $4723: $08 $4e $ff
    db $d3                                        ; $4726: $d3
    ld a, a                                       ; $4727: $7f
    sbc $0b                                       ; $4728: $de $0b
    ld a, a                                       ; $472a: $7f
    xor c                                         ; $472b: $a9
    ld d, a                                       ; $472c: $57
    call nz, $2220                                ; $472d: $c4 $20 $22
    ldh a, [$82]                                  ; $4730: $f0 $82
    dec b                                         ; $4732: $05
    inc b                                         ; $4733: $04
    dec a                                         ; $4734: $3d
    add l                                         ; $4735: $85
    ld h, b                                       ; $4736: $60
    ld [bc], a                                    ; $4737: $02
    rst $38                                       ; $4738: $ff
    cp [hl]                                       ; $4739: $be
    rst $38                                       ; $473a: $ff
    xor $04                                       ; $473b: $ee $04
    nop                                           ; $473d: $00
    cp $06                                        ; $473e: $fe $06
    nop                                           ; $4740: $00
    ld d, l                                       ; $4741: $55
    xor $90                                       ; $4742: $ee $90
    rlca                                          ; $4744: $07
    or $94                                        ; $4745: $f6 $94
    rlca                                          ; $4747: $07
    push af                                       ; $4748: $f5
    inc h                                         ; $4749: $24
    dec d                                         ; $474a: $15
    db $ed                                        ; $474b: $ed
    xor [hl]                                      ; $474c: $ae
    dec b                                         ; $474d: $05
    inc b                                         ; $474e: $04
    rst $28                                       ; $474f: $ef
    rst $38                                       ; $4750: $ff
    or d                                          ; $4751: $b2
    rst $38                                       ; $4752: $ff
    xor d                                         ; $4753: $aa
    ld [bc], a                                    ; $4754: $02
    nop                                           ; $4755: $00
    cp e                                          ; $4756: $bb
    rst $38                                       ; $4757: $ff
    ld b, d                                       ; $4758: $42
    xor e                                         ; $4759: $ab
    ret z                                         ; $475a: $c8

    inc b                                         ; $475b: $04
    xor e                                         ; $475c: $ab
    rst $38                                       ; $475d: $ff
    jp hl                                         ; $475e: $e9


    rst $38                                       ; $475f: $ff
    ld e, b                                       ; $4760: $58
    add hl, bc                                    ; $4761: $09
    ld de, $58df                                  ; $4762: $11 $df $58
    ld bc, $18c8                                  ; $4765: $01 $c8 $18
    inc sp                                        ; $4768: $33
    ld e, b                                       ; $4769: $58
    ld sp, $28c8                                  ; $476a: $31 $c8 $28
    ld e, b                                       ; $476d: $58
    add hl, hl                                    ; $476e: $29
    ret z                                         ; $476f: $c8

jr_0bd_4770:
    jr z, @+$5a                                   ; $4770: $28 $58

    add hl, hl                                    ; $4772: $29
    ldh [$c8], a                                  ; $4773: $e0 $c8
    jr z, @+$42                                   ; $4775: $28 $40

    ld a, [hl-]                                   ; $4777: $3a
    ret z                                         ; $4778: $c8

    ld [$bf42], sp                                ; $4779: $08 $42 $bf
    ld [hl-], a                                   ; $477c: $32
    rst $38                                       ; $477d: $ff
    add sp, $00                                   ; $477e: $e8 $00
    scf                                           ; $4780: $37
    ld e, l                                       ; $4781: $5d
    and d                                         ; $4782: $a2
    sbc l                                         ; $4783: $9d
    ld h, d                                       ; $4784: $62
    cp a                                          ; $4785: $bf
    ld b, b                                       ; $4786: $40
    dec e                                         ; $4787: $1d
    ld b, b                                       ; $4788: $40
    ld [c], a                                     ; $4789: $e2
    ld b, b                                       ; $478a: $40
    ld a, [bc]                                    ; $478b: $0a
    rst $38                                       ; $478c: $ff
    rst $38                                       ; $478d: $ff
    ld a, e                                       ; $478e: $7b
    rst $38                                       ; $478f: $ff
    ld a, l                                       ; $4790: $7d
    ei                                            ; $4791: $fb
    ld b, b                                       ; $4792: $40
    sub c                                         ; $4793: $91
    ret nc                                        ; $4794: $d0

    ld [bc], a                                    ; $4795: $02
    ld d, h                                       ; $4796: $54
    xor e                                         ; $4797: $ab

jr_0bd_4798:
    sub $29                                       ; $4798: $d6 $29
    ei                                            ; $479a: $fb
    inc b                                         ; $479b: $04
    add b                                         ; $479c: $80
    jr nc, jr_0bd_47fb                            ; $479d: $30 $5c

    ld a, a                                       ; $479f: $7f
    or c                                          ; $47a0: $b1
    ld l, $ff                                     ; $47a1: $2e $ff
    xor $1f                                       ; $47a3: $ee $1f
    dec [hl]                                      ; $47a5: $35
    nop                                           ; $47a6: $00
    adc $d0                                       ; $47a7: $ce $d0
    cpl                                           ; $47a9: $2f
    adc e                                         ; $47aa: $8b
    ld [hl], h                                    ; $47ab: $74
    sub [hl]                                      ; $47ac: $96
    ld a, c                                       ; $47ad: $79
    ld e, c                                       ; $47ae: $59
    xor b                                         ; $47af: $a8
    ret nc                                        ; $47b0: $d0

    rlca                                          ; $47b1: $07
    ld sp, hl                                     ; $47b2: $f9
    sub h                                         ; $47b3: $94
    nop                                           ; $47b4: $00
    ld a, [$0654]                                 ; $47b5: $fa $54 $06
    cp d                                          ; $47b8: $ba
    rst $38                                       ; $47b9: $ff
    ld a, d                                       ; $47ba: $7a
    cp l                                          ; $47bb: $bd
    ld l, [hl]                                    ; $47bc: $6e
    rlca                                          ; $47bd: $07
    rst $28                                       ; $47be: $ef
    ld e, b                                       ; $47bf: $58
    ld sp, $28d8                                  ; $47c0: $31 $d8 $28
    ld e, b                                       ; $47c3: $58
    add hl, hl                                    ; $47c4: $29
    ret c                                         ; $47c5: $d8

    jr z, jr_0bd_4770                             ; $47c6: $28 $a8

    ld d, h                                       ; $47c8: $54
    ld bc, $58a8                                  ; $47c9: $01 $a8 $58
    add hl, bc                                    ; $47cc: $09
    or d                                          ; $47cd: $b2
    sbc b                                         ; $47ce: $98
    dec b                                         ; $47cf: $05
    xor d                                         ; $47d0: $aa
    ld b, [hl]                                    ; $47d1: $46
    rlca                                          ; $47d2: $07
    ld b, h                                       ; $47d3: $44
    cp e                                          ; $47d4: $bb
    dec b                                         ; $47d5: $05
    add b                                         ; $47d6: $80
    jr nc, @+$04                                  ; $47d7: $30 $02

    ld bc, $55ff                                  ; $47d9: $01 $ff $55
    ei                                            ; $47dc: $fb
    ld e, c                                       ; $47dd: $59
    rst $38                                       ; $47de: $ff
    ld e, l                                       ; $47df: $5d
    add b                                         ; $47e0: $80
    ld a, h                                       ; $47e1: $7c
    nop                                           ; $47e2: $00
    ld [$4af7], sp                                ; $47e3: $08 $f7 $4a
    or a                                          ; $47e6: $b7
    ld [bc], a                                    ; $47e7: $02
    rst $38                                       ; $47e8: $ff
    ld a, [bc]                                    ; $47e9: $0a
    and b                                         ; $47ea: $a0
    or $00                                        ; $47eb: $f6 $00
    dec bc                                        ; $47ed: $0b
    inc e                                         ; $47ee: $1c
    ld bc, $ffef                                  ; $47ef: $01 $ef $ff
    jr nc, @+$1c                                  ; $47f2: $30 $1a

    dec h                                         ; $47f4: $25
    db $10                                        ; $47f5: $10
    ld b, d                                       ; $47f6: $42
    rst $38                                       ; $47f7: $ff
    ld bc, $f340                                  ; $47f8: $01 $40 $f3

jr_0bd_47fb:
    rrca                                          ; $47fb: $0f
    ld l, $01                                     ; $47fc: $2e $01
    db $10                                        ; $47fe: $10
    ld c, b                                       ; $47ff: $48
    rst $38                                       ; $4800: $ff
    inc h                                         ; $4801: $24
    rst $38                                       ; $4802: $ff
    ld a, a                                       ; $4803: $7f
    rrca                                          ; $4804: $0f
    ld e, b                                       ; $4805: $58
    rst $38                                       ; $4806: $ff
    ret nz                                        ; $4807: $c0

    rra                                           ; $4808: $1f
    ld d, b                                       ; $4809: $50
    ldh [rIE], a                                  ; $480a: $e0 $ff
    ld hl, $50af                                  ; $480c: $21 $af $50
    ld b, b                                       ; $480f: $40
    ld c, b                                       ; $4810: $48
    nop                                           ; $4811: $00
    rst $38                                       ; $4812: $ff
    ldh a, [rP1]                                  ; $4813: $f0 $00
    ld d, b                                       ; $4815: $50
    ld c, b                                       ; $4816: $48
    ld [de], a                                    ; $4817: $12
    ld a, [hl+]                                   ; $4818: $2a
    push de                                       ; $4819: $d5
    nop                                           ; $481a: $00
    db $10                                        ; $481b: $10
    ld d, b                                       ; $481c: $50
    xor a                                         ; $481d: $af
    ld d, b                                       ; $481e: $50
    db $10                                        ; $481f: $10
    ld e, b                                       ; $4820: $58
    rst $38                                       ; $4821: $ff
    ld b, l                                       ; $4822: $45
    nop                                           ; $4823: $00
    jr nz, jr_0bd_486e                            ; $4824: $20 $48

    nop                                           ; $4826: $00
    rst $38                                       ; $4827: $ff
    push af                                       ; $4828: $f5
    db $10                                        ; $4829: $10
    ld h, b                                       ; $482a: $60
    ld d, h                                       ; $482b: $54
    jr nz, jr_0bd_488e                            ; $482c: $20 $60

    ret z                                         ; $482e: $c8

    cpl                                           ; $482f: $2f
    nop                                           ; $4830: $00
    ld h, b                                       ; $4831: $60
    ld b, b                                       ; $4832: $40
    ld d, l                                       ; $4833: $55
    xor d                                         ; $4834: $aa
    db $10                                        ; $4835: $10
    ld e, b                                       ; $4836: $58
    ld a, a                                       ; $4837: $7f
    add b                                         ; $4838: $80
    ld a, [bc]                                    ; $4839: $0a
    or d                                          ; $483a: $b2
    ld d, b                                       ; $483b: $50
    ld d, b                                       ; $483c: $50
    xor d                                         ; $483d: $aa
    ld hl, $9e10                                  ; $483e: $21 $10 $9e
    ld c, b                                       ; $4841: $48
    db $fd                                        ; $4842: $fd
    ld [bc], a                                    ; $4843: $02
    jr nc, jr_0bd_4896                            ; $4844: $30 $50

    rst $38                                       ; $4846: $ff
    db $10                                        ; $4847: $10
    ld d, h                                       ; $4848: $54
    xor e                                         ; $4849: $ab
    dec d                                         ; $484a: $15
    or b                                          ; $484b: $b0
    ld d, b                                       ; $484c: $50
    rrca                                          ; $484d: $0f
    rst $38                                       ; $484e: $ff
    ld l, c                                       ; $484f: $69
    rla                                           ; $4850: $17
    sbc b                                         ; $4851: $98
    pop af                                        ; $4852: $f1
    ld h, b                                       ; $4853: $60
    rst $38                                       ; $4854: $ff
    dec b                                         ; $4855: $05
    ld [hl], l                                    ; $4856: $75
    ld [$4004], sp                                ; $4857: $08 $04 $40
    rst $18                                       ; $485a: $df
    ccf                                           ; $485b: $3f
    xor $00                                       ; $485c: $ee $00
    rra                                           ; $485e: $1f
    dec [hl]                                      ; $485f: $35
    ld c, $52                                     ; $4860: $0e $52
    inc c                                         ; $4862: $0c
    ld sp, $5a0e                                  ; $4863: $31 $0e $5a
    nop                                           ; $4866: $00
    inc b                                         ; $4867: $04
    ld sp, $ba0e                                  ; $4868: $31 $0e $ba
    inc b                                         ; $486b: $04
    rst $28                                       ; $486c: $ef
    ret nc                                        ; $486d: $d0

jr_0bd_486e:
    push af                                       ; $486e: $f5
    ld a, [bc]                                    ; $486f: $0a
    nop                                           ; $4870: $00
    ret nz                                        ; $4871: $c0

    nop                                           ; $4872: $00
    add b                                         ; $4873: $80
    inc b                                         ; $4874: $04
    nop                                           ; $4875: $00
    and b                                         ; $4876: $a0
    ld b, $00                                     ; $4877: $06 $00
    and b                                         ; $4879: $a0
    ret c                                         ; $487a: $d8

    and l                                         ; $487b: $a5
    jr jr_0bd_48b2                                ; $487c: $18 $34

    ld b, b                                       ; $487e: $40
    ld d, l                                       ; $487f: $55
    ld b, b                                       ; $4880: $40
    ld h, b                                       ; $4881: $60
    rrca                                          ; $4882: $0f
    ld [hl], b                                    ; $4883: $70
    ld bc, $0104                             ; $4884: $01 $04 $01
    ld d, b                                       ; $4887: $50
    ld [bc], a                                    ; $4888: $02
    inc b                                         ; $4889: $04
    jr nz, jr_0bd_488c                            ; $488a: $20 $00

jr_0bd_488c:
    ld [bc], a                                    ; $488c: $02
    nop                                           ; $488d: $00

jr_0bd_488e:
    ld d, c                                       ; $488e: $51
    ld c, $2b                                     ; $488f: $0e $2b
    inc b                                         ; $4891: $04
    nop                                           ; $4892: $00
    ld e, e                                       ; $4893: $5b
    inc b                                         ; $4894: $04
    inc sp                                        ; $4895: $33

jr_0bd_4896:
    inc c                                         ; $4896: $0c
    dec de                                        ; $4897: $1b

jr_0bd_4898:
    inc b                                         ; $4898: $04
    dec sp                                        ; $4899: $3b
    inc b                                         ; $489a: $04
    ld c, $1b                                     ; $489b: $0e $1b
    inc b                                         ; $489d: $04
    cp e                                          ; $489e: $bb
    inc b                                         ; $489f: $04
    ld e, b                                       ; $48a0: $58
    ld [$4804], sp                                ; $48a1: $08 $04 $48
    adc a                                         ; $48a4: $8f
    jr z, jr_0bd_48d1                             ; $48a5: $28 $2a

    jr nz, jr_0bd_48a9                            ; $48a7: $20 $00

jr_0bd_48a9:
    ld d, a                                       ; $48a9: $57
    sbc d                                         ; $48aa: $9a
    db $10                                        ; $48ab: $10
    xor b                                         ; $48ac: $a8
    nop                                           ; $48ad: $00
    rlca                                          ; $48ae: $07
    ld bc, $0011                                  ; $48af: $01 $11 $00

jr_0bd_48b2:
    ld e, $0c                                     ; $48b2: $1e $0c
    jr nc, jr_0bd_4926                            ; $48b4: $30 $70

    jr nz, jr_0bd_4898                            ; $48b6: $20 $e0

    ld b, b                                       ; $48b8: $40
    jr nz, jr_0bd_48bb                            ; $48b9: $20 $00

jr_0bd_48bb:
    ld b, b                                       ; $48bb: $40
    ld sp, $0040                                  ; $48bc: $31 $40 $00
    nop                                           ; $48bf: $00
    ld l, b                                       ; $48c0: $68
    ldh a, [$fd]                                  ; $48c1: $f0 $fd
    nop                                           ; $48c3: $00
    ld [$04fb], sp                                ; $48c4: $08 $fb $04
    dec hl                                        ; $48c7: $2b
    ld b, $5d                                     ; $48c8: $06 $5d
    inc bc                                        ; $48ca: $03
    cp e                                          ; $48cb: $bb
    inc d                                         ; $48cc: $14
    dec b                                         ; $48cd: $05
    ld e, h                                       ; $48ce: $5c
    inc bc                                        ; $48cf: $03
    cp a                                          ; $48d0: $bf

jr_0bd_48d1:
    jr @-$2e                                      ; $48d1: $18 $d0

    add $10                                       ; $48d3: $c6 $10
    add b                                         ; $48d5: $80
    nop                                           ; $48d6: $00
    jr nz, @-$7e                                  ; $48d7: $20 $80

    add b                                         ; $48d9: $80
    ld [hl], c                                    ; $48da: $71
    nop                                           ; $48db: $00
    nop                                           ; $48dc: $00
    ld a, [hl+]                                   ; $48dd: $2a
    ld bc, $0201                                  ; $48de: $01 $01 $02
    nop                                           ; $48e1: $00
    rlca                                          ; $48e2: $07
    ld [bc], a                                    ; $48e3: $02
    dec b                                         ; $48e4: $05
    ld [bc], a                                    ; $48e5: $02
    ld [bc], a                                    ; $48e6: $02
    inc bc                                        ; $48e7: $03
    ld e, a                                       ; $48e8: $5f
    ld bc, $6000                                  ; $48e9: $01 $00 $60
    nop                                           ; $48ec: $00
    ld a, b                                       ; $48ed: $78
    ldh a, [$9c]                                  ; $48ee: $f0 $9c
    ld [$040d], sp                                ; $48f0: $08 $0d $04
    nop                                           ; $48f3: $00
    ld c, $05                                     ; $48f4: $0e $05
    sbc [hl]                                      ; $48f6: $9e
    dec b                                         ; $48f7: $05
    push af                                       ; $48f8: $f5
    dec c                                         ; $48f9: $0d
    ld l, l                                       ; $48fa: $6d
    sbc c                                         ; $48fb: $99
    nop                                           ; $48fc: $00
    add b                                         ; $48fd: $80
    nop                                           ; $48fe: $00
    ld d, l                                       ; $48ff: $55
    add b                                         ; $4900: $80
    ld a, [$8080]                                 ; $4901: $fa $80 $80
    add b                                         ; $4904: $80
    ld bc, $808c                                  ; $4905: $01 $8c $80
    cp e                                          ; $4908: $bb
    sbc [hl]                                      ; $4909: $9e
    di                                            ; $490a: $f3
    and c                                         ; $490b: $a1
    pop hl                                        ; $490c: $e1
    ld d, b                                       ; $490d: $50
    nop                                           ; $490e: $00
    ld h, b                                       ; $490f: $60
    ld b, b                                       ; $4910: $40
    halt                                          ; $4911: $76
    jr nc, jr_0bd_4954                            ; $4912: $30 $40

    jr jr_0bd_492b                                ; $4914: $18 $15

    ld b, $f7                                     ; $4916: $06 $f7
    add hl, bc                                    ; $4918: $09
    jr z, jr_0bd_491b                             ; $4919: $28 $00

jr_0bd_491b:
    db $10                                        ; $491b: $10
    db $10                                        ; $491c: $10
    jr nc, jr_0bd_499b                            ; $491d: $30 $7c

    jr z, jr_0bd_4991                             ; $491f: $28 $70

    jr nz, jr_0bd_4984                            ; $4921: $20 $61

    add b                                         ; $4923: $80

jr_0bd_4924:
    ld [hl], b                                    ; $4924: $70
    nop                                           ; $4925: $00

jr_0bd_4926:
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    and b                                         ; $4928: $a0
    ret nz                                        ; $4929: $c0

    ld a, c                                       ; $492a: $79

jr_0bd_492b:
    jr nc, jr_0bd_4945                            ; $492b: $30 $18

    nop                                           ; $492d: $00
    ld [$0810], sp                                ; $492e: $08 $10 $08
    inc hl                                        ; $4931: $23
    ld de, $e257                                  ; $4932: $11 $57 $e2
    nop                                           ; $4935: $00
    jr nz, jr_0bd_4938                            ; $4936: $20 $00

jr_0bd_4938:
    ld d, $d6                                     ; $4938: $16 $d6
    ld bc, $007f                                  ; $493a: $01 $7f $00
    ld d, [hl]                                    ; $493d: $56
    ccf                                           ; $493e: $3f
    and l                                         ; $493f: $a5

jr_0bd_4940:
    dec c                                         ; $4940: $0d
    call nz, $8400                                ; $4941: $c4 $00 $84
    ld b, h                                       ; $4944: $44

jr_0bd_4945:
    sub b                                         ; $4945: $90
    nop                                           ; $4946: $00
    or h                                          ; $4947: $b4
    ld [$22ea], sp                                ; $4948: $08 $ea $22
    ld bc, $6503                                  ; $494b: $01 $03 $65
    ret nz                                        ; $494e: $c0

    ld [hl], b                                    ; $494f: $70
    jr nz, jr_0bd_498a                            ; $4950: $20 $38

    jr nc, jr_0bd_4940                            ; $4952: $30 $ec

jr_0bd_4954:
    jr z, @-$0a                                   ; $4954: $28 $f4

    jr z, jr_0bd_495c                             ; $4956: $28 $04

    ld e, d                                       ; $4958: $5a
    inc b                                         ; $4959: $04
    dec hl                                        ; $495a: $2b
    inc b                                         ; $495b: $04

jr_0bd_495c:
    ld e, d                                       ; $495c: $5a
    db $ec                                        ; $495d: $ec
    nop                                           ; $495e: $00
    ld a, [de]                                    ; $495f: $1a
    inc b                                         ; $4960: $04
    inc bc                                        ; $4961: $03
    add hl, hl                                    ; $4962: $29
    ld b, $1a                                     ; $4963: $06 $1a
    inc b                                         ; $4965: $04
    add hl, sp                                    ; $4966: $39
    ld b, $44                                     ; $4967: $06 $44
    add hl, bc                                    ; $4969: $09

jr_0bd_496a:
    ld d, b                                       ; $496a: $50
    add hl, bc                                    ; $496b: $09
    ldh [rHDMA2], a                               ; $496c: $e0 $52
    add hl, bc                                    ; $496e: $09
    ld d, [hl]                                    ; $496f: $56
    add hl, bc                                    ; $4970: $09
    inc hl                                        ; $4971: $23
    ld de, $1100                                  ; $4972: $11 $00 $11
    ld bc, $07ab                                  ; $4975: $01 $ab $07
    nop                                           ; $4978: $00
    jr jr_0bd_498a                                ; $4979: $18 $0f

    cpl                                           ; $497b: $2f
    db $10                                        ; $497c: $10
    ld a, h                                       ; $497d: $7c
    jr nz, jr_0bd_496a                            ; $497e: $20 $ea

    ld b, b                                       ; $4980: $40
    nop                                           ; $4981: $00
    or l                                          ; $4982: $b5
    ret nz                                        ; $4983: $c0

jr_0bd_4984:
    ld e, a                                       ; $4984: $5f
    and b                                         ; $4985: $a0
    cp a                                          ; $4986: $bf
    ret nz                                        ; $4987: $c0

    db $eb                                        ; $4988: $eb
    db $f4                                        ; $4989: $f4

jr_0bd_498a:
    nop                                           ; $498a: $00
    cp h                                          ; $498b: $bc
    ld b, e                                       ; $498c: $43
    ld d, [hl]                                    ; $498d: $56
    ld bc, $002f                                  ; $498e: $01 $2f $00

jr_0bd_4991:
    cp h                                          ; $4991: $bc
    inc bc                                        ; $4992: $03
    ld bc, $05fa                                  ; $4993: $01 $fa $05
    db $f4                                        ; $4996: $f4
    dec bc                                        ; $4997: $0b
    jp hl                                         ; $4998: $e9


    rla                                           ; $4999: $17
    rlca                                          ; $499a: $07

jr_0bd_499b:
    adc [hl]                                      ; $499b: $8e
    ld [bc], a                                    ; $499c: $02
    nop                                           ; $499d: $00
    adc a                                         ; $499e: $8f
    ld [hl], b                                    ; $499f: $70
    xor d                                         ; $49a0: $aa
    nop                                           ; $49a1: $00
    jr z, jr_0bd_4924                             ; $49a2: $28 $80

    push de                                       ; $49a4: $d5
    add b                                         ; $49a5: $80
    nop                                           ; $49a6: $00
    ld b, b                                       ; $49a7: $40
    add b                                         ; $49a8: $80
    add b                                         ; $49a9: $80
    ret nz                                        ; $49aa: $c0

    ret nz                                        ; $49ab: $c0

    ret nz                                        ; $49ac: $c0

    ld h, b                                       ; $49ad: $60
    ret nz                                        ; $49ae: $c0

    dec b                                         ; $49af: $05
    ret nc                                        ; $49b0: $d0

    ld h, b                                       ; $49b1: $60
    add sp, $10                                   ; $49b2: $e8 $10
    xor c                                         ; $49b4: $a9
    ret nz                                        ; $49b5: $c0

    ld hl, $5d0a                                  ; $49b6: $21 $0a $5d
    add hl, bc                                    ; $49b9: $09
    add b                                         ; $49ba: $80
    ld [hl], b                                    ; $49bb: $70
    ld [bc], a                                    ; $49bc: $02
    or [hl]                                       ; $49bd: $b6
    db $fd                                        ; $49be: $fd
    dec a                                         ; $49bf: $3d
    dec sp                                        ; $49c0: $3b
    ld a, e                                       ; $49c1: $7b
    ccf                                           ; $49c2: $3f
    rst $20                                       ; $49c3: $e7
    nop                                           ; $49c4: $00
    ld b, e                                       ; $49c5: $43
    jp $c381                                      ; $49c6: $c3 $81 $c3


    add c                                         ; $49c9: $81
    db $e4                                        ; $49ca: $e4
    add e                                         ; $49cb: $83
    dec a                                         ; $49cc: $3d
    nop                                           ; $49cd: $00
    jp $4061                                      ; $49ce: $c3 $61 $40


    db $d3                                        ; $49d1: $d3
    ld h, b                                       ; $49d2: $60
    ld e, [hl]                                    ; $49d3: $5e
    ld h, c                                       ; $49d4: $61
    ld de, $7f00                                  ; $49d5: $11 $00 $7f
    xor a                                         ; $49d8: $af
    ld e, [hl]                                    ; $49d9: $5e
    ld l, [hl]                                    ; $49da: $6e
    ld e, b                                       ; $49db: $58
    rst $18                                       ; $49dc: $df
    ld h, b                                       ; $49dd: $60
    ccf                                           ; $49de: $3f
    ld c, $5e                                     ; $49df: $0e $5e
    ret nz                                        ; $49e1: $c0

    add b                                         ; $49e2: $80
    ret nz                                        ; $49e3: $c0

    cp $00                                        ; $49e4: $fe $00
    daa                                           ; $49e6: $27
    ld bc, $01d4                                  ; $49e7: $01 $d4 $01
    ld [$0040], a                                 ; $49ea: $ea $40 $00
    or c                                          ; $49ed: $b1
    ld [bc], a                                    ; $49ee: $02
    ld [hl], b                                    ; $49ef: $70
    jr z, jr_0bd_4a32                             ; $49f0: $28 $40

    ld [hl], b                                    ; $49f2: $70
    ld b, b                                       ; $49f3: $40
    ld l, b                                       ; $49f4: $68
    nop                                           ; $49f5: $00
    ld b, b                                       ; $49f6: $40
    ld d, b                                       ; $49f7: $50
    ld h, b                                       ; $49f8: $60
    ld [hl], h                                    ; $49f9: $74
    ld a, b                                       ; $49fa: $78
    ld l, b                                       ; $49fb: $68
    ld d, b                                       ; $49fc: $50
    ld d, $00                                     ; $49fd: $16 $00
    ld h, h                                       ; $49ff: $64
    ld l, [hl]                                    ; $4a00: $6e
    inc h                                         ; $4a01: $24
    cp h                                          ; $4a02: $bc
    ld l, b                                       ; $4a03: $68
    ld l, d                                       ; $4a04: $6a
    jr c, @-$1a                                   ; $4a05: $38 $e4

    nop                                           ; $4a07: $00

jr_0bd_4a08:
    ld e, b                                       ; $4a08: $58
    ret c                                         ; $4a09: $d8

    sub b                                         ; $4a0a: $90
    jr nc, jr_0bd_4a1d                            ; $4a0b: $30 $10

    ld de, $0000                                  ; $4a0d: $11 $00 $00
    ld [$2002], sp                                ; $4a10: $08 $02 $20
    jr nz, jr_0bd_4a25                            ; $4a13: $20 $10

    sub b                                         ; $4a15: $90
    ld hl, $445d                                  ; $4a16: $21 $5d $44
    halt                                          ; $4a19: $76
    nop                                           ; $4a1a: $00
    jr z, jr_0bd_4a08                             ; $4a1b: $28 $eb

jr_0bd_4a1d:
    ld e, $54                                     ; $4a1d: $1e $54
    ld c, b                                       ; $4a1f: $48
    adc [hl]                                      ; $4a20: $8e
    inc b                                         ; $4a21: $04
    inc b                                         ; $4a22: $04
    nop                                           ; $4a23: $00
    ld [bc], a                                    ; $4a24: $02

jr_0bd_4a25:
    rlca                                          ; $4a25: $07
    ld c, $04                                     ; $4a26: $0e $04
    ld [bc], a                                    ; $4a28: $02
    ld bc, $8702                                  ; $4a29: $01 $02 $87
    rla                                           ; $4a2c: $17
    ld [bc], a                                    ; $4a2d: $02
    dec d                                         ; $4a2e: $15
    ld c, $d4                                     ; $4a2f: $0e $d4
    add hl, bc                                    ; $4a31: $09

jr_0bd_4a32:
    ld [bc], a                                    ; $4a32: $02
    jp c, $0611                                   ; $4a33: $da $11 $06

    ld [$000a], sp                                ; $4a36: $08 $0a $00
    ret nz                                        ; $4a39: $c0

    add [hl]                                      ; $4a3a: $86
    db $10                                        ; $4a3b: $10
    ld d, l                                       ; $4a3c: $55
    ld a, [hl-]                                   ; $4a3d: $3a
    ld a, [hl-]                                   ; $4a3e: $3a
    inc b                                         ; $4a3f: $04
    ld a, c                                       ; $4a40: $79
    ld b, $ba                                     ; $4a41: $06 $ba
    inc b                                         ; $4a43: $04
    nop                                           ; $4a44: $00
    ld e, c                                       ; $4a45: $59
    ld b, $3b                                     ; $4a46: $06 $3b
    inc b                                         ; $4a48: $04
    add hl, de                                    ; $4a49: $19
    ld b, $9b                                     ; $4a4a: $06 $9b
    inc b                                         ; $4a4c: $04
    inc e                                         ; $4a4d: $1c
    ld c, c                                       ; $4a4e: $49
    ld b, $c0                                     ; $4a4f: $06 $c0
    ld c, [hl]                                    ; $4a51: $4e
    ld [bc], a                                    ; $4a52: $02
    ld d, b                                       ; $4a53: $50
    ld a, [bc]                                    ; $4a54: $0a
    or $29                                        ; $4a55: $f6 $29
    ld h, b                                       ; $4a57: $60
    ld b, b                                       ; $4a58: $40
    nop                                           ; $4a59: $00
    jr nc, jr_0bd_4a9c                            ; $4a5a: $30 $40

    ld e, d                                       ; $4a5c: $5a
    ld h, b                                       ; $4a5d: $60
    ld l, l                                       ; $4a5e: $6d
    ld d, b                                       ; $4a5f: $50
    ld d, a                                       ; $4a60: $57
    ld l, b                                       ; $4a61: $68
    nop                                           ; $4a62: $00
    ld c, e                                       ; $4a63: $4b
    ld [hl], h                                    ; $4a64: $74
    ld [hl], c                                    ; $4a65: $71
    ld a, [hl]                                    ; $4a66: $7e
    ld a, [hl]                                    ; $4a67: $7e
    ld a, a                                       ; $4a68: $7f
    ld e, l                                       ; $4a69: $5d
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    ld a, [de]                                    ; $4a6c: $1a
    nop                                           ; $4a6d: $00
    inc b                                         ; $4a6e: $04
    nop                                           ; $4a6f: $00
    ld c, b                                       ; $4a70: $48
    nop                                           ; $4a71: $00
    or l                                          ; $4a72: $b5
    nop                                           ; $4a73: $00
    ld bc, $00fa                                  ; $4a74: $01 $fa $00
    ld a, a                                       ; $4a77: $7f
    add b                                         ; $4a78: $80
    rra                                           ; $4a79: $1f
    ldh [rSTAT], a                                ; $4a7a: $e0 $41
    ld b, h                                       ; $4a7c: $44
    inc bc                                        ; $4a7d: $03

Jump_0bd_4a7e:
    nop                                           ; $4a7e: $00
    dec b                                         ; $4a7f: $05
    nop                                           ; $4a80: $00
    dec hl                                        ; $4a81: $2b
    nop                                           ; $4a82: $00
    ld a, [hl]                                    ; $4a83: $7e
    ld bc, $0bf4                                  ; $4a84: $01 $f4 $0b
    nop                                           ; $4a87: $00
    rst $00                                       ; $4a88: $c7
    ccf                                           ; $4a89: $3f
    sbc b                                         ; $4a8a: $98
    ld a, a                                       ; $4a8b: $7f
    ld a, h                                       ; $4a8c: $7c
    ld [$0c36], sp                                ; $4a8d: $08 $36 $0c
    nop                                           ; $4a90: $00
    ld [$d216], a                                 ; $4a91: $ea $16 $d2
    ld l, $a6                                     ; $4a94: $2e $a6
    ld e, [hl]                                    ; $4a96: $5e
    ld a, $fe                                     ; $4a97: $3e $fe
    ld bc, $fefe                                  ; $4a99: $01 $fe $fe

jr_0bd_4a9c:
    ld a, [hl]                                    ; $4a9c: $7e
    cp $00                                        ; $4a9d: $fe $00
    nop                                           ; $4a9f: $00
    rla                                           ; $4aa0: $17
    jp nz, $0052                                  ; $4aa1: $c2 $52 $00

    pop bc                                        ; $4aa4: $c1
    ld a, a                                       ; $4aa5: $7f
    or $3d                                        ; $4aa6: $f6 $3d
    rra                                           ; $4aa8: $1f
    dec c                                         ; $4aa9: $0d
    rlca                                          ; $4aaa: $07
    inc bc                                        ; $4aab: $03
    ld [$011b], sp                                ; $4aac: $08 $1b $01
    ld l, a                                       ; $4aaf: $6f
    dec a                                         ; $4ab0: $3d
    ld b, $09                                     ; $4ab1: $06 $09
    ld a, [c]                                     ; $4ab3: $f2
    ld h, c                                       ; $4ab4: $61
    pop hl                                        ; $4ab5: $e1
    jr nz, jr_0bd_4af8                            ; $4ab6: $20 $40

    pop hl                                        ; $4ab8: $e1
    inc b                                         ; $4ab9: $04
    ld bc, $716e                                  ; $4aba: $01 $6e $71
    pop de                                        ; $4abd: $d1
    ld a, a                                       ; $4abe: $7f
    dec hl                                        ; $4abf: $2b
    ld d, $5e                                     ; $4ac0: $16 $5e
    db $e4                                        ; $4ac2: $e4
    ld e, b                                       ; $4ac3: $58
    inc h                                         ; $4ac4: $24
    ld a, [bc]                                    ; $4ac5: $0a
    ld b, b                                       ; $4ac6: $40
    inc b                                         ; $4ac7: $04
    ld hl, $0b50                                  ; $4ac8: $21 $50 $0b
    ld a, l                                       ; $4acb: $7d
    nop                                           ; $4acc: $00
    jr z, jr_0bd_4b09                             ; $4acd: $28 $3a

    db $10                                        ; $4acf: $10
    rla                                           ; $4ad0: $17
    jr @-$4b                                      ; $4ad1: $18 $b3

    dec c                                         ; $4ad3: $0d

jr_0bd_4ad4:
    rrca                                          ; $4ad4: $0f
    jr nz, @+$09                                  ; $4ad5: $20 $07

    inc bc                                        ; $4ad7: $03
    ccf                                           ; $4ad8: $3f
    ld bc, $0057                                  ; $4ad9: $01 $57 $00
    ld b, l                                       ; $4adc: $45
    ld bc, $002a                                  ; $4add: $01 $2a $00
    add c                                         ; $4ae0: $81
    ld d, l                                       ; $4ae1: $55
    adc e                                         ; $4ae2: $8b
    xor e                                         ; $4ae3: $ab
    ld c, [hl]                                    ; $4ae4: $4e
    ld e, h                                       ; $4ae5: $5c
    xor a                                         ; $4ae6: $af
    ret z                                         ; $4ae7: $c8

    ld b, b                                       ; $4ae8: $40
    ld hl, sp-$28                                 ; $4ae9: $f8 $d8
    add hl, bc                                    ; $4aeb: $09
    and h                                         ; $4aec: $a4
    ld a, [hl]                                    ; $4aed: $7e
    rst $30                                       ; $4aee: $f7
    call z, Call_000_078e                         ; $4aef: $cc $8e $07
    nop                                           ; $4af2: $00
    rlca                                          ; $4af3: $07
    inc b                                         ; $4af4: $04
    adc $04                                       ; $4af5: $ce $04
    dec e                                         ; $4af7: $1d

jr_0bd_4af8:
    rlca                                          ; $4af8: $07
    cp [hl]                                       ; $4af9: $be
    ld [$0400], sp                                ; $4afa: $08 $00 $04
    ld [$0287], sp                                ; $4afd: $08 $87 $02
    dec c                                         ; $4b00: $0d
    add d                                         ; $4b01: $82
    add [hl]                                      ; $4b02: $86
    ld [bc], a                                    ; $4b03: $02
    nop                                           ; $4b04: $00
    jr jr_0bd_4b15                                ; $4b05: $18 $0e

    adc h                                         ; $4b07: $8c
    ld [bc], a                                    ; $4b08: $02

jr_0bd_4b09:
    ld d, [hl]                                    ; $4b09: $56
    add d                                         ; $4b0a: $82
    dec bc                                        ; $4b0b: $0b
    ld b, $3d                                     ; $4b0c: $06 $3d
    ld e, $02                                     ; $4b0e: $1e $02
    rlca                                          ; $4b10: $07
    ld bc, $6100                                  ; $4b11: $01 $00 $61
    rst $30                                       ; $4b14: $f7

jr_0bd_4b15:
    ld [hl+], a                                   ; $4b15: $22
    inc b                                         ; $4b16: $04
    jr nz, jr_0bd_4ad4                            ; $4b17: $20 $bb

    nop                                           ; $4b19: $00
    ld bc, $0482                                  ; $4b1a: $01 $82 $04
    add hl, bc                                    ; $4b1d: $09
    ld [hl], d                                    ; $4b1e: $72

jr_0bd_4b1f:
    inc c                                         ; $4b1f: $0c
    cp e                                          ; $4b20: $bb
    inc b                                         ; $4b21: $04
    ld d, d                                       ; $4b22: $52
    inc b                                         ; $4b23: $04
    nop                                           ; $4b24: $00
    ret nz                                        ; $4b25: $c0

    jr nc, jr_0bd_4b28                            ; $4b26: $30 $00

jr_0bd_4b28:
    ldh [rSC], a                                  ; $4b28: $e0 $02
    ld hl, $1802                                  ; $4b2a: $21 $02 $18
    ld a, a                                       ; $4b2d: $7f
    ccf                                           ; $4b2e: $3f
    ld a, [hl-]                                   ; $4b2f: $3a
    rra                                           ; $4b30: $1f
    ld [bc], a                                    ; $4b31: $02
    dec e                                         ; $4b32: $1d
    rrca                                          ; $4b33: $0f
    ld b, $03                                     ; $4b34: $06 $03
    inc bc                                        ; $4b36: $03
    ld bc, $18c8                                  ; $4b37: $01 $c8 $18
    rst $00                                       ; $4b3a: $c7
    nop                                           ; $4b3b: $00
    ld hl, sp+$19                                 ; $4b3c: $f8 $19
    cp $02                                        ; $4b3e: $fe $02
    db $fd                                        ; $4b40: $fd
    sub l                                         ; $4b41: $95
    ld [$00d2], a                                 ; $4b42: $ea $d2 $00
    db $fd                                        ; $4b45: $fd
    add sp, $7f                                   ; $4b46: $e8 $7f
    xor l                                         ; $4b48: $ad
    rra                                           ; $4b49: $1f
    nop                                           ; $4b4a: $00
    nop                                           ; $4b4b: $00
    ldh a, [rP1]                                  ; $4b4c: $f0 $00
    rrca                                          ; $4b4e: $0f
    ld a, [$ff05]                                 ; $4b4f: $fa $05 $ff
    nop                                           ; $4b52: $00
    db $f4                                        ; $4b53: $f4
    dec bc                                        ; $4b54: $0b
    and b                                         ; $4b55: $a0
    nop                                           ; $4b56: $00
    ld e, a                                       ; $4b57: $5f
    ld [bc], a                                    ; $4b58: $02
    rst $38                                       ; $4b59: $ff
    ld l, a                                       ; $4b5a: $6f
    db $fc                                        ; $4b5b: $fc
    ld a, [bc]                                    ; $4b5c: $0a
    nop                                           ; $4b5d: $00
    ld c, $00                                     ; $4b5e: $0e $00
    db $fc                                        ; $4b60: $fc
    and h                                         ; $4b61: $a4
    ld e, h                                       ; $4b62: $5c
    ld d, h                                       ; $4b63: $54
    cp b                                          ; $4b64: $b8
    or b                                          ; $4b65: $b0
    ld h, b                                       ; $4b66: $60
    jr nz, jr_0bd_4b1f                            ; $4b67: $20 $b6

    sub l                                         ; $4b69: $95
    inc bc                                        ; $4b6a: $03
    ld d, l                                       ; $4b6b: $55
    sub h                                         ; $4b6c: $94
    inc bc                                        ; $4b6d: $03
    ld d, l                                       ; $4b6e: $55
    dec bc                                        ; $4b6f: $0b
    ld a, [bc]                                    ; $4b70: $0a
    inc l                                         ; $4b71: $2c
    inc hl                                        ; $4b72: $23
    ld b, b                                       ; $4b73: $40
    inc c                                         ; $4b74: $0c
    jp $8100                                      ; $4b75: $c3 $00 $81


    ld h, l                                       ; $4b78: $65
    add e                                         ; $4b79: $83
    cp e                                          ; $4b7a: $bb
    rst $00                                       ; $4b7b: $c7
    push bc                                       ; $4b7c: $c5
    ld a, a                                       ; $4b7d: $7f
    ld a, c                                       ; $4b7e: $79
    nop                                           ; $4b7f: $00
    ccf                                           ; $4b80: $3f
    rra                                           ; $4b81: $1f
    inc c                                         ; $4b82: $0c
    rlca                                          ; $4b83: $07
    ld [bc], a                                    ; $4b84: $02
    nop                                           ; $4b85: $00
    inc bc                                        ; $4b86: $03
    ld d, l                                       ; $4b87: $55
    ld [bc], a                                    ; $4b88: $02
    ld h, b                                       ; $4b89: $60
    rst $38                                       ; $4b8a: $ff
    ld b, b                                       ; $4b8b: $40
    add b                                         ; $4b8c: $80
    ld b, b                                       ; $4b8d: $40
    ret nz                                        ; $4b8e: $c0

    inc b                                         ; $4b8f: $04
    nop                                           ; $4b90: $00
    adc d                                         ; $4b91: $8a
    inc a                                         ; $4b92: $3c
    ret nz                                        ; $4b93: $c0

    pop bc                                        ; $4b94: $c1
    ld sp, hl                                     ; $4b95: $f9
    nop                                           ; $4b96: $00
    or b                                          ; $4b97: $b0
    ld a, [de]                                    ; $4b98: $1a
    ld e, d                                       ; $4b99: $5a
    dec de                                        ; $4b9a: $1b
    db $dd                                        ; $4b9b: $dd
    ld [de], a                                    ; $4b9c: $12
    nop                                           ; $4b9d: $00
    ld b, l                                       ; $4b9e: $45
    add b                                         ; $4b9f: $80
    ld [bc], a                                    ; $4ba0: $02
    ld d, h                                       ; $4ba1: $54
    db $10                                        ; $4ba2: $10
    ld c, $e8                                     ; $4ba3: $0e $e8
    db $10                                        ; $4ba5: $10
    ld [$0710], sp                                ; $4ba6: $08 $10 $07
    ld [$3518], sp                                ; $4ba9: $08 $18 $35
    ld c, $fc                                     ; $4bac: $0e $fc
    ld e, h                                       ; $4bae: $5c
    inc bc                                        ; $4baf: $03
    dec d                                         ; $4bb0: $15
    nop                                           ; $4bb1: $00
    ld l, $00                                     ; $4bb2: $2e $00
    inc e                                         ; $4bb4: $1c
    ld d, [hl]                                    ; $4bb5: $56
    inc c                                         ; $4bb6: $0c
    xor h                                         ; $4bb7: $ac
    inc b                                         ; $4bb8: $04
    ld d, h                                       ; $4bb9: $54
    inc c                                         ; $4bba: $0c
    call c, Call_000_0801                         ; $4bbb: $dc $01 $08
    daa                                           ; $4bbe: $27
    ret c                                         ; $4bbf: $d8

    xor b                                         ; $4bc0: $a8
    ld [hl], b                                    ; $4bc1: $70
    ld b, b                                       ; $4bc2: $40
    nop                                           ; $4bc3: $00
    ldh a, [rNR23]                                ; $4bc4: $f0 $18
    ldh [$f2], a                                  ; $4bc6: $e0 $f2
    add hl, de                                    ; $4bc8: $19
    db $fc                                        ; $4bc9: $fc
    ld de, $61f0                                  ; $4bca: $11 $f0 $61
    jp nc, Jump_0bd_7b0c                          ; $4bcd: $d2 $0c $7b

    inc b                                         ; $4bd0: $04
    ld a, [c]                                     ; $4bd1: $f2
    adc c                                         ; $4bd2: $89
    inc b                                         ; $4bd3: $04
    nop                                           ; $4bd4: $00
    ld a, [$7304]                                 ; $4bd5: $fa $04 $73
    ld a, [c]                                     ; $4bd8: $f2
    nop                                           ; $4bd9: $00
    ld d, c                                       ; $4bda: $51
    ld c, $34                                     ; $4bdb: $0e $34
    inc c                                         ; $4bdd: $0c
    ld [c], a                                     ; $4bde: $e2
    xor $39                                       ; $4bdf: $ee $39
    ldh [$2b], a                                  ; $4be1: $e0 $2b
    halt                                          ; $4be3: $76
    ld c, h                                       ; $4be4: $4c
    ld bc, $9200                                  ; $4be5: $01 $00 $92
    ld a, [c]                                     ; $4be8: $f2
    ld bc, $a020                                  ; $4be9: $01 $20 $a0
    inc l                                         ; $4bec: $2c
    dec b                                         ; $4bed: $05
    inc b                                         ; $4bee: $04
    jr nc, jr_0bd_4bf6                            ; $4bef: $30 $05

    ld b, b                                       ; $4bf1: $40
    nop                                           ; $4bf2: $00
    cp h                                          ; $4bf3: $bc
    ldh a, [rPCM12]                               ; $4bf4: $f0 $76

jr_0bd_4bf6:
    inc l                                         ; $4bf6: $2c
    rra                                           ; $4bf7: $1f
    inc bc                                        ; $4bf8: $03
    ld a, d                                       ; $4bf9: $7a
    nop                                           ; $4bfa: $00
    ld [bc], a                                    ; $4bfb: $02
    halt                                          ; $4bfc: $76
    inc b                                         ; $4bfd: $04
    adc $0b                                       ; $4bfe: $ce $0b
    ld a, [bc]                                    ; $4c00: $0a
    nop                                           ; $4c01: $00
    ld [bc], a                                    ; $4c02: $02
    ld h, b                                       ; $4c03: $60
    add b                                         ; $4c04: $80
    rst $18                                       ; $4c05: $df
    db $fc                                        ; $4c06: $fc
    ld e, c                                       ; $4c07: $59
    rlca                                          ; $4c08: $07
    xor c                                         ; $4c09: $a9
    inc e                                         ; $4c0a: $1c
    ld c, b                                       ; $4c0b: $48
    add b                                         ; $4c0c: $80
    jr z, jr_0bd_4c1f                             ; $4c0d: $28 $10

    ld b, $04                                     ; $4c0f: $06 $04
    ld a, e                                       ; $4c11: $7b
    and $7e                                       ; $4c12: $e6 $7e
    ccf                                           ; $4c14: $3f
    rst $10                                       ; $4c15: $d7
    ld b, b                                       ; $4c16: $40
    ld a, a                                       ; $4c17: $7f
    cp l                                          ; $4c18: $bd
    inc a                                         ; $4c19: $3c
    ld a, [hl+]                                   ; $4c1a: $2a
    nop                                           ; $4c1b: $00
    pop bc                                        ; $4c1c: $c1
    add b                                         ; $4c1d: $80
    ret nz                                        ; $4c1e: $c0

jr_0bd_4c1f:
    ldh [$63], a                                  ; $4c1f: $e0 $63
    ldh a, [$71]                                  ; $4c21: $f0 $71
    inc c                                         ; $4c23: $0c
    ld bc, $8f10                                  ; $4c24: $01 $10 $8f
    rlca                                          ; $4c27: $07
    ld d, a                                       ; $4c28: $57
    ld d, h                                       ; $4c29: $54
    ld bc, $0b12                                  ; $4c2a: $01 $12 $0b
    ld de, $80c2                                  ; $4c2d: $11 $c2 $80
    call nz, Call_000_02f4                        ; $4c30: $c4 $f4 $02
    ld [c], a                                     ; $4c33: $e2
    ldh [$c0], a                                  ; $4c34: $e0 $c0
    ld sp, hl                                     ; $4c36: $f9
    ld [bc], a                                    ; $4c37: $02
    add b                                         ; $4c38: $80
    db $ed                                        ; $4c39: $ed
    inc l                                         ; $4c3a: $2c
    ld b, h                                       ; $4c3b: $44
    nop                                           ; $4c3c: $00
    ld [de], a                                    ; $4c3d: $12
    nop                                           ; $4c3e: $00
    adc e                                         ; $4c3f: $8b
    ld bc, $3823                                  ; $4c40: $01 $23 $38
    rlca                                          ; $4c43: $07
    rrca                                          ; $4c44: $0f
    cpl                                           ; $4c45: $2f
    inc c                                         ; $4c46: $0c
    sbc b                                         ; $4c47: $98
    inc b                                         ; $4c48: $04
    and h                                         ; $4c49: $a4
    inc a                                         ; $4c4a: $3c
    dec sp                                        ; $4c4b: $3b
    inc b                                         ; $4c4c: $04
    sub c                                         ; $4c4d: $91
    scf                                           ; $4c4e: $37
    ld c, $fb                                     ; $4c4f: $0e $fb
    or h                                          ; $4c51: $b4
    ld [bc], a                                    ; $4c52: $02
    cp b                                          ; $4c53: $b8
    add hl, bc                                    ; $4c54: $09
    cp e                                          ; $4c55: $bb
    cp b                                          ; $4c56: $b8
    ld [bc], a                                    ; $4c57: $02
    ld hl, sp+$1c                                 ; $4c58: $f8 $1c
    ld b, $38                                     ; $4c5a: $06 $38
    nop                                           ; $4c5c: $00
    rrca                                          ; $4c5d: $0f
    rrca                                          ; $4c5e: $0f
    ccf                                           ; $4c5f: $3f
    ccf                                           ; $4c60: $3f
    ld e, a                                       ; $4c61: $5f
    ld a, a                                       ; $4c62: $7f
    xor a                                         ; $4c63: $af
    rst $38                                       ; $4c64: $ff
    inc b                                         ; $4c65: $04
    and l                                         ; $4c66: $a5
    rst $18                                       ; $4c67: $df
    ld e, [hl]                                    ; $4c68: $5e
    ld h, c                                       ; $4c69: $61
    ccf                                           ; $4c6a: $3f
    ld bc, $f000                                  ; $4c6b: $01 $00 $f0
    ldh a, [rP1]                                  ; $4c6e: $f0 $00
    db $fc                                        ; $4c70: $fc
    db $fc                                        ; $4c71: $fc
    cp $fe                                        ; $4c72: $fe $fe
    db $fd                                        ; $4c74: $fd
    rst $38                                       ; $4c75: $ff
    ei                                            ; $4c76: $fb
    rst $38                                       ; $4c77: $ff
    rra                                           ; $4c78: $1f
    xor [hl]                                      ; $4c79: $ae
    ld a, [hl]                                    ; $4c7a: $7e
    db $fc                                        ; $4c7b: $fc
    ld bc, $0c00                                  ; $4c7c: $01 $00 $0c
    dec sp                                        ; $4c7f: $3b
    jr jr_0bd_4ca5                                ; $4c80: $18 $23

    ld c, $32                                     ; $4c82: $0e $32
    ld l, c                                       ; $4c84: $69
    dec e                                         ; $4c85: $1d
    ld d, c                                       ; $4c86: $51
    dec sp                                        ; $4c87: $3b
    db $10                                        ; $4c88: $10
    ld [de], a                                    ; $4c89: $12
    ld e, c                                       ; $4c8a: $59
    inc d                                         ; $4c8b: $14
    inc bc                                        ; $4c8c: $03
    ld a, c                                       ; $4c8d: $79
    ld b, $fa                                     ; $4c8e: $06 $fa
    ld a, [bc]                                    ; $4c90: $0a
    dec b                                         ; $4c91: $05
    ret nz                                        ; $4c92: $c0

    ld e, h                                       ; $4c93: $5c
    jr c, jr_0bd_4cb0                             ; $4c94: $38 $1a

    dec de                                        ; $4c96: $1b
    ld h, a                                       ; $4c97: $67
    ld a, a                                       ; $4c98: $7f
    db $db                                        ; $4c99: $db
    rst $20                                       ; $4c9a: $e7
    or l                                          ; $4c9b: $b5
    rst $08                                       ; $4c9c: $cf
    nop                                           ; $4c9d: $00
    xor e                                         ; $4c9e: $ab
    rst $18                                       ; $4c9f: $df
    and a                                         ; $4ca0: $a7
    rst $18                                       ; $4ca1: $df
    db $db                                        ; $4ca2: $db
    rst $28                                       ; $4ca3: $ef
    ld h, l                                       ; $4ca4: $65

jr_0bd_4ca5:
    ld a, a                                       ; $4ca5: $7f
    ld bc, $3f3f                                  ; $4ca6: $01 $3f $3f
    and $fe                                       ; $4ca9: $e6 $fe
    rst $28                                       ; $4cab: $ef
    rst $30                                       ; $4cac: $f7
    rst $38                                       ; $4cad: $ff
    ld e, [hl]                                    ; $4cae: $5e
    nop                                           ; $4caf: $00

jr_0bd_4cb0:
    add a                                         ; $4cb0: $87
    ret z                                         ; $4cb1: $c8

    ld c, $fe                                     ; $4cb2: $0e $fe
    cp $fc                                        ; $4cb4: $fe $fc
    db $fc                                        ; $4cb6: $fc
    ld l, [hl]                                    ; $4cb7: $6e
    dec sp                                        ; $4cb8: $3b
    ld a, d                                       ; $4cb9: $7a
    ld [hl+], a                                   ; $4cba: $22
    ld h, b                                       ; $4cbb: $60
    ld d, b                                       ; $4cbc: $50
    ld c, b                                       ; $4cbd: $48
    ld bc, $0370                                  ; $4cbe: $01 $70 $03
    ld a, e                                       ; $4cc1: $7b
    inc b                                         ; $4cc2: $04
    ld h, b                                       ; $4cc3: $60
    jr jr_0bd_4d1f                                ; $4cc4: $18 $59

    ld b, $fb                                     ; $4cc6: $06 $fb
    ld e, $04                                     ; $4cc8: $1e $04
    ld [hl], c                                    ; $4cca: $71
    ld c, $6e                                     ; $4ccb: $0e $6e
    ld a, [bc]                                    ; $4ccd: $0a
    ld [hl], d                                    ; $4cce: $72
    ld a, [bc]                                    ; $4ccf: $0a
    ld h, [hl]                                    ; $4cd0: $66
    dec l                                         ; $4cd1: $2d
    or b                                          ; $4cd2: $b0
    ld a, [bc]                                    ; $4cd3: $0a
    ld b, $f0                                     ; $4cd4: $06 $f0
    and d                                         ; $4cd6: $a2
    ld b, h                                       ; $4cd7: $44
    rst $38                                       ; $4cd8: $ff
    dec e                                         ; $4cd9: $1d
    add hl, sp                                    ; $4cda: $39
    ld b, $b2                                     ; $4cdb: $06 $b2
    ld [hl+], a                                   ; $4cdd: $22
    cp e                                          ; $4cde: $bb
    inc b                                         ; $4cdf: $04
    pop af                                        ; $4ce0: $f1
    ld c, $11                                     ; $4ce1: $0e $11
    ld a, e                                       ; $4ce3: $7b
    inc b                                         ; $4ce4: $04
    or e                                          ; $4ce5: $b3
    add $01                                       ; $4ce6: $c6 $01
    inc sp                                        ; $4ce8: $33
    inc c                                         ; $4ce9: $0c
    sbc e                                         ; $4cea: $9b
    ld c, h                                       ; $4ceb: $4c
    nop                                           ; $4cec: $00
    db $f4                                        ; $4ced: $f4
    xor b                                         ; $4cee: $a8
    inc e                                         ; $4cef: $1c
    ld b, $38                                     ; $4cf0: $06 $38
    inc [hl]                                      ; $4cf2: $34
    db $10                                        ; $4cf3: $10
    db $f4                                        ; $4cf4: $f4
    ld b, e                                       ; $4cf5: $43
    ei                                            ; $4cf6: $fb
    ld [hl], b                                    ; $4cf7: $70
    nop                                           ; $4cf8: $00
    ld a, [$6e04]                                 ; $4cf9: $fa $04 $6e
    ei                                            ; $4cfc: $fb
    ldh a, [rSB]                                  ; $4cfd: $f0 $01
    add sp, $0b                                   ; $4cff: $e8 $0b
    ld [hl], c                                    ; $4d01: $71
    ldh a, [rSB]                                  ; $4d02: $f0 $01
    ld l, $1e                                     ; $4d04: $2e $1e
    add sp, $1b                                   ; $4d06: $e8 $1b
    ldh [$fa], a                                  ; $4d08: $e0 $fa
    nop                                           ; $4d0a: $00
    ld b, $18                                     ; $4d0b: $06 $18
    inc e                                         ; $4d0d: $1c
    or b                                          ; $4d0e: $b0
    jr c, jr_0bd_4d31                             ; $4d0f: $38 $20

    inc e                                         ; $4d11: $1c
    jr nz, jr_0bd_4d3f                            ; $4d12: $20 $2b

    ld a, [$00a4]                                 ; $4d14: $fa $a4 $00
    cp d                                          ; $4d17: $ba
    xor a                                         ; $4d18: $af
    ld [hl], h                                    ; $4d19: $74
    nop                                           ; $4d1a: $00
    ld a, d                                       ; $4d1b: $7a
    inc b                                         ; $4d1c: $04
    db $10                                        ; $4d1d: $10
    cp c                                          ; $4d1e: $b9

jr_0bd_4d1f:
    ld [hl], b                                    ; $4d1f: $70
    ld de, $1e14                                  ; $4d20: $11 $14 $1e
    inc h                                         ; $4d23: $24
    dec e                                         ; $4d24: $1d
    ld l, d                                       ; $4d25: $6a
    ld a, [hl+]                                   ; $4d26: $2a
    ldh [$74], a                                  ; $4d27: $e0 $74
    ld [hl-], a                                   ; $4d29: $32
    jr c, jr_0bd_4d6e                             ; $4d2a: $38 $42

    db $ec                                        ; $4d2c: $ec
    dec c                                         ; $4d2d: $0d
    ld [hl], d                                    ; $4d2e: $72
    inc c                                         ; $4d2f: $0c
    cp c                                          ; $4d30: $b9

jr_0bd_4d31:
    ld b, $5a                                     ; $4d31: $06 $5a
    xor a                                         ; $4d33: $af
    jr c, jr_0bd_4d36                             ; $4d34: $38 $00

jr_0bd_4d36:
    ld a, d                                       ; $4d36: $7a
    ld hl, sp+$00                                 ; $4d37: $f8 $00
    cp d                                          ; $4d39: $ba
    ld e, d                                       ; $4d3a: $5a
    ld b, $5c                                     ; $4d3b: $06 $5c
    dec e                                         ; $4d3d: $1d
    xor h                                         ; $4d3e: $ac

jr_0bd_4d3f:
    ld c, $62                                     ; $4d3f: $0e $62
    dec e                                         ; $4d41: $1d
    and a                                         ; $4d42: $a7
    adc [hl]                                      ; $4d43: $8e
    dec hl                                        ; $4d44: $2b
    ld bc, $0446                                  ; $4d45: $01 $46 $04
    inc bc                                        ; $4d48: $03
    ld bc, $03e4                                  ; $4d49: $01 $e4 $03
    ld b, b                                       ; $4d4c: $40
    ld b, c                                       ; $4d4d: $41
    inc sp                                        ; $4d4e: $33
    dec e                                         ; $4d4f: $1d
    pop de                                        ; $4d50: $d1
    db $fc                                        ; $4d51: $fc
    ld [$0ac6], sp                                ; $4d52: $08 $c6 $0a
    inc bc                                        ; $4d55: $03
    sbc a                                         ; $4d56: $9f
    ld b, $02                                     ; $4d57: $06 $02
    nop                                           ; $4d59: $00
    cp d                                          ; $4d5a: $ba
    ld b, b                                       ; $4d5b: $40
    ld bc, $bb53                                  ; $4d5c: $01 $53 $bb
    inc b                                         ; $4d5f: $04
    db $10                                        ; $4d60: $10
    ei                                            ; $4d61: $fb
    sub $00                                       ; $4d62: $d6 $00
    di                                            ; $4d64: $f3
    inc c                                         ; $4d65: $0c
    nop                                           ; $4d66: $00
    add hl, hl                                    ; $4d67: $29
    or b                                          ; $4d68: $b0
    dec l                                         ; $4d69: $2d
    nop                                           ; $4d6a: $00
    rlca                                          ; $4d6b: $07
    inc bc                                        ; $4d6c: $03
    rrca                                          ; $4d6d: $0f

jr_0bd_4d6e:
    ld b, $1b                                     ; $4d6e: $06 $1b
    inc c                                         ; $4d70: $0c

jr_0bd_4d71:
    ld [de], a                                    ; $4d71: $12
    dec c                                         ; $4d72: $0d

jr_0bd_4d73:
    jr nc, @+$1a                                  ; $4d73: $30 $18

    rrca                                          ; $4d75: $0f
    inc a                                         ; $4d76: $3c
    ld [bc], a                                    ; $4d77: $02
    ldh [rTAC], a                                 ; $4d78: $e0 $07
    ldh [$c0], a                                  ; $4d7a: $e0 $c0
    jr nc, @-$1e                                  ; $4d7c: $30 $e0

    inc bc                                        ; $4d7e: $03
    jr jr_0bd_4d71                                ; $4d7f: $18 $f0

    jr c, jr_0bd_4d73                             ; $4d81: $38 $f0

    ld a, b                                       ; $4d83: $78
    ldh a, [$7c]                                  ; $4d84: $f0 $7c
    ld a, [bc]                                    ; $4d86: $0a
    ldh a, [$0e]                                  ; $4d87: $f0 $0e
    rst $18                                       ; $4d89: $df
    db $10                                        ; $4d8a: $10
    inc e                                         ; $4d8b: $1c
    ld c, $1d                                     ; $4d8c: $0e $1d
    ld b, $82                                     ; $4d8e: $06 $82
    ld [de], a                                    ; $4d90: $12
    ld [de], a                                    ; $4d91: $12
    dec e                                         ; $4d92: $1d
    ld a, [hl+]                                   ; $4d93: $2a
    dec de                                        ; $4d94: $1b
    inc l                                         ; $4d95: $2c
    add hl, bc                                    ; $4d96: $09
    inc c                                         ; $4d97: $0c
    inc c                                         ; $4d98: $0c
    db $fc                                        ; $4d99: $fc
    cp b                                          ; $4d9a: $b8
    ld [$08bc], sp                                ; $4d9b: $08 $bc $08
    ld [$102e], sp                                ; $4d9e: $08 $2e $10
    inc l                                         ; $4da1: $2c
    ld b, b                                       ; $4da2: $40
    ld c, [hl]                                    ; $4da3: $4e
    ld e, d                                       ; $4da4: $5a
    dec c                                         ; $4da5: $0d
    ld b, b                                       ; $4da6: $40
    nop                                           ; $4da7: $00
    ld b, b                                       ; $4da8: $40
    ld [hl+], a                                   ; $4da9: $22
    inc c                                         ; $4daa: $0c

jr_0bd_4dab:
    dec b                                         ; $4dab: $05
    ld l, d                                       ; $4dac: $6a
    nop                                           ; $4dad: $00
    db $fd                                        ; $4dae: $fd
    nop                                           ; $4daf: $00
    xor $10                                       ; $4db0: $ee $10
    ld [$aa55], sp                                ; $4db2: $08 $55 $aa
    ld [bc], a                                    ; $4db5: $02
    db $fd                                        ; $4db6: $fd
    inc h                                         ; $4db7: $24
    add hl, bc                                    ; $4db8: $09
    ld [hl], d                                    ; $4db9: $72
    inc c                                         ; $4dba: $0c
    ld sp, hl                                     ; $4dbb: $f9
    nop                                           ; $4dbc: $00
    ld b, $f2                                     ; $4dbd: $06 $f2
    inc c                                         ; $4dbf: $0c
    pop hl                                        ; $4dc0: $e1
    ld e, $f2                                     ; $4dc1: $1e $f2
    inc c                                         ; $4dc3: $0c
    and c                                         ; $4dc4: $a1
    ld b, l                                       ; $4dc5: $45
    ld e, [hl]                                    ; $4dc6: $5e
    sbc h                                         ; $4dc7: $9c
    ld c, c                                       ; $4dc8: $49
    add b                                         ; $4dc9: $80
    nop                                           ; $4dca: $00
    push de                                       ; $4dcb: $d5
    adc $57                                       ; $4dcc: $ce $57
    ld [bc], a                                    ; $4dce: $02
    xor [hl]                                      ; $4dcf: $ae
    ld h, a                                       ; $4dd0: $67
    ld [$00aa], sp                                ; $4dd1: $08 $aa $00
    ld d, l                                       ; $4dd4: $55
    xor d                                         ; $4dd5: $aa
    rst $28                                       ; $4dd6: $ef
    ld c, a                                       ; $4dd7: $4f
    xor e                                         ; $4dd8: $ab
    nop                                           ; $4dd9: $00
    ld b, b                                       ; $4dda: $40
    ld a, h                                       ; $4ddb: $7c
    cp a                                          ; $4ddc: $bf
    rst $38                                       ; $4ddd: $ff
    ld c, a                                       ; $4dde: $4f
    call c, $df07                                 ; $4ddf: $dc $07 $df
    ld d, a                                       ; $4de2: $57
    ld e, l                                       ; $4de3: $5d
    dec b                                         ; $4de4: $05
    rst $28                                       ; $4de5: $ef
    ld d, a                                       ; $4de6: $57
    xor d                                         ; $4de7: $aa
    nop                                           ; $4de8: $00
    inc h                                         ; $4de9: $24
    dec b                                         ; $4dea: $05
    ld a, [$5850]                                 ; $4deb: $fa $50 $58
    ld d, a                                       ; $4dee: $57
    xor b                                         ; $4def: $a8
    rst $38                                       ; $4df0: $ff
    ld e, a                                       ; $4df1: $5f
    ld [$c000], a                                 ; $4df2: $ea $00 $c0
    ld e, h                                       ; $4df5: $5c
    ld a, [bc]                                    ; $4df6: $0a
    ld h, b                                       ; $4df7: $60
    ld a, [hl-]                                   ; $4df8: $3a
    and d                                         ; $4df9: $a2
    ld bc, $57a8                                  ; $4dfa: $01 $a8 $57
    ld d, l                                       ; $4dfd: $55
    xor d                                         ; $4dfe: $aa
    jr nc, jr_0bd_4dab                            ; $4dff: $30 $aa

    ld d, l                                       ; $4e01: $55
    ld a, b                                       ; $4e02: $78
    nop                                           ; $4e03: $00
    jp nz, $ff12                                  ; $4e04: $c2 $12 $ff

    rst $38                                       ; $4e07: $ff
    ld d, d                                       ; $4e08: $52
    xor h                                         ; $4e09: $ac
    ld [bc], a                                    ; $4e0a: $02
    ld bc, $a0fe                                  ; $4e0b: $01 $fe $a0
    ld e, a                                       ; $4e0e: $5f
    ld d, c                                       ; $4e0f: $51
    xor [hl]                                      ; $4e10: $ae
    db $10                                        ; $4e11: $10
    jr z, @+$01                                   ; $4e12: $28 $ff

    ld b, $00                                     ; $4e14: $06 $00
    push de                                       ; $4e16: $d5
    ld a, [hl+]                                   ; $4e17: $2a
    ld a, [hl+]                                   ; $4e18: $2a
    push de                                       ; $4e19: $d5
    jr nz, jr_0bd_4e54                            ; $4e1a: $20 $38

    add h                                         ; $4e1c: $84
    ld [$60aa], sp                                ; $4e1d: $08 $aa $60
    ld d, l                                       ; $4e20: $55
    ret z                                         ; $4e21: $c8

    nop                                           ; $4e22: $00
    jr nz, jr_0bd_4e55                            ; $4e23: $20 $30

    ld bc, $aafe                                  ; $4e25: $01 $fe $aa
    ld b, b                                       ; $4e28: $40
    ld e, l                                       ; $4e29: $5d
    cp $cb                                        ; $4e2a: $fe $cb
    nop                                           ; $4e2c: $00
    jr nc, jr_0bd_4e57                            ; $4e2d: $30 $28

    ld d, b                                       ; $4e2f: $50
    nop                                           ; $4e30: $00
    ret z                                         ; $4e31: $c8

    ld [$2050], sp                                ; $4e32: $08 $50 $20

jr_0bd_4e35:
    inc l                                         ; $4e35: $2c
    ld [$4810], sp                                ; $4e36: $08 $10 $48
    nop                                           ; $4e39: $00
    inc e                                         ; $4e3a: $1c
    rst $38                                       ; $4e3b: $ff
    ld e, l                                       ; $4e3c: $5d
    ld [bc], a                                    ; $4e3d: $02
    db $10                                        ; $4e3e: $10
    ld e, b                                       ; $4e3f: $58
    jr nc, jr_0bd_4e9a                            ; $4e40: $30 $58

    db $10                                        ; $4e42: $10
    jr jr_0bd_4eba                                ; $4e43: $18 $75

    add b                                         ; $4e45: $80
    sbc b                                         ; $4e46: $98
    jr nc, jr_0bd_4e81                            ; $4e47: $30 $38

    ld d, a                                       ; $4e49: $57
    xor b                                         ; $4e4a: $a8
    ret z                                         ; $4e4b: $c8

    nop                                           ; $4e4c: $00
    ld [hl], b                                    ; $4e4d: $70
    jr nc, jr_0bd_4e5a                            ; $4e4e: $30 $0a

    push af                                       ; $4e50: $f5
    ld d, l                                       ; $4e51: $55
    add [hl]                                      ; $4e52: $86
    ld d, b                                       ; $4e53: $50

jr_0bd_4e54:
    ld d, b                                       ; $4e54: $50

jr_0bd_4e55:
    xor a                                         ; $4e55: $af
    ld d, b                                       ; $4e56: $50

jr_0bd_4e57:
    ld [hl], l                                    ; $4e57: $75
    ld a, [bc]                                    ; $4e58: $0a
    ld [hl], b                                    ; $4e59: $70

jr_0bd_4e5a:
    ld c, b                                       ; $4e5a: $48

jr_0bd_4e5b:
    sub b                                         ; $4e5b: $90
    db $10                                        ; $4e5c: $10
    ld bc, $d0a1                                  ; $4e5d: $01 $a1 $d0
    jr c, jr_0bd_4e5b                             ; $4e60: $38 $f9

    inc b                                         ; $4e62: $04
    ld bc, $56a9                                  ; $4e63: $01 $a9 $56
    ld d, [hl]                                    ; $4e66: $56
    xor c                                         ; $4e67: $a9
    add b                                         ; $4e68: $80
    jr nc, jr_0bd_4e93                            ; $4e69: $30 $28

    nop                                           ; $4e6b: $00
    dec bc                                        ; $4e6c: $0b
    call nc, $af07                                ; $4e6d: $d4 $07 $af
    ld e, b                                       ; $4e70: $58
    dec c                                         ; $4e71: $0d
    inc bc                                        ; $4e72: $03
    ld a, [de]                                    ; $4e73: $1a
    inc c                                         ; $4e74: $0c
    nop                                           ; $4e75: $00
    jr c, jr_0bd_4e88                             ; $4e76: $38 $10

    dec bc                                        ; $4e78: $0b
    ld e, $df                                     ; $4e79: $1e $df
    ld hl, $40a2                                  ; $4e7b: $21 $a2 $40
    nop                                           ; $4e7e: $00
    ld b, b                                       ; $4e7f: $40
    add b                                         ; $4e80: $80

jr_0bd_4e81:
    ld b, h                                       ; $4e81: $44
    add b                                         ; $4e82: $80
    ld [c], a                                     ; $4e83: $e2
    add b                                         ; $4e84: $80
    push af                                       ; $4e85: $f5
    ld b, b                                       ; $4e86: $40
    ld b, b                                       ; $4e87: $40

jr_0bd_4e88:
    ccf                                           ; $4e88: $3f
    rst $20                                       ; $4e89: $e7
    inc b                                         ; $4e8a: $04
    ld a, a                                       ; $4e8b: $7f
    add b                                         ; $4e8c: $80
    db $f4                                        ; $4e8d: $f4
    ld h, b                                       ; $4e8e: $60
    ld a, b                                       ; $4e8f: $78
    db $10                                        ; $4e90: $10
    inc bc                                        ; $4e91: $03
    rla                                           ; $4e92: $17

jr_0bd_4e93:
    rrca                                          ; $4e93: $0f
    dec c                                         ; $4e94: $0d
    ld [$0800], sp                                ; $4e95: $08 $00 $08
    ccf                                           ; $4e98: $3f
    add hl, bc                                    ; $4e99: $09

jr_0bd_4e9a:
    ld b, e                                       ; $4e9a: $43
    add hl, de                                    ; $4e9b: $19
    add [hl]                                      ; $4e9c: $86
    ld [de], a                                    ; $4e9d: $12
    rlca                                          ; $4e9e: $07
    ret nz                                        ; $4e9f: $c0

    dec e                                         ; $4ea0: $1d
    jr nz, jr_0bd_4ecb                            ; $4ea1: $20 $28

    ld l, l                                       ; $4ea3: $6d
    rra                                           ; $4ea4: $1f
    db $f4                                        ; $4ea5: $f4
    ld d, $2a                                     ; $4ea6: $16 $2a
    add b                                         ; $4ea8: $80
    jp c, $f827                                   ; $4ea9: $da $27 $f8

    ldh a, [$50]                                  ; $4eac: $f0 $50
    adc h                                         ; $4eae: $8c
    sub $82                                       ; $4eaf: $d6 $82
    ld l, c                                       ; $4eb1: $69
    jr nz, jr_0bd_4e35                            ; $4eb2: $20 $81

    push hl                                       ; $4eb4: $e5
    and h                                         ; $4eb5: $a4
    rlca                                          ; $4eb6: $07
    inc c                                         ; $4eb7: $0c
    jr nc, jr_0bd_4efa                            ; $4eb8: $30 $40

jr_0bd_4eba:
    ld b, b                                       ; $4eba: $40
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    ret nz                                        ; $4ebd: $c0

    ld [hl-], a                                   ; $4ebe: $32
    ret nz                                        ; $4ebf: $c0

    call nz, $dec3                                ; $4ec0: $c4 $c3 $de
    call z, Call_000_08fa                         ; $4ec3: $cc $fa $08
    ret nc                                        ; $4ec6: $d0

    dec b                                         ; $4ec7: $05
    ldh [rWX], a                                  ; $4ec8: $e0 $4b
    ret nc                                        ; $4eca: $d0

jr_0bd_4ecb:
    dec b                                         ; $4ecb: $05
    inc d                                         ; $4ecc: $14
    nop                                           ; $4ecd: $00
    ld [$0060], sp                                ; $4ece: $08 $60 $00
    call c, $e404                                 ; $4ed1: $dc $04 $e4
    dec b                                         ; $4ed4: $05
    db $fc                                        ; $4ed5: $fc
    ld b, b                                       ; $4ed6: $40
    ret nz                                        ; $4ed7: $c0

    add b                                         ; $4ed8: $80
    jr c, jr_0bd_4edb                             ; $4ed9: $38 $00

jr_0bd_4edb:
    db $10                                        ; $4edb: $10
    inc l                                         ; $4edc: $2c
    jr z, @+$61                                   ; $4edd: $28 $5f

    inc [hl]                                      ; $4edf: $34
    daa                                           ; $4ee0: $27
    ld h, d                                       ; $4ee1: $62
    db $e3                                        ; $4ee2: $e3
    ld bc, $e041                                  ; $4ee3: $01 $41 $e0
    ld b, c                                       ; $4ee6: $41
    or l                                          ; $4ee7: $b5
    ld b, b                                       ; $4ee8: $40
    ld e, b                                       ; $4ee9: $58
    ld h, b                                       ; $4eea: $60
    ld d, [hl]                                    ; $4eeb: $56
    dec c                                         ; $4eec: $0d
    add b                                         ; $4eed: $80
    and l                                         ; $4eee: $a5
    add hl, de                                    ; $4eef: $19
    cp d                                          ; $4ef0: $ba
    inc e                                         ; $4ef1: $1c
    db $eb                                        ; $4ef2: $eb
    xor [hl]                                      ; $4ef3: $ae
    push bc                                       ; $4ef4: $c5
    jp nc, $8000                                  ; $4ef5: $d2 $00 $80

    db $f4                                        ; $4ef8: $f4
    rlca                                          ; $4ef9: $07

jr_0bd_4efa:
    add b                                         ; $4efa: $80
    nop                                           ; $4efb: $00
    rrca                                          ; $4efc: $0f
    rlca                                          ; $4efd: $07
    inc c                                         ; $4efe: $0c
    inc c                                         ; $4eff: $0c
    dec e                                         ; $4f00: $1d
    ld a, [bc]                                    ; $4f01: $0a
    dec bc                                        ; $4f02: $0b
    ld [hl], b                                    ; $4f03: $70
    ld [$dd08], sp                                ; $4f04: $08 $08 $dd
    rlca                                          ; $4f07: $07
    ld l, d                                       ; $4f08: $6a
    ld a, [hl]                                    ; $4f09: $7e
    db $10                                        ; $4f0a: $10
    ld b, b                                       ; $4f0b: $40
    inc bc                                        ; $4f0c: $03
    add b                                         ; $4f0d: $80
    jr nz, jr_0bd_4f50                            ; $4f0e: $20 $40

    ld a, [$e0c0]                                 ; $4f10: $fa $c0 $e0
    inc de                                        ; $4f13: $13
    ld b, $c0                                     ; $4f14: $06 $c0
    rrca                                          ; $4f16: $0f
    nop                                           ; $4f17: $00
    rlca                                          ; $4f18: $07
    inc bc                                        ; $4f19: $03
    ld c, $04                                     ; $4f1a: $0e $04
    inc e                                         ; $4f1c: $1c
    ld [$10b8], sp                                ; $4f1d: $08 $b8 $10
    nop                                           ; $4f20: $00
    dec c                                         ; $4f21: $0d
    db $10                                        ; $4f22: $10
    ld bc, $5f00                                  ; $4f23: $01 $00 $5f
    ld bc, $0207                                  ; $4f26: $01 $07 $02
    nop                                           ; $4f29: $00
    ld b, [hl]                                    ; $4f2a: $46
    add h                                         ; $4f2b: $84
    and e                                         ; $4f2c: $a3
    ld b, h                                       ; $4f2d: $44
    ld h, a                                       ; $4f2e: $67
    ld [hl+], a                                   ; $4f2f: $22
    jr nz, jr_0bd_4f55                            ; $4f30: $20 $23

    nop                                           ; $4f32: $00
    inc bc                                        ; $4f33: $03
    inc hl                                        ; $4f34: $23
    ld d, b                                       ; $4f35: $50
    ldh [$b8], a                                  ; $4f36: $e0 $b8
    db $10                                        ; $4f38: $10
    jr @+$0a                                      ; $4f39: $18 $08

    nop                                           ; $4f3b: $00
    rlca                                          ; $4f3c: $07
    ld [$0848], sp                                ; $4f3d: $08 $48 $08
    xor h                                         ; $4f40: $ac
    ld [$895d], sp                                ; $4f41: $08 $5d $89
    jr z, @-$1f                                   ; $4f44: $28 $df

    ld [$1fed], a                                 ; $4f46: $ea $ed $1f

jr_0bd_4f49:
    ld d, h                                       ; $4f49: $54
    db $f4                                        ; $4f4a: $f4
    rlca                                          ; $4f4b: $07
    ret nz                                        ; $4f4c: $c0

    nop                                           ; $4f4d: $00
    ld [hl], b                                    ; $4f4e: $70
    ld b, l                                       ; $4f4f: $45

jr_0bd_4f50:
    ldh [$c0], a                                  ; $4f50: $e0 $c0
    ld [$0102], sp                                ; $4f52: $08 $02 $01

jr_0bd_4f55:
    ld [hl], $15                                  ; $4f55: $36 $15
    rlca                                          ; $4f57: $07
    ld [bc], a                                    ; $4f58: $02
    add a                                         ; $4f59: $87
    dec b                                         ; $4f5a: $05
    nop                                           ; $4f5b: $00
    inc c                                         ; $4f5c: $0c
    rlca                                          ; $4f5d: $07
    jr c, @+$1a                                   ; $4f5e: $38 $18

    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    sbc c                                         ; $4f62: $99
    ldh a, [rP1]                                  ; $4f63: $f0 $00
    rla                                           ; $4f65: $17
    dec c                                         ; $4f66: $0d
    rlca                                          ; $4f67: $07
    ld [hl+], a                                   ; $4f68: $22
    add d                                         ; $4f69: $82
    ld [de], a                                    ; $4f6a: $12
    ld l, d                                       ; $4f6b: $6a
    ret nz                                        ; $4f6c: $c0

    nop                                           ; $4f6d: $00
    pop af                                        ; $4f6e: $f1
    ldh [rNR24], a                                ; $4f6f: $e0 $19
    db $10                                        ; $4f71: $10
    or c                                          ; $4f72: $b1
    ld h, b                                       ; $4f73: $60
    sub a                                         ; $4f74: $97
    sub e                                         ; $4f75: $93
    nop                                           ; $4f76: $00
    jr c, jr_0bd_4f8d                             ; $4f77: $38 $14

    jr nz, jr_0bd_4fb4                            ; $4f79: $20 $39

    ret nc                                        ; $4f7b: $d0

    ld [hl-], a                                   ; $4f7c: $32
    ld h, c                                       ; $4f7d: $61

jr_0bd_4f7e:
    and h                                         ; $4f7e: $a4
    nop                                           ; $4f7f: $00
    add d                                         ; $4f80: $82
    ld c, c                                       ; $4f81: $49
    ld b, b                                       ; $4f82: $40
    ld d, [hl]                                    ; $4f83: $56
    ret nz                                        ; $4f84: $c0

    add b                                         ; $4f85: $80
    ld [hl], b                                    ; $4f86: $70
    ld b, b                                       ; $4f87: $40
    db $10                                        ; $4f88: $10
    ld e, d                                       ; $4f89: $5a
    jr nz, jr_0bd_4fec                            ; $4f8a: $20 $60

    and h                                         ; $4f8c: $a4

jr_0bd_4f8d:
    ld b, $70                                     ; $4f8d: $06 $70
    ldh [$8c], a                                  ; $4f8f: $e0 $8c
    sbc b                                         ; $4f91: $98
    ld bc, $040c                                  ; $4f92: $01 $0c $04
    inc d                                         ; $4f95: $14
    jr nz, jr_0bd_4fd8                            ; $4f96: $20 $40

    jr nz, @-$5e                                  ; $4f98: $20 $a0

    ret z                                         ; $4f9a: $c8

    nop                                           ; $4f9b: $00
    nop                                           ; $4f9c: $00
    ldh [$80], a                                  ; $4f9d: $e0 $80
    push de                                       ; $4f9f: $d5
    add b                                         ; $4fa0: $80
    ld l, d                                       ; $4fa1: $6a
    pop bc                                        ; $4fa2: $c1
    db $dd                                        ; $4fa3: $dd
    ld h, e                                       ; $4fa4: $63
    nop                                           ; $4fa5: $00
    cpl                                           ; $4fa6: $2f
    rlca                                          ; $4fa7: $07
    rrca                                          ; $4fa8: $0f
    jr jr_0bd_4fab                                ; $4fa9: $18 $00

jr_0bd_4fab:
    jr nz, jr_0bd_4fdd                            ; $4fab: $20 $30

    ld b, b                                       ; $4fad: $40
    nop                                           ; $4fae: $00
    ld d, d                                       ; $4faf: $52
    and b                                         ; $4fb0: $a0
    ret z                                         ; $4fb1: $c8

    add d                                         ; $4fb2: $82
    adc a                                         ; $4fb3: $8f

jr_0bd_4fb4:
    ld [bc], a                                    ; $4fb4: $02
    sub l                                         ; $4fb5: $95
    rrca                                          ; $4fb6: $0f
    nop                                           ; $4fb7: $00
    ld [hl], b                                    ; $4fb8: $70
    add b                                         ; $4fb9: $80
    ld a, d                                       ; $4fba: $7a
    ldh [$b4], a                                  ; $4fbb: $e0 $b4
    jr jr_0bd_4f49                                ; $4fbd: $18 $8a

    inc b                                         ; $4fbf: $04
    nop                                           ; $4fc0: $00
    dec bc                                        ; $4fc1: $0b
    inc b                                         ; $4fc2: $04
    ld [de], a                                    ; $4fc3: $12
    inc b                                         ; $4fc4: $04
    ld d, d                                       ; $4fc5: $52
    ld l, $81                                     ; $4fc6: $2e $81
    ld [bc], a                                    ; $4fc8: $02
    nop                                           ; $4fc9: $00
    ld e, b                                       ; $4fca: $58
    ld [$0812], sp                                ; $4fcb: $08 $12 $08
    inc c                                         ; $4fce: $0c
    ld [$0488], sp                                ; $4fcf: $08 $88 $04
    inc e                                         ; $4fd2: $1c
    ld e, d                                       ; $4fd3: $5a
    inc c                                         ; $4fd4: $0c
    and l                                         ; $4fd5: $a5
    adc h                                         ; $4fd6: $8c
    rlca                                          ; $4fd7: $07

jr_0bd_4fd8:
    inc [hl]                                      ; $4fd8: $34
    inc bc                                        ; $4fd9: $03
    adc $0c                                       ; $4fda: $ce $0c
    rrca                                          ; $4fdc: $0f

jr_0bd_4fdd:
    ld bc, $aa80                                  ; $4fdd: $01 $80 $aa
    rlca                                          ; $4fe0: $07
    inc b                                         ; $4fe1: $04
    ld [$040a], sp                                ; $4fe2: $08 $0a $04
    ld bc, $1b06                                  ; $4fe5: $01 $06 $1b
    nop                                           ; $4fe8: $00
    inc e                                         ; $4fe9: $1c
    ld c, $07                                     ; $4fea: $0e $07

jr_0bd_4fec:
    add e                                         ; $4fec: $83
    ld bc, $c0e0                                  ; $4fed: $01 $e0 $c0
    ld d, l                                       ; $4ff0: $55
    nop                                           ; $4ff1: $00
    jr nz, jr_0bd_4f7e                            ; $4ff2: $20 $8a

    db $10                                        ; $4ff4: $10
    ld c, b                                       ; $4ff5: $48
    ld [$0921], sp                                ; $4ff6: $08 $21 $09
    add [hl]                                      ; $4ff9: $86
    nop                                           ; $4ffa: $00
    pop bc                                        ; $4ffb: $c1
    sbc e                                         ; $4ffc: $9b
    add $ef                                       ; $4ffd: $c6 $ef
    db $dd                                        ; $4fff: $dd
    ei                                            ; $5000: $fb
    ld a, [c]                                     ; $5001: $f2
    add $00                                       ; $5002: $c6 $00
    call nz, $c4cc                                ; $5004: $c4 $cc $c4
    dec c                                         ; $5007: $0d
    ret z                                         ; $5008: $c8

    ret nz                                        ; $5009: $c0

    ret z                                         ; $500a: $c8

    add b                                         ; $500b: $80
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    adc h                                         ; $500e: $8c
    ld a, b                                       ; $500f: $78
    call nz, Call_000_1c88                        ; $5010: $c4 $88 $1c
    ld [$0058], sp                                ; $5013: $08 $58 $00
    ld [$18a0], sp                                ; $5016: $08 $a0 $18
    ld a, b                                       ; $5019: $78
    db $10                                        ; $501a: $10
    ret nc                                        ; $501b: $d0

    jr nz, @+$71                                  ; $501c: $20 $6f

    ld b, $30                                     ; $501e: $06 $30
    add hl, sp                                    ; $5020: $39
    rra                                           ; $5021: $1f
    rra                                           ; $5022: $1f
    rrca                                          ; $5023: $0f
    jr z, jr_0bd_502a                             ; $5024: $28 $04

    call nc, Call_000_2a00                        ; $5026: $d4 $00 $2a
    add b                                         ; $5029: $80

jr_0bd_502a:
    rst $10                                       ; $502a: $d7
    rlca                                          ; $502b: $07
    jp nz, $c1e1                                  ; $502c: $c2 $e1 $c1

    add c                                         ; $502f: $81
    ld b, c                                       ; $5030: $41
    add c                                         ; $5031: $81
    ld l, d                                       ; $5032: $6a
    nop                                           ; $5033: $00
    add c                                         ; $5034: $81
    ld [hl], a                                    ; $5035: $77
    pop bc                                        ; $5036: $c1
    sub h                                         ; $5037: $94
    ld l, e                                       ; $5038: $6b
    ld d, a                                       ; $5039: $57
    ld a, $df                                     ; $503a: $3e $df
    nop                                           ; $503c: $00
    dec c                                         ; $503d: $0d
    db $10                                        ; $503e: $10
    db $10                                        ; $503f: $10
    jr jr_0bd_5052                                ; $5040: $18 $10

    dec b                                         ; $5042: $05
    db $10                                        ; $5043: $10
    dec hl                                        ; $5044: $2b
    nop                                           ; $5045: $00
    db $10                                        ; $5046: $10
    cp a                                          ; $5047: $bf

jr_0bd_5048:
    ld de, $1fb3                                  ; $5048: $11 $b3 $1f
    cp a                                          ; $504b: $bf
    ld e, $fc                                     ; $504c: $1e $fc
    jr z, jr_0bd_5048                             ; $504e: $28 $f8

    ldh [$5c], a                                  ; $5050: $e0 $5c

jr_0bd_5052:
    rlca                                          ; $5052: $07
    ld [hl], h                                    ; $5053: $74
    ld e, e                                       ; $5054: $5b
    ld c, $80                                     ; $5055: $0e $80
    db $ec                                        ; $5057: $ec
    jr c, jr_0bd_505a                             ; $5058: $38 $00

jr_0bd_505a:
    ld b, [hl]                                    ; $505a: $46
    ld a, h                                       ; $505b: $7c
    cp h                                          ; $505c: $bc
    ld c, [hl]                                    ; $505d: $4e
    ld d, $08                                     ; $505e: $16 $08
    dec b                                         ; $5060: $05
    ld b, $04                                     ; $5061: $06 $04
    ld [bc], a                                    ; $5063: $02

jr_0bd_5064:
    inc bc                                        ; $5064: $03
    ld e, [hl]                                    ; $5065: $5e
    ld bc, $cea9                                  ; $5066: $01 $a9 $ce
    rla                                           ; $5069: $17
    inc bc                                        ; $506a: $03
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    or c                                          ; $506d: $b1
    inc hl                                        ; $506e: $23
    ld d, [hl]                                    ; $506f: $56
    inc hl                                        ; $5070: $23
    rst $38                                       ; $5071: $ff
    scf                                           ; $5072: $37
    ld a, h                                       ; $5073: $7c
    ld hl, sp+$00                                 ; $5074: $f8 $00

jr_0bd_5076:
    ld hl, sp-$50                                 ; $5076: $f8 $b0
    sbc b                                         ; $5078: $98
    jr nc, jr_0bd_5080                            ; $5079: $30 $05

    jr jr_0bd_507f                                ; $507b: $18 $02

    inc c                                         ; $507d: $0c
    nop                                           ; $507e: $00

jr_0bd_507f:
    ld h, d                                       ; $507f: $62

jr_0bd_5080:
    inc a                                         ; $5080: $3c
    rrca                                          ; $5081: $0f
    inc d                                         ; $5082: $14
    sub $87                                       ; $5083: $d6 $87
    xor [hl]                                      ; $5085: $ae
    ld b, a                                       ; $5086: $47
    nop                                           ; $5087: $00
    ld a, l                                       ; $5088: $7d
    ld l, $38                                     ; $5089: $2e $38
    ld sp, $2030                                  ; $508b: $31 $30 $20
    or b                                          ; $508e: $b0
    jr nz, jr_0bd_5091                            ; $508f: $20 $00

jr_0bd_5091:
    db $10                                        ; $5091: $10
    ld [$0808], sp                                ; $5092: $08 $08 $08
    and [hl]                                      ; $5095: $a6
    ld [$8850], sp                                ; $5096: $08 $50 $88
    nop                                           ; $5099: $00
    jr c, jr_0bd_5064                             ; $509a: $38 $c8

    ret z                                         ; $509c: $c8

    ld [hl], b                                    ; $509d: $70
    ret nc                                        ; $509e: $d0

    and b                                         ; $509f: $a0
    and b                                         ; $50a0: $a0
    ld b, b                                       ; $50a1: $40
    ld [bc], a                                    ; $50a2: $02
    ld a, [c]                                     ; $50a3: $f2
    ld hl, $1038                                  ; $50a4: $21 $38 $10
    dec e                                         ; $50a7: $1d
    ld c, $ba                                     ; $50a8: $0e $ba
    ld c, $01                                     ; $50aa: $0e $01
    jr nz, jr_0bd_50ae                            ; $50ac: $20 $00

jr_0bd_50ae:
    rla                                           ; $50ae: $17
    db $10                                        ; $50af: $10
    rrca                                          ; $50b0: $0f
    adc c                                         ; $50b1: $89
    sub b                                         ; $50b2: $90
    ld h, c                                       ; $50b3: $61
    jr z, jr_0bd_50c7                             ; $50b4: $28 $11

    nop                                           ; $50b6: $00
    add h                                         ; $50b7: $84
    add hl, bc                                    ; $50b8: $09
    add e                                         ; $50b9: $83
    add h                                         ; $50ba: $84
    pop bc                                        ; $50bb: $c1
    add d                                         ; $50bc: $82
    add b                                         ; $50bd: $80
    ld b, c                                       ; $50be: $41
    nop                                           ; $50bf: $00
    ld h, c                                       ; $50c0: $61
    ld b, b                                       ; $50c1: $40
    ld e, b                                       ; $50c2: $58
    ld c, c                                       ; $50c3: $49
    db $10                                        ; $50c4: $10
    ld [bc], a                                    ; $50c5: $02
    inc b                                         ; $50c6: $04

jr_0bd_50c7:
    ld [$8900], sp                                ; $50c7: $08 $00 $89
    db $10                                        ; $50ca: $10
    inc hl                                        ; $50cb: $23
    sub c                                         ; $50cc: $91
    inc hl                                        ; $50cd: $23
    add d                                         ; $50ce: $82
    add h                                         ; $50cf: $84
    ld [bc], a                                    ; $50d0: $02
    nop                                           ; $50d1: $00
    rlca                                          ; $50d2: $07
    ld [bc], a                                    ; $50d3: $02
    inc e                                         ; $50d4: $1c
    ld [$3028], sp                                ; $50d5: $08 $28 $30
    ldh [rLCDC], a                                ; $50d8: $e0 $40
    and b                                         ; $50da: $a0
    jp c, $d40e                                   ; $50db: $da $0e $d4

    adc [hl]                                      ; $50de: $8e
    inc c                                         ; $50df: $0c
    nop                                           ; $50e0: $00
    ld e, e                                       ; $50e1: $5b
    dec [hl]                                      ; $50e2: $35
    dec sp                                        ; $50e3: $3b
    rra                                           ; $50e4: $1f
    nop                                           ; $50e5: $00
    ld a, [de]                                    ; $50e6: $1a
    dec c                                         ; $50e7: $0d
    or l                                          ; $50e8: $b5
    ld [$0810], sp                                ; $50e9: $08 $10 $08
    jr z, jr_0bd_50fe                             ; $50ec: $28 $10

    nop                                           ; $50ee: $00
    db $10                                        ; $50ef: $10
    jr nz, @-$06                                  ; $50f0: $20 $f8

    jr nz, jr_0bd_5076                            ; $50f2: $20 $82

    ld bc, $8054                                  ; $50f4: $01 $54 $80
    nop                                           ; $50f7: $00
    reti                                          ; $50f8: $d9


    db $e4                                        ; $50f9: $e4
    sub [hl]                                      ; $50fa: $96
    ld a, b                                       ; $50fb: $78
    push de                                       ; $50fc: $d5
    ld a, d                                       ; $50fd: $7a

jr_0bd_50fe:
    ld [$003d], a                                 ; $50fe: $ea $3d $00
    ld a, l                                       ; $5101: $7d
    ld e, $1c                                     ; $5102: $1e $1c
    rrca                                          ; $5104: $0f
    ld b, l                                       ; $5105: $45
    add d                                         ; $5106: $82
    xor l                                         ; $5107: $ad
    ld [bc], a                                    ; $5108: $02
    nop                                           ; $5109: $00
    ld e, e                                       ; $510a: $5b
    ld b, $b5                                     ; $510b: $06 $b5
    ld c, $5a                                     ; $510d: $0e $5a
    inc a                                         ; $510f: $3c
    or a                                          ; $5110: $b7
    ld a, b                                       ; $5111: $78
    inc b                                         ; $5112: $04
    ld a, e                                       ; $5113: $7b
    db $f4                                        ; $5114: $f4
    push de                                       ; $5115: $d5
    ld a, [$d080]                                 ; $5116: $fa $80 $d0
    rlca                                          ; $5119: $07
    inc bc                                        ; $511a: $03
    ld bc, $4500                                  ; $511b: $01 $00 $45
    inc bc                                        ; $511e: $03
    xor l                                         ; $511f: $ad
    ld [bc], a                                    ; $5120: $02
    ld e, d                                       ; $5121: $5a
    ld b, $b2                                     ; $5122: $06 $b2
    inc c                                         ; $5124: $0c
    db $10                                        ; $5125: $10
    call nc, Call_000_0238                        ; $5126: $d4 $38 $02
    dec [hl]                                      ; $5129: $35
    rla                                           ; $512a: $17
    rlca                                          ; $512b: $07
    inc bc                                        ; $512c: $03
    ld e, $02                                     ; $512d: $1e $02
    stop                                          ; $512f: $10 $00
    ld [bc], a                                    ; $5131: $02
    inc bc                                        ; $5132: $03
    add $01                                       ; $5133: $c6 $01
    call nz, $bd09                                ; $5135: $c4 $09 $bd
    ret                                           ; $5138: $c9


    nop                                           ; $5139: $00
    rst $38                                       ; $513a: $ff
    ld a, l                                       ; $513b: $7d
    ld e, a                                       ; $513c: $5f
    adc a                                         ; $513d: $8f
    sub a                                         ; $513e: $97
    ld h, a                                       ; $513f: $67
    cpl                                           ; $5140: $2f
    inc de                                        ; $5141: $13
    nop                                           ; $5142: $00
    ld c, a                                       ; $5143: $4f
    add hl, bc                                    ; $5144: $09
    inc h                                         ; $5145: $24
    rlca                                          ; $5146: $07
    rst $08                                       ; $5147: $cf
    ret z                                         ; $5148: $c8

    dec e                                         ; $5149: $1d
    rlc b                                         ; $514a: $cb $00
    and $df                                       ; $514c: $e6 $df
    add sp, -$0f                                  ; $514e: $e8 $f1
    xor e                                         ; $5150: $ab
    pop bc                                        ; $5151: $c1
    ld d, $81                                     ; $5152: $16 $81
    dec b                                         ; $5154: $05
    adc a                                         ; $5155: $8f
    ld [bc], a                                    ; $5156: $02
    ld a, $04                                     ; $5157: $3e $04
    ld h, b                                       ; $5159: $60
    ld d, a                                       ; $515a: $57
    rla                                           ; $515b: $17
    db $f4                                        ; $515c: $f4
    xor h                                         ; $515d: $ac
    rla                                           ; $515e: $17
    ld b, b                                       ; $515f: $40
    ld d, b                                       ; $5160: $50
    jp c, Jump_000_030f                           ; $5161: $da $0f $03

    ld c, $07                                     ; $5164: $0e $07
    cp d                                          ; $5166: $ba
    inc c                                         ; $5167: $0c
    inc e                                         ; $5168: $1c
    nop                                           ; $5169: $00
    ld [$0c18], sp                                ; $516a: $08 $18 $0c
    ld e, $08                                     ; $516d: $1e $08
    rlca                                          ; $516f: $07
    inc c                                         ; $5170: $0c
    add hl, bc                                    ; $5171: $09
    nop                                           ; $5172: $00
    ld b, $1f                                     ; $5173: $06 $1f
    and $b6                                       ; $5175: $e6 $b6
    inc d                                         ; $5177: $14
    inc e                                         ; $5178: $1c
    inc d                                         ; $5179: $14
    inc d                                         ; $517a: $14
    nop                                           ; $517b: $00
    inc d                                         ; $517c: $14
    ld c, $14                                     ; $517d: $0e $14
    sub c                                         ; $517f: $91
    ld d, $72                                     ; $5180: $16 $72
    dec d                                         ; $5182: $15
    ld [hl], l                                    ; $5183: $75
    nop                                           ; $5184: $00
    or [hl]                                       ; $5185: $b6
    ld sp, hl                                     ; $5186: $f9
    ld a, b                                       ; $5187: $78
    dec sp                                        ; $5188: $3b
    add hl, de                                    ; $5189: $19
    ld e, $0a                                     ; $518a: $1e $0a
    rra                                           ; $518c: $1f
    nop                                           ; $518d: $00
    inc c                                         ; $518e: $0c
    or c                                          ; $518f: $b1
    ld c, $76                                     ; $5190: $0e $76
    rla                                           ; $5192: $17
    rst $38                                       ; $5193: $ff
    ccf                                           ; $5194: $3f
    ld a, a                                       ; $5195: $7f
    nop                                           ; $5196: $00
    db $fd                                        ; $5197: $fd
    adc l                                         ; $5198: $8d
    add [hl]                                      ; $5199: $86
    rlca                                          ; $519a: $07
    ld [bc], a                                    ; $519b: $02
    dec b                                         ; $519c: $05
    ld [bc], a                                    ; $519d: $02
    ld c, l                                       ; $519e: $4d
    nop                                           ; $519f: $00
    ld [bc], a                                    ; $51a0: $02
    cp d                                          ; $51a1: $ba
    ld b, $aa                                     ; $51a2: $06 $aa
    ld e, h                                       ; $51a4: $5c
    call nc, $a0f8                                ; $51a5: $d4 $f8 $a0
    nop                                           ; $51a8: $00
    ret nz                                        ; $51a9: $c0

    inc c                                         ; $51aa: $0c
    rlca                                          ; $51ab: $07
    inc d                                         ; $51ac: $14
    ld [$1018], sp                                ; $51ad: $08 $18 $10
    dec e                                         ; $51b0: $1d
    nop                                           ; $51b1: $00
    db $10                                        ; $51b2: $10
    ld e, $08                                     ; $51b3: $1e $08
    rrca                                          ; $51b5: $0f
    inc b                                         ; $51b6: $04
    dec b                                         ; $51b7: $05
    ld [bc], a                                    ; $51b8: $02
    ld [bc], a                                    ; $51b9: $02
    nop                                           ; $51ba: $00
    inc bc                                        ; $51bb: $03
    adc l                                         ; $51bc: $8d
    add [hl]                                      ; $51bd: $86
    and [hl]                                      ; $51be: $a6

jr_0bd_51bf:
    ld b, e                                       ; $51bf: $43
    ld b, e                                       ; $51c0: $43
    inc hl                                        ; $51c1: $23
    inc sp                                        ; $51c2: $33
    nop                                           ; $51c3: $00
    inc hl                                        ; $51c4: $23
    cp e                                          ; $51c5: $bb
    inc sp                                        ; $51c6: $33
    ld e, a                                       ; $51c7: $5f
    ld a, [hl-]                                   ; $51c8: $3a
    xor [hl]                                      ; $51c9: $ae
    ld e, h                                       ; $51ca: $5c
    ld c, l                                       ; $51cb: $4d
    nop                                           ; $51cc: $00
    adc [hl]                                      ; $51cd: $8e
    ld l, h                                       ; $51ce: $6c
    jr nc, jr_0bd_51bf                            ; $51cf: $30 $ee

    ld a, b                                       ; $51d1: $78
    ld c, l                                       ; $51d2: $4d
    or $84                                        ; $51d3: $f6 $84
    ld b, $e3                                     ; $51d5: $06 $e3
    sub b                                         ; $51d7: $90
    pop hl                                        ; $51d8: $e1
    jr c, jr_0bd_51eb                             ; $51d9: $38 $10

    inc a                                         ; $51db: $3c
    add hl, bc                                    ; $51dc: $09
    ld e, e                                       ; $51dd: $5b
    inc bc                                        ; $51de: $03
    ld b, b                                       ; $51df: $40
    ld a, l                                       ; $51e0: $7d
    dec [hl]                                      ; $51e1: $35
    ld a, $02                                     ; $51e2: $3e $02
    rst $38                                       ; $51e4: $ff
    ld [bc], a                                    ; $51e5: $02
    rst $18                                       ; $51e6: $df
    daa                                           ; $51e7: $27
    call z, $e80e                                 ; $51e8: $cc $0e $e8

jr_0bd_51eb:
    rrca                                          ; $51eb: $0f
    add hl, bc                                    ; $51ec: $09
    sub $06                                       ; $51ed: $d6 $06

jr_0bd_51ef:
    nop                                           ; $51ef: $00
    or l                                          ; $51f0: $b5
    nop                                           ; $51f1: $00
    ld d, b                                       ; $51f2: $50
    jr nz, jr_0bd_51ef                            ; $51f3: $20 $fa

    jr nz, @+$06                                  ; $51f5: $20 $04

    jr nc, jr_0bd_51f9                            ; $51f7: $30 $00

jr_0bd_51f9:
    ld a, [hl-]                                   ; $51f9: $3a
    jr nc, @+$27                                  ; $51fa: $30 $25

    ld a, $6a                                     ; $51fc: $3e $6a
    jr nc, @+$0f                                  ; $51fe: $30 $0d

    jr nc, jr_0bd_5202                            ; $5200: $30 $00

jr_0bd_5202:
    jp c, Jump_000_123c                           ; $5202: $da $3c $12

    inc b                                         ; $5205: $04
    xor h                                         ; $5206: $ac
    inc b                                         ; $5207: $04
    db $10                                        ; $5208: $10
    inc c                                         ; $5209: $0c
    nop                                           ; $520a: $00
    dec [hl]                                      ; $520b: $35
    ld [$1848], sp                                ; $520c: $08 $48 $18
    xor l                                         ; $520f: $ad
    jr @+$3a                                      ; $5210: $18 $38

    ld [hl], b                                    ; $5212: $70
    jr c, @-$30                                   ; $5213: $38 $ce

    jr nc, jr_0bd_5293                            ; $5215: $30 $7c

    dec de                                        ; $5217: $1b
    rlca                                          ; $5218: $07
    db $10                                        ; $5219: $10
    xor e                                         ; $521a: $ab
    rlca                                          ; $521b: $07
    xor h                                         ; $521c: $ac
    nop                                           ; $521d: $00
    inc l                                         ; $521e: $2c
    nop                                           ; $521f: $00
    jr nc, jr_0bd_5258                            ; $5220: $30 $36

    jr @+$0c                                      ; $5222: $18 $0a

    inc d                                         ; $5224: $14
    dec c                                         ; $5225: $0d
    ld a, [bc]                                    ; $5226: $0a
    ld [bc], a                                    ; $5227: $02
    dec [hl]                                      ; $5228: $35
    rlca                                          ; $5229: $07
    ld e, a                                       ; $522a: $5f
    dec b                                         ; $522b: $05
    ld a, [bc]                                    ; $522c: $0a
    adc $03                                       ; $522d: $ce $03
    ld bc, $07fa                                  ; $522f: $01 $fa $07
    ld b, c                                       ; $5232: $41
    inc a                                         ; $5233: $3c
    dec b                                         ; $5234: $05
    nop                                           ; $5235: $00
    or a                                          ; $5236: $b7
    ret nz                                        ; $5237: $c0

    db $ed                                        ; $5238: $ed
    di                                            ; $5239: $f3
    inc sp                                        ; $523a: $33
    rra                                           ; $523b: $1f
    ld e, d                                       ; $523c: $5a
    cp l                                          ; $523d: $bd
    nop                                           ; $523e: $00
    xor c                                         ; $523f: $a9
    ld e, a                                       ; $5240: $5f
    adc $38                                       ; $5241: $ce $38
    daa                                           ; $5243: $27
    ld e, b                                       ; $5244: $58
    ret c                                         ; $5245: $d8

    jr nc, jr_0bd_5248                            ; $5246: $30 $00

jr_0bd_5248:
    ld a, [hl]                                    ; $5248: $7e
    ldh [$e0], a                                  ; $5249: $e0 $e0
    ret nz                                        ; $524b: $c0

    add b                                         ; $524c: $80
    nop                                           ; $524d: $00
    add sp, -$10                                  ; $524e: $e8 $f0
    rla                                           ; $5250: $17
    ldh [$c0], a                                  ; $5251: $e0 $c0
    xor d                                         ; $5253: $aa
    ld a, [$a010]                                 ; $5254: $fa $10 $a0
    ld a, [bc]                                    ; $5257: $0a

jr_0bd_5258:
    dec de                                        ; $5258: $1b
    ld a, [c]                                     ; $5259: $f2
    dec d                                         ; $525a: $15
    rst $28                                       ; $525b: $ef
    cpl                                           ; $525c: $2f
    nop                                           ; $525d: $00
    inc b                                         ; $525e: $04
    nop                                           ; $525f: $00
    sub e                                         ; $5260: $93
    inc bc                                        ; $5261: $03
    ld l, e                                       ; $5262: $6b
    add e                                         ; $5263: $83

jr_0bd_5264:
    xor a                                         ; $5264: $af
    ld [hl], e                                    ; $5265: $73
    db $10                                        ; $5266: $10
    ld a, a                                       ; $5267: $7f
    rra                                           ; $5268: $1f
    rlca                                          ; $5269: $07
    ld a, h                                       ; $526a: $7c
    ld b, $03                                     ; $526b: $06 $03
    ld bc, $01be                                  ; $526d: $01 $be $01
    inc b                                         ; $5270: $04
    db $ec                                        ; $5271: $ec
    jr jr_0bd_52bc                                ; $5272: $18 $48

    ldh a, [$c0]                                  ; $5274: $f0 $c0
    ld bc, $f100                                  ; $5276: $01 $00 $f1
    ret nz                                        ; $5279: $c0

    ld e, e                                       ; $527a: $5b
    cp $07                                        ; $527b: $fe $07
    nop                                           ; $527d: $00
    add b                                         ; $527e: $80
    ret nz                                        ; $527f: $c0

    inc bc                                        ; $5280: $03
    jp nz, Jump_0bd_401f                          ; $5281: $c2 $1f $40

    sbc [hl]                                      ; $5284: $9e
    dec b                                         ; $5285: $05
    call z, $340f                                 ; $5286: $cc $0f $34
    ld b, $03                                     ; $5289: $06 $03
    add c                                         ; $528b: $81
    ld de, $17d7                                  ; $528c: $11 $d7 $17
    ld [de], a                                    ; $528f: $12
    db $dd                                        ; $5290: $dd
    rlca                                          ; $5291: $07
    halt                                          ; $5292: $76

jr_0bd_5293:
    db $e3                                        ; $5293: $e3
    nop                                           ; $5294: $00
    sbc e                                         ; $5295: $9b
    di                                            ; $5296: $f3
    xor $fb                                       ; $5297: $ee $fb
    scf                                           ; $5299: $37
    rra                                           ; $529a: $1f
    dec bc                                        ; $529b: $0b
    rlca                                          ; $529c: $07
    nop                                           ; $529d: $00
    dec b                                         ; $529e: $05
    inc bc                                        ; $529f: $03
    xor l                                         ; $52a0: $ad
    inc bc                                        ; $52a1: $03
    ld [bc], a                                    ; $52a2: $02
    inc bc                                        ; $52a3: $03
    sbc b                                         ; $52a4: $98
    ldh a, [rNR31]                                ; $52a5: $f0 $1b
    ld b, b                                       ; $52a7: $40
    add b                                         ; $52a8: $80
    call nc, Call_000_341c                        ; $52a9: $d4 $1c $34
    cp $1f                                        ; $52ac: $fe $1f
    xor [hl]                                      ; $52ae: $ae
    inc b                                         ; $52af: $04

jr_0bd_52b0:
    inc b                                         ; $52b0: $04
    jr jr_0bd_52e2                                ; $52b1: $18 $2f

    jr jr_0bd_5264                                ; $52b3: $18 $af

    ld bc, $fe55                                  ; $52b5: $01 $55 $fe
    dec [hl]                                      ; $52b8: $35
    jp nc, $0710                                  ; $52b9: $d2 $10 $07

jr_0bd_52bc:
    ld d, a                                       ; $52bc: $57
    inc bc                                        ; $52bd: $03
    adc b                                         ; $52be: $88
    ld bc, $1608                                  ; $52bf: $01 $08 $16
    inc bc                                        ; $52c2: $03
    cp l                                          ; $52c3: $bd
    ld a, $00                                     ; $52c4: $3e $00
    ld bc, $ad03                                  ; $52c6: $01 $03 $ad
    add b                                         ; $52c9: $80
    ld l, h                                       ; $52ca: $6c
    ld [bc], a                                    ; $52cb: $02
    ldh [$88], a                                  ; $52cc: $e0 $88
    halt                                          ; $52ce: $76
    ret z                                         ; $52cf: $c8

    ret z                                         ; $52d0: $c8

    ldh a, [$d5]                                  ; $52d1: $f0 $d5
    dec a                                         ; $52d3: $3d
    and b                                         ; $52d4: $a0
    jr nz, jr_0bd_52b0                            ; $52d5: $20 $d9

    rlca                                          ; $52d7: $07
    or h                                          ; $52d8: $b4
    add hl, bc                                    ; $52d9: $09
    ld a, [de]                                    ; $52da: $1a
    ld c, $39                                     ; $52db: $0e $39
    ld c, [hl]                                    ; $52dd: $4e
    dec d                                         ; $52de: $15
    ld b, [hl]                                    ; $52df: $46
    ld b, [hl]                                    ; $52e0: $46
    nop                                           ; $52e1: $00

jr_0bd_52e2:
    ld h, h                                       ; $52e2: $64
    ld sp, $300a                                  ; $52e3: $31 $0a $30
    db $ed                                        ; $52e6: $ed
    jr c, jr_0bd_5333                             ; $52e7: $38 $4a

    inc sp                                        ; $52e9: $33
    nop                                           ; $52ea: $00
    ld d, h                                       ; $52eb: $54
    ld h, e                                       ; $52ec: $63
    ld a, e                                       ; $52ed: $7b
    ld b, a                                       ; $52ee: $47
    ld [hl], a                                    ; $52ef: $77
    ld l, $36                                     ; $52f0: $2e $36
    inc e                                         ; $52f2: $1c
    ld bc, $a050                                  ; $52f3: $01 $50 $a0
    and b                                         ; $52f6: $a0
    ld h, b                                       ; $52f7: $60
    ld a, l                                       ; $52f8: $7d
    ret nz                                        ; $52f9: $c0

    ldh a, [$6e]                                  ; $52fa: $f0 $6e
    ld hl, $bfe2                                  ; $52fc: $21 $e2 $bf
    jr jr_0bd_5336                                ; $52ff: $18 $35

    inc b                                         ; $5301: $04
    ld a, b                                       ; $5302: $78
    ld b, [hl]                                    ; $5303: $46
    ld a, c                                       ; $5304: $79
    ccf                                           ; $5305: $3f
    ld hl, $0422                                  ; $5306: $21 $22 $04
    cp b                                          ; $5309: $b8
    ld h, b                                       ; $530a: $60
    inc b                                         ; $530b: $04
    rlca                                          ; $530c: $07
    inc bc                                        ; $530d: $03
    inc b                                         ; $530e: $04
    inc b                                         ; $530f: $04
    ld bc, $8300                                  ; $5310: $01 $00 $83
    ld bc, $0022                                  ; $5313: $01 $22 $00
    jp nz, $2272                                  ; $5316: $c2 $72 $22

    sbc d                                         ; $5319: $9a
    sub c                                         ; $531a: $91
    ld c, l                                       ; $531b: $4d
    ld c, b                                       ; $531c: $48
    ld [hl+], a                                   ; $531d: $22
    db $10                                        ; $531e: $10
    inc h                                         ; $531f: $24
    add e                                         ; $5320: $83
    inc de                                        ; $5321: $13

jr_0bd_5322:
    jp c, Jump_0bd_4003                           ; $5322: $da $03 $40

    nop                                           ; $5325: $00
    jr nz, jr_0bd_534b                            ; $5326: $20 $23

    nop                                           ; $5328: $00
    ld hl, $46ef                                  ; $5329: $21 $ef $46
    ld e, h                                       ; $532c: $5c
    adc c                                         ; $532d: $89
    or b                                          ; $532e: $b0
    sub d                                         ; $532f: $92
    db $e4                                        ; $5330: $e4
    nop                                           ; $5331: $00
    and h                                         ; $5332: $a4

jr_0bd_5333:
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    add hl, hl                                    ; $5335: $29

jr_0bd_5336:
    ld e, $fe                                     ; $5336: $1e $fe
    ld h, h                                       ; $5338: $64
    call z, $8821                                 ; $5339: $cc $21 $88
    ld [$02ae], sp                                ; $533c: $08 $ae $02
    ld a, [hl+]                                   ; $533f: $2a
    ld b, h                                       ; $5340: $44
    push de                                       ; $5341: $d5
    adc d                                         ; $5342: $8a
    db $dd                                        ; $5343: $dd
    cpl                                           ; $5344: $2f
    nop                                           ; $5345: $00
    xor l                                         ; $5346: $ad
    ld [bc], a                                    ; $5347: $02
    inc bc                                        ; $5348: $03
    dec b                                         ; $5349: $05
    add hl, bc                                    ; $534a: $09

jr_0bd_534b:
    rlca                                          ; $534b: $07
    rlca                                          ; $534c: $07
    dec bc                                        ; $534d: $0b
    ld [bc], a                                    ; $534e: $02
    inc h                                         ; $534f: $24
    jr jr_0bd_536a                                ; $5350: $18 $18

    ld [hl], b                                    ; $5352: $70
    ccf                                           ; $5353: $3f
    ldh [$66], a                                  ; $5354: $e0 $66
    ld [bc], a                                    ; $5356: $02
    ret nz                                        ; $5357: $c0

    ld d, b                                       ; $5358: $50
    set 3, c                                      ; $5359: $cb $d9
    rlca                                          ; $535b: $07
    add c                                         ; $535c: $81
    inc d                                         ; $535d: $14
    ld de, $0649                                  ; $535e: $11 $49 $06
    ld d, $0c                                     ; $5361: $16 $0c

jr_0bd_5363:
    nop                                           ; $5363: $00
    inc l                                         ; $5364: $2c
    inc e                                         ; $5365: $1c
    ret c                                         ; $5366: $d8

    jr c, jr_0bd_5322                             ; $5367: $38 $b9

    ld [hl], b                                    ; $5369: $70

jr_0bd_536a:
    ld [hl], d                                    ; $536a: $72
    pop hl                                        ; $536b: $e1
    ld b, b                                       ; $536c: $40
    db $f4                                        ; $536d: $f4
    inc l                                         ; $536e: $2c
    add hl, hl                                    ; $536f: $29
    inc c                                         ; $5370: $0c

jr_0bd_5371:
    ld b, h                                       ; $5371: $44
    jr c, jr_0bd_538c                             ; $5372: $38 $18

    ldh a, [$f0]                                  ; $5374: $f0 $f0
    or h                                          ; $5376: $b4
    ldh a, [rDIV]                                 ; $5377: $f0 $04
    dec b                                         ; $5379: $05
    jp nc, $f914                                  ; $537a: $d2 $14 $f9

    rrca                                          ; $537d: $0f
    ld a, [bc]                                    ; $537e: $0a
    add d                                         ; $537f: $82
    add hl, bc                                    ; $5380: $09
    inc bc                                        ; $5381: $03
    ld c, a                                       ; $5382: $4f
    nop                                           ; $5383: $00
    inc b                                         ; $5384: $04
    sub l                                         ; $5385: $95
    ld [$1820], sp                                ; $5386: $08 $20 $18
    inc l                                         ; $5389: $2c
    jr nc, jr_0bd_53ca                            ; $538a: $30 $3e

jr_0bd_538c:
    inc b                                         ; $538c: $04
    jr nz, @-$11                                  ; $538d: $20 $ed

    jr nc, jr_0bd_5407                            ; $538f: $30 $76

    jr c, jr_0bd_5363                             ; $5391: $38 $d0

    rlca                                          ; $5393: $07
    add b                                         ; $5394: $80
    sbc c                                         ; $5395: $99
    add b                                         ; $5396: $80
    inc l                                         ; $5397: $2c
    dec b                                         ; $5398: $05
    ld h, b                                       ; $5399: $60
    ld b, b                                       ; $539a: $40
    ld a, [hl]                                    ; $539b: $7e
    jr nz, @+$7a                                  ; $539c: $20 $78

    db $10                                        ; $539e: $10
    and l                                         ; $539f: $a5
    ldh a, [$a0]                                  ; $53a0: $f0 $a0
    inc b                                         ; $53a2: $04
    ret nz                                        ; $53a3: $c0

    jr z, jr_0bd_5371                             ; $53a4: $28 $cb

    ld c, $ca                                     ; $53a6: $0e $ca
    ld [$0001], sp                                ; $53a8: $08 $01 $00
    cp [hl]                                       ; $53ab: $be
    inc bc                                        ; $53ac: $03
    nop                                           ; $53ad: $00
    dec c                                         ; $53ae: $0d
    ld b, $16                                     ; $53af: $06 $16
    ld [$106c], sp                                ; $53b1: $08 $6c $10
    jr z, jr_0bd_53e6                             ; $53b4: $28 $30

    nop                                           ; $53b6: $00
    ld [hl], b                                    ; $53b7: $70
    jr nz, jr_0bd_53c9                            ; $53b8: $20 $0f

    nop                                           ; $53ba: $00
    ld [$52fc], a                                 ; $53bb: $ea $fc $52
    xor a                                         ; $53be: $af
    ld d, h                                       ; $53bf: $54
    cp h                                          ; $53c0: $bc
    jp nc, $2f03                                  ; $53c1: $d2 $03 $2f

    sub b                                         ; $53c4: $90
    inc bc                                        ; $53c5: $03
    dec bc                                        ; $53c6: $0b
    ld h, [hl]                                    ; $53c7: $66
    inc de                                        ; $53c8: $13

jr_0bd_53c9:
    nop                                           ; $53c9: $00

jr_0bd_53ca:
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    ld d, l                                       ; $53cc: $55
    add b                                         ; $53cd: $80
    ld a, b                                       ; $53ce: $78
    ret nz                                        ; $53cf: $c0

    jr nz, @-$1e                                  ; $53d0: $20 $e0

    sub b                                         ; $53d2: $90
    ld [hl], b                                    ; $53d3: $70
    dec hl                                        ; $53d4: $2b
    sbc a                                         ; $53d5: $9f
    ld [hl], b                                    ; $53d6: $70
    push af                                       ; $53d7: $f5
    rra                                           ; $53d8: $1f
    ld d, d                                       ; $53d9: $52
    ld a, b                                       ; $53da: $78
    daa                                           ; $53db: $27

jr_0bd_53dc:
    ld d, b                                       ; $53dc: $50
    cp $15                                        ; $53dd: $fe $15
    ld h, h                                       ; $53df: $64
    dec b                                         ; $53e0: $05
    nop                                           ; $53e1: $00
    jr nz, jr_0bd_53dc                            ; $53e2: $20 $f8

    ld e, a                                       ; $53e4: $5f
    adc c                                         ; $53e5: $89

jr_0bd_53e6:
    adc b                                         ; $53e6: $88
    adc b                                         ; $53e7: $88
    adc b                                         ; $53e8: $88
    add sp, $00                                   ; $53e9: $e8 $00
    ld d, b                                       ; $53eb: $50
    dec bc                                        ; $53ec: $0b
    adc e                                         ; $53ed: $8b
    res 1, c                                      ; $53ee: $cb $89
    call nz, $c145                                ; $53f0: $c4 $45 $c1
    nop                                           ; $53f3: $00
    ld b, l                                       ; $53f4: $45
    ldh [rSTAT], a                                ; $53f5: $e0 $41
    ld [bc], a                                    ; $53f7: $02
    db $e3                                        ; $53f8: $e3
    ld b, b                                       ; $53f9: $40
    ld sp, $00a0                                  ; $53fa: $31 $a0 $00
    ld b, b                                       ; $53fd: $40
    ret                                           ; $53fe: $c9


    ld c, c                                       ; $53ff: $49
    pop bc                                        ; $5400: $c1
    sub d                                         ; $5401: $92
    dec b                                         ; $5402: $05
    add d                                         ; $5403: $82
    dec bc                                        ; $5404: $0b
    nop                                           ; $5405: $00
    adc a                                         ; $5406: $8f

jr_0bd_5407:
    ld c, $34                                     ; $5407: $0e $34
    rra                                           ; $5409: $1f
    ld e, [hl]                                    ; $540a: $5e
    ld hl, $8661                                  ; $540b: $21 $61 $86
    nop                                           ; $540e: $00
    add [hl]                                      ; $540f: $86
    sub c                                         ; $5410: $91
    ld de, $1131                                  ; $5411: $11 $31 $11
    rst $30                                       ; $5414: $f7
    ld a, [$40ce]                                 ; $5415: $fa $ce $40
    inc b                                         ; $5418: $04
    inc b                                         ; $5419: $04
    ld [de], a                                    ; $541a: $12
    add b                                         ; $541b: $80
    ld e, l                                       ; $541c: $5d
    ld h, b                                       ; $541d: $60
    ld [de], a                                    ; $541e: $12
    rrca                                          ; $541f: $0f
    rrca                                          ; $5420: $0f
    nop                                           ; $5421: $00
    ld d, $26                                     ; $5422: $16 $26
    ld e, $1e                                     ; $5424: $1e $1e
    inc l                                         ; $5426: $2c
    ld e, $2c                                     ; $5427: $1e $2c
    ld c, h                                       ; $5429: $4c
    nop                                           ; $542a: $00
    inc a                                         ; $542b: $3c
    inc e                                         ; $542c: $1c
    ld a, h                                       ; $542d: $7c
    jr c, jr_0bd_548c                             ; $542e: $38 $5c

    ld [$5501], a                                 ; $5430: $ea $01 $55
    nop                                           ; $5433: $00
    inc bc                                        ; $5434: $03
    dec bc                                        ; $5435: $0b
    dec b                                         ; $5436: $05
    rlca                                          ; $5437: $07
    dec bc                                        ; $5438: $0b
    ld c, $17                                     ; $5439: $0e $17
    daa                                           ; $543b: $27
    nop                                           ; $543c: $00
    ld e, $1c                                     ; $543d: $1e $1c
    ld l, $5e                                     ; $543f: $2e $5e
    inc l                                         ; $5441: $2c
    push bc                                       ; $5442: $c5
    ld [c], a                                     ; $5443: $e2
    rlc b                                         ; $5444: $cb $00
    push bc                                       ; $5446: $c5
    rst $10                                       ; $5447: $d7
    adc e                                         ; $5448: $8b
    xor a                                         ; $5449: $af
    rla                                           ; $544a: $17
    rra                                           ; $544b: $1f
    ld l, $4c                                     ; $544c: $2e $4c
    nop                                           ; $544e: $00
    ld a, $3f                                     ; $544f: $3e $3f
    ld e, h                                       ; $5451: $5c
    sbc b                                         ; $5452: $98
    ld a, h                                       ; $5453: $7c
    ldh [$c0], a                                  ; $5454: $e0 $c0
    ld a, [$f8c5]                                 ; $5456: $fa $c5 $f8
    ld [hl+], a                                   ; $5459: $22
    ret nc                                        ; $545a: $d0

    rlca                                          ; $545b: $07
    ld b, $16                                     ; $545c: $06 $16
    ld c, $ff                                     ; $545e: $0e $ff
    rrca                                          ; $5460: $0f
    ld d, a                                       ; $5461: $57
    call nz, $4005                                ; $5462: $c4 $05 $40
    ld bc, $03d6                                  ; $5465: $01 $d6 $03
    rlca                                          ; $5468: $07
    inc bc                                        ; $5469: $03
    ld a, [de]                                    ; $546a: $1a
    rrca                                          ; $546b: $0f
    dec e                                         ; $546c: $1d
    ld h, b                                       ; $546d: $60

jr_0bd_546e:
    nop                                           ; $546e: $00
    rst $30                                       ; $546f: $f7
    ld b, b                                       ; $5470: $40
    jp hl                                         ; $5471: $e9


    ret nz                                        ; $5472: $c0

    dec [hl]                                      ; $5473: $35
    ret nz                                        ; $5474: $c0

    db $db                                        ; $5475: $db
    and b                                         ; $5476: $a0
    nop                                           ; $5477: $00
    cpl                                           ; $5478: $2f
    ret nc                                        ; $5479: $d0

    or l                                          ; $547a: $b5
    ld [$1ceb], a                                 ; $547b: $ea $eb $1c
    ld e, [hl]                                    ; $547e: $5e
    inc b                                         ; $547f: $04
    nop                                           ; $5480: $00
    rst $28                                       ; $5481: $ef
    ld [bc], a                                    ; $5482: $02
    inc h                                         ; $5483: $24
    add e                                         ; $5484: $83
    ld c, a                                       ; $5485: $4f
    add c                                         ; $5486: $81
    and a                                         ; $5487: $a7
    ld bc, $cd01                                  ; $5488: $01 $01 $cd
    inc bc                                        ; $548b: $03

jr_0bd_548c:
    jp c, Jump_0bd_7505                           ; $548c: $da $05 $75

    dec bc                                        ; $548f: $0b
    or b                                          ; $5490: $b0
    cp b                                          ; $5491: $b8
    daa                                           ; $5492: $27
    ret nz                                        ; $5493: $c0

    dec bc                                        ; $5494: $0b
    ld [bc], a                                    ; $5495: $02
    add l                                         ; $5496: $85
    ld c, $80                                     ; $5497: $0e $80
    ld d, b                                       ; $5499: $50
    ld h, b                                       ; $549a: $60
    ld l, b                                       ; $549b: $68
    ld b, b                                       ; $549c: $40
    ld d, h                                       ; $549d: $54
    nop                                           ; $549e: $00
    ld h, b                                       ; $549f: $60
    ld a, d                                       ; $54a0: $7a
    ld b, b                                       ; $54a1: $40
    ld e, l                                       ; $54a2: $5d
    ld h, b                                       ; $54a3: $60
    ld e, $60                                     ; $54a4: $1e $60
    ld c, a                                       ; $54a6: $4f
    ld [$2730], sp                                ; $54a7: $08 $30 $27
    jr c, jr_0bd_54b3                             ; $54aa: $38 $07

    ret nc                                        ; $54ac: $d0

    ld b, $17                                     ; $54ad: $06 $17
    nop                                           ; $54af: $00
    cpl                                           ; $54b0: $2f
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00

jr_0bd_54b3:
    ld d, [hl]                                    ; $54b3: $56
    ld bc, $03bd                                  ; $54b4: $01 $bd $03
    ld a, [$f507]                                 ; $54b7: $fa $07 $f5
    nop                                           ; $54ba: $00
    ld c, $c0                                     ; $54bb: $0e $c0
    jr c, jr_0bd_546e                             ; $54bd: $38 $af

    ld e, b                                       ; $54bf: $58
    ld c, b                                       ; $54c0: $48
    cp b                                          ; $54c1: $b8
    cp d                                          ; $54c2: $ba
    inc bc                                        ; $54c3: $03
    ld a, a                                       ; $54c4: $7f
    ld d, h                                       ; $54c5: $54
    db $eb                                        ; $54c6: $eb
    ld l, a                                       ; $54c7: $6f
    add b                                         ; $54c8: $80
    sub a                                         ; $54c9: $97
    db $ec                                        ; $54ca: $ec
    ld d, $c3                                     ; $54cb: $16 $c3

jr_0bd_54cd:
    ld bc, $3e80                                  ; $54cd: $01 $80 $3e
    ld [$1dc0], sp                                ; $54d0: $08 $c0 $1d
    ldh [$98], a                                  ; $54d3: $e0 $98
    ld [hl], b                                    ; $54d5: $70
    ret z                                         ; $54d6: $c8

    jr c, @+$22                                   ; $54d7: $38 $20

    ld [hl], c                                    ; $54d9: $71
    jr nz, jr_0bd_5556                            ; $54da: $20 $7a

    ld [$0200], sp                                ; $54dc: $08 $00 $02
    inc c                                         ; $54df: $0c
    ld [bc], a                                    ; $54e0: $02
    ld bc, $0500                                  ; $54e1: $01 $00 $05
    nop                                           ; $54e4: $00

jr_0bd_54e5:
    dec b                                         ; $54e5: $05
    jr jr_0bd_54ec                                ; $54e6: $18 $04

    ret nz                                        ; $54e8: $c0

    sub b                                         ; $54e9: $90
    add b                                         ; $54ea: $80
    nop                                           ; $54eb: $00

jr_0bd_54ec:
    jr nz, jr_0bd_54f5                            ; $54ec: $20 $07

    ld b, e                                       ; $54ee: $43
    adc h                                         ; $54ef: $8c
    adc a                                         ; $54f0: $8f
    dec e                                         ; $54f1: $1d
    ld d, $32                                     ; $54f2: $16 $32
    nop                                           ; $54f4: $00

jr_0bd_54f5:
    inc h                                         ; $54f5: $24
    ld h, c                                       ; $54f6: $61
    ld b, [hl]                                    ; $54f7: $46
    add $85                                       ; $54f8: $c6 $85
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    db $e4                                        ; $54fc: $e4
    nop                                           ; $54fd: $00
    jr jr_0bd_54cd                                ; $54fe: $18 $cd

    cp $eb                                        ; $5500: $fe $eb
    add hl, de                                    ; $5502: $19
    ld d, b                                       ; $5503: $50
    ld [$00ac], sp                                ; $5504: $08 $ac $00
    jr c, jr_0bd_54e5                             ; $5507: $38 $dc

    adc b                                         ; $5509: $88

jr_0bd_550a:
    xor b                                         ; $550a: $a8
    inc b                                         ; $550b: $04
    sbc b                                         ; $550c: $98
    ret nc                                        ; $550d: $d0

    inc l                                         ; $550e: $2c
    nop                                           ; $550f: $00
    jr z, jr_0bd_5512                             ; $5510: $28 $00

jr_0bd_5512:
    inc d                                         ; $5512: $14
    jp z, $a28c                                   ; $5513: $ca $8c $a2

    ld h, d                                       ; $5516: $62
    jr nc, jr_0bd_5519                            ; $5517: $30 $00

jr_0bd_5519:
    ld [de], a                                    ; $5519: $12
    ld [de], a                                    ; $551a: $12
    ld a, [bc]                                    ; $551b: $0a
    ld c, $06                                     ; $551c: $0e $06
    inc a                                         ; $551e: $3c
    ld e, b                                       ; $551f: $58
    cp h                                          ; $5520: $bc
    nop                                           ; $5521: $00
    ld e, b                                       ; $5522: $58
    sbc b                                         ; $5523: $98
    ld a, b                                       ; $5524: $78
    cp l                                          ; $5525: $bd
    ld a, b                                       ; $5526: $78
    ld hl, sp+$78                                 ; $5527: $f8 $78
    ld sp, hl                                     ; $5529: $f9
    nop                                           ; $552a: $00
    ld [hl], b                                    ; $552b: $70
    ld sp, $0070                                  ; $552c: $31 $70 $00
    ld bc, $5c2c                                  ; $552f: $01 $2c $5c
    dec a                                         ; $5532: $3d

Call_0bd_5533:
    nop                                           ; $5533: $00
    ld e, h                                       ; $5534: $5c
    sbc b                                         ; $5535: $98
    ld a, l                                       ; $5536: $7d
    sbc h                                         ; $5537: $9c
    ld a, c                                       ; $5538: $79
    ld a, b                                       ; $5539: $78
    cp c                                          ; $553a: $b9
    ld a, [hl]                                    ; $553b: $7e
    nop                                           ; $553c: $00
    cp c                                          ; $553d: $b9
    ld [hl], b                                    ; $553e: $70
    cp c                                          ; $553f: $b9
    add hl, sp                                    ; $5540: $39
    ldh a, [$7c]                                  ; $5541: $f0 $7c
    cp b                                          ; $5543: $b8
    ld [hl], b                                    ; $5544: $70
    nop                                           ; $5545: $00
    cp b                                          ; $5546: $b8
    ld a, $f0                                     ; $5547: $3e $f0
    ld sp, hl                                     ; $5549: $f9
    ld [hl], b                                    ; $554a: $70
    ld a, [c]                                     ; $554b: $f2
    ld [hl], c                                    ; $554c: $71
    pop af                                        ; $554d: $f1
    nop                                           ; $554e: $00
    ld [hl], d                                    ; $554f: $72
    db $f4                                        ; $5550: $f4
    db $e3                                        ; $5551: $e3
    db $e3                                        ; $5552: $e3
    push bc                                       ; $5553: $c5
    ld l, $1c                                     ; $5554: $2e $1c

jr_0bd_5556:
    ld e, h                                       ; $5556: $5c
    nop                                           ; $5557: $00
    jr c, jr_0bd_550a                             ; $5558: $38 $b0

    ld e, b                                       ; $555a: $58
    ld [hl], b                                    ; $555b: $70

jr_0bd_555c:
    or b                                          ; $555c: $b0
    ldh a, [$60]                                  ; $555d: $f0 $60
    ldh [$80], a                                  ; $555f: $e0 $80
    sub b                                         ; $5561: $90
    inc bc                                        ; $5562: $03
    ret nz                                        ; $5563: $c0

    ret nz                                        ; $5564: $c0

    dec [hl]                                      ; $5565: $35
    jr jr_0bd_55d2                                ; $5566: $18 $6a

    jr nc, jr_0bd_55be                            ; $5568: $30 $54

    nop                                           ; $556a: $00
    ld h, b                                       ; $556b: $60
    cp d                                          ; $556c: $ba
    ld b, b                                       ; $556d: $40
    cp l                                          ; $556e: $bd
    ret nz                                        ; $556f: $c0

    xor a                                         ; $5570: $af
    ret nc                                        ; $5571: $d0

    sub a                                         ; $5572: $97
    ld a, [bc]                                    ; $5573: $0a
    add sp, -$36                                  ; $5574: $e8 $ca
    push af                                       ; $5576: $f5
    ld a, [hl]                                    ; $5577: $7e
    adc h                                         ; $5578: $8c
    rlca                                          ; $5579: $07
    dec d                                         ; $557a: $15
    ret nz                                        ; $557b: $c0

    nop                                           ; $557c: $00
    ld e, e                                       ; $557d: $5b
    nop                                           ; $557e: $00
    inc b                                         ; $557f: $04
    cp e                                          ; $5580: $bb
    inc b                                         ; $5581: $04
    rst $18                                       ; $5582: $df
    nop                                           ; $5583: $00
    ei                                            ; $5584: $fb
    inc b                                         ; $5585: $04
    xor e                                         ; $5586: $ab
    ld a, [bc]                                    ; $5587: $0a
    ld e, a                                       ; $5588: $5f
    ld e, d                                       ; $5589: $5a
    dec h                                         ; $558a: $25
    or l                                          ; $558b: $b5
    ld l, [hl]                                    ; $558c: $6e
    inc bc                                        ; $558d: $03
    xor b                                         ; $558e: $a8
    jr nc, jr_0bd_5596                            ; $558f: $30 $05

    ld sp, hl                                     ; $5591: $f9
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    cp l                                          ; $5594: $bd
    ld b, b                                       ; $5595: $40

jr_0bd_5596:
    cp h                                          ; $5596: $bc
    ret nz                                        ; $5597: $c0

    xor b                                         ; $5598: $a8
    ld [hl], b                                    ; $5599: $70
    ld h, h                                       ; $559a: $64
    nop                                           ; $559b: $00
    jr jr_0bd_555c                                ; $559c: $18 $be

    inc b                                         ; $559e: $04
    ld c, l                                       ; $559f: $4d
    ld [bc], a                                    ; $55a0: $02
    xor h                                         ; $55a1: $ac
    inc bc                                        ; $55a2: $03
    ld e, e                                       ; $55a3: $5b
    nop                                           ; $55a4: $00
    dec b                                         ; $55a5: $05
    push af                                       ; $55a6: $f5
    dec bc                                        ; $55a7: $0b
    inc de                                        ; $55a8: $13
    inc e                                         ; $55a9: $1c
    ld e, b                                       ; $55aa: $58
    rrca                                          ; $55ab: $0f
    ld [$0768], sp                                ; $55ac: $08 $68 $07
    add l                                         ; $55af: $85
    inc bc                                        ; $55b0: $03
    add $07                                       ; $55b1: $c6 $07
    dec hl                                        ; $55b3: $2b
    jp z, Jump_0bd_5a07                           ; $55b4: $ca $07 $5a

    xor h                                         ; $55b7: $ac
    xor h                                         ; $55b8: $ac
    nop                                           ; $55b9: $00
    ld e, b                                       ; $55ba: $58
    ld d, h                                       ; $55bb: $54
    cp b                                          ; $55bc: $b8
    ld a, [de]                                    ; $55bd: $1a

jr_0bd_55be:
    ldh a, [$e5]                                  ; $55be: $f0 $e5
    ld hl, sp+$1e                                 ; $55c0: $f8 $1e
    inc bc                                        ; $55c2: $03
    db $10                                        ; $55c3: $10
    rst $20                                       ; $55c4: $e7
    jr jr_0bd_55fe                                ; $55c5: $18 $37

    jr jr_0bd_55ce                                ; $55c7: $18 $05

    ld h, b                                       ; $55c9: $60
    inc b                                         ; $55ca: $04

jr_0bd_55cb:
    rst $18                                       ; $55cb: $df
    nop                                           ; $55cc: $00
    adc b                                         ; $55cd: $88

jr_0bd_55ce:
    and b                                         ; $55ce: $a0
    rlca                                          ; $55cf: $07
    adc e                                         ; $55d0: $8b
    nop                                           ; $55d1: $00

jr_0bd_55d2:
    ld d, l                                       ; $55d2: $55
    add sp, $07                                   ; $55d3: $e8 $07
    ldh [rNR32], a                                ; $55d5: $e0 $1c
    and $00                                       ; $55d7: $e6 $00
    inc e                                         ; $55d9: $1c
    ldh a, [$0e]                                  ; $55da: $f0 $0e
    ld [$f216], a                                 ; $55dc: $ea $16 $f2
    ld c, $e8                                     ; $55df: $0e $e8
    add b                                         ; $55e1: $80
    inc b                                         ; $55e2: $04
    nop                                           ; $55e3: $00
    ld [c], a                                     ; $55e4: $e2
    ld e, $01                                     ; $55e5: $1e $01
    inc b                                         ; $55e7: $04
    inc b                                         ; $55e8: $04
    dec b                                         ; $55e9: $05
    dec b                                         ; $55ea: $05
    inc h                                         ; $55eb: $24
    dec b                                         ; $55ec: $05
    ld b, $03                                     ; $55ed: $06 $03
    nop                                           ; $55ef: $00
    ld b, $02                                     ; $55f0: $06 $02
    adc d                                         ; $55f2: $8a
    inc c                                         ; $55f3: $0c
    rlca                                          ; $55f4: $07
    add d                                         ; $55f5: $82
    ld d, h                                       ; $55f6: $54
    sbc $d2                                       ; $55f7: $de $d2
    inc bc                                        ; $55f9: $03
    xor h                                         ; $55fa: $ac
    ld d, $34                                     ; $55fb: $16 $34
    ld d, d                                       ; $55fd: $52

jr_0bd_55fe:
    add b                                         ; $55fe: $80
    inc b                                         ; $55ff: $04
    sbc $0c                                       ; $5600: $de $0c
    nop                                           ; $5602: $00
    dec hl                                        ; $5603: $2b
    add h                                         ; $5604: $84
    ld [hl], h                                    ; $5605: $74
    and a                                         ; $5606: $a7
    rst $28                                       ; $5607: $ef
    ld b, h                                       ; $5608: $44
    ld e, [hl]                                    ; $5609: $5e
    inc h                                         ; $560a: $24
    dec e                                         ; $560b: $1d
    inc a                                         ; $560c: $3c
    jr jr_0bd_55cb                                ; $560d: $18 $bc

    ld h, $10                                     ; $560f: $26 $10
    sub h                                         ; $5611: $94
    rrca                                          ; $5612: $0f
    ld a, [$2e1f]                                 ; $5613: $fa $1f $2e
    ld b, b                                       ; $5616: $40
    inc [hl]                                      ; $5617: $34
    add [hl]                                      ; $5618: $86
    ret z                                         ; $5619: $c8

    dec de                                        ; $561a: $1b
    ldh a, [$f0]                                  ; $561b: $f0 $f0
    cp $e0                                        ; $561d: $fe $e0
    call c, $d611                                 ; $561f: $dc $11 $d6
    inc l                                         ; $5622: $2c
    rlca                                          ; $5623: $07
    nop                                           ; $5624: $00
    add a                                         ; $5625: $87
    dec bc                                        ; $5626: $0b
    rla                                           ; $5627: $17

jr_0bd_5628:
    dec bc                                        ; $5628: $0b
    inc de                                        ; $5629: $13
    rrca                                          ; $562a: $0f
    rst $28                                       ; $562b: $ef
    rla                                           ; $562c: $17
    ld bc, $17ef                                  ; $562d: $01 $ef $17
    ld d, $1f                                     ; $5630: $16 $1f
    rra                                           ; $5632: $1f
    ld c, $80                                     ; $5633: $0e $80
    ei                                            ; $5635: $fb
    rlca                                          ; $5636: $07
    ld d, b                                       ; $5637: $50
    ld a, [$03c8]                                 ; $5638: $fa $c8 $03
    add sp, $42                                   ; $563b: $e8 $42
    jr nz, jr_0bd_5628                            ; $563d: $20 $e9

    ld a, [hl]                                    ; $563f: $7e
    ld d, h                                       ; $5640: $54
    ccf                                           ; $5641: $3f
    nop                                           ; $5642: $00
    jr c, jr_0bd_5664                             ; $5643: $38 $1f

    rlca                                          ; $5645: $07
    ld de, $2405                                  ; $5646: $11 $05 $24
    add b                                         ; $5649: $80
    add b                                         ; $564a: $80
    nop                                           ; $564b: $00
    ld [$010a], sp                                ; $564c: $08 $0a $01
    ld b, c                                       ; $564f: $41
    ld a, l                                       ; $5650: $7d
    add d                                         ; $5651: $82
    xor d                                         ; $5652: $aa
    ld d, a                                       ; $5653: $57
    nop                                           ; $5654: $00
    sub h                                         ; $5655: $94
    db $eb                                        ; $5656: $eb
    ld d, c                                       ; $5657: $51
    rst $38                                       ; $5658: $ff
    rst $38                                       ; $5659: $ff
    rst $38                                       ; $565a: $ff
    ld b, b                                       ; $565b: $40
    ld b, b                                       ; $565c: $40
    nop                                           ; $565d: $00
    ld de, $0011                                  ; $565e: $11 $11 $00
    ld [$28d7], sp                                ; $5661: $08 $d7 $28

jr_0bd_5664:
    xor d                                         ; $5664: $aa
    ld d, l                                       ; $5665: $55
    nop                                           ; $5666: $00
    db $10                                        ; $5667: $10
    rst $28                                       ; $5668: $ef
    ld d, h                                       ; $5669: $54
    rst $38                                       ; $566a: $ff
    db $eb                                        ; $566b: $eb
    rst $38                                       ; $566c: $ff
    db $db                                        ; $566d: $db
    inc a                                         ; $566e: $3c
    add b                                         ; $566f: $80
    ld h, l                                       ; $5670: $65
    ld b, $10                                     ; $5671: $06 $10
    ld c, c                                       ; $5673: $49
    or a                                          ; $5674: $b7
    sub e                                         ; $5675: $93
    ld l, [hl]                                    ; $5676: $6e
    ld b, [hl]                                    ; $5677: $46
    db $fc                                        ; $5678: $fc
    ld [bc], a                                    ; $5679: $02
    ld [$c0f2], a                                 ; $567a: $ea $f2 $c0
    ld [$1514], sp                                ; $567d: $08 $14 $15
    or c                                          ; $5680: $b1
    nop                                           ; $5681: $00
    jr nz, @-$3e                                  ; $5682: $20 $c0

    cp l                                          ; $5684: $bd
    inc a                                         ; $5685: $3c
    ld h, h                                       ; $5686: $64
    inc e                                         ; $5687: $1c
    dec de                                        ; $5688: $1b
    inc c                                         ; $5689: $0c
    ld bc, $000e                                  ; $568a: $01 $0e $00
    rlca                                          ; $568d: $07
    dec b                                         ; $568e: $05
    inc b                                         ; $568f: $04
    inc bc                                        ; $5690: $03
    xor e                                         ; $5691: $ab
    ld bc, $eb5f                                  ; $5692: $01 $5f $eb
    rla                                           ; $5695: $17
    rst $38                                       ; $5696: $ff
    ld [bc], a                                    ; $5697: $02
    stop                                          ; $5698: $10 $00
    ld a, [hl+]                                   ; $569a: $2a
    push de                                       ; $569b: $d5
    inc d                                         ; $569c: $14
    db $eb                                        ; $569d: $eb
    ld b, b                                       ; $569e: $40
    rst $38                                       ; $569f: $ff
    ld d, d                                       ; $56a0: $52
    ccf                                           ; $56a1: $3f
    nop                                           ; $56a2: $00
    dec bc                                        ; $56a3: $0b
    nop                                           ; $56a4: $00
    jp nc, $a02c                                  ; $56a5: $d2 $2c $a0

    ld e, h                                       ; $56a8: $5c
    ld b, b                                       ; $56a9: $40
    cp b                                          ; $56aa: $b8
    rlca                                          ; $56ab: $07
    adc b                                         ; $56ac: $88
    ld [hl], b                                    ; $56ad: $70
    dec e                                         ; $56ae: $1d
    ldh [$80], a                                  ; $56af: $e0 $80
    ld c, $05                                     ; $56b1: $0e $05

jr_0bd_56b3:
    adc [hl]                                      ; $56b3: $8e
    dec hl                                        ; $56b4: $2b
    ld b, [hl]                                    ; $56b5: $46
    inc l                                         ; $56b6: $2c
    adc b                                         ; $56b7: $88
    add $0e                                       ; $56b8: $c6 $0e
    nop                                           ; $56ba: $00
    ld bc, $6417                                  ; $56bb: $01 $17 $64
    ld c, $02                                     ; $56be: $0e $02
    cp $02                                        ; $56c0: $fe $02
    ld [$023c], sp                                ; $56c2: $08 $3c $02
    ld c, d                                       ; $56c5: $4a
    inc b                                         ; $56c6: $04
    xor e                                         ; $56c7: $ab
    ld b, $40                                     ; $56c8: $06 $40

jr_0bd_56ca:
    ld l, d                                       ; $56ca: $6a
    ld b, b                                       ; $56cb: $40
    inc b                                         ; $56cc: $04
    jr nz, jr_0bd_570f                            ; $56cd: $20 $40

    ld a, h                                       ; $56cf: $7c
    jr nz, jr_0bd_5732                            ; $56d0: $20 $60

    ld [$5007], a                                 ; $56d2: $ea $07 $50
    jr nz, jr_0bd_56d8                            ; $56d5: $20 $01

    rlca                                          ; $56d7: $07

jr_0bd_56d8:
    nop                                           ; $56d8: $00
    add hl, de                                    ; $56d9: $19
    rrca                                          ; $56da: $0f
    jr c, jr_0bd_56ed                             ; $56db: $38 $10

    jr nc, jr_0bd_56e9                            ; $56dd: $30 $0a

    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    ld e, b                                       ; $56e1: $58
    ld h, b                                       ; $56e2: $60
    inc e                                         ; $56e3: $1c
    ld h, b                                       ; $56e4: $60
    ld l, d                                       ; $56e5: $6a
    ld d, b                                       ; $56e6: $50
    add b                                         ; $56e7: $80
    nop                                           ; $56e8: $00

jr_0bd_56e9:
    nop                                           ; $56e9: $00

jr_0bd_56ea:
    cp d                                          ; $56ea: $ba
    ret nz                                        ; $56eb: $c0

    ld [hl], b                                    ; $56ec: $70

jr_0bd_56ed:
    jr nz, jr_0bd_56f7                            ; $56ed: $20 $08

    db $10                                        ; $56ef: $10
    inc c                                         ; $56f0: $0c
    ld [$0c10], sp                                ; $56f1: $08 $10 $0c
    inc b                                         ; $56f4: $04
    ld b, $44                                     ; $56f5: $06 $44

jr_0bd_56f7:
    inc b                                         ; $56f7: $04
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    add d                                         ; $56fa: $82
    nop                                           ; $56fb: $00
    nop                                           ; $56fc: $00
    ld a, $1c                                     ; $56fd: $3e $1c
    ld e, l                                       ; $56ff: $5d
    ld [hl+], a                                   ; $5700: $22
    pop hl                                        ; $5701: $e1
    ld b, c                                       ; $5702: $41
    ret nc                                        ; $5703: $d0

    add b                                         ; $5704: $80
    ld b, $a0                                     ; $5705: $06 $a0
    add b                                         ; $5707: $80
    ret nc                                        ; $5708: $d0

    add b                                         ; $5709: $80
    ld d, h                                       ; $570a: $54
    xor b                                         ; $570b: $a8
    inc de                                        ; $570c: $13
    or h                                          ; $570d: $b4
    dec c                                         ; $570e: $0d

jr_0bd_570f:
    push af                                       ; $570f: $f5
    rrca                                          ; $5710: $0f
    add b                                         ; $5711: $80
    ld h, b                                       ; $5712: $60

jr_0bd_5713:
    ld b, b                                       ; $5713: $40
    ld h, b                                       ; $5714: $60
    or b                                          ; $5715: $b0
    nop                                           ; $5716: $00
    jp nz, Jump_0bd_751c                          ; $5717: $c2 $1c $75

    dec l                                         ; $571a: $2d
    ld a, [hl]                                    ; $571b: $7e
    dec e                                         ; $571c: $1d
    ld e, h                                       ; $571d: $5c
    sub l                                         ; $571e: $95
    ld b, $16                                     ; $571f: $06 $16
    jr z, jr_0bd_56b3                             ; $5721: $28 $90

    dec c                                         ; $5723: $0d
    call nz, $8007                                ; $5724: $c4 $07 $80
    ld bc, $7c02                                  ; $5727: $01 $02 $7c
    nop                                           ; $572a: $00
    inc b                                         ; $572b: $04
    dec c                                         ; $572c: $0d
    ld [$18e9], sp                                ; $572d: $08 $e9 $18
    ld [hl-], a                                   ; $5730: $32
    add hl, hl                                    ; $5731: $29

jr_0bd_5732:
    ldh [rP1], a                                  ; $5732: $e0 $00
    ld b, b                                       ; $5734: $40
    ldh [$a0], a                                  ; $5735: $e0 $a0
    ld h, b                                       ; $5737: $60
    jr nz, jr_0bd_56ea                            ; $5738: $20 $b0

    ld h, b                                       ; $573a: $60
    cp [hl]                                       ; $573b: $be
    adc l                                         ; $573c: $8d
    ld [hl-], a                                   ; $573d: $32
    ld b, $c0                                     ; $573e: $06 $c0
    add b                                         ; $5740: $80
    sub h                                         ; $5741: $94
    jr c, jr_0bd_574b                             ; $5742: $38 $07

    jr nc, jr_0bd_5754                            ; $5744: $30 $0e

    cpl                                           ; $5746: $2f
    ld a, [hl-]                                   ; $5747: $3a
    jr jr_0bd_56ca                                ; $5748: $18 $80

    inc c                                         ; $574a: $0c

jr_0bd_574b:
    rlca                                          ; $574b: $07
    add hl, bc                                    ; $574c: $09
    rlca                                          ; $574d: $07
    and h                                         ; $574e: $a4
    jr jr_0bd_5761                                ; $574f: $18 $10

    jr nz, jr_0bd_5713                            ; $5751: $20 $c0

    add b                                         ; $5753: $80

jr_0bd_5754:
    ld [hl+], a                                   ; $5754: $22
    nop                                           ; $5755: $00
    ld a, [$2da0]                                 ; $5756: $fa $a0 $2d
    jr nc, jr_0bd_578d                            ; $5759: $30 $32

    dec e                                         ; $575b: $1d
    add b                                         ; $575c: $80
    and b                                         ; $575d: $a0
    sub [hl]                                      ; $575e: $96
    inc bc                                        ; $575f: $03
    ld l, c                                       ; $5760: $69

jr_0bd_5761:
    ld l, b                                       ; $5761: $68
    nop                                           ; $5762: $00
    ld b, h                                       ; $5763: $44
    jr c, @-$44                                   ; $5764: $38 $ba

    ld h, h                                       ; $5766: $64
    ld [hl], e                                    ; $5767: $73
    ld a, [de]                                    ; $5768: $1a
    jp nz, $c1e2                                  ; $5769: $c2 $e2 $c1

    db $e4                                        ; $576c: $e4
    dec d                                         ; $576d: $15
    ld [c], a                                     ; $576e: $e2
    dec [hl]                                      ; $576f: $35
    push af                                       ; $5770: $f5
    ld l, h                                       ; $5771: $6c
    ld h, $05                                     ; $5772: $26 $05
    and b                                         ; $5774: $a0
    jr c, jr_0bd_57dc                             ; $5775: $38 $65

    pop de                                        ; $5777: $d1
    halt                                          ; $5778: $76
    ld [bc], a                                    ; $5779: $02
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    cp $01                                        ; $577c: $fe $01
    rrca                                          ; $577e: $0f

jr_0bd_577f:
    nop                                           ; $577f: $00
    ld b, $0c                                     ; $5780: $06 $0c
    inc b                                         ; $5782: $04
    inc c                                         ; $5783: $0c
    ld [$0818], sp                                ; $5784: $08 $18 $08
    add sp, $00                                   ; $5787: $e8 $00
    db $10                                        ; $5789: $10
    ldh a, [rNR41]                                ; $578a: $f0 $20
    pop hl                                        ; $578c: $e1

jr_0bd_578d:
    ld b, b                                       ; $578d: $40
    jp nz, $0180                                  ; $578e: $c2 $80 $01

    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    ldh a, [rNR41]                                ; $5793: $f0 $20
    ld [hl], b                                    ; $5795: $70
    jr nz, @-$0e                                  ; $5796: $20 $f0

    jr nz, @+$40                                  ; $5798: $20 $3e

    jr z, jr_0bd_57fc                             ; $579a: $28 $60

    ldh a, [$84]                                  ; $579c: $f0 $84
    nop                                           ; $579e: $00
    jp c, $0088                                   ; $579f: $da $88 $00

    ld d, l                                       ; $57a2: $55
    ld l, b                                       ; $57a3: $68
    ld l, d                                       ; $57a4: $6a
    ld [bc], a                                    ; $57a5: $02
    inc [hl]                                      ; $57a6: $34
    add hl, hl                                    ; $57a7: $29
    ld e, $0c                                     ; $57a8: $1e $0c
    rlca                                          ; $57aa: $07
    cp l                                          ; $57ab: $bd
    ld l, [hl]                                    ; $57ac: $6e
    ld d, $00                                     ; $57ad: $16 $00
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    inc bc                                        ; $57b1: $03
    ld [bc], a                                    ; $57b2: $02
    add d                                         ; $57b3: $82
    ld bc, $0141                                  ; $57b4: $01 $41 $01
    and c                                         ; $57b7: $a1
    nop                                           ; $57b8: $00
    nop                                           ; $57b9: $00
    ld d, b                                       ; $57ba: $50
    add b                                         ; $57bb: $80
    xor b                                         ; $57bc: $a8
    ret nz                                        ; $57bd: $c0

    sub h                                         ; $57be: $94
    ld h, b                                       ; $57bf: $60
    ld l, d                                       ; $57c0: $6a
    nop                                           ; $57c1: $00
    jr nc, jr_0bd_57ec                            ; $57c2: $30 $28

    ret nz                                        ; $57c4: $c0

    call nc, $ca60                                ; $57c5: $d4 $60 $ca
    jr nc, jr_0bd_577f                            ; $57c8: $30 $b5

    nop                                           ; $57ca: $00
    sbc b                                         ; $57cb: $98
    ld e, d                                       ; $57cc: $5a
    adc h                                         ; $57cd: $8c
    ret                                           ; $57ce: $c9


    ld b, [hl]                                    ; $57cf: $46
    ld h, [hl]                                    ; $57d0: $66
    ld b, e                                       ; $57d1: $43
    ld b, e                                       ; $57d2: $43
    ld [bc], a                                    ; $57d3: $02
    ld hl, $2010                                  ; $57d4: $21 $10 $20
    jr nc, jr_0bd_57e9                            ; $57d7: $30 $10

    jr jr_0bd_57dd                                ; $57d9: $18 $02

    nop                                           ; $57db: $00

jr_0bd_57dc:
    db $10                                        ; $57dc: $10

jr_0bd_57dd:
    ld bc, $0c08                                  ; $57dd: $01 $08 $0c
    ld [$088c], sp                                ; $57e0: $08 $8c $08
    ld c, h                                       ; $57e3: $4c
    add h                                         ; $57e4: $84
    ldh a, [$2e]                                  ; $57e5: $f0 $2e
    db $10                                        ; $57e7: $10
    ld d, b                                       ; $57e8: $50

jr_0bd_57e9:
    nop                                           ; $57e9: $00
    and c                                         ; $57ea: $a1
    cp d                                          ; $57eb: $ba

jr_0bd_57ec:
    dec h                                         ; $57ec: $25
    xor d                                         ; $57ed: $aa
    nop                                           ; $57ee: $00
    ld e, a                                       ; $57ef: $5f
    nop                                           ; $57f0: $00
    add b                                         ; $57f1: $80
    ld [hl], b                                    ; $57f2: $70
    add hl, bc                                    ; $57f3: $09
    ld d, a                                       ; $57f4: $57
    inc b                                         ; $57f5: $04
    ld c, $08                                     ; $57f6: $0e $08
    ld hl, sp+$0c                                 ; $57f8: $f8 $0c
    ld e, a                                       ; $57fa: $5f
    nop                                           ; $57fb: $00

jr_0bd_57fc:
    add hl, hl                                    ; $57fc: $29
    push hl                                       ; $57fd: $e5
    ld b, e                                       ; $57fe: $43
    ret                                           ; $57ff: $c9


    add [hl]                                      ; $5800: $86
    ld c, $86                                     ; $5801: $0e $86
    ld e, $01                                     ; $5803: $1e $01
    add h                                         ; $5805: $84
    scf                                           ; $5806: $37
    adc h                                         ; $5807: $8c
    rst $18                                       ; $5808: $df
    adc b                                         ; $5809: $88
    ldh a, [rOBP0]                                ; $580a: $f0 $48
    ld h, c                                       ; $580c: $61
    dec l                                         ; $580d: $2d
    ld d, c                                       ; $580e: $51
    nop                                           ; $580f: $00
    inc [hl]                                      ; $5810: $34
    ld b, $ca                                     ; $5811: $06 $ca
    or h                                          ; $5813: $b4
    rlca                                          ; $5814: $07
    sub a                                         ; $5815: $97
    ld bc, $a62b                                  ; $5816: $01 $2b $a6
    dec d                                         ; $5819: $15
    add b                                         ; $581a: $80
    dec [hl]                                      ; $581b: $35
    rra                                           ; $581c: $1f
    ld d, a                                       ; $581d: $57
    nop                                           ; $581e: $00
    dec a                                         ; $581f: $3d
    rrca                                          ; $5820: $0f
    ld e, h                                       ; $5821: $5c
    ld [$00b8], sp                                ; $5822: $08 $b8 $00
    db $10                                        ; $5825: $10
    ret z                                         ; $5826: $c8

    or b                                          ; $5827: $b0
    sbc l                                         ; $5828: $9d
    ld [hl], b                                    ; $5829: $70
    ld [hl-], a                                   ; $582a: $32
    inc e                                         ; $582b: $1c
    add hl, de                                    ; $582c: $19
    nop                                           ; $582d: $00
    ld c, $dd                                     ; $582e: $0e $dd
    scf                                           ; $5830: $37
    rst $30                                       ; $5831: $f7
    ld hl, $130d                                  ; $5832: $21 $0d $13
    dec de                                        ; $5835: $1b
    nop                                           ; $5836: $00
    ld c, $0e                                     ; $5837: $0e $0e
    inc c                                         ; $5839: $0c
    ld d, h                                       ; $583a: $54
    ld [$18a7], sp                                ; $583b: $08 $a7 $18
    ld e, l                                       ; $583e: $5d
    inc de                                        ; $583f: $13
    or [hl]                                       ; $5840: $b6
    ld [hl], e                                    ; $5841: $73
    pop hl                                        ; $5842: $e1
    or c                                          ; $5843: $b1
    ld [hl], $00                                  ; $5844: $36 $00
    or h                                          ; $5846: $b4
    ld a, [hl-]                                   ; $5847: $3a
    rla                                           ; $5848: $17
    ld [hl], b                                    ; $5849: $70
    rlca                                          ; $584a: $07
    nop                                           ; $584b: $00
    ld bc, $0207                                  ; $584c: $01 $07 $02
    ld [$3d04], sp                                ; $584f: $08 $04 $3d
    ld [$0002], sp                                ; $5852: $08 $02 $00
    ld [$0801], sp                                ; $5855: $08 $01 $08
    inc b                                         ; $5858: $04

jr_0bd_5859:
    ld [$3844], sp                                ; $5859: $08 $44 $38
    ldh [$80], a                                  ; $585c: $e0 $80

jr_0bd_585e:
    call nc, $8026                                ; $585e: $d4 $26 $80
    nop                                           ; $5861: $00
    ld b, d                                       ; $5862: $42
    nop                                           ; $5863: $00
    and l                                         ; $5864: $a5
    nop                                           ; $5865: $00
    inc bc                                        ; $5866: $03
    add b                                         ; $5867: $80
    sub b                                         ; $5868: $90
    dec b                                         ; $5869: $05
    dec bc                                        ; $586a: $0b
    nop                                           ; $586b: $00
    ld d, $01                                     ; $586c: $16 $01
    dec l                                         ; $586e: $2d
    ld [bc], a                                    ; $586f: $02

jr_0bd_5870:
    ld e, d                                       ; $5870: $5a
    nop                                           ; $5871: $00
    dec b                                         ; $5872: $05
    cp h                                          ; $5873: $bc
    inc bc                                        ; $5874: $03
    ld hl, sp+$07                                 ; $5875: $f8 $07
    jr nz, jr_0bd_5859                            ; $5877: $20 $e0

    add b                                         ; $5879: $80
    nop                                           ; $587a: $00
    ld h, b                                       ; $587b: $60
    jr nz, jr_0bd_585e                            ; $587c: $20 $e0

    ld [hl], l                                    ; $587e: $75
    ret nz                                        ; $587f: $c0

    ld h, b                                       ; $5880: $60
    ret nz                                        ; $5881: $c0

    ld a, d                                       ; $5882: $7a
    adc h                                         ; $5883: $8c
    rst $38                                       ; $5884: $ff
    ld b, $00                                     ; $5885: $06 $00
    add b                                         ; $5887: $80
    ld d, l                                       ; $5888: $55
    and [hl]                                      ; $5889: $a6
    dec d                                         ; $588a: $15
    inc sp                                        ; $588b: $33
    ccf                                           ; $588c: $3f
    ld [hl], l                                    ; $588d: $75
    jr jr_0bd_5890                                ; $588e: $18 $00

jr_0bd_5890:
    or [hl]                                       ; $5890: $b6
    jr jr_0bd_58a6                                ; $5891: $18 $13

    inc c                                         ; $5893: $0c
    inc c                                         ; $5894: $0c
    ld b, $13                                     ; $5895: $06 $13
    inc b                                         ; $5897: $04
    ld b, d                                       ; $5898: $42
    rlca                                          ; $5899: $07
    cp $07                                        ; $589a: $fe $07
    xor [hl]                                      ; $589c: $ae
    ld bc, $2061                                  ; $589d: $01 $61 $20
    ld bc, $bb08                                  ; $58a0: $01 $08 $bb
    nop                                           ; $58a3: $00
    jr nz, @+$32                                  ; $58a4: $20 $30

jr_0bd_58a6:
    jr nz, @-$59                                  ; $58a6: $20 $a5

    db $10                                        ; $58a8: $10
    ld a, [$1010]                                 ; $58a9: $fa $10 $10
    nop                                           ; $58ac: $00
    sub b                                         ; $58ad: $90
    adc e                                         ; $58ae: $8b
    call nz, $84e4                                ; $58af: $c4 $e4 $84
    and h                                         ; $58b2: $a4
    ld b, h                                       ; $58b3: $44
    call nz, Call_0bd_6400                        ; $58b4: $c4 $00 $64
    ld [hl], h                                    ; $58b7: $74
    ld b, h                                       ; $58b8: $44
    ld [hl], b                                    ; $58b9: $70
    inc h                                         ; $58ba: $24
    add [hl]                                      ; $58bb: $86
    inc [hl]                                      ; $58bc: $34
    inc [hl]                                      ; $58bd: $34
    ld b, b                                       ; $58be: $40
    inc h                                         ; $58bf: $24
    add sp, $2d                                   ; $58c0: $e8 $2d
    ld b, $01                                     ; $58c2: $06 $01
    cp a                                          ; $58c4: $bf
    ld [bc], a                                    ; $58c5: $02
    dec b                                         ; $58c6: $05
    ld b, $00                                     ; $58c7: $06 $00
    inc c                                         ; $58c9: $0c
    ld b, $38                                     ; $58ca: $06 $38
    db $10                                        ; $58cc: $10
    ld [hl], b                                    ; $58cd: $70
    jr nz, jr_0bd_5870                            ; $58ce: $20 $a0

    ld h, b                                       ; $58d0: $60
    nop                                           ; $58d1: $00
    pop hl                                        ; $58d2: $e1
    and b                                         ; $58d3: $a0
    jp nz, $a520                                  ; $58d4: $c2 $20 $a5

jr_0bd_58d7:
    jr nz, jr_0bd_5904                            ; $58d7: $20 $2b

    stop                                          ; $58d9: $10 $00
    ld e, $01                                     ; $58db: $1e $01
    ld h, b                                       ; $58dd: $60
    jr c, jr_0bd_5938                             ; $58de: $38 $58

    jr nc, jr_0bd_58d7                            ; $58e0: $30 $f5

    jr nc, jr_0bd_58eb                            ; $58e2: $30 $07

    cp d                                          ; $58e4: $ba
    ld h, b                                       ; $58e5: $60
    ldh [$60], a                                  ; $58e6: $e0 $60
    jr nz, jr_0bd_5958                            ; $58e8: $20 $6e

    rlca                                          ; $58ea: $07

jr_0bd_58eb:
    or c                                          ; $58eb: $b1
    rlca                                          ; $58ec: $07
    db $ec                                        ; $58ed: $ec
    dec [hl]                                      ; $58ee: $35
    or b                                          ; $58ef: $b0
    jr c, jr_0bd_592c                             ; $58f0: $38 $3a

    dec de                                        ; $58f2: $1b
    inc l                                         ; $58f3: $2c
    ld d, $38                                     ; $58f4: $16 $38
    rra                                           ; $58f6: $1f
    and d                                         ; $58f7: $a2
    ld b, h                                       ; $58f8: $44
    call nz, $0088                                ; $58f9: $c4 $88 $00
    ret c                                         ; $58fc: $d8

    adc b                                         ; $58fd: $88
    ld l, b                                       ; $58fe: $68
    adc b                                         ; $58ff: $88
    db $fd                                        ; $5900: $fd
    ld c, b                                       ; $5901: $48
    ld h, d                                       ; $5902: $62
    inc a                                         ; $5903: $3c

jr_0bd_5904:
    nop                                           ; $5904: $00
    ld h, $1f                                     ; $5905: $26 $1f
    rlca                                          ; $5907: $07
    inc bc                                        ; $5908: $03
    jr c, jr_0bd_591b                             ; $5909: $38 $10

    dec e                                         ; $590b: $1d
    ld [$0600], sp                                ; $590c: $08 $00 $06
    ld [$040d], sp                                ; $590f: $08 $0d $04
    ld e, [hl]                                    ; $5912: $5e
    dec b                                         ; $5913: $05
    or l                                          ; $5914: $b5
    ld c, $00                                     ; $5915: $0e $00
    xor d                                         ; $5917: $aa
    ld e, h                                       ; $5918: $5c
    ldh a, [$e0]                                  ; $5919: $f0 $e0

jr_0bd_591b:
    nop                                           ; $591b: $00
    add b                                         ; $591c: $80
    add b                                         ; $591d: $80
    add b                                         ; $591e: $80
    ld l, b                                       ; $591f: $68
    ld [$0738], a                                 ; $5920: $ea $38 $07
    ld [hl], h                                    ; $5923: $74
    dec l                                         ; $5924: $2d
    cp l                                          ; $5925: $bd
    xor b                                         ; $5926: $a8
    ld [de], a                                    ; $5927: $12
    dec b                                         ; $5928: $05
    ld [bc], a                                    ; $5929: $02
    ld [bc], a                                    ; $592a: $02
    push bc                                       ; $592b: $c5

jr_0bd_592c:
    jr nz, jr_0bd_5934                            ; $592c: $20 $06

    ld sp, hl                                     ; $592e: $f9
    rrca                                          ; $592f: $0f
    ld d, e                                       ; $5930: $53
    nop                                           ; $5931: $00
    and a                                         ; $5932: $a7
    add b                                         ; $5933: $80

jr_0bd_5934:
    dec b                                         ; $5934: $05
    dec bc                                        ; $5935: $0b
    ld d, b                                       ; $5936: $50
    dec b                                         ; $5937: $05

jr_0bd_5938:
    nop                                           ; $5938: $00
    push hl                                       ; $5939: $e5
    add b                                         ; $593a: $80
    rst $18                                       ; $593b: $df
    ld h, b                                       ; $593c: $60
    dec l                                         ; $593d: $2d
    rra                                           ; $593e: $1f
    push af                                       ; $593f: $f5
    dec bc                                        ; $5940: $0b
    db $10                                        ; $5941: $10
    db $eb                                        ; $5942: $eb
    ld d, $53                                     ; $5943: $16 $53
    ld b, h                                       ; $5945: $44
    inc b                                         ; $5946: $04
    ret c                                         ; $5947: $d8

    jr nc, jr_0bd_59a9                            ; $5948: $30 $5f

    jr nz, jr_0bd_59c2                            ; $594a: $20 $76

    ldh [$f1], a                                  ; $594c: $e0 $f1
    ld [$07bc], sp                                ; $594e: $08 $bc $07
    ld b, h                                       ; $5951: $44
    ld e, $59                                     ; $5952: $1e $59
    or b                                          ; $5954: $b0
    ld [hl-], a                                   ; $5955: $32
    adc $4f                                       ; $5956: $ce $4f

jr_0bd_5958:
    ret nz                                        ; $5958: $c0

    nop                                           ; $5959: $00
    sub b                                         ; $595a: $90
    sbc $90                                       ; $595b: $de $90
    ld l, b                                       ; $595d: $68
    sub b                                         ; $595e: $90
    add c                                         ; $595f: $81
    ld d, b                                       ; $5960: $50
    ld [hl], b                                    ; $5961: $70
    add b                                         ; $5962: $80
    ld [bc], a                                    ; $5963: $02
    nop                                           ; $5964: $00
    ld b, b                                       ; $5965: $40
    jr nc, jr_0bd_5998                            ; $5966: $30 $30

    jr nz, jr_0bd_598a                            ; $5968: $20 $20

    inc d                                         ; $596a: $14
    inc e                                         ; $596b: $1c
    adc b                                         ; $596c: $88
    ld [bc], a                                    ; $596d: $02
    nop                                           ; $596e: $00
    ld [hl], b                                    ; $596f: $70
    inc e                                         ; $5970: $1c
    inc d                                         ; $5971: $14
    ld de, $0c03                                  ; $5972: $11 $03 $0c
    ld [$0008], sp                                ; $5975: $08 $08 $00
    nop                                           ; $5978: $00
    ld b, $0a                                     ; $5979: $06 $0a
    inc e                                         ; $597b: $1c
    ld a, [bc]                                    ; $597c: $0a
    ld e, $08                                     ; $597d: $1e $08
    dec e                                         ; $597f: $1d
    ld [bc], a                                    ; $5980: $02
    ld [$0c0a], sp                                ; $5981: $08 $0a $0c
    dec c                                         ; $5984: $0d
    ld b, $07                                     ; $5985: $06 $07
    ld l, c                                       ; $5987: $69
    dec b                                         ; $5988: $05
    rla                                           ; $5989: $17

jr_0bd_598a:
    nop                                           ; $598a: $00
    add hl, bc                                    ; $598b: $09
    dec hl                                        ; $598c: $2b
    rlca                                          ; $598d: $07
    add hl, de                                    ; $598e: $19
    rlca                                          ; $598f: $07
    dec [hl]                                      ; $5990: $35
    ld a, [bc]                                    ; $5991: $0a
    xor e                                         ; $5992: $ab
    ld bc, $5756                                  ; $5993: $01 $56 $57
    db $ec                                        ; $5996: $ec
    xor h                                         ; $5997: $ac

jr_0bd_5998:
    ld hl, sp-$18                                 ; $5998: $f8 $e8
    ldh a, [$0e]                                  ; $599a: $f0 $0e
    ld e, $16                                     ; $599c: $1e $16
    sub b                                         ; $599e: $90
    nop                                           ; $599f: $00
    db $ed                                        ; $59a0: $ed

jr_0bd_59a1:
    jr jr_0bd_59c6                                ; $59a1: $18 $23

    sub l                                         ; $59a3: $95
    jp c, Jump_000_2627                           ; $59a4: $da $27 $26

    ld a, [de]                                    ; $59a7: $1a
    nop                                           ; $59a8: $00

jr_0bd_59a9:
    inc b                                         ; $59a9: $04
    nop                                           ; $59aa: $00
    xor $03                                       ; $59ab: $ee $03
    ld [bc], a                                    ; $59ad: $02
    inc bc                                        ; $59ae: $03
    ld h, l                                       ; $59af: $65
    ld [bc], a                                    ; $59b0: $02
    ld bc, $805f                                  ; $59b1: $01 $5f $80
    or $21                                        ; $59b4: $f6 $21
    sbc d                                         ; $59b6: $9a
    ld h, b                                       ; $59b7: $60
    ld [hl], b                                    ; $59b8: $70
    and b                                         ; $59b9: $a0
    cp l                                          ; $59ba: $bd
    ld h, b                                       ; $59bb: $60
    ld h, b                                       ; $59bc: $60
    inc bc                                        ; $59bd: $03
    and b                                         ; $59be: $a0
    jr nc, jr_0bd_59a1                            ; $59bf: $30 $e0

    ld b, l                                       ; $59c1: $45

jr_0bd_59c2:
    or b                                          ; $59c2: $b0
    db $10                                        ; $59c3: $10
    ld b, b                                       ; $59c4: $40
    rlca                                          ; $59c5: $07

jr_0bd_59c6:
    sub $0f                                       ; $59c6: $d6 $0f
    and b                                         ; $59c8: $a0
    ret nc                                        ; $59c9: $d0

    rra                                           ; $59ca: $1f
    inc e                                         ; $59cb: $1c
    sub $1f                                       ; $59cc: $d6 $1f
    rrca                                          ; $59ce: $0f
    rrca                                          ; $59cf: $0f
    jr nc, @+$39                                  ; $59d0: $30 $37

    ld c, a                                       ; $59d2: $4f
    nop                                           ; $59d3: $00
    ld c, a                                       ; $59d4: $4f
    cp a                                          ; $59d5: $bf
    xor b                                         ; $59d6: $a8
    rst $10                                       ; $59d7: $d7
    ld h, a                                       ; $59d8: $67
    ld a, b                                       ; $59d9: $78
    ccf                                           ; $59da: $3f
    ccf                                           ; $59db: $3f
    jr nz, jr_0bd_5a4e                            ; $59dc: $20 $70

    ld a, a                                       ; $59de: $7f
    sub c                                         ; $59df: $91
    inc b                                         ; $59e0: $04
    inc c                                         ; $59e1: $0c
    db $e4                                        ; $59e2: $e4
    ld a, [$fdf2]                                 ; $59e3: $fa $f2 $fd
    nop                                           ; $59e6: $00
    dec e                                         ; $59e7: $1d
    rst $28                                       ; $59e8: $ef
    and $1e                                       ; $59e9: $e6 $1e
    db $fc                                        ; $59eb: $fc
    db $fc                                        ; $59ec: $fc
    ld c, $fe                                     ; $59ed: $0e $fe
    nop                                           ; $59ef: $00
    rlca                                          ; $59f0: $07
    rlca                                          ; $59f1: $07
    rra                                           ; $59f2: $1f
    rra                                           ; $59f3: $1f
    cpl                                           ; $59f4: $2f
    ccf                                           ; $59f5: $3f
    ld e, a                                       ; $59f6: $5f
    ld a, a                                       ; $59f7: $7f
    nop                                           ; $59f8: $00
    ld e, e                                       ; $59f9: $5b
    ld h, a                                       ; $59fa: $67
    inc sp                                        ; $59fb: $33
    inc a                                         ; $59fc: $3c
    ccf                                           ; $59fd: $3f
    ccf                                           ; $59fe: $3f
    ld h, c                                       ; $59ff: $61
    ld a, a                                       ; $5a00: $7f
    nop                                           ; $5a01: $00
    ldh [$e0], a                                  ; $5a02: $e0 $e0
    ld hl, sp-$08                                 ; $5a04: $f8 $f8
    db $fc                                        ; $5a06: $fc

Jump_0bd_5a07:
    db $fc                                        ; $5a07: $fc
    ld a, [$08fe]                                 ; $5a08: $fa $fe $08
    ld a, [c]                                     ; $5a0b: $f2
    cp $ac                                        ; $5a0c: $fe $ac
    ld e, h                                       ; $5a0e: $5c
    ld [$0008], sp                                ; $5a0f: $08 $08 $00
    rrca                                          ; $5a12: $0f
    rlca                                          ; $5a13: $07
    nop                                           ; $5a14: $00
    jr c, jr_0bd_5a4c                             ; $5a15: $38 $35

    ld c, a                                       ; $5a17: $4f
    ld e, a                                       ; $5a18: $5f
    cp a                                          ; $5a19: $bf
    xor a                                         ; $5a1a: $af
    rst $18                                       ; $5a1b: $df
    ld c, a                                       ; $5a1c: $4f
    nop                                           ; $5a1d: $00
    ld [hl], b                                    ; $5a1e: $70
    dec [hl]                                      ; $5a1f: $35
    ccf                                           ; $5a20: $3f
    ccf                                           ; $5a21: $3f
    ccf                                           ; $5a22: $3f
    nop                                           ; $5a23: $00
    ldh a, [$e0]                                  ; $5a24: $f0 $e0
    nop                                           ; $5a26: $00
    inc e                                         ; $5a27: $1c
    ld c, h                                       ; $5a28: $4c
    ld a, [c]                                     ; $5a29: $f2
    ld a, [$f5fd]                                 ; $5a2a: $fa $fd $f5
    ei                                            ; $5a2d: $fb
    ld a, [c]                                     ; $5a2e: $f2
    nop                                           ; $5a2f: $00
    ld c, $54                                     ; $5a30: $0e $54
    db $fc                                        ; $5a32: $fc
    db $fc                                        ; $5a33: $fc
    db $fc                                        ; $5a34: $fc
    push bc                                       ; $5a35: $c5
    ld a, [$00ab]                                 ; $5a36: $fa $ab $00
    db $f4                                        ; $5a39: $f4
    rst $10                                       ; $5a3a: $d7
    add sp, -$31                                  ; $5a3b: $e8 $cf
    ldh a, [$d7]                                  ; $5a3d: $f0 $d7
    add sp, $63                                   ; $5a3f: $e8 $63
    nop                                           ; $5a41: $00
    ld a, h                                       ; $5a42: $7c
    jr c, jr_0bd_5a84                             ; $5a43: $38 $3f

    rra                                           ; $5a45: $1f
    rra                                           ; $5a46: $1f
    db $e3                                        ; $5a47: $e3
    ld a, a                                       ; $5a48: $7f
    or l                                          ; $5a49: $b5
    nop                                           ; $5a4a: $00
    ld a, a                                       ; $5a4b: $7f

jr_0bd_5a4c:
    ei                                            ; $5a4c: $fb
    scf                                           ; $5a4d: $37

jr_0bd_5a4e:
    and e                                         ; $5a4e: $a3
    ld a, a                                       ; $5a4f: $7f
    swap a                                        ; $5a50: $cb $37
    and [hl]                                      ; $5a52: $a6
    nop                                           ; $5a53: $00
    ld a, [hl]                                    ; $5a54: $7e
    inc e                                         ; $5a55: $1c
    db $fc                                        ; $5a56: $fc
    ld hl, sp-$08                                 ; $5a57: $f8 $f8
    jp c, $b5e7                                   ; $5a59: $da $e7 $b5

    nop                                           ; $5a5c: $00
    res 3, b                                      ; $5a5d: $cb $98
    rst $20                                       ; $5a5f: $e7
    and c                                         ; $5a60: $a1
    rst $18                                       ; $5a61: $df
    or b                                          ; $5a62: $b0
    rst $08                                       ; $5a63: $cf
    ld d, c                                       ; $5a64: $51
    nop                                           ; $5a65: $00
    ld l, a                                       ; $5a66: $6f
    jr nc, jr_0bd_5aa8                            ; $5a67: $30 $3f

    rrca                                          ; $5a69: $0f
    rrca                                          ; $5a6a: $0f
    db $fd                                        ; $5a6b: $fd
    rst $38                                       ; $5a6c: $ff
    ld a, e                                       ; $5a6d: $7b
    ld [$bdff], sp                                ; $5a6e: $08 $ff $bd
    rst $38                                       ; $5a71: $ff
    ld a, a                                       ; $5a72: $7f
    inc b                                         ; $5a73: $04
    nop                                           ; $5a74: $00
    ld a, [hl]                                    ; $5a75: $7e
    cp $bc                                        ; $5a76: $fe $bc
    nop                                           ; $5a78: $00
    db $fc                                        ; $5a79: $fc
    ldh a, [$f0]                                  ; $5a7a: $f0 $f0
    ld c, d                                       ; $5a7c: $4a
    ld [hl], l                                    ; $5a7d: $75
    sbc a                                         ; $5a7e: $9f
    ldh [$bf], a                                  ; $5a7f: $e0 $bf
    nop                                           ; $5a81: $00
    ret nz                                        ; $5a82: $c0

    cp [hl]                                       ; $5a83: $be

jr_0bd_5a84:
    pop bc                                        ; $5a84: $c1
    push de                                       ; $5a85: $d5
    ld [$f7a8], a                                 ; $5a86: $ea $a8 $f7
    ld d, h                                       ; $5a89: $54
    nop                                           ; $5a8a: $00
    ld a, a                                       ; $5a8b: $7f
    ccf                                           ; $5a8c: $3f
    ccf                                           ; $5a8d: $3f
    adc [hl]                                      ; $5a8e: $8e
    ld a, [hl]                                    ; $5a8f: $7e
    add a                                         ; $5a90: $87
    ld a, a                                       ; $5a91: $7f
    ld c, e                                       ; $5a92: $4b
    nop                                           ; $5a93: $00
    cp a                                          ; $5a94: $bf
    and a                                         ; $5a95: $a7
    ld e, a                                       ; $5a96: $5f
    dec bc                                        ; $5a97: $0b
    rst $38                                       ; $5a98: $ff
    rla                                           ; $5a99: $17
    rst $38                                       ; $5a9a: $ff
    xor [hl]                                      ; $5a9b: $ae
    db $10                                        ; $5a9c: $10
    cp $fc                                        ; $5a9d: $fe $fc
    db $fc                                        ; $5a9f: $fc
    ldh [rIF], a                                  ; $5aa0: $e0 $0f
    inc c                                         ; $5aa2: $0c
    nop                                           ; $5aa3: $00
    rlca                                          ; $5aa4: $07
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    inc b                                         ; $5aa7: $04

jr_0bd_5aa8:
    nop                                           ; $5aa8: $00
    rlca                                          ; $5aa9: $07
    inc bc                                        ; $5aaa: $03
    dec b                                         ; $5aab: $05
    inc bc                                        ; $5aac: $03
    inc b                                         ; $5aad: $04
    inc bc                                        ; $5aae: $03
    adc [hl]                                      ; $5aaf: $8e
    ldh a, [rIF]                                  ; $5ab0: $f0 $0f
    ld h, b                                       ; $5ab2: $60
    nop                                           ; $5ab3: $00
    ret nz                                        ; $5ab4: $c0

    db $f4                                        ; $5ab5: $f4
    rlca                                          ; $5ab6: $07
    rrca                                          ; $5ab7: $0f
    ld [bc], a                                    ; $5ab8: $02
    or e                                          ; $5ab9: $b3
    inc c                                         ; $5aba: $0c
    nop                                           ; $5abb: $00
    adc e                                         ; $5abc: $8b
    db $f4                                        ; $5abd: $f4
    inc b                                         ; $5abe: $04
    inc b                                         ; $5abf: $04
    nop                                           ; $5ac0: $00
    ld de, $07fd                                  ; $5ac1: $11 $fd $07
    ld de, $0025                                  ; $5ac4: $11 $25 $00
    sbc $17                                       ; $5ac7: $de $17
    nop                                           ; $5ac9: $00
    add $00                                       ; $5aca: $c6 $00
    ld a, h                                       ; $5acc: $7c
    nop                                           ; $5acd: $00
    ld a, h                                       ; $5ace: $7c
    jr c, jr_0bd_5b3d                             ; $5acf: $38 $6c

    jr c, jr_0bd_5ad4                             ; $5ad1: $38 $01

    ld c, h                                       ; $5ad3: $4c

jr_0bd_5ad4:
    jr c, jr_0bd_5b1a                             ; $5ad4: $38 $44

    jr c, jr_0bd_5afb                             ; $5ad6: $38 $23

    nop                                           ; $5ad8: $00
    ld h, l                                       ; $5ad9: $65
    ld d, d                                       ; $5ada: $52
    inc bc                                        ; $5adb: $03
    ld b, d                                       ; $5adc: $42
    sub d                                         ; $5add: $92
    ld [bc], a                                    ; $5ade: $02
    db $10                                        ; $5adf: $10
    ld c, d                                       ; $5ae0: $4a
    nop                                           ; $5ae1: $00
    ccf                                           ; $5ae2: $3f
    add hl, bc                                    ; $5ae3: $09
    rst $38                                       ; $5ae4: $ff
    rrca                                          ; $5ae5: $0f
    ld l, h                                       ; $5ae6: $6c
    add h                                         ; $5ae7: $84
    ld e, d                                       ; $5ae8: $5a
    inc b                                         ; $5ae9: $04
    jr z, jr_0bd_5aec                             ; $5aea: $28 $00

jr_0bd_5aec:
    jr c, jr_0bd_5afe                             ; $5aec: $38 $10

    ld [bc], a                                    ; $5aee: $02
    ld [$0000], sp                                ; $5aef: $08 $00 $00
    nop                                           ; $5af2: $00
    ld c, b                                       ; $5af3: $48
    ld [$0808], sp                                ; $5af4: $08 $08 $08
    cp b                                          ; $5af7: $b8
    jr jr_0bd_5b0b                                ; $5af8: $18 $11

    db $10                                        ; $5afa: $10

jr_0bd_5afb:
    inc bc                                        ; $5afb: $03
    ld d, b                                       ; $5afc: $50
    db $10                                        ; $5afd: $10

jr_0bd_5afe:
    jr nc, jr_0bd_5b30                            ; $5afe: $30 $30

    inc [hl]                                      ; $5b00: $34
    jr nc, jr_0bd_5b52                            ; $5b01: $30 $4f

    ld [$3d44], sp                                ; $5b03: $08 $44 $3d
    nop                                           ; $5b06: $00
    inc e                                         ; $5b07: $1c
    nop                                           ; $5b08: $00
    jr nz, jr_0bd_5b2b                            ; $5b09: $20 $20

jr_0bd_5b0b:
    inc h                                         ; $5b0b: $24
    jr nz, jr_0bd_5b3f                            ; $5b0c: $20 $31

    inc h                                         ; $5b0e: $24
    nop                                           ; $5b0f: $00
    jr nc, jr_0bd_5b50                            ; $5b10: $30 $3e

    ld de, $1444                                  ; $5b12: $11 $44 $14
    db $10                                        ; $5b15: $10
    jr jr_0bd_5b30                                ; $5b16: $18 $18

    ld b, $58                                     ; $5b18: $06 $58

jr_0bd_5b1a:
    jr jr_0bd_5b1c                                ; $5b1a: $18 $00

jr_0bd_5b1c:
    nop                                           ; $5b1c: $00
    jp $0318                                      ; $5b1d: $c3 $18 $03


    ld [bc], a                                    ; $5b20: $02
    ld [$046a], sp                                ; $5b21: $08 $6a $04
    inc d                                         ; $5b24: $14
    ld d, [hl]                                    ; $5b25: $56
    jr z, jr_0bd_5b92                             ; $5b26: $28 $6a

    inc d                                         ; $5b28: $14
    db $f4                                        ; $5b29: $f4
    inc de                                        ; $5b2a: $13

jr_0bd_5b2b:
    nop                                           ; $5b2b: $00
    ld e, $00                                     ; $5b2c: $1e $00
    ld e, $fb                                     ; $5b2e: $1e $fb

jr_0bd_5b30:
    dec b                                         ; $5b30: $05
    db $10                                        ; $5b31: $10
    rra                                           ; $5b32: $1f
    jr jr_0bd_5b54                                ; $5b33: $18 $1f

    ld de, $1f50                                  ; $5b35: $11 $50 $1f
    rrc a                                         ; $5b38: $cb $0f
    and b                                         ; $5b3a: $a0
    ret nc                                        ; $5b3b: $d0

    rla                                           ; $5b3c: $17

jr_0bd_5b3d:
    cp $fe                                        ; $5b3d: $fe $fe

jr_0bd_5b3f:
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    and e                                         ; $5b41: $a3
    reti                                          ; $5b42: $d9


    rrca                                          ; $5b43: $0f
    ld a, [de]                                    ; $5b44: $1a
    sbc $07                                       ; $5b45: $de $07
    rst $20                                       ; $5b47: $e7
    nop                                           ; $5b48: $00
    ld b, $e4                                     ; $5b49: $06 $e4
    rlca                                          ; $5b4b: $07
    ld e, [hl]                                    ; $5b4c: $5e
    dec e                                         ; $5b4d: $1d
    ld b, l                                       ; $5b4e: $45
    ld a, b                                       ; $5b4f: $78

jr_0bd_5b50:
    ld [bc], a                                    ; $5b50: $02
    nop                                           ; $5b51: $00

jr_0bd_5b52:
    ldh [rP1], a                                  ; $5b52: $e0 $00

jr_0bd_5b54:
    ld a, a                                       ; $5b54: $7f
    db $f4                                        ; $5b55: $f4
    rlca                                          ; $5b56: $07
    ld [hl], b                                    ; $5b57: $70
    adc [hl]                                      ; $5b58: $8e
    dec b                                         ; $5b59: $05
    ld b, a                                       ; $5b5a: $47
    inc b                                         ; $5b5b: $04
    call nc, Call_000_0400                        ; $5b5c: $d4 $00 $04
    inc bc                                        ; $5b5f: $03
    ld b, $02                                     ; $5b60: $06 $02
    nop                                           ; $5b62: $00
    or l                                          ; $5b63: $b5
    ld b, $40                                     ; $5b64: $06 $40
    ld a, [bc]                                    ; $5b66: $0a
    xor d                                         ; $5b67: $aa
    sub $10                                       ; $5b68: $d6 $10
    ld b, b                                       ; $5b6a: $40
    ld [bc], a                                    ; $5b6b: $02
    nop                                           ; $5b6c: $00
    ret nz                                        ; $5b6d: $c0

    and h                                         ; $5b6e: $a4
    ld a, [de]                                    ; $5b6f: $1a
    add b                                         ; $5b70: $80
    call c, Call_000_1000                         ; $5b71: $dc $00 $10
    or c                                          ; $5b74: $b1
    or e                                          ; $5b75: $b3
    nop                                           ; $5b76: $00
    db $10                                        ; $5b77: $10
    ld b, $00                                     ; $5b78: $06 $00
    sub c                                         ; $5b7a: $91
    ld b, $4c                                     ; $5b7b: $06 $4c
    jr c, jr_0bd_5be3                             ; $5b7d: $38 $64

    sub $00                                       ; $5b7f: $d6 $00
    ld b, h                                       ; $5b81: $44
    ld h, h                                       ; $5b82: $64
    sbc $00                                       ; $5b83: $de $00
    ld a, h                                       ; $5b85: $7c
    jr c, jr_0bd_5bc0                             ; $5b86: $38 $38

    db $fc                                        ; $5b88: $fc
    rlca                                          ; $5b89: $07
    ld [de], a                                    ; $5b8a: $12
    dec e                                         ; $5b8b: $1d
    nop                                           ; $5b8c: $00
    rra                                           ; $5b8d: $1f
    inc e                                         ; $5b8e: $1c
    ccf                                           ; $5b8f: $3f
    add hl, hl                                    ; $5b90: $29
    ld a, l                                       ; $5b91: $7d

jr_0bd_5b92:
    ld [hl], e                                    ; $5b92: $73
    cp e                                          ; $5b93: $bb
    add $00                                       ; $5b94: $c6 $00
    or l                                          ; $5b96: $b5
    call z, Call_0bd_7848                         ; $5b97: $cc $48 $78
    jr nc, jr_0bd_5bcc                            ; $5b9a: $30 $30

    db $fc                                        ; $5b9c: $fc
    cp b                                          ; $5b9d: $b8

jr_0bd_5b9e:
    nop                                           ; $5b9e: $00
    db $ec                                        ; $5b9f: $ec
    cp b                                          ; $5ba0: $b8
    add $7c                                       ; $5ba1: $c6 $7c
    add d                                         ; $5ba3: $82
    ld a, h                                       ; $5ba4: $7c
    add e                                         ; $5ba5: $83
    cp $11                                        ; $5ba6: $fe $11
    rst $10                                       ; $5ba8: $d7
    cp $fe                                        ; $5ba9: $fe $fe
    sbc $07                                       ; $5bab: $de $07
    jr nc, jr_0bd_5bdf                            ; $5bad: $30 $30

    jr jr_0bd_5bb2                                ; $5baf: $18 $01

    nop                                           ; $5bb1: $00

jr_0bd_5bb2:
    ld bc, $3038                                  ; $5bb2: $01 $38 $30
    ld [hl-], a                                   ; $5bb5: $32
    db $10                                        ; $5bb6: $10
    ld a, b                                       ; $5bb7: $78
    ld [hl], b                                    ; $5bb8: $70
    ld h, b                                       ; $5bb9: $60
    ld bc, $4200                                  ; $5bba: $01 $00 $42
    ld [$0218], sp                                ; $5bbd: $08 $18 $02

jr_0bd_5bc0:
    ld [hl+], a                                   ; $5bc0: $22
    nop                                           ; $5bc1: $00
    ld b, c                                       ; $5bc2: $41
    ld a, $02                                     ; $5bc3: $3e $02
    ld [$0022], sp                                ; $5bc5: $08 $22 $00
    inc e                                         ; $5bc8: $1c
    inc e                                         ; $5bc9: $1c
    nop                                           ; $5bca: $00
    dec c                                         ; $5bcb: $0d

jr_0bd_5bcc:
    inc c                                         ; $5bcc: $0c
    xor [hl]                                      ; $5bcd: $ae
    ld c, $06                                     ; $5bce: $0e $06
    nop                                           ; $5bd0: $00
    ld b, $43                                     ; $5bd1: $06 $43
    inc bc                                        ; $5bd3: $03
    inc bc                                        ; $5bd4: $03
    inc de                                        ; $5bd5: $13
    inc bc                                        ; $5bd6: $03
    dec sp                                        ; $5bd7: $3b
    ld bc, $1105                                  ; $5bd8: $01 $05 $11
    ld bc, $4201                                  ; $5bdb: $01 $01 $42
    inc a                                         ; $5bde: $3c

jr_0bd_5bdf:
    ld [bc], a                                    ; $5bdf: $02
    jr c, jr_0bd_5b9e                             ; $5be0: $38 $bc

    inc l                                         ; $5be2: $2c

jr_0bd_5be3:
    inc bc                                        ; $5be3: $03
    inc d                                         ; $5be4: $14
    ld e, $1e                                     ; $5be5: $1e $1e
    ld a, [hl-]                                   ; $5be7: $3a
    and b                                         ; $5be8: $a0
    ld d, l                                       ; $5be9: $55
    nop                                           ; $5bea: $00
    ld a, $00                                     ; $5beb: $3e $00
    inc d                                         ; $5bed: $14
    nop                                           ; $5bee: $00
    ld [$0814], sp                                ; $5bef: $08 $14 $08
    ld [hl+], a                                   ; $5bf2: $22
    inc e                                         ; $5bf3: $1c
    ld b, h                                       ; $5bf4: $44
    ld [$003e], sp                                ; $5bf5: $08 $3e $00
    add hl, sp                                    ; $5bf8: $39
    ld a, [bc]                                    ; $5bf9: $0a
    nop                                           ; $5bfa: $00
    inc de                                        ; $5bfb: $13
    nop                                           ; $5bfc: $00
    ld a, $6e                                     ; $5bfd: $3e $6e
    ld bc, $74d6                                  ; $5bff: $01 $d6 $74
    nop                                           ; $5c02: $00
    xor $03                                       ; $5c03: $ee $03
    ld a, h                                       ; $5c05: $7c
    ld a, h                                       ; $5c06: $7c
    nop                                           ; $5c07: $00
    add e                                         ; $5c08: $83
    nop                                           ; $5c09: $00
    rrca                                          ; $5c0a: $0f
    or b                                          ; $5c0b: $b0
    ld bc, $3e86                                  ; $5c0c: $01 $86 $3e
    sub h                                         ; $5c0f: $94
    ld l, d                                       ; $5c10: $6a
    rlca                                          ; $5c11: $07
    inc bc                                        ; $5c12: $03
    xor e                                         ; $5c13: $ab
    ld c, h                                       ; $5c14: $4c
    ld h, $48                                     ; $5c15: $26 $48
    ret z                                         ; $5c17: $c8

    ld [de], a                                    ; $5c18: $12
    ret nz                                        ; $5c19: $c0

    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    ld a, b                                       ; $5c1c: $78
    ldh [$7b], a                                  ; $5c1d: $e0 $7b
    dec e                                         ; $5c1f: $1d
    rlca                                          ; $5c20: $07
    inc bc                                        ; $5c21: $03
    add hl, bc                                    ; $5c22: $09
    rlca                                          ; $5c23: $07
    ld d, b                                       ; $5c24: $50

jr_0bd_5c25:
    ret nc                                        ; $5c25: $d0

    ld a, [hl-]                                   ; $5c26: $3a
    rla                                           ; $5c27: $17
    xor d                                         ; $5c28: $aa
    and d                                         ; $5c29: $a2
    dec b                                         ; $5c2a: $05
    ldh [$c0], a                                  ; $5c2b: $e0 $c0
    ret nc                                        ; $5c2d: $d0

    ldh [$08], a                                  ; $5c2e: $e0 $08
    add sp, -$10                                  ; $5c30: $e8 $f0
    jp c, Jump_0bd_653c                           ; $5c32: $da $3c $65

    rra                                           ; $5c35: $1f
    ldh a, [$f0]                                  ; $5c36: $f0 $f0
    sbc h                                         ; $5c38: $9c
    nop                                           ; $5c39: $00
    db $fc                                        ; $5c3a: $fc
    sub d                                         ; $5c3b: $92
    cp $a3                                        ; $5c3c: $fe $a3
    rst $38                                       ; $5c3e: $ff
    sub h                                         ; $5c3f: $94
    rst $38                                       ; $5c40: $ff
    ret z                                         ; $5c41: $c8

    add b                                         ; $5c42: $80
    ld b, d                                       ; $5c43: $42
    ld bc, $003c                                  ; $5c44: $01 $3c $00
    ld a, [hl]                                    ; $5c47: $7e
    nop                                           ; $5c48: $00
    ld l, [hl]                                    ; $5c49: $6e
    jr nc, jr_0bd_5cba                            ; $5c4a: $30 $6e

    nop                                           ; $5c4c: $00
    jr nc, jr_0bd_5ccd                            ; $5c4d: $30 $7e

    nop                                           ; $5c4f: $00
    cp $bc                                        ; $5c50: $fe $bc
    jp nz, $9980                                  ; $5c52: $c2 $80 $99

    nop                                           ; $5c55: $00
    rst $38                                       ; $5c56: $ff
    and h                                         ; $5c57: $a4
    rst $38                                       ; $5c58: $ff
    ld c, d                                       ; $5c59: $4a
    ld a, a                                       ; $5c5a: $7f
    jr nc, jr_0bd_5c9c                            ; $5c5b: $30 $3f

    ld c, $48                                     ; $5c5d: $0e $48
    rrca                                          ; $5c5f: $0f
    sub e                                         ; $5c60: $93
    rra                                           ; $5c61: $1f
    cp $bc                                        ; $5c62: $fe $bc
    ld [bc], a                                    ; $5c64: $02
    jr @+$80                                      ; $5c65: $18 $7e

    db $fc                                        ; $5c67: $fc
    cp [hl]                                       ; $5c68: $be
    nop                                           ; $5c69: $00
    db $fc                                        ; $5c6a: $fc
    ld e, [hl]                                    ; $5c6b: $5e
    ld [hl], b                                    ; $5c6c: $70
    jr nz, jr_0bd_5c8f                            ; $5c6d: $20 $20

    sub b                                         ; $5c6f: $90
    ld [bc], a                                    ; $5c70: $02
    ld h, a                                       ; $5c71: $67
    ld bc, $0020                                  ; $5c72: $01 $20 $00
    rst $38                                       ; $5c75: $ff
    ld [bc], a                                    ; $5c76: $02
    ld e, b                                       ; $5c77: $58
    add d                                         ; $5c78: $82
    db $fd                                        ; $5c79: $fd
    add [hl]                                      ; $5c7a: $86
    ld a, l                                       ; $5c7b: $7d
    xor $10                                       ; $5c7c: $ee $10
    dec sp                                        ; $5c7e: $3b
    db $fc                                        ; $5c7f: $fc
    add a                                         ; $5c80: $87
    jr jr_0bd_5cab                                ; $5c81: $18 $28

    ld c, l                                       ; $5c83: $4d
    or [hl]                                       ; $5c84: $b6
    ld [hl], c                                    ; $5c85: $71
    adc [hl]                                      ; $5c86: $8e
    ld [bc], a                                    ; $5c87: $02
    ld e, l                                       ; $5c88: $5d
    or a                                          ; $5c89: $b7
    xor $1b                                       ; $5c8a: $ee $1b
    rrca                                          ; $5c8c: $0f
    ld sp, hl                                     ; $5c8d: $f9
    ld a, [hl+]                                   ; $5c8e: $2a

jr_0bd_5c8f:
    jr jr_0bd_5c99                                ; $5c8f: $18 $08

    ld bc, $08f7                                  ; $5c91: $01 $f7 $08
    rst $30                                       ; $5c94: $f7
    adc b                                         ; $5c95: $88
    ld [hl], a                                    ; $5c96: $77

jr_0bd_5c97:
    sbc l                                         ; $5c97: $9d
    ld [hl], a                                    ; $5c98: $77

jr_0bd_5c99:
    jr c, jr_0bd_5cc3                             ; $5c99: $38 $28

    nop                                           ; $5c9b: $00

jr_0bd_5c9c:
    ld b, a                                       ; $5c9c: $47
    cp b                                          ; $5c9d: $b8
    ld b, l                                       ; $5c9e: $45
    cp e                                          ; $5c9f: $bb
    ld b, h                                       ; $5ca0: $44
    cp e                                          ; $5ca1: $bb
    rst $30                                       ; $5ca2: $f7
    jr jr_0bd_5c25                                ; $5ca3: $18 $80

    ld c, b                                       ; $5ca5: $48
    jr z, jr_0bd_5cac                             ; $5ca6: $28 $04

    ei                                            ; $5ca8: $fb
    inc b                                         ; $5ca9: $04
    ei                                            ; $5caa: $fb

jr_0bd_5cab:
    and h                                         ; $5cab: $a4

jr_0bd_5cac:
    db $db                                        ; $5cac: $db
    rst $38                                       ; $5cad: $ff

jr_0bd_5cae:
    ld b, b                                       ; $5cae: $40
    ld de, $2858                                  ; $5caf: $11 $58 $28
    ld h, $d9                                     ; $5cb2: $26 $d9
    ld h, $dd                                     ; $5cb4: $26 $dd
    inc hl                                        ; $5cb6: $23
    sbc $20                                       ; $5cb7: $de $20
    ld [hl], c                                    ; $5cb9: $71

jr_0bd_5cba:
    rst $18                                       ; $5cba: $df
    ld l, b                                       ; $5cbb: $68
    jr z, jr_0bd_5d0e                             ; $5cbc: $28 $50

    xor a                                         ; $5cbe: $af
    ld d, b                                       ; $5cbf: $50
    cp a                                          ; $5cc0: $bf
    ld b, b                                       ; $5cc1: $40
    inc d                                         ; $5cc2: $14

jr_0bd_5cc3:
    cp a                                          ; $5cc3: $bf
    ldh a, [$1f]                                  ; $5cc4: $f0 $1f
    ld a, b                                       ; $5cc6: $78
    jr z, @+$42                                   ; $5cc7: $28 $40

    ld c, $00                                     ; $5cc9: $0e $00
    ld b, b                                       ; $5ccb: $40
    cp a                                          ; $5ccc: $bf

jr_0bd_5ccd:
    ld b, b                                       ; $5ccd: $40
    pop af                                        ; $5cce: $f1
    db $10                                        ; $5ccf: $10
    jr nc, jr_0bd_5d2d                            ; $5cd0: $30 $5b

    or [hl]                                       ; $5cd2: $b6
    ld c, a                                       ; $5cd3: $4f
    cp c                                          ; $5cd4: $b9
    or $1b                                        ; $5cd5: $f6 $1b
    ld b, b                                       ; $5cd7: $40
    ld bc, $3096                                  ; $5cd8: $01 $96 $30
    inc c                                         ; $5cdb: $0c
    ei                                            ; $5cdc: $fb
    inc c                                         ; $5cdd: $0c
    rst $30                                       ; $5cde: $f7
    ld sp, hl                                     ; $5cdf: $f9
    rst $28                                       ; $5ce0: $ef
    add c                                         ; $5ce1: $81
    jr nc, jr_0bd_5d1c                            ; $5ce2: $30 $38

    ld b, $f9                                     ; $5ce4: $06 $f9
    rlca                                          ; $5ce6: $07
    db $fd                                        ; $5ce7: $fd

jr_0bd_5ce8:
    inc bc                                        ; $5ce8: $03
    cp $20                                        ; $5ce9: $fe $20
    jr c, jr_0bd_5ced                             ; $5ceb: $38 $00

jr_0bd_5ced:
    ld a, h                                       ; $5ced: $7c
    rst $10                                       ; $5cee: $d7
    ld a, h                                       ; $5cef: $7c
    add e                                         ; $5cf0: $83
    ld b, [hl]                                    ; $5cf1: $46
    cp e                                          ; $5cf2: $bb
    rst $28                                       ; $5cf3: $ef
    add hl, sp                                    ; $5cf4: $39
    add b                                         ; $5cf5: $80
    ret z                                         ; $5cf6: $c8

    jr z, jr_0bd_5c97                             ; $5cf7: $28 $9e

    ld [hl], l                                    ; $5cf9: $75
    adc [hl]                                      ; $5cfa: $8e
    ld a, c                                       ; $5cfb: $79
    add [hl]                                      ; $5cfc: $86
    ld a, l                                       ; $5cfd: $7d
    db $e3                                        ; $5cfe: $e3
    ld b, b                                       ; $5cff: $40
    ccf                                           ; $5d00: $3f

jr_0bd_5d01:
    sub b                                         ; $5d01: $90
    jr c, jr_0bd_5d10                             ; $5d02: $38 $0c

    ei                                            ; $5d04: $fb
    call c, $fb77                                 ; $5d05: $dc $77 $fb
    ld c, $80                                     ; $5d08: $0e $80

jr_0bd_5d0a:
    add sp, $28                                   ; $5d0a: $e8 $28
    inc de                                        ; $5d0c: $13
    db $ed                                        ; $5d0d: $ed

jr_0bd_5d0e:
    inc de                                        ; $5d0e: $13
    db $ec                                        ; $5d0f: $ec

jr_0bd_5d10:
    inc de                                        ; $5d10: $13
    xor $39                                       ; $5d11: $ee $39
    ld b, b                                       ; $5d13: $40
    rst $28                                       ; $5d14: $ef
    ld hl, sp+$28                                 ; $5d15: $f8 $28
    jr nc, jr_0bd_5ce8                            ; $5d17: $30 $cf

    jr nc, jr_0bd_5d0a                            ; $5d19: $30 $ef

    sbc l                                         ; $5d1b: $9d

jr_0bd_5d1c:
    halt                                          ; $5d1c: $76
    jr nz, jr_0bd_5cae                            ; $5d1d: $20 $8f

    ld a, b                                       ; $5d1f: $78
    ld [$9829], sp                                ; $5d20: $08 $29 $98
    ld h, a                                       ; $5d23: $67
    sbc b                                         ; $5d24: $98
    rst $30                                       ; $5d25: $f7
    ld c, [hl]                                    ; $5d26: $4e
    db $10                                        ; $5d27: $10
    cp e                                          ; $5d28: $bb
    rst $00                                       ; $5d29: $c7
    inc a                                         ; $5d2a: $3c
    jr jr_0bd_5d56                                ; $5d2b: $18 $29

jr_0bd_5d2d:
    ld b, e                                       ; $5d2d: $43
    cp h                                          ; $5d2e: $bc
    ld b, d                                       ; $5d2f: $42
    cp l                                          ; $5d30: $bd
    ld [$b54a], sp                                ; $5d31: $08 $4a $b5
    ei                                            ; $5d34: $fb
    inc b                                         ; $5d35: $04
    jr z, @+$2b                                   ; $5d36: $28 $29

    jr c, jr_0bd_5d01                             ; $5d38: $38 $c7

    jr z, jr_0bd_5d40                             ; $5d3a: $28 $04

    rst $18                                       ; $5d3c: $df
    inc h                                         ; $5d3d: $24
    db $db                                        ; $5d3e: $db
    inc a                                         ; $5d3f: $3c

jr_0bd_5d40:
    jp Jump_000_3020                              ; $5d40: $c3 $20 $30


    db $fd                                        ; $5d43: $fd
    ld b, e                                       ; $5d44: $43
    ld [bc], a                                    ; $5d45: $02
    cp l                                          ; $5d46: $bd
    ld h, [hl]                                    ; $5d47: $66
    sbc l                                         ; $5d48: $9d
    ld a, [hl]                                    ; $5d49: $7e
    and e                                         ; $5d4a: $a3
    ld b, b                                       ; $5d4b: $40
    ld c, b                                       ; $5d4c: $48
    ld h, c                                       ; $5d4d: $61
    nop                                           ; $5d4e: $00
    ld bc, $fcff                                  ; $5d4f: $01 $ff $fc
    add a                                         ; $5d52: $87
    adc $7b                                       ; $5d53: $ce $7b
    add [hl]                                      ; $5d55: $86

jr_0bd_5d56:
    db $fd                                        ; $5d56: $fd
    db $10                                        ; $5d57: $10
    ld b, b                                       ; $5d58: $40
    inc b                                         ; $5d59: $04
    rlca                                          ; $5d5a: $07
    ld c, l                                       ; $5d5b: $4d
    cp e                                          ; $5d5c: $bb
    ld b, l                                       ; $5d5d: $45
    cp d                                          ; $5d5e: $ba
    ld b, d                                       ; $5d5f: $42
    ld bc, $1cff                                  ; $5d60: $01 $ff $1c
    nop                                           ; $5d63: $00
    rst $30                                       ; $5d64: $f7
    cp [hl]                                       ; $5d65: $be
    pop bc                                        ; $5d66: $c1
    sbc h                                         ; $5d67: $9c
    ld [hl], a                                    ; $5d68: $77
    sbc l                                         ; $5d69: $9d
    ld l, e                                       ; $5d6a: $6b
    nop                                           ; $5d6b: $00
    ret nz                                        ; $5d6c: $c0

    ld a, [bc]                                    ; $5d6d: $0a
    nop                                           ; $5d6e: $00
    add b                                         ; $5d6f: $80
    add hl, sp                                    ; $5d70: $39
    rst $38                                       ; $5d71: $ff
    sbc b                                         ; $5d72: $98
    ld b, h                                       ; $5d73: $44
    cp e                                          ; $5d74: $bb
    push bc                                       ; $5d75: $c5
    dec sp                                        ; $5d76: $3b
    add b                                         ; $5d77: $80
    sub b                                         ; $5d78: $90
    add hl, sp                                    ; $5d79: $39
    cp $33                                        ; $5d7a: $fe $33
    inc h                                         ; $5d7c: $24
    db $db                                        ; $5d7d: $db
    rlca                                          ; $5d7e: $07
    ld hl, sp+$00                                 ; $5d7f: $f8 $00
    nop                                           ; $5d81: $00
    rst $38                                       ; $5d82: $ff
    jr nz, @+$01                                  ; $5d83: $20 $ff

    ld [hl], b                                    ; $5d85: $70
    rst $18                                       ; $5d86: $df
    ld hl, sp+$07                                 ; $5d87: $f8 $07
    ld [hl], b                                    ; $5d89: $70
    nop                                           ; $5d8a: $00
    rst $18                                       ; $5d8b: $df
    ld [hl], e                                    ; $5d8c: $73
    xor [hl]                                      ; $5d8d: $ae
    rlca                                          ; $5d8e: $07
    db $fd                                        ; $5d8f: $fd
    halt                                          ; $5d90: $76
    reti                                          ; $5d91: $d9


    nop                                           ; $5d92: $00
    nop                                           ; $5d93: $00
    rst $38                                       ; $5d94: $ff
    ld [bc], a                                    ; $5d95: $02
    rst $38                                       ; $5d96: $ff
    ld [bc], a                                    ; $5d97: $02
    db $fd                                        ; $5d98: $fd
    cp $01                                        ; $5d99: $fe $01
    ld b, d                                       ; $5d9b: $42
    ld bc, $52bd                                  ; $5d9c: $01 $bd $52
    cp a                                          ; $5d9f: $bf
    ld d, b                                       ; $5da0: $50
    xor a                                         ; $5da1: $af
    ld [hl], b                                    ; $5da2: $70
    adc a                                         ; $5da3: $8f

jr_0bd_5da4:
    ret nz                                        ; $5da4: $c0

    add hl, de                                    ; $5da5: $19
    ld [bc], a                                    ; $5da6: $02
    ld bc, $f0ff                                  ; $5da7: $01 $ff $f0
    sbc a                                         ; $5daa: $9f
    ret nz                                        ; $5dab: $c0

    ccf                                           ; $5dac: $3f
    ld [bc], a                                    ; $5dad: $02
    nop                                           ; $5dae: $00

jr_0bd_5daf:
    cp a                                          ; $5daf: $bf
    add b                                         ; $5db0: $80

jr_0bd_5db1:
    ret nc                                        ; $5db1: $d0

    add hl, sp                                    ; $5db2: $39
    ldh a, [$1f]                                  ; $5db3: $f0 $1f
    ld [hl], c                                    ; $5db5: $71
    xor a                                         ; $5db6: $af
    ld e, c                                       ; $5db7: $59
    xor [hl]                                      ; $5db8: $ae
    nop                                           ; $5db9: $00
    ld [$1fff], sp                                ; $5dba: $08 $ff $1f
    pop af                                        ; $5dbd: $f1
    adc h                                         ; $5dbe: $8c
    inc b                                         ; $5dbf: $04
    ld bc, $fb0c                                  ; $5dc0: $01 $0c $fb
    dec c                                         ; $5dc3: $0d
    jp Jump_000_1006                              ; $5dc4: $c3 $06 $10


    ldh a, [$09]                                  ; $5dc7: $f0 $09
    rra                                           ; $5dc9: $1f
    ldh a, [rTMA]                                 ; $5dca: $f0 $06
    ld sp, hl                                     ; $5dcc: $f9
    ld [bc], a                                    ; $5dcd: $02
    jr z, jr_0bd_5dd0                             ; $5dce: $28 $00

jr_0bd_5dd0:
    ld a, [hl+]                                   ; $5dd0: $2a
    nop                                           ; $5dd1: $00
    add b                                         ; $5dd2: $80
    rst $38                                       ; $5dd3: $ff
    jr c, @-$0f                                   ; $5dd4: $38 $ef

    jr c, jr_0bd_5daf                             ; $5dd6: $38 $d7

    jr z, jr_0bd_5db1                             ; $5dd8: $28 $d7

    add b                                         ; $5dda: $80
    ld c, $28                                     ; $5ddb: $0e $28
    rst $08                                       ; $5ddd: $cf
    ld a, b                                       ; $5dde: $78
    ld [c], a                                     ; $5ddf: $e2
    dec a                                         ; $5de0: $3d
    ld a, [c]                                     ; $5de1: $f2
    ld e, l                                       ; $5de2: $5d
    cp d                                          ; $5de3: $ba
    ld b, d                                       ; $5de4: $42

jr_0bd_5de5:
    ld l, l                                       ; $5de5: $6d
    jr nz, jr_0bd_5e22                            ; $5de6: $20 $3a

    ld hl, sp+$0f                                 ; $5de8: $f8 $0f
    sbc h                                         ; $5dea: $9c
    rst $30                                       ; $5deb: $f7
    ld b, b                                       ; $5dec: $40
    ld [$8010], sp                                ; $5ded: $08 $10 $80
    ld a, [hl+]                                   ; $5df0: $2a
    nop                                           ; $5df1: $00
    ld a, h                                       ; $5df2: $7c
    add e                                         ; $5df3: $83
    jr c, jr_0bd_5de5                             ; $5df4: $38 $ef

    add hl, sp                                    ; $5df6: $39
    rst $10                                       ; $5df7: $d7
    inc bc                                        ; $5df8: $03
    db $10                                        ; $5df9: $10
    cp $3b                                        ; $5dfa: $fe $3b
    db $ed                                        ; $5dfc: $ed
    ld b, b                                       ; $5dfd: $40
    ld a, [hl-]                                   ; $5dfe: $3a
    sbc a                                         ; $5dff: $9f
    pop af                                        ; $5e00: $f1
    cp c                                          ; $5e01: $b9
    ld l, [hl]                                    ; $5e02: $6e
    jr nc, jr_0bd_5e35                            ; $5e03: $30 $30

    rst $08                                       ; $5e05: $cf
    sub $21                                       ; $5e06: $d6 $21
    ret c                                         ; $5e08: $d8

    ld bc, $38cf                                  ; $5e09: $01 $cf $38
    inc e                                         ; $5e0c: $1c
    rst $30                                       ; $5e0d: $f7
    jr nz, @-$66                                  ; $5e0e: $20 $98

jr_0bd_5e10:
    rst $20                                       ; $5e10: $e7
    ld h, b                                       ; $5e11: $60
    ld a, [hl-]                                   ; $5e12: $3a
    rst $30                                       ; $5e13: $f7
    inc e                                         ; $5e14: $1c
    ld b, d                                       ; $5e15: $42
    cp l                                          ; $5e16: $bd
    ld b, d                                       ; $5e17: $42
    ld h, b                                       ; $5e18: $60
    cp l                                          ; $5e19: $bd
    ld h, $22                                     ; $5e1a: $26 $22
    jr z, @+$04                                   ; $5e1c: $28 $02

    ld a, l                                       ; $5e1e: $7d
    jp $df20                                      ; $5e1f: $c3 $20 $df


jr_0bd_5e22:
    jr z, jr_0bd_5da4                             ; $5e22: $28 $80

    jr jr_0bd_5e28                                ; $5e24: $18 $02

    ld [bc], a                                    ; $5e26: $02
    rst $38                                       ; $5e27: $ff

jr_0bd_5e28:
    ld e, $f1                                     ; $5e28: $1e $f1
    ld [hl-], a                                   ; $5e2a: $32
    db $ed                                        ; $5e2b: $ed
    ld [hl+], a                                   ; $5e2c: $22
    nop                                           ; $5e2d: $00
    rst $18                                       ; $5e2e: $df
    jr nc, jr_0bd_5e10                            ; $5e2f: $30 $df

jr_0bd_5e31:
    ld a, $e3                                     ; $5e31: $3e $e3
    ld c, $f9                                     ; $5e33: $0e $f9

jr_0bd_5e35:
    ld [hl], b                                    ; $5e35: $70
    ld [bc], a                                    ; $5e36: $02
    ld e, c                                       ; $5e37: $59
    ld bc, $0020                                  ; $5e38: $01 $20 $00
    rst $38                                       ; $5e3b: $ff
    ld [bc], a                                    ; $5e3c: $02
    ld e, b                                       ; $5e3d: $58
    db $10                                        ; $5e3e: $10
    rst $28                                       ; $5e3f: $ef
    jr nc, jr_0bd_5e31                            ; $5e40: $30 $ef

    ld [hl], b                                    ; $5e42: $70
    ld [$e0df], sp                                ; $5e43: $08 $df $e0
    ccf                                           ; $5e46: $3f
    add b                                         ; $5e47: $80
    jr jr_0bd_5e6a                                ; $5e48: $18 $20

    ret c                                         ; $5e4a: $d8

    ld h, a                                       ; $5e4b: $67
    sbc b                                         ; $5e4c: $98
    ld [bc], a                                    ; $5e4d: $02
    ld h, a                                       ; $5e4e: $67
    sbc h                                         ; $5e4f: $9c
    rst $30                                       ; $5e50: $f7
    rrca                                          ; $5e51: $0f
    ld hl, sp+$03                                 ; $5e52: $f8 $03
    jr z, @+$22                                   ; $5e54: $28 $20

    adc h                                         ; $5e56: $8c
    nop                                           ; $5e57: $00
    rst $30                                       ; $5e58: $f7
    dec c                                         ; $5e59: $0d
    ei                                            ; $5e5a: $fb
    rlca                                          ; $5e5b: $07
    ld a, [$fd07]                                 ; $5e5c: $fa $07 $fd
    add d                                         ; $5e5f: $82
    add b                                         ; $5e60: $80
    jr c, jr_0bd_5e83                             ; $5e61: $38 $20

    inc hl                                        ; $5e63: $23
    sbc $21                                       ; $5e64: $de $21
    sbc $61                                       ; $5e66: $de $61
    sbc $e1                                       ; $5e68: $de $e1

jr_0bd_5e6a:
    db $10                                        ; $5e6a: $10
    cp [hl]                                       ; $5e6b: $be
    jp Jump_0bd_4a7e                              ; $5e6c: $c3 $7e $4a


    jr jr_0bd_5eb9                                ; $5e6f: $18 $48

    or a                                          ; $5e71: $b7
    call z, $01b7                                 ; $5e72: $cc $b7 $01
    call z, $cf73                                 ; $5e75: $cc $73 $cf
    add hl, sp                                    ; $5e78: $39
    rst $00                                       ; $5e79: $c7
    cp h                                          ; $5e7a: $bc
    ld b, b                                       ; $5e7b: $40
    ld e, d                                       ; $5e7c: $5a
    stop                                          ; $5e7d: $10 $00
    ld h, d                                       ; $5e7f: $62
    sbc l                                         ; $5e80: $9d
    ld h, a                                       ; $5e81: $67
    sbc h                                         ; $5e82: $9c

jr_0bd_5e83:
    ld [hl], e                                    ; $5e83: $73
    sbc $3f                                       ; $5e84: $de $3f
    ldh [$08], a                                  ; $5e86: $e0 $08
    ld c, $ff                                     ; $5e88: $0e $ff
    add b                                         ; $5e8a: $80
    ld a, a                                       ; $5e8b: $7f
    ld l, h                                       ; $5e8c: $6c
    ld [$dc27], sp                                ; $5e8d: $08 $27 $dc
    ld a, $00                                     ; $5e90: $3e $00
    pop bc                                        ; $5e92: $c1
    ld l, $db                                     ; $5e93: $2e $db
    daa                                           ; $5e95: $27
    db $dd                                        ; $5e96: $dd
    ei                                            ; $5e97: $fb
    adc [hl]                                      ; $5e98: $8e
    jp $7c40                                      ; $5e99: $c3 $40 $7c


    ld a, h                                       ; $5e9c: $7c
    ld [$83fe], sp                                ; $5e9d: $08 $fe $83
    add $bb                                       ; $5ea0: $c6 $bb
    add $7d                                       ; $5ea2: $c6 $7d
    ld [bc], a                                    ; $5ea4: $02
    jp $c37d                                      ; $5ea5: $c3 $7d $c3


    inc a                                         ; $5ea8: $3c
    rlca                                          ; $5ea9: $07
    db $fc                                        ; $5eaa: $fc
    adc h                                         ; $5eab: $8c
    jr c, jr_0bd_5eaf                             ; $5eac: $38 $01

    db $10                                        ; $5eae: $10

jr_0bd_5eaf:
    rst $38                                       ; $5eaf: $ff
    ld bc, $9afe                                  ; $5eb0: $01 $fe $9a
    jr @-$22                                      ; $5eb3: $18 $dc

    or a                                          ; $5eb5: $b7
    ld [hl], h                                    ; $5eb6: $74
    xor e                                         ; $5eb7: $ab
    ld [bc], a                                    ; $5eb8: $02

jr_0bd_5eb9:
    ld [hl], h                                    ; $5eb9: $74
    db $db                                        ; $5eba: $db
    inc h                                         ; $5ebb: $24
    db $db                                        ; $5ebc: $db
    ccf                                           ; $5ebd: $3f
    pop af                                        ; $5ebe: $f1
    xor d                                         ; $5ebf: $aa
    jr @+$24                                      ; $5ec0: $18 $22

    nop                                           ; $5ec2: $00
    db $dd                                        ; $5ec3: $dd
    ld h, $dd                                     ; $5ec4: $26 $dd
    ld h, [hl]                                    ; $5ec6: $66
    db $db                                        ; $5ec7: $db
    and $bb                                       ; $5ec8: $e6 $bb
    rst $18                                       ; $5eca: $df
    ld b, b                                       ; $5ecb: $40

jr_0bd_5ecc:
    ld [hl], c                                    ; $5ecc: $71
    cp d                                          ; $5ecd: $ba
    jr jr_0bd_5ed8                                ; $5ece: $18 $08

    rst $30                                       ; $5ed0: $f7
    inc c                                         ; $5ed1: $0c

jr_0bd_5ed2:
    rst $30                                       ; $5ed2: $f7
    inc c                                         ; $5ed3: $0c
    di                                            ; $5ed4: $f3
    jr nz, @+$11                                  ; $5ed5: $20 $0f

    ld sp, hl                                     ; $5ed7: $f9

jr_0bd_5ed8:
    ld a, $28                                     ; $5ed8: $3e $28
    or b                                          ; $5eda: $b0
    ld e, a                                       ; $5edb: $5f
    ldh a, [$1f]                                  ; $5edc: $f0 $1f
    db $10                                        ; $5ede: $10
    inc b                                         ; $5edf: $04
    rst $28                                       ; $5ee0: $ef
    jr jr_0bd_5ed2                                ; $5ee1: $18 $ef

    jr jr_0bd_5ecc                                ; $5ee3: $18 $e7

    jp c, $e118                                   ; $5ee5: $da $18 $e1

    rra                                           ; $5ee8: $1f
    nop                                           ; $5ee9: $00
    ld hl, $21df                                  ; $5eea: $21 $df $21
    sbc $23                                       ; $5eed: $de $23
    sbc $ff                                       ; $5eef: $de $ff
    adc h                                         ; $5ef1: $8c
    add b                                         ; $5ef2: $80
    ld [$8318], a                                 ; $5ef3: $ea $18 $83
    ld a, h                                       ; $5ef6: $7c
    add d                                         ; $5ef7: $82
    ld a, l                                       ; $5ef8: $7d
    sub d                                         ; $5ef9: $92
    ld a, l                                       ; $5efa: $7d

jr_0bd_5efb:
    sub d                                         ; $5efb: $92
    db $10                                        ; $5efc: $10
    ld l, l                                       ; $5efd: $6d
    rst $38                                       ; $5efe: $ff
    ld [$2840], sp                                ; $5eff: $08 $40 $28
    jr jr_0bd_5efb                                ; $5f02: $18 $f7

    jr c, @-$0f                                   ; $5f04: $38 $ef

    db $10                                        ; $5f06: $10
    ldh a, [$1f]                                  ; $5f07: $f0 $1f
    jp $2070                                      ; $5f09: $c3 $70 $20


    inc c                                         ; $5f0c: $0c
    di                                            ; $5f0d: $f3
    inc c                                         ; $5f0e: $0c
    di                                            ; $5f0f: $f3
    ld [bc], a                                    ; $5f10: $02
    ld c, $fb                                     ; $5f11: $0e $fb
    sub a                                         ; $5f13: $97
    db $fc                                        ; $5f14: $fc
    pop hl                                        ; $5f15: $e1
    rra                                           ; $5f16: $1f
    ld a, [de]                                    ; $5f17: $1a
    add hl, de                                    ; $5f18: $19
    or $01                                        ; $5f19: $f6 $01
    add hl, de                                    ; $5f1b: $19
    ld [hl], $e9                                  ; $5f1c: $36 $e9
    rra                                           ; $5f1e: $1f
    db $ed                                        ; $5f1f: $ed
    inc de                                        ; $5f20: $13
    xor $10                                       ; $5f21: $ee $10
    jr z, jr_0bd_5f25                             ; $5f23: $28 $00

jr_0bd_5f25:
    ldh [$1f], a                                  ; $5f25: $e0 $1f

jr_0bd_5f27:
    and b                                         ; $5f27: $a0
    rst $18                                       ; $5f28: $df
    and c                                         ; $5f29: $a1
    rst $38                                       ; $5f2a: $ff
    sub c                                         ; $5f2b: $91
    xor $20                                       ; $5f2c: $ee $20
    ldh a, [rIF]                                  ; $5f2e: $f0 $0f
    ld a, [hl-]                                   ; $5f30: $3a
    ld l, c                                       ; $5f31: $69
    ldh [$3f], a                                  ; $5f32: $e0 $3f
    ld [hl], b                                    ; $5f34: $70
    rst $18                                       ; $5f35: $df
    jr nc, jr_0bd_5f78                            ; $5f36: $30 $40

    rst $28                                       ; $5f38: $ef
    ld d, b                                       ; $5f39: $50
    add hl, sp                                    ; $5f3a: $39
    rst $30                                       ; $5f3b: $f7
    sbc h                                         ; $5f3c: $9c
    ld l, [hl]                                    ; $5f3d: $6e
    cp e                                          ; $5f3e: $bb
    call c, Call_000_24b7                         ; $5f3f: $dc $b7 $24

jr_0bd_5f42:
    add b                                         ; $5f42: $80
    ld a, a                                       ; $5f43: $7f
    ld [bc], a                                    ; $5f44: $02
    jr jr_0bd_5f27                                ; $5f45: $18 $e0

    ccf                                           ; $5f47: $3f
    ld l, d                                       ; $5f48: $6a
    ld c, c                                       ; $5f49: $49
    add b                                         ; $5f4a: $80
    rst $38                                       ; $5f4b: $ff

jr_0bd_5f4c:
    nop                                           ; $5f4c: $00
    ret nz                                        ; $5f4d: $c0

    ccf                                           ; $5f4e: $3f
    db $fc                                        ; $5f4f: $fc
    rst $00                                       ; $5f50: $c7
    cp b                                          ; $5f51: $b8
    ld l, a                                       ; $5f52: $6f
    jr jr_0bd_5f4c                                ; $5f53: $18 $f7

    add b                                         ; $5f55: $80
    xor $18                                       ; $5f56: $ee $18
    inc bc                                        ; $5f58: $03
    cp $07                                        ; $5f59: $fe $07
    ld hl, sp-$05                                 ; $5f5b: $f8 $fb
    adc [hl]                                      ; $5f5d: $8e
    inc hl                                        ; $5f5e: $23
    db $10                                        ; $5f5f: $10
    db $dd                                        ; $5f60: $dd
    jr nz, jr_0bd_5f42                            ; $5f61: $20 $df

    sub b                                         ; $5f63: $90
    add hl, sp                                    ; $5f64: $39
    cp [hl]                                       ; $5f65: $be
    db $e3                                        ; $5f66: $e3
    ret z                                         ; $5f67: $c8

    ld [hl], a                                    ; $5f68: $77
    jr nz, @-$36                                  ; $5f69: $20 $c8

    or a                                          ; $5f6b: $b7
    and b                                         ; $5f6c: $a0
    add hl, sp                                    ; $5f6d: $39
    rra                                           ; $5f6e: $1f
    ldh a, [$b9]                                  ; $5f6f: $f0 $b9
    rst $28                                       ; $5f71: $ef
    ldh a, [$98]                                  ; $5f72: $f0 $98
    jr nz, jr_0bd_5fb6                            ; $5f74: $20 $40

    rst $38                                       ; $5f76: $ff
    add c                                         ; $5f77: $81

jr_0bd_5f78:
    ret c                                         ; $5f78: $d8

    ld [$19c0], sp                                ; $5f79: $08 $c0 $19
    ld a, h                                       ; $5f7c: $7c
    rst $00                                       ; $5f7d: $c7
    jr c, jr_0bd_5f81                             ; $5f7e: $38 $01

    rst $28                                       ; $5f80: $ef

jr_0bd_5f81:
    inc l                                         ; $5f81: $2c
    rst $10                                       ; $5f82: $d7
    ld l, h                                       ; $5f83: $6c
    rst $10                                       ; $5f84: $d7
    ld l, h                                       ; $5f85: $6c
    cp e                                          ; $5f86: $bb
    ret nc                                        ; $5f87: $d0

    add hl, sp                                    ; $5f88: $39
    ld [bc], a                                    ; $5f89: $02
    sbc h                                         ; $5f8a: $9c
    di                                            ; $5f8b: $f3
    adc h                                         ; $5f8c: $8c
    ld [hl], a                                    ; $5f8d: $77
    call z, Call_000_3077                         ; $5f8e: $cc $77 $30
    ld b, b                                       ; $5f91: $40
    adc h                                         ; $5f92: $8c
    ld [$de23], sp                                ; $5f93: $08 $23 $de
    inc hl                                        ; $5f96: $23
    db $dd                                        ; $5f97: $dd
    ldh a, [$39]                                  ; $5f98: $f0 $39
    ld a, $e3                                     ; $5f9a: $3e $e3
    ld [$f730], sp                                ; $5f9c: $08 $30 $f7
    ld [$1080], sp                                ; $5f9f: $08 $80 $10
    inc b                                         ; $5fa2: $04
    ld a, [de]                                    ; $5fa3: $1a
    ldh a, [$9f]                                  ; $5fa4: $f0 $9f
    ldh [$9f], a                                  ; $5fa6: $e0 $9f
    ld hl, $5fa0                                  ; $5fa8: $21 $a0 $5f
    db $10                                        ; $5fab: $10
    ld a, [hl-]                                   ; $5fac: $3a
    ld a, b                                       ; $5fad: $78
    rst $08                                       ; $5fae: $cf
    jr nz, @-$1f                                  ; $5faf: $20 $df

    sub b                                         ; $5fb1: $90
    ld c, b                                       ; $5fb2: $48
    ld [bc], a                                    ; $5fb3: $02
    rst $28                                       ; $5fb4: $ef
    add hl, sp                                    ; $5fb5: $39

jr_0bd_5fb6:
    add d                                         ; $5fb6: $82
    ld a, l                                       ; $5fb7: $7d
    add d                                         ; $5fb8: $82
    ld a, l                                       ; $5fb9: $7d
    jr nc, jr_0bd_5ff6                            ; $5fba: $30 $3a

    di                                            ; $5fbc: $f3
    jr jr_0bd_5fdd                                ; $5fbd: $18 $1e

    jr c, @-$0f                                   ; $5fbf: $38 $ef

    ret nz                                        ; $5fc1: $c0

    jr jr_0bd_6008                                ; $5fc2: $18 $44

    ld a, [de]                                    ; $5fc4: $1a
    db $e3                                        ; $5fc5: $e3
    ld e, $27                                     ; $5fc6: $1e $27
    db $10                                        ; $5fc8: $10
    db $dd                                        ; $5fc9: $dd
    ld c, $fb                                     ; $5fca: $0e $fb

jr_0bd_5fcc:
    jr nz, jr_0bd_600e                            ; $5fcc: $20 $40

    ld c, $87                                     ; $5fce: $0e $87
    db $fd                                        ; $5fd0: $fd
    add $00                                       ; $5fd1: $c6 $00
    ld a, c                                       ; $5fd3: $79
    nop                                           ; $5fd4: $00
    rst $38                                       ; $5fd5: $ff
    inc b                                         ; $5fd6: $04
    rst $38                                       ; $5fd7: $ff
    inc b                                         ; $5fd8: $04
    ei                                            ; $5fd9: $fb
    db $fc                                        ; $5fda: $fc
    nop                                           ; $5fdb: $00
    inc bc                                        ; $5fdc: $03

jr_0bd_5fdd:
    add h                                         ; $5fdd: $84
    ei                                            ; $5fde: $fb
    add h                                         ; $5fdf: $84
    rst $38                                       ; $5fe0: $ff
    and c                                         ; $5fe1: $a1
    cp $a1                                        ; $5fe2: $fe $a1
    nop                                           ; $5fe4: $00
    sbc $e0                                       ; $5fe5: $de $e0
    dec d                                         ; $5fe7: $15
    adc c                                         ; $5fe8: $89
    dec c                                         ; $5fe9: $0d
    ld a, [hl+]                                   ; $5fea: $2a
    nop                                           ; $5feb: $00
    rst $38                                       ; $5fec: $ff
    ld [bc], a                                    ; $5fed: $02
    jr jr_0bd_6010                                ; $5fee: $18 $20

    ld [$fb18], sp                                ; $5ff0: $08 $18 $fb
    db $10                                        ; $5ff3: $10
    jr z, jr_0bd_5ff6                             ; $5ff4: $28 $00

jr_0bd_5ff6:
    ld bc, $00fe                                  ; $5ff6: $01 $fe $00
    rst $18                                       ; $5ff9: $df
    nop                                           ; $5ffa: $00
    db $fc                                        ; $5ffb: $fc
    nop                                           ; $5ffc: $00
    ld b, b                                       ; $5ffd: $40
    db $10                                        ; $5ffe: $10
    jr nc, jr_0bd_6002                            ; $5fff: $30 $01

    ld c, a                                       ; $6001: $4f

jr_0bd_6002:
    nop                                           ; $6002: $00
    sbc a                                         ; $6003: $9f
    nop                                           ; $6004: $00
    rlca                                          ; $6005: $07
    add b                                         ; $6006: $80
    dec c                                         ; $6007: $0d

jr_0bd_6008:
    jr nc, jr_0bd_6022                            ; $6008: $30 $18

    ld b, [hl]                                    ; $600a: $46
    add b                                         ; $600b: $80
    ld [hl], $18                                  ; $600c: $36 $18

jr_0bd_600e:
    ld a, a                                       ; $600e: $7f
    nop                                           ; $600f: $00

jr_0bd_6010:
    ld sp, hl                                     ; $6010: $f9
    jr nc, jr_0bd_6043                            ; $6011: $30 $30

    ld [$fa78], sp                                ; $6013: $08 $78 $fa
    and b                                         ; $6016: $a0
    inc b                                         ; $6017: $04
    jr jr_0bd_602a                                ; $6018: $18 $10

    ld h, d                                       ; $601a: $62
    jr jr_0bd_5fcc                                ; $601b: $18 $af

    nop                                           ; $601d: $00
    rst $28                                       ; $601e: $ef
    nop                                           ; $601f: $00
    dec de                                        ; $6020: $1b
    ld [hl+], a                                   ; $6021: $22

jr_0bd_6022:
    nop                                           ; $6022: $00
    inc bc                                        ; $6023: $03
    jr nc, jr_0bd_6076                            ; $6024: $30 $50

    rst $28                                       ; $6026: $ef
    nop                                           ; $6027: $00
    rst $30                                       ; $6028: $f7
    ld b, b                                       ; $6029: $40

jr_0bd_602a:
    ld b, b                                       ; $602a: $40
    cp $80                                        ; $602b: $fe $80
    add b                                         ; $602d: $80
    ld d, b                                       ; $602e: $50
    rst $18                                       ; $602f: $df
    jr nz, @+$38                                  ; $6030: $20 $36

    nop                                           ; $6032: $00
    add h                                         ; $6033: $84
    inc de                                        ; $6034: $13
    add b                                         ; $6035: $80
    and b                                         ; $6036: $a0
    adc d                                         ; $6037: $8a
    db $10                                        ; $6038: $10
    ld hl, sp-$72                                 ; $6039: $f8 $8e
    nop                                           ; $603b: $00
    ld a, [hl]                                    ; $603c: $7e
    nop                                           ; $603d: $00
    ld a, h                                       ; $603e: $7c
    nop                                           ; $603f: $00
    ccf                                           ; $6040: $3f
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00

jr_0bd_6043:
    rra                                           ; $6043: $1f
    nop                                           ; $6044: $00
    rrca                                          ; $6045: $0f
    ld h, b                                       ; $6046: $60
    rlca                                          ; $6047: $07
    ldh [$0c], a                                  ; $6048: $e0 $0c
    nop                                           ; $604a: $00
    ret nc                                        ; $604b: $d0

    ld [$0c41], sp                                ; $604c: $08 $41 $0c
    ld b, b                                       ; $604f: $40
    inc d                                         ; $6050: $14
    ld b, b                                       ; $6051: $40
    ld b, $00                                     ; $6052: $06 $00
    jr z, jr_0bd_6056                             ; $6054: $28 $00

jr_0bd_6056:
    nop                                           ; $6056: $00
    ret z                                         ; $6057: $c8

    nop                                           ; $6058: $00
    or h                                          ; $6059: $b4
    nop                                           ; $605a: $00
    ldh [rP1], a                                  ; $605b: $e0 $00
    nop                                           ; $605d: $00
    add sp, $05                                   ; $605e: $e8 $05
    ld h, b                                       ; $6060: $60
    rrca                                          ; $6061: $0f
    ld b, b                                       ; $6062: $40
    ld bc, $04e0                                  ; $6063: $01 $e0 $04
    ld bc, $c0a8                                  ; $6066: $01 $a8 $c0
    add d                                         ; $6069: $82
    db $ec                                        ; $606a: $ec
    sbc c                                         ; $606b: $99
    db $10                                        ; $606c: $10
    rst $18                                       ; $606d: $df
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    rst $10                                       ; $6070: $d7
    ld [bc], a                                    ; $6071: $02
    jp nc, $8400                                  ; $6072: $d2 $00 $84

    nop                                           ; $6075: $00

jr_0bd_6076:
    nop                                           ; $6076: $00
    inc bc                                        ; $6077: $03
    nop                                           ; $6078: $00
    ld l, h                                       ; $6079: $6c
    dec b                                         ; $607a: $05
    ld [hl], b                                    ; $607b: $70
    nop                                           ; $607c: $00
    add sp, $00                                   ; $607d: $e8 $00
    ret nc                                        ; $607f: $d0

    nop                                           ; $6080: $00
    ld [bc], a                                    ; $6081: $02
    ldh [rDIV], a                                 ; $6082: $e0 $04
    add b                                         ; $6084: $80
    dec b                                         ; $6085: $05
    nop                                           ; $6086: $00
    dec h                                         ; $6087: $25
    ldh a, [rP1]                                  ; $6088: $f0 $00
    rra                                           ; $608a: $1f
    and b                                         ; $608b: $a0
    jp c, $3700                                   ; $608c: $da $00 $37

    sbc $00                                       ; $608f: $de $00
    rst $08                                       ; $6091: $cf
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    inc b                                         ; $6094: $04
    sbc a                                         ; $6095: $9f
    or h                                          ; $6096: $b4
    ret nz                                        ; $6097: $c0

    jr c, jr_0bd_609e                             ; $6098: $38 $04

    jp z, $1480                                   ; $609a: $ca $80 $14

    ld b, b                                       ; $609d: $40

jr_0bd_609e:
    db $fd                                        ; $609e: $fd
    ld [de], a                                    ; $609f: $12
    ld bc, $007f                                  ; $60a0: $01 $7f $00
    ld b, b                                       ; $60a3: $40
    dec a                                         ; $60a4: $3d
    ldh a, [rLCDC]                                ; $60a5: $f0 $40
    ld a, a                                       ; $60a7: $7f
    nop                                           ; $60a8: $00
    cpl                                           ; $60a9: $2f
    ld b, b                                       ; $60aa: $40
    rlca                                          ; $60ab: $07
    inc bc                                        ; $60ac: $03
    ld bc, $05d0                                  ; $60ad: $01 $d0 $05
    add b                                         ; $60b0: $80
    dec bc                                        ; $60b1: $0b
    ret nz                                        ; $60b2: $c0

    ld [bc], a                                    ; $60b3: $02
    ldh [$2c], a                                  ; $60b4: $e0 $2c
    ld bc, $fb20                                  ; $60b6: $01 $20 $fb
    ld [bc], a                                    ; $60b9: $02
    db $ec                                        ; $60ba: $ec
    nop                                           ; $60bb: $00
    add e                                         ; $60bc: $83
    db $10                                        ; $60bd: $10
    rst $00                                       ; $60be: $c7
    nop                                           ; $60bf: $00
    db $ed                                        ; $60c0: $ed
    nop                                           ; $60c1: $00
    ld bc, $007f                                  ; $60c2: $01 $7f $00
    adc [hl]                                      ; $60c5: $8e
    nop                                           ; $60c6: $00
    inc b                                         ; $60c7: $04
    sub c                                         ; $60c8: $91
    ld b, $00                                     ; $60c9: $06 $00
    ldh a, [rP1]                                  ; $60cb: $f0 $00
    pop af                                        ; $60cd: $f1
    ldh [$08], a                                  ; $60ce: $e0 $08
    pop bc                                        ; $60d0: $c1
    inc c                                         ; $60d1: $0c
    ld h, c                                       ; $60d2: $61
    add b                                         ; $60d3: $80
    ld d, a                                       ; $60d4: $57
    ld bc, $0004                                  ; $60d5: $01 $04 $00
    ld [bc], a                                    ; $60d8: $02
    ldh a, [rSB]                                  ; $60d9: $f0 $01
    db $ec                                        ; $60db: $ec
    ld [bc], a                                    ; $60dc: $02
    ld hl, $7bf8                                  ; $60dd: $21 $f8 $7b
    ld c, c                                       ; $60e0: $49
    nop                                           ; $60e1: $00
    ret                                           ; $60e2: $c9


    ld [$2480], sp                                ; $60e3: $08 $80 $24
    ld l, d                                       ; $60e6: $6a
    ld bc, $7f02                                  ; $60e7: $01 $02 $7f
    nop                                           ; $60ea: $00
    ld [hl], a                                    ; $60eb: $77
    nop                                           ; $60ec: $00
    ld a, a                                       ; $60ed: $7f
    cp h                                          ; $60ee: $bc
    add a                                         ; $60ef: $87
    nop                                           ; $60f0: $00
    ld hl, sp+$00                                 ; $60f1: $f8 $00
    nop                                           ; $60f3: $00
    sub [hl]                                      ; $60f4: $96
    nop                                           ; $60f5: $00
    nop                                           ; $60f6: $00
    ld c, c                                       ; $60f7: $49
    nop                                           ; $60f8: $00
    ld d, e                                       ; $60f9: $53
    nop                                           ; $60fa: $00
    nop                                           ; $60fb: $00
    cp a                                          ; $60fc: $bf
    nop                                           ; $60fd: $00
    rst $38                                       ; $60fe: $ff
    db $eb                                        ; $60ff: $eb
    inc d                                         ; $6100: $14
    ld e, [hl]                                    ; $6101: $5e
    ld [bc], a                                    ; $6102: $02
    ret z                                         ; $6103: $c8

    ld b, $02                                     ; $6104: $06 $02
    nop                                           ; $6106: $00
    inc hl                                        ; $6107: $23
    ld [$0e7d], sp                                ; $6108: $08 $7d $0e
    ld [$019e], sp                                ; $610b: $08 $9e $01
    ld a, h                                       ; $610e: $7c
    ld a, [bc]                                    ; $610f: $0a
    inc bc                                        ; $6110: $03
    ld [hl], b                                    ; $6111: $70
    nop                                           ; $6112: $00
    ldh a, [rBCPS]                                ; $6113: $f0 $68
    ld bc, $20fe                                  ; $6115: $01 $fe $20
    ld de, $106e                                  ; $6118: $11 $6e $10
    and b                                         ; $611b: $a0
    ld [$77e2], sp                                ; $611c: $08 $e2 $77
    ld bc, $0071                                  ; $611f: $01 $71 $00
    ld h, c                                       ; $6122: $61
    ld [$4000], sp                                ; $6123: $08 $00 $40
    jr @+$45                                      ; $6126: $18 $43

    db $10                                        ; $6128: $10

jr_0bd_6129:
    ld bc, $0010                                  ; $6129: $01 $10 $00
    ld [bc], a                                    ; $612c: $02
    nop                                           ; $612d: $00
    xor l                                         ; $612e: $ad
    jr nz, jr_0bd_6129                            ; $612f: $20 $f8

    nop                                           ; $6131: $00
    db $eb                                        ; $6132: $eb
    nop                                           ; $6133: $00
    db $ec                                        ; $6134: $ec
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    ld [hl], d                                    ; $6137: $72
    nop                                           ; $6138: $00
    ld [$1800], sp                                ; $6139: $08 $00 $18
    ld [bc], a                                    ; $613c: $02
    ld a, $00                                     ; $613d: $3e $00
    ld [bc], a                                    ; $613f: $02
    sub e                                         ; $6140: $93
    nop                                           ; $6141: $00
    ret c                                         ; $6142: $d8

    nop                                           ; $6143: $00
    ld e, h                                       ; $6144: $5c
    ld b, b                                       ; $6145: $40
    xor h                                         ; $6146: $ac
    ld bc, $800b                                  ; $6147: $01 $0b $80
    ld d, b                                       ; $614a: $50
    nop                                           ; $614b: $00
    ld e, a                                       ; $614c: $5f
    add d                                         ; $614d: $82
    nop                                           ; $614e: $00
    ld e, $00                                     ; $614f: $1e $00
    inc c                                         ; $6151: $0c
    jr nz, @+$0b                                  ; $6152: $20 $09

    nop                                           ; $6154: $00
    ret nz                                        ; $6155: $c0

    nop                                           ; $6156: $00
    di                                            ; $6157: $f3
    call c, $fb11                                 ; $6158: $dc $11 $fb
    nop                                           ; $615b: $00
    ld bc, $1468                                  ; $615c: $01 $68 $14
    cp $00                                        ; $615f: $fe $00
    or $ec                                        ; $6161: $f6 $ec
    ld bc, $f0f4                                  ; $6163: $01 $f4 $f0
    ld bc, $01f0                                  ; $6166: $01 $f0 $01
    nop                                           ; $6169: $00
    ld hl, sp+$03                                 ; $616a: $f8 $03
    ret nc                                        ; $616c: $d0

    ld a, [bc]                                    ; $616d: $0a
    ret nz                                        ; $616e: $c0

    rra                                           ; $616f: $1f
    nop                                           ; $6170: $00
    ld a, h                                       ; $6171: $7c
    nop                                           ; $6172: $00
    db $10                                        ; $6173: $10
    cp b                                          ; $6174: $b8
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    ld [bc], a                                    ; $6177: $02
    nop                                           ; $6178: $00
    ld l, h                                       ; $6179: $6c
    add b                                         ; $617a: $80
    nop                                           ; $617b: $00
    cpl                                           ; $617c: $2f
    add b                                         ; $617d: $80
    dec e                                         ; $617e: $1d
    and b                                         ; $617f: $a0
    add a                                         ; $6180: $87
    ret nc                                        ; $6181: $d0

    inc bc                                        ; $6182: $03
    ldh a, [rP1]                                  ; $6183: $f0 $00
    ld [bc], a                                    ; $6185: $02
    ldh [rSB], a                                  ; $6186: $e0 $01
    cp $00                                        ; $6188: $fe $00
    ld l, l                                       ; $618a: $6d
    nop                                           ; $618b: $00
    ld a, [de]                                    ; $618c: $1a
    adc b                                         ; $618d: $88
    dec a                                         ; $618e: $3d
    nop                                           ; $618f: $00
    ld [bc], a                                    ; $6190: $02
    db $f4                                        ; $6191: $f4
    inc b                                         ; $6192: $04
    adc [hl]                                      ; $6193: $8e
    ld [$007f], sp                                ; $6194: $08 $7f $00
    rra                                           ; $6197: $1f
    dec c                                         ; $6198: $0d
    add b                                         ; $6199: $80
    rlca                                          ; $619a: $07
    ret nz                                        ; $619b: $c0

    ld b, $d2                                     ; $619c: $06 $d2
    ld bc, $59c0                                  ; $619e: $01 $c0 $59
    rst $38                                       ; $61a1: $ff
    add b                                         ; $61a2: $80
    ld c, c                                       ; $61a3: $49
    ld c, d                                       ; $61a4: $4a
    jp nz, Jump_000_1180                          ; $61a5: $c2 $80 $11

    ld l, b                                       ; $61a8: $68
    ld bc, $5180                                  ; $61a9: $01 $80 $51
    db $fc                                        ; $61ac: $fc
    ld d, [hl]                                    ; $61ad: $56
    ld [bc], a                                    ; $61ae: $02
    db $f4                                        ; $61af: $f4
    or h                                          ; $61b0: $b4
    ld e, d                                       ; $61b1: $5a
    ld [bc], a                                    ; $61b2: $02
    ld sp, hl                                     ; $61b3: $f9
    ld d, d                                       ; $61b4: $52
    ld bc, $027c                                  ; $61b5: $01 $7c $02
    jr nc, jr_0bd_622d                            ; $61b8: $30 $73

    ld [bc], a                                    ; $61ba: $02
    inc bc                                        ; $61bb: $03
    nop                                           ; $61bc: $00
    ld [$3484], sp                                ; $61bd: $08 $84 $34
    nop                                           ; $61c0: $00
    ld d, b                                       ; $61c1: $50
    jr nc, jr_0bd_61d6                            ; $61c2: $30 $12

    rst $38                                       ; $61c4: $ff
    nop                                           ; $61c5: $00
    ccf                                           ; $61c6: $3f
    nop                                           ; $61c7: $00
    add b                                         ; $61c8: $80
    rrca                                          ; $61c9: $0f
    nop                                           ; $61ca: $00
    ld [hl], $00                                  ; $61cb: $36 $00
    ld l, a                                       ; $61cd: $6f
    nop                                           ; $61ce: $00
    ld l, e                                       ; $61cf: $6b
    add b                                         ; $61d0: $80
    sbc d                                         ; $61d1: $9a
    ld [de], a                                    ; $61d2: $12
    db $e3                                        ; $61d3: $e3
    ld a, h                                       ; $61d4: $7c
    nop                                           ; $61d5: $00

jr_0bd_61d6:
    dec sp                                        ; $61d6: $3b
    add b                                         ; $61d7: $80
    rlca                                          ; $61d8: $07
    add b                                         ; $61d9: $80
    ld [$d006], sp                                ; $61da: $08 $06 $d0
    ld b, $e0                                     ; $61dd: $06 $e0
    ld b, $01                                     ; $61df: $06 $01
    db $fd                                        ; $61e1: $fd
    nop                                           ; $61e2: $00
    ei                                            ; $61e3: $fb
    nop                                           ; $61e4: $00
    ld b, b                                       ; $61e5: $40
    ld [bc], a                                    ; $61e6: $02
    ldh [rDIV], a                                 ; $61e7: $e0 $04
    nop                                           ; $61e9: $00
    ld c, $00                                     ; $61ea: $0e $00
    rst $10                                       ; $61ec: $d7
    jr nc, jr_0bd_61ef                            ; $61ed: $30 $00

jr_0bd_61ef:
    ld a, l                                       ; $61ef: $7d
    ld d, b                                       ; $61f0: $50
    ld [bc], a                                    ; $61f1: $02
    cp h                                          ; $61f2: $bc
    ld a, [bc]                                    ; $61f3: $0a
    dec de                                        ; $61f4: $1b
    ret nz                                        ; $61f5: $c0

    ld b, $80                                     ; $61f6: $06 $80
    add hl, bc                                    ; $61f8: $09
    rlca                                          ; $61f9: $07
    nop                                           ; $61fa: $00
    rra                                           ; $61fb: $1f
    db $10                                        ; $61fc: $10
    adc h                                         ; $61fd: $8c
    ld [bc], a                                    ; $61fe: $02
    inc b                                         ; $61ff: $04
    ldh a, [$72]                                  ; $6200: $f0 $72
    ld bc, $bf74                                  ; $6202: $01 $74 $bf
    ld [bc], a                                    ; $6205: $02
    db $10                                        ; $6206: $10
    and [hl]                                      ; $6207: $a6
    ld c, c                                       ; $6208: $49
    and d                                         ; $6209: $a2
    ld e, d                                       ; $620a: $5a
    cp $d6                                        ; $620b: $fe $d6
    ld [bc], a                                    ; $620d: $02
    rst $38                                       ; $620e: $ff
    ld [$f680], sp                                ; $620f: $08 $80 $f6
    ld a, [de]                                    ; $6212: $1a
    sbc $01                                       ; $6213: $de $01
    and b                                         ; $6215: $a0
    nop                                           ; $6216: $00
    ld [de], a                                    ; $6217: $12
    ld b, b                                       ; $6218: $40
    add b                                         ; $6219: $80
    nop                                           ; $621a: $00
    rra                                           ; $621b: $1f
    nop                                           ; $621c: $00
    inc [hl]                                      ; $621d: $34
    add b                                         ; $621e: $80
    jr z, jr_0bd_6223                             ; $621f: $28 $02

    ld b, b                                       ; $6221: $40
    nop                                           ; $6222: $00

jr_0bd_6223:
    nop                                           ; $6223: $00
    ld b, b                                       ; $6224: $40
    add hl, de                                    ; $6225: $19
    ldh [$0d], a                                  ; $6226: $e0 $0d
    ld h, b                                       ; $6228: $60
    rrca                                          ; $6229: $0f
    ret nz                                        ; $622a: $c0

    rlca                                          ; $622b: $07
    ld [bc], a                                    ; $622c: $02

jr_0bd_622d:
    ldh [rIF], a                                  ; $622d: $e0 $0f
    ret nz                                        ; $622f: $c0

    rrca                                          ; $6230: $0f
    ld b, b                                       ; $6231: $40
    rla                                           ; $6232: $17
    ld l, [hl]                                    ; $6233: $6e
    ld [bc], a                                    ; $6234: $02
    ld a, a                                       ; $6235: $7f
    or l                                          ; $6236: $b5
    sub d                                         ; $6237: $92
    ld bc, $14ec                                  ; $6238: $01 $ec $14
    ld b, e                                       ; $623b: $43
    inc l                                         ; $623c: $2c
    dec bc                                        ; $623d: $0b
    ld hl, sp+$32                                 ; $623e: $f8 $32
    dec bc                                        ; $6240: $0b
    ld [bc], a                                    ; $6241: $02
    or $5a                                        ; $6242: $f6 $5a
    nop                                           ; $6244: $00
    db $fd                                        ; $6245: $fd
    nop                                           ; $6246: $00
    ld hl, sp+$03                                 ; $6247: $f8 $03
    add sp, $05                                   ; $6249: $e8 $05
    call nc, $8007                                ; $624b: $d4 $07 $80
    and h                                         ; $624e: $a4
    ld [$03ec], sp                                ; $624f: $08 $ec $03
    ldh a, [rIF]                                  ; $6252: $f0 $0f
    ret nz                                        ; $6254: $c0

    ld [bc], a                                    ; $6255: $02
    ld h, b                                       ; $6256: $60
    nop                                           ; $6257: $00
    add b                                         ; $6258: $80
    add hl, de                                    ; $6259: $19
    add $10                                       ; $625a: $c6 $10
    ret z                                         ; $625c: $c8

    ld bc, $03b0                                  ; $625d: $01 $b0 $03
    nop                                           ; $6260: $00
    add b                                         ; $6261: $80
    inc e                                         ; $6262: $1c
    pop hl                                        ; $6263: $e1
    rlca                                          ; $6264: $07
    jr nc, jr_0bd_626e                            ; $6265: $30 $07

    nop                                           ; $6267: $00
    add e                                         ; $6268: $83
    jr nc, jr_0bd_626b                            ; $6269: $30 $00

jr_0bd_626b:
    or a                                          ; $626b: $b7
    ld d, b                                       ; $626c: $50
    inc bc                                        ; $626d: $03

jr_0bd_626e:
    ld l, h                                       ; $626e: $6c
    dec bc                                        ; $626f: $0b
    ld h, [hl]                                    ; $6270: $66
    ld [$20c3], sp                                ; $6271: $08 $c3 $20

jr_0bd_6274:
    ld c, b                                       ; $6274: $48
    adc e                                         ; $6275: $8b
    ld e, h                                       ; $6276: $5c
    inc bc                                        ; $6277: $03
    sbc a                                         ; $6278: $9f
    ld [bc], a                                    ; $6279: $02
    ldh [rNR11], a                                ; $627a: $e0 $11
    ld [$1441], sp                                ; $627c: $08 $41 $14
    ld de, $0481                                  ; $627f: $11 $81 $04
    nop                                           ; $6282: $00
    cp $00                                        ; $6283: $fe $00
    ld a, [c]                                     ; $6285: $f2
    nop                                           ; $6286: $00
    call c, $0b02                                 ; $6287: $dc $02 $0b
    add b                                         ; $628a: $80
    add [hl]                                      ; $628b: $86
    ld [de], a                                    ; $628c: $12
    ld a, a                                       ; $628d: $7f
    nop                                           ; $628e: $00
    sbc a                                         ; $628f: $9f
    ld bc, $00bf                                  ; $6290: $01 $bf $00
    inc bc                                        ; $6293: $03
    rrca                                          ; $6294: $0f
    jr nz, jr_0bd_62a6                            ; $6295: $20 $0f

    nop                                           ; $6297: $00
    ld b, e                                       ; $6298: $43
    db $fc                                        ; $6299: $fc
    ld [bc], a                                    ; $629a: $02
    or b                                          ; $629b: $b0
    nop                                           ; $629c: $00
    inc a                                         ; $629d: $3c
    jr jr_0bd_6316                                ; $629e: $18 $76

    ld [$800c], sp                                ; $62a0: $08 $0c $80
    scf                                           ; $62a3: $37
    nop                                           ; $62a4: $00
    cpl                                           ; $62a5: $2f

jr_0bd_62a6:
    ld a, b                                       ; $62a6: $78
    inc bc                                        ; $62a7: $03
    sub $38                                       ; $62a8: $d6 $38
    and $00                                       ; $62aa: $e6 $00
    ld e, l                                       ; $62ac: $5d
    sbc l                                         ; $62ad: $9d
    and d                                         ; $62ae: $a2
    ld d, b                                       ; $62af: $50
    rst $10                                       ; $62b0: $d7
    cp $50                                        ; $62b1: $fe $50
    ld a, [hl]                                    ; $62b3: $7e
    dec hl                                        ; $62b4: $2b
    and $3a                                       ; $62b5: $e6 $3a
    sub $4e                                       ; $62b7: $d6 $4e
    inc bc                                        ; $62b9: $03
    ld h, e                                       ; $62ba: $63
    rst $28                                       ; $62bb: $ef
    ld a, h                                       ; $62bc: $7c
    add hl, de                                    ; $62bd: $19
    db $fc                                        ; $62be: $fc
    inc de                                        ; $62bf: $13
    ld c, b                                       ; $62c0: $48
    nop                                           ; $62c1: $00
    ld h, $34                                     ; $62c2: $26 $34
    add hl, bc                                    ; $62c4: $09
    ld [de], a                                    ; $62c5: $12
    ld hl, $10c0                                  ; $62c6: $21 $c0 $10
    jr nc, jr_0bd_630b                            ; $62c9: $30 $40

    ld h, c                                       ; $62cb: $61
    cp $10                                        ; $62cc: $fe $10
    db $fc                                        ; $62ce: $fc
    ld bc, $01fc                                  ; $62cf: $01 $fc $01
    ld h, b                                       ; $62d2: $60
    ld hl, sp+$28                                 ; $62d3: $f8 $28
    ld [bc], a                                    ; $62d5: $02
    jr nc, jr_0bd_62e4                            ; $62d6: $30 $0c

    ld l, a                                       ; $62d8: $6f
    nop                                           ; $62d9: $00
    db $dd                                        ; $62da: $dd
    nop                                           ; $62db: $00
    ld b, e                                       ; $62dc: $43
    nop                                           ; $62dd: $00
    jr jr_0bd_62e1                                ; $62de: $18 $01

    db $fc                                        ; $62e0: $fc

jr_0bd_62e1:
    db $10                                        ; $62e1: $10
    jr nz, @+$03                                  ; $62e2: $20 $01

jr_0bd_62e4:
    jr @-$3b                                      ; $62e4: $18 $c3

    inc bc                                        ; $62e6: $03
    jr jr_0bd_6274                                ; $62e7: $18 $8b

    db $10                                        ; $62e9: $10
    push bc                                       ; $62ea: $c5
    nop                                           ; $62eb: $00
    db $e3                                        ; $62ec: $e3

jr_0bd_62ed:
    ld d, $10                                     ; $62ed: $16 $10
    inc c                                         ; $62ef: $0c
    inc [hl]                                      ; $62f0: $34
    cp [hl]                                       ; $62f1: $be
    ld c, [hl]                                    ; $62f2: $4e
    jr nc, @+$01                                  ; $62f3: $30 $ff

    inc l                                         ; $62f5: $2c
    ld [de], a                                    ; $62f6: $12
    inc h                                         ; $62f7: $24
    ld h, h                                       ; $62f8: $64
    ld a, $29                                     ; $62f9: $3e $29
    ld a, [de]                                    ; $62fb: $1a
    inc h                                         ; $62fc: $24
    ldh [$0b], a                                  ; $62fd: $e0 $0b
    ld a, [c]                                     ; $62ff: $f2
    add b                                         ; $6300: $80
    adc b                                         ; $6301: $88
    inc l                                         ; $6302: $2c
    dec b                                         ; $6303: $05
    nop                                           ; $6304: $00
    ld e, a                                       ; $6305: $5f
    nop                                           ; $6306: $00
    ld [hl], b                                    ; $6307: $70
    nop                                           ; $6308: $00
    jr nz, jr_0bd_6325                            ; $6309: $20 $1a

jr_0bd_630b:
    adc [hl]                                      ; $630b: $8e
    db $10                                        ; $630c: $10
    sub a                                         ; $630d: $97
    and b                                         ; $630e: $a0
    dec bc                                        ; $630f: $0b
    sbc b                                         ; $6310: $98
    inc b                                         ; $6311: $04
    rrca                                          ; $6312: $0f
    ld a, d                                       ; $6313: $7a
    inc b                                         ; $6314: $04
    rra                                           ; $6315: $1f

jr_0bd_6316:
    rst $18                                       ; $6316: $df
    ld a, h                                       ; $6317: $7c
    inc b                                         ; $6318: $04
    ld e, b                                       ; $6319: $58
    ld h, b                                       ; $631a: $60
    ld bc, $2ca8                                  ; $631b: $01 $a8 $2c
    sbc [hl]                                      ; $631e: $9e
    ld e, c                                       ; $631f: $59
    add [hl]                                      ; $6320: $86
    ld d, b                                       ; $6321: $50
    cp b                                          ; $6322: $b8
    inc hl                                        ; $6323: $23
    ld b, b                                       ; $6324: $40

jr_0bd_6325:
    add hl, bc                                    ; $6325: $09
    add $a6                                       ; $6326: $c6 $a6
    inc a                                         ; $6328: $3c
    ld bc, $010b                                  ; $6329: $01 $0b $01
    ld bc, $9102                                  ; $632c: $01 $02 $91
    inc bc                                        ; $632f: $03
    dec bc                                        ; $6330: $0b
    inc de                                        ; $6331: $13
    inc a                                         ; $6332: $3c
    nop                                           ; $6333: $00
    inc a                                         ; $6334: $3c
    rst $00                                       ; $6335: $c7
    rst $38                                       ; $6336: $ff
    ld a, [hl-]                                   ; $6337: $3a
    rst $08                                       ; $6338: $cf
    inc c                                         ; $6339: $0c
    inc bc                                        ; $633a: $03
    inc bc                                        ; $633b: $03
    jr nz, jr_0bd_633e                            ; $633c: $20 $00

jr_0bd_633e:
    ld bc, $331b                                  ; $633e: $01 $1b $33
    add b                                         ; $6341: $80
    add b                                         ; $6342: $80
    ret nz                                        ; $6343: $c0

    ret nz                                        ; $6344: $c0

    ld h, b                                       ; $6345: $60
    ld bc, $20e0                                  ; $6346: $01 $e0 $20
    ldh [$d0], a                                  ; $6349: $e0 $d0
    jr nc, jr_0bd_62ed                            ; $634b: $30 $a0

    ld [hl], b                                    ; $634d: $70
    xor $71                                       ; $634e: $ee $71
    rst $18                                       ; $6350: $df
    ld a, [hl-]                                   ; $6351: $3a
    add hl, sp                                    ; $6352: $39
    ld a, [hl-]                                   ; $6353: $3a
    dec e                                         ; $6354: $1d
    adc e                                         ; $6355: $8b
    ld [hl], d                                    ; $6356: $72
    ld l, b                                       ; $6357: $68
    ld [hl], d                                    ; $6358: $72
    ld l, c                                       ; $6359: $69
    jr nc, jr_0bd_63be                            ; $635a: $30 $62

    ld bc, $83c8                                  ; $635c: $01 $c8 $83
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    ld d, b                                       ; $6361: $50
    jr nc, jr_0bd_63b4                            ; $6362: $30 $50

    jr nc, jr_0bd_63a6                            ; $6364: $30 $40

    jr nz, jr_0bd_6388                            ; $6366: $20 $20

    ld h, b                                       ; $6368: $60
    ld a, [bc]                                    ; $6369: $0a
    add b                                         ; $636a: $80
    ld b, b                                       ; $636b: $40
    nop                                           ; $636c: $00
    add b                                         ; $636d: $80
    xor h                                         ; $636e: $ac
    dec bc                                        ; $636f: $0b
    adc b                                         ; $6370: $88
    or c                                          ; $6371: $b1
    inc bc                                        ; $6372: $03
    dec h                                         ; $6373: $25
    ld [hl+], a                                   ; $6374: $22
    nop                                           ; $6375: $00
    xor e                                         ; $6376: $ab
    or a                                          ; $6377: $b7
    inc bc                                        ; $6378: $03
    add $00                                       ; $6379: $c6 $00
    ld a, [hl+]                                   ; $637b: $2a
    ld sp, $3204                                  ; $637c: $31 $04 $32
    add d                                         ; $637f: $82
    pop bc                                        ; $6380: $c1
    inc bc                                        ; $6381: $03
    ld b, h                                       ; $6382: $44
    nop                                           ; $6383: $00
    stop                                          ; $6384: $10 $00
    ld b, c                                       ; $6386: $41
    ld a, [de]                                    ; $6387: $1a

jr_0bd_6388:
    nop                                           ; $6388: $00
    xor h                                         ; $6389: $ac
    jr z, jr_0bd_638c                             ; $638a: $28 $00

jr_0bd_638c:
    db $db                                        ; $638c: $db
    dec [hl]                                      ; $638d: $35
    db $10                                        ; $638e: $10
    ld c, b                                       ; $638f: $48
    xor l                                         ; $6390: $ad
    inc bc                                        ; $6391: $03
    ld d, c                                       ; $6392: $51
    nop                                           ; $6393: $00
    rst $00                                       ; $6394: $c7
    ld a, [hl+]                                   ; $6395: $2a
    nop                                           ; $6396: $00
    xor l                                         ; $6397: $ad
    adc l                                         ; $6398: $8d
    dec a                                         ; $6399: $3d
    jr nz, @+$23                                  ; $639a: $20 $21

    ld bc, $e7c8                                  ; $639c: $01 $c8 $e7
    ld [bc], a                                    ; $639f: $02
    dec h                                         ; $63a0: $25
    and b                                         ; $63a1: $a0
    rst $18                                       ; $63a2: $df
    dec b                                         ; $63a3: $05
    ld b, b                                       ; $63a4: $40
    db $db                                        ; $63a5: $db

jr_0bd_63a6:
    inc b                                         ; $63a6: $04
    jr nz, @+$01                                  ; $63a7: $20 $ff

    add hl, bc                                    ; $63a9: $09
    rst $38                                       ; $63aa: $ff
    adc d                                         ; $63ab: $8a
    xor b                                         ; $63ac: $a8
    push hl                                       ; $63ad: $e5
    dec b                                         ; $63ae: $05
    ld sp, $1213                                  ; $63af: $31 $13 $12
    add l                                         ; $63b2: $85
    rst $28                                       ; $63b3: $ef

jr_0bd_63b4:
    dec b                                         ; $63b4: $05
    inc h                                         ; $63b5: $24
    rst $38                                       ; $63b6: $ff
    adc b                                         ; $63b7: $88
    adc b                                         ; $63b8: $88
    rst $00                                       ; $63b9: $c7
    ld [bc], a                                    ; $63ba: $02
    ld de, $abff                                  ; $63bb: $11 $ff $ab

jr_0bd_63be:
    dec c                                         ; $63be: $0d
    inc bc                                        ; $63bf: $03
    add $ff                                       ; $63c0: $c6 $ff
    ld a, [hl+]                                   ; $63c2: $2a
    inc b                                         ; $63c3: $04
    rst $38                                       ; $63c4: $ff
    rst $30                                       ; $63c5: $f7
    rst $38                                       ; $63c6: $ff
    db $dd                                        ; $63c7: $dd
    rst $38                                       ; $63c8: $ff
    ld bc, $8208                                  ; $63c9: $01 $08 $82
    rst $38                                       ; $63cc: $ff
    nop                                           ; $63cd: $00
    ld hl, $45ff                                  ; $63ce: $21 $ff $45
    rst $38                                       ; $63d1: $ff
    xor a                                         ; $63d2: $af
    rst $38                                       ; $63d3: $ff
    or a                                          ; $63d4: $b7
    rst $38                                       ; $63d5: $ff
    ld de, $ffed                                  ; $63d6: $11 $ed $ff
    ld a, a                                       ; $63d9: $7f
    db $10                                        ; $63da: $10
    db $10                                        ; $63db: $10
    add hl, hl                                    ; $63dc: $29
    rst $38                                       ; $63dd: $ff
    ld c, l                                       ; $63de: $4d
    ld h, $00                                     ; $63df: $26 $00
    inc b                                         ; $63e1: $04
    sub $ff                                       ; $63e2: $d6 $ff
    db $fd                                        ; $63e4: $fd
    rst $38                                       ; $63e5: $ff
    cp l                                          ; $63e6: $bd
    ld [hl+], a                                   ; $63e7: $22
    ld [$ff7d], sp                                ; $63e8: $08 $7d $ff
    nop                                           ; $63eb: $00
    rst $18                                       ; $63ec: $df
    rst $38                                       ; $63ed: $ff
    xor $ff                                       ; $63ee: $ee $ff
    cp e                                          ; $63f0: $bb
    rst $38                                       ; $63f1: $ff
    ld d, l                                       ; $63f2: $55
    rst $38                                       ; $63f3: $ff
    ld b, h                                       ; $63f4: $44
    sbc d                                         ; $63f5: $9a
    ld [hl], $06                                  ; $63f6: $36 $06
    rst $30                                       ; $63f8: $f7
    rst $38                                       ; $63f9: $ff
    ld a, [hl]                                    ; $63fa: $7e
    add hl, sp                                    ; $63fb: $39
    nop                                           ; $63fc: $00
    rst $28                                       ; $63fd: $ef
    rst $38                                       ; $63fe: $ff
    ld b, l                                       ; $63ff: $45

Call_0bd_6400:
    cp d                                          ; $6400: $ba
    stop                                          ; $6401: $10 $00
    adc b                                         ; $6403: $88
    rst $38                                       ; $6404: $ff
    ld b, h                                       ; $6405: $44
    ld b, e                                       ; $6406: $43
    nop                                           ; $6407: $00
    cp a                                          ; $6408: $bf
    add hl, hl                                    ; $6409: $29
    nop                                           ; $640a: $00
    adc h                                         ; $640b: $8c
    db $10                                        ; $640c: $10
    ld [$ff49], sp                                ; $640d: $08 $49 $ff
    sub d                                         ; $6410: $92
    ld a, e                                       ; $6411: $7b
    nop                                           ; $6412: $00
    jp nc, $fa01                                  ; $6413: $d2 $01 $fa

    and b                                         ; $6416: $a0
    nop                                           ; $6417: $00
    ld e, a                                       ; $6418: $5f
    add hl, bc                                    ; $6419: $09
    or $d1                                        ; $641a: $f6 $d1
    ld l, $24                                     ; $641c: $2e $24
    db $db                                        ; $641e: $db
    xor e                                         ; $641f: $ab
    db $10                                        ; $6420: $10
    ld d, h                                       ; $6421: $54
    db $dd                                        ; $6422: $dd
    ld [hl+], a                                   ; $6423: $22
    db $10                                        ; $6424: $10
    ld b, $ef                                     ; $6425: $06 $ef
    add h                                         ; $6427: $84
    ld a, e                                       ; $6428: $7b
    ld hl, $de00                                  ; $6429: $21 $00 $de
    sub c                                         ; $642c: $91
    ld l, [hl]                                    ; $642d: $6e
    ld h, h                                       ; $642e: $64
    sbc e                                         ; $642f: $9b
    xor [hl]                                      ; $6430: $ae
    ld d, c                                       ; $6431: $51
    ld [hl], a                                    ; $6432: $77
    nop                                           ; $6433: $00
    adc b                                         ; $6434: $88
    db $10                                        ; $6435: $10
    rst $28                                       ; $6436: $ef
    add b                                         ; $6437: $80
    ld a, a                                       ; $6438: $7f
    ld hl, $04de                                  ; $6439: $21 $de $04
    nop                                           ; $643c: $00
    ei                                            ; $643d: $fb
    ld d, c                                       ; $643e: $51
    xor [hl]                                      ; $643f: $ae
    ld c, d                                       ; $6440: $4a
    or l                                          ; $6441: $b5
    ld a, [hl+]                                   ; $6442: $2a
    push de                                       ; $6443: $d5
    db $dd                                        ; $6444: $dd
    ld d, c                                       ; $6445: $51
    ld [hl+], a                                   ; $6446: $22
    dec d                                         ; $6447: $15
    ld c, $de                                     ; $6448: $0e $de
    rla                                           ; $644a: $17
    ld b, $2d                                     ; $644b: $06 $2d
    nop                                           ; $644d: $00
    sub d                                         ; $644e: $92
    xor e                                         ; $644f: $ab
    inc d                                         ; $6450: $14
    ret nc                                        ; $6451: $d0

    sub e                                         ; $6452: $93
    ld c, $10                                     ; $6453: $0e $10
    ld e, b                                       ; $6455: $58
    db $ed                                        ; $6456: $ed
    daa                                           ; $6457: $27
    dec b                                         ; $6458: $05
    ei                                            ; $6459: $fb
    nop                                           ; $645a: $00
    ld l, $00                                     ; $645b: $2e $00
    ld b, b                                       ; $645d: $40
    adc c                                         ; $645e: $89
    xor h                                         ; $645f: $ac
    ld hl, $4c83                                  ; $6460: $21 $83 $4c
    adc h                                         ; $6463: $8c
    ld [de], a                                    ; $6464: $12
    ld b, $89                                     ; $6465: $06 $89
    nop                                           ; $6467: $00
    adc d                                         ; $6468: $8a
    dec h                                         ; $6469: $25
    ld b, $99                                     ; $646a: $06 $99
    add l                                         ; $646c: $85
    ld c, d                                       ; $646d: $4a
    ld b, $89                                     ; $646e: $06 $89
    nop                                           ; $6470: $00
    db $e3                                        ; $6471: $e3
    db $e3                                        ; $6472: $e3
    ld h, e                                       ; $6473: $63
    ld h, e                                       ; $6474: $63
    ld b, d                                       ; $6475: $42
    ld b, d                                       ; $6476: $42
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    daa                                           ; $647a: $27
    ld b, b                                       ; $647b: $40
    dec de                                        ; $647c: $1b
    ld h, h                                       ; $647d: $64
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    ld b, $39                                     ; $6480: $06 $39
    nop                                           ; $6482: $00
    rst $30                                       ; $6483: $f7
    rst $30                                       ; $6484: $f7
    db $e3                                        ; $6485: $e3
    db $e3                                        ; $6486: $e3
    ld [hl+], a                                   ; $6487: $22
    ld [hl+], a                                   ; $6488: $22
    nop                                           ; $6489: $00
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    add hl, sp                                    ; $648c: $39
    nop                                           ; $648d: $00
    ld a, h                                       ; $648e: $7c
    add e                                         ; $648f: $83
    ld bc, $3102                                  ; $6490: $01 $02 $31
    adc $00                                       ; $6493: $ce $00
    di                                            ; $6495: $f3
    di                                            ; $6496: $f3
    pop hl                                        ; $6497: $e1
    pop hl                                        ; $6498: $e1
    add c                                         ; $6499: $81
    add c                                         ; $649a: $81
    nop                                           ; $649b: $00
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    inc e                                         ; $649e: $1c
    nop                                           ; $649f: $00
    jr nc, jr_0bd_64f1                            ; $64a0: $30 $4f

    ld bc, $003a                                  ; $64a2: $01 $3a $00
    cpl                                           ; $64a5: $2f
    nop                                           ; $64a6: $00
    rst $00                                       ; $64a7: $c7
    xor b                                         ; $64a8: $a8
    ret                                           ; $64a9: $c9


    add h                                         ; $64aa: $84
    add h                                         ; $64ab: $84
    rlc b                                         ; $64ac: $cb $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    rst $20                                       ; $64b0: $e7
    nop                                           ; $64b1: $00
    ld [hl], a                                    ; $64b2: $77
    adc b                                         ; $64b3: $88
    adc b                                         ; $64b4: $88
    ld [hl], a                                    ; $64b5: $77
    add hl, de                                    ; $64b6: $19
    and $00                                       ; $64b7: $e6 $00
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $00                                       ; $64bb: $c7

jr_0bd_64bc:
    rst $00                                       ; $64bc: $c7
    push bc                                       ; $64bd: $c5
    push bc                                       ; $64be: $c5
    inc b                                         ; $64bf: $04
    inc b                                         ; $64c0: $04
    nop                                           ; $64c1: $00
    add hl, sp                                    ; $64c2: $39
    nop                                           ; $64c3: $00
    cp l                                          ; $64c4: $bd
    ld b, d                                       ; $64c5: $42
    call nz, $c03b                                ; $64c6: $c4 $3b $c0
    ccf                                           ; $64c9: $3f
    nop                                           ; $64ca: $00
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $28                                       ; $64cd: $ef
    rst $28                                       ; $64ce: $ef
    add $c6                                       ; $64cf: $c6 $c6
    ld b, b                                       ; $64d1: $40
    ld b, b                                       ; $64d2: $40
    ld a, [bc]                                    ; $64d3: $0a
    adc $00                                       ; $64d4: $ce $00
    sbc b                                         ; $64d6: $98
    ld h, [hl]                                    ; $64d7: $66
    db $10                                        ; $64d8: $10
    rlca                                          ; $64d9: $07
    xor $20                                       ; $64da: $ee $20
    ld [$40c7], sp                                ; $64dc: $08 $c7 $40
    rst $00                                       ; $64df: $c7
    jr nz, jr_0bd_64ea                            ; $64e0: $20 $08

    ld b, c                                       ; $64e2: $41
    ld a, $78                                     ; $64e3: $3e $78
    rlca                                          ; $64e5: $07
    ld h, c                                       ; $64e6: $61
    ld e, $02                                     ; $64e7: $1e $02
    rst $18                                       ; $64e9: $df

jr_0bd_64ea:
    rst $18                                       ; $64ea: $df
    rst $08                                       ; $64eb: $cf
    rst $18                                       ; $64ec: $df
    rst $00                                       ; $64ed: $c7
    rst $18                                       ; $64ee: $df
    inc bc                                        ; $64ef: $03
    nop                                           ; $64f0: $00

jr_0bd_64f1:
    rst $00                                       ; $64f1: $c7
    nop                                           ; $64f2: $00
    sbc e                                         ; $64f3: $9b
    and a                                         ; $64f4: $a7
    dec b                                         ; $64f5: $05
    ld l, c                                       ; $64f6: $69
    dec c                                         ; $64f7: $0d
    ld [hl], c                                    ; $64f8: $71
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    nop                                           ; $64fb: $00
    cp $f1                                        ; $64fc: $fe $f1
    ldh [$d9], a                                  ; $64fe: $e0 $d9
    add c                                         ; $6500: $81
    db $e4                                        ; $6501: $e4
    add c                                         ; $6502: $81
    ld d, d                                       ; $6503: $52
    ld [bc], a                                    ; $6504: $02
    nop                                           ; $6505: $00
    ld bc, $2a44                                  ; $6506: $01 $44 $2a
    ld b, d                                       ; $6509: $42
    inc l                                         ; $650a: $2c
    ld d, h                                       ; $650b: $54
    ld bc, $000f                                  ; $650c: $01 $0f $00
    adc a                                         ; $650f: $8f
    ld [hl], e                                    ; $6510: $73
    add e                                         ; $6511: $83
    ld a, l                                       ; $6512: $7d
    add c                                         ; $6513: $81
    ld d, [hl]                                    ; $6514: $56
    nop                                           ; $6515: $00
    add b                                         ; $6516: $80
    inc c                                         ; $6517: $0c

jr_0bd_6518:
    ld de, $2166                                  ; $6518: $11 $66 $21
    ld d, [hl]                                    ; $651b: $56
    ld h, h                                       ; $651c: $64
    ld de, $1169                                  ; $651d: $11 $69 $11
    cp $fe                                        ; $6520: $fe $fe
    call z, Call_000_10e0                         ; $6522: $cc $e0 $10
    ld de, $8320                                  ; $6525: $11 $20 $83
    add e                                         ; $6528: $83
    sbc d                                         ; $6529: $9a
    dec e                                         ; $652a: $1d
    ld a, [de]                                    ; $652b: $1a

jr_0bd_652c:
    jr jr_0bd_652c                                ; $652c: $18 $fe

    cp $26                                        ; $652e: $fe $26
    ld l, b                                       ; $6530: $68
    ld l, b                                       ; $6531: $68
    db $10                                        ; $6532: $10
    jr z, jr_0bd_64bc                             ; $6533: $28 $87

    add a                                         ; $6535: $87
    or h                                          ; $6536: $b4
    ld c, l                                       ; $6537: $4d
    and h                                         ; $6538: $a4
    add hl, bc                                    ; $6539: $09
    ccf                                           ; $653a: $3f
    inc c                                         ; $653b: $0c

Jump_0bd_653c:
    ccf                                           ; $653c: $3f
    rrca                                          ; $653d: $0f
    rrca                                          ; $653e: $0f
    ld bc, $22af                                  ; $653f: $01 $af $22
    or h                                          ; $6542: $b4
    add hl, bc                                    ; $6543: $09
    jp $e4c3                                      ; $6544: $c3 $c3 $e4


    ld c, $28                                     ; $6547: $0e $28
    ld d, b                                       ; $6549: $50
    jr c, jr_0bd_6518                             ; $654a: $38 $cc

    add hl, bc                                    ; $654c: $09
    ld a, b                                       ; $654d: $78
    ld a, b                                       ; $654e: $78
    db $10                                        ; $654f: $10
    ld e, b                                       ; $6550: $58
    ld a, a                                       ; $6551: $7f

jr_0bd_6552:
    ld a, a                                       ; $6552: $7f
    inc h                                         ; $6553: $24
    inc e                                         ; $6554: $1c
    inc e                                         ; $6555: $1c
    jr nz, @+$4a                                  ; $6556: $20 $48

    db $e4                                        ; $6558: $e4
    db $e4                                        ; $6559: $e4
    jr nc, jr_0bd_65a4                            ; $655a: $30 $48

    sbc [hl]                                      ; $655c: $9e
    sbc [hl]                                      ; $655d: $9e
    ld hl, $0808                                  ; $655e: $21 $08 $08
    sub b                                         ; $6561: $90
    jr c, @-$3f                                   ; $6562: $38 $bf

    cp a                                          ; $6564: $bf
    rrca                                          ; $6565: $0f
    rrca                                          ; $6566: $0f
    and b                                         ; $6567: $a0
    jr c, jr_0bd_659a                             ; $6568: $38 $30

    rst $20                                       ; $656a: $e7
    rst $20                                       ; $656b: $e7
    inc [hl]                                      ; $656c: $34
    add hl, bc                                    ; $656d: $09
    or b                                          ; $656e: $b0
    jr z, jr_0bd_6552                             ; $656f: $28 $e1

    pop hl                                        ; $6571: $e1
    ret nz                                        ; $6572: $c0

    ret nz                                        ; $6573: $c0

    add b                                         ; $6574: $80
    ld c, b                                       ; $6575: $48
    ld l, $8e                                     ; $6576: $2e $8e
    ld d, c                                       ; $6578: $51
    inc bc                                        ; $6579: $03
    adc h                                         ; $657a: $8c
    ld b, $89                                     ; $657b: $06 $89
    add h                                         ; $657d: $84
    nop                                           ; $657e: $00
    ld e, e                                       ; $657f: $5b
    ld [bc], a                                    ; $6580: $02
    sub l                                         ; $6581: $95
    nop                                           ; $6582: $00
    add a                                         ; $6583: $87
    add b                                         ; $6584: $80
    ld c, d                                       ; $6585: $4a
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    add c                                         ; $6588: $81
    ld bc, $015e                                  ; $6589: $01 $5e $01
    ld h, $03                                     ; $658c: $26 $03
    inc b                                         ; $658e: $04
    ld bc, $2600                                  ; $658f: $01 $00 $26
    ld [bc], a                                    ; $6592: $02
    ld h, l                                       ; $6593: $65
    ld [bc], a                                    ; $6594: $02
    dec a                                         ; $6595: $3d
    rlca                                          ; $6596: $07
    ld e, b                                       ; $6597: $58
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00

jr_0bd_659a:
    rrca                                          ; $659a: $0f
    db $fd                                        ; $659b: $fd
    ld [bc], a                                    ; $659c: $02
    add hl, sp                                    ; $659d: $39
    nop                                           ; $659e: $00
    jr nz, @+$1b                                  ; $659f: $20 $19

    add hl, sp                                    ; $65a1: $39
    nop                                           ; $65a2: $00
    nop                                           ; $65a3: $00

jr_0bd_65a4:
    ld de, $1128                                  ; $65a4: $11 $28 $11
    xor $fe                                       ; $65a7: $ee $fe
    ld bc, $5041                                  ; $65a9: $01 $41 $50
    cp [hl]                                       ; $65ac: $be
    db $ed                                        ; $65ad: $ed
    dec b                                         ; $65ae: $05
    dec bc                                        ; $65af: $0b
    jp nz, Jump_000_0304                          ; $65b0: $c2 $04 $03

    nop                                           ; $65b3: $00
    rlca                                          ; $65b4: $07
    nop                                           ; $65b5: $00
    ld b, b                                       ; $65b6: $40
    add hl, bc                                    ; $65b7: $09
    ld h, h                                       ; $65b8: $64
    ld b, $1a                                     ; $65b9: $06 $1a
    ld a, a                                       ; $65bb: $7f
    add b                                         ; $65bc: $80
    ld [$08f7], sp                                ; $65bd: $08 $f7 $08
    db $10                                        ; $65c0: $10
    rst $30                                       ; $65c1: $f7
    cp [hl]                                       ; $65c2: $be
    ld b, c                                       ; $65c3: $41
    sub h                                         ; $65c4: $94
    dec b                                         ; $65c5: $05
    push af                                       ; $65c6: $f5
    ld [$0056], sp                                ; $65c7: $08 $56 $00
    nop                                           ; $65ca: $00
    ld a, [bc]                                    ; $65cb: $0a
    or $09                                        ; $65cc: $f6 $09
    ld b, b                                       ; $65ce: $40
    cp a                                          ; $65cf: $bf
    ld b, b                                       ; $65d0: $40
    cp a                                          ; $65d1: $bf
    db $f4                                        ; $65d2: $f4
    ld l, b                                       ; $65d3: $68
    dec bc                                        ; $65d4: $0b
    sbc [hl]                                      ; $65d5: $9e
    dec c                                         ; $65d6: $0d
    sbc h                                         ; $65d7: $9c
    inc b                                         ; $65d8: $04
    jp nz, Jump_000_07bb                          ; $65d9: $c2 $bb $07

    db $fc                                        ; $65dc: $fc
    nop                                           ; $65dd: $00
    cp d                                          ; $65de: $ba
    or b                                          ; $65df: $b0
    ld e, $05                                     ; $65e0: $1e $05
    sub h                                         ; $65e2: $94
    and $07                                       ; $65e3: $e6 $07
    inc de                                        ; $65e5: $13
    ld [bc], a                                    ; $65e6: $02
    ld [hl], h                                    ; $65e7: $74
    dec bc                                        ; $65e8: $0b
    ld b, c                                       ; $65e9: $41
    cp [hl]                                       ; $65ea: $be
    ld a, [bc]                                    ; $65eb: $0a
    ld b, c                                       ; $65ec: $41
    ld a, $77                                     ; $65ed: $3e $77
    ld [$0600], sp                                ; $65ef: $08 $00 $06
    ld e, b                                       ; $65f2: $58
    pop af                                        ; $65f3: $f1
    ld b, $42                                     ; $65f4: $06 $42
    add h                                         ; $65f6: $84
    or h                                          ; $65f7: $b4
    ld a, [bc]                                    ; $65f8: $0a
    db $fc                                        ; $65f9: $fc
    db $fc                                        ; $65fa: $fc
    jr jr_0bd_6615                                ; $65fb: $18 $18

    ret c                                         ; $65fd: $d8

    ld h, $04                                     ; $65fe: $26 $04
    rst $38                                       ; $6600: $ff
    db $10                                        ; $6601: $10
    rst $38                                       ; $6602: $ff
    sub e                                         ; $6603: $93
    sub e                                         ; $6604: $93
    ld c, $39                                     ; $6605: $0e $39
    nop                                           ; $6607: $00
    jr nz, jr_0bd_660b                            ; $6608: $20 $01

    ld l, a                                       ; $660a: $6f

jr_0bd_660b:
    nop                                           ; $660b: $00
    dec c                                         ; $660c: $0d
    ld [hl], c                                    ; $660d: $71
    nop                                           ; $660e: $00
    ld l, [hl]                                    ; $660f: $6e
    inc b                                         ; $6610: $04
    ld l, b                                       ; $6611: $68
    nop                                           ; $6612: $00
    ld h, [hl]                                    ; $6613: $66
    db $10                                        ; $6614: $10

jr_0bd_6615:
    inc b                                         ; $6615: $04
    ld [$1200], sp                                ; $6616: $08 $00 $12
    ld [bc], a                                    ; $6619: $02
    inc b                                         ; $661a: $04
    ld l, d                                       ; $661b: $6a
    ld b, h                                       ; $661c: $44
    ld a, [bc]                                    ; $661d: $0a
    jr nz, jr_0bd_6620                            ; $661e: $20 $00

jr_0bd_6620:
    inc l                                         ; $6620: $2c
    sbc d                                         ; $6621: $9a
    add hl, bc                                    ; $6622: $09
    nop                                           ; $6623: $00
    ld c, [hl]                                    ; $6624: $4e
    nop                                           ; $6625: $00
    jr z, jr_0bd_6628                             ; $6626: $28 $00

jr_0bd_6628:
    ld bc, $1204                                  ; $6628: $01 $04 $12
    ld h, l                                       ; $662b: $65
    ld sp, $1346                                  ; $662c: $31 $46 $13
    inc h                                         ; $662f: $24
    sbc d                                         ; $6630: $9a
    add hl, bc                                    ; $6631: $09
    ld [bc], a                                    ; $6632: $02
    ld bc, $0256                                  ; $6633: $01 $56 $02
    ld sp, $5200                                  ; $6636: $31 $00 $52
    and b                                         ; $6639: $a0
    add hl, sp                                    ; $663a: $39
    rst $08                                       ; $663b: $cf
    ld h, b                                       ; $663c: $60
    rst $08                                       ; $663d: $cf
    ld h, h                                       ; $663e: $64
    add hl, bc                                    ; $663f: $09
    ld h, b                                       ; $6640: $60
    ld e, d                                       ; $6641: $5a
    nop                                           ; $6642: $00
    adc h                                         ; $6643: $8c
    nop                                           ; $6644: $00
    inc de                                        ; $6645: $13
    ld [bc], a                                    ; $6646: $02
    nop                                           ; $6647: $00
    ld a, l                                       ; $6648: $7d
    inc e                                         ; $6649: $1c
    inc hl                                        ; $664a: $23
    ld [de], a                                    ; $664b: $12
    ld l, l                                       ; $664c: $6d
    ld [de], a                                    ; $664d: $12
    dec l                                         ; $664e: $2d
    ld [bc], a                                    ; $664f: $02
    inc b                                         ; $6650: $04
    ld e, l                                       ; $6651: $5d
    ld c, $31                                     ; $6652: $0e $31
    ld [bc], a                                    ; $6654: $02
    dec e                                         ; $6655: $1d
    ret nc                                        ; $6656: $d0

    add hl, hl                                    ; $6657: $29
    db $fd                                        ; $6658: $fd
    db $fd                                        ; $6659: $fd
    ld [bc], a                                    ; $665a: $02
    db $fc                                        ; $665b: $fc
    db $fc                                        ; $665c: $fc
    ldh [$e0], a                                  ; $665d: $e0 $e0
    ret nz                                        ; $665f: $c0

    ret nz                                        ; $6660: $c0

jr_0bd_6661:
    ret c                                         ; $6661: $d8

    add hl, bc                                    ; $6662: $09
    and b                                         ; $6663: $a0
    jr nz, @-$5e                                  ; $6664: $20 $a0

    add b                                         ; $6666: $80
    cp h                                          ; $6667: $bc
    inc bc                                        ; $6668: $03
    inc bc                                        ; $6669: $03
    inc bc                                        ; $666a: $03
    rlca                                          ; $666b: $07
    rlca                                          ; $666c: $07
    inc b                                         ; $666d: $04
    inc de                                        ; $666e: $13
    inc b                                         ; $666f: $04
    ld e, c                                       ; $6670: $59
    ld e, c                                       ; $6671: $59
    ld [hl], d                                    ; $6672: $72
    rra                                           ; $6673: $1f
    cp [hl]                                       ; $6674: $be
    cp [hl]                                       ; $6675: $be
    ld b, [hl]                                    ; $6676: $46
    add hl, bc                                    ; $6677: $09
    ldh a, [rNR24]                                ; $6678: $f0 $19
    ld [$0f0f], sp                                ; $667a: $08 $0f $0f
    rlca                                          ; $667d: $07
    rlca                                          ; $667e: $07
    ld [hl], c                                    ; $667f: $71
    inc b                                         ; $6680: $04
    nop                                           ; $6681: $00
    ret nz                                        ; $6682: $c0

    ret nz                                        ; $6683: $c0

    add b                                         ; $6684: $80
    jr z, jr_0bd_6687                             ; $6685: $28 $00

jr_0bd_6687:
    ld h, h                                       ; $6687: $64
    nop                                           ; $6688: $00
    ld b, [hl]                                    ; $6689: $46
    nop                                           ; $668a: $00
    db $e4                                        ; $668b: $e4
    nop                                           ; $668c: $00
    ld l, [hl]                                    ; $668d: $6e
    and b                                         ; $668e: $a0
    add [hl]                                      ; $668f: $86
    rlca                                          ; $6690: $07
    cp a                                          ; $6691: $bf
    db $f4                                        ; $6692: $f4
    ld b, $04                                     ; $6693: $06 $04
    nop                                           ; $6695: $00
    ld b, $00                                     ; $6696: $06 $00

jr_0bd_6698:
    inc c                                         ; $6698: $0c
    and b                                         ; $6699: $a0
    inc e                                         ; $669a: $1c
    ld bc, $200f                                  ; $669b: $01 $0f $20
    ld bc, $0006                                  ; $669e: $01 $06 $00

jr_0bd_66a1:
    nop                                           ; $66a1: $00
    db $10                                        ; $66a2: $10
    ld [$eba8], sp                                ; $66a3: $08 $a8 $eb
    inc bc                                        ; $66a6: $03
    jr jr_0bd_6698                                ; $66a7: $18 $ef

    inc bc                                        ; $66a9: $03
    jr c, jr_0bd_66b2                             ; $66aa: $38 $06

    nop                                           ; $66ac: $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    ld hl, $0400                                  ; $66af: $21 $00 $04

jr_0bd_66b2:
    ld [hl], d                                    ; $66b2: $72
    nop                                           ; $66b3: $00
    nop                                           ; $66b4: $00
    inc d                                         ; $66b5: $14
    nop                                           ; $66b6: $00
    xor b                                         ; $66b7: $a8
    inc d                                         ; $66b8: $14
    nop                                           ; $66b9: $00
    jp Jump_000_183c                              ; $66ba: $c3 $3c $18


    ld h, a                                       ; $66bd: $67
    and b                                         ; $66be: $a0
    ld e, a                                       ; $66bf: $5f
    jr nz, jr_0bd_66a1                            ; $66c0: $20 $df

    nop                                           ; $66c2: $00
    ld b, b                                       ; $66c3: $40
    cp a                                          ; $66c4: $bf
    ld bc, $0200                                  ; $66c5: $01 $00 $02
    ld bc, $0314                                  ; $66c8: $01 $14 $03
    nop                                           ; $66cb: $00
    jr z, jr_0bd_66e1                             ; $66cc: $28 $13

    ld c, b                                       ; $66ce: $48
    ld sp, $f102                                  ; $66cf: $31 $02 $f1
    call nc, $8023                                ; $66d2: $d4 $23 $80
    ldh a, [rTIMA]                                ; $66d5: $f0 $05
    nop                                           ; $66d7: $00

jr_0bd_66d8:
    jr nc, jr_0bd_66da                            ; $66d8: $30 $00

jr_0bd_66da:
    inc h                                         ; $66da: $24
    jr jr_0bd_6661                                ; $66db: $18 $84

    jr c, jr_0bd_66df                             ; $66dd: $38 $00

jr_0bd_66df:
    ld b, d                                       ; $66df: $42
    sbc h                                         ; $66e0: $9c

jr_0bd_66e1:
    ld d, b                                       ; $66e1: $50
    xor h                                         ; $66e2: $ac
    add d                                         ; $66e3: $82
    ld a, h                                       ; $66e4: $7c
    ld bc, $00fe                                  ; $66e5: $01 $fe $00

jr_0bd_66e8:
    stop                                          ; $66e8: $10 $00
    jr nz, jr_0bd_66fc                            ; $66ea: $20 $10

    jr nz, jr_0bd_66fe                            ; $66ec: $20 $10

    jr z, jr_0bd_6700                             ; $66ee: $28 $10

    nop                                           ; $66f0: $00
    ld b, b                                       ; $66f1: $40
    jr c, jr_0bd_66f8                             ; $66f2: $38 $04

    ld a, b                                       ; $66f4: $78
    adc d                                         ; $66f5: $8a
    ld [hl], b                                    ; $66f6: $70
    inc b                                         ; $66f7: $04

jr_0bd_66f8:
    ld a, e                                       ; $66f8: $7b
    ret nz                                        ; $66f9: $c0

    sbc $04                                       ; $66fa: $de $04

jr_0bd_66fc:
    pop hl                                        ; $66fc: $e1
    inc b                                         ; $66fd: $04

jr_0bd_66fe:
    ld h, b                                       ; $66fe: $60
    add b                                         ; $66ff: $80

jr_0bd_6700:
    inc de                                        ; $6700: $13
    ldh [rDIV], a                                 ; $6701: $e0 $04
    di                                            ; $6703: $f3
    inc b                                         ; $6704: $04
    ld d, b                                       ; $6705: $50
    and e                                         ; $6706: $a3
    jr nz, jr_0bd_66e8                            ; $6707: $20 $df

    nop                                           ; $6709: $00
    ld c, d                                       ; $670a: $4a
    inc b                                         ; $670b: $04
    and d                                         ; $670c: $a2
    ld b, c                                       ; $670d: $41
    ld [bc], a                                    ; $670e: $02
    nop                                           ; $670f: $00
    ldh [rNR12], a                                ; $6710: $e0 $12
    pop hl                                        ; $6712: $e1
    inc d                                         ; $6713: $14
    pop hl                                        ; $6714: $e1
    ld [hl], a                                    ; $6715: $77
    inc bc                                        ; $6716: $03
    rst $38                                       ; $6717: $ff
    nop                                           ; $6718: $00
    ret nz                                        ; $6719: $c0

    nop                                           ; $671a: $00
    inc hl                                        ; $671b: $23
    ret nz                                        ; $671c: $c0

jr_0bd_671d:
    inc h                                         ; $671d: $24
    jp $e300                                      ; $671e: $c3 $00 $e3


    jr nc, jr_0bd_672b                            ; $6721: $30 $08

    jp $2760                                      ; $6723: $c3 $60 $27


    ld l, h                                       ; $6726: $6c
    inc b                                         ; $6727: $04
    inc h                                         ; $6728: $24
    jr jr_0bd_672b                                ; $6729: $18 $00

jr_0bd_672b:
    inc a                                         ; $672b: $3c
    ld [bc], a                                    ; $672c: $02
    ld b, d                                       ; $672d: $42
    inc e                                         ; $672e: $1c
    inc b                                         ; $672f: $04
    ld a, b                                       ; $6730: $78
    add d                                         ; $6731: $82
    ld a, h                                       ; $6732: $7c
    ld b, b                                       ; $6733: $40
    dec c                                         ; $6734: $0d
    inc d                                         ; $6735: $14

jr_0bd_6736:
    nop                                           ; $6736: $00

jr_0bd_6737:
    nop                                           ; $6737: $00
    and h                                         ; $6738: $a4
    jr jr_0bd_671d                                ; $6739: $18 $e2

    inc e                                         ; $673b: $1c
    db $10                                        ; $673c: $10
    ld l, [hl]                                    ; $673d: $6e
    ld l, b                                       ; $673e: $68
    jr nz, jr_0bd_66d8                            ; $673f: $20 $97

    add b                                         ; $6741: $80
    ld e, h                                       ; $6742: $5c
    rrca                                          ; $6743: $0f
    scf                                           ; $6744: $37
    dec b                                         ; $6745: $05
    ld a, [de]                                    ; $6746: $1a
    ld bc, $024e                                  ; $6747: $01 $4e $02
    ld bc, $0106                                  ; $674a: $01 $06 $01
    ld e, $02                                     ; $674d: $1e $02
    dec l                                         ; $674f: $2d
    ld b, e                                       ; $6750: $43
    dec c                                         ; $6751: $0d
    ld b, c                                       ; $6752: $41
    nop                                           ; $6753: $00
    cp [hl]                                       ; $6754: $be
    cp b                                          ; $6755: $b8
    ld b, a                                       ; $6756: $47

jr_0bd_6757:
    dec c                                         ; $6757: $0d
    ld a, [c]                                     ; $6758: $f2
    ld [$f8f6], sp                                ; $6759: $08 $f6 $f8
    ld bc, $2206                                  ; $675c: $01 $06 $22
    db $dd                                        ; $675f: $dd
    jr nz, jr_0bd_67b8                            ; $6760: $20 $56

    jr nz, jr_0bd_67b4                            ; $6762: $20 $50

    ret nc                                        ; $6764: $d0

    db $10                                        ; $6765: $10
    ld b, b                                       ; $6766: $40
    ld b, $b2                                     ; $6767: $06 $b2
    rlca                                          ; $6769: $07
    ld c, $80                                     ; $676a: $0e $80
    inc b                                         ; $676c: $04
    nop                                           ; $676d: $00
    add b                                         ; $676e: $80
    ld h, c                                       ; $676f: $61
    ld d, h                                       ; $6770: $54
    add d                                         ; $6771: $82
    sbc a                                         ; $6772: $9f
    nop                                           ; $6773: $00
    jr nz, jr_0bd_6757                            ; $6774: $20 $e1

    dec b                                         ; $6776: $05
    jr c, jr_0bd_6737                             ; $6777: $38 $be

    ld bc, $0230                                  ; $6779: $01 $30 $02
    ld h, b                                       ; $677c: $60
    nop                                           ; $677d: $00
    jr c, jr_0bd_6780                             ; $677e: $38 $00

jr_0bd_6780:
    add hl, hl                                    ; $6780: $29
    ld bc, $2110                                  ; $6781: $01 $10 $21
    ld c, b                                       ; $6784: $48
    ld sp, $0488                                  ; $6785: $31 $88 $04
    ld [hl], c                                    ; $6788: $71
    nop                                           ; $6789: $00
    ld [hl], e                                    ; $678a: $73
    sub b                                         ; $678b: $90
    ld h, a                                       ; $678c: $67
    and b                                         ; $678d: $a0
    dec c                                         ; $678e: $0d
    pop bc                                        ; $678f: $c1
    nop                                           ; $6790: $00
    inc h                                         ; $6791: $24
    ld [hl+], a                                   ; $6792: $22
    pop bc                                        ; $6793: $c1
    sub b                                         ; $6794: $90
    ld [$f304], sp                                ; $6795: $08 $04 $f3
    sub b                                         ; $6798: $90
    ld [$00c3], sp                                ; $6799: $08 $c3 $00
    ld bc, $c334                                  ; $679c: $01 $34 $c3
    db $10                                        ; $679f: $10
    rst $20                                       ; $67a0: $e7
    nop                                           ; $67a1: $00
    rst $20                                       ; $67a2: $e7
    ld [$0002], sp                                ; $67a3: $08 $02 $00
    ld h, b                                       ; $67a6: $60
    db $10                                        ; $67a7: $10
    ld a, [c]                                     ; $67a8: $f2
    rrca                                          ; $67a9: $0f
    pop bc                                        ; $67aa: $c1
    dec b                                         ; $67ab: $05
    stop                                          ; $67ac: $10 $00
    jr z, jr_0bd_67c0                             ; $67ae: $28 $10

    ld c, b                                       ; $67b0: $48
    nop                                           ; $67b1: $00
    jr nc, jr_0bd_6736                            ; $67b2: $30 $82

jr_0bd_67b4:
    ld [hl], b                                    ; $67b4: $70
    ld de, $08e6                                  ; $67b5: $11 $e6 $08

jr_0bd_67b8:
    rst $30                                       ; $67b8: $f7
    adc d                                         ; $67b9: $8a
    nop                                           ; $67ba: $00
    ld d, c                                       ; $67bb: $51
    inc bc                                        ; $67bc: $03
    adc b                                         ; $67bd: $88
    ld [bc], a                                    ; $67be: $02
    adc c                                         ; $67bf: $89

jr_0bd_67c0:
    add b                                         ; $67c0: $80
    ld e, e                                       ; $67c1: $5b
    ld [bc], a                                    ; $67c2: $02
    nop                                           ; $67c3: $00
    sub c                                         ; $67c4: $91
    nop                                           ; $67c5: $00
    add d                                         ; $67c6: $82
    add d                                         ; $67c7: $82
    ld c, c                                       ; $67c8: $49
    nop                                           ; $67c9: $00
    add c                                         ; $67ca: $81
    ld h, $00                                     ; $67cb: $26 $00
    ld c, c                                       ; $67cd: $49
    inc c                                         ; $67ce: $0c
    ld h, e                                       ; $67cf: $63
    ld h, d                                       ; $67d0: $62
    dec c                                         ; $67d1: $0d
    ld h, $49                                     ; $67d2: $26 $49
    inc l                                         ; $67d4: $2c
    ld bc, $0243                                  ; $67d5: $01 $43 $02
    dec l                                         ; $67d8: $2d
    ld [hl+], a                                   ; $67d9: $22
    ld b, l                                       ; $67da: $45
    nop                                           ; $67db: $00
    ld b, b                                       ; $67dc: $40
    sub c                                         ; $67dd: $91
    ld bc, $7f02                                  ; $67de: $01 $02 $7f
    rst $38                                       ; $67e1: $ff
    push de                                       ; $67e2: $d5
    rst $18                                       ; $67e3: $df
    ld [bc], a                                    ; $67e4: $02
    and [hl]                                      ; $67e5: $a6
    ld e, $05                                     ; $67e6: $1e $05
    ld a, a                                       ; $67e8: $7f
    nop                                           ; $67e9: $00
    ld c, $fe                                     ; $67ea: $0e $fe
    ld [hl], h                                    ; $67ec: $74
    rlca                                          ; $67ed: $07
    rst $38                                       ; $67ee: $ff
    rra                                           ; $67ef: $1f
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    nop                                           ; $67f2: $00
    ld a, [$50ff]                                 ; $67f3: $fa $ff $50
    push af                                       ; $67f6: $f5
    nop                                           ; $67f7: $00
    xor d                                         ; $67f8: $aa
    nop                                           ; $67f9: $00
    ld b, l                                       ; $67fa: $45
    nop                                           ; $67fb: $00
    nop                                           ; $67fc: $00
    or l                                          ; $67fd: $b5
    nop                                           ; $67fe: $00
    ldh a, [rIE]                                  ; $67ff: $f0 $ff
    cp $bf                                        ; $6801: $fe $bf
    rst $38                                       ; $6803: $ff
    ld [bc], a                                    ; $6804: $02
    push de                                       ; $6805: $d5
    rst $38                                       ; $6806: $ff
    and d                                         ; $6807: $a2
    pop af                                        ; $6808: $f1
    nop                                           ; $6809: $00
    jp c, $0709                                   ; $680a: $da $09 $07

    sbc c                                         ; $680d: $99
    add b                                         ; $680e: $80
    ld [hl], c                                    ; $680f: $71
    inc c                                         ; $6810: $0c
    rst $38                                       ; $6811: $ff
    sbc a                                         ; $6812: $9f
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    or $ff                                        ; $6815: $f6 $ff
    pop de                                        ; $6817: $d1
    ld b, $fb                                     ; $6818: $06 $fb
    nop                                           ; $681a: $00
    ld d, [hl]                                    ; $681b: $56
    nop                                           ; $681c: $00
    and e                                         ; $681d: $a3
    add c                                         ; $681e: $81
    inc b                                         ; $681f: $04
    inc bc                                        ; $6820: $03
    inc b                                         ; $6821: $04
    push af                                       ; $6822: $f5
    nop                                           ; $6823: $00
    rst $38                                       ; $6824: $ff

jr_0bd_6825:
    xor d                                         ; $6825: $aa
    ld a, [$e940]                                 ; $6826: $fa $40 $e9
    nop                                           ; $6829: $00
    ld [hl], $00                                  ; $682a: $36 $00
    ld d, b                                       ; $682c: $50
    ld e, e                                       ; $682d: $5b
    sub c                                         ; $682e: $91
    inc b                                         ; $682f: $04
    sbc c                                         ; $6830: $99
    nop                                           ; $6831: $00
    dec b                                         ; $6832: $05
    rst $38                                       ; $6833: $ff
    xor d                                         ; $6834: $aa
    ei                                            ; $6835: $fb
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    ld d, d                                       ; $6838: $52
    nop                                           ; $6839: $00
    push hl                                       ; $683a: $e5
    nop                                           ; $683b: $00
    ld e, d                                       ; $683c: $5a
    nop                                           ; $683d: $00
    ld hl, sp-$01                                 ; $683e: $f8 $ff
    nop                                           ; $6840: $00
    cp $77                                        ; $6841: $fe $77
    rst $38                                       ; $6843: $ff
    call Call_0bd_40ed                            ; $6844: $cd $ed $40
    ld a, [c]                                     ; $6847: $f2
    add b                                         ; $6848: $80
    ld [bc], a                                    ; $6849: $02
    cp l                                          ; $684a: $bd
    nop                                           ; $684b: $00
    ld l, l                                       ; $684c: $6d
    nop                                           ; $684d: $00
    jp nc, $0100                                  ; $684e: $d2 $00 $01

    ld [bc], a                                    ; $6851: $02
    cp a                                          ; $6852: $bf
    inc b                                         ; $6853: $04
    rst $38                                       ; $6854: $ff
    ld d, h                                       ; $6855: $54
    rst $38                                       ; $6856: $ff
    ld [bc], a                                    ; $6857: $02
    or a                                          ; $6858: $b7
    xor b                                         ; $6859: $a8
    inc b                                         ; $685a: $04
    ld a, $00                                     ; $685b: $3e $00
    nop                                           ; $685d: $00
    jp hl                                         ; $685e: $e9


    nop                                           ; $685f: $00
    rlca                                          ; $6860: $07
    rst $38                                       ; $6861: $ff
    ld e, a                                       ; $6862: $5f
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    ld [$fe05], a                                 ; $6865: $ea $05 $fe
    ld h, b                                       ; $6868: $60
    db $fd                                        ; $6869: $fd
    ld b, b                                       ; $686a: $40
    ld hl, sp-$1d                                 ; $686b: $f8 $e3
    ld bc, $70df                                  ; $686d: $01 $df $70
    ld [$3f4a], sp                                ; $6870: $08 $4a $3f
    ld [hl], b                                    ; $6873: $70
    nop                                           ; $6874: $00
    ld a, [bc]                                    ; $6875: $0a
    or l                                          ; $6876: $b5
    adc $05                                       ; $6877: $ce $05
    db $fd                                        ; $6879: $fd
    dec e                                         ; $687a: $1d
    rlca                                          ; $687b: $07
    nop                                           ; $687c: $00
    ld hl, $22ff                                  ; $687d: $21 $ff $22
    ld [hl], b                                    ; $6880: $70
    ld [$ef66], sp                                ; $6881: $08 $66 $ef
    add d                                         ; $6884: $82
    ld b, a                                       ; $6885: $47
    jp hl                                         ; $6886: $e9


    rlca                                          ; $6887: $07
    jr nz, jr_0bd_6825                            ; $6888: $20 $9b

    ld bc, $2070                                  ; $688a: $01 $70 $20
    jr nz, jr_0bd_6909                            ; $688d: $20 $7a

    db $10                                        ; $688f: $10
    or l                                          ; $6890: $b5
    nop                                           ; $6891: $00
    db $10                                        ; $6892: $10
    ld d, a                                       ; $6893: $57
    nop                                           ; $6894: $00

jr_0bd_6895:
    rst $28                                       ; $6895: $ef
    ret nz                                        ; $6896: $c0

    jr @+$5c                                      ; $6897: $18 $5a

    rst $18                                       ; $6899: $df
    nop                                           ; $689a: $00
    or [hl]                                       ; $689b: $b6
    add l                                         ; $689c: $85
    ld l, [hl]                                    ; $689d: $6e
    nop                                           ; $689e: $00
    ld a, a                                       ; $689f: $7f
    ld [bc], a                                    ; $68a0: $02
    rst $08                                       ; $68a1: $cf
    ld [bc], a                                    ; $68a2: $02
    ret nz                                        ; $68a3: $c0

    nop                                           ; $68a4: $00
    db $fd                                        ; $68a5: $fd
    ld d, b                                       ; $68a6: $50
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    push af                                       ; $68aa: $f5
    jr nz, jr_0bd_6895                            ; $68ab: $20 $e8

    ld b, b                                       ; $68ad: $40
    push af                                       ; $68ae: $f5
    ret nz                                        ; $68af: $c0

    rst $38                                       ; $68b0: $ff
    ld d, b                                       ; $68b1: $50
    inc h                                         ; $68b2: $24
    ret nz                                        ; $68b3: $c0

    nop                                           ; $68b4: $00
    rst $38                                       ; $68b5: $ff
    adc e                                         ; $68b6: $8b
    dec b                                         ; $68b7: $05
    ld sp, $40f5                                  ; $68b8: $31 $f5 $40
    cp $00                                        ; $68bb: $fe $00
    nop                                           ; $68bd: $00
    rst $38                                       ; $68be: $ff
    ld h, b                                       ; $68bf: $60
    ld a, [$0080]                                 ; $68c0: $fa $80 $00
    rst $38                                       ; $68c3: $ff
    ld d, b                                       ; $68c4: $50
    add b                                         ; $68c5: $80
    or a                                          ; $68c6: $b7
    dec c                                         ; $68c7: $0d
    and $ef                                       ; $68c8: $e6 $ef
    add h                                         ; $68ca: $84
    sub $00                                       ; $68cb: $d6 $00
    rst $30                                       ; $68cd: $f7
    ld b, b                                       ; $68ce: $40
    inc b                                         ; $68cf: $04
    rst $38                                       ; $68d0: $ff
    ld h, b                                       ; $68d1: $60
    nop                                           ; $68d2: $00
    rst $38                                       ; $68d3: $ff
    add b                                         ; $68d4: $80
    add hl, bc                                    ; $68d5: $09
    ld b, $f8                                     ; $68d6: $06 $f8
    ld a, a                                       ; $68d8: $7f
    nop                                           ; $68d9: $00
    ld a, [hl]                                    ; $68da: $7e
    rlca                                          ; $68db: $07
    cp a                                          ; $68dc: $bf
    add hl, de                                    ; $68dd: $19
    rst $38                                       ; $68de: $ff
    inc d                                         ; $68df: $14
    rst $38                                       ; $68e0: $ff
    ld a, [bc]                                    ; $68e1: $0a
    rst $00                                       ; $68e2: $c7
    ld h, h                                       ; $68e3: $64
    rla                                           ; $68e4: $17
    ld de, $4f06                                  ; $68e5: $11 $06 $4f
    rst $38                                       ; $68e8: $ff
    rst $10                                       ; $68e9: $d7
    or l                                          ; $68ea: $b5
    ld [bc], a                                    ; $68eb: $02
    rst $28                                       ; $68ec: $ef
    ld bc, $0020                                  ; $68ed: $01 $20 $00
    ld d, b                                       ; $68f0: $50
    call nz, $0002                                ; $68f1: $c4 $02 $00
    db $f4                                        ; $68f4: $f4
    db $fd                                        ; $68f5: $fd
    dec c                                         ; $68f6: $0d
    pop af                                        ; $68f7: $f1
    cp $dc                                        ; $68f8: $fe $dc
    ld [bc], a                                    ; $68fa: $02
    ld b, b                                       ; $68fb: $40
    rst $38                                       ; $68fc: $ff
    or d                                          ; $68fd: $b2
    nop                                           ; $68fe: $00
    ldh a, [$f9]                                  ; $68ff: $f0 $f9
    ldh [$e2], a                                  ; $6901: $e0 $e2
    add b                                         ; $6903: $80
    db $ed                                        ; $6904: $ed
    ld b, $00                                     ; $6905: $06 $00
    sbc a                                         ; $6907: $9f
    inc bc                                        ; $6908: $03

jr_0bd_6909:
    rst $38                                       ; $6909: $ff
    dec bc                                        ; $690a: $0b
    ret nz                                        ; $690b: $c0

    nop                                           ; $690c: $00
    ld [hl], b                                    ; $690d: $70
    ld [$0040], sp                                ; $690e: $08 $40 $00
    push af                                       ; $6911: $f5
    ld b, b                                       ; $6912: $40
    add sp, $00                                   ; $6913: $e8 $00
    rst $30                                       ; $6915: $f7
    add b                                         ; $6916: $80
    rst $18                                       ; $6917: $df
    rlca                                          ; $6918: $07
    nop                                           ; $6919: $00
    db $f4                                        ; $691a: $f4
    rst $38                                       ; $691b: $ff
    cp $2f                                        ; $691c: $fe $2f
    rst $38                                       ; $691e: $ff
    sub l                                         ; $691f: $95
    rst $38                                       ; $6920: $ff
    ld a, [bc]                                    ; $6921: $0a
    nop                                           ; $6922: $00
    and l                                         ; $6923: $a5
    nop                                           ; $6924: $00
    ld a, [c]                                     ; $6925: $f2
    jr nz, @+$01                                  ; $6926: $20 $ff

    jp nz, Jump_000_06af                          ; $6928: $c2 $af $06

    and b                                         ; $692b: $a0
    db $f4                                        ; $692c: $f4
    rrca                                          ; $692d: $0f
    sbc [hl]                                      ; $692e: $9e
    ret nz                                        ; $692f: $c0

    ld [$d680], sp                                ; $6930: $08 $80 $d6
    nop                                           ; $6933: $00
    db $fc                                        ; $6934: $fc
    ret nz                                        ; $6935: $c0

    jr nz, @-$0f                                  ; $6936: $20 $ef

    ld b, b                                       ; $6938: $40
    jr nz, jr_0bd_695c                            ; $6939: $20 $21

    dec sp                                        ; $693b: $3b
    cp a                                          ; $693c: $bf
    inc e                                         ; $693d: $1c
    cp $08                                        ; $693e: $fe $08
    ld l, b                                       ; $6940: $68
    ld a, h                                       ; $6941: $7c
    ld a, e                                       ; $6942: $7b
    rlca                                          ; $6943: $07
    jr nz, jr_0bd_6947                            ; $6944: $20 $01

    ld e, a                                       ; $6946: $5f

jr_0bd_6947:
    ld c, d                                       ; $6947: $4a
    ld b, $50                                     ; $6948: $06 $50
    ld a, [$4400]                                 ; $694a: $fa $00 $44
    push de                                       ; $694d: $d5
    ret                                           ; $694e: $c9


    rlca                                          ; $694f: $07
    and a                                         ; $6950: $a7
    nop                                           ; $6951: $00
    ret z                                         ; $6952: $c8

    sub b                                         ; $6953: $90
    add hl, bc                                    ; $6954: $09
    xor h                                         ; $6955: $ac
    rst $38                                       ; $6956: $ff
    ld e, b                                       ; $6957: $58
    ld h, $20                                     ; $6958: $26 $20
    add hl, bc                                    ; $695a: $09
    ld a, c                                       ; $695b: $79

jr_0bd_695c:
    ei                                            ; $695c: $fb
    rlca                                          ; $695d: $07
    ret nc                                        ; $695e: $d0

    jr @+$01                                      ; $695f: $18 $ff

    and h                                         ; $6961: $a4
    push af                                       ; $6962: $f5
    ld bc, $eb40                                  ; $6963: $01 $40 $eb
    nop                                           ; $6966: $00
    rst $30                                       ; $6967: $f7
    ld bc, $23ff                                  ; $6968: $01 $ff $23
    sub b                                         ; $696b: $90
    ld bc, $6f10                                  ; $696c: $01 $10 $6f
    rst $38                                       ; $696f: $ff
    and l                                         ; $6970: $a5
    dec c                                         ; $6971: $0d
    inc b                                         ; $6972: $04
    nop                                           ; $6973: $00
    ld hl, sp+$00                                 ; $6974: $f8 $00
    db $fd                                        ; $6976: $fd
    jr z, jr_0bd_69d9                             ; $6977: $28 $60

    cp $50                                        ; $6979: $fe $50
    nop                                           ; $697b: $00
    ld c, c                                       ; $697c: $49
    sub a                                         ; $697d: $97
    ld c, $66                                     ; $697e: $0e $66
    rst $28                                       ; $6980: $ef
    nop                                           ; $6981: $00
    ld [bc], a                                    ; $6982: $02
    sub [hl]                                      ; $6983: $96
    nop                                           ; $6984: $00
    ld a, a                                       ; $6985: $7f
    nop                                           ; $6986: $00
    scf                                           ; $6987: $37
    inc bc                                        ; $6988: $03
    sub b                                         ; $6989: $90
    ld de, $05dc                                  ; $698a: $11 $dc $05
    rst $38                                       ; $698d: $ff
    jr z, jr_0bd_6a0a                             ; $698e: $28 $7a

    nop                                           ; $6990: $00
    cp l                                          ; $6991: $bd
    reti                                          ; $6992: $d9


    rlca                                          ; $6993: $07
    ld sp, hl                                     ; $6994: $f9
    ld [hl], b                                    ; $6995: $70
    jr z, jr_0bd_699b                             ; $6996: $28 $03

    cpl                                           ; $6998: $2f
    cp a                                          ; $6999: $bf
    add hl, bc                                    ; $699a: $09

jr_0bd_699b:
    ld e, a                                       ; $699b: $5f
    inc bc                                        ; $699c: $03
    rst $38                                       ; $699d: $ff
    ld a, [de]                                    ; $699e: $1a
    ld b, $90                                     ; $699f: $06 $90
    ld bc, $5740                                  ; $69a1: $01 $40 $57
    cp d                                          ; $69a4: $ba
    ld b, $40                                     ; $69a5: $06 $40
    ld a, [$c500]                                 ; $69a7: $fa $00 $c5
    nop                                           ; $69aa: $00
    db $eb                                        ; $69ab: $eb
    inc c                                         ; $69ac: $0c
    ld b, c                                       ; $69ad: $41

jr_0bd_69ae:
    rst $38                                       ; $69ae: $ff
    nop                                           ; $69af: $00
    ld [bc], a                                    ; $69b0: $02
    sub b                                         ; $69b1: $90
    ld b, $bc                                     ; $69b2: $06 $bc
    ld b, $20                                     ; $69b4: $06 $20
    ld a, d                                       ; $69b6: $7a
    or b                                          ; $69b7: $b0
    ld h, l                                       ; $69b8: $65
    inc bc                                        ; $69b9: $03
    db $fd                                        ; $69ba: $fd
    and d                                         ; $69bb: $a2
    ld bc, $40a0                                  ; $69bc: $01 $a0 $40
    jr z, jr_0bd_6a3d                             ; $69bf: $28 $7c

    jr @-$01                                      ; $69c1: $18 $fd

    ld b, l                                       ; $69c3: $45
    ld [$48a0], sp                                ; $69c4: $08 $a0 $48
    ld c, c                                       ; $69c7: $49
    nop                                           ; $69c8: $00
    add e                                         ; $69c9: $83
    sub b                                         ; $69ca: $90
    ld d, b                                       ; $69cb: $50
    ld b, [hl]                                    ; $69cc: $46
    and b                                         ; $69cd: $a0
    nop                                           ; $69ce: $00
    ld d, l                                       ; $69cf: $55
    jp nc, $056f                                  ; $69d0: $d2 $6f $05

    rst $38                                       ; $69d3: $ff
    cp b                                          ; $69d4: $b8
    ld bc, $a5b6                                  ; $69d5: $01 $b6 $a5
    inc bc                                        ; $69d8: $03

jr_0bd_69d9:
    ld [hl], a                                    ; $69d9: $77
    rst $38                                       ; $69da: $ff
    rlca                                          ; $69db: $07
    add [hl]                                      ; $69dc: $86
    db $10                                        ; $69dd: $10
    ld hl, $f500                                  ; $69de: $21 $00 $f5
    nop                                           ; $69e1: $00
    ld [$0b2f], a                                 ; $69e2: $ea $2f $0b
    ret nz                                        ; $69e5: $c0

jr_0bd_69e6:
    jr nz, jr_0bd_69e6                            ; $69e6: $20 $fe

    jr nc, jr_0bd_69ea                            ; $69e8: $30 $00

jr_0bd_69ea:
    add h                                         ; $69ea: $84
    db $10                                        ; $69eb: $10
    jr nz, jr_0bd_69ae                            ; $69ec: $20 $c0

    db $10                                        ; $69ee: $10
    ld h, l                                       ; $69ef: $65
    rst $38                                       ; $69f0: $ff
    nop                                           ; $69f1: $00
    ld [hl], l                                    ; $69f2: $75
    dec a                                         ; $69f3: $3d
    nop                                           ; $69f4: $00
    ld a, [$1fef]                                 ; $69f5: $fa $ef $1f
    call Call_000_3000                            ; $69f8: $cd $00 $30
    ld [bc], a                                    ; $69fb: $02
    ret nz                                        ; $69fc: $c0

    nop                                           ; $69fd: $00
    sub $8b                                       ; $69fe: $d6 $8b

jr_0bd_6a00:
    add hl, bc                                    ; $6a00: $09
    ld d, b                                       ; $6a01: $50
    ld [hl], $50                                  ; $6a02: $36 $50
    ld [de], a                                    ; $6a04: $12
    call nc, Call_000_0890                        ; $6a05: $d4 $90 $08
    cp l                                          ; $6a08: $bd
    nop                                           ; $6a09: $00

jr_0bd_6a0a:
    rst $38                                       ; $6a0a: $ff
    inc c                                         ; $6a0b: $0c
    db $10                                        ; $6a0c: $10
    rst $38                                       ; $6a0d: $ff
    ld h, a                                       ; $6a0e: $67
    ld b, b                                       ; $6a0f: $40
    ld d, b                                       ; $6a10: $50
    ld a, [de]                                    ; $6a11: $1a
    ld a, [hl+]                                   ; $6a12: $2a
    cp a                                          ; $6a13: $bf
    nop                                           ; $6a14: $00
    ld e, [hl]                                    ; $6a15: $5e
    nop                                           ; $6a16: $00
    ld [$40fd], sp                                ; $6a17: $08 $fd $40
    rst $38                                       ; $6a1a: $ff

jr_0bd_6a1b:
    ld sp, $0728                                  ; $6a1b: $31 $28 $07
    cp c                                          ; $6a1e: $b9
    ld [bc], a                                    ; $6a1f: $02
    ld b, $66                                     ; $6a20: $06 $66
    nop                                           ; $6a22: $00
    ld d, $00                                     ; $6a23: $16 $00
    xor c                                         ; $6a25: $a9
    adc $07                                       ; $6a26: $ce $07
    ccf                                           ; $6a28: $3f
    or b                                          ; $6a29: $b0
    jr nc, jr_0bd_6a2d                            ; $6a2a: $30 $01

    dec l                                         ; $6a2c: $2d

jr_0bd_6a2d:
    db $10                                        ; $6a2d: $10
    rlca                                          ; $6a2e: $07
    ld h, a                                       ; $6a2f: $67
    inc bc                                        ; $6a30: $03
    dec bc                                        ; $6a31: $0b
    rst $38                                       ; $6a32: $ff
    rra                                           ; $6a33: $1f
    db $d3                                        ; $6a34: $d3
    dec b                                         ; $6a35: $05
    ccf                                           ; $6a36: $3f
    ld hl, sp+$7f                                 ; $6a37: $f8 $7f
    db $fc                                        ; $6a39: $fc
    ld a, a                                       ; $6a3a: $7f
    ld d, [hl]                                    ; $6a3b: $56
    nop                                           ; $6a3c: $00

jr_0bd_6a3d:
    jr nz, jr_0bd_6a00                            ; $6a3d: $20 $c1

    ld bc, $2002                                  ; $6a3f: $01 $02 $20
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    db $db                                        ; $6a44: $db
    rst $38                                       ; $6a45: $ff
    sub e                                         ; $6a46: $93
    push hl                                       ; $6a47: $e5
    rlca                                          ; $6a48: $07
    rst $18                                       ; $6a49: $df
    adc [hl]                                      ; $6a4a: $8e
    dec h                                         ; $6a4b: $25
    inc de                                        ; $6a4c: $13
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    inc a                                         ; $6a4f: $3c
    rst $08                                       ; $6a50: $cf
    rlca                                          ; $6a51: $07
    db $eb                                        ; $6a52: $eb
    rrca                                          ; $6a53: $0f
    cp $07                                        ; $6a54: $fe $07
    rst $38                                       ; $6a56: $ff
    inc d                                         ; $6a57: $14
    rst $28                                       ; $6a58: $ef
    ccf                                           ; $6a59: $3f
    db $ed                                        ; $6a5a: $ed
    add e                                         ; $6a5b: $83
    nop                                           ; $6a5c: $00
    ret z                                         ; $6a5d: $c8

    ld a, [hl]                                    ; $6a5e: $7e
    rla                                           ; $6a5f: $17
    db $fd                                        ; $6a60: $fd
    nop                                           ; $6a61: $00
    call nz, $001b                                ; $6a62: $c4 $1b $00
    db $ec                                        ; $6a65: $ec
    ld bc, $ffc6                                  ; $6a66: $01 $c6 $ff
    add e                                         ; $6a69: $83
    db $db                                        ; $6a6a: $db
    rlca                                          ; $6a6b: $07
    nop                                           ; $6a6c: $00
    rst $38                                       ; $6a6d: $ff
    ld b, d                                       ; $6a6e: $42
    db $eb                                        ; $6a6f: $eb
    ld de, $c30a                                  ; $6a70: $11 $0a $c3
    ccf                                           ; $6a73: $3f
    rst $38                                       ; $6a74: $ff
    ld [hl], h                                    ; $6a75: $74
    rst $20                                       ; $6a76: $e7
    rlca                                          ; $6a77: $07
    jr nz, jr_0bd_6a1b                            ; $6a78: $20 $a1

    sbc [hl]                                      ; $6a7a: $9e
    rlca                                          ; $6a7b: $07
    push de                                       ; $6a7c: $d5
    rst $20                                       ; $6a7d: $e7
    dec bc                                        ; $6a7e: $0b
    pop bc                                        ; $6a7f: $c1
    ld a, a                                       ; $6a80: $7f
    rst $38                                       ; $6a81: $ff
    ld e, b                                       ; $6a82: $58
    ld c, h                                       ; $6a83: $4c
    nop                                           ; $6a84: $00
    ld d, b                                       ; $6a85: $50
    nop                                           ; $6a86: $00
    jr jr_0bd_6a8b                                ; $6a87: $18 $02

    or a                                          ; $6a89: $b7
    sub h                                         ; $6a8a: $94

jr_0bd_6a8b:
    ld bc, $f0ff                                  ; $6a8b: $01 $ff $f0
    ld a, a                                       ; $6a8e: $7f
    ld hl, sp+$11                                 ; $6a8f: $f8 $11
    rst $20                                       ; $6a91: $e7
    rst $38                                       ; $6a92: $ff
    ld h, a                                       ; $6a93: $67
    sbc d                                         ; $6a94: $9a
    ld [bc], a                                    ; $6a95: $02
    nop                                           ; $6a96: $00
    rst $38                                       ; $6a97: $ff
    or [hl]                                       ; $6a98: $b6
    dec b                                         ; $6a99: $05
    inc c                                         ; $6a9a: $0c
    nop                                           ; $6a9b: $00
    ld h, b                                       ; $6a9c: $60
    rst $38                                       ; $6a9d: $ff
    db $fc                                        ; $6a9e: $fc
    rst $18                                       ; $6a9f: $df
    cp $4f                                        ; $6aa0: $fe $4f
    rst $38                                       ; $6aa2: $ff
    ld b, $a8                                     ; $6aa3: $06 $a8
    ld [bc], a                                    ; $6aa5: $02
    nop                                           ; $6aa6: $00
    ld e, e                                       ; $6aa7: $5b
    inc [hl]                                      ; $6aa8: $34

jr_0bd_6aa9:
    inc bc                                        ; $6aa9: $03
    ld sp, hl                                     ; $6aaa: $f9
    dec de                                        ; $6aab: $1b
    inc c                                         ; $6aac: $0c
    ld b, b                                       ; $6aad: $40
    rst $38                                       ; $6aae: $ff
    db $ec                                        ; $6aaf: $ec
    dec b                                         ; $6ab0: $05
    ld a, a                                       ; $6ab1: $7f
    cp $ef                                        ; $6ab2: $fe $ef
    rst $38                                       ; $6ab4: $ff
    db $dd                                        ; $6ab5: $dd
    and d                                         ; $6ab6: $a2
    rlca                                          ; $6ab7: $07
    db $e4                                        ; $6ab8: $e4
    cp c                                          ; $6ab9: $b9
    inc b                                         ; $6aba: $04
    nop                                           ; $6abb: $00
    push bc                                       ; $6abc: $c5
    nop                                           ; $6abd: $00
    or a                                          ; $6abe: $b7
    nop                                           ; $6abf: $00
    ld e, l                                       ; $6ac0: $5d
    nop                                           ; $6ac1: $00
    ld [hl-], a                                   ; $6ac2: $32
    nop                                           ; $6ac3: $00
    nop                                           ; $6ac4: $00
    ld d, a                                       ; $6ac5: $57
    jr z, jr_0bd_6aa9                             ; $6ac6: $28 $e1

    ld e, $78                                     ; $6ac8: $1e $78
    rlca                                          ; $6aca: $07
    db $fd                                        ; $6acb: $fd
    ld [bc], a                                    ; $6acc: $02
    ld b, b                                       ; $6acd: $40
    sbc a                                         ; $6ace: $9f
    db $ec                                        ; $6acf: $ec
    ld bc, $0029                                  ; $6ad0: $01 $29 $00
    add d                                         ; $6ad3: $82
    nop                                           ; $6ad4: $00
    call c, RST_00                                ; $6ad5: $dc $00 $00
    xor [hl]                                      ; $6ad8: $ae
    nop                                           ; $6ad9: $00
    db $e3                                        ; $6ada: $e3
    nop                                           ; $6adb: $00
    reti                                          ; $6adc: $d9


    nop                                           ; $6add: $00
    ld [hl], l                                    ; $6ade: $75
    add b                                         ; $6adf: $80
    rlca                                          ; $6ae0: $07
    ld hl, sp+$00                                 ; $6ae1: $f8 $00
    ld a, h                                       ; $6ae3: $7c
    nop                                           ; $6ae4: $00
    db $eb                                        ; $6ae5: $eb
    cp [hl]                                       ; $6ae6: $be
    rlca                                          ; $6ae7: $07
    add $01                                       ; $6ae8: $c6 $01
    ld [$4403], sp                                ; $6aea: $08 $03 $44
    dec h                                         ; $6aed: $25
    inc e                                         ; $6aee: $1c
    nop                                           ; $6aef: $00
    ld e, l                                       ; $6af0: $5d
    nop                                           ; $6af1: $00
    adc d                                         ; $6af2: $8a
    inc d                                         ; $6af3: $14
    ld [bc], a                                    ; $6af4: $02
    inc sp                                        ; $6af5: $33
    nop                                           ; $6af6: $00
    ld b, b                                       ; $6af7: $40
    add c                                         ; $6af8: $81

jr_0bd_6af9:
    ld c, h                                       ; $6af9: $4c
    ld bc, $0071                                  ; $6afa: $01 $71 $00
    cp [hl]                                       ; $6afd: $be
    nop                                           ; $6afe: $00
    inc h                                         ; $6aff: $24
    nop                                           ; $6b00: $00
    ld bc, $0063                                  ; $6b01: $01 $63 $00
    ld a, d                                       ; $6b04: $7a
    ld bc, $00af                                  ; $6b05: $01 $af $00
    ld sp, $01ea                                  ; $6b08: $31 $ea $01
    ld d, b                                       ; $6b0b: $50
    cpl                                           ; $6b0c: $2f
    adc [hl]                                      ; $6b0d: $8e
    ld bc, $f43f                                  ; $6b0e: $01 $3f $f4
    rrca                                          ; $6b11: $0f
    rst $38                                       ; $6b12: $ff
    ld [$34d3], sp                                ; $6b13: $08 $d3 $34
    nop                                           ; $6b16: $00
    add c                                         ; $6b17: $81
    ld [hl], $80                                  ; $6b18: $36 $80
    ld l, e                                       ; $6b1a: $6b
    nop                                           ; $6b1b: $00
    inc a                                         ; $6b1c: $3c
    add c                                         ; $6b1d: $81
    ld a, [hl]                                    ; $6b1e: $7e
    db $10                                        ; $6b1f: $10
    ld bc, $b34c                                  ; $6b20: $01 $4c $b3
    jr jr_0bd_6b2b                                ; $6b23: $18 $06

    rst $28                                       ; $6b25: $ef
    db $10                                        ; $6b26: $10
    rst $00                                       ; $6b27: $c7
    jr c, jr_0bd_6b2a                             ; $6b28: $38 $00

jr_0bd_6b2a:
    add c                                         ; $6b2a: $81

jr_0bd_6b2b:
    dec [hl]                                      ; $6b2b: $35
    ret nz                                        ; $6b2c: $c0

    inc sp                                        ; $6b2d: $33
    inc c                                         ; $6b2e: $0c
    xor $01                                       ; $6b2f: $ee $01
    sbc b                                         ; $6b31: $98
    ld a, [hl+]                                   ; $6b32: $2a
    ld h, a                                       ; $6b33: $67
    sbc a                                         ; $6b34: $9f
    ld hl, $e106                                  ; $6b35: $21 $06 $e1
    ld l, h                                       ; $6b38: $6c
    ld bc, $5c83                                  ; $6b39: $01 $83 $5c
    nop                                           ; $6b3c: $00
    ld l, b                                       ; $6b3d: $68
    add d                                         ; $6b3e: $82
    daa                                           ; $6b3f: $27
    ld b, $3e                                     ; $6b40: $06 $3e
    nop                                           ; $6b42: $00
    ld l, c                                       ; $6b43: $69
    nop                                           ; $6b44: $00
    dec sp                                        ; $6b45: $3b
    ld h, c                                       ; $6b46: $61
    inc b                                         ; $6b47: $04
    ld h, $20                                     ; $6b48: $26 $20
    nop                                           ; $6b4a: $00
    dec d                                         ; $6b4b: $15
    ld b, b                                       ; $6b4c: $40
    ld bc, $000a                                  ; $6b4d: $01 $0a $00
    jp $1600                                      ; $6b50: $c3 $00 $16


    nop                                           ; $6b53: $00
    ld bc, $010d                                  ; $6b54: $01 $0d $01
    ld a, a                                       ; $6b57: $7f
    nop                                           ; $6b58: $00
    rst $08                                       ; $6b59: $cf
    jr nc, jr_0bd_6af9                            ; $6b5a: $30 $9d

    nop                                           ; $6b5c: $00
    ld h, d                                       ; $6b5d: $62
    add sp, $01                                   ; $6b5e: $e8 $01
    add c                                         ; $6b60: $81
    rrca                                          ; $6b61: $0f
    rrca                                          ; $6b62: $0f
    rst $38                                       ; $6b63: $ff
    daa                                           ; $6b64: $27
    add b                                         ; $6b65: $80
    sub e                                         ; $6b66: $93
    rlca                                          ; $6b67: $07
    ld [hl], a                                    ; $6b68: $77
    ld a, a                                       ; $6b69: $7f
    rst $18                                       ; $6b6a: $df
    rra                                           ; $6b6b: $1f
    ld h, a                                       ; $6b6c: $67
    add a                                         ; $6b6d: $87
    ld b, a                                       ; $6b6e: $47
    nop                                           ; $6b6f: $00
    add a                                         ; $6b70: $87
    daa                                           ; $6b71: $27
    rst $18                                       ; $6b72: $df
    add [hl]                                      ; $6b73: $86
    ret nz                                        ; $6b74: $c0

    add e                                         ; $6b75: $83
    ret c                                         ; $6b76: $d8

    and d                                         ; $6b77: $a2
    nop                                           ; $6b78: $00
    reti                                          ; $6b79: $d9


    add c                                         ; $6b7a: $81
    call c, $dca1                                 ; $6b7b: $dc $a1 $dc
    and b                                         ; $6b7e: $a0
    ret c                                         ; $6b7f: $d8

    ret nz                                        ; $6b80: $c0

    ld [$90fb], sp                                ; $6b81: $08 $fb $90
    db $fd                                        ; $6b84: $fd
    add h                                         ; $6b85: $84
    cp b                                          ; $6b86: $b8
    ld bc, $20dd                                  ; $6b87: $01 $dd $20
    ld [hl], a                                    ; $6b8a: $77
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    sub c                                         ; $6b8d: $91
    ld h, b                                       ; $6b8e: $60
    adc [hl]                                      ; $6b8f: $8e
    ld [hl], b                                    ; $6b90: $70
    ld l, b                                       ; $6b91: $68
    stop                                          ; $6b92: $10 $00
    ld [hl+], a                                   ; $6b94: $22
    pop bc                                        ; $6b95: $c1
    db $dd                                        ; $6b96: $dd
    xor l                                         ; $6b97: $ad
    ld b, $7e                                     ; $6b98: $06 $7e
    nop                                           ; $6b9a: $00
    cp e                                          ; $6b9b: $bb
    xor h                                         ; $6b9c: $ac
    ld [bc], a                                    ; $6b9d: $02
    adc h                                         ; $6b9e: $8c
    xor b                                         ; $6b9f: $a8
    or a                                          ; $6ba0: $b7
    inc b                                         ; $6ba1: $04
    dec de                                        ; $6ba2: $1b
    inc d                                         ; $6ba3: $14
    inc b                                         ; $6ba4: $04
    ld a, [$01fc]                                 ; $6ba5: $fa $fc $01
    ld [bc], a                                    ; $6ba8: $02

jr_0bd_6ba9:
    nop                                           ; $6ba9: $00
    cp b                                          ; $6baa: $b8
    add d                                         ; $6bab: $82
    dec l                                         ; $6bac: $2d
    dec b                                         ; $6bad: $05
    rra                                           ; $6bae: $1f
    nop                                           ; $6baf: $00
    ld a, e                                       ; $6bb0: $7b
    nop                                           ; $6bb1: $00
    ld e, h                                       ; $6bb2: $5c
    ld d, $02                                     ; $6bb3: $16 $02
    dec a                                         ; $6bb5: $3d
    adc b                                         ; $6bb6: $88
    ret                                           ; $6bb7: $c9


    ld b, $b9                                     ; $6bb8: $06 $b9
    nop                                           ; $6bba: $00
    rla                                           ; $6bbb: $17
    ld d, d                                       ; $6bbc: $52
    inc b                                         ; $6bbd: $04
    di                                            ; $6bbe: $f3
    nop                                           ; $6bbf: $00
    ld h, e                                       ; $6bc0: $63
    nop                                           ; $6bc1: $00
    rra                                           ; $6bc2: $1f
    ld a, [c]                                     ; $6bc3: $f2
    rrca                                          ; $6bc4: $0f
    db $e4                                        ; $6bc5: $e4
    dec de                                        ; $6bc6: $1b
    ld [hl], b                                    ; $6bc7: $70
    rrca                                          ; $6bc8: $0f
    ld d, l                                       ; $6bc9: $55
    nop                                           ; $6bca: $00
    ld a, [hl-]                                   ; $6bcb: $3a
    rst $20                                       ; $6bcc: $e7
    dec de                                        ; $6bcd: $1b
    xor e                                         ; $6bce: $ab
    ld e, a                                       ; $6bcf: $5f
    ld l, $df                                     ; $6bd0: $2e $df
    inc a                                         ; $6bd2: $3c
    nop                                           ; $6bd3: $00
    ldh [$6f], a                                  ; $6bd4: $e0 $6f
    ret nc                                        ; $6bd6: $d0

    db $dd                                        ; $6bd7: $dd
    ld h, b                                       ; $6bd8: $60
    rst $10                                       ; $6bd9: $d7
    add sp, $6f                                   ; $6bda: $e8 $6f
    nop                                           ; $6bdc: $00
    ldh a, [$2d]                                  ; $6bdd: $f0 $2d
    ret nc                                        ; $6bdf: $d0

    ld a, [hl-]                                   ; $6be0: $3a
    ret nz                                        ; $6be1: $c0

    cp $80                                        ; $6be2: $fe $80
    rst $38                                       ; $6be4: $ff
    ld [$6e00], sp                                ; $6be5: $08 $00 $6e
    jr jr_0bd_6ba9                                ; $6be8: $18 $bf

    jp c, Jump_000_2e03                           ; $6bea: $da $03 $2e

    nop                                           ; $6bed: $00
    rst $20                                       ; $6bee: $e7
    xor d                                         ; $6bef: $aa
    reti                                          ; $6bf0: $d9


    ld b, $83                                     ; $6bf1: $06 $83
    ld b, h                                       ; $6bf3: $44
    inc b                                         ; $6bf4: $04
    cp e                                          ; $6bf5: $bb
    ld a, [bc]                                    ; $6bf6: $0a
    nop                                           ; $6bf7: $00
    rlca                                          ; $6bf8: $07
    xor [hl]                                      ; $6bf9: $ae
    nop                                           ; $6bfa: $00
    rst $08                                       ; $6bfb: $cf
    add b                                         ; $6bfc: $80
    ld a, a                                       ; $6bfd: $7f
    dec b                                         ; $6bfe: $05
    ld e, l                                       ; $6bff: $5d
    nop                                           ; $6c00: $00
    ld d, b                                       ; $6c01: $50
    and l                                         ; $6c02: $a5
    ld a, [hl+]                                   ; $6c03: $2a
    ret nz                                        ; $6c04: $c0

    xor a                                         ; $6c05: $af
    and d                                         ; $6c06: $a2
    inc l                                         ; $6c07: $2c
    inc bc                                        ; $6c08: $03
    ld a, d                                       ; $6c09: $7a
    ld bc, $fe07                                  ; $6c0a: $01 $07 $fe
    inc bc                                        ; $6c0d: $03
    ld c, h                                       ; $6c0e: $4c
    ld h, e                                       ; $6c0f: $63
    ld a, [bc]                                    ; $6c10: $0a
    pop hl                                        ; $6c11: $e1
    nop                                           ; $6c12: $00
    inc d                                         ; $6c13: $14
    ld b, c                                       ; $6c14: $41
    sbc [hl]                                      ; $6c15: $9e
    ld h, b                                       ; $6c16: $60
    rlca                                          ; $6c17: $07
    add b                                         ; $6c18: $80
    ld e, l                                       ; $6c19: $5d
    nop                                           ; $6c1a: $00
    inc b                                         ; $6c1b: $04
    xor $05                                       ; $6c1c: $ee $05
    sbc b                                         ; $6c1e: $98
    ld l, a                                       ; $6c1f: $6f
    cp [hl]                                       ; $6c20: $be
    ldh [rP1], a                                  ; $6c21: $e0 $00
    ei                                            ; $6c23: $fb
    nop                                           ; $6c24: $00
    ld l, d                                       ; $6c25: $6a
    ldh a, [$e0]                                  ; $6c26: $f0 $e0
    jr nc, jr_0bd_6c6a                            ; $6c28: $30 $40

    jr @-$4f                                      ; $6c2a: $18 $af

    rrca                                          ; $6c2c: $0f
    rlca                                          ; $6c2d: $07
    rst $38                                       ; $6c2e: $ff
    ld d, d                                       ; $6c2f: $52
    nop                                           ; $6c30: $00
    ld e, l                                       ; $6c31: $5d
    add b                                         ; $6c32: $80
    dec [hl]                                      ; $6c33: $35
    rlca                                          ; $6c34: $07
    ei                                            ; $6c35: $fb
    nop                                           ; $6c36: $00
    ld h, a                                       ; $6c37: $67
    ld bc, $0317                                  ; $6c38: $01 $17 $03
    xor a                                         ; $6c3b: $af
    add h                                         ; $6c3c: $84
    ld [bc], a                                    ; $6c3d: $02
    nop                                           ; $6c3e: $00
    ccf                                           ; $6c3f: $3f
    inc bc                                        ; $6c40: $03
    rst $38                                       ; $6c41: $ff
    ld bc, $01f0                                  ; $6c42: $01 $f0 $01
    add c                                         ; $6c45: $81
    rst $38                                       ; $6c46: $ff
    nop                                           ; $6c47: $00
    pop hl                                        ; $6c48: $e1
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    ld e, l                                       ; $6c4b: $5d
    rst $38                                       ; $6c4c: $ff
    add hl, de                                    ; $6c4d: $19
    rst $38                                       ; $6c4e: $ff
    push bc                                       ; $6c4f: $c5
    ret nz                                        ; $6c50: $c0

    inc l                                         ; $6c51: $2c
    inc b                                         ; $6c52: $04
    or b                                          ; $6c53: $b0
    ld bc, $7fc0                                  ; $6c54: $01 $c0 $7f
    cp $df                                        ; $6c57: $fe $df
    rst $38                                       ; $6c59: $ff
    sub c                                         ; $6c5a: $91
    sub b                                         ; $6c5b: $90
    call c, $ff0d                                 ; $6c5c: $dc $0d $ff
    ldh [$30], a                                  ; $6c5f: $e0 $30
    ld [hl+], a                                   ; $6c61: $22
    db $ec                                        ; $6c62: $ec
    rst $38                                       ; $6c63: $ff
    ld h, h                                       ; $6c64: $64

jr_0bd_6c65:
    rst $38                                       ; $6c65: $ff
    ld b, b                                       ; $6c66: $40
    ret nz                                        ; $6c67: $c0

    jr nc, @+$14                                  ; $6c68: $30 $12

jr_0bd_6c6a:
    ld a, l                                       ; $6c6a: $7d
    nop                                           ; $6c6b: $00
    db $dd                                        ; $6c6c: $dd
    nop                                           ; $6c6d: $00
    or $80                                        ; $6c6e: $f6 $80
    nop                                           ; $6c70: $00
    ld hl, sp-$40                                 ; $6c71: $f8 $c0
    rst $30                                       ; $6c73: $f7
    ret nz                                        ; $6c74: $c0

    push af                                       ; $6c75: $f5
    ret nz                                        ; $6c76: $c0

    db $fc                                        ; $6c77: $fc
    ret nz                                        ; $6c78: $c0

    nop                                           ; $6c79: $00
    ld [$9080], a                                 ; $6c7a: $ea $80 $90
    nop                                           ; $6c7d: $00
    dec [hl]                                      ; $6c7e: $35
    ld [$01b2], sp                                ; $6c7f: $08 $b2 $01
    dec d                                         ; $6c82: $15
    add $01                                       ; $6c83: $c6 $01
    db $d3                                        ; $6c85: $d3
    cp [hl]                                       ; $6c86: $be
    inc bc                                        ; $6c87: $03
    rst $28                                       ; $6c88: $ef
    or d                                          ; $6c89: $b2
    inc b                                         ; $6c8a: $04
    dec bc                                        ; $6c8b: $0b
    inc b                                         ; $6c8c: $04
    dec b                                         ; $6c8d: $05
    ld b, c                                       ; $6c8e: $41
    ld [hl], c                                    ; $6c8f: $71
    cp [hl]                                       ; $6c90: $be
    ld bc, $0053                                  ; $6c91: $01 $53 $00
    cp h                                          ; $6c94: $bc
    nop                                           ; $6c95: $00
    ld e, a                                       ; $6c96: $5f
    inc hl                                        ; $6c97: $23
    ld b, $42                                     ; $6c98: $06 $42
    jp hl                                         ; $6c9a: $e9


    dec hl                                        ; $6c9b: $2b
    dec b                                         ; $6c9c: $05
    rst $20                                       ; $6c9d: $e7
    ld a, a                                       ; $6c9e: $7f
    db $f4                                        ; $6c9f: $f4
    ld a, a                                       ; $6ca0: $7f
    or $04                                        ; $6ca1: $f6 $04
    rrca                                          ; $6ca3: $0f
    jr z, jr_0bd_6c65                             ; $6ca4: $28 $bf

    inc b                                         ; $6ca6: $04
    ldh a, [$0a]                                  ; $6ca7: $f0 $0a
    jr nz, jr_0bd_6cf7                            ; $6ca9: $20 $4c

    inc b                                         ; $6cab: $04
    ld e, h                                       ; $6cac: $5c
    rst $38                                       ; $6cad: $ff
    adc d                                         ; $6cae: $8a
    and b                                         ; $6caf: $a0
    ld [hl], a                                    ; $6cb0: $77
    dec b                                         ; $6cb1: $05
    ld a, [c]                                     ; $6cb2: $f2
    adc [hl]                                      ; $6cb3: $8e
    ld [bc], a                                    ; $6cb4: $02
    nop                                           ; $6cb5: $00
    rst $38                                       ; $6cb6: $ff
    sub b                                         ; $6cb7: $90
    rst $38                                       ; $6cb8: $ff
    jr jr_0bd_6cbb                                ; $6cb9: $18 $00

jr_0bd_6cbb:
    rst $38                                       ; $6cbb: $ff
    ld a, h                                       ; $6cbc: $7c
    rst $38                                       ; $6cbd: $ff
    db $fc                                        ; $6cbe: $fc
    rst $38                                       ; $6cbf: $ff
    call $0fff                                    ; $6cc0: $cd $ff $0f
    db $10                                        ; $6cc3: $10
    db $fc                                        ; $6cc4: $fc
    pop af                                        ; $6cc5: $f1
    ld c, $a4                                     ; $6cc6: $0e $a4
    ld a, [bc]                                    ; $6cc8: $0a
    rlca                                          ; $6cc9: $07
    rst $38                                       ; $6cca: $ff
    ld a, $ff                                     ; $6ccb: $3e $ff
    ld b, c                                       ; $6ccd: $41
    and b                                         ; $6cce: $a0
    cp b                                          ; $6ccf: $b8
    inc b                                         ; $6cd0: $04
    sub c                                         ; $6cd1: $91
    ld l, a                                       ; $6cd2: $6f
    rst $38                                       ; $6cd3: $ff
    nop                                           ; $6cd4: $00
    add b                                         ; $6cd5: $80
    adc [hl]                                      ; $6cd6: $8e
    inc b                                         ; $6cd7: $04
    inc b                                         ; $6cd8: $04
    ret nz                                        ; $6cd9: $c0

    rst $38                                       ; $6cda: $ff
    ld a, [hl]                                    ; $6cdb: $7e
    rst $38                                       ; $6cdc: $ff
    or d                                          ; $6cdd: $b2
    ld [hl], e                                    ; $6cde: $73
    dec b                                         ; $6cdf: $05
    ld a, a                                       ; $6ce0: $7f
    rst $38                                       ; $6ce1: $ff
    jr nz, @+$05                                  ; $6ce2: $20 $03

    db $fc                                        ; $6ce4: $fc
    sub [hl]                                      ; $6ce5: $96
    jr jr_0bd_6d60                                ; $6ce6: $18 $78

    rst $38                                       ; $6ce8: $ff
    jp z, Jump_0bd_42ff                           ; $6ce9: $ca $ff $42

    nop                                           ; $6cec: $00
    rst $38                                       ; $6ced: $ff
    rst $30                                       ; $6cee: $f7
    rst $38                                       ; $6cef: $ff
    ret nz                                        ; $6cf0: $c0

    ccf                                           ; $6cf1: $3f
    nop                                           ; $6cf2: $00
    rst $38                                       ; $6cf3: $ff
    sub h                                         ; $6cf4: $94
    ld a, [bc]                                    ; $6cf5: $0a
    rst $38                                       ; $6cf6: $ff

jr_0bd_6cf7:
    jr nc, @+$01                                  ; $6cf7: $30 $ff

    cpl                                           ; $6cf9: $2f
    add [hl]                                      ; $6cfa: $86
    dec b                                         ; $6cfb: $05
    call Call_000_07eb                            ; $6cfc: $cd $eb $07
    reti                                          ; $6cff: $d9


    jr z, jr_0bd_6d69                             ; $6d00: $28 $67

    db $10                                        ; $6d02: $10
    ld d, b                                       ; $6d03: $50
    nop                                           ; $6d04: $00
    ld e, a                                       ; $6d05: $5f
    jp nz, $ff04                                  ; $6d06: $c2 $04 $ff

    rst $38                                       ; $6d09: $ff
    ld b, a                                       ; $6d0a: $47
    ld [bc], a                                    ; $6d0b: $02
    rst $38                                       ; $6d0c: $ff
    pop bc                                        ; $6d0d: $c1
    cp $bf                                        ; $6d0e: $fe $bf
    ld b, b                                       ; $6d10: $40
    ld h, c                                       ; $6d11: $61
    rst $18                                       ; $6d12: $df
    nop                                           ; $6d13: $00
    db $d3                                        ; $6d14: $d3
    nop                                           ; $6d15: $00
    rst $38                                       ; $6d16: $ff
    ld [hl], a                                    ; $6d17: $77
    rst $38                                       ; $6d18: $ff
    cp l                                          ; $6d19: $bd
    rst $38                                       ; $6d1a: $ff
    ld a, h                                       ; $6d1b: $7c
    cp a                                          ; $6d1c: $bf
    db $db                                        ; $6d1d: $db
    ld b, h                                       ; $6d1e: $44
    inc h                                         ; $6d1f: $24
    and b                                         ; $6d20: $a0
    dec bc                                        ; $6d21: $0b
    ld de, $75ff                                  ; $6d22: $11 $ff $75
    add l                                         ; $6d25: $85
    rlca                                          ; $6d26: $07
    sub c                                         ; $6d27: $91
    xor $10                                       ; $6d28: $ee $10
    ld a, a                                       ; $6d2a: $7f
    add b                                         ; $6d2b: $80
    ld a, [$0570]                                 ; $6d2c: $fa $70 $05
    call nc, $2300                                ; $6d2f: $d4 $00 $23
    nop                                           ; $6d32: $00
    ld d, l                                       ; $6d33: $55
    adc a                                         ; $6d34: $8f
    ld a, d                                       ; $6d35: $7a
    ld [bc], a                                    ; $6d36: $02
    ld sp, hl                                     ; $6d37: $f9
    ld l, [hl]                                    ; $6d38: $6e
    dec b                                         ; $6d39: $05
    halt                                          ; $6d3a: $76
    ld [hl], d                                    ; $6d3b: $72
    dec b                                         ; $6d3c: $05
    ld d, b                                       ; $6d3d: $50
    push hl                                       ; $6d3e: $e5
    ld b, $41                                     ; $6d3f: $06 $41
    db $eb                                        ; $6d41: $eb
    xor b                                         ; $6d42: $a8
    ld bc, $00cd                                  ; $6d43: $01 $cd $00
    push hl                                       ; $6d46: $e5
    ld [bc], a                                    ; $6d47: $02
    rst $18                                       ; $6d48: $df
    ld [hl], $01                                  ; $6d49: $36 $01
    nop                                           ; $6d4b: $00
    and l                                         ; $6d4c: $a5
    nop                                           ; $6d4d: $00
    ld b, b                                       ; $6d4e: $40
    nop                                           ; $6d4f: $00
    ld a, [hl-]                                   ; $6d50: $3a
    nop                                           ; $6d51: $00
    ld e, a                                       ; $6d52: $5f
    jr nz, jr_0bd_6d59                            ; $6d53: $20 $04

    sub h                                         ; $6d55: $94
    ld l, e                                       ; $6d56: $6b
    and e                                         ; $6d57: $a3
    ld e, h                                       ; $6d58: $5c

jr_0bd_6d59:
    ld a, l                                       ; $6d59: $7d
    sbc [hl]                                      ; $6d5a: $9e
    ld bc, $0011                                  ; $6d5b: $01 $11 $00
    nop                                           ; $6d5e: $00
    xor e                                         ; $6d5f: $ab

jr_0bd_6d60:
    nop                                           ; $6d60: $00
    jp nc, Jump_000_0601                          ; $6d61: $d2 $01 $06

    ld sp, hl                                     ; $6d64: $f9
    ld bc, $10fe                                  ; $6d65: $01 $fe $10
    ld e, l                                       ; $6d68: $5d

jr_0bd_6d69:
    and b                                         ; $6d69: $a0
    ld hl, sp-$3a                                 ; $6d6a: $f8 $c6
    inc bc                                        ; $6d6c: $03
    ld [$a000], sp                                ; $6d6d: $08 $00 $a0
    inc e                                         ; $6d70: $1c
    dec b                                         ; $6d71: $05
    ld c, l                                       ; $6d72: $4d
    add b                                         ; $6d73: $80
    ld h, e                                       ; $6d74: $63
    add b                                         ; $6d75: $80
    res 5, [hl]                                   ; $6d76: $cb $ae
    dec b                                         ; $6d78: $05
    db $f4                                        ; $6d79: $f4
    ld a, d                                       ; $6d7a: $7a
    ld bc, $4100                                  ; $6d7b: $01 $00 $41
    nop                                           ; $6d7e: $00
    sbc h                                         ; $6d7f: $9c
    nop                                           ; $6d80: $00
    ld de, $64c0                                  ; $6d81: $11 $c0 $64
    add b                                         ; $6d84: $80
    ld d, c                                       ; $6d85: $51
    rst $10                                       ; $6d86: $d7
    xor [hl]                                      ; $6d87: $ae
    dec b                                         ; $6d88: $05
    db $fd                                        ; $6d89: $fd
    ld [de], a                                    ; $6d8a: $12
    inc b                                         ; $6d8b: $04
    rst $08                                       ; $6d8c: $cf
    nop                                           ; $6d8d: $00
    ld c, l                                       ; $6d8e: $4d
    and e                                         ; $6d8f: $a3
    rlca                                          ; $6d90: $07
    ld d, c                                       ; $6d91: $51
    ld d, h                                       ; $6d92: $54
    ld e, [hl]                                    ; $6d93: $5e
    ld b, $cf                                     ; $6d94: $06 $cf
    add d                                         ; $6d96: $82
    ld de, $00b9                                  ; $6d97: $11 $b9 $00
    rlc [hl]                                      ; $6d9a: $cb $06
    inc bc                                        ; $6d9c: $03
    ld d, h                                       ; $6d9d: $54
    add e                                         ; $6d9e: $83
    ret nz                                        ; $6d9f: $c0

    ld [bc], a                                    ; $6da0: $02
    ld a, a                                       ; $6da1: $7f
    ld b, c                                       ; $6da2: $41
    rlca                                          ; $6da3: $07
    ei                                            ; $6da4: $fb
    inc de                                        ; $6da5: $13
    rlca                                          ; $6da6: $07
    inc h                                         ; $6da7: $24
    nop                                           ; $6da8: $00
    inc d                                         ; $6da9: $14
    sbc d                                         ; $6daa: $9a
    nop                                           ; $6dab: $00
    sbc l                                         ; $6dac: $9d
    cp h                                          ; $6dad: $bc
    inc b                                         ; $6dae: $04
    ld h, [hl]                                    ; $6daf: $66
    ld e, $02                                     ; $6db0: $1e $02
    db $fd                                        ; $6db2: $fd
    nop                                           ; $6db3: $00
    ld d, b                                       ; $6db4: $50
    sbc a                                         ; $6db5: $9f
    db $eb                                        ; $6db6: $eb
    rlca                                          ; $6db7: $07
    cp l                                          ; $6db8: $bd
    ld d, d                                       ; $6db9: $52
    ld [bc], a                                    ; $6dba: $02
    jr c, jr_0bd_6dbd                             ; $6dbb: $38 $00

jr_0bd_6dbd:
    rst $10                                       ; $6dbd: $d7
    nop                                           ; $6dbe: $00
    ld b, b                                       ; $6dbf: $40
    ld c, e                                       ; $6dc0: $4b
    ld h, c                                       ; $6dc1: $61
    rlca                                          ; $6dc2: $07
    add d                                         ; $6dc3: $82
    ld a, a                                       ; $6dc4: $7f
    ld h, c                                       ; $6dc5: $61
    sbc a                                         ; $6dc6: $9f
    ld de, $1427                                  ; $6dc7: $11 $27 $14
    ld a, c                                       ; $6dca: $79
    inc bc                                        ; $6dcb: $03
    sbc h                                         ; $6dcc: $9c
    xor h                                         ; $6dcd: $ac
    ld bc, $60df                                  ; $6dce: $01 $df $60
    inc c                                         ; $6dd1: $0c
    rst $28                                       ; $6dd2: $ef

jr_0bd_6dd3:
    or a                                          ; $6dd3: $b7
    nop                                           ; $6dd4: $00
    rst $08                                       ; $6dd5: $cf
    rla                                           ; $6dd6: $17
    rst $28                                       ; $6dd7: $ef
    or a                                          ; $6dd8: $b7
    rst $28                                       ; $6dd9: $ef
    rst $18                                       ; $6dda: $df
    rst $28                                       ; $6ddb: $ef
    bit 0, b                                      ; $6ddc: $cb $40
    inc a                                         ; $6dde: $3c
    ret nc                                        ; $6ddf: $d0

    inc c                                         ; $6de0: $0c
    ret nz                                        ; $6de1: $c0

    db $fd                                        ; $6de2: $fd
    sub d                                         ; $6de3: $92
    db $fd                                        ; $6de4: $fd
    db $db                                        ; $6de5: $db
    db $fc                                        ; $6de6: $fc
    ld [bc], a                                    ; $6de7: $02
    ld a, [c]                                     ; $6de8: $f2
    db $fd                                        ; $6de9: $fd
    ei                                            ; $6dea: $fb
    db $ec                                        ; $6deb: $ec
    cp h                                          ; $6dec: $bc
    rst $00                                       ; $6ded: $c7
    adc a                                         ; $6dee: $8f
    rrca                                          ; $6def: $0f
    dec b                                         ; $6df0: $05
    nop                                           ; $6df1: $00
    ret nc                                        ; $6df2: $d0

    ld h, $d8                                     ; $6df3: $26 $d8
    dec h                                         ; $6df5: $25

jr_0bd_6df6:
    jp c, $de21                                   ; $6df6: $da $21 $de

    add l                                         ; $6df9: $85
    jr nz, jr_0bd_6df6                            ; $6dfa: $20 $fa

    rst $28                                       ; $6dfc: $ef
    rrca                                          ; $6dfd: $0f
    rla                                           ; $6dfe: $17
    ld hl, $7b80                                  ; $6dff: $21 $80 $7b
    nop                                           ; $6e02: $00
    ld [c], a                                     ; $6e03: $e2
    ld [c], a                                     ; $6e04: $e2
    inc a                                         ; $6e05: $3c
    inc bc                                        ; $6e06: $03
    ldh [$08], a                                  ; $6e07: $e0 $08
    nop                                           ; $6e09: $00
    dec c                                         ; $6e0a: $0d
    inc [hl]                                      ; $6e0b: $34
    nop                                           ; $6e0c: $00
    or c                                          ; $6e0d: $b1
    ld e, d                                       ; $6e0e: $5a
    ld [bc], a                                    ; $6e0f: $02
    ld [hl], l                                    ; $6e10: $75
    and b                                         ; $6e11: $a0
    inc l                                         ; $6e12: $2c
    dec b                                         ; $6e13: $05
    rst $30                                       ; $6e14: $f7
    ld c, $05                                     ; $6e15: $0e $05
    rst $38                                       ; $6e17: $ff
    nop                                           ; $6e18: $00
    inc a                                         ; $6e19: $3c
    inc bc                                        ; $6e1a: $03
    add sp, $00                                   ; $6e1b: $e8 $00
    inc bc                                        ; $6e1d: $03
    and $01                                       ; $6e1e: $e6 $01
    ld a, d                                       ; $6e20: $7a
    dec b                                         ; $6e21: $05
    pop hl                                        ; $6e22: $e1
    ld e, $ff                                     ; $6e23: $1e $ff
    and b                                         ; $6e25: $a0
    ld b, b                                       ; $6e26: $40
    dec b                                         ; $6e27: $05
    cp $e0                                        ; $6e28: $fe $e0
    ld b, $9b                                     ; $6e2a: $06 $9b
    ld a, h                                       ; $6e2c: $7c
    push af                                       ; $6e2d: $f5
    ld a, d                                       ; $6e2e: $7a
    ld e, a                                       ; $6e2f: $5f
    ld [$5be0], sp                                ; $6e30: $08 $e0 $5b
    and b                                         ; $6e33: $a0
    ei                                            ; $6e34: $fb
    pop hl                                        ; $6e35: $e1
    rla                                           ; $6e36: $17
    or [hl]                                       ; $6e37: $b6
    ld b, b                                       ; $6e38: $40
    and $a8                                       ; $6e39: $e6 $a8
    ld a, [$ff06]                                 ; $6e3b: $fa $06 $ff
    ld l, h                                       ; $6e3e: $6c
    inc b                                         ; $6e3f: $04
    ld e, c                                       ; $6e40: $59
    rst $28                                       ; $6e41: $ef
    rlca                                          ; $6e42: $07
    rst $18                                       ; $6e43: $df
    nop                                           ; $6e44: $00
    jr z, jr_0bd_6dd3                             ; $6e45: $28 $8c

    ld a, [de]                                    ; $6e47: $1a
    ld bc, $007c                                  ; $6e48: $01 $7c $00
    ld h, c                                       ; $6e4b: $61
    ld a, [de]                                    ; $6e4c: $1a
    rlca                                          ; $6e4d: $07
    rst $38                                       ; $6e4e: $ff
    rrca                                          ; $6e4f: $0f
    ei                                            ; $6e50: $fb
    nop                                           ; $6e51: $00
    dec b                                         ; $6e52: $05
    inc bc                                        ; $6e53: $03
    nop                                           ; $6e54: $00
    xor d                                         ; $6e55: $aa
    ld bc, $7237                                  ; $6e56: $01 $37 $72
    rlca                                          ; $6e59: $07
    and h                                         ; $6e5a: $a4
    db $fc                                        ; $6e5b: $fc
    ld b, $4d                                     ; $6e5c: $06 $4d
    rst $20                                       ; $6e5e: $e7
    inc e                                         ; $6e5f: $1c
    inc c                                         ; $6e60: $0c
    nop                                           ; $6e61: $00
    ld a, a                                       ; $6e62: $7f
    inc c                                         ; $6e63: $0c
    ld bc, $0b6a                                  ; $6e64: $01 $6a $0b
    ld b, h                                       ; $6e67: $44
    jp nz, Jump_0bd_4100                          ; $6e68: $c2 $00 $41

    ld a, [hl]                                    ; $6e6b: $7e
    ld [c], a                                     ; $6e6c: $e2
    inc bc                                        ; $6e6d: $03
    add hl, sp                                    ; $6e6e: $39
    nop                                           ; $6e6f: $00
    adc e                                         ; $6e70: $8b
    nop                                           ; $6e71: $00
    daa                                           ; $6e72: $27
    jp c, Jump_0bd_4403                           ; $6e73: $da $03 $44

    ccf                                           ; $6e76: $3f
    ld a, [hl]                                    ; $6e77: $7e
    dec b                                         ; $6e78: $05
    db $fd                                        ; $6e79: $fd
    nop                                           ; $6e7a: $00
    add b                                         ; $6e7b: $80
    add sp, $05                                   ; $6e7c: $e8 $05
    ld c, e                                       ; $6e7e: $4b
    add b                                         ; $6e7f: $80

jr_0bd_6e80:
    ld bc, $9f60                                  ; $6e80: $01 $60 $9f
    add b                                         ; $6e83: $80
    ld a, a                                       ; $6e84: $7f
    cp d                                          ; $6e85: $ba
    dec b                                         ; $6e86: $05
    ld a, [c]                                     ; $6e87: $f2
    rst $08                                       ; $6e88: $cf
    rlca                                          ; $6e89: $07
    dec b                                         ; $6e8a: $05
    ld b, l                                       ; $6e8b: $45
    nop                                           ; $6e8c: $00
    ld e, $00                                     ; $6e8d: $1e $00
    and [hl]                                      ; $6e8f: $a6
    ld [$9705], a                                 ; $6e90: $ea $05 $97
    ld c, $07                                     ; $6e93: $0e $07
    adc l                                         ; $6e95: $8d
    ld d, b                                       ; $6e96: $50
    ld [$ff59], sp                                ; $6e97: $08 $59 $ff
    add a                                         ; $6e9a: $87
    ld a, h                                       ; $6e9b: $7c
    ld b, $b5                                     ; $6e9c: $06 $b5
    ld b, $f0                                     ; $6e9e: $06 $f0
    add [hl]                                      ; $6ea0: $86
    rlca                                          ; $6ea1: $07
    ld b, l                                       ; $6ea2: $45
    db $e4                                        ; $6ea3: $e4
    xor [hl]                                      ; $6ea4: $ae
    inc c                                         ; $6ea5: $0c
    rst $38                                       ; $6ea6: $ff
    ldh a, [$fe]                                  ; $6ea7: $f0 $fe
    jr z, jr_0bd_6eb2                             ; $6ea9: $28 $07

    halt                                          ; $6eab: $76
    ld a, b                                       ; $6eac: $78
    ld [bc], a                                    ; $6ead: $02
    ld d, l                                       ; $6eae: $55
    ccf                                           ; $6eaf: $3f
    ld [de], a                                    ; $6eb0: $12
    rlca                                          ; $6eb1: $07

jr_0bd_6eb2:
    push bc                                       ; $6eb2: $c5
    jr nc, jr_0bd_6eb5                            ; $6eb3: $30 $00

jr_0bd_6eb5:
    adc h                                         ; $6eb5: $8c
    ld a, d                                       ; $6eb6: $7a
    rlca                                          ; $6eb7: $07
    sub d                                         ; $6eb8: $92
    inc l                                         ; $6eb9: $2c
    rlca                                          ; $6eba: $07
    ld b, h                                       ; $6ebb: $44
    ld a, [$0620]                                 ; $6ebc: $fa $20 $06
    or h                                          ; $6ebf: $b4
    ld bc, $78de                                  ; $6ec0: $01 $de $78
    dec b                                         ; $6ec3: $05
    ld sp, hl                                     ; $6ec4: $f9
    ld b, $17                                     ; $6ec5: $06 $17
    sub $01                                       ; $6ec7: $d6 $01
    ei                                            ; $6ec9: $fb
    db $fd                                        ; $6eca: $fd
    rlca                                          ; $6ecb: $07
    rst $30                                       ; $6ecc: $f7
    ld d, b                                       ; $6ecd: $50
    ld bc, $39a0                                  ; $6ece: $01 $a0 $39
    dec l                                         ; $6ed1: $2d
    ld a, [bc]                                    ; $6ed2: $0a
    adc e                                         ; $6ed3: $8b
    and b                                         ; $6ed4: $a0
    add hl, de                                    ; $6ed5: $19
    ld [hl], e                                    ; $6ed6: $73
    add b                                         ; $6ed7: $80
    db $db                                        ; $6ed8: $db
    ld c, h                                       ; $6ed9: $4c
    rlca                                          ; $6eda: $07
    push af                                       ; $6edb: $f5
    ld a, [de]                                    ; $6edc: $1a
    inc bc                                        ; $6edd: $03
    ret nz                                        ; $6ede: $c0

    rlca                                          ; $6edf: $07
    jr z, jr_0bd_6e80                             ; $6ee0: $28 $9e

    ld hl, $057e                                  ; $6ee2: $21 $7e $05
    ld l, [hl]                                    ; $6ee5: $6e
    sub b                                         ; $6ee6: $90
    inc b                                         ; $6ee7: $04
    cp $01                                        ; $6ee8: $fe $01
    ld l, a                                       ; $6eea: $6f
    nop                                           ; $6eeb: $00
    sub b                                         ; $6eec: $90
    nop                                           ; $6eed: $00
    ld a, a                                       ; $6eee: $7f
    inc b                                         ; $6eef: $04
    ld a, e                                       ; $6ef0: $7b
    inc c                                         ; $6ef1: $0c
    ld [hl], e                                    ; $6ef2: $73
    nop                                           ; $6ef3: $00
    nop                                           ; $6ef4: $00
    rra                                           ; $6ef5: $1f
    ldh [rIF], a                                  ; $6ef6: $e0 $0f
    ret nz                                        ; $6ef8: $c0

    rlca                                          ; $6ef9: $07
    ld h, b                                       ; $6efa: $60
    sub e                                         ; $6efb: $93
    add b                                         ; $6efc: $80
    ld b, b                                       ; $6efd: $40
    rra                                           ; $6efe: $1f
    sub l                                         ; $6eff: $95
    dec d                                         ; $6f00: $15
    rst $38                                       ; $6f01: $ff
    nop                                           ; $6f02: $00
    pop af                                        ; $6f03: $f1
    ld b, $f8                                     ; $6f04: $06 $f8
    inc bc                                        ; $6f06: $03
    db $10                                        ; $6f07: $10
    ld hl, sp+$03                                 ; $6f08: $f8 $03
    db $fc                                        ; $6f0a: $fc
    ld [hl], b                                    ; $6f0b: $70
    ld [bc], a                                    ; $6f0c: $02
    rst $20                                       ; $6f0d: $e7
    ld [$08f3], sp                                ; $6f0e: $08 $f3 $08
    nop                                           ; $6f11: $00
    di                                            ; $6f12: $f3
    inc e                                         ; $6f13: $1c
    pop hl                                        ; $6f14: $e1
    inc c                                         ; $6f15: $0c
    sub c                                         ; $6f16: $91
    ld l, [hl]                                    ; $6f17: $6e
    ld bc, $80f9                                  ; $6f18: $01 $f9 $80
    ld b, b                                       ; $6f1b: $40
    ld b, $00                                     ; $6f1c: $06 $00
    ldh a, [$2f]                                  ; $6f1e: $f0 $2f
    nop                                           ; $6f20: $00

jr_0bd_6f21:
    inc bc                                        ; $6f21: $03
    call c, $011f                                 ; $6f22: $dc $1f $01
    ret nz                                        ; $6f25: $c0

    rra                                           ; $6f26: $1f
    ld h, d                                       ; $6f27: $62
    cp a                                          ; $6f28: $bf
    db $10                                        ; $6f29: $10
    rst $38                                       ; $6f2a: $ff
    cp c                                          ; $6f2b: $b9
    ret nz                                        ; $6f2c: $c0

    dec b                                         ; $6f2d: $05
    nop                                           ; $6f2e: $00
    di                                            ; $6f2f: $f3
    inc c                                         ; $6f30: $0c
    ld h, e                                       ; $6f31: $63
    jr jr_0bd_6f3b                                ; $6f32: $18 $07

    ld hl, sp+$00                                 ; $6f34: $f8 $00
    ld l, [hl]                                    ; $6f36: $6e
    nop                                           ; $6f37: $00
    ld bc, $014f                                  ; $6f38: $01 $4f $01

Call_0bd_6f3b:
jr_0bd_6f3b:
    rst $28                                       ; $6f3b: $ef
    dec bc                                        ; $6f3c: $0b
    rst $30                                       ; $6f3d: $f7
    nop                                           ; $6f3e: $00
    ld c, $00                                     ; $6f3f: $0e $00
    ldh [$15], a                                  ; $6f41: $e0 $15
    ret nz                                        ; $6f43: $c0

    call c, $ff80                                 ; $6f44: $dc $80 $ff
    ld [$00fb], sp                                ; $6f47: $08 $fb $00
    or c                                          ; $6f4a: $b1
    rst $38                                       ; $6f4b: $ff
    ld [de], a                                    ; $6f4c: $12
    rst $38                                       ; $6f4d: $ff
    xor b                                         ; $6f4e: $a8
    rst $38                                       ; $6f4f: $ff
    add hl, sp                                    ; $6f50: $39
    db $f4                                        ; $6f51: $f4
    nop                                           ; $6f52: $00
    inc bc                                        ; $6f53: $03
    ld a, [c]                                     ; $6f54: $f2
    ld bc, $41ee                                  ; $6f55: $01 $ee $41
    db $fc                                        ; $6f58: $fc
    nop                                           ; $6f59: $00
    or e                                          ; $6f5a: $b3
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    rst $30                                       ; $6f5d: $f7
    jr nz, @+$01                                  ; $6f5e: $20 $ff

    ld [bc], a                                    ; $6f60: $02
    rst $38                                       ; $6f61: $ff

jr_0bd_6f62:
    ld c, e                                       ; $6f62: $4b
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    db $fc                                        ; $6f65: $fc
    ld bc, $03ee                                  ; $6f66: $01 $ee $03
    call z, $c631                                 ; $6f69: $cc $31 $c6
    inc sp                                        ; $6f6c: $33
    inc c                                         ; $6f6d: $0c
    add h                                         ; $6f6e: $84
    ld l, a                                       ; $6f6f: $6f
    nop                                           ; $6f70: $00
    cp $61                                        ; $6f71: $fe $61
    dec b                                         ; $6f73: $05
    cpl                                           ; $6f74: $2f
    ld bc, $803f                                  ; $6f75: $01 $3f $80
    ld [bc], a                                    ; $6f78: $02
    daa                                           ; $6f79: $27
    jr jr_0bd_6fbd                                ; $6f7a: $18 $41

    cp [hl]                                       ; $6f7c: $be
    ld b, c                                       ; $6f7d: $41
    ld d, [hl]                                    ; $6f7e: $56
    ret nc                                        ; $6f7f: $d0

    dec b                                         ; $6f80: $05
    rst $38                                       ; $6f81: $ff
    ld b, b                                       ; $6f82: $40
    ld [$0780], sp                                ; $6f83: $08 $80 $07
    add a                                         ; $6f86: $87
    ld a, h                                       ; $6f87: $7c
    ld bc, $e01e                                  ; $6f88: $01 $1e $e0
    ld c, $00                                     ; $6f8b: $0e $00
    or b                                          ; $6f8d: $b0
    ld l, a                                       ; $6f8e: $6f
    ld [de], a                                    ; $6f8f: $12
    ld a, e                                       ; $6f90: $7b
    nop                                           ; $6f91: $00
    db $dd                                        ; $6f92: $dd
    ld [$0000], sp                                ; $6f93: $08 $00 $00
    rst $20                                       ; $6f96: $e7
    db $10                                        ; $6f97: $10
    rst $08                                       ; $6f98: $cf
    jr nc, jr_0bd_6f62                            ; $6f99: $30 $c7

    jr c, @-$77                                   ; $6f9b: $38 $87

    ld [hl], b                                    ; $6f9d: $70
    jr z, jr_0bd_6f21                             ; $6f9e: $28 $81

    ld l, $ca                                     ; $6fa0: $2e $ca
    ld bc, $70f7                                  ; $6fa2: $01 $f7 $70
    ld [$18e3], sp                                ; $6fa5: $08 $e3 $18
    add a                                         ; $6fa8: $87
    ld b, b                                       ; $6fa9: $40
    ld a, [hl]                                    ; $6faa: $7e
    cp h                                          ; $6fab: $bc
    nop                                           ; $6fac: $00
    rst $18                                       ; $6fad: $df
    nop                                           ; $6fae: $00
    rst $28                                       ; $6faf: $ef

jr_0bd_6fb0:
    adc b                                         ; $6fb0: $88
    rst $38                                       ; $6fb1: $ff
    ld [bc], a                                    ; $6fb2: $02
    add b                                         ; $6fb3: $80
    jr nz, @+$12                                  ; $6fb4: $20 $10

    add a                                         ; $6fb6: $87
    inc a                                         ; $6fb7: $3c
    add c                                         ; $6fb8: $81

jr_0bd_6fb9:
    ld a, a                                       ; $6fb9: $7f
    add b                                         ; $6fba: $80
    ld l, a                                       ; $6fbb: $6f
    nop                                           ; $6fbc: $00

jr_0bd_6fbd:
    db $10                                        ; $6fbd: $10
    rst $18                                       ; $6fbe: $df
    ld [bc], a                                    ; $6fbf: $02
    rst $30                                       ; $6fc0: $f7
    ld h, b                                       ; $6fc1: $60
    rlca                                          ; $6fc2: $07
    nop                                           ; $6fc3: $00
    pop hl                                        ; $6fc4: $e1
    ld e, $c0                                     ; $6fc5: $1e $c0
    nop                                           ; $6fc7: $00
    ld [hl], b                                    ; $6fc8: $70
    inc bc                                        ; $6fc9: $03
    jp nc, $f704                                  ; $6fca: $d2 $04 $f7

    ld [$46ff], sp                                ; $6fcd: $08 $ff $46
    jr nc, @+$01                                  ; $6fd0: $30 $ff

    jr nz, jr_0bd_6fb9                            ; $6fd2: $20 $e5

    nop                                           ; $6fd4: $00
    ld [hl], d                                    ; $6fd5: $72
    nop                                           ; $6fd6: $00
    inc hl                                        ; $6fd7: $23
    call z, $8631                                 ; $6fd8: $cc $31 $86
    jr jr_0bd_704e                                ; $6fdb: $18 $71

    inc b                                         ; $6fdd: $04
    rst $20                                       ; $6fde: $e7
    xor b                                         ; $6fdf: $a8
    inc b                                         ; $6fe0: $04
    ldh [rTAC], a                                 ; $6fe1: $e0 $07
    ld a, [hl]                                    ; $6fe3: $7e
    add b                                         ; $6fe4: $80
    ccf                                           ; $6fe5: $3f
    nop                                           ; $6fe6: $00
    ret nz                                        ; $6fe7: $c0

    inc hl                                        ; $6fe8: $23
    sbc h                                         ; $6fe9: $9c
    ld b, c                                       ; $6fea: $41
    cp h                                          ; $6feb: $bc
    ld b, c                                       ; $6fec: $41
    ld l, [hl]                                    ; $6fed: $6e
    nop                                           ; $6fee: $00
    jr nz, jr_0bd_6fb0                            ; $6fef: $20 $bf

    ld [$08fa], sp                                ; $6ff1: $08 $fa $08
    ld [hl], b                                    ; $6ff4: $70
    add a                                         ; $6ff5: $87
    ld h, b                                       ; $6ff6: $60
    adc [hl]                                      ; $6ff7: $8e
    ld sp, $c400                                  ; $6ff8: $31 $00 $c4
    inc hl                                        ; $6ffb: $23
    adc h                                         ; $6ffc: $8c
    di                                            ; $6ffd: $f3
    add b                                         ; $6ffe: $80
    rst $18                                       ; $6fff: $df
    add b                                         ; $7000: $80
    nop                                           ; $7001: $00
    db $10                                        ; $7002: $10
    pop af                                        ; $7003: $f1
    ld c, $e0                                     ; $7004: $0e $e0
    ld hl, sp+$00                                 ; $7006: $f8 $00
    ld hl, sp+$14                                 ; $7008: $f8 $14
    ret nz                                        ; $700a: $c0

    rra                                           ; $700b: $1f
    ld e, b                                       ; $700c: $58
    ld h, b                                       ; $700d: $60
    or b                                          ; $700e: $b0
    nop                                           ; $700f: $00
    sbc c                                         ; $7010: $99
    and l                                         ; $7011: $a5
    ld d, $52                                     ; $7012: $16 $52
    nop                                           ; $7014: $00
    ld a, b                                       ; $7015: $78
    inc bc                                        ; $7016: $03
    di                                            ; $7017: $f3
    dec b                                         ; $7018: $05
    inc b                                         ; $7019: $04
    rst $10                                       ; $701a: $d7
    ld [$02bf], sp                                ; $701b: $08 $bf $02
    ld d, b                                       ; $701e: $50
    jr jr_0bd_7034                                ; $701f: $18 $13

    ld d, b                                       ; $7021: $50
    nop                                           ; $7022: $00
    jr z, @+$3c                                   ; $7023: $28 $3a

    add h                                         ; $7025: $84
    ld a, d                                       ; $7026: $7a
    ld b, $01                                     ; $7027: $06 $01
    jr nz, jr_0bd_7043                            ; $7029: $20 $18

    ld a, [de]                                    ; $702b: $1a
    ret nz                                        ; $702c: $c0

    jr c, jr_0bd_7030                             ; $702d: $38 $01

    rlca                                          ; $702f: $07

jr_0bd_7030:
    ld e, c                                       ; $7030: $59
    inc b                                         ; $7031: $04
    rst $30                                       ; $7032: $f7
    inc c                                         ; $7033: $0c

jr_0bd_7034:
    rst $28                                       ; $7034: $ef
    ld c, $70                                     ; $7035: $0e $70
    jr c, @+$54                                   ; $7037: $38 $52

    inc sp                                        ; $7039: $33
    jr nz, jr_0bd_703c                            ; $703a: $20 $00

jr_0bd_703c:
    ei                                            ; $703c: $fb
    jr nz, jr_0bd_7047                            ; $703d: $20 $08

    ld a, [hl]                                    ; $703f: $7e
    nop                                           ; $7040: $00
    ld [c], a                                     ; $7041: $e2
    nop                                           ; $7042: $00

jr_0bd_7043:
    db $fc                                        ; $7043: $fc
    ld bc, $7401                                  ; $7044: $01 $01 $74

jr_0bd_7047:
    ld bc, $00ee                                  ; $7047: $01 $ee $00
    db $fd                                        ; $704a: $fd
    add b                                         ; $704b: $80
    ld l, d                                       ; $704c: $6a
    add hl, bc                                    ; $704d: $09

jr_0bd_704e:
    ld b, b                                       ; $704e: $40
    jr nc, jr_0bd_70c1                            ; $704f: $30 $70

    nop                                           ; $7051: $00
    ld [hl-], a                                   ; $7052: $32
    call nz, $8473                                ; $7053: $c4 $73 $84
    ld l, a                                       ; $7056: $6f
    add b                                         ; $7057: $80
    ld hl, $807d                                  ; $7058: $21 $7d $80
    inc sp                                        ; $705b: $33
    rlca                                          ; $705c: $07
    di                                            ; $705d: $f3
    ld [$9863], sp                                ; $705e: $08 $63 $98
    ld b, d                                       ; $7061: $42
    ld bc, $ee04                                  ; $7062: $01 $04 $ee
    ld bc, $019f                                  ; $7065: $01 $9f $01
    rst $28                                       ; $7068: $ef
    ret nz                                        ; $7069: $c0

    rlca                                          ; $706a: $07
    ld [bc], a                                    ; $706b: $02
    db $fc                                        ; $706c: $fc
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    cp $11                                        ; $706f: $fe $11
    ld [c], a                                     ; $7071: $e2
    dec c                                         ; $7072: $0d
    ldh a, [$03]                                  ; $7073: $f0 $03
    db $fc                                        ; $7075: $fc
    nop                                           ; $7076: $00
    rlca                                          ; $7077: $07
    ldh a, [$0e]                                  ; $7078: $f0 $0e
    pop hl                                        ; $707a: $e1
    ld c, [hl]                                    ; $707b: $4e
    and b                                         ; $707c: $a0
    dec d                                         ; $707d: $15
    add b                                         ; $707e: $80
    or h                                          ; $707f: $b4
    ld d, b                                       ; $7080: $50
    ld [hl], c                                    ; $7081: $71
    ld b, b                                       ; $7082: $40
    ld d, b                                       ; $7083: $50
    ld b, c                                       ; $7084: $41
    ld b, b                                       ; $7085: $40

jr_0bd_7086:
    jr nz, jr_0bd_7086                            ; $7086: $20 $fe

    ld e, c                                       ; $7088: $59
    ld bc, $01dd                                  ; $7089: $01 $dd $01
    nop                                           ; $708c: $00
    db $eb                                        ; $708d: $eb
    dec bc                                        ; $708e: $0b
    ld a, a                                       ; $708f: $7f
    inc h                                         ; $7090: $24
    ld a, [$9f22]                                 ; $7091: $fa $22 $9f
    adc a                                         ; $7094: $8f
    dec b                                         ; $7095: $05
    db $ed                                        ; $7096: $ed
    rst $28                                       ; $7097: $ef
    add hl, sp                                    ; $7098: $39
    rst $38                                       ; $7099: $ff
    ld b, h                                       ; $709a: $44
    xor [hl]                                      ; $709b: $ae
    ld b, $00                                     ; $709c: $06 $00
    ld c, b                                       ; $709e: $48
    inc b                                         ; $709f: $04
    ld d, b                                       ; $70a0: $50
    add b                                         ; $70a1: $80
    add a                                         ; $70a2: $87
    ld bc, $ec20                                  ; $70a3: $01 $20 $ec
    ld d, $21                                     ; $70a6: $16 $21
    rst $38                                       ; $70a8: $ff
    ld d, $ff                                     ; $70a9: $16 $ff
    nop                                           ; $70ab: $00
    inc bc                                        ; $70ac: $03
    adc h                                         ; $70ad: $8c
    ld [hl], e                                    ; $70ae: $73
    ld [bc], a                                    ; $70af: $02
    ccf                                           ; $70b0: $3f
    jp $e1bf                                      ; $70b1: $c3 $bf $e1


    ld a, [bc]                                    ; $70b4: $0a
    ld a, a                                       ; $70b5: $7f
    di                                            ; $70b6: $f3
    cp a                                          ; $70b7: $bf
    ld sp, hl                                     ; $70b8: $f9
    jp hl                                         ; $70b9: $e9


    dec b                                         ; $70ba: $05
    rst $38                                       ; $70bb: $ff
    inc de                                        ; $70bc: $13
    rlca                                          ; $70bd: $07
    add b                                         ; $70be: $80
    add b                                         ; $70bf: $80
    sbc b                                         ; $70c0: $98

jr_0bd_70c1:
    ld bc, $ffa5                                  ; $70c1: $01 $a5 $ff
    ld l, l                                       ; $70c4: $6d
    rst $38                                       ; $70c5: $ff
    jr z, @+$01                                   ; $70c6: $28 $ff

    cp [hl]                                       ; $70c8: $be
    adc d                                         ; $70c9: $8a
    ei                                            ; $70ca: $fb
    dec b                                         ; $70cb: $05
    sub d                                         ; $70cc: $92
    rst $38                                       ; $70cd: $ff
    dec d                                         ; $70ce: $15
    dec sp                                        ; $70cf: $3b
    inc b                                         ; $70d0: $04
    add h                                         ; $70d1: $84
    call c, $f701                                 ; $70d2: $dc $01 $f7
    adc d                                         ; $70d5: $8a
    or h                                          ; $70d6: $b4
    inc b                                         ; $70d7: $04
    rst $38                                       ; $70d8: $ff
    rst $18                                       ; $70d9: $df
    ld b, $a6                                     ; $70da: $06 $a6
    rlca                                          ; $70dc: $07
    and [hl]                                      ; $70dd: $a6
    ld h, l                                       ; $70de: $65
    inc b                                         ; $70df: $04
    add $a0                                       ; $70e0: $c6 $a0
    ld [hl+], a                                   ; $70e2: $22
    nop                                           ; $70e3: $00
    db $fc                                        ; $70e4: $fc
    dec de                                        ; $70e5: $1b
    ld b, $83                                     ; $70e6: $06 $83
    rst $38                                       ; $70e8: $ff
    halt                                          ; $70e9: $76
    rst $38                                       ; $70ea: $ff
    ld d, h                                       ; $70eb: $54
    add d                                         ; $70ec: $82
    add hl, hl                                    ; $70ed: $29
    dec b                                         ; $70ee: $05
    or b                                          ; $70ef: $b0
    rst $38                                       ; $70f0: $ff
    sbc $ff                                       ; $70f1: $de $ff
    db $fd                                        ; $70f3: $fd
    ld c, h                                       ; $70f4: $4c
    rlca                                          ; $70f5: $07
    ld b, [hl]                                    ; $70f6: $46
    adc h                                         ; $70f7: $8c
    add hl, de                                    ; $70f8: $19
    dec b                                         ; $70f9: $05
    and [hl]                                      ; $70fa: $a6
    rst $38                                       ; $70fb: $ff
    inc d                                         ; $70fc: $14
    jr nz, jr_0bd_710f                            ; $70fd: $20 $10

    ld d, c                                       ; $70ff: $51
    ld [$ff23], sp                                ; $7100: $08 $23 $ff
    db $10                                        ; $7103: $10
    ld e, c                                       ; $7104: $59
    rst $38                                       ; $7105: $ff
    ld b, c                                       ; $7106: $41
    push de                                       ; $7107: $d5
    rlca                                          ; $7108: $07
    or [hl]                                       ; $7109: $b6
    rst $38                                       ; $710a: $ff
    db $10                                        ; $710b: $10
    rst $38                                       ; $710c: $ff
    ld d, c                                       ; $710d: $51
    ld a, l                                       ; $710e: $7d

jr_0bd_710f:
    ld c, e                                       ; $710f: $4b
    ld b, $4a                                     ; $7110: $06 $4a
    ld c, c                                       ; $7112: $49
    rlca                                          ; $7113: $07
    ld [hl], h                                    ; $7114: $74
    rst $38                                       ; $7115: $ff
    jp nc, $02ce                                  ; $7116: $d2 $ce $02

    ld c, b                                       ; $7119: $48
    ld a, h                                       ; $711a: $7c
    ld [hl], b                                    ; $711b: $70
    ld [$40e7], sp                                ; $711c: $08 $e7 $40
    ld h, a                                       ; $711f: $67
    rlca                                          ; $7120: $07
    ld sp, $73ff                                  ; $7121: $31 $ff $73
    ld a, [bc]                                    ; $7124: $0a
    rst $38                                       ; $7125: $ff
    ld l, c                                       ; $7126: $69
    rst $38                                       ; $7127: $ff
    push af                                       ; $7128: $f5
    add b                                         ; $7129: $80
    db $10                                        ; $712a: $10
    sub b                                         ; $712b: $90
    ld d, $02                                     ; $712c: $16 $02
    ld d, [hl]                                    ; $712e: $56
    dec hl                                        ; $712f: $2b
    rst $38                                       ; $7130: $ff
    or h                                          ; $7131: $b4
    db $e3                                        ; $7132: $e3
    inc b                                         ; $7133: $04
    sbc $d1                                       ; $7134: $de $d1
    inc b                                         ; $7136: $04
    rst $38                                       ; $7137: $ff
    inc a                                         ; $7138: $3c
    nop                                           ; $7139: $00
    ld [hl], b                                    ; $713a: $70
    ld [$1714], sp                                ; $713b: $08 $14 $17
    rst $38                                       ; $713e: $ff
    and $92                                       ; $713f: $e6 $92
    nop                                           ; $7141: $00
    cp $8b                                        ; $7142: $fe $8b
    ld b, $01                                     ; $7144: $06 $01
    rst $38                                       ; $7146: $ff
    ld bc, $ff0a                                  ; $7147: $01 $0a $ff
    ld h, $ff                                     ; $714a: $26 $ff
    xor a                                         ; $714c: $af
    rst $38                                       ; $714d: $ff
    ld l, [hl]                                    ; $714e: $6e
    ld c, [hl]                                    ; $714f: $4e
    nop                                           ; $7150: $00
    ld b, c                                       ; $7151: $41
    ld e, a                                       ; $7152: $5f
    sbc e                                         ; $7153: $9b
    ld b, $00                                     ; $7154: $06 $00
    rst $38                                       ; $7156: $ff
    ld c, c                                       ; $7157: $49
    rst $38                                       ; $7158: $ff
    ld b, e                                       ; $7159: $43
    db $db                                        ; $715a: $db
    rlca                                          ; $715b: $07
    ld a, [de]                                    ; $715c: $1a
    ld c, a                                       ; $715d: $4f
    rst $38                                       ; $715e: $ff
    sbc a                                         ; $715f: $9f
    jr nz, jr_0bd_7172                            ; $7160: $20 $10

    add b                                         ; $7162: $80
    ld h, b                                       ; $7163: $60
    nop                                           ; $7164: $00
    cpl                                           ; $7165: $2f
    nop                                           ; $7166: $00
    add h                                         ; $7167: $84
    adc b                                         ; $7168: $88
    rst $38                                       ; $7169: $ff
    rlca                                          ; $716a: $07
    add h                                         ; $716b: $84
    rst $38                                       ; $716c: $ff
    ld a, [hl+]                                   ; $716d: $2a
    ld h, d                                       ; $716e: $62
    dec b                                         ; $716f: $05
    cp $ff                                        ; $7170: $fe $ff

jr_0bd_7172:
    rlca                                          ; $7172: $07
    ld d, c                                       ; $7173: $51
    ld hl, sp-$0e                                 ; $7174: $f8 $f2
    inc c                                         ; $7176: $0c
    ld bc, $010e                                  ; $7177: $01 $0e $01
    sub b                                         ; $717a: $90
    rst $38                                       ; $717b: $ff
    add sp, $61                                   ; $717c: $e8 $61
    db $10                                        ; $717e: $10
    add b                                         ; $717f: $80
    inc bc                                        ; $7180: $03
    ld e, b                                       ; $7181: $58
    jr nz, jr_0bd_718c                            ; $7182: $20 $08

    ld a, $05                                     ; $7184: $3e $05
    ld [$bf03], sp                                ; $7186: $08 $03 $bf
    dec b                                         ; $7189: $05
    ld a, a                                       ; $718a: $7f
    inc b                                         ; $718b: $04

jr_0bd_718c:
    ld [$bf0b], sp                                ; $718c: $08 $0b $bf
    rla                                           ; $718f: $17
    ld [bc], a                                    ; $7190: $02
    ld a, a                                       ; $7191: $7f
    dec hl                                        ; $7192: $2b
    rst $38                                       ; $7193: $ff
    rlca                                          ; $7194: $07
    ld a, a                                       ; $7195: $7f
    rst $38                                       ; $7196: $ff
    ld bc, $f860                                  ; $7197: $01 $60 $f8
    ld [bc], a                                    ; $719a: $02
    rst $38                                       ; $719b: $ff
    db $fc                                        ; $719c: $fc
    rst $38                                       ; $719d: $ff
    ld a, [$f4ff]                                 ; $719e: $fa $ff $f4
    inc b                                         ; $71a1: $04
    db $10                                        ; $71a2: $10
    ld hl, sp+$00                                 ; $71a3: $f8 $00
    rst $38                                       ; $71a5: $ff
    db $f4                                        ; $71a6: $f4
    cp $0b                                        ; $71a7: $fe $0b
    rst $38                                       ; $71a9: $ff
    rla                                           ; $71aa: $17
    ld a, a                                       ; $71ab: $7f
    cpl                                           ; $71ac: $2f
    nop                                           ; $71ad: $00
    rst $38                                       ; $71ae: $ff
    rla                                           ; $71af: $17
    rst $38                                       ; $71b0: $ff
    cpl                                           ; $71b1: $2f
    rst $38                                       ; $71b2: $ff
    ld b, a                                       ; $71b3: $47
    rst $38                                       ; $71b4: $ff
    rrca                                          ; $71b5: $0f
    jp c, RST_30                                  ; $71b6: $da $30 $00

    jr nz, jr_0bd_71bb                            ; $71b9: $20 $00

jr_0bd_71bb:
    cp $04                                        ; $71bb: $fe $04
    jr nz, @+$2a                                  ; $71bd: $20 $28

    nop                                           ; $71bf: $00
    db $fc                                        ; $71c0: $fc
    inc d                                         ; $71c1: $14
    db $10                                        ; $71c2: $10
    rrca                                          ; $71c3: $0f
    jr nc, @+$01                                  ; $71c4: $30 $ff

    ld d, a                                       ; $71c6: $57
    jr nz, jr_0bd_71c9                            ; $71c7: $20 $00

jr_0bd_71c9:
    inc h                                         ; $71c9: $24
    nop                                           ; $71ca: $00
    ld a, a                                       ; $71cb: $7f
    rla                                           ; $71cc: $17
    rst $38                                       ; $71cd: $ff
    cp $f0                                        ; $71ce: $fe $f0
    ld b, b                                       ; $71d0: $40
    nop                                           ; $71d1: $00
    inc b                                         ; $71d2: $04
    ld [$081c], sp                                ; $71d3: $08 $1c $08
    jr nz, jr_0bd_71e8                            ; $71d6: $20 $10

    ld a, a                                       ; $71d8: $7f
    rlca                                          ; $71d9: $07
    rst $38                                       ; $71da: $ff
    dec bc                                        ; $71db: $0b
    ld e, $7f                                     ; $71dc: $1e $7f
    rlca                                          ; $71de: $07
    cp a                                          ; $71df: $bf
    inc b                                         ; $71e0: $04
    jr z, @+$22                                   ; $71e1: $28 $20

    ld c, b                                       ; $71e3: $48
    ld h, b                                       ; $71e4: $60
    nop                                           ; $71e5: $00
    jr nz, jr_0bd_71e8                            ; $71e6: $20 $00

jr_0bd_71e8:
    rla                                           ; $71e8: $17
    and e                                         ; $71e9: $a3
    inc h                                         ; $71ea: $24
    nop                                           ; $71eb: $00
    rra                                           ; $71ec: $1f
    ld h, b                                       ; $71ed: $60
    nop                                           ; $71ee: $00
    rra                                           ; $71ef: $1f
    rst $38                                       ; $71f0: $ff
    ccf                                           ; $71f1: $3f
    inc b                                         ; $71f2: $04
    nop                                           ; $71f3: $00
    ld d, h                                       ; $71f4: $54
    ld [$2083], sp                                ; $71f5: $08 $83 $20
    ld c, b                                       ; $71f8: $48
    ccf                                           ; $71f9: $3f
    rst $38                                       ; $71fa: $ff
    ld e, a                                       ; $71fb: $5f
    rst $38                                       ; $71fc: $ff
    cp a                                          ; $71fd: $bf
    inc b                                         ; $71fe: $04
    nop                                           ; $71ff: $00
    add h                                         ; $7200: $84
    ld [$2c8c], sp                                ; $7201: $08 $8c $2c
    ld [$fff8], sp                                ; $7204: $08 $f8 $ff
    ldh a, [rDIV]                                 ; $7207: $f0 $04

jr_0bd_7209:
    db $10                                        ; $7209: $10
    and h                                         ; $720a: $a4
    ld [$fee8], sp                                ; $720b: $08 $e8 $fe
    ld d, h                                       ; $720e: $54
    ret nc                                        ; $720f: $d0

    ld b, b                                       ; $7210: $40
    ld [$04bf], sp                                ; $7211: $08 $bf $04
    ld [$682b], sp                                ; $7214: $08 $2b $68
    jr @+$01                                      ; $7217: $18 $ff

    ldh [$a0], a                                  ; $7219: $e0 $a0
    inc d                                         ; $721b: $14
    nop                                           ; $721c: $00
    and b                                         ; $721d: $a0

jr_0bd_721e:
    inc b                                         ; $721e: $04
    jr jr_0bd_721e                                ; $721f: $18 $fd

    and b                                         ; $7221: $a0
    cp $f0                                        ; $7222: $fe $f0
    db $fd                                        ; $7224: $fd
    dec d                                         ; $7225: $15
    dec bc                                        ; $7226: $0b
    ld a, a                                       ; $7227: $7f
    dec b                                         ; $7228: $05
    ld a, h                                       ; $7229: $7c
    nop                                           ; $722a: $00
    dec d                                         ; $722b: $15
    jr nz, jr_0bd_724e                            ; $722c: $20 $20

    rla                                           ; $722e: $17
    jr nz, jr_0bd_7231                            ; $722f: $20 $00

jr_0bd_7231:
    dec bc                                        ; $7231: $0b
    ldh a, [$fd]                                  ; $7232: $f0 $fd
    add sp, -$02                                  ; $7234: $e8 $fe
    ld b, h                                       ; $7236: $44
    nop                                           ; $7237: $00
    cp $e0                                        ; $7238: $fe $e0
    nop                                           ; $723a: $00
    inc b                                         ; $723b: $04
    nop                                           ; $723c: $00
    or [hl]                                       ; $723d: $b6
    ld a, h                                       ; $723e: $7c
    ld [$e00f], sp                                ; $723f: $08 $0f $e0
    db $10                                        ; $7242: $10
    add h                                         ; $7243: $84
    ld [$b85f], sp                                ; $7244: $08 $5f $b8
    jr nc, jr_0bd_7209                            ; $7247: $30 $c0

    jr z, jr_0bd_724b                             ; $7249: $28 $00

jr_0bd_724b:
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    rrca                                          ; $724d: $0f

jr_0bd_724e:
    rrca                                          ; $724e: $0f
    ccf                                           ; $724f: $3f
    ccf                                           ; $7250: $3f
    ld e, a                                       ; $7251: $5f
    ld a, a                                       ; $7252: $7f
    xor a                                         ; $7253: $af
    nop                                           ; $7254: $00
    rst $38                                       ; $7255: $ff
    and l                                         ; $7256: $a5
    rst $18                                       ; $7257: $df
    ld e, [hl]                                    ; $7258: $5e
    ld h, c                                       ; $7259: $61
    ccf                                           ; $725a: $3f
    ccf                                           ; $725b: $3f
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    ldh a, [$f0]                                  ; $725f: $f0 $f0
    db $fc                                        ; $7261: $fc
    db $fc                                        ; $7262: $fc
    cp $fe                                        ; $7263: $fe $fe
    db $fd                                        ; $7265: $fd
    nop                                           ; $7266: $00
    rst $38                                       ; $7267: $ff
    ei                                            ; $7268: $fb
    rst $38                                       ; $7269: $ff
    xor [hl]                                      ; $726a: $ae
    ld a, [hl]                                    ; $726b: $7e
    db $fc                                        ; $726c: $fc
    db $fc                                        ; $726d: $fc
    nop                                           ; $726e: $00
    ld [bc], a                                    ; $726f: $02
    nop                                           ; $7270: $00
    rlca                                          ; $7271: $07
    rlca                                          ; $7272: $07
    rra                                           ; $7273: $1f
    rra                                           ; $7274: $1f
    cpl                                           ; $7275: $2f
    ld [hl+], a                                   ; $7276: $22
    nop                                           ; $7277: $00
    ld b, e                                       ; $7278: $43
    db $10                                        ; $7279: $10
    ld a, a                                       ; $727a: $7f
    jr nc, jr_0bd_72bc                            ; $727b: $30 $3f

    jr nz, @+$0a                                  ; $727d: $20 $08

    ldh [$e0], a                                  ; $727f: $e0 $e0
    ld hl, sp-$08                                 ; $7281: $f8 $f8
    nop                                           ; $7283: $00
    db $fc                                        ; $7284: $fc
    db $fc                                        ; $7285: $fc
    ld a, [$f2fe]                                 ; $7286: $fa $fe $f2
    cp $0c                                        ; $7289: $fe $0c
    db $fc                                        ; $728b: $fc
    add b                                         ; $728c: $80
    jr nz, jr_0bd_7297                            ; $728d: $20 $08

    nop                                           ; $728f: $00
    rrca                                          ; $7290: $0f
    rlca                                          ; $7291: $07
    jr c, @+$37                                   ; $7292: $38 $35

    ld c, a                                       ; $7294: $4f
    ld e, a                                       ; $7295: $5f
    ld [bc], a                                    ; $7296: $02

jr_0bd_7297:
    cp a                                          ; $7297: $bf
    xor a                                         ; $7298: $af
    rst $18                                       ; $7299: $df
    ld c, a                                       ; $729a: $4f
    ld [hl], b                                    ; $729b: $70
    dec [hl]                                      ; $729c: $35
    ld b, b                                       ; $729d: $40
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    ldh a, [$e0]                                  ; $72a1: $f0 $e0
    inc e                                         ; $72a3: $1c
    ld c, h                                       ; $72a4: $4c
    ld a, [c]                                     ; $72a5: $f2
    ld a, [$f5fd]                                 ; $72a6: $fa $fd $f5
    ld [$f2fb], sp                                ; $72a9: $08 $fb $f2
    ld c, $54                                     ; $72ac: $0e $54
    jr nz, jr_0bd_72c0                            ; $72ae: $20 $10

    rrca                                          ; $72b0: $0f
    jr nc, jr_0bd_72ea                            ; $72b1: $30 $37

    ld bc, $4f4f                                  ; $72b3: $01 $4f $4f
    cp a                                          ; $72b6: $bf
    xor b                                         ; $72b7: $a8
    rst $10                                       ; $72b8: $d7
    ld h, a                                       ; $72b9: $67
    ld a, b                                       ; $72ba: $78
    ld h, b                                       ; $72bb: $60

jr_0bd_72bc:
    ld [$6180], sp                                ; $72bc: $08 $80 $61
    nop                                           ; $72bf: $00

jr_0bd_72c0:
    inc c                                         ; $72c0: $0c
    db $e4                                        ; $72c1: $e4
    ld a, [$fdf2]                                 ; $72c2: $fa $f2 $fd
    dec e                                         ; $72c5: $1d
    rst $28                                       ; $72c6: $ef
    nop                                           ; $72c7: $00
    and $1e                                       ; $72c8: $e6 $1e
    db $fc                                        ; $72ca: $fc
    db $fc                                        ; $72cb: $fc
    rrca                                          ; $72cc: $0f
    nop                                           ; $72cd: $00
    jr nz, jr_0bd_72d0                            ; $72ce: $20 $00

jr_0bd_72d0:
    ld b, b                                       ; $72d0: $40
    ld b, b                                       ; $72d1: $40
    dec h                                         ; $72d2: $25
    db $10                                        ; $72d3: $10
    ccf                                           ; $72d4: $3f
    ccf                                           ; $72d5: $3f
    ld d, a                                       ; $72d6: $57
    ld a, a                                       ; $72d7: $7f
    cpl                                           ; $72d8: $2f
    jr nc, jr_0bd_72db                            ; $72d9: $30 $00

jr_0bd_72db:
    ld d, b                                       ; $72db: $50
    ld [$0890], sp                                ; $72dc: $08 $90 $08
    db $10                                        ; $72df: $10
    ld [$1020], sp                                ; $72e0: $08 $20 $10
    ld bc, $d8e8                                  ; $72e3: $01 $e8 $d8
    db $ec                                        ; $72e6: $ec
    call c, $feda                                 ; $72e7: $dc $da $fe

jr_0bd_72ea:
    ld a, h                                       ; $72ea: $7c
    ld h, b                                       ; $72eb: $60
    ld [$0380], sp                                ; $72ec: $08 $80 $03
    ld d, b                                       ; $72ef: $50
    ld h, a                                       ; $72f0: $67
    ld a, a                                       ; $72f1: $7f
    db $db                                        ; $72f2: $db
    rst $20                                       ; $72f3: $e7
    or l                                          ; $72f4: $b5
    rst $08                                       ; $72f5: $cf
    xor e                                         ; $72f6: $ab
    nop                                           ; $72f7: $00
    rst $18                                       ; $72f8: $df
    and a                                         ; $72f9: $a7
    rst $18                                       ; $72fa: $df
    db $db                                        ; $72fb: $db
    rst $28                                       ; $72fc: $ef
    ld h, l                                       ; $72fd: $65
    ld a, a                                       ; $72fe: $7f
    ccf                                           ; $72ff: $3f
    inc bc                                        ; $7300: $03
    ccf                                           ; $7301: $3f
    and $fe                                       ; $7302: $e6 $fe
    rst $28                                       ; $7304: $ef
    rst $30                                       ; $7305: $f7
    rst $38                                       ; $7306: $ff
    xor h                                         ; $7307: $ac
    nop                                           ; $7308: $00
    add sp, $09                                   ; $7309: $e8 $09
    nop                                           ; $730b: $00
    cp $fe                                        ; $730c: $fe $fe
    db $fc                                        ; $730e: $fc
    db $fc                                        ; $730f: $fc
    jp nz, $81ff                                  ; $7310: $c2 $ff $81

    rst $38                                       ; $7313: $ff
    ld d, b                                       ; $7314: $50
    add b                                         ; $7315: $80
    inc b                                         ; $7316: $04
    db $10                                        ; $7317: $10
    ld b, c                                       ; $7318: $41
    or b                                          ; $7319: $b0
    nop                                           ; $731a: $00
    rrca                                          ; $731b: $0f
    rrca                                          ; $731c: $0f
    db $fd                                        ; $731d: $fd
    rst $38                                       ; $731e: $ff
    inc b                                         ; $731f: $04
    ld a, e                                       ; $7320: $7b
    rst $38                                       ; $7321: $ff
    cp l                                          ; $7322: $bd
    rst $38                                       ; $7323: $ff
    ld a, a                                       ; $7324: $7f
    inc b                                         ; $7325: $04
    nop                                           ; $7326: $00
    ld a, [hl]                                    ; $7327: $7e
    cp $00                                        ; $7328: $fe $00
    cp h                                          ; $732a: $bc
    db $fc                                        ; $732b: $fc
    ldh a, [$f0]                                  ; $732c: $f0 $f0
    ld c, d                                       ; $732e: $4a
    ld [hl], l                                    ; $732f: $75
    sbc a                                         ; $7330: $9f
    ldh [rP1], a                                  ; $7331: $e0 $00
    cp a                                          ; $7333: $bf
    ret nz                                        ; $7334: $c0

    cp [hl]                                       ; $7335: $be
    pop bc                                        ; $7336: $c1
    push de                                       ; $7337: $d5
    ld [$f7a8], a                                 ; $7338: $ea $a8 $f7
    ld b, b                                       ; $733b: $40
    ld d, h                                       ; $733c: $54
    ld b, b                                       ; $733d: $40
    nop                                           ; $733e: $00
    adc [hl]                                      ; $733f: $8e
    ld a, [hl]                                    ; $7340: $7e
    add a                                         ; $7341: $87
    ld a, a                                       ; $7342: $7f
    ld c, e                                       ; $7343: $4b
    cp a                                          ; $7344: $bf
    inc h                                         ; $7345: $24
    and a                                         ; $7346: $a7
    ld e, a                                       ; $7347: $5f
    ld [$ff02], sp                                ; $7348: $08 $02 $ff
    xor [hl]                                      ; $734b: $ae
    ld b, b                                       ; $734c: $40
    nop                                           ; $734d: $00
    push bc                                       ; $734e: $c5
    ld a, [$ab00]                                 ; $734f: $fa $00 $ab
    db $f4                                        ; $7352: $f4
    rst $10                                       ; $7353: $d7
    add sp, -$31                                  ; $7354: $e8 $cf
    ldh a, [$d7]                                  ; $7356: $f0 $d7
    add sp, $00                                   ; $7358: $e8 $00
    ld h, e                                       ; $735a: $63
    ld a, h                                       ; $735b: $7c
    jr c, jr_0bd_739d                             ; $735c: $38 $3f

    rra                                           ; $735e: $1f
    rra                                           ; $735f: $1f
    db $e3                                        ; $7360: $e3
    ld a, a                                       ; $7361: $7f
    nop                                           ; $7362: $00
    or l                                          ; $7363: $b5
    ld a, a                                       ; $7364: $7f
    ei                                            ; $7365: $fb
    scf                                           ; $7366: $37
    and e                                         ; $7367: $a3
    ld a, a                                       ; $7368: $7f
    swap a                                        ; $7369: $cb $37
    nop                                           ; $736b: $00
    and [hl]                                      ; $736c: $a6
    ld a, [hl]                                    ; $736d: $7e
    inc e                                         ; $736e: $1c
    db $fc                                        ; $736f: $fc
    ld hl, sp-$08                                 ; $7370: $f8 $f8
    rra                                           ; $7372: $1f
    rra                                           ; $7373: $1f
    nop                                           ; $7374: $00
    inc sp                                        ; $7375: $33
    ccf                                           ; $7376: $3f
    ld l, l                                       ; $7377: $6d
    ld [hl], e                                    ; $7378: $73
    ld e, d                                       ; $7379: $5a
    ld h, a                                       ; $737a: $67
    ld d, l                                       ; $737b: $55
    ld l, a                                       ; $737c: $6f
    db $10                                        ; $737d: $10
    ld l, l                                       ; $737e: $6d
    ld [hl], a                                    ; $737f: $77
    ld [hl-], a                                   ; $7380: $32
    jr nz, jr_0bd_7383                            ; $7381: $20 $00

jr_0bd_7383:
    ld hl, sp-$08                                 ; $7383: $f8 $f8
    call z, Call_000_02fc                         ; $7385: $cc $fc $02
    sbc $ee                                       ; $7388: $de $ee
    cp $fe                                        ; $738a: $fe $fe
    or $fe                                        ; $738c: $f6 $fe
    ld a, [hl]                                    ; $738e: $7e
    ld [$00f8], sp                                ; $738f: $08 $f8 $00
    ld hl, sp+$07                                 ; $7392: $f8 $07
    rlca                                          ; $7394: $07
    ld [$1b0f], sp                                ; $7395: $08 $0f $1b
    inc e                                         ; $7398: $1c
    inc h                                         ; $7399: $24
    nop                                           ; $739a: $00
    dec sp                                        ; $739b: $3b
    ld d, d                                       ; $739c: $52

jr_0bd_739d:
    ld l, a                                       ; $739d: $6f
    xor h                                         ; $739e: $ac
    rst $18                                       ; $739f: $df
    sub e                                         ; $73a0: $93
    db $fc                                        ; $73a1: $fc
    call nc, $fb00                                ; $73a2: $d4 $00 $fb
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    ret nz                                        ; $73a7: $c0

    ret nz                                        ; $73a8: $c0

    jr c, @-$06                                   ; $73a9: $38 $f8

    sub h                                         ; $73ab: $94
    nop                                           ; $73ac: $00
    db $ec                                        ; $73ad: $ec
    ld a, [hl+]                                   ; $73ae: $2a
    or $86                                        ; $73af: $f6 $86
    ld a, d                                       ; $73b1: $7a
    jp nc, $c63e                                  ; $73b2: $d2 $3e $c6

    nop                                           ; $73b5: $00
    ld a, [hl-]                                   ; $73b6: $3a
    inc b                                         ; $73b7: $04
    dec b                                         ; $73b8: $05
    ld c, $0b                                     ; $73b9: $0e $0b
    rla                                           ; $73bb: $17
    add hl, de                                    ; $73bc: $19
    dec bc                                        ; $73bd: $0b
    nop                                           ; $73be: $00
    dec c                                         ; $73bf: $0d
    dec h                                         ; $73c0: $25
    daa                                           ; $73c1: $27
    ld [hl], e                                    ; $73c2: $73
    ld d, e                                       ; $73c3: $53
    cp c                                          ; $73c4: $b9
    ret                                           ; $73c5: $c9


    ld e, c                                       ; $73c6: $59
    nop                                           ; $73c7: $00
    ld l, c                                       ; $73c8: $69
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    jr nz, jr_0bd_73ed                            ; $73cb: $20 $20

    ld [hl], b                                    ; $73cd: $70
    ld d, b                                       ; $73ce: $50
    add sp, $00                                   ; $73cf: $e8 $00
    sbc b                                         ; $73d1: $98
    call nc, $aeb4                                ; $73d2: $d4 $b4 $ae
    ld [$d3dd], a                                 ; $73d5: $ea $dd $d3
    ld a, [de]                                    ; $73d8: $1a
    nop                                           ; $73d9: $00
    sub [hl]                                      ; $73da: $96
    jr nz, jr_0bd_73dd                            ; $73db: $20 $00

jr_0bd_73dd:
    ld h, b                                       ; $73dd: $60
    jr nz, @+$52                                  ; $73de: $20 $50

    ld [hl], b                                    ; $73e0: $70
    sub [hl]                                      ; $73e1: $96
    nop                                           ; $73e2: $00
    ld a, [c]                                     ; $73e3: $f2
    ld l, l                                       ; $73e4: $6d
    ld h, a                                       ; $73e5: $67
    add hl, de                                    ; $73e6: $19
    rra                                           ; $73e7: $1f
    ld d, $16                                     ; $73e8: $16 $16
    ld a, [bc]                                    ; $73ea: $0a
    ld b, b                                       ; $73eb: $40
    ld a, [bc]                                    ; $73ec: $0a

jr_0bd_73ed:
    nop                                           ; $73ed: $00
    add hl, bc                                    ; $73ee: $09
    stop                                          ; $73ef: $10 $00
    jr @+$12                                      ; $73f1: $18 $10

    jr z, jr_0bd_742d                             ; $73f3: $28 $38

    nop                                           ; $73f5: $00
    inc h                                         ; $73f6: $24
    inc a                                         ; $73f7: $3c
    jr jr_0bd_7412                                ; $73f8: $18 $18

    sub [hl]                                      ; $73fa: $96
    inc d                                         ; $73fb: $14
    ld bc, $0001                                  ; $73fc: $01 $01 $00
    inc bc                                        ; $73ff: $03
    ld [bc], a                                    ; $7400: $02
    ld sp, $7931                                  ; $7401: $31 $31 $79
    ld c, c                                       ; $7404: $49
    add hl, sp                                    ; $7405: $39
    add hl, hl                                    ; $7406: $29
    nop                                           ; $7407: $00
    dec de                                        ; $7408: $1b
    rra                                           ; $7409: $1f
    rlca                                          ; $740a: $07
    inc b                                         ; $740b: $04
    inc bc                                        ; $740c: $03
    ld [bc], a                                    ; $740d: $02
    add b                                         ; $740e: $80
    add b                                         ; $740f: $80
    nop                                           ; $7410: $00
    ret nz                                        ; $7411: $c0

jr_0bd_7412:
    ld b, b                                       ; $7412: $40
    ret nz                                        ; $7413: $c0

    ld b, b                                       ; $7414: $40
    sbc b                                         ; $7415: $98
    sbc b                                         ; $7416: $98
    inc a                                         ; $7417: $3c
    and h                                         ; $7418: $a4
    nop                                           ; $7419: $00
    inc e                                         ; $741a: $1c
    sub h                                         ; $741b: $94
    add sp, -$08                                  ; $741c: $e8 $f8
    ldh a, [$90]                                  ; $741e: $f0 $90
    inc d                                         ; $7420: $14
    inc e                                         ; $7421: $1c
    nop                                           ; $7422: $00
    rrca                                          ; $7423: $0f

jr_0bd_7424:
    dec bc                                        ; $7424: $0b
    ld a, [de]                                    ; $7425: $1a
    dec e                                         ; $7426: $1d
    ld l, $31                                     ; $7427: $2e $31
    ld e, a                                       ; $7429: $5f
    ld h, b                                       ; $742a: $60
    nop                                           ; $742b: $00
    inc sp                                        ; $742c: $33

jr_0bd_742d:
    inc a                                         ; $742d: $3c
    rrca                                          ; $742e: $0f
    ld [$0e09], sp                                ; $742f: $08 $09 $0e
    call z, Call_000_00cc                         ; $7432: $cc $cc $00
    inc [hl]                                      ; $7435: $34
    db $fc                                        ; $7436: $fc
    ret z                                         ; $7437: $c8

    jr c, jr_0bd_7424                             ; $7438: $38 $ea

    ld d, $f6                                     ; $743a: $16 $f6
    ld c, $00                                     ; $743c: $0e $00
    add sp, $18                                   ; $743e: $e8 $18
    ldh a, [rNR10]                                ; $7440: $f0 $10
    ld d, b                                       ; $7442: $50
    or b                                          ; $7443: $b0
    ld sp, $0031                                  ; $7444: $31 $31 $00
    dec sp                                        ; $7447: $3b
    ld a, [hl+]                                   ; $7448: $2a
    ccf                                           ; $7449: $3f
    dec h                                         ; $744a: $25
    ccf                                           ; $744b: $3f
    inc sp                                        ; $744c: $33
    rra                                           ; $744d: $1f
    dec d                                         ; $744e: $15
    nop                                           ; $744f: $00
    ld e, a                                       ; $7450: $5f
    ld e, c                                       ; $7451: $59
    rst $38                                       ; $7452: $ff
    cp h                                          ; $7453: $bc
    ld b, a                                       ; $7454: $47
    ld b, [hl]                                    ; $7455: $46
    ld c, $0e                                     ; $7456: $0e $0e
    nop                                           ; $7458: $00
    cp [hl]                                       ; $7459: $be
    or [hl]                                       ; $745a: $b6
    ld a, h                                       ; $745b: $7c
    ld c, h                                       ; $745c: $4c
    ld a, [$ff8a]                                 ; $745d: $fa $8a $ff
    sbc l                                         ; $7460: $9d
    nop                                           ; $7461: $00
    ld a, [c]                                     ; $7462: $f2
    ld [de], a                                    ; $7463: $12
    ld hl, sp+$38                                 ; $7464: $f8 $38
    db $fc                                        ; $7466: $fc
    inc b                                         ; $7467: $04
    jr nc, jr_0bd_749a                            ; $7468: $30 $30

    nop                                           ; $746a: $00
    ld c, h                                       ; $746b: $4c
    ld a, h                                       ; $746c: $7c
    sub h                                         ; $746d: $94
    db $ec                                        ; $746e: $ec
    db $ed                                        ; $746f: $ed
    sbc l                                         ; $7470: $9d
    xor d                                         ; $7471: $aa
    db $db                                        ; $7472: $db
    ld [bc], a                                    ; $7473: $02
    db $ed                                        ; $7474: $ed
    sbc [hl]                                      ; $7475: $9e
    xor e                                         ; $7476: $ab
    call c, $c9b6                                 ; $7477: $dc $b6 $c9
    add b                                         ; $747a: $80
    add hl, bc                                    ; $747b: $09
    ld hl, sp+$00                                 ; $747c: $f8 $00
    ld hl, sp+$34                                 ; $747e: $f8 $34
    call z, Call_000_06fa                         ; $7480: $cc $fa $06
    call Call_0bd_5533                            ; $7483: $cd $33 $55
    nop                                           ; $7486: $00
    ei                                            ; $7487: $fb
    db $ed                                        ; $7488: $ed
    di                                            ; $7489: $f3
    ld [bc], a                                    ; $748a: $02

jr_0bd_748b:
    ld b, $0c                                     ; $748b: $06 $0c
    inc b                                         ; $748d: $04
    jr jr_0bd_7490                                ; $748e: $18 $00

jr_0bd_7490:
    ld [$1838], sp                                ; $7490: $08 $38 $18
    ld sp, $7310                                  ; $7493: $31 $10 $73
    ld sp, $1077                                  ; $7496: $31 $77 $10
    inc sp                                        ; $7499: $33

jr_0bd_749a:
    inc sp                                        ; $749a: $33
    ld [hl], a                                    ; $749b: $77
    sbc [hl]                                      ; $749c: $9e
    nop                                           ; $749d: $00
    jr nc, @+$23                                  ; $749e: $30 $21

    ld h, a                                       ; $74a0: $67
    add $00                                       ; $74a1: $c6 $00
    ld c, [hl]                                    ; $74a3: $4e
    call c, $b8cc                                 ; $74a4: $dc $cc $b8
    sbc b                                         ; $74a7: $98
    ld [hl], b                                    ; $74a8: $70
    ld sp, $00e1                                  ; $74a9: $31 $e1 $00
    ld h, e                                       ; $74ac: $63
    ld a, c                                       ; $74ad: $79
    ld a, [hl]                                    ; $74ae: $7e
    inc a                                         ; $74af: $3c
    ccf                                           ; $74b0: $3f
    daa                                           ; $74b1: $27
    ccf                                           ; $74b2: $3f
    ld b, e                                       ; $74b3: $43
    nop                                           ; $74b4: $00
    ld a, a                                       ; $74b5: $7f
    ld h, l                                       ; $74b6: $65
    ld a, d                                       ; $74b7: $7a
    ld [hl-], a                                   ; $74b8: $32
    dec a                                         ; $74b9: $3d
    inc e                                         ; $74ba: $1c
    rra                                           ; $74bb: $1f
    rrca                                          ; $74bc: $0f
    nop                                           ; $74bd: $00
    rrca                                          ; $74be: $0f

jr_0bd_74bf:
    ld de, $6dff                                  ; $74bf: $11 $ff $6d
    di                                            ; $74c2: $f3
    ld e, e                                       ; $74c3: $5b
    rst $20                                       ; $74c4: $e7
    and [hl]                                      ; $74c5: $a6
    nop                                           ; $74c6: $00
    sbc $1c                                       ; $74c7: $de $1c
    db $fc                                        ; $74c9: $fc
    or b                                          ; $74ca: $b0
    ld [hl], b                                    ; $74cb: $70
    ld b, b                                       ; $74cc: $40
    ret nz                                        ; $74cd: $c0

    add b                                         ; $74ce: $80
    nop                                           ; $74cf: $00
    add b                                         ; $74d0: $80
    dec a                                         ; $74d1: $3d
    dec [hl]                                      ; $74d2: $35
    cpl                                           ; $74d3: $2f
    inc sp                                        ; $74d4: $33
    rla                                           ; $74d5: $17
    dec de                                        ; $74d6: $1b
    dec bc                                        ; $74d7: $0b
    ld [bc], a                                    ; $74d8: $02
    rrca                                          ; $74d9: $0f
    rlca                                          ; $74da: $07
    rlca                                          ; $74db: $07
    inc bc                                        ; $74dc: $03
    inc bc                                        ; $74dd: $03
    ld bc, $0001                                  ; $74de: $01 $01 $00
    inc [hl]                                      ; $74e1: $34
    nop                                           ; $74e2: $00
    cp h                                          ; $74e3: $bc
    add sp, -$18                                  ; $74e4: $e8 $e8
    ldh [$a0], a                                  ; $74e6: $e0 $a0
    ret nc                                        ; $74e8: $d0

    jr nc, jr_0bd_748b                            ; $74e9: $30 $a0

    ld b, b                                       ; $74eb: $40
    ld h, b                                       ; $74ec: $60
    ld e, $08                                     ; $74ed: $1e $08
    add b                                         ; $74ef: $80
    add b                                         ; $74f0: $80
    ld c, $0a                                     ; $74f1: $0e $0a
    dec d                                         ; $74f3: $15
    dec e                                         ; $74f4: $1d
    ld [bc], a                                    ; $74f5: $02
    inc de                                        ; $74f6: $13
    rra                                           ; $74f7: $1f
    dec c                                         ; $74f8: $0d
    dec c                                         ; $74f9: $0d
    dec b                                         ; $74fa: $05
    dec b                                         ; $74fb: $05
    jr nz, jr_0bd_7516                            ; $74fc: $20 $18

    db $eb                                        ; $74fe: $eb
    nop                                           ; $74ff: $00
    xor [hl]                                      ; $7500: $ae
    ld l, c                                       ; $7501: $69
    rst $28                                       ; $7502: $ef
    ld l, $ee                                     ; $7503: $2e $ee

Jump_0bd_7505:
    ret nc                                        ; $7505: $d0

    ret nc                                        ; $7506: $d0

    ld h, b                                       ; $7507: $60
    jr jr_0bd_756a                                ; $7508: $18 $60

    add b                                         ; $750a: $80
    add b                                         ; $750b: $80
    inc c                                         ; $750c: $0c
    ld a, [bc]                                    ; $750d: $0a
    db $fc                                        ; $750e: $fc
    nop                                           ; $750f: $00
    ld c, l                                       ; $7510: $4d
    dec a                                         ; $7511: $3d
    cpl                                           ; $7512: $2f
    inc b                                         ; $7513: $04
    inc de                                        ; $7514: $13
    ld [de], a                                    ; $7515: $12

jr_0bd_7516:
    ld bc, $0001                                  ; $7516: $01 $01 $00
    ld [bc], a                                    ; $7519: $02
    db $10                                        ; $751a: $10
    ld [hl], b                                    ; $751b: $70

Jump_0bd_751c:
    ret nc                                        ; $751c: $d0

    jr nc, jr_0bd_74bf                            ; $751d: $30 $a0

    ldh [rDIV], a                                 ; $751f: $e0 $04
    add hl, de                                    ; $7521: $19
    ld a, $08                                     ; $7522: $3e $08
    add b                                         ; $7524: $80
    add b                                         ; $7525: $80
    ld b, $05                                     ; $7526: $06 $05
    nop                                           ; $7528: $00
    dec b                                         ; $7529: $05
    rlca                                          ; $752a: $07
    ld b, $07                                     ; $752b: $06 $07
    ld [bc], a                                    ; $752d: $02
    inc bc                                        ; $752e: $03
    ld [bc], a                                    ; $752f: $02
    inc bc                                        ; $7530: $03
    db $10                                        ; $7531: $10
    inc b                                         ; $7532: $04
    rlca                                          ; $7533: $07
    inc b                                         ; $7534: $04
    ld h, h                                       ; $7535: $64
    nop                                           ; $7536: $00
    sub b                                         ; $7537: $90
    ld [hl], b                                    ; $7538: $70
    ld h, b                                       ; $7539: $60
    ldh [$38], a                                  ; $753a: $e0 $38
    and b                                         ; $753c: $a0
    ldh [rNR44], a                                ; $753d: $e0 $23
    ld bc, $105e                                  ; $753f: $01 $5e $10
    xor $02                                       ; $7542: $ee $02
    ld [$131f], sp                                ; $7544: $08 $1f $13
    nop                                           ; $7547: $00
    rra                                           ; $7548: $1f
    rla                                           ; $7549: $17
    dec a                                         ; $754a: $3d
    dec l                                         ; $754b: $2d
    add hl, sp                                    ; $754c: $39
    add hl, sp                                    ; $754d: $39
    jr nc, @+$32                                  ; $754e: $30 $30

    add b                                         ; $7550: $80
    ld e, h                                       ; $7551: $5c
    ld a, [bc]                                    ; $7552: $0a
    cp $2a                                        ; $7553: $fe $2a
    rst $38                                       ; $7555: $ff
    ld [hl], l                                    ; $7556: $75
    cp a                                          ; $7557: $bf
    db $fd                                        ; $7558: $fd
    daa                                           ; $7559: $27
    jr nz, @-$17                                  ; $755a: $20 $e7

    and b                                         ; $755c: $a0
    ld h, $00                                     ; $755d: $26 $00
    ldh [$e0], a                                  ; $755f: $e0 $e0
    ld h, b                                       ; $7561: $60
    ld h, b                                       ; $7562: $60
    db $dd                                        ; $7563: $dd
    ld bc, $6be3                                  ; $7564: $01 $e3 $6b
    ld a, a                                       ; $7567: $7f
    ld a, $3e                                     ; $7568: $3e $3e

jr_0bd_756a:
    inc e                                         ; $756a: $1c
    inc e                                         ; $756b: $1c
    ld a, b                                       ; $756c: $78
    ld a, [hl+]                                   ; $756d: $2a
    nop                                           ; $756e: $00
    push af                                       ; $756f: $f5
    ei                                            ; $7570: $fb
    dec e                                         ; $7571: $1d
    inc de                                        ; $7572: $13
    dec d                                         ; $7573: $15
    dec de                                        ; $7574: $1b
    dec l                                         ; $7575: $2d
    inc sp                                        ; $7576: $33
    nop                                           ; $7577: $00
    add hl, hl                                    ; $7578: $29
    scf                                           ; $7579: $37
    dec hl                                        ; $757a: $2b
    scf                                           ; $757b: $37
    ld a, [hl-]                                   ; $757c: $3a
    ld a, $0e                                     ; $757d: $3e $0e
    ld c, $00                                     ; $757f: $0e $00
    ld h, [hl]                                    ; $7581: $66
    xor $66                                       ; $7582: $ee $66
    rst $28                                       ; $7584: $ef
    ld l, $3f                                     ; $7585: $2e $3f
    inc c                                         ; $7587: $0c
    dec e                                         ; $7588: $1d
    ld b, b                                       ; $7589: $40

jr_0bd_758a:
    inc c                                         ; $758a: $0c
    ld [hl+], a                                   ; $758b: $22
    jr nz, @+$68                                  ; $758c: $20 $66

    ld [c], a                                     ; $758e: $e2
    call z, $dcc4                                 ; $758f: $cc $c4 $dc
    call z, $d800                                 ; $7592: $cc $00 $d8
    ret z                                         ; $7595: $c8

    jr c, jr_0bd_75b0                             ; $7596: $38 $18

    jr nc, @+$12                                  ; $7598: $30 $10

    jr nc, jr_0bd_760c                            ; $759a: $30 $70

    nop                                           ; $759c: $00
    jr nc, jr_0bd_760f                            ; $759d: $30 $70

    inc bc                                        ; $759f: $03
    inc bc                                        ; $75a0: $03
    dec b                                         ; $75a1: $05
    ld b, $06                                     ; $75a2: $06 $06
    dec b                                         ; $75a4: $05
    nop                                           ; $75a5: $00
    dec bc                                        ; $75a6: $0b
    inc c                                         ; $75a7: $0c
    add hl, bc                                    ; $75a8: $09
    ld c, $1b                                     ; $75a9: $0e $1b
    inc e                                         ; $75ab: $1c
    dec a                                         ; $75ac: $3d
    ld a, $00                                     ; $75ad: $3e $00
    ld l, [hl]                                    ; $75af: $6e

jr_0bd_75b0:
    ld [hl], c                                    ; $75b0: $71
    add b                                         ; $75b1: $80
    add b                                         ; $75b2: $80
    ld b, b                                       ; $75b3: $40
    ret nz                                        ; $75b4: $c0

    and b                                         ; $75b5: $a0
    ld h, b                                       ; $75b6: $60
    nop                                           ; $75b7: $00
    ld d, b                                       ; $75b8: $50
    or b                                          ; $75b9: $b0
    ret nc                                        ; $75ba: $d0

    jr nc, @-$76                                  ; $75bb: $30 $88

    ld a, b                                       ; $75bd: $78

jr_0bd_75be:
    ret c                                         ; $75be: $d8

    jr c, jr_0bd_75c1                             ; $75bf: $38 $00

jr_0bd_75c1:
    db $ec                                        ; $75c1: $ec
    inc e                                         ; $75c2: $1c
    ld e, $1e                                     ; $75c3: $1e $1e
    dec l                                         ; $75c5: $2d
    inc sp                                        ; $75c6: $33
    ld a, a                                       ; $75c7: $7f
    ld b, b                                       ; $75c8: $40
    jr nz, jr_0bd_758a                            ; $75c9: $20 $bf

    ret nz                                        ; $75cb: $c0

    and l                                         ; $75cc: $a5
    ld [bc], a                                    ; $75cd: $02
    add b                                         ; $75ce: $80
    cp a                                          ; $75cf: $bf
    pop bc                                        ; $75d0: $c1
    ld a, a                                       ; $75d1: $7f
    ld b, d                                       ; $75d2: $42
    ret nz                                        ; $75d3: $c0

    ldh [$0a], a                                  ; $75d4: $e0 $0a
    inc h                                         ; $75d6: $24
    ld [$c040], sp                                ; $75d7: $08 $40 $c0
    ldh a, [$f0]                                  ; $75da: $f0 $f0

jr_0bd_75dc:
    ld l, b                                       ; $75dc: $68
    sbc b                                         ; $75dd: $98
    jr nz, jr_0bd_75dc                            ; $75de: $20 $fc

    inc b                                         ; $75e0: $04
    ldh a, [rWY]                                  ; $75e1: $f0 $4a
    inc bc                                        ; $75e3: $03
    inc bc                                        ; $75e4: $03
    rrca                                          ; $75e5: $0f
    inc c                                         ; $75e6: $0c
    stop                                          ; $75e7: $10 $00
    db $10                                        ; $75e9: $10
    jr @+$1a                                      ; $75ea: $18 $18

    jr c, jr_0bd_7616                             ; $75ec: $38 $28

    jr z, jr_0bd_7628                             ; $75ee: $28 $38

    ld a, b                                       ; $75f0: $78
    nop                                           ; $75f1: $00
    ld e, b                                       ; $75f2: $58
    add sp, -$68                                  ; $75f3: $e8 $98
    ret c                                         ; $75f5: $d8

    jr c, @-$76                                   ; $75f6: $38 $88

    ld a, b                                       ; $75f8: $78
    stop                                          ; $75f9: $10 $00
    db $10                                        ; $75fb: $10
    jr c, jr_0bd_7626                             ; $75fc: $38 $28

    ld a, h                                       ; $75fe: $7c
    ld b, h                                       ; $75ff: $44
    ld e, [hl]                                    ; $7600: $5e
    ld h, d                                       ; $7601: $62
    cpl                                           ; $7602: $2f
    ld bc, $1631                                  ; $7603: $01 $31 $16
    add hl, de                                    ; $7606: $19
    dec bc                                        ; $7607: $0b
    inc c                                         ; $7608: $0c
    dec b                                         ; $7609: $05
    ld b, $40                                     ; $760a: $06 $40

jr_0bd_760c:
    ld a, [de]                                    ; $760c: $1a
    nop                                           ; $760d: $00
    cp b                                          ; $760e: $b8

jr_0bd_760f:
    ret z                                         ; $760f: $c8

    ld e, h                                       ; $7610: $5c
    ld h, h                                       ; $7611: $64
    xor d                                         ; $7612: $aa
    or [hl]                                       ; $7613: $b6
    sbc [hl]                                      ; $7614: $9e
    sub d                                         ; $7615: $92

jr_0bd_7616:
    nop                                           ; $7616: $00
    ld d, [hl]                                    ; $7617: $56
    jp c, $0101                                   ; $7618: $da $01 $01

    ld b, $07                                     ; $761b: $06 $07
    dec bc                                        ; $761d: $0b
    inc c                                         ; $761e: $0c
    add b                                         ; $761f: $80
    ld [bc], a                                    ; $7620: $02
    ld [$1e1d], sp                                ; $7621: $08 $1d $1e
    jr z, @+$41                                   ; $7624: $28 $3f

jr_0bd_7626:
    ld d, d                                       ; $7626: $52
    ld a, l                                       ; $7627: $7d

jr_0bd_7628:
    ldh [rP1], a                                  ; $7628: $e0 $00
    ldh [$d0], a                                  ; $762a: $e0 $d0
    jr nc, jr_0bd_75be                            ; $762c: $30 $90

jr_0bd_762e:
    ld [hl], b                                    ; $762e: $70
    ld c, b                                       ; $762f: $48
    cp b                                          ; $7630: $b8
    sbc b                                         ; $7631: $98
    inc bc                                        ; $7632: $03
    ld a, b                                       ; $7633: $78
    jr c, jr_0bd_762e                             ; $7634: $38 $f8

    ld d, h                                       ; $7636: $54
    db $fc                                        ; $7637: $fc
    xor h                                         ; $7638: $ac
    ld d, b                                       ; $7639: $50
    inc sp                                        ; $763a: $33
    ld a, h                                       ; $763b: $7c
    add hl, bc                                    ; $763c: $09
    ld d, b                                       ; $763d: $50
    inc bc                                        ; $763e: $03
    inc h                                         ; $763f: $24

jr_0bd_7640:
    ld bc, $5a10                                  ; $7640: $01 $10 $5a
    ld [bc], a                                    ; $7643: $02
    ld e, b                                       ; $7644: $58
    ld l, b                                       ; $7645: $68
    ldh a, [$d0]                                  ; $7646: $f0 $d0
    nop                                           ; $7648: $00
    ld d, b                                       ; $7649: $50
    ldh a, [$e0]                                  ; $764a: $f0 $e0
    jr nz, jr_0bd_766e                            ; $764c: $20 $20

    ldh [$e0], a                                  ; $764e: $e0 $e0
    and b                                         ; $7650: $a0
    nop                                           ; $7651: $00
    inc bc                                        ; $7652: $03
    inc bc                                        ; $7653: $03
    dec c                                         ; $7654: $0d
    ld c, $17                                     ; $7655: $0e $17
    inc e                                         ; $7657: $1c
    dec e                                         ; $7658: $1d
    ld d, $10                                     ; $7659: $16 $10
    ld a, [de]                                    ; $765b: $1a
    inc de                                        ; $765c: $13
    rrca                                          ; $765d: $0f
    ld e, [hl]                                    ; $765e: $5e
    nop                                           ; $765f: $00
    dec bc                                        ; $7660: $0b
    dec bc                                        ; $7661: $0b
    add b                                         ; $7662: $80
    add b                                         ; $7663: $80
    ld [$e060], sp                                ; $7664: $08 $60 $e0
    ldh a, [$50]                                  ; $7667: $f0 $50
    jr nz, jr_0bd_766b                            ; $7669: $20 $00

jr_0bd_766b:
    ret nc                                        ; $766b: $d0

    or b                                          ; $766c: $b0
    ld [hl], b                                    ; $766d: $70

jr_0bd_766e:
    inc b                                         ; $766e: $04
    ldh a, [$30]                                  ; $766f: $f0 $30
    ld e, b                                       ; $7671: $58
    ret z                                         ; $7672: $c8

    nop                                           ; $7673: $00
    ld h, b                                       ; $7674: $60
    nop                                           ; $7675: $00
    rrca                                          ; $7676: $0f
    add hl, bc                                    ; $7677: $09
    ld b, $0b                                     ; $7678: $06 $0b
    dec c                                         ; $767a: $0d
    dec b                                         ; $767b: $05
    rlca                                          ; $767c: $07
    rlca                                          ; $767d: $07
    ld [$a010], sp                                ; $767e: $08 $10 $a0
    dec bc                                        ; $7681: $0b
    ld h, b                                       ; $7682: $60
    nop                                           ; $7683: $00
    ld h, b                                       ; $7684: $60
    ldh a, [$90]                                  ; $7685: $f0 $90
    ret nc                                        ; $7687: $d0

    or b                                          ; $7688: $b0
    and b                                         ; $7689: $a0
    ldh [$c0], a                                  ; $768a: $e0 $c0
    nop                                           ; $768c: $00
    ret nz                                        ; $768d: $c0

    jr nc, jr_0bd_7640                            ; $768e: $30 $b0

    ld e, l                                       ; $7690: $5d
    ld h, d                                       ; $7691: $62
    xor [hl]                                      ; $7692: $ae
    pop de                                        ; $7693: $d1
    sub a                                         ; $7694: $97
    nop                                           ; $7695: $00
    add sp, -$55                                  ; $7696: $e8 $ab
    db $f4                                        ; $7698: $f4
    ld [hl], b                                    ; $7699: $70
    ld a, a                                       ; $769a: $7f
    rra                                           ; $769b: $1f
    rra                                           ; $769c: $1f
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    ld b, d                                       ; $769f: $42
    nop                                           ; $76a0: $00
    ld [$0ef6], sp                                ; $76a1: $08 $f6 $0e
    ld sp, hl                                     ; $76a4: $f9
    rlca                                          ; $76a5: $07
    jp hl                                         ; $76a6: $e9


    nop                                           ; $76a7: $00
    rla                                           ; $76a8: $17
    ld d, c                                       ; $76a9: $51
    xor a                                         ; $76aa: $af
    xor d                                         ; $76ab: $aa
    ld e, [hl]                                    ; $76ac: $5e
    sbc h                                         ; $76ad: $9c
    db $fc                                        ; $76ae: $fc
    ld [hl], b                                    ; $76af: $70
    nop                                           ; $76b0: $00
    ld [hl], c                                    ; $76b1: $71
    nop                                           ; $76b2: $00
    inc b                                         ; $76b3: $04
    dec h                                         ; $76b4: $25
    ld a, $1f                                     ; $76b5: $3e $1f
    inc e                                         ; $76b7: $1c
    rlca                                          ; $76b8: $07
    ld b, $04                                     ; $76b9: $06 $04
    dec b                                         ; $76bb: $05
    ld b, $03                                     ; $76bc: $06 $03
    ld [bc], a                                    ; $76be: $02
    jp nz, Jump_000_3d01                          ; $76bf: $c2 $01 $3d

    inc b                                         ; $76c2: $04
    ld a, [$0640]                                 ; $76c3: $fa $40 $06
    ld [bc], a                                    ; $76c6: $02
    ld [$0ef2], sp                                ; $76c7: $08 $f2 $0e
    db $e4                                        ; $76ca: $e4
    inc e                                         ; $76cb: $1c
    ld [$00f8], sp                                ; $76cc: $08 $f8 $00
    ldh a, [$f0]                                  ; $76cf: $f0 $f0
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    dec [hl]                                      ; $76d3: $35
    ld a, [hl-]                                   ; $76d4: $3a
    ld e, d                                       ; $76d5: $5a
    ld h, l                                       ; $76d6: $65
    nop                                           ; $76d7: $00
    ld [hl], h                                    ; $76d8: $74
    ld c, e                                       ; $76d9: $4b
    ld a, b                                       ; $76da: $78
    ld b, a                                       ; $76db: $47
    dec a                                         ; $76dc: $3d
    inc hl                                        ; $76dd: $23
    ld e, $11                                     ; $76de: $1e $11
    inc hl                                        ; $76e0: $23
    rrca                                          ; $76e1: $0f
    rrca                                          ; $76e2: $0f
    db $fc                                        ; $76e3: $fc
    ld [bc], a                                    ; $76e4: $02
    ldh a, [$30]                                  ; $76e5: $f0 $30
    ldh a, [$c2]                                  ; $76e7: $f0 $c2
    add hl, de                                    ; $76e9: $19
    nop                                           ; $76ea: $00
    ld a, [de]                                    ; $76eb: $1a
    ld [hl], b                                    ; $76ec: $70
    ld [bc], a                                    ; $76ed: $02
    ld [hl], $12                                  ; $76ee: $36 $12
    inc a                                         ; $76f0: $3c
    jr jr_0bd_770f                                ; $76f1: $18 $1c

    inc c                                         ; $76f3: $0c
    call $ab4b                                    ; $76f4: $cd $4b $ab
    ld l, l                                       ; $76f7: $6d
    nop                                           ; $76f8: $00
    ld l, e                                       ; $76f9: $6b
    xor l                                         ; $76fa: $ad
    ld h, a                                       ; $76fb: $67
    and l                                         ; $76fc: $a5
    push hl                                       ; $76fd: $e5
    and a                                         ; $76fe: $a7
    and l                                         ; $76ff: $a5
    rst $20                                       ; $7700: $e7
    nop                                           ; $7701: $00
    and e                                         ; $7702: $a3
    db $e3                                        ; $7703: $e3
    ld h, b                                       ; $7704: $60
    ld h, b                                       ; $7705: $60
    call nc, $aeab                                ; $7706: $d4 $ab $ae
    pop de                                        ; $7709: $d1
    nop                                           ; $770a: $00
    push hl                                       ; $770b: $e5
    ld a, [$ffd8]                                 ; $770c: $fa $d8 $ff

jr_0bd_770f:
    xor [hl]                                      ; $770f: $ae
    rst $38                                       ; $7710: $ff
    ld [hl], l                                    ; $7711: $75
    ld a, a                                       ; $7712: $7f
    nop                                           ; $7713: $00
    ld a, [de]                                    ; $7714: $1a
    rra                                           ; $7715: $1f
    rlca                                          ; $7716: $07
    rlca                                          ; $7717: $07
    ld d, $ee                                     ; $7718: $16 $ee
    xor a                                         ; $771a: $af
    ld e, a                                       ; $771b: $5f
    nop                                           ; $771c: $00
    ld e, a                                       ; $771d: $5f
    cp a                                          ; $771e: $bf
    cp e                                          ; $771f: $bb
    ld a, a                                       ; $7720: $7f
    ld d, l                                       ; $7721: $55
    rst $38                                       ; $7722: $ff

jr_0bd_7723:
    ld [bc], a                                    ; $7723: $02
    cp $40                                        ; $7724: $fe $40
    ld c, h                                       ; $7726: $4c
    nop                                           ; $7727: $00
    inc b                                         ; $7728: $04
    dec bc                                        ; $7729: $0b
    inc c                                         ; $772a: $0c
    ld e, $19                                     ; $772b: $1e $19
    ld a, [hl+]                                   ; $772d: $2a
    dec a                                         ; $772e: $3d
    nop                                           ; $772f: $00
    inc [hl]                                      ; $7730: $34
    cpl                                           ; $7731: $2f
    dec l                                         ; $7732: $2d
    scf                                           ; $7733: $37
    ld de, $0e1f                                  ; $7734: $11 $1f $0e
    ld c, $e0                                     ; $7737: $0e $e0
    sbc [hl]                                      ; $7739: $9e
    dec bc                                        ; $773a: $0b
    ld a, [de]                                    ; $773b: $1a
    ld a, [hl+]                                   ; $773c: $2a
    ld l, d                                       ; $773d: $6a
    inc e                                         ; $773e: $1c
    rrca                                          ; $773f: $0f
    ld a, [bc]                                    ; $7740: $0a
    ld c, $0b                                     ; $7741: $0e $0b
    dec b                                         ; $7743: $05
    ret nz                                        ; $7744: $c0

    sbc h                                         ; $7745: $9c
    ld [hl+], a                                   ; $7746: $22
    and d                                         ; $7747: $a2
    ld [$28f8], sp                                ; $7748: $08 $f8 $28
    add sp, $28                                   ; $774b: $e8 $28
    ld d, b                                       ; $774d: $50
    ret nc                                        ; $774e: $d0

    ld a, h                                       ; $774f: $7c
    ldh [rSCY], a                                 ; $7750: $e0 $42
    ld [de], a                                    ; $7752: $12
    ret nz                                        ; $7753: $c0

    ld a, [bc]                                    ; $7754: $0a
    inc e                                         ; $7755: $1c
    ld [$18fa], sp                                ; $7756: $08 $fa $18
    ld h, $18                                     ; $7759: $26 $18
    ld a, b                                       ; $775b: $78
    ret z                                         ; $775c: $c8

    inc de                                        ; $775d: $13
    ld l, b                                       ; $775e: $68
    ret c                                         ; $775f: $d8

    ld d, b                                       ; $7760: $50
    and d                                         ; $7761: $a2
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    add b                                         ; $7764: $80
    rst $00                                       ; $7765: $c7
    ld bc, $02c1                                  ; $7766: $01 $c1 $02
    inc sp                                        ; $7769: $33
    rst $38                                       ; $776a: $ff
    nop                                           ; $776b: $00
    ld l, l                                       ; $776c: $6d
    inc b                                         ; $776d: $04
    ld [bc], a                                    ; $776e: $02
    ld c, b                                       ; $776f: $48
    ld bc, $34fe                                  ; $7770: $01 $fe $34
    ld b, $04                                     ; $7773: $06 $04
    jr c, jr_0bd_7723                             ; $7775: $38 $ac

    ld e, $58                                     ; $7777: $1e $58
    add b                                         ; $7779: $80
    inc e                                         ; $777a: $1c
    ld d, b                                       ; $777b: $50
    cp $3d                                        ; $777c: $fe $3d
    nop                                           ; $777e: $00
    ld b, b                                       ; $777f: $40
    ld [$7cf8], sp                                ; $7780: $08 $f8 $7c
    nop                                           ; $7783: $00
    ldh a, [rSVBK]                                ; $7784: $f0 $70
    ldh [rSVBK], a                                ; $7786: $e0 $70
    pop hl                                        ; $7788: $e1
    ld h, e                                       ; $7789: $63
    db $e3                                        ; $778a: $e3
    ld h, e                                       ; $778b: $63
    add b                                         ; $778c: $80
    ld b, b                                       ; $778d: $40
    jr jr_0bd_77ae                                ; $778e: $18 $1e

    ccf                                           ; $7790: $3f
    ld c, $0f                                     ; $7791: $0e $0f
    ld b, $0f                                     ; $7793: $06 $0f
    add [hl]                                      ; $7795: $86
    nop                                           ; $7796: $00
    rst $00                                       ; $7797: $c7
    add $c7                                       ; $7798: $c6 $c7
    add [hl]                                      ; $779a: $86
    rst $08                                       ; $779b: $cf
    db $fc                                        ; $779c: $fc
    ld a, [hl]                                    ; $779d: $7e
    db $fc                                        ; $779e: $fc
    inc b                                         ; $779f: $04
    ld a, h                                       ; $77a0: $7c
    db $fc                                        ; $77a1: $fc
    ld a, h                                       ; $77a2: $7c
    rst $38                                       ; $77a3: $ff
    ld a, a                                       ; $77a4: $7f
    ld b, $18                                     ; $77a5: $06 $18
    add b                                         ; $77a7: $80
    rst $38                                       ; $77a8: $ff
    nop                                           ; $77a9: $00
    ld c, $0f                                     ; $77aa: $0e $0f
    ld e, $3f                                     ; $77ac: $1e $3f

jr_0bd_77ae:
    ld a, [hl]                                    ; $77ae: $7e
    ld a, a                                       ; $77af: $7f
    cp $ff                                        ; $77b0: $fe $ff
    jr z, jr_0bd_7832                             ; $77b2: $28 $7e

    ld a, a                                       ; $77b4: $7f
    ld b, $08                                     ; $77b5: $06 $08
    nop                                           ; $77b7: $00
    ld l, h                                       ; $77b8: $6c
    db $10                                        ; $77b9: $10
    sbc [hl]                                      ; $77ba: $9e
    sbc a                                         ; $77bb: $9f
    sbc [hl]                                      ; $77bc: $9e
    ld b, a                                       ; $77bd: $47
    sbc a                                         ; $77be: $9f
    ld [hl], b                                    ; $77bf: $70
    jr nc, @+$09                                  ; $77c0: $30 $07

    ei                                            ; $77c2: $fb
    ld a, a                                       ; $77c3: $7f
    ld [bc], a                                    ; $77c4: $02
    ld c, b                                       ; $77c5: $48
    jr nz, jr_0bd_7800                            ; $77c6: $20 $38

    ld h, $18                                     ; $77c8: $26 $18
    cp [hl]                                       ; $77ca: $be
    ld e, $58                                     ; $77cb: $1e $58
    add e                                         ; $77cd: $83
    ld b, b                                       ; $77ce: $40
    ld b, b                                       ; $77cf: $40
    ld h, $48                                     ; $77d0: $26 $48
    call nz, Call_000_2058                        ; $77d2: $c4 $58 $20
    ld a, b                                       ; $77d5: $78
    ld [hl], d                                    ; $77d6: $72
    jr c, @+$01                                   ; $77d7: $38 $ff

    inc d                                         ; $77d9: $14
    pop bc                                        ; $77da: $c1
    cp $df                                        ; $77db: $fe $df
    ld [bc], a                                    ; $77dd: $02
    cp b                                          ; $77de: $b8
    ldh [$90], a                                  ; $77df: $e0 $90
    db $10                                        ; $77e1: $10
    bit 1, a                                      ; $77e2: $cb $4f
    jr nc, @-$33                                  ; $77e4: $30 $cb

    ld c, a                                       ; $77e6: $4f
    sub [hl]                                      ; $77e7: $96
    jr z, jr_0bd_781a                             ; $77e8: $28 $30

jr_0bd_77ea:
    ld [$d3f2], sp                                ; $77ea: $08 $f2 $d3
    ld a, [c]                                     ; $77ed: $f2
    db $d3                                        ; $77ee: $d3
    rst $38                                       ; $77ef: $ff
    ld [hl], $28                                  ; $77f0: $36 $28
    jr nz, jr_0bd_782c                            ; $77f2: $20 $38

    ld h, $18                                     ; $77f4: $26 $18
    jr nz, jr_0bd_7830                            ; $77f6: $20 $38

    ld h, $18                                     ; $77f8: $26 $18
    inc a                                         ; $77fa: $3c
    ld c, b                                       ; $77fb: $48
    or b                                          ; $77fc: $b0
    ld [$483c], sp                                ; $77fd: $08 $3c $48

jr_0bd_7800:
    ldh a, [$60]                                  ; $7800: $f0 $60
    ld [$483c], sp                                ; $7802: $08 $3c $48
    jr nz, jr_0bd_783f                            ; $7805: $20 $38

    ld h, d                                       ; $7807: $62
    jr z, jr_0bd_77ea                             ; $7808: $28 $e0

    rst $38                                       ; $780a: $ff
    db $10                                        ; $780b: $10
    dec b                                         ; $780c: $05
    ld a, e                                       ; $780d: $7b
    ld [bc], a                                    ; $780e: $02
    nop                                           ; $780f: $00
    ld [$d7ff], a                                 ; $7810: $ea $ff $d7
    add sp, -$53                                  ; $7813: $e8 $ad
    ret nc                                        ; $7815: $d0

    ld e, d                                       ; $7816: $5a
    and b                                         ; $7817: $a0
    db $10                                        ; $7818: $10
    or h                                          ; $7819: $b4

jr_0bd_781a:
    ret nz                                        ; $781a: $c0

    ld e, b                                       ; $781b: $58
    inc b                                         ; $781c: $04
    db $10                                        ; $781d: $10
    ld d, l                                       ; $781e: $55
    xor e                                         ; $781f: $ab
    cp $01                                        ; $7820: $fe $01
    ld [bc], a                                    ; $7822: $02
    cpl                                           ; $7823: $2f
    nop                                           ; $7824: $00
    dec d                                         ; $7825: $15
    nop                                           ; $7826: $00
    ld [bc], a                                    ; $7827: $02
    nop                                           ; $7828: $00
    ld bc, $3518                                  ; $7829: $01 $18 $35

jr_0bd_782c:
    nop                                           ; $782c: $00
    rst $38                                       ; $782d: $ff
    adc d                                         ; $782e: $8a
    ld [hl], l                                    ; $782f: $75

jr_0bd_7830:
    rst $38                                       ; $7830: $ff
    nop                                           ; $7831: $00

jr_0bd_7832:
    ld [hl], l                                    ; $7832: $75
    nop                                           ; $7833: $00
    add b                                         ; $7834: $80
    add b                                         ; $7835: $80
    db $10                                        ; $7836: $10
    jr nz, jr_0bd_7884                            ; $7837: $20 $4b

    or h                                          ; $7839: $b4
    cp a                                          ; $783a: $bf
    ld b, b                                       ; $783b: $40
    add sp, $00                                   ; $783c: $e8 $00
    ld d, b                                       ; $783e: $50

jr_0bd_783f:
    add b                                         ; $783f: $80
    ld e, $20                                     ; $7840: $1e $20
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    add sp, $17                                   ; $7844: $e8 $17
    ld e, l                                       ; $7846: $5d
    ld [bc], a                                    ; $7847: $02

Call_0bd_7848:
    ld b, $80                                     ; $7848: $06 $80
    ld c, $30                                     ; $784a: $0e $30
    nop                                           ; $784c: $00
    nop                                           ; $784d: $00
    dec d                                         ; $784e: $15
    rst $38                                       ; $784f: $ff
    ld d, h                                       ; $7850: $54
    xor e                                         ; $7851: $ab
    xor d                                         ; $7852: $aa
    jr nz, jr_0bd_7856                            ; $7853: $20 $01

    dec b                                         ; $7855: $05

jr_0bd_7856:
    ld b, b                                       ; $7856: $40
    jr nc, @+$57                                  ; $7857: $30 $55

    rst $38                                       ; $7859: $ff
    ld d, d                                       ; $785a: $52
    xor a                                         ; $785b: $af
    xor b                                         ; $785c: $a8
    ld [bc], a                                    ; $785d: $02
    ld d, a                                       ; $785e: $57
    rst $38                                       ; $785f: $ff
    nop                                           ; $7860: $00
    xor d                                         ; $7861: $aa
    nop                                           ; $7862: $00
    ld bc, $1052                                  ; $7863: $01 $52 $10
    rst $38                                       ; $7866: $ff
    nop                                           ; $7867: $00
    rst $38                                       ; $7868: $ff
    cp $ff                                        ; $7869: $fe $ff
    jr z, @+$01                                   ; $786b: $28 $ff

    ld d, d                                       ; $786d: $52
    xor l                                         ; $786e: $ad
    xor $a0                                       ; $786f: $ee $a0
    ld b, h                                       ; $7871: $44
    nop                                           ; $7872: $00
    jr nz, jr_0bd_78b5                            ; $7873: $20 $40

    ld [$8aff], sp                                ; $7875: $08 $ff $8a
    push af                                       ; $7878: $f5
    ld e, e                                       ; $7879: $5b
    and b                                         ; $787a: $a0
    db $10                                        ; $787b: $10
    call nc, $a000                                ; $787c: $d4 $00 $a0
    ld [hl], b                                    ; $787f: $70
    jr nz, jr_0bd_78c9                            ; $7880: $20 $47

    and a                                         ; $7882: $a7
    sub a                                         ; $7883: $97

jr_0bd_7884:
    ld b, a                                       ; $7884: $47
    nop                                           ; $7885: $00
    ld c, a                                       ; $7886: $4f
    adc a                                         ; $7887: $8f
    adc a                                         ; $7888: $8f
    ld c, a                                       ; $7889: $4f
    rrca                                          ; $788a: $0f
    rst $08                                       ; $788b: $cf
    rrca                                          ; $788c: $0f
    rrca                                          ; $788d: $0f
    ld a, [bc]                                    ; $788e: $0a
    rst $28                                       ; $788f: $ef
    rrca                                          ; $7890: $0f
    rra                                           ; $7891: $1f
    rra                                           ; $7892: $1f
    add a                                         ; $7893: $87
    db $10                                        ; $7894: $10
    db $10                                        ; $7895: $10
    adc l                                         ; $7896: $8d
    ld [$5b01], sp                                ; $7897: $08 $01 $5b
    ld b, b                                       ; $789a: $40
    ld [hl], l                                    ; $789b: $75
    jr z, jr_0bd_789f                             ; $789c: $28 $01

    add hl, sp                                    ; $789e: $39

jr_0bd_789f:
    ld [$4803], sp                                ; $789f: $08 $03 $48
    inc b                                         ; $78a2: $04
    xor l                                         ; $78a3: $ad
    db $10                                        ; $78a4: $10
    and e                                         ; $78a5: $a3
    nop                                           ; $78a6: $00
    rst $38                                       ; $78a7: $ff
    or [hl]                                       ; $78a8: $b6
    nop                                           ; $78a9: $00
    inc e                                         ; $78aa: $1c
    ld b, b                                       ; $78ab: $40
    scf                                           ; $78ac: $37
    ld [$18b8], sp                                ; $78ad: $08 $b8 $18
    ld b, c                                       ; $78b0: $41

jr_0bd_78b1:
    db $10                                        ; $78b1: $10
    inc h                                         ; $78b2: $24
    db $10                                        ; $78b3: $10
    dec hl                                        ; $78b4: $2b

jr_0bd_78b5:
    db $10                                        ; $78b5: $10
    ld b, b                                       ; $78b6: $40
    jr @+$01                                      ; $78b7: $18 $ff

    db $e3                                        ; $78b9: $e3
    jr z, jr_0bd_78c7                             ; $78ba: $28 $0b

    jr z, jr_0bd_7914                             ; $78bc: $28 $56

    ld c, b                                       ; $78be: $48
    ld sp, $5818                                  ; $78bf: $31 $18 $58
    nop                                           ; $78c2: $00
    ld [hl], l                                    ; $78c3: $75
    db $10                                        ; $78c4: $10
    ld a, [hl+]                                   ; $78c5: $2a
    ld b, b                                       ; $78c6: $40

jr_0bd_78c7:
    add hl, hl                                    ; $78c7: $29
    ld l, b                                       ; $78c8: $68

jr_0bd_78c9:
    ld a, a                                       ; $78c9: $7f
    ld [$189f], sp                                ; $78ca: $08 $9f $18
    db $dd                                        ; $78cd: $dd
    jr jr_0bd_78fe                                ; $78ce: $18 $2e

    db $10                                        ; $78d0: $10
    ld l, h                                       ; $78d1: $6c
    jr nc, jr_0bd_7916                            ; $78d2: $30 $42

    ld b, b                                       ; $78d4: $40
    db $fc                                        ; $78d5: $fc
    jr jr_0bd_789f                                ; $78d6: $18 $c7

    ld [$30df], sp                                ; $78d8: $08 $df $30
    ld [$215b], sp                                ; $78db: $08 $5b $21
    ld b, b                                       ; $78de: $40
    dec a                                         ; $78df: $3d
    ld [$3010], sp                                ; $78e0: $08 $10 $30
    sbc $10                                       ; $78e3: $de $10
    ld h, [hl]                                    ; $78e5: $66
    add hl, hl                                    ; $78e6: $29
    add $20                                       ; $78e7: $c6 $20
    rst $18                                       ; $78e9: $df
    ld hl, sp+$00                                 ; $78ea: $f8 $00
    ld a, b                                       ; $78ec: $78
    ld hl, $7041                                  ; $78ed: $21 $41 $70
    ld c, b                                       ; $78f0: $48
    ld sp, $0b40                                  ; $78f1: $31 $40 $0b
    ld c, b                                       ; $78f4: $48
    ld a, l                                       ; $78f5: $7d
    jr jr_0bd_78b1                                ; $78f6: $18 $b9

    add hl, bc                                    ; $78f8: $09
    rst $30                                       ; $78f9: $f7
    rst $28                                       ; $78fa: $ef
    jr c, jr_0bd_7926                             ; $78fb: $38 $29

    ld h, c                                       ; $78fd: $61

jr_0bd_78fe:
    dec sp                                        ; $78fe: $3b
    ld d, b                                       ; $78ff: $50
    ld [hl], $11                                  ; $7900: $36 $11
    ld b, b                                       ; $7902: $40
    jp hl                                         ; $7903: $e9


    ld hl, $3898                                  ; $7904: $21 $98 $38
    and d                                         ; $7907: $a2
    jr nz, @-$2e                                  ; $7908: $20 $d0

    xor c                                         ; $790a: $a9
    ld b, b                                       ; $790b: $40
    ld l, [hl]                                    ; $790c: $6e
    ld c, b                                       ; $790d: $48
    rst $38                                       ; $790e: $ff
    ld bc, $fe40                                  ; $790f: $01 $40 $fe
    cp $f9                                        ; $7912: $fe $f9

jr_0bd_7914:
    ld hl, sp+$00                                 ; $7914: $f8 $00

jr_0bd_7916:
    cp $fe                                        ; $7916: $fe $fe
    db $fd                                        ; $7918: $fd
    db $fc                                        ; $7919: $fc
    ld a, [c]                                     ; $791a: $f2
    ldh a, [$ec]                                  ; $791b: $f0 $ec
    pop hl                                        ; $791d: $e1
    nop                                           ; $791e: $00
    pop de                                        ; $791f: $d1
    jp nz, Jump_000_0f20                          ; $7920: $c2 $20 $0f

    rst $00                                       ; $7923: $c7
    jr @+$25                                      ; $7924: $18 $23

jr_0bd_7926:
    db $10                                        ; $7926: $10
    ldh [rNR41], a                                ; $7927: $e0 $20
    ld c, b                                       ; $7929: $48
    ld [hl+], a                                   ; $792a: $22
    ld [$0820], sp                                ; $792b: $08 $20 $08
    ld a, [$f4f8]                                 ; $792e: $fa $f8 $f4
    pop af                                        ; $7931: $f1
    jp hl                                         ; $7932: $e9


    ld bc, $d0e2                                  ; $7933: $01 $e2 $d0
    rst $00                                       ; $7936: $c7
    daa                                           ; $7937: $27
    ld [$0893], sp                                ; $7938: $08 $93 $08
    jr nz, jr_0bd_7995                            ; $793b: $20 $58

    jp nz, Jump_000_0844                          ; $793d: $c2 $44 $08

    jr nz, jr_0bd_797a                            ; $7940: $20 $38

    and a                                         ; $7942: $a7
    adc b                                         ; $7943: $88
    sub e                                         ; $7944: $93
    adc b                                         ; $7945: $88
    jr nc, jr_0bd_7960                            ; $7946: $30 $18

    ld hl, sp+$00                                 ; $7948: $f8 $00

jr_0bd_794a:
    ld sp, hl                                     ; $794a: $f9
    db $f4                                        ; $794b: $f4
    pop af                                        ; $794c: $f1
    add sp, -$1d                                  ; $794d: $e8 $e3
    db $e3                                        ; $794f: $e3
    db $e4                                        ; $7950: $e4
    pop de                                        ; $7951: $d1
    ld d, b                                       ; $7952: $50
    call nz, $0860                                ; $7953: $c4 $60 $08
    db $fc                                        ; $7956: $fc
    ld b, d                                       ; $7957: $42
    db $10                                        ; $7958: $10
    ldh a, [$f3]                                  ; $7959: $f0 $f3
    db $eb                                        ; $795b: $eb
    ldh [rNR41], a                                ; $795c: $e0 $20
    db $e4                                        ; $795e: $e4

jr_0bd_795f:
    pop hl                                        ; $795f: $e1

jr_0bd_7960:
    db $10                                        ; $7960: $10
    jr jr_0bd_795f                                ; $7961: $18 $fc

    db $fd                                        ; $7963: $fd
    ld hl, sp-$07                                 ; $7964: $f8 $f9

jr_0bd_7966:
    ld hl, sp+$06                                 ; $7966: $f8 $06
    ld sp, hl                                     ; $7968: $f9
    pop af                                        ; $7969: $f1
    ld a, [c]                                     ; $796a: $f2
    ldh a, [$f2]                                  ; $796b: $f0 $f2
    ld h, d                                       ; $796d: $62
    ld [$5804], sp                                ; $796e: $08 $04 $58
    db $fc                                        ; $7971: $fc
    sub b                                         ; $7972: $90
    ld sp, $fd08                                  ; $7973: $31 $08 $fd
    ld sp, hl                                     ; $7976: $f9
    ld b, h                                       ; $7977: $44
    nop                                           ; $7978: $00
    pop af                                        ; $7979: $f1

jr_0bd_797a:
    ld a, [c]                                     ; $797a: $f2
    ld a, [c]                                     ; $797b: $f2
    pop af                                        ; $797c: $f1
    nop                                           ; $797d: $00
    ld a, a                                       ; $797e: $7f
    ld a, a                                       ; $797f: $7f
    ccf                                           ; $7980: $3f
    cp a                                          ; $7981: $bf
    ccf                                           ; $7982: $3f
    ccf                                           ; $7983: $3f
    ccf                                           ; $7984: $3f

jr_0bd_7985:
    cp a                                          ; $7985: $bf
    nop                                           ; $7986: $00

jr_0bd_7987:
    rra                                           ; $7987: $1f
    sbc a                                         ; $7988: $9f
    sbc a                                         ; $7989: $9f
    rra                                           ; $798a: $1f
    rrca                                          ; $798b: $0f
    rst $08                                       ; $798c: $cf
    adc a                                         ; $798d: $8f
    ld c, a                                       ; $798e: $4f
    nop                                           ; $798f: $00
    or $f0                                        ; $7990: $f6 $f0
    jp hl                                         ; $7992: $e9


    ldh [$d3], a                                  ; $7993: $e0 $d3

jr_0bd_7995:
    call nz, $8da2                                ; $7995: $c4 $a2 $8d
    nop                                           ; $7998: $00
    ld b, h                                       ; $7999: $44
    ld a, [de]                                    ; $799a: $1a
    ld d, b                                       ; $799b: $50
    inc c                                         ; $799c: $0c
    ld d, b                                       ; $799d: $50
    inc c                                         ; $799e: $0c
    ld b, [hl]                                    ; $799f: $46
    jr jr_0bd_79a2                                ; $79a0: $18 $00

jr_0bd_79a2:
    pop bc                                        ; $79a2: $c1
    jr nz, jr_0bd_7966                            ; $79a3: $20 $c1

    jr nz, jr_0bd_7987                            ; $79a5: $20 $e0

    db $10                                        ; $79a7: $10
    ld h, b                                       ; $79a8: $60
    add b                                         ; $79a9: $80
    ret nz                                        ; $79aa: $c0

    ld c, a                                       ; $79ab: $4f
    add hl, hl                                    ; $79ac: $29
    xor [hl]                                      ; $79ad: $ae
    ld [$f0f5], sp                                ; $79ae: $08 $f5 $f0
    jp hl                                         ; $79b1: $e9


    ld [c], a                                     ; $79b2: $e2
    jp nc, Jump_000_00c4                          ; $79b3: $d2 $c4 $00

    call nc, $d4c2                                ; $79b6: $d4 $c2 $d4
    jp nz, $c4d3                                  ; $79b9: $c2 $d3 $c4

    ld h, c                                       ; $79bc: $61
    db $10                                        ; $79bd: $10
    inc bc                                        ; $79be: $03
    pop hl                                        ; $79bf: $e1
    db $10                                        ; $79c0: $10
    ldh a, [rP1]                                  ; $79c1: $f0 $00
    jr nc, jr_0bd_7985                            ; $79c3: $30 $c0

    ld e, b                                       ; $79c5: $58
    ld a, [hl+]                                   ; $79c6: $2a
    or d                                          ; $79c7: $b2
    jr c, jr_0bd_794a                             ; $79c8: $38 $80

    ld [bc], a                                    ; $79ca: $02
    jr @+$33                                      ; $79cb: $18 $31

    nop                                           ; $79cd: $00
    or c                                          ; $79ce: $b1
    nop                                           ; $79cf: $00
    ld [hl], b                                    ; $79d0: $70
    nop                                           ; $79d1: $00
    sub b                                         ; $79d2: $90
    add $41                                       ; $79d3: $c6 $41
    nop                                           ; $79d5: $00
    inc hl                                        ; $79d6: $23
    inc bc                                        ; $79d7: $03
    add b                                         ; $79d8: $80
    add b                                         ; $79d9: $80
    ld b, b                                       ; $79da: $40
    sub $38                                       ; $79db: $d6 $38
    ld bc, $a018                                  ; $79dd: $01 $18 $a0
    nop                                           ; $79e0: $00
    adc c                                         ; $79e1: $89
    ld d, b                                       ; $79e2: $50
    add hl, bc                                    ; $79e3: $09
    jr c, jr_0bd_79e6                             ; $79e4: $38 $00

jr_0bd_79e6:
    xor b                                         ; $79e6: $a8
    stop                                          ; $79e7: $10 $00
    nop                                           ; $79e9: $00
    ld h, b                                       ; $79ea: $60
    nop                                           ; $79eb: $00
    ret nz                                        ; $79ec: $c0

    nop                                           ; $79ed: $00
    ret nz                                        ; $79ee: $c0

    ld b, b                                       ; $79ef: $40
    and b                                         ; $79f0: $a0
    ret nc                                        ; $79f1: $d0

    nop                                           ; $79f2: $00
    call nz, $c4c8                                ; $79f3: $c4 $c8 $c4
    xor h                                         ; $79f6: $ac
    add b                                         ; $79f7: $80
    sbc h                                         ; $79f8: $9c
    add b                                         ; $79f9: $80
    ld d, b                                       ; $79fa: $50
    nop                                           ; $79fb: $00
    ld [$1040], sp                                ; $79fc: $08 $40 $10
    ld b, b                                       ; $79ff: $40
    db $10                                        ; $7a00: $10
    ld d, b                                       ; $7a01: $50
    ld [$00ea], sp                                ; $7a02: $08 $ea $00
    ldh [$e2], a                                  ; $7a05: $e0 $e2
    db $e4                                        ; $7a07: $e4
    db $e4                                        ; $7a08: $e4
    ld [c], a                                     ; $7a09: $e2
    call nc, $c0c2                                ; $7a0a: $d4 $c2 $c0
    nop                                           ; $7a0d: $00
    call z, $c8c0                                 ; $7a0e: $cc $c0 $c8
    ret nz                                        ; $7a11: $c0

    ret z                                         ; $7a12: $c8

    ret z                                         ; $7a13: $c8

    call nz, $00e9                                ; $7a14: $c4 $e9 $00
    ld [c], a                                     ; $7a17: $e2
    ld [c], a                                     ; $7a18: $e2
    push hl                                       ; $7a19: $e5
    push hl                                       ; $7a1a: $e5
    ldh [$d2], a                                  ; $7a1b: $e0 $d2
    call nz, $10c5                                ; $7a1d: $c4 $c5 $10
    jp z, $c5ca                                   ; $7a20: $ca $ca $c5

    inc b                                         ; $7a23: $04
    nop                                           ; $7a24: $00
    call nz, Call_000_0757                        ; $7a25: $c4 $57 $07
    add a                                         ; $7a28: $87
    nop                                           ; $7a29: $00

jr_0bd_7a2a:
    daa                                           ; $7a2a: $27
    ld b, a                                       ; $7a2b: $47
    and a                                         ; $7a2c: $a7
    xor e                                         ; $7a2d: $ab
    ld b, e                                       ; $7a2e: $43
    ld b, e                                       ; $7a2f: $43
    or e                                          ; $7a30: $b3
    and e                                         ; $7a31: $a3
    nop                                           ; $7a32: $00
    ld d, e                                       ; $7a33: $53
    ld d, e                                       ; $7a34: $53
    and e                                         ; $7a35: $a3
    and e                                         ; $7a36: $a3
    ld d, e                                       ; $7a37: $53
    and a                                         ; $7a38: $a7
    adc b                                         ; $7a39: $88
    and a                                         ; $7a3a: $a7
    ld [bc], a                                    ; $7a3b: $02
    adc b                                         ; $7a3c: $88
    and [hl]                                      ; $7a3d: $a6
    adc b                                         ; $7a3e: $88
    ret nc                                        ; $7a3f: $d0

    call nz, $a0d0                                ; $7a40: $c4 $d0 $a0
    nop                                           ; $7a43: $00
    ld [$e118], a                                 ; $7a44: $ea $18 $e1
    db $eb                                        ; $7a47: $eb
    ldh [$75], a                                  ; $7a48: $e0 $75
    nop                                           ; $7a4a: $00
    ld d, b                                       ; $7a4b: $50
    ld [hl-], a                                   ; $7a4c: $32
    ld h, b                                       ; $7a4d: $60
    add b                                         ; $7a4e: $80
    ldh [rP1], a                                  ; $7a4f: $e0 $00
    db $10                                        ; $7a51: $10
    db $d3                                        ; $7a52: $d3
    call nz, $e4e3                                ; $7a53: $c4 $e3 $e4
    db $eb                                        ; $7a56: $eb
    ldh [$e8], a                                  ; $7a57: $e0 $e8
    nop                                           ; $7a59: $00
    ld [c], a                                     ; $7a5a: $e2
    add sp, -$1e                                  ; $7a5b: $e8 $e2
    ldh a, [$f2]                                  ; $7a5d: $f0 $f2
    push af                                       ; $7a5f: $f5
    ldh a, [$f5]                                  ; $7a60: $f0 $f5
    ld h, b                                       ; $7a62: $60
    ldh a, [$75]                                  ; $7a63: $f0 $75
    nop                                           ; $7a65: $00
    or a                                          ; $7a66: $b7
    ld [hl-], a                                   ; $7a67: $32
    jr nc, jr_0bd_7a2a                            ; $7a68: $30 $c0

    ldh a, [rP1]                                  ; $7a6a: $f0 $00
    db $f4                                        ; $7a6c: $f4
    rlca                                          ; $7a6d: $07
    pop af                                        ; $7a6e: $f1
    ld hl, sp-$07                                 ; $7a6f: $f8 $f9
    ld a, [$02f8]                                 ; $7a71: $fa $f8 $02
    ld [$0145], sp                                ; $7a74: $08 $45 $01
    dec hl                                        ; $7a77: $2b
    ld bc, $e018                                  ; $7a78: $01 $18 $e0
    nop                                           ; $7a7b: $00
    ldh [$dc], a                                  ; $7a7c: $e0 $dc
    dec bc                                        ; $7a7e: $0b
    cp h                                          ; $7a7f: $bc
    ld [$1000], sp                                ; $7a80: $08 $00 $10
    ld h, b                                       ; $7a83: $60
    ld c, b                                       ; $7a84: $48
    ld [hl], b                                    ; $7a85: $70
    nop                                           ; $7a86: $00
    ld bc, $fcfd                                  ; $7a87: $01 $fd $fc
    ld d, h                                       ; $7a8a: $54
    add hl, sp                                    ; $7a8b: $39
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    ld h, b                                       ; $7a8e: $60
    inc d                                         ; $7a8f: $14
    jr jr_0bd_7af2                                ; $7a90: $18 $60

    jr @-$42                                      ; $7a92: $18 $bc

jr_0bd_7a94:
    nop                                           ; $7a94: $00
    ld b, b                                       ; $7a95: $40
    db $dd                                        ; $7a96: $dd
    nop                                           ; $7a97: $00
    jr nz, @-$56                                  ; $7a98: $20 $a8

    nop                                           ; $7a9a: $00
    db $10                                        ; $7a9b: $10
    jr c, jr_0bd_7a9e                             ; $7a9c: $38 $00

jr_0bd_7a9e:
    ld e, b                                       ; $7a9e: $58
    inc b                                         ; $7a9f: $04
    sbc b                                         ; $7aa0: $98
    add h                                         ; $7aa1: $84
    sub b                                         ; $7aa2: $90
    db $10                                        ; $7aa3: $10
    adc b                                         ; $7aa4: $88
    and b                                         ; $7aa5: $a0
    add b                                         ; $7aa6: $80
    ld [bc], a                                    ; $7aa7: $02
    nop                                           ; $7aa8: $00

jr_0bd_7aa9:
    adc b                                         ; $7aa9: $88
    call nc, $d4c0                                ; $7aaa: $d4 $c0 $d4
    nop                                           ; $7aad: $00
    ret nz                                        ; $7aae: $c0

    call z, $e8c2                                 ; $7aaf: $cc $c2 $e8
    and $e0                                       ; $7ab2: $e6 $e0
    db $e4                                        ; $7ab4: $e4
    ldh [$c0], a                                  ; $7ab5: $e0 $c0
    ld bc, $c808                                  ; $7ab7: $01 $08 $c8
    nop                                           ; $7aba: $00
    db $e4                                        ; $7abb: $e4
    ld [c], a                                     ; $7abc: $e2
    push bc                                       ; $7abd: $c5
    jp z, $ede2                                   ; $7abe: $ca $e2 $ed

    ld [bc], a                                    ; $7ac1: $02
    push hl                                       ; $7ac2: $e5
    ld [c], a                                     ; $7ac3: $e2
    ld [c], a                                     ; $7ac4: $e2
    pop hl                                        ; $7ac5: $e1
    push hl                                       ; $7ac6: $e5
    ldh [$c8], a                                  ; $7ac7: $e0 $c8
    ld [$00e2], sp                                ; $7ac9: $08 $e2 $00
    db $e4                                        ; $7acc: $e4
    ld b, e                                       ; $7acd: $43
    inc sp                                        ; $7ace: $33
    and a                                         ; $7acf: $a7
    rla                                           ; $7ad0: $17
    ld b, a                                       ; $7ad1: $47
    daa                                           ; $7ad2: $27
    and a                                         ; $7ad3: $a7
    nop                                           ; $7ad4: $00
    rlca                                          ; $7ad5: $07
    ld b, a                                       ; $7ad6: $47
    add a                                         ; $7ad7: $87
    and a                                         ; $7ad8: $a7
    ld b, a                                       ; $7ad9: $47
    ld b, a                                       ; $7ada: $47
    and a                                         ; $7adb: $a7
    add a                                         ; $7adc: $87
    dec de                                        ; $7add: $1b
    ld h, a                                       ; $7ade: $67
    jp hl                                         ; $7adf: $e9


    ld [c], a                                     ; $7ae0: $e2
    ld a, [hl-]                                   ; $7ae1: $3a
    add hl, de                                    ; $7ae2: $19
    add h                                         ; $7ae3: $84
    ld [$84fb], sp                                ; $7ae4: $08 $fb $84
    nop                                           ; $7ae7: $00
    add b                                         ; $7ae8: $80
    add hl, bc                                    ; $7ae9: $09
    inc bc                                        ; $7aea: $03
    ld h, e                                       ; $7aeb: $63
    sub b                                         ; $7aec: $90
    sbc a                                         ; $7aed: $9f
    ld h, b                                       ; $7aee: $60
    ld b, a                                       ; $7aef: $47
    cp b                                          ; $7af0: $b8
    inc e                                         ; $7af1: $1c

jr_0bd_7af2:
    inc b                                         ; $7af2: $04
    ld [hl], h                                    ; $7af3: $74
    inc b                                         ; $7af4: $04
    add b                                         ; $7af5: $80
    sbc [hl]                                      ; $7af6: $9e
    ld e, b                                       ; $7af7: $58
    cp $fe                                        ; $7af8: $fe $fe
    pop hl                                        ; $7afa: $e1
    db $10                                        ; $7afb: $10
    ld h, c                                       ; $7afc: $61
    sub b                                         ; $7afd: $90
    inc sp                                        ; $7afe: $33
    rlca                                          ; $7aff: $07
    ret z                                         ; $7b00: $c8

    ld c, a                                       ; $7b01: $4f
    or b                                          ; $7b02: $b0
    daa                                           ; $7b03: $27
    ret c                                         ; $7b04: $d8

    jr nz, jr_0bd_7b1f                            ; $7b05: $20 $18

    sbc [hl]                                      ; $7b07: $9e
    jr c, jr_0bd_7a94                             ; $7b08: $38 $8a

    ld a, [de]                                    ; $7b0a: $1a
    nop                                           ; $7b0b: $00

Jump_0bd_7b0c:
    ld [hl], c                                    ; $7b0c: $71
    nop                                           ; $7b0d: $00
    ld sp, $9b48                                  ; $7b0e: $31 $48 $9b
    inc h                                         ; $7b11: $24
    xor a                                         ; $7b12: $af
    db $10                                        ; $7b13: $10
    inc b                                         ; $7b14: $04
    sub e                                         ; $7b15: $93
    inc l                                         ; $7b16: $2c
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    ld a, a                                       ; $7b19: $7f
    or h                                          ; $7b1a: $b4
    inc b                                         ; $7b1b: $04
    jr @+$23                                      ; $7b1c: $18 $21

    nop                                           ; $7b1e: $00

jr_0bd_7b1f:
    ld e, b                                       ; $7b1f: $58
    dec b                                         ; $7b20: $05
    ld c, l                                       ; $7b21: $4d
    ld [de], a                                    ; $7b22: $12
    ld b, a                                       ; $7b23: $47
    jr jr_0bd_7aa9                                ; $7b24: $18 $83

    sbc h                                         ; $7b26: $9c
    ld [bc], a                                    ; $7b27: $02
    and b                                         ; $7b28: $a0
    add b                                         ; $7b29: $80
    cp a                                          ; $7b2a: $bf
    add b                                         ; $7b2b: $80
    ret nz                                        ; $7b2c: $c0

    ret nz                                        ; $7b2d: $c0

    ld a, [hl+]                                   ; $7b2e: $2a
    ld de, $20c3                                  ; $7b2f: $11 $c3 $20
    rst $20                                       ; $7b32: $e7
    ldh [rNR14], a                                ; $7b33: $e0 $14
    ld bc, $efe0                                  ; $7b35: $01 $e0 $ef
    ldh [$f0], a                                  ; $7b38: $e0 $f0
    ldh a, [rSCY]                                 ; $7b3a: $f0 $42
    db $e4                                        ; $7b3c: $e4
    ld a, [de]                                    ; $7b3d: $1a
    ld bc, $f2f1                                  ; $7b3e: $01 $f1 $f2
    di                                            ; $7b41: $f3
    ldh a, [$3c]                                  ; $7b42: $f0 $3c
    ld [bc], a                                    ; $7b44: $02
    ldh a, [rP1]                                  ; $7b45: $f0 $00
    rst $30                                       ; $7b47: $f7
    ldh a, [$f8]                                  ; $7b48: $f0 $f8
    ld hl, sp-$1f                                 ; $7b4a: $f8 $e1
    and $ea                                       ; $7b4c: $e6 $ea
    pop hl                                        ; $7b4e: $e1
    and b                                         ; $7b4f: $a0
    ld c, b                                       ; $7b50: $48
    ld [bc], a                                    ; $7b51: $02
    di                                            ; $7b52: $f3
    db $10                                        ; $7b53: $10
    db $28                                        ; $7b54: $28

    db $50, $06, $8e, $02, $40, $ff, $01, $b0, $43, $bf, $5e, $81, $60, $80, $85, $20
    db $48, $3f, $ff, $38, $07, $30, $18, $fe, $02, $10, $80, $07, $08, $b0, $00, $dc
    db $00, $aa, $04, $15, $00, $02, $0a, $01, $05, $00, $02, $00, $01, $50, $00, $01
    db $08, $08, $06, $00, $80, $00, $40, $80, $01, $a0, $40, $50, $20, $e3, $1f, $03
    db $14, $10, $80, $1a, $18, $00, $00, $ff, $ff, $c7, $3f, $1c, $c0, $13, $18, $10
    db $20, $ff, $ff, $7f, $ff, $78, $07, $b6, $39, $08, $80, $10, $20, $94, $08, $38
    db $12, $10, $10, $38, $ff, $62, $ff, $4a, $18, $b0, $48, $c7, $3f, $07, $10, $50
    db $ff, $34, $ff, $1f, $9b, $10, $01, $08, $fc, $02, $10, $fe, $fc, $14, $00, $00
    db $20, $94, $10, $02, $80, $20, $a8, $10, $12, $54, $08, $2a, $b0, $00, $02, $01
    db $ac, $18, $10, $ff, $98, $20, $b0, $28, $9a, $38, $0a, $48, $26, $28, $a4, $18
    db $24, $68, $14, $38, $30, $02, $00, $b7, $18, $6e, $28, $00, $00, $8f, $7f, $7b
    db $0e, $fb, $20, $6a, $18, $46, $09, $14, $29, $04, $f0, $30, $ca, $08, $05, $03
    db $00, $16, $00, $2c, $00, $31, $7f, $02, $20, $8d, $c9, $18, $f8, $fc, $fa, $04
    db $00, $07, $00, $f8, $a0, $58, $e0, $6a, $09, $06, $28, $61, $19, $2c, $10, $12
    db $0c, $09, $30, $06, $06, $de, $20, $b6, $38, $c0, $00, $68, $00, $11, $34, $00
    db $1a, $df, $50, $01, $00, $06, $8a, $41, $02, $7f, $3e, $81, $ff, $00, $ff, $d6
    db $48, $e0, $18, $80, $7c, $f0, $a8, $28, $c2, $09, $02, $00, $17, $80, $08, $20
    db $15, $00, $2e, $01, $59, $06, $e2, $00, $1c, $45, $b8, $59, $00, $31, $00, $e1
    db $00, $00, $41, $80, $80, $01, $00, $01, $08, $81, $04, $00, $f4, $f8, $f4, $f8
    db $f0, $f8, $03, $00, $b4, $02, $00, $e0, $02, $00, $f7, $19, $40, $f1, $31, $0d
    db $00, $60, $06, $ea, $00, $9e, $38, $18, $0f, $b1, $1f, $e3, $00, $3f, $e6, $7f
    db $c5, $7f, $ce, $7f, $78, $00, $3f, $1d, $07, $78, $ff, $ef, $ff, $01, $20, $ff
    db $80, $8a, $00, $04, $ff, $a8, $ff, $f5, $00, $ff, $3e, $f8, $0f, $fc, $87, $fe
    db $47, $00, $fe, $23, $ff, $23, $ff, $bf, $ff, $ff, $40, $c0, $ba, $28, $8b, $00
    db $9a, $05, $e3, $1c, $40, $fd, $70, $02, $05, $00, $2a, $01, $74, $0b, $00, $40
    db $bf, $07, $f8, $ea, $00, $50, $00, $00, $aa, $05, $54, $2b, $a0, $5f, $07, $f8
    db $10, $3a, $c0, $54, $50, $12, $0a, $f0, $34, $c0, $53, $a8, $80, $00, $84, $04
    db $22, $03, $01, $02, $08, $05, $08, $43, $81, $0b, $00, $07, $03, $e0, $f0, $a7
    db $10, $ab, $00, $03, $c0, $e0, $c4, $e0, $d0, $e0, $30, $2a, $08, $8a, $80, $a0
    db $12, $7f, $8b, $ff, $8d, $ff, $8a, $ff, $00, $8c, $ff, $8e, $ff, $c4, $ff, $c5
    db $7f, $06, $ff, $0f, $ff, $83, $fe, $38, $09, $04, $20, $ff, $20, $1e, $e7, $aa
    db $00, $23, $ff, $03, $ff, $27, $8e, $1b, $00, $4f, $fe, $aa, $7a, $01, $02, $38
    db $5f, $41, $00, $74, $1f, $0e, $50, $1a, $03, $26, $43, $01, $89, $31, $4f, $03
    db $0c, $17, $03, $ab, $07, $97, $39, $b0, $0b, $00, $ff, $43, $ab, $40, $43, $47
    db $f8, $5e, $a0, $a7, $09, $ca, $1a, $00, $07, $ff, $67, $1f, $b7, $0f, $07, $1f
    db $24, $17, $0f, $02, $08, $07, $0f, $e0, $63, $fe, $e8, $00, $c0, $f0, $c0, $ea
    db $c0, $f5, $c0, $ba, $01, $c0, $bd, $c0, $b5, $ca, $00, $ff, $00, $1b, $00, $40
    db $00, $a9, $00, $57, $00, $42, $bc, $c2, $5f, $21, $c6, $03, $0e, $01, $42, $bc
    db $b6, $3b, $0f, $10, $00, $86, $78, $b4, $3b, $07, $00, $57, $a8, $83, $c2, $2b
    db $e0, $7f, $61, $3e, $fe, $5e, $02, $e6, $31, $ff, $9f, $00, $34, $3a, $d6, $08
    db $53, $01, $a6, $52, $4c, $3b, $7c, $2b, $2c, $28, $de, $7c, $4b, $40, $28, $40
    db $de, $52, $58, $0c, $5c, $3b, $66, $0c, $13, $00, $0f, $0f, $07, $1b, $07, $0b
    db $07, $03, $24, $07, $0f, $ce, $01, $2f, $03, $9c, $0c, $e6, $f8, $00, $cd, $f0
    db $da, $e0, $e8, $f0, $cc, $f0, $22, $e4, $f8, $9c, $09, $b4, $0b, $45, $ea, $33
    db $86, $0f, $f8, $30, $c0, $c0, $6a, $14, $94, $1a, $74, $0c, $78, $0c, $c6, $84
    db $48, $3c, $4b, $07, $03, $05, $33, $02, $04, $38, $ea, $00, $f4, $e4, $f8, $e0
    db $f8, $ec, $f0, $e8, $a2, $02, $00, $e0, $06, $00, $0d, $03, $01, $7e, $00, $05
    db $00, $03, $17, $01, $00, $03, $06, $01, $02, $22, $01, $f0, $fa, $12, $f4, $f8
    db $f2, $08, $03, $f6, $37, $f8, $f9, $80, $04, $b6, $58, $43, $0b, $05, $2b, $03
    db $2a, $15, $70, $01, $02, $04, $ee, $2b, $f2, $2b, $f2, $fc, $fb, $fc, $00, $f8
    db $fe, $fb, $fc, $f9, $fe, $fa, $fd, $0d, $fd, $fe, $f8, $ff, $a0, $28, $52, $1d
    db $d0, $68, $34, $c5, $40, $18, $90, $0a, $ff, $7f, $7f, $04, $10, $bf, $04, $10
    db $01, $fc, $ff, $f8, $ff, $fd, $fe, $fc, $04, $00, $83, $02, $08, $fe, $fe, $00
    db $80, $80, $40, $30, $ee, $2c, $83, $42, $49, $33, $0f, $2b, $07, $13, $40, $01
    db $41, $01, $b1, $0e, $03, $03, $9a, $25, $ae, $2d, $08, $00, $17, $26, $13, $96
    db $02, $29, $23, $01, $f4, $08, $ea, $fc, $08, $04, $01, $e4, $10, $f8, $e4, $f8
    db $44, $03, $01, $04, $03, $02, $10, $05, $88, $07, $fe, $08, $02, $01, $14, $00
    db $06, $00, $ea, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb
    db $eb, $eb, $eb, $eb, $eb, $ea, $ec, $70, $70, $70, $70, $70, $70, $70, $70, $70
    db $70, $70, $70, $70, $70, $70, $70, $70, $70, $ec, $ec, $70, $70, $70, $70, $70
    db $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $ec, $ec, $70
    db $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70
    db $70, $ec, $ec, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70
    db $70, $70, $70, $70, $70, $ec, $ea, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb
    db $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $eb, $ea, $0e, $0e, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $2e, $0e, $06
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $2e, $0e, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $06, $06, $2e, $0e, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $2e, $0e, $06, $06, $06, $06, $06
    db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $2e, $4e, $4e
    db $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e
    db $4e, $6e

    rst $38                                       ; $7fd7: $ff
    ld a, a                                       ; $7fd8: $7f
    ld c, a                                       ; $7fd9: $4f
    ld a, a                                       ; $7fda: $7f
    ld [$003d], a                                 ; $7fdb: $ea $3d $00
    inc d                                         ; $7fde: $14
    rst $38                                       ; $7fdf: $ff
    ld a, a                                       ; $7fe0: $7f
    ld e, [hl]                                    ; $7fe1: $5e
    rlca                                          ; $7fe2: $07
    ld [hl], d                                    ; $7fe3: $72
    dec b                                         ; $7fe4: $05
    ld b, e                                       ; $7fe5: $43
    inc b                                         ; $7fe6: $04
    rst $38                                       ; $7fe7: $ff
    ld a, a                                       ; $7fe8: $7f
    and l                                         ; $7fe9: $a5
    ld b, e                                       ; $7fea: $43
    pop hl                                        ; $7feb: $e1
    dec e                                         ; $7fec: $1d
    ld h, b                                       ; $7fed: $60
    nop                                           ; $7fee: $00
    rst $38                                       ; $7fef: $ff
    ld a, a                                       ; $7ff0: $7f
    ld c, [hl]                                    ; $7ff1: $4e
    ld c, [hl]                                    ; $7ff2: $4e
    jr nz, @+$3f                                  ; $7ff3: $20 $3d

    ld hl, $ff08                                  ; $7ff5: $21 $08 $ff
    ld a, a                                       ; $7ff8: $7f
    sbc c                                         ; $7ff9: $99
    ld c, [hl]                                    ; $7ffa: $4e
    ld l, $0d                                     ; $7ffb: $2e $0d
    ld b, e                                       ; $7ffd: $43
    inc b                                         ; $7ffe: $04
    rst $38                                       ; $7fff: $ff
