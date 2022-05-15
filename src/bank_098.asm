; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $098", ROMX[$4000], BANK[$98]

    sbc b                                         ; $4000: $98
    ldh [$0a], a                                  ; $4001: $e0 $0a
    ld c, a                                       ; $4003: $4f
    rlca                                          ; $4004: $07
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    push bc                                       ; $400f: $c5
    nop                                           ; $4010: $00
    ei                                            ; $4011: $fb
    pop bc                                        ; $4012: $c1
    rst $38                                       ; $4013: $ff
    push bc                                       ; $4014: $c5
    ei                                            ; $4015: $fb
    push bc                                       ; $4016: $c5
    ei                                            ; $4017: $fb
    call $f340                                    ; $4018: $cd $40 $f3
    inc b                                         ; $401b: $04
    db $18, $cb                                   ; $401c: $18 $cb
    pop af                                        ; $401e: $f1
    db $db                                        ; $401f: $db
    pop hl                                        ; $4020: $e1
    db $d3                                        ; $4021: $d3
    pop hl                                        ; $4022: $e1
    add b                                         ; $4023: $80
    inc b                                         ; $4024: $04
    db $28, $d3                                   ; $4025: $28 $d3
    pop hl                                        ; $4027: $e1
    call $c9f3                                    ; $4028: $cd $f3 $c9
    di                                            ; $402b: $f3
    rst $08                                       ; $402c: $cf
    ldh a, [rNR14]                                ; $402d: $f0 $14
    nop                                           ; $402f: $00
    inc b                                         ; $4030: $04
    ld [$081c], sp                                ; $4031: $08 $1c $08
    ld d, b                                       ; $4034: $50
    ld [$fffd], sp                                ; $4035: $08 $fd $ff
    xor $ff                                       ; $4038: $ee $ff
    nop                                           ; $403a: $00
    call nc, $a2ff                                ; $403b: $d4 $ff $a2
    rst $38                                       ; $403e: $ff
    call nz, $08ff                                ; $403f: $c4 $ff $08
    rst $38                                       ; $4042: $ff
    db $f4                                        ; $4043: $f4
    inc h                                         ; $4044: $24
    ld [$5804], sp                                ; $4045: $08 $04 $58
    inc a                                         ; $4048: $3c
    jr c, jr_098_408b                             ; $4049: $38 $40

    ld [$7200], sp                                ; $404b: $08 $00 $72
    nop                                           ; $404e: $00
    inc bc                                        ; $404f: $03
    rst $38                                       ; $4050: $ff
    nop                                           ; $4051: $00
    add [hl]                                      ; $4052: $86
    rst $38                                       ; $4053: $ff
    ld d, c                                       ; $4054: $51
    rst $38                                       ; $4055: $ff
    ld hl, sp-$01                                 ; $4056: $f8 $ff
    ldh a, [rIE]                                  ; $4058: $f0 $ff
    nop                                           ; $405a: $00
    and b                                         ; $405b: $a0
    rst $38                                       ; $405c: $ff
    add $f9                                       ; $405d: $c6 $f9
    adc [hl]                                      ; $405f: $8e
    pop af                                        ; $4060: $f1
    inc d                                         ; $4061: $14
    db $e3                                        ; $4062: $e3
    nop                                           ; $4063: $00
    call Call_000_3183                            ; $4064: $cd $83 $31
    rst $08                                       ; $4067: $cf
    sub e                                         ; $4068: $93
    rst $28                                       ; $4069: $ef
    adc l                                         ; $406a: $8d
    ld [hl], e                                    ; $406b: $73

jr_098_406c:
    ld a, [hl+]                                   ; $406c: $2a
    db $fd                                        ; $406d: $fd
    inc bc                                        ; $406e: $03
    ld d, b                                       ; $406f: $50
    jr jr_098_406c                                ; $4070: $18 $fa

    inc e                                         ; $4072: $1c
    nop                                           ; $4073: $00
    ldh [rSC], a                                  ; $4074: $e0 $02
    nop                                           ; $4076: $00
    call nc, $af80                                ; $4077: $d4 $80 $af
    jr nz, jr_098_40fb                            ; $407a: $20 $7f

    rst $38                                       ; $407c: $ff
    db $eb                                        ; $407d: $eb
    rst $38                                       ; $407e: $ff
    add l                                         ; $407f: $85
    rst $38                                       ; $4080: $ff
    ld [bc], a                                    ; $4081: $02
    ld [hl+], a                                   ; $4082: $22
    rst $38                                       ; $4083: $ff
    ld bc, $30bf                                  ; $4084: $01 $bf $30
    pop hl                                        ; $4087: $e1
    rst $38                                       ; $4088: $ff
    ret nz                                        ; $4089: $c0

    ld [bc], a                                    ; $408a: $02

jr_098_408b:
    nop                                           ; $408b: $00
    and h                                         ; $408c: $a4
    ld [bc], a                                    ; $408d: $02
    rst $38                                       ; $408e: $ff
    jp c, $cfff                                   ; $408f: $da $ff $cf

    rst $38                                       ; $4092: $ff
    rst $00                                       ; $4093: $c7
    ld d, d                                       ; $4094: $52
    nop                                           ; $4095: $00
    ld bc, $ff00                                  ; $4096: $01 $00 $ff

jr_098_4099:
    jr nz, @+$01                                  ; $4099: $20 $ff

    pop af                                        ; $409b: $f1
    cp $7c                                        ; $409c: $fe $7c
    rst $38                                       ; $409e: $ff
    nop                                           ; $409f: $00
    ld [bc], a                                    ; $40a0: $02
    rst $38                                       ; $40a1: $ff
    add b                                         ; $40a2: $80
    rst $38                                       ; $40a3: $ff
    pop af                                        ; $40a4: $f1
    rst $38                                       ; $40a5: $ff
    db $e3                                        ; $40a6: $e3
    ret c                                         ; $40a7: $d8

    nop                                           ; $40a8: $00
    dec de                                        ; $40a9: $1b
    ld a, [bc]                                    ; $40aa: $0a
    rst $20                                       ; $40ab: $e7
    ld [hl], a                                    ; $40ac: $77
    adc a                                         ; $40ad: $8f
    rra                                           ; $40ae: $1f
    inc e                                         ; $40af: $1c
    nop                                           ; $40b0: $00
    pop hl                                        ; $40b1: $e1
    ld l, b                                       ; $40b2: $68
    nop                                           ; $40b3: $00
    cp c                                          ; $40b4: $b9
    nop                                           ; $40b5: $00
    rst $38                                       ; $40b6: $ff
    inc c                                         ; $40b7: $0c
    rst $38                                       ; $40b8: $ff
    and b                                         ; $40b9: $a0
    rst $18                                       ; $40ba: $df
    inc a                                         ; $40bb: $3c
    jp $0088                                      ; $40bc: $c3 $88 $00


    rst $30                                       ; $40bf: $f7
    jr c, @+$01                                   ; $40c0: $38 $ff

    db $10                                        ; $40c2: $10
    rst $38                                       ; $40c3: $ff
    inc bc                                        ; $40c4: $03
    db $fc                                        ; $40c5: $fc
    dec bc                                        ; $40c6: $0b
    nop                                           ; $40c7: $00
    db $f4                                        ; $40c8: $f4
    rra                                           ; $40c9: $1f
    ldh [$cf], a                                  ; $40ca: $e0 $cf
    jr nc, jr_098_4099                            ; $40cc: $30 $cb

    inc [hl]                                      ; $40ce: $34
    db $e4                                        ; $40cf: $e4
    jr nz, jr_098_40ed                            ; $40d0: $20 $1b

    ld a, b                                       ; $40d2: $78
    ld [hl-], a                                   ; $40d3: $32
    nop                                           ; $40d4: $00
    ld b, e                                       ; $40d5: $43
    cp h                                          ; $40d6: $bc
    and c                                         ; $40d7: $a1
    ld e, [hl]                                    ; $40d8: $5e
    ldh a, [rP1]                                  ; $40d9: $f0 $00
    rrca                                          ; $40db: $0f
    call c, $0c03                                 ; $40dc: $dc $03 $0c
    inc bc                                        ; $40df: $03
    ret z                                         ; $40e0: $c8

    rlca                                          ; $40e1: $07
    add c                                         ; $40e2: $81
    nop                                           ; $40e3: $00
    cp $de                                        ; $40e4: $fe $de
    pop hl                                        ; $40e6: $e1
    ld l, h                                       ; $40e7: $6c
    di                                            ; $40e8: $f3
    jr nz, @+$01                                  ; $40e9: $20 $ff

    add b                                         ; $40eb: $80
    nop                                           ; $40ec: $00

jr_098_40ed:
    ld a, a                                       ; $40ed: $7f
    pop hl                                        ; $40ee: $e1
    ld e, $a7                                     ; $40ef: $1e $a7
    jr @-$6b                                      ; $40f1: $18 $93

    inc c                                         ; $40f3: $0c
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00

jr_098_40f6:
    rst $38                                       ; $40f6: $ff
    ld [$1ef7], sp                                ; $40f7: $08 $f7 $1e
    pop hl                                        ; $40fa: $e1

Call_098_40fb:
jr_098_40fb:
    inc c                                         ; $40fb: $0c
    ldh a, [$82]                                  ; $40fc: $f0 $82
    nop                                           ; $40fe: $00
    ld a, h                                       ; $40ff: $7c
    ld [c], a                                     ; $4100: $e2
    inc e                                         ; $4101: $1c
    rst $30                                       ; $4102: $f7
    ld [$804f], sp                                ; $4103: $08 $4f $80
    ld [hl], b                                    ; $4106: $70

Jump_098_4107:
    nop                                           ; $4107: $00
    adc a                                         ; $4108: $8f
    ld [$3cf7], sp                                ; $4109: $08 $f7 $3c
    jp $01fe                                      ; $410c: $c3 $fe $01


    ld c, $00                                     ; $410f: $0e $00
    ld bc, $0718                                  ; $4111: $01 $18 $07
    inc a                                         ; $4114: $3c
    inc bc                                        ; $4115: $03
    ldh a, [rIF]                                  ; $4116: $f0 $0f
    ld hl, $de00                                  ; $4118: $21 $00 $de
    nop                                           ; $411b: $00
    rst $38                                       ; $411c: $ff
    jr z, jr_098_40f6                             ; $411d: $28 $d7

    ld [hl], l                                    ; $411f: $75
    adc d                                         ; $4120: $8a
    dec sp                                        ; $4121: $3b
    inc c                                         ; $4122: $0c
    call nz, $c027                                ; $4123: $c4 $27 $c0
    ld de, $0054                                  ; $4126: $11 $54 $00
    ld h, b                                       ; $4129: $60
    add hl, sp                                    ; $412a: $39
    di                                            ; $412b: $f3
    rst $38                                       ; $412c: $ff
    inc bc                                        ; $412d: $03
    ld h, e                                       ; $412e: $63
    rst $38                                       ; $412f: $ff
    rlca                                          ; $4130: $07
    rst $38                                       ; $4131: $ff
    and l                                         ; $4132: $a5
    jp Jump_098_5802                              ; $4133: $c3 $02 $58


    add b                                         ; $4136: $80
    ld c, c                                       ; $4137: $49
    ld l, d                                       ; $4138: $6a
    ei                                            ; $4139: $fb
    xor d                                         ; $413a: $aa
    nop                                           ; $413b: $00
    sub b                                         ; $413c: $90
    ld c, c                                       ; $413d: $49
    rst $30                                       ; $413e: $f7
    cp b                                          ; $413f: $b8
    nop                                           ; $4140: $00
    add a                                         ; $4141: $87
    and c                                         ; $4142: $a1
    ld bc, $801f                                  ; $4143: $01 $1f $80
    ld a, [c]                                     ; $4146: $f2
    db $10                                        ; $4147: $10
    ld e, $ff                                     ; $4148: $1e $ff
    inc a                                         ; $414a: $3c
    rst $38                                       ; $414b: $ff
    ld hl, $e0fe                                  ; $414c: $21 $fe $e0
    add d                                         ; $414f: $82
    add sp, $00                                   ; $4150: $e8 $00
    ldh [rIE], a                                  ; $4152: $e0 $ff
    db $fc                                        ; $4154: $fc
    rst $38                                       ; $4155: $ff
    sbc h                                         ; $4156: $9c
    jp c, Jump_098_7900                           ; $4157: $da $00 $79

    ld [$3e87], sp                                ; $415a: $08 $87 $3e
    pop bc                                        ; $415d: $c1
    ld bc, $0104                                  ; $415e: $01 $04 $01
    inc bc                                        ; $4161: $03
    rst $38                                       ; $4162: $ff
    dec sp                                        ; $4163: $3b
    adc b                                         ; $4164: $88
    ld [de], a                                    ; $4165: $12
    ld bc, $ffff                                  ; $4166: $01 $ff $ff
    add $10                                       ; $4169: $c6 $10
    ld bc, $f807                                  ; $416b: $01 $07 $f8
    inc bc                                        ; $416e: $03
    nop                                           ; $416f: $00
    db $fc                                        ; $4170: $fc
    nop                                           ; $4171: $00
    rst $38                                       ; $4172: $ff
    jr @-$17                                      ; $4173: $18 $e7

    ld a, $c1                                     ; $4175: $3e $c1
    cp $01                                        ; $4177: $fe $01
    ld bc, $0384                                  ; $4179: $01 $84 $03
    ld [$8c07], sp                                ; $417c: $08 $07 $8c
    di                                            ; $417f: $f3
    jr nc, jr_098_418a                            ; $4180: $30 $08

    nop                                           ; $4182: $00
    di                                            ; $4183: $f3
    db $fc                                        ; $4184: $fc
    add hl, sp                                    ; $4185: $39
    cp $02                                        ; $4186: $fe $02
    db $fd                                        ; $4188: $fd
    db $10                                        ; $4189: $10

jr_098_418a:
    rst $28                                       ; $418a: $ef
    nop                                           ; $418b: $00
    ld a, [hl+]                                   ; $418c: $2a
    push de                                       ; $418d: $d5
    inc e                                         ; $418e: $1c
    db $e3                                        ; $418f: $e3
    dec a                                         ; $4190: $3d
    jp Jump_000_07eb                              ; $4191: $c3 $eb $07


    ld [bc], a                                    ; $4194: $02
    sbc [hl]                                      ; $4195: $9e
    rrca                                          ; $4196: $0f
    jr z, @+$21                                   ; $4197: $28 $1f

    add b                                         ; $4199: $80
    ld a, a                                       ; $419a: $7f
    xor d                                         ; $419b: $aa
    ld [$00b0], sp                                ; $419c: $08 $b0 $00
    rrca                                          ; $419f: $0f
    ldh [$1f], a                                  ; $41a0: $e0 $1f
    nop                                           ; $41a2: $00
    rst $38                                       ; $41a3: $ff
    inc b                                         ; $41a4: $04
    ei                                            ; $41a5: $fb
    adc h                                         ; $41a6: $8c
    nop                                           ; $41a7: $00
    ld [hl], e                                    ; $41a8: $73
    db $fc                                        ; $41a9: $fc
    inc bc                                        ; $41aa: $03
    xor b                                         ; $41ab: $a8
    rlca                                          ; $41ac: $07
    ei                                            ; $41ad: $fb
    nop                                           ; $41ae: $00
    rra                                           ; $41af: $1f
    nop                                           ; $41b0: $00
    ldh [$2f], a                                  ; $41b1: $e0 $2f
    ret nc                                        ; $41b3: $d0

    ld a, a                                       ; $41b4: $7f
    add b                                         ; $41b5: $80
    inc a                                         ; $41b6: $3c
    jp Jump_000_000e                              ; $41b7: $c3 $0e $00


    pop af                                        ; $41ba: $f1
    rlca                                          ; $41bb: $07
    ld hl, sp+$6b                                 ; $41bc: $f8 $6b
    sub h                                         ; $41be: $94
    ld h, l                                       ; $41bf: $65
    sbc d                                         ; $41c0: $9a
    ld e, h                                       ; $41c1: $5c
    nop                                           ; $41c2: $00
    and e                                         ; $41c3: $a3
    ld hl, sp+$07                                 ; $41c4: $f8 $07
    ld c, $01                                     ; $41c6: $0e $01
    rst $08                                       ; $41c8: $cf
    nop                                           ; $41c9: $00
    jr nc, jr_098_41cc                            ; $41ca: $30 $00

jr_098_41cc:
    rst $08                                       ; $41cc: $cf
    nop                                           ; $41cd: $00
    rst $38                                       ; $41ce: $ff
    add c                                         ; $41cf: $81
    ld a, [hl]                                    ; $41d0: $7e
    and e                                         ; $41d1: $a3
    ld e, h                                       ; $41d2: $5c
    sub e                                         ; $41d3: $93
    nop                                           ; $41d4: $00
    rrca                                          ; $41d5: $0f
    add $3f                                       ; $41d6: $c6 $3f
    inc b                                         ; $41d8: $04
    rst $38                                       ; $41d9: $ff
    ld d, d                                       ; $41da: $52
    db $fd                                        ; $41db: $fd
    db $e3                                        ; $41dc: $e3
    nop                                           ; $41dd: $00
    db $fc                                        ; $41de: $fc
    jp Jump_098_75fc                              ; $41df: $c3 $fc $75


    adc b                                         ; $41e2: $88
    inc a                                         ; $41e3: $3c
    pop bc                                        ; $41e4: $c1
    add hl, bc                                    ; $41e5: $09
    nop                                           ; $41e6: $00
    ldh a, [$f2]                                  ; $41e7: $f0 $f2
    ld bc, $a35c                                  ; $41e9: $01 $5c $a3
    cp e                                          ; $41ec: $bb
    ld b, h                                       ; $41ed: $44
    inc e                                         ; $41ee: $1c
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    ld sp, $e200                                  ; $41f1: $31 $00 $e2
    ld bc, $01c6                                  ; $41f4: $01 $c6 $01
    db $d3                                        ; $41f7: $d3
    nop                                           ; $41f8: $00
    pop hl                                        ; $41f9: $e1
    db $ed                                        ; $41fa: $ed
    di                                            ; $41fb: $f3
    add c                                         ; $41fc: $81
    rst $38                                       ; $41fd: $ff
    and e                                         ; $41fe: $a3
    pop bc                                        ; $41ff: $c1
    and e                                         ; $4200: $a3
    nop                                           ; $4201: $00
    pop bc                                        ; $4202: $c1
    or e                                          ; $4203: $b3
    pop bc                                        ; $4204: $c1
    cp a                                          ; $4205: $bf
    pop bc                                        ; $4206: $c1
    cp $ff                                        ; $4207: $fe $ff
    ld a, l                                       ; $4209: $7d
    nop                                           ; $420a: $00
    add e                                         ; $420b: $83
    xor b                                         ; $420c: $a8
    ld d, a                                       ; $420d: $57
    call z, Call_000_1007                         ; $420e: $cc $07 $10
    rrca                                          ; $4211: $0f
    inc sp                                        ; $4212: $33
    nop                                           ; $4213: $00
    inc e                                         ; $4214: $1c
    rst $28                                       ; $4215: $ef
    jr nc, jr_098_4255                            ; $4216: $30 $3d

    ret nz                                        ; $4218: $c0

    rst $38                                       ; $4219: $ff
    add b                                         ; $421a: $80
    inc bc                                        ; $421b: $03
    nop                                           ; $421c: $00
    db $fc                                        ; $421d: $fc
    ld c, $f0                                     ; $421e: $0e $f0
    ccf                                           ; $4220: $3f
    ret nz                                        ; $4221: $c0

    rst $30                                       ; $4222: $f7
    ld [$08bf], sp                                ; $4223: $08 $bf $08
    ld b, b                                       ; $4226: $40
    rst $30                                       ; $4227: $f7
    ld [$bdbe], sp                                ; $4228: $08 $be $bd
    nop                                           ; $422b: $00
    rst $30                                       ; $422c: $f7
    ld [$00bb], sp                                ; $422d: $08 $bb $00
    nop                                           ; $4230: $00
    db $fd                                        ; $4231: $fd
    nop                                           ; $4232: $00
    rst $28                                       ; $4233: $ef
    nop                                           ; $4234: $00
    rst $38                                       ; $4235: $ff
    nop                                           ; $4236: $00
    ei                                            ; $4237: $fb
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    rst $18                                       ; $423a: $df
    jr nz, @+$01                                  ; $423b: $20 $ff

    nop                                           ; $423d: $00
    db $eb                                        ; $423e: $eb
    dec b                                         ; $423f: $05
    rst $10                                       ; $4240: $d7
    nop                                           ; $4241: $00
    add hl, bc                                    ; $4242: $09
    ld a, a                                       ; $4243: $7f
    add c                                         ; $4244: $81
    rst $38                                       ; $4245: $ff
    ld bc, $016f                                  ; $4246: $01 $6f $01
    cp a                                          ; $4249: $bf
    jr nz, jr_098_428d                            ; $424a: $20 $41

    ld a, e                                       ; $424c: $7b
    ld [$2700], sp                                ; $424d: $08 $00 $27
    ret nz                                        ; $4250: $c0

    adc a                                         ; $4251: $8f
    ld [hl], b                                    ; $4252: $70
    ld a, d                                       ; $4253: $7a
    nop                                           ; $4254: $00

jr_098_4255:
    nop                                           ; $4255: $00
    dec e                                         ; $4256: $1d
    nop                                           ; $4257: $00
    ld b, $00                                     ; $4258: $06 $00
    xor e                                         ; $425a: $ab
    nop                                           ; $425b: $00
    rst $18                                       ; $425c: $df
    nop                                           ; $425d: $00
    nop                                           ; $425e: $00
    ld [$ff15], a                                 ; $425f: $ea $15 $ff
    nop                                           ; $4262: $00
    ld b, l                                       ; $4263: $45
    nop                                           ; $4264: $00
    add e                                         ; $4265: $83
    ld [$0e00], sp                                ; $4266: $08 $00 $0e
    ld bc, $0c3f                                  ; $4269: $01 $3f $0c
    nop                                           ; $426c: $00
    ld d, e                                       ; $426d: $53
    xor a                                         ; $426e: $af
    ld d, l                                       ; $426f: $55
    ld b, b                                       ; $4270: $40
    ld a, [$5870]                                 ; $4271: $fa $70 $58
    ld a, [hl]                                    ; $4274: $7e
    rst $38                                       ; $4275: $ff
    cp $00                                        ; $4276: $fe $00

jr_098_4278:
    inc a                                         ; $4278: $3c
    nop                                           ; $4279: $00
    nop                                           ; $427a: $00
    ld e, $00                                     ; $427b: $1e $00
    ld b, a                                       ; $427d: $47
    nop                                           ; $427e: $00
    add a                                         ; $427f: $87
    ld b, b                                       ; $4280: $40
    ld d, l                                       ; $4281: $55
    xor d                                         ; $4282: $aa
    nop                                           ; $4283: $00
    xor d                                         ; $4284: $aa
    rst $38                                       ; $4285: $ff
    rst $38                                       ; $4286: $ff
    nop                                           ; $4287: $00
    ld d, l                                       ; $4288: $55
    xor a                                         ; $4289: $af
    rla                                           ; $428a: $17
    ld hl, sp+$01                                 ; $428b: $f8 $01

jr_098_428d:
    ld a, a                                       ; $428d: $7f
    ldh [$bf], a                                  ; $428e: $e0 $bf
    ret nz                                        ; $4290: $c0

    ld l, a                                       ; $4291: $6f
    sub b                                         ; $4292: $90
    cp $62                                        ; $4293: $fe $62
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    rst $38                                       ; $4297: $ff
    nop                                           ; $4298: $00
    cp a                                          ; $4299: $bf
    ld b, b                                       ; $429a: $40
    db $fd                                        ; $429b: $fd
    ld [bc], a                                    ; $429c: $02
    ld a, a                                       ; $429d: $7f
    add b                                         ; $429e: $80
    add c                                         ; $429f: $81
    ld a, [bc]                                    ; $42a0: $0a
    ld [$08f7], sp                                ; $42a1: $08 $f7 $08
    rst $18                                       ; $42a4: $df
    nop                                           ; $42a5: $00
    cp $01                                        ; $42a6: $fe $01
    ld [$0000], sp                                ; $42a8: $08 $00 $00
    nop                                           ; $42ab: $00
    db $fd                                        ; $42ac: $fd
    ld [bc], a                                    ; $42ad: $02
    rst $18                                       ; $42ae: $df
    nop                                           ; $42af: $00
    ld a, e                                       ; $42b0: $7b
    add h                                         ; $42b1: $84
    db $dd                                        ; $42b2: $dd
    add b                                         ; $42b3: $80
    add h                                         ; $42b4: $84
    nop                                           ; $42b5: $00
    rst $18                                       ; $42b6: $df
    jr nz, jr_098_4278                            ; $42b7: $20 $bf

    ld b, b                                       ; $42b9: $40
    ei                                            ; $42ba: $fb
    inc b                                         ; $42bb: $04

Jump_098_42bc:
    rst $28                                       ; $42bc: $ef
    ld h, $10                                     ; $42bd: $26 $10
    ld a, a                                       ; $42bf: $7f
    inc l                                         ; $42c0: $2c

jr_098_42c1:
    jr nz, jr_098_42c1                            ; $42c1: $20 $fe

    ld bc, $0010                                  ; $42c3: $01 $10 $00
    ld [hl+], a                                   ; $42c6: $22

jr_098_42c7:
    nop                                           ; $42c7: $00
    cp a                                          ; $42c8: $bf
    and d                                         ; $42c9: $a2
    and b                                         ; $42ca: $a0
    nop                                           ; $42cb: $00
    nop                                           ; $42cc: $00
    dec hl                                        ; $42cd: $2b
    inc de                                        ; $42ce: $13
    cp a                                          ; $42cf: $bf
    ld b, b                                       ; $42d0: $40
    rst $10                                       ; $42d1: $d7
    and [hl]                                      ; $42d2: $a6
    nop                                           ; $42d3: $00
    ld a, a                                       ; $42d4: $7f
    inc de                                        ; $42d5: $13
    add b                                         ; $42d6: $80
    db $fd                                        ; $42d7: $fd
    ld [bc], a                                    ; $42d8: $02
    db $10                                        ; $42d9: $10
    jr jr_098_42c7                                ; $42da: $18 $eb

    inc d                                         ; $42dc: $14
    ld [hl], $00                                  ; $42dd: $36 $00
    ld e, d                                       ; $42df: $5a
    db $10                                        ; $42e0: $10

jr_098_42e1:
    and c                                         ; $42e1: $a1
    jr nz, jr_098_42fc                            ; $42e2: $20 $18

    rst $28                                       ; $42e4: $ef
    ld h, d                                       ; $42e5: $62
    nop                                           ; $42e6: $00
    rst $18                                       ; $42e7: $df
    jr nz, jr_098_42e1                            ; $42e8: $20 $f7

    ld [$2830], sp                                ; $42ea: $08 $30 $28
    nop                                           ; $42ed: $00
    db $dd                                        ; $42ee: $dd
    ldh [$de], a                                  ; $42ef: $e0 $de
    ldh [$7f], a                                  ; $42f1: $e0 $7f
    add b                                         ; $42f3: $80
    cp a                                          ; $42f4: $bf
    ld b, b                                       ; $42f5: $40
    inc b                                         ; $42f6: $04
    cp [hl]                                       ; $42f7: $be
    ld b, b                                       ; $42f8: $40
    inc e                                         ; $42f9: $1c
    db $e3                                        ; $42fa: $e3
    nop                                           ; $42fb: $00

jr_098_42fc:
    ld l, d                                       ; $42fc: $6a
    ld [bc], a                                    ; $42fd: $02
    ret nz                                        ; $42fe: $c0

    ccf                                           ; $42ff: $3f
    ld [$7fba], sp                                ; $4300: $08 $ba $7f
    cp [hl]                                       ; $4303: $be
    ld b, c                                       ; $4304: $41
    adc b                                         ; $4305: $88
    ld [$e01f], sp                                ; $4306: $08 $1f $e0
    ld e, $00                                     ; $4309: $1e $00
    pop hl                                        ; $430b: $e1
    sbc a                                         ; $430c: $9f
    ld h, b                                       ; $430d: $60
    cp l                                          ; $430e: $bd
    jp $8101                                      ; $430f: $c3 $01 $81


    adc [hl]                                      ; $4312: $8e
    add d                                         ; $4313: $82
    adc $00                                       ; $4314: $ce $00
    ld a, [hl]                                    ; $4316: $7e
    ld bc, $41be                                  ; $4317: $01 $be $41
    ld a, a                                       ; $431a: $7f
    ret c                                         ; $431b: $d8

    ld [bc], a                                    ; $431c: $02
    cp c                                          ; $431d: $b9
    nop                                           ; $431e: $00
    rst $00                                       ; $431f: $c7
    cp h                                          ; $4320: $bc
    jp $8068                                      ; $4321: $c3 $68 $80


    sbc $80                                       ; $4324: $de $80
    ld [hl], c                                    ; $4326: $71
    nop                                           ; $4327: $00
    add b                                         ; $4328: $80
    rst $38                                       ; $4329: $ff
    add b                                         ; $432a: $80
    cp [hl]                                       ; $432b: $be
    pop bc                                        ; $432c: $c1
    ldh [rIE], a                                  ; $432d: $e0 $ff
    and d                                         ; $432f: $a2
    jr nz, jr_098_4333                            ; $4330: $20 $01

    inc b                                         ; $4332: $04

jr_098_4333:
    add $01                                       ; $4333: $c6 $01
    cp l                                          ; $4335: $bd
    ld [bc], a                                    ; $4336: $02
    ld a, [$d405]                                 ; $4337: $fa $05 $d4
    ld b, b                                       ; $433a: $40
    dec hl                                        ; $433b: $2b
    ret nc                                        ; $433c: $d0

    ld [$c3a5], sp                                ; $433d: $08 $a5 $c3
    db $db                                        ; $4340: $db
    rst $20                                       ; $4341: $e7
    add c                                         ; $4342: $81
    rst $38                                       ; $4343: $ff
    db $10                                        ; $4344: $10
    add c                                         ; $4345: $81
    jp Jump_098_4881                              ; $4346: $c3 $81 $48


    ld [bc], a                                    ; $4349: $02
    cp l                                          ; $434a: $bd
    jp $ff7e                                      ; $434b: $c3 $7e $ff


    nop                                           ; $434e: $00
    di                                            ; $434f: $f3
    inc c                                         ; $4350: $0c
    cp c                                          ; $4351: $b9
    ld b, $1d                                     ; $4352: $06 $1d
    nop                                           ; $4354: $00
    add b                                         ; $4355: $80
    nop                                           ; $4356: $00
    jr nz, @-$3e                                  ; $4357: $20 $c0

    nop                                           ; $4359: $00
    ldh a, [rNR23]                                ; $435a: $f0 $18
    rst $10                                       ; $435c: $d7
    jr z, @+$41                                   ; $435d: $28 $3f

    nop                                           ; $435f: $00
    add c                                         ; $4360: $81
    ld [hl+], a                                   ; $4361: $22
    nop                                           ; $4362: $00
    inc bc                                        ; $4363: $03
    ld d, d                                       ; $4364: $52
    ld bc, $2bd4                                  ; $4365: $01 $d4 $2b
    ld d, l                                       ; $4368: $55
    nop                                           ; $4369: $00
    ld bc, $20fb                                  ; $436a: $01 $fb $20
    inc b                                         ; $436d: $04
    or a                                          ; $436e: $b7
    ld a, [c]                                     ; $436f: $f2
    nop                                           ; $4370: $00
    rst $38                                       ; $4371: $ff
    nop                                           ; $4372: $00
    cp e                                          ; $4373: $bb
    nop                                           ; $4374: $00
    rst $28                                       ; $4375: $ef
    ld [hl], c                                    ; $4376: $71
    db $10                                        ; $4377: $10
    ld c, $08                                     ; $4378: $0e $08
    cp h                                          ; $437a: $bc
    nop                                           ; $437b: $00
    ld [$7711], sp                                ; $437c: $08 $11 $77
    ld [$fafe], sp                                ; $437f: $08 $fe $fa
    ld [$000a], sp                                ; $4382: $08 $0a $00
    or a                                          ; $4385: $b7
    ld [$cefd], sp                                ; $4386: $08 $fd $ce
    nop                                           ; $4389: $00
    rst $28                                       ; $438a: $ef
    ld a, [bc]                                    ; $438b: $0a
    ld de, $10db                                  ; $438c: $11 $db $10
    inc b                                         ; $438f: $04
    ld a, a                                       ; $4390: $7f
    add b                                         ; $4391: $80
    ld a, [hl+]                                   ; $4392: $2a
    ld [$00ff], sp                                ; $4393: $08 $ff $00
    or a                                          ; $4396: $b7
    ld b, b                                       ; $4397: $40
    xor c                                         ; $4398: $a9
    ldh a, [$28]                                  ; $4399: $f0 $28
    ld e, a                                       ; $439b: $5f
    sub h                                         ; $439c: $94
    ld bc, $28f7                                  ; $439d: $01 $f7 $28
    ld bc, $807f                                  ; $43a0: $01 $7f $80
    nop                                           ; $43a3: $00
    add hl, de                                    ; $43a4: $19
    or c                                          ; $43a5: $b1
    ld b, b                                       ; $43a6: $40
    ld [$4aad], sp                                ; $43a7: $08 $ad $4a
    nop                                           ; $43aa: $00
    db $10                                        ; $43ab: $10
    add hl, hl                                    ; $43ac: $29
    inc bc                                        ; $43ad: $03
    ret nz                                        ; $43ae: $c0

    add b                                         ; $43af: $80
    ld l, [hl]                                    ; $43b0: $6e
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
    rra                                           ; $43b3: $1f
    nop                                           ; $43b4: $00
    ld [hl], a                                    ; $43b5: $77
    add b                                         ; $43b6: $80
    ld a, [hl]                                    ; $43b7: $7e
    add c                                         ; $43b8: $81
    dec a                                         ; $43b9: $3d
    jp Jump_098_5700                              ; $43ba: $c3 $00 $57


    rst $38                                       ; $43bd: $ff
    and b                                         ; $43be: $a0
    ld e, a                                       ; $43bf: $5f
    ld hl, sp+$07                                 ; $43c0: $f8 $07
    rra                                           ; $43c2: $1f
    ldh [rP1], a                                  ; $43c3: $e0 $00
    ccf                                           ; $43c5: $3f
    ret nz                                        ; $43c6: $c0

    dec [hl]                                      ; $43c7: $35
    jp z, $ff7f                                   ; $43c8: $ca $7f $ff

    db $d3                                        ; $43cb: $d3
    rst $28                                       ; $43cc: $ef
    ld b, $bd                                     ; $43cd: $06 $bd
    jp $ff7f                                      ; $43cf: $c3 $7f $ff


    ld [hl], h                                    ; $43d2: $74
    inc d                                         ; $43d3: $14
    nop                                           ; $43d4: $00
    ld l, h                                       ; $43d5: $6c
    ld a, [bc]                                    ; $43d6: $0a
    ld b, c                                       ; $43d7: $41
    add b                                         ; $43d8: $80
    add [hl]                                      ; $43d9: $86
    inc bc                                        ; $43da: $03
    inc a                                         ; $43db: $3c
    rst $38                                       ; $43dc: $ff
    inc hl                                        ; $43dd: $23
    rst $18                                       ; $43de: $df
    rst $00                                       ; $43df: $c7
    ld bc, $0002                                  ; $43e0: $01 $02 $00
    add c                                         ; $43e3: $81
    ei                                            ; $43e4: $fb
    nop                                           ; $43e5: $00
    ld e, a                                       ; $43e6: $5f
    add b                                         ; $43e7: $80
    ld [hl], a                                    ; $43e8: $77
    add b                                         ; $43e9: $80
    cp $18                                        ; $43ea: $fe $18
    add c                                         ; $43ec: $81
    cp $81                                        ; $43ed: $fe $81
    ld sp, hl                                     ; $43ef: $f9
    ld bc, $2002                                  ; $43f0: $01 $02 $20
    inc b                                         ; $43f3: $04
    ei                                            ; $43f4: $fb
    ld [$f702], sp                                ; $43f5: $08 $02 $f7
    ld bc, $f7fe                                  ; $43f8: $01 $fe $f7
    nop                                           ; $43fb: $00
    sbc $94                                       ; $43fc: $de $94
    ld bc, $366e                                  ; $43fe: $01 $6e $36
    ld bc, $14f7                                  ; $4401: $01 $f7 $14
    ld [bc], a                                    ; $4404: $02
    db $10                                        ; $4405: $10
    ld a, [bc]                                    ; $4406: $0a
    rst $18                                       ; $4407: $df
    pop hl                                        ; $4408: $e1
    ld a, [bc]                                    ; $4409: $0a
    push hl                                       ; $440a: $e5
    ld [bc], a                                    ; $440b: $02
    ld a, e                                       ; $440c: $7b
    nop                                           ; $440d: $00
    add l                                         ; $440e: $85
    rst $18                                       ; $440f: $df
    ld hl, $01ff                                  ; $4410: $21 $ff $01
    ld e, a                                       ; $4413: $5f
    ld bc, $0000                                  ; $4414: $01 $00 $00
    rst $38                                       ; $4417: $ff
    inc h                                         ; $4418: $24
    db $db                                        ; $4419: $db
    ld [bc], a                                    ; $441a: $02
    db $fd                                        ; $441b: $fd
    nop                                           ; $441c: $00
    rst $38                                       ; $441d: $ff
    ld d, h                                       ; $441e: $54
    ld d, e                                       ; $441f: $53
    xor e                                         ; $4420: $ab
    sub b                                         ; $4421: $90
    add hl, de                                    ; $4422: $19
    ld [hl], a                                    ; $4423: $77

jr_098_4424:
    or d                                          ; $4424: $b2
    nop                                           ; $4425: $00

jr_098_4426:
    db $fd                                        ; $4426: $fd
    nop                                           ; $4427: $00
    and [hl]                                      ; $4428: $a6
    ld [$2180], sp                                ; $4429: $08 $80 $21
    inc bc                                        ; $442c: $03
    ld bc, $817f                                  ; $442d: $01 $7f $81
    ei                                            ; $4430: $fb
    ld bc, $17f7                                  ; $4431: $01 $f7 $17
    inc bc                                        ; $4434: $03
    inc e                                         ; $4435: $1c
    inc e                                         ; $4436: $1c
    nop                                           ; $4437: $00
    sbc d                                         ; $4438: $9a
    ldh [$50], a                                  ; $4439: $e0 $50
    ldh [rSC], a                                  ; $443b: $e0 $02
    db $fd                                        ; $443d: $fd
    rst $38                                       ; $443e: $ff
    nop                                           ; $443f: $00
    nop                                           ; $4440: $00
    ld a, [hl]                                    ; $4441: $7e
    add c                                         ; $4442: $81
    jr nz, jr_098_4424                            ; $4443: $20 $df

    jr nz, jr_098_4426                            ; $4445: $20 $df

    ld e, b                                       ; $4447: $58
    and a                                         ; $4448: $a7
    ld [bc], a                                    ; $4449: $02
    rst $18                                       ; $444a: $df
    ccf                                           ; $444b: $3f
    ld b, c                                       ; $444c: $41
    ccf                                           ; $444d: $3f
    xor e                                         ; $444e: $ab
    ld d, h                                       ; $444f: $54
    ld c, h                                       ; $4450: $4c
    ld bc, $1055                                  ; $4451: $01 $55 $10
    and b                                         ; $4454: $a0
    rst $38                                       ; $4455: $ff
    db $f4                                        ; $4456: $f4
    ld c, b                                       ; $4457: $48
    inc b                                         ; $4458: $04
    cp h                                          ; $4459: $bc
    jp $80c3                                      ; $445a: $c3 $c3 $80


    nop                                           ; $445d: $00
    ld a, l                                       ; $445e: $7d
    add d                                         ; $445f: $82
    ld a, h                                       ; $4460: $7c
    add e                                         ; $4461: $83
    ld a, l                                       ; $4462: $7d
    add d                                         ; $4463: $82
    ret nz                                        ; $4464: $c0

    cp a                                          ; $4465: $bf
    ld b, b                                       ; $4466: $40
    ld hl, sp+$2c                                 ; $4467: $f8 $2c
    inc b                                         ; $4469: $04
    ret nz                                        ; $446a: $c0

    rst $38                                       ; $446b: $ff
    rst $08                                       ; $446c: $cf
    or b                                          ; $446d: $b0
    db $fd                                        ; $446e: $fd
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    ld c, l                                       ; $4471: $4d
    ld [hl-], a                                   ; $4472: $32
    ld a, l                                       ; $4473: $7d
    ld [bc], a                                    ; $4474: $02
    ld [$a077], sp                                ; $4475: $08 $77 $a0
    ld a, a                                       ; $4478: $7f
    inc b                                         ; $4479: $04
    db $e4                                        ; $447a: $e4
    ld a, e                                       ; $447b: $7b
    rst $00                                       ; $447c: $c7
    nop                                           ; $447d: $00
    nop                                           ; $447e: $00
    ld [hl], b                                    ; $447f: $70
    ld [bc], a                                    ; $4480: $02
    db $fd                                        ; $4481: $fd
    ld [bc], a                                    ; $4482: $02
    inc b                                         ; $4483: $04
    cp $01                                        ; $4484: $fe $01
    db $ed                                        ; $4486: $ed
    ld [de], a                                    ; $4487: $12
    ld [$04a4], sp                                ; $4488: $08 $a4 $04
    ld b, c                                       ; $448b: $41
    cp a                                          ; $448c: $bf
    nop                                           ; $448d: $00
    swap l                                        ; $448e: $cb $35
    sbc h                                         ; $4490: $9c
    ld h, e                                       ; $4491: $63
    cp [hl]                                       ; $4492: $be
    ld b, c                                       ; $4493: $41
    inc d                                         ; $4494: $14
    db $eb                                        ; $4495: $eb
    inc d                                         ; $4496: $14
    ld de, $3fff                                  ; $4497: $11 $ff $3f
    ld d, $04                                     ; $449a: $16 $04
    xor a                                         ; $449c: $af
    ld b, c                                       ; $449d: $41
    dec b                                         ; $449e: $05
    dec a                                         ; $449f: $3d
    jp nz, Jump_000_3f00                          ; $44a0: $c2 $00 $3f

    ret nz                                        ; $44a3: $c0

    add d                                         ; $44a4: $82
    db $fd                                        ; $44a5: $fd
    dec d                                         ; $44a6: $15
    ld [$ff80], a                                 ; $44a7: $ea $80 $ff
    nop                                           ; $44aa: $00
    call nc, $e7eb                                ; $44ab: $d4 $eb $e7
    rst $18                                       ; $44ae: $df
    sub a                                         ; $44af: $97
    rst $38                                       ; $44b0: $ff
    ld e, a                                       ; $44b1: $5f
    and b                                         ; $44b2: $a0
    ld b, b                                       ; $44b3: $40
    ld a, h                                       ; $44b4: $7c
    ld c, $01                                     ; $44b5: $0e $01
    ld a, a                                       ; $44b7: $7f
    add b                                         ; $44b8: $80
    ld a, [hl-]                                   ; $44b9: $3a
    push bc                                       ; $44ba: $c5
    xor l                                         ; $44bb: $ad
    jp nc, $ff00                                  ; $44bc: $d2 $00 $ff

    rst $38                                       ; $44bf: $ff
    add sp, -$10                                  ; $44c0: $e8 $f0
    ldh a, [$c0]                                  ; $44c2: $f0 $c0
    ld b, b                                       ; $44c4: $40
    and b                                         ; $44c5: $a0
    nop                                           ; $44c6: $00
    nop                                           ; $44c7: $00
    ldh a, [rVBK]                                 ; $44c8: $f0 $4f
    ldh a, [$9e]                                  ; $44ca: $f0 $9e
    ldh [$3b], a                                  ; $44cc: $e0 $3b
    ldh [rP1], a                                  ; $44ce: $e0 $00
    rst $38                                       ; $44d0: $ff
    rst $38                                       ; $44d1: $ff
    ld [hl], b                                    ; $44d2: $70
    ccf                                           ; $44d3: $3f
    rlca                                          ; $44d4: $07
    nop                                           ; $44d5: $00
    dec [hl]                                      ; $44d6: $35
    ld a, [bc]                                    ; $44d7: $0a
    nop                                           ; $44d8: $00
    db $fd                                        ; $44d9: $fd
    ld [bc], a                                    ; $44da: $02
    push de                                       ; $44db: $d5
    dec hl                                        ; $44dc: $2b
    ei                                            ; $44dd: $fb
    rlca                                          ; $44de: $07
    add c                                         ; $44df: $81
    ld a, a                                       ; $44e0: $7f
    ld [$0116], sp                                ; $44e1: $08 $16 $01
    ld [bc], a                                    ; $44e4: $02
    ld bc, $0a86                                  ; $44e5: $01 $86 $0a
    ld a, [hl]                                    ; $44e8: $7e
    add c                                         ; $44e9: $81
    ld a, $20                                     ; $44ea: $3e $20
    pop bc                                        ; $44ec: $c1
    cp [hl]                                       ; $44ed: $be
    jr nc, @+$05                                  ; $44ee: $30 $03

    or l                                          ; $44f0: $b5
    ret nz                                        ; $44f1: $c0

    ldh [$c0], a                                  ; $44f2: $e0 $c0
    dec sp                                        ; $44f4: $3b
    nop                                           ; $44f5: $00
    ret nz                                        ; $44f6: $c0

    cpl                                           ; $44f7: $2f
    ret nz                                        ; $44f8: $c0

    ld a, [hl-]                                   ; $44f9: $3a
    ret nz                                        ; $44fa: $c0

    ld a, a                                       ; $44fb: $7f
    ret nz                                        ; $44fc: $c0

    ldh a, [$80]                                  ; $44fd: $f0 $80

jr_098_44ff:
    sbc l                                         ; $44ff: $9d
    dec b                                         ; $4500: $05
    ld [hl], b                                    ; $4501: $70

Call_098_4502:
    adc a                                         ; $4502: $8f
    ld a, a                                       ; $4503: $7f
    adc a                                         ; $4504: $8f
    cp h                                          ; $4505: $bc
    ld b, e                                       ; $4506: $43
    cp a                                          ; $4507: $bf
    add b                                         ; $4508: $80
    jr nz, jr_098_450d                            ; $4509: $20 $02

    ld a, l                                       ; $450b: $7d
    add e                                         ; $450c: $83

jr_098_450d:
    ld hl, sp+$07                                 ; $450d: $f8 $07
    db $fc                                        ; $450f: $fc
    inc bc                                        ; $4510: $03
    inc d                                         ; $4511: $14
    jr nz, jr_098_44ff                            ; $4512: $20 $eb

    rst $30                                       ; $4514: $f7
    ld e, h                                       ; $4515: $5c
    db $10                                        ; $4516: $10
    ld a, a                                       ; $4517: $7f
    add b                                         ; $4518: $80
    dec sp                                        ; $4519: $3b
    call nz, $01d7                                ; $451a: $c4 $d7 $01
    xor b                                         ; $451d: $a8
    rst $38                                       ; $451e: $ff
    nop                                           ; $451f: $00
    ld c, a                                       ; $4520: $4f
    ldh a, [$60]                                  ; $4521: $f0 $60
    add b                                         ; $4523: $80
    ld b, b                                       ; $4524: $40
    dec bc                                        ; $4525: $0b
    add b                                         ; $4526: $80
    ld [de], a                                    ; $4527: $12
    ld [$8b74], sp                                ; $4528: $08 $74 $8b
    ld a, h                                       ; $452b: $7c
    add e                                         ; $452c: $83
    nop                                           ; $452d: $00
    ld a, a                                       ; $452e: $7f
    ld [hl+], a                                   ; $452f: $22
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    adc [hl]                                      ; $4532: $8e
    ld [hl], c                                    ; $4533: $71
    sbc l                                         ; $4534: $9d
    ld h, d                                       ; $4535: $62
    sub a                                         ; $4536: $97
    ld l, b                                       ; $4537: $68
    ld a, [de]                                    ; $4538: $1a
    ld [$68e5], sp                                ; $4539: $08 $e5 $68
    rst $38                                       ; $453c: $ff
    ld a, d                                       ; $453d: $7a
    db $10                                        ; $453e: $10
    inc b                                         ; $453f: $04
    sbc h                                         ; $4540: $9c
    ldh [$b0], a                                  ; $4541: $e0 $b0
    jr nz, jr_098_4585                            ; $4543: $20 $40

    ld h, [hl]                                    ; $4545: $66
    jr nc, jr_098_4548                            ; $4546: $30 $00

jr_098_4548:
    ld a, a                                       ; $4548: $7f
    add b                                         ; $4549: $80
    cpl                                           ; $454a: $2f
    ret nz                                        ; $454b: $c0

    cp a                                          ; $454c: $bf
    nop                                           ; $454d: $00
    ret nz                                        ; $454e: $c0

    inc bc                                        ; $454f: $03
    inc bc                                        ; $4550: $03
    inc b                                         ; $4551: $04
    rlca                                          ; $4552: $07
    add hl, bc                                    ; $4553: $09
    ld c, $3b                                     ; $4554: $0e $3b
    nop                                           ; $4556: $00
    inc a                                         ; $4557: $3c
    ld c, c                                       ; $4558: $49
    ld a, [hl]                                    ; $4559: $7e
    and h                                         ; $455a: $a4
    rst $18                                       ; $455b: $df
    di                                            ; $455c: $f3
    adc a                                         ; $455d: $8f
    cp e                                          ; $455e: $bb
    nop                                           ; $455f: $00
    rst $00                                       ; $4560: $c7
    add hl, bc                                    ; $4561: $09
    rst $30                                       ; $4562: $f7
    sub e                                         ; $4563: $93
    rst $28                                       ; $4564: $ef
    xor $91                                       ; $4565: $ee $91
    ld a, [hl]                                    ; $4567: $7e
    nop                                           ; $4568: $00
    add b                                         ; $4569: $80
    db $dd                                        ; $456a: $dd
    and b                                         ; $456b: $a0
    adc a                                         ; $456c: $8f
    ldh a, [$cb]                                  ; $456d: $f0 $cb
    db $f4                                        ; $456f: $f4
    adc a                                         ; $4570: $8f
    nop                                           ; $4571: $00
    ldh a, [$c3]                                  ; $4572: $f0 $c3
    rst $38                                       ; $4574: $ff
    ld sp, hl                                     ; $4575: $f9
    add a                                         ; $4576: $87
    rst $38                                       ; $4577: $ff
    nop                                           ; $4578: $00
    jr nc, jr_098_457b                            ; $4579: $30 $00

jr_098_457b:
    nop                                           ; $457b: $00
    xor $00                                       ; $457c: $ee $00
    xor a                                         ; $457e: $af
    ld d, b                                       ; $457f: $50
    cp a                                          ; $4580: $bf
    ld b, b                                       ; $4581: $40
    cp a                                          ; $4582: $bf
    ld b, $40                                     ; $4583: $06 $40

jr_098_4585:
    pop hl                                        ; $4585: $e1
    ld a, $cb                                     ; $4586: $3e $cb
    inc a                                         ; $4588: $3c
    ld h, d                                       ; $4589: $62
    ld bc, $0100                                  ; $458a: $01 $00 $01
    jp hl                                         ; $458d: $e9


    nop                                           ; $458e: $00
    ld d, $82                                     ; $458f: $16 $82
    ld a, l                                       ; $4591: $7d
    dec a                                         ; $4592: $3d
    ld a, [$abd5]                                 ; $4593: $fa $d5 $ab
    xor c                                         ; $4596: $a9
    nop                                           ; $4597: $00
    rst $10                                       ; $4598: $d7
    ld e, l                                       ; $4599: $5d
    ld h, e                                       ; $459a: $63
    ld c, a                                       ; $459b: $4f
    ld [hl], c                                    ; $459c: $71
    dec l                                         ; $459d: $2d
    inc sp                                        ; $459e: $33
    daa                                           ; $459f: $27
    nop                                           ; $45a0: $00
    add hl, sp                                    ; $45a1: $39
    ld l, l                                       ; $45a2: $6d
    ld [hl], e                                    ; $45a3: $73
    ld d, a                                       ; $45a4: $57
    ld a, c                                       ; $45a5: $79
    cp $ff                                        ; $45a6: $fe $ff
    add a                                         ; $45a8: $87
    nop                                           ; $45a9: $00
    ld a, b                                       ; $45aa: $78
    cp $01                                        ; $45ab: $fe $01
    db $d3                                        ; $45ad: $d3
    inc l                                         ; $45ae: $2c
    ld e, [hl]                                    ; $45af: $5e
    and c                                         ; $45b0: $a1
    adc e                                         ; $45b1: $8b
    nop                                           ; $45b2: $00
    db $f4                                        ; $45b3: $f4
    db $fd                                        ; $45b4: $fd
    ld [c], a                                     ; $45b5: $e2
    xor e                                         ; $45b6: $ab
    call nc, $1818                                ; $45b7: $d4 $18 $18
    inc a                                         ; $45ba: $3c
    nop                                           ; $45bb: $00
    inc h                                         ; $45bc: $24
    inc l                                         ; $45bd: $2c
    inc [hl]                                      ; $45be: $34
    inc h                                         ; $45bf: $24
    inc a                                         ; $45c0: $3c
    inc [hl]                                      ; $45c1: $34
    inc a                                         ; $45c2: $3c
    inc h                                         ; $45c3: $24
    jr nz, jr_098_4602                            ; $45c4: $20 $3c

    inc l                                         ; $45c6: $2c
    inc b                                         ; $45c7: $04
    nop                                           ; $45c8: $00
    add b                                         ; $45c9: $80
    ldh [rNR41], a                                ; $45ca: $e0 $20
    ret nz                                        ; $45cc: $c0

    cp d                                          ; $45cd: $ba
    add b                                         ; $45ce: $80
    ld c, [hl]                                    ; $45cf: $4e
    ld [bc], a                                    ; $45d0: $02
    cp a                                          ; $45d1: $bf
    ld b, b                                       ; $45d2: $40
    ld e, a                                       ; $45d3: $5f
    and b                                         ; $45d4: $a0
    xor a                                         ; $45d5: $af
    ld d, b                                       ; $45d6: $50
    rst $38                                       ; $45d7: $ff
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00
    push de                                       ; $45da: $d5
    dec hl                                        ; $45db: $2b
    nop                                           ; $45dc: $00
    ccf                                           ; $45dd: $3f
    add h                                         ; $45de: $84
    ld a, e                                       ; $45df: $7b
    cp $00                                        ; $45e0: $fe $00
    ld bc, $15ea                                  ; $45e2: $01 $ea $15
    add c                                         ; $45e5: $81
    ld a, a                                       ; $45e6: $7f
    inc bc                                        ; $45e7: $03
    rst $38                                       ; $45e8: $ff
    add c                                         ; $45e9: $81
    ld h, b                                       ; $45ea: $60
    ld a, a                                       ; $45eb: $7f
    ld e, a                                       ; $45ec: $5f
    ld bc, $1003                                  ; $45ed: $01 $03 $10
    inc bc                                        ; $45f0: $03
    inc bc                                        ; $45f1: $03
    inc c                                         ; $45f2: $0c
    rrca                                          ; $45f3: $0f
    ld [hl-], a                                   ; $45f4: $32
    nop                                           ; $45f5: $00
    dec a                                         ; $45f6: $3d
    reti                                          ; $45f7: $d9


    rst $20                                       ; $45f8: $e7
    ld d, d                                       ; $45f9: $52
    ld a, [hl]                                    ; $45fa: $7e
    ld h, [hl]                                    ; $45fb: $66
    ld e, d                                       ; $45fc: $5a
    ld l, [hl]                                    ; $45fd: $6e
    nop                                           ; $45fe: $00
    ld e, d                                       ; $45ff: $5a
    ld b, d                                       ; $4600: $42
    ld a, [hl]                                    ; $4601: $7e

jr_098_4602:
    rst $30                                       ; $4602: $f7
    db $db                                        ; $4603: $db
    jp $5a7e                                      ; $4604: $c3 $7e $5a


    nop                                           ; $4607: $00
    rst $38                                       ; $4608: $ff
    rst $20                                       ; $4609: $e7
    rst $38                                       ; $460a: $ff
    rla                                           ; $460b: $17
    add sp, $7c                                   ; $460c: $e8 $7c
    add b                                         ; $460e: $80
    sub [hl]                                      ; $460f: $96
    nop                                           ; $4610: $00
    ld bc, $21de                                  ; $4611: $01 $de $21
    ld hl, sp+$07                                 ; $4614: $f8 $07
    ld a, l                                       ; $4616: $7d
    add e                                         ; $4617: $83
    xor e                                         ; $4618: $ab
    nop                                           ; $4619: $00
    ld d, l                                       ; $461a: $55
    db $dd                                        ; $461b: $dd

jr_098_461c:
    ld [hl+], a                                   ; $461c: $22
    ld h, d                                       ; $461d: $62
    sbc a                                         ; $461e: $9f
    or l                                          ; $461f: $b5
    adc $71                                       ; $4620: $ce $71
    nop                                           ; $4622: $00
    cp $06                                        ; $4623: $fe $06
    ld sp, hl                                     ; $4625: $f9
    db $fd                                        ; $4626: $fd
    inc bc                                        ; $4627: $03
    xor d                                         ; $4628: $aa
    ld d, a                                       ; $4629: $57
    dec b                                         ; $462a: $05
    ld [bc], a                                    ; $462b: $02
    rst $38                                       ; $462c: $ff
    xor e                                         ; $462d: $ab
    rst $38                                       ; $462e: $ff
    ld l, [hl]                                    ; $462f: $6e
    rst $30                                       ; $4630: $f7
    inc a                                         ; $4631: $3c
    inc b                                         ; $4632: $04
    nop                                           ; $4633: $00
    rst $38                                       ; $4634: $ff
    inc bc                                        ; $4635: $03
    rst $38                                       ; $4636: $ff
    ld e, d                                       ; $4637: $5a
    rst $20                                       ; $4638: $e7
    rst $38                                       ; $4639: $ff
    rst $38                                       ; $463a: $ff
    db $db                                        ; $463b: $db
    inc b                                         ; $463c: $04
    nop                                           ; $463d: $00
    di                                            ; $463e: $f3
    inc bc                                        ; $463f: $03
    ld a, h                                       ; $4640: $7c
    rst $38                                       ; $4641: $ff
    xor l                                         ; $4642: $ad
    dec b                                         ; $4643: $05
    ld a, $03                                     ; $4644: $3e $03
    inc b                                         ; $4646: $04
    jr nz, jr_098_4659                            ; $4647: $20 $10

    ld [$0306], sp                                ; $4649: $08 $06 $03
    rst $30                                       ; $464c: $f7
    ld [$ef3a], sp                                ; $464d: $08 $3a $ef
    db $10                                        ; $4650: $10
    sbc $0b                                       ; $4651: $de $0b
    dec e                                         ; $4653: $1d
    nop                                           ; $4654: $00
    and $09                                       ; $4655: $e6 $09
    cp a                                          ; $4657: $bf
    inc b                                         ; $4658: $04

jr_098_4659:
    jr jr_098_461c                                ; $4659: $18 $c1

    ld c, [hl]                                    ; $465b: $4e
    cp a                                          ; $465c: $bf
    jr nc, @+$0a                                  ; $465d: $30 $08

    xor d                                         ; $465f: $aa
    ld d, l                                       ; $4660: $55
    add [hl]                                      ; $4661: $86
    ld a, [de]                                    ; $4662: $1a
    jr nc, jr_098_4669                            ; $4663: $30 $04

    inc a                                         ; $4665: $3c
    ld b, $e3                                     ; $4666: $06 $e3
    ld d, d                                       ; $4668: $52

jr_098_4669:
    rst $18                                       ; $4669: $df
    inc b                                         ; $466a: $04
    ld c, b                                       ; $466b: $48
    add e                                         ; $466c: $83
    ld a, [c]                                     ; $466d: $f2
    ld bc, $7f83                                  ; $466e: $01 $83 $7f
    ld h, h                                       ; $4671: $64
    dec c                                         ; $4672: $0d
    ld bc, $6e80                                  ; $4673: $01 $80 $6e
    nop                                           ; $4676: $00
    rst $38                                       ; $4677: $ff
    rst $38                                       ; $4678: $ff
    cp c                                          ; $4679: $b9
    ld b, a                                       ; $467a: $47

jr_098_467b:
    call $6e83                                    ; $467b: $cd $83 $6e
    nop                                           ; $467e: $00
    sub c                                         ; $467f: $91
    ld e, d                                       ; $4680: $5a
    and l                                         ; $4681: $a5
    ld a, h                                       ; $4682: $7c
    add e                                         ; $4683: $83
    jr z, @+$01                                   ; $4684: $28 $ff

    cp $80                                        ; $4686: $fe $80
    adc b                                         ; $4688: $88
    dec b                                         ; $4689: $05
    ld hl, sp-$10                                 ; $468a: $f8 $f0
    ldh [$f0], a                                  ; $468c: $e0 $f0
    rst $38                                       ; $468e: $ff
    nop                                           ; $468f: $00
    rrca                                          ; $4690: $0f
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    ld c, a                                       ; $4693: $4f
    add b                                         ; $4694: $80
    ld a, h                                       ; $4695: $7c
    add e                                         ; $4696: $83
    ld a, e                                       ; $4697: $7b
    add a                                         ; $4698: $87
    ld a, a                                       ; $4699: $7f
    nop                                           ; $469a: $00
    add e                                         ; $469b: $83
    rst $18                                       ; $469c: $df
    jr nz, jr_098_46f7                            ; $469d: $20 $58

    jr nz, jr_098_467b                            ; $469f: $20 $da

    dec h                                         ; $46a1: $25
    adc l                                         ; $46a2: $8d
    ld [hl], b                                    ; $46a3: $70
    ld [hl], d                                    ; $46a4: $72
    ld d, h                                       ; $46a5: $54
    ld [$0060], sp                                ; $46a6: $08 $60 $00
    db $10                                        ; $46a9: $10
    ld d, e                                       ; $46aa: $53
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    cp l                                          ; $46ad: $bd
    rst $38                                       ; $46ae: $ff
    inc b                                         ; $46af: $04
    add $01                                       ; $46b0: $c6 $01
    add c                                         ; $46b2: $81
    nop                                           ; $46b3: $00
    ld [$22f5], a                                 ; $46b4: $ea $f5 $22
    ccf                                           ; $46b7: $3f
    ret nz                                        ; $46b8: $c0

    ret nz                                        ; $46b9: $c0

    push hl                                       ; $46ba: $e5
    inc bc                                        ; $46bb: $03
    jr nz, jr_098_46cf                            ; $46bc: $20 $11

    cp a                                          ; $46be: $bf
    ld b, b                                       ; $46bf: $40
    sbc a                                         ; $46c0: $9f
    ld h, b                                       ; $46c1: $60
    rra                                           ; $46c2: $1f
    ldh [$0c], a                                  ; $46c3: $e0 $0c
    add a                                         ; $46c5: $87
    ld a, b                                       ; $46c6: $78
    ccf                                           ; $46c7: $3f
    rst $38                                       ; $46c8: $ff
    jr nz, jr_098_472c                            ; $46c9: $20 $61

    sbc a                                         ; $46cb: $9f
    rlca                                          ; $46cc: $07
    ccf                                           ; $46cd: $3f
    rst $38                                       ; $46ce: $ff

jr_098_46cf:
    ld bc, $1fe3                                  ; $46cf: $01 $e3 $1f
    ld sp, hl                                     ; $46d2: $f9
    rlca                                          ; $46d3: $07
    and l                                         ; $46d4: $a5
    ld e, e                                       ; $46d5: $5b
    add c                                         ; $46d6: $81
    add [hl]                                      ; $46d7: $86
    nop                                           ; $46d8: $00
    inc b                                         ; $46d9: $04
    sbc a                                         ; $46da: $9f
    ld a, a                                       ; $46db: $7f
    cp b                                          ; $46dc: $b8
    rst $00                                       ; $46dd: $c7
    ld b, c                                       ; $46de: $41
    db $fc                                        ; $46df: $fc
    ld bc, $807e                                  ; $46e0: $01 $7e $80
    ld bc, $c03f                                  ; $46e3: $01 $3f $c0
    ld a, a                                       ; $46e6: $7f
    add b                                         ; $46e7: $80
    sbc [hl]                                      ; $46e8: $9e
    pop hl                                        ; $46e9: $e1
    ret nz                                        ; $46ea: $c0

    jr nz, jr_098_46fe                            ; $46eb: $20 $11

    nop                                           ; $46ed: $00
    ld d, $81                                     ; $46ee: $16 $81
    ld e, [hl]                                    ; $46f0: $5e
    and c                                         ; $46f1: $a1
    ld a, b                                       ; $46f2: $78
    add a                                         ; $46f3: $87
    ld a, l                                       ; $46f4: $7d
    add e                                         ; $46f5: $83
    ld b, b                                       ; $46f6: $40

jr_098_46f7:
    ld b, e                                       ; $46f7: $43
    jr jr_098_4700                                ; $46f8: $18 $06

    rst $00                                       ; $46fa: $c7
    ccf                                           ; $46fb: $3f
    ld l, b                                       ; $46fc: $68
    rla                                           ; $46fd: $17

jr_098_46fe:
    db $eb                                        ; $46fe: $eb
    inc d                                         ; $46ff: $14

jr_098_4700:
    nop                                           ; $4700: $00
    adc a                                         ; $4701: $8f
    ld [hl], b                                    ; $4702: $70
    add l                                         ; $4703: $85
    ld a, d                                       ; $4704: $7a
    ld [bc], a                                    ; $4705: $02
    db $fd                                        ; $4706: $fd
    ld [$01f7], sp                                ; $4707: $08 $f7 $01
    dec de                                        ; $470a: $1b
    db $e4                                        ; $470b: $e4
    cpl                                           ; $470c: $2f
    rst $38                                       ; $470d: $ff
    push af                                       ; $470e: $f5
    ld a, [bc]                                    ; $470f: $0a
    push af                                       ; $4710: $f5
    ld h, l                                       ; $4711: $65
    inc hl                                        ; $4712: $23
    nop                                           ; $4713: $00
    rla                                           ; $4714: $17
    add sp, $51                                   ; $4715: $e8 $51
    rst $38                                       ; $4717: $ff
    ld h, e                                       ; $4718: $63
    add b                                         ; $4719: $80
    ld b, c                                       ; $471a: $41
    add b                                         ; $471b: $80
    nop                                           ; $471c: $00
    ld [de], a                                    ; $471d: $12
    ret nz                                        ; $471e: $c0

    cp a                                          ; $471f: $bf
    ld b, b                                       ; $4720: $40
    ccf                                           ; $4721: $3f
    ret nz                                        ; $4722: $c0

    ccf                                           ; $4723: $3f
    ret nz                                        ; $4724: $c0

    nop                                           ; $4725: $00
    xor a                                         ; $4726: $af
    ret nc                                        ; $4727: $d0

    rlca                                          ; $4728: $07
    ld hl, sp+$75                                 ; $4729: $f8 $75
    ld e, e                                       ; $472b: $5b

jr_098_472c:
    ld h, l                                       ; $472c: $65
    ld e, e                                       ; $472d: $5b
    nop                                           ; $472e: $00
    ld e, b                                       ; $472f: $58
    ld l, a                                       ; $4730: $6f
    dec a                                         ; $4731: $3d
    dec hl                                        ; $4732: $2b
    inc h                                         ; $4733: $24
    ccf                                           ; $4734: $3f
    jr jr_098_474e                                ; $4735: $18 $17

    nop                                           ; $4737: $00
    dec d                                         ; $4738: $15
    dec de                                        ; $4739: $1b
    add hl, hl                                    ; $473a: $29
    ccf                                           ; $473b: $3f
    cp l                                          ; $473c: $bd
    jp nz, $8106                                  ; $473d: $c2 $06 $81

    db $10                                        ; $4740: $10
    adc a                                         ; $4741: $8f
    nop                                           ; $4742: $00
    ccf                                           ; $4743: $3f
    ld h, $04                                     ; $4744: $26 $04
    cp a                                          ; $4746: $bf
    ld b, b                                       ; $4747: $40
    ld [hl], l                                    ; $4748: $75
    cp $00                                        ; $4749: $fe $00
    ld a, d                                       ; $474b: $7a
    db $fd                                        ; $474c: $fd
    ld c, c                                       ; $474d: $49

jr_098_474e:
    ld a, a                                       ; $474e: $7f
    ld d, l                                       ; $474f: $55
    ld l, a                                       ; $4750: $6f
    ld l, b                                       ; $4751: $68
    ld d, a                                       ; $4752: $57
    nop                                           ; $4753: $00
    ld d, l                                       ; $4754: $55
    ld l, e                                       ; $4755: $6b
    inc l                                         ; $4756: $2c
    inc sp                                        ; $4757: $33
    rla                                           ; $4758: $17
    add hl, de                                    ; $4759: $19
    jr z, jr_098_479b                             ; $475a: $28 $3f

    nop                                           ; $475c: $00
    inc hl                                        ; $475d: $23
    dec a                                         ; $475e: $3d
    db $fd                                        ; $475f: $fd
    cp $ef                                        ; $4760: $fe $ef
    ldh a, [$fb]                                  ; $4762: $f0 $fb
    ret nz                                        ; $4764: $c0

    inc d                                         ; $4765: $14
    ld b, l                                       ; $4766: $45
    and b                                         ; $4767: $a0
    ld [bc], a                                    ; $4768: $02
    ret nc                                        ; $4769: $d0

    ld [hl+], a                                   ; $476a: $22
    add hl, de                                    ; $476b: $19
    ld [hl], $00                                  ; $476c: $36 $00
    dec bc                                        ; $476e: $0b
    dec c                                         ; $476f: $0d
    nop                                           ; $4770: $00
    inc c                                         ; $4771: $0c
    dec bc                                        ; $4772: $0b
    dec bc                                        ; $4773: $0b
    dec c                                         ; $4774: $0d
    inc d                                         ; $4775: $14
    dec de                                        ; $4776: $1b
    dec l                                         ; $4777: $2d
    inc sp                                        ; $4778: $33
    nop                                           ; $4779: $00
    dec l                                         ; $477a: $2d
    inc sp                                        ; $477b: $33
    ld [hl], l                                    ; $477c: $75
    adc d                                         ; $477d: $8a
    ld [hl], a                                    ; $477e: $77
    adc h                                         ; $477f: $8c
    cp l                                          ; $4780: $bd
    ld b, d                                       ; $4781: $42
    and h                                         ; $4782: $a4
    or b                                          ; $4783: $b0
    ld a, [de]                                    ; $4784: $1a
    ld sp, hl                                     ; $4785: $f9
    or b                                          ; $4786: $b0
    ld [bc], a                                    ; $4787: $02
    inc l                                         ; $4788: $2c
    inc sp                                        ; $4789: $33
    ld [bc], a                                    ; $478a: $02
    ld [$6759], sp                                ; $478b: $08 $59 $67
    nop                                           ; $478e: $00
    cp e                                          ; $478f: $bb
    rst $00                                       ; $4790: $c7
    or [hl]                                       ; $4791: $b6
    adc $8e                                       ; $4792: $ce $8e
    cp $fc                                        ; $4794: $fe $fc
    db $fc                                        ; $4796: $fc
    ld b, b                                       ; $4797: $40
    rst $38                                       ; $4798: $ff
    jr z, jr_098_479f                             ; $4799: $28 $04

jr_098_479b:
    db $fc                                        ; $479b: $fc
    add e                                         ; $479c: $83
    ld a, b                                       ; $479d: $78
    add a                                         ; $479e: $87

jr_098_479f:
    pop af                                        ; $479f: $f1
    adc [hl]                                      ; $47a0: $8e

jr_098_47a1:
    rlca                                          ; $47a1: $07
    ld h, e                                       ; $47a2: $63
    sbc h                                         ; $47a3: $9c
    add a                                         ; $47a4: $87
    ld hl, sp+$0f                                 ; $47a5: $f8 $0f
    inc c                                         ; $47a7: $0c
    ld b, $74                                     ; $47a8: $06 $74
    inc c                                         ; $47aa: $0c
    ld [bc], a                                    ; $47ab: $02
    ld b, b                                       ; $47ac: $40
    sbc $0e                                       ; $47ad: $de $0e
    dec bc                                        ; $47af: $0b
    inc b                                         ; $47b0: $04
    ld b, b                                       ; $47b1: $40
    sbc a                                         ; $47b2: $9f
    ld c, h                                       ; $47b3: $4c
    inc b                                         ; $47b4: $04
    ret nc                                        ; $47b5: $d0

    ld d, c                                       ; $47b6: $51
    inc l                                         ; $47b7: $2c
    ld c, b                                       ; $47b8: $48
    jr nc, jr_098_47cb                            ; $47b9: $30 $10

    db $fc                                        ; $47bb: $fc
    nop                                           ; $47bc: $00
    inc bc                                        ; $47bd: $03
    ld sp, hl                                     ; $47be: $f9
    rlca                                          ; $47bf: $07
    ldh a, [rIF]                                  ; $47c0: $f0 $0f
    db $e3                                        ; $47c2: $e3
    dec e                                         ; $47c3: $1d
    call nz, Call_000_3b07                        ; $47c4: $c4 $07 $3b
    adc e                                         ; $47c7: $8b
    ld [hl], l                                    ; $47c8: $75
    sub [hl]                                      ; $47c9: $96
    ld l, c                                       ; $47ca: $69

jr_098_47cb:
    db $fc                                        ; $47cb: $fc
    ld d, c                                       ; $47cc: $51
    or h                                          ; $47cd: $b4
    inc c                                         ; $47ce: $0c
    db $e4                                        ; $47cf: $e4
    dec b                                         ; $47d0: $05
    db $10                                        ; $47d1: $10
    cp $01                                        ; $47d2: $fe $01
    db $fd                                        ; $47d4: $fd
    ld b, b                                       ; $47d5: $40
    dec b                                         ; $47d6: $05
    push af                                       ; $47d7: $f5
    ld a, [bc]                                    ; $47d8: $0a
    db $eb                                        ; $47d9: $eb
    inc d                                         ; $47da: $14
    nop                                           ; $47db: $00
    nop                                           ; $47dc: $00
    rst $38                                       ; $47dd: $ff
    cpl                                           ; $47de: $2f
    pop de                                        ; $47df: $d1
    ld e, [hl]                                    ; $47e0: $5e
    and c                                         ; $47e1: $a1

jr_098_47e2:
    cp a                                          ; $47e2: $bf
    ld b, c                                       ; $47e3: $41
    ld [hl], e                                    ; $47e4: $73
    ld a, [hl]                                    ; $47e5: $7e
    ld h, d                                       ; $47e6: $62
    ld b, $68                                     ; $47e7: $06 $68
    ld [$0dd4], sp                                ; $47e9: $08 $d4 $0d
    xor a                                         ; $47ec: $af
    ld d, b                                       ; $47ed: $50
    jp c, $880d                                   ; $47ee: $da $0d $88

    ld a, [hl+]                                   ; $47f1: $2a
    ret nz                                        ; $47f2: $c0

    dec bc                                        ; $47f3: $0b
    db $10                                        ; $47f4: $10
    db $10                                        ; $47f5: $10
    ld b, b                                       ; $47f6: $40
    res 0, a                                      ; $47f7: $cb $87
    or a                                          ; $47f9: $b7
    rst $08                                       ; $47fa: $cf
    add c                                         ; $47fb: $81
    rst $38                                       ; $47fc: $ff
    inc bc                                        ; $47fd: $03
    push bc                                       ; $47fe: $c5
    add e                                         ; $47ff: $83
    push bc                                       ; $4800: $c5
    add e                                         ; $4801: $83
    call Call_098_7083                            ; $4802: $cd $83 $70
    dec c                                         ; $4805: $0d
    or b                                          ; $4806: $b0
    ld h, e                                       ; $4807: $63
    ld h, [hl]                                    ; $4808: $66
    ld a, a                                       ; $4809: $7f
    and b                                         ; $480a: $a0
    ld c, e                                       ; $480b: $4b
    ldh a, [$08]                                  ; $480c: $f0 $08
    rst $08                                       ; $480e: $cf
    jr nc, jr_098_47a1                            ; $480f: $30 $90

    dec de                                        ; $4811: $1b
    ld [hl+], a                                   ; $4812: $22
    dec c                                         ; $4813: $0d
    db $f4                                        ; $4814: $f4
    ld a, [bc]                                    ; $4815: $0a
    dec bc                                        ; $4816: $0b
    db $fc                                        ; $4817: $fc
    inc bc                                        ; $4818: $03
    ld [$0440], a                                 ; $4819: $ea $40 $04
    ld a, a                                       ; $481c: $7f
    jp c, Jump_098_5f06                           ; $481d: $da $06 $5f

    ld b, b                                       ; $4820: $40
    jr nz, jr_098_484f                            ; $4821: $20 $2c

    inc b                                         ; $4823: $04
    ld a, a                                       ; $4824: $7f
    rra                                           ; $4825: $1f
    rst $38                                       ; $4826: $ff
    ret                                           ; $4827: $c9


    scf                                           ; $4828: $37
    or e                                          ; $4829: $b3
    nop                                           ; $482a: $00
    ld c, a                                       ; $482b: $4f
    xor $11                                       ; $482c: $ee $11
    cp $00                                        ; $482e: $fe $00
    db $dd                                        ; $4830: $dd
    jr nz, jr_098_47e2                            ; $4831: $20 $af

    nop                                           ; $4833: $00
    ld d, b                                       ; $4834: $50
    swap h                                        ; $4835: $cb $34
    xor a                                         ; $4837: $af
    ld d, b                                       ; $4838: $50
    ldh [$3f], a                                  ; $4839: $e0 $3f
    rst $08                                       ; $483b: $cf

Call_098_483c:
    ld b, b                                       ; $483c: $40
    ccf                                           ; $483d: $3f
    ld h, b                                       ; $483e: $60
    dec de                                        ; $483f: $1b
    add sp, $17                                   ; $4840: $e8 $17
    add b                                         ; $4842: $80
    ld a, a                                       ; $4843: $7f
    ccf                                           ; $4844: $3f
    rst $38                                       ; $4845: $ff
    nop                                           ; $4846: $00
    rst $38                                       ; $4847: $ff
    ld hl, sp-$0a                                 ; $4848: $f8 $f6
    ld hl, sp-$26                                 ; $484a: $f8 $da
    dec b                                         ; $484c: $05
    db $fd                                        ; $484d: $fd
    ld [bc], a                                    ; $484e: $02

jr_098_484f:
    add d                                         ; $484f: $82
    sub h                                         ; $4850: $94
    ld a, [bc]                                    ; $4851: $0a
    xor e                                         ; $4852: $ab
    rst $10                                       ; $4853: $d7
    jp nz, Jump_000_34fd                          ; $4854: $c2 $fd $34

    ld a, [$2007]                                 ; $4857: $fa $07 $20
    ld [$c4ff], sp                                ; $485a: $08 $ff $c4
    ld a, e                                       ; $485d: $7b
    nop                                           ; $485e: $00
    or $07                                        ; $485f: $f6 $07
    ldh [rIE], a                                  ; $4861: $e0 $ff
    ld [$ff00], a                                 ; $4863: $ea $00 $ff
    cp a                                          ; $4866: $bf
    ld a, a                                       ; $4867: $7f
    jp nz, $a03f                                  ; $4868: $c2 $3f $a0

    ld b, b                                       ; $486b: $40
    ld b, b                                       ; $486c: $40
    nop                                           ; $486d: $00
    add b                                         ; $486e: $80
    ld b, b                                       ; $486f: $40
    add b                                         ; $4870: $80
    or b                                          ; $4871: $b0
    ret nz                                        ; $4872: $c0

    cp l                                          ; $4873: $bd
    ret nz                                        ; $4874: $c0

    sub e                                         ; $4875: $93
    ld b, b                                       ; $4876: $40
    ldh [$f0], a                                  ; $4877: $e0 $f0
    add hl, de                                    ; $4879: $19
    xor a                                         ; $487a: $af
    ld d, b                                       ; $487b: $50
    push de                                       ; $487c: $d5
    ld a, [hl+]                                   ; $487d: $2a
    and d                                         ; $487e: $a2
    ld e, l                                       ; $487f: $5d
    dec b                                         ; $4880: $05

Jump_098_4881:
    ld e, b                                       ; $4881: $58
    and a                                         ; $4882: $a7
    ei                                            ; $4883: $fb
    inc b                                         ; $4884: $04
    ld h, e                                       ; $4885: $63
    ld a, [de]                                    ; $4886: $1a
    nop                                           ; $4887: $00
    db $10                                        ; $4888: $10
    ldh [rNR42], a                                ; $4889: $e0 $21
    ld hl, $d7a8                                  ; $488b: $21 $a8 $d7
    rst $18                                       ; $488e: $df
    ld b, $ff                                     ; $488f: $06 $ff
    jr nz, jr_098_4912                            ; $4891: $20 $7f

    jr nz, jr_098_48d7                            ; $4893: $20 $42

    nop                                           ; $4895: $00
    db $10                                        ; $4896: $10
    jr nc, @+$01                                  ; $4897: $30 $ff

    ld l, b                                       ; $4899: $68
    ldh a, [rDIV]                                 ; $489a: $f0 $04
    ldh [rIE], a                                  ; $489c: $e0 $ff
    db $dd                                        ; $489e: $dd
    jr nz, jr_098_48e1                            ; $489f: $20 $40

    cp [hl]                                       ; $48a1: $be
    call c, $ff05                                 ; $48a2: $dc $05 $ff
    nop                                           ; $48a5: $00
    cp [hl]                                       ; $48a6: $be
    ld b, b                                       ; $48a7: $40
    call c, Call_000_0023                         ; $48a8: $dc $23 $00
    add b                                         ; $48ab: $80
    ld a, a                                       ; $48ac: $7f
    ld b, e                                       ; $48ad: $43
    cp h                                          ; $48ae: $bc
    xor a                                         ; $48af: $af
    ld a, a                                       ; $48b0: $7f
    rst $38                                       ; $48b1: $ff
    ccf                                           ; $48b2: $3f
    add b                                         ; $48b3: $80
    jr nz, jr_098_48c4                            ; $48b4: $20 $0e

    ld [c], a                                     ; $48b6: $e2
    dec e                                         ; $48b7: $1d
    ld [hl], l                                    ; $48b8: $75
    adc d                                         ; $48b9: $8a
    ldh [$1f], a                                  ; $48ba: $e0 $1f
    call nc, Call_000_2b0e                        ; $48bc: $d4 $0e $2b
    or $01                                        ; $48bf: $f6 $01
    ld [c], a                                     ; $48c1: $e2
    sub b                                         ; $48c2: $90
    ld d, h                                       ; $48c3: $54

jr_098_48c4:
    ld [hl], b                                    ; $48c4: $70
    inc e                                         ; $48c5: $1c
    adc $1c                                       ; $48c6: $ce $1c
    sub $b8                                       ; $48c8: $d6 $b8
    ld [bc], a                                    ; $48ca: $02
    rlca                                          ; $48cb: $07
    ret nz                                        ; $48cc: $c0

    and h                                         ; $48cd: $a4
    ld b, $f8                                     ; $48ce: $06 $f8
    inc c                                         ; $48d0: $0c
    cp b                                          ; $48d1: $b8
    dec c                                         ; $48d2: $0d
    ldh a, [rIE]                                  ; $48d3: $f0 $ff
    dec b                                         ; $48d5: $05
    ret nz                                        ; $48d6: $c0

jr_098_48d7:
    inc b                                         ; $48d7: $04
    inc bc                                        ; $48d8: $03
    nop                                           ; $48d9: $00
    inc c                                         ; $48da: $0c
    jp nc, Jump_098_5e2d                          ; $48db: $d2 $2d $5e

    and c                                         ; $48de: $a1
    add d                                         ; $48df: $82
    db $fd                                        ; $48e0: $fd

jr_098_48e1:
    adc h                                         ; $48e1: $8c
    ld a, [$660f]                                 ; $48e2: $fa $0f $66
    add c                                         ; $48e5: $81
    add e                                         ; $48e6: $83
    call c, Call_098_6005                         ; $48e7: $dc $05 $60
    ld b, $80                                     ; $48ea: $06 $80
    ld h, b                                       ; $48ec: $60
    nop                                           ; $48ed: $00
    sbc a                                         ; $48ee: $9f
    add c                                         ; $48ef: $81
    cp $56                                        ; $48f0: $fe $56
    xor c                                         ; $48f2: $a9
    rst $38                                       ; $48f3: $ff
    add sp, -$01                                  ; $48f4: $e8 $ff
    ld b, h                                       ; $48f6: $44
    or l                                          ; $48f7: $b5
    inc b                                         ; $48f8: $04
    ld c, b                                       ; $48f9: $48
    ld [$0500], a                                 ; $48fa: $ea $00 $05
    db $10                                        ; $48fd: $10
    ld d, c                                       ; $48fe: $51
    cp a                                          ; $48ff: $bf
    ld b, b                                       ; $4900: $40
    ld hl, $b44b                                  ; $4901: $21 $4b $b4
    ldh [rOBP0], a                                ; $4904: $e0 $48
    ld a, [$5000]                                 ; $4906: $fa $00 $50
    and b                                         ; $4909: $a0
    or b                                          ; $490a: $b0
    ld c, l                                       ; $490b: $4d
    ld a, [hl+]                                   ; $490c: $2a
    jp c, $b025                                   ; $490d: $da $25 $b0

    ld h, l                                       ; $4910: $65
    ld b, e                                       ; $4911: $43

jr_098_4912:
    or b                                          ; $4912: $b0
    ld e, l                                       ; $4913: $5d
    add c                                         ; $4914: $81
    call z, $c033                                 ; $4915: $cc $33 $c0
    ld e, d                                       ; $4918: $5a
    cp a                                          ; $4919: $bf
    ret nz                                        ; $491a: $c0

    dec bc                                        ; $491b: $0b
    rst $38                                       ; $491c: $ff
    cpl                                           ; $491d: $2f
    ld b, $b0                                     ; $491e: $06 $b0
    dec hl                                        ; $4920: $2b
    inc bc                                        ; $4921: $03
    ldh [$03], a                                  ; $4922: $e0 $03
    ldh a, [rIF]                                  ; $4924: $f0 $0f
    ld e, c                                       ; $4926: $59
    add hl, bc                                    ; $4927: $09
    ld b, d                                       ; $4928: $42
    rst $38                                       ; $4929: $ff
    ld bc, $8360                                  ; $492a: $01 $60 $83
    rst $38                                       ; $492d: $ff
    pop bc                                        ; $492e: $c1
    cp a                                          ; $492f: $bf
    inc b                                         ; $4930: $04
    ld c, b                                       ; $4931: $48
    ld l, e                                       ; $4932: $6b
    nop                                           ; $4933: $00
    sub h                                         ; $4934: $94
    sub $09                                       ; $4935: $d6 $09
    rst $38                                       ; $4937: $ff
    nop                                           ; $4938: $00
    ld d, [hl]                                    ; $4939: $56
    nop                                           ; $493a: $00
    xor e                                         ; $493b: $ab
    nop                                           ; $493c: $00
    nop                                           ; $493d: $00
    ld d, l                                       ; $493e: $55
    nop                                           ; $493f: $00
    ld [hl+], a                                   ; $4940: $22
    nop                                           ; $4941: $00
    ld c, c                                       ; $4942: $49
    nop                                           ; $4943: $00
    ld a, [bc]                                    ; $4944: $0a
    nop                                           ; $4945: $00
    push af                                       ; $4946: $f5
    db $dd                                        ; $4947: $dd
    ld [hl+], a                                   ; $4948: $22
    db $db                                        ; $4949: $db
    inc b                                         ; $494a: $04
    rst $28                                       ; $494b: $ef
    nop                                           ; $494c: $00
    cp $00                                        ; $494d: $fe $00
    nop                                           ; $494f: $00
    ld d, a                                       ; $4950: $57
    nop                                           ; $4951: $00
    xor d                                         ; $4952: $aa
    nop                                           ; $4953: $00
    ld de, $0400                                  ; $4954: $11 $00 $04
    jr nz, jr_098_4959                            ; $4957: $20 $00

jr_098_4959:
    ld bc, $5002                                  ; $4959: $01 $02 $50
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    ld a, a                                       ; $495e: $7f
    nop                                           ; $495f: $00
    ld b, b                                       ; $4960: $40
    nop                                           ; $4961: $00
    ccf                                           ; $4962: $3f
    ld e, b                                       ; $4963: $58
    jr nc, jr_098_49d9                            ; $4964: $30 $73

    jr nz, @+$79                                  ; $4966: $20 $77

    jr nz, jr_098_49d1                            ; $4968: $20 $67

    ld bc, $6721                                  ; $496a: $01 $21 $67
    ld hl, $1fee                                  ; $496d: $21 $ee $1f
    ld c, $11                                     ; $4970: $0e $11
    daa                                           ; $4972: $27
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    ld de, $f1f1                                  ; $4975: $11 $f1 $f1
    rra                                           ; $4978: $1f
    rst $38                                       ; $4979: $ff
    rra                                           ; $497a: $1f
    pop af                                        ; $497b: $f1
    cp a                                          ; $497c: $bf
    nop                                           ; $497d: $00
    pop af                                        ; $497e: $f1
    ld h, a                                       ; $497f: $67
    inc h                                         ; $4980: $24
    ld a, a                                       ; $4981: $7f
    ld a, [hl+]                                   ; $4982: $2a
    ld e, a                                       ; $4983: $5f
    add hl, sp                                    ; $4984: $39
    ld c, a                                       ; $4985: $4f
    ld [bc], a                                    ; $4986: $02
    jr c, jr_098_49d8                             ; $4987: $38 $4f

    ld a, [hl-]                                   ; $4989: $3a
    ld e, a                                       ; $498a: $5f
    ld sp, $2e7f                                  ; $498b: $31 $7f $2e
    nop                                           ; $498e: $00
    ld d, c                                       ; $498f: $51
    inc c                                         ; $4990: $0c
    rst $38                                       ; $4991: $ff
    or c                                          ; $4992: $b1
    rst $38                                       ; $4993: $ff
    ld d, c                                       ; $4994: $51
    ld a, [de]                                    ; $4995: $1a
    nop                                           ; $4996: $00
    ld [bc], a                                    ; $4997: $02
    jr z, jr_098_499a                             ; $4998: $28 $00

jr_098_499a:
    rst $38                                       ; $499a: $ff
    nop                                           ; $499b: $00
    ld d, l                                       ; $499c: $55
    xor d                                         ; $499d: $aa
    ld d, l                                       ; $499e: $55
    nop                                           ; $499f: $00
    xor a                                         ; $49a0: $af
    nop                                           ; $49a1: $00
    db $fd                                        ; $49a2: $fd
    nop                                           ; $49a3: $00
    nop                                           ; $49a4: $00
    ld a, a                                       ; $49a5: $7f
    add b                                         ; $49a6: $80
    db $eb                                        ; $49a7: $eb
    inc d                                         ; $49a8: $14
    ld d, l                                       ; $49a9: $55
    xor d                                         ; $49aa: $aa
    push de                                       ; $49ab: $d5
    ld a, [hl+]                                   ; $49ac: $2a
    nop                                           ; $49ad: $00
    ld a, [$ae05]                                 ; $49ae: $fa $05 $ae
    ld b, b                                       ; $49b1: $40
    db $dd                                        ; $49b2: $dd
    nop                                           ; $49b3: $00
    ld a, [$0000]                                 ; $49b4: $fa $00 $00
    push de                                       ; $49b7: $d5
    nop                                           ; $49b8: $00
    and b                                         ; $49b9: $a0
    nop                                           ; $49ba: $00
    ld c, d                                       ; $49bb: $4a
    nop                                           ; $49bc: $00
    ld e, d                                       ; $49bd: $5a
    and l                                         ; $49be: $a5
    db $10                                        ; $49bf: $10
    db $ed                                        ; $49c0: $ed
    ld [bc], a                                    ; $49c1: $02
    rst $38                                       ; $49c2: $ff
    adc h                                         ; $49c3: $8c
    nop                                           ; $49c4: $00
    xor e                                         ; $49c5: $ab
    nop                                           ; $49c6: $00
    dec b                                         ; $49c7: $05
    nop                                           ; $49c8: $00
    nop                                           ; $49c9: $00
    ld b, e                                       ; $49ca: $43
    nop                                           ; $49cb: $00
    add hl, bc                                    ; $49cc: $09
    nop                                           ; $49cd: $00
    ld b, b                                       ; $49ce: $40
    nop                                           ; $49cf: $00
    sbc a                                         ; $49d0: $9f

jr_098_49d1:
    nop                                           ; $49d1: $00
    ld [$1f20], sp                                ; $49d2: $08 $20 $1f
    ld b, b                                       ; $49d5: $40
    ccf                                           ; $49d6: $3f
    ld [bc], a                                    ; $49d7: $02

jr_098_49d8:
    nop                                           ; $49d8: $00

jr_098_49d9:
    inc a                                         ; $49d9: $3c
    ld b, d                                       ; $49da: $42
    ld a, [hl-]                                   ; $49db: $3a
    nop                                           ; $49dc: $00
    ld b, b                                       ; $49dd: $40
    jr c, jr_098_49e2                             ; $49de: $38 $02

    nop                                           ; $49e0: $00
    ld sp, hl                                     ; $49e1: $f9

jr_098_49e2:
    nop                                           ; $49e2: $00
    inc b                                         ; $49e3: $04
    ld hl, sp+$20                                 ; $49e4: $f8 $20
    ld [bc], a                                    ; $49e6: $02
    db $fc                                        ; $49e7: $fc
    ld [bc], a                                    ; $49e8: $02
    nop                                           ; $49e9: $00
    ld a, h                                       ; $49ea: $7c
    jp nz, Jump_098_42bc                          ; $49eb: $c2 $bc $42

    inc a                                         ; $49ee: $3c
    ld h, b                                       ; $49ef: $60
    nop                                           ; $49f0: $00
    xor d                                         ; $49f1: $aa
    nop                                           ; $49f2: $00
    ld c, $08                                     ; $49f3: $0e $08
    add d                                         ; $49f5: $82
    ld a, h                                       ; $49f6: $7c
    add d                                         ; $49f7: $82
    inc a                                         ; $49f8: $3c
    jp nz, Jump_000_1c02                          ; $49f9: $c2 $02 $1c

    ld a, [c]                                     ; $49fc: $f2
    inc c                                         ; $49fd: $0c
    ld bc, $8100                                  ; $49fe: $01 $00 $81
    ld [bc], a                                    ; $4a01: $02
    ld d, b                                       ; $4a02: $50
    ld b, c                                       ; $4a03: $41
    nop                                           ; $4a04: $00
    add hl, sp                                    ; $4a05: $39
    ld b, b                                       ; $4a06: $40
    inc a                                         ; $4a07: $3c
    ld b, e                                       ; $4a08: $43
    inc a                                         ; $4a09: $3c
    ld b, b                                       ; $4a0a: $40
    inc a                                         ; $4a0b: $3c
    ld b, b                                       ; $4a0c: $40
    nop                                           ; $4a0d: $00
    jr c, jr_098_4a58                             ; $4a0e: $38 $48

    jr nc, @+$46                                  ; $4a10: $30 $44

    jr nc, jr_098_4a58                            ; $4a12: $30 $44

    inc [hl]                                      ; $4a14: $34
    ld b, d                                       ; $4a15: $42
    nop                                           ; $4a16: $00
    inc a                                         ; $4a17: $3c
    jp nz, $827c                                  ; $4a18: $c2 $7c $82

    db $fc                                        ; $4a1b: $fc
    ld h, d                                       ; $4a1c: $62
    inc a                                         ; $4a1d: $3c
    ld [hl-], a                                   ; $4a1e: $32
    nop                                           ; $4a1f: $00
    inc e                                         ; $4a20: $1c
    ld a, [de]                                    ; $4a21: $1a
    inc c                                         ; $4a22: $0c
    ld e, d                                       ; $4a23: $5a
    inc c                                         ; $4a24: $0c
    jp c, $f24c                                   ; $4a25: $da $4c $f2

    nop                                           ; $4a28: $00
    inc c                                         ; $4a29: $0c
    ld [c], a                                     ; $4a2a: $e2
    inc a                                         ; $4a2b: $3c
    jp nz, $c2fc                                  ; $4a2c: $c2 $fc $c2

    ld a, h                                       ; $4a2f: $7c
    ld [c], a                                     ; $4a30: $e2
    dec c                                         ; $4a31: $0d
    inc a                                         ; $4a32: $3c
    ld a, [c]                                     ; $4a33: $f2
    inc e                                         ; $4a34: $1c
    cp $de                                        ; $4a35: $fe $de
    nop                                           ; $4a37: $00
    ld a, $08                                     ; $4a38: $3e $08
    pop bc                                        ; $4a3a: $c1
    ld b, h                                       ; $4a3b: $44
    nop                                           ; $4a3c: $00
    ld d, d                                       ; $4a3d: $52
    and l                                         ; $4a3e: $a5
    ld c, b                                       ; $4a3f: $48
    nop                                           ; $4a40: $00
    pop de                                        ; $4a41: $d1
    ld d, $01                                     ; $4a42: $16 $01
    ld b, h                                       ; $4a44: $44

jr_098_4a45:
    inc [hl]                                      ; $4a45: $34
    ld [bc], a                                    ; $4a46: $02
    jr z, jr_098_4a95                             ; $4a47: $28 $4c

    ld b, h                                       ; $4a49: $44
    inc [hl]                                      ; $4a4a: $34
    ld b, [hl]                                    ; $4a4b: $46
    nop                                           ; $4a4c: $00
    inc a                                         ; $4a4d: $3c
    jp c, $024c                                   ; $4a4e: $da $4c $02

    jr c, jr_098_4a45                             ; $4a51: $38 $f2

    ld a, h                                       ; $4a53: $7c
    ld [hl+], a                                   ; $4a54: $22
    jp nz, $d07c                                  ; $4a55: $c2 $7c $d0

jr_098_4a58:
    ld [$006f], sp                                ; $4a58: $08 $6f $00
    rst $38                                       ; $4a5b: $ff
    ld [bc], a                                    ; $4a5c: $02
    nop                                           ; $4a5d: $00
    ld a, e                                       ; $4a5e: $7b
    ld [bc], a                                    ; $4a5f: $02
    add h                                         ; $4a60: $84
    sbc $21                                       ; $4a61: $de $21
    db $f4                                        ; $4a63: $f4
    dec bc                                        ; $4a64: $0b
    push af                                       ; $4a65: $f5
    inc c                                         ; $4a66: $0c
    nop                                           ; $4a67: $00
    db $dd                                        ; $4a68: $dd
    jr nz, jr_098_4a6b                            ; $4a69: $20 $00

jr_098_4a6b:
    rst $28                                       ; $4a6b: $ef
    ld [de], a                                    ; $4a6c: $12
    nop                                           ; $4a6d: $00
    halt                                          ; $4a6e: $76
    adc c                                         ; $4a6f: $89
    xor h                                         ; $4a70: $ac
    ld d, e                                       ; $4a71: $53
    ld e, d                                       ; $4a72: $5a
    nop                                           ; $4a73: $00
    and l                                         ; $4a74: $a5
    ld b, b                                       ; $4a75: $40
    inc a                                         ; $4a76: $3c
    ld b, c                                       ; $4a77: $41
    dec a                                         ; $4a78: $3d
    ld b, e                                       ; $4a79: $43
    dec a                                         ; $4a7a: $3d
    ld b, e                                       ; $4a7b: $43
    ld [bc], a                                    ; $4a7c: $02
    add hl, sp                                    ; $4a7d: $39
    ld b, e                                       ; $4a7e: $43
    ld sp, $1f20                                  ; $4a7f: $31 $20 $1f
    sbc a                                         ; $4a82: $9f
    adc $00                                       ; $4a83: $ce $00
    jp nz, Jump_000_3490                          ; $4a85: $c2 $90 $34

    nop                                           ; $4a88: $00
    jp nz, $807c                                  ; $4a89: $c2 $7c $80

    ld [$f804], sp                                ; $4a8c: $08 $04 $f8
    ld sp, hl                                     ; $4a8f: $f9
    nop                                           ; $4a90: $00
    ld a, [hl+]                                   ; $4a91: $2a
    ld [bc], a                                    ; $4a92: $02
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00

jr_098_4a95:
    ld e, c                                       ; $4a95: $59
    jp z, Jump_000_1100                           ; $4a96: $ca $00 $11

    cp $8c                                        ; $4a99: $fe $8c
    ld bc, $88aa                                  ; $4a9b: $01 $aa $88
    nop                                           ; $4a9e: $00
    ld bc, $0042                                  ; $4a9f: $01 $42 $00
    ld [$00fe], sp                                ; $4aa2: $08 $fe $00
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    ld a, [hl+]                                   ; $4aa7: $2a
    add hl, hl                                    ; $4aa8: $29
    nop                                           ; $4aa9: $00
    add b                                         ; $4aaa: $80
    ld [hl-], a                                   ; $4aab: $32
    ld bc, $048a                                  ; $4aac: $01 $8a $04
    ld [$ff01], sp                                ; $4aaf: $08 $01 $ff
    add d                                         ; $4ab2: $82
    ld bc, $aa59                                  ; $4ab3: $01 $59 $aa
    add [hl]                                      ; $4ab6: $86
    ld bc, $9eff                                  ; $4ab7: $01 $ff $9e
    ld bc, $000c                                  ; $4aba: $01 $0c $00
    rst $38                                       ; $4abd: $ff
    ld sp, hl                                     ; $4abe: $f9
    sub d                                         ; $4abf: $92
    ld bc, $a844                                  ; $4ac0: $01 $44 $a8
    inc l                                         ; $4ac3: $2c
    ld bc, $00f1                                  ; $4ac4: $01 $f1 $00
    or l                                          ; $4ac7: $b5
    or b                                          ; $4ac8: $b0
    nop                                           ; $4ac9: $00
    ld [hl], l                                    ; $4aca: $75
    add b                                         ; $4acb: $80
    adc b                                         ; $4acc: $88
    cp $38                                        ; $4acd: $fe $38
    jp $9500                                      ; $4acf: $c3 $00 $95


    ld l, b                                       ; $4ad2: $68
    ld bc, $01ae                                  ; $4ad3: $01 $ae $01
    adc d                                         ; $4ad6: $8a
    ld b, b                                       ; $4ad7: $40
    ld bc, $4804                                  ; $4ad8: $01 $04 $48
    nop                                           ; $4adb: $00
    nop                                           ; $4adc: $00
    jr @+$22                                      ; $4add: $18 $20

    jr z, @+$06                                   ; $4adf: $28 $04

    nop                                           ; $4ae1: $00
    ld a, $00                                     ; $4ae2: $3e $00
    jr c, jr_098_4ae6                             ; $4ae4: $38 $00

jr_098_4ae6:
    ld [$3830], sp                                ; $4ae6: $08 $30 $38
    ld b, h                                       ; $4ae9: $44
    ld b, $7c                                     ; $4aea: $06 $7c
    nop                                           ; $4aec: $00
    rst $10                                       ; $4aed: $d7
    nop                                           ; $4aee: $00
    cp l                                          ; $4aef: $bd
    xor [hl]                                      ; $4af0: $ae
    db $10                                        ; $4af1: $10
    ret nz                                        ; $4af2: $c0

    jr z, @-$50                                   ; $4af3: $28 $ae

    ld [bc], a                                    ; $4af5: $02
    ld bc, $008b                                  ; $4af6: $01 $8b $00
    xor l                                         ; $4af9: $ad
    nop                                           ; $4afa: $00
    adc a                                         ; $4afb: $8f
    adc h                                         ; $4afc: $8c
    ld bc, $8015                                  ; $4afd: $01 $15 $80
    db $ec                                        ; $4b00: $ec
    ld bc, $008f                                  ; $4b01: $01 $8f $00
    adc d                                         ; $4b04: $8a
    rst $38                                       ; $4b05: $ff
    ld a, a                                       ; $4b06: $7f
    add b                                         ; $4b07: $80
    ld [$8000], a                                 ; $4b08: $ea $00 $80
    ld d, l                                       ; $4b0b: $55
    add b                                         ; $4b0c: $80
    rst $38                                       ; $4b0d: $ff
    add b                                         ; $4b0e: $80
    add hl, hl                                    ; $4b0f: $29
    rst $38                                       ; $4b10: $ff
    rst $38                                       ; $4b11: $ff
    nop                                           ; $4b12: $00
    add b                                         ; $4b13: $80
    ld l, e                                       ; $4b14: $6b
    add b                                         ; $4b15: $80
    ld c, c                                       ; $4b16: $49
    or $ff                                        ; $4b17: $f6 $ff
    nop                                           ; $4b19: $00
    sub $24                                       ; $4b1a: $d6 $24
    jr z, jr_098_4b75                             ; $4b1c: $28 $57

    ld a, [c]                                     ; $4b1e: $f2
    nop                                           ; $4b1f: $00
    ld d, h                                       ; $4b20: $54
    ei                                            ; $4b21: $fb
    add h                                         ; $4b22: $84
    nop                                           ; $4b23: $00
    ld d, b                                       ; $4b24: $50
    nop                                           ; $4b25: $00
    ldh [$9c], a                                  ; $4b26: $e0 $9c
    nop                                           ; $4b28: $00
    ld [bc], a                                    ; $4b29: $02
    ld c, b                                       ; $4b2a: $48
    ld bc, $d568                                  ; $4b2b: $01 $68 $d5
    add b                                         ; $4b2e: $80
    ld a, a                                       ; $4b2f: $7f
    add b                                         ; $4b30: $80
    xor d                                         ; $4b31: $aa
    ld [bc], a                                    ; $4b32: $02

jr_098_4b33:
    rst $30                                       ; $4b33: $f7
    ld a, a                                       ; $4b34: $7f
    add b                                         ; $4b35: $80
    push de                                       ; $4b36: $d5
    add b                                         ; $4b37: $80
    jr z, jr_098_4b7e                             ; $4b38: $28 $44

    nop                                           ; $4b3a: $00
    ld a, [hl+]                                   ; $4b3b: $2a
    inc h                                         ; $4b3c: $24
    push de                                       ; $4b3d: $d5
    ld d, l                                       ; $4b3e: $55
    inc l                                         ; $4b3f: $2c
    ld bc, $b24d                                  ; $4b40: $01 $4d $b2
    ld [c], a                                     ; $4b43: $e2
    add hl, bc                                    ; $4b44: $09
    or d                                          ; $4b45: $b2
    dec c                                         ; $4b46: $0d
    xor l                                         ; $4b47: $ad
    call nz, Call_098_5500                        ; $4b48: $c4 $00 $55
    ld a, $38                                     ; $4b4b: $3e $38
    jp nz, $10b0                                  ; $4b4d: $c2 $b0 $10

    ld b, c                                       ; $4b50: $41
    ld [$f040], sp                                ; $4b51: $08 $40 $f0
    nop                                           ; $4b54: $00
    ld d, c                                       ; $4b55: $51
    inc h                                         ; $4b56: $24
    db $f4                                        ; $4b57: $f4
    nop                                           ; $4b58: $00
    ld d, c                                       ; $4b59: $51
    add d                                         ; $4b5a: $82
    ld [bc], a                                    ; $4b5b: $02
    add b                                         ; $4b5c: $80
    rst $38                                       ; $4b5d: $ff
    sbc a                                         ; $4b5e: $9f
    ld [bc], a                                    ; $4b5f: $02
    nop                                           ; $4b60: $00
    ld bc, $f391                                  ; $4b61: $01 $91 $f3
    sub c                                         ; $4b64: $91
    ld a, [c]                                     ; $4b65: $f2
    sub b                                         ; $4b66: $90
    di                                            ; $4b67: $f3
    sub b                                         ; $4b68: $90
    ld b, $00                                     ; $4b69: $06 $00
    ld b, b                                       ; $4b6b: $40
    nop                                           ; $4b6c: $00
    pop de                                        ; $4b6d: $d1
    ld [de], a                                    ; $4b6e: $12
    call nz, $c4ff                                ; $4b6f: $c4 $ff $c4
    ccf                                           ; $4b72: $3f
    inc a                                         ; $4b73: $3c
    rst $38                                       ; $4b74: $ff

jr_098_4b75:
    dec b                                         ; $4b75: $05
    inc a                                         ; $4b76: $3c
    rst $38                                       ; $4b77: $ff
    db $fc                                        ; $4b78: $fc
    ccf                                           ; $4b79: $3f
    sub $c0                                       ; $4b7a: $d6 $c0
    ld h, b                                       ; $4b7c: $60
    push af                                       ; $4b7d: $f5

jr_098_4b7e:
    cp d                                          ; $4b7e: $ba
    ld [bc], a                                    ; $4b7f: $02
    sub b                                         ; $4b80: $90
    add b                                         ; $4b81: $80
    ld c, c                                       ; $4b82: $49
    sub c                                         ; $4b83: $91
    ld a, [c]                                     ; $4b84: $f2
    ld [bc], a                                    ; $4b85: $02
    ld [$ff9f], sp                                ; $4b86: $08 $9f $ff
    sub l                                         ; $4b89: $95
    ld [$4ab7], a                                 ; $4b8a: $ea $b7 $4a
    ld [$3891], sp                                ; $4b8d: $08 $91 $38
    nop                                           ; $4b90: $00
    ld [bc], a                                    ; $4b91: $02
    ld [$86ff], sp                                ; $4b92: $08 $ff $86
    ld [bc], a                                    ; $4b95: $02
    ld c, d                                       ; $4b96: $4a
    jr jr_098_4b33                                ; $4b97: $18 $9a

    ld a, [de]                                    ; $4b99: $1a
    nop                                           ; $4b9a: $00
    rst $38                                       ; $4b9b: $ff
    rst $38                                       ; $4b9c: $ff
    rlca                                          ; $4b9d: $07
    rst $38                                       ; $4b9e: $ff
    rst $38                                       ; $4b9f: $ff
    dec b                                         ; $4ba0: $05
    sbc a                                         ; $4ba1: $9f
    ld h, l                                       ; $4ba2: $65
    ld [de], a                                    ; $4ba3: $12
    ld e, l                                       ; $4ba4: $5d
    and a                                         ; $4ba5: $a7
    xor $ce                                       ; $4ba6: $ee $ce
    ld [de], a                                    ; $4ba8: $12
    add b                                         ; $4ba9: $80
    ld de, $181a                                  ; $4baa: $11 $1a $18
    or c                                          ; $4bad: $b1
    nop                                           ; $4bae: $00
    rst $38                                       ; $4baf: $ff
    rra                                           ; $4bb0: $1f
    push hl                                       ; $4bb1: $e5
    rra                                           ; $4bb2: $1f
    push hl                                       ; $4bb3: $e5
    rst $38                                       ; $4bb4: $ff
    dec b                                         ; $4bb5: $05
    rst $38                                       ; $4bb6: $ff
    scf                                           ; $4bb7: $37
    db $fd                                        ; $4bb8: $fd
    rlca                                          ; $4bb9: $07
    ld [bc], a                                    ; $4bba: $02
    nop                                           ; $4bbb: $00
    ld c, h                                       ; $4bbc: $4c
    inc bc                                        ; $4bbd: $03
    ld bc, $5ad0                                  ; $4bbe: $01 $d0 $5a
    ld [de], a                                    ; $4bc1: $12
    ld [$003c], sp                                ; $4bc2: $08 $3c $00
    and b                                         ; $4bc5: $a0
    inc e                                         ; $4bc6: $1c
    db $10                                        ; $4bc7: $10
    ld bc, $080b                                  ; $4bc8: $01 $0b $08
    rst $38                                       ; $4bcb: $ff
    push de                                       ; $4bcc: $d5
    dec hl                                        ; $4bcd: $2b
    xor e                                         ; $4bce: $ab
    ld d, l                                       ; $4bcf: $55
    db $10                                        ; $4bd0: $10
    ld d, [hl]                                    ; $4bd1: $56
    xor c                                         ; $4bd2: $a9
    ld d, e                                       ; $4bd3: $53
    ld [hl], $01                                  ; $4bd4: $36 $01
    xor d                                         ; $4bd6: $aa
    nop                                           ; $4bd7: $00
    ld e, a                                       ; $4bd8: $5f
    and b                                         ; $4bd9: $a0
    ld bc, $40be                                  ; $4bda: $01 $be $40
    ld d, c                                       ; $4bdd: $51
    rst $38                                       ; $4bde: $ff
    cp $01                                        ; $4bdf: $fe $01
    ld d, l                                       ; $4be1: $55
    sbc $02                                       ; $4be2: $de $02
    ld [$aa55], sp                                ; $4be4: $08 $55 $aa
    xor d                                         ; $4be7: $aa
    ld d, l                                       ; $4be8: $55
    sbc h                                         ; $4be9: $9c
    nop                                           ; $4bea: $00
    ld bc, $ff69                                  ; $4beb: $01 $69 $ff
    dec h                                         ; $4bee: $25
    xor e                                         ; $4bef: $ab
    ld d, h                                       ; $4bf0: $54
    sbc $09                                       ; $4bf1: $de $09
    ld d, a                                       ; $4bf3: $57
    xor b                                         ; $4bf4: $a8
    and $12                                       ; $4bf5: $e6 $12
    ld d, h                                       ; $4bf7: $54
    ld [hl], b                                    ; $4bf8: $70
    jr jr_098_4c3b                                ; $4bf9: $18 $40

    adc b                                         ; $4bfb: $88
    ld [hl], b                                    ; $4bfc: $70
    nop                                           ; $4bfd: $00
    ld de, $111f                                  ; $4bfe: $11 $1f $11
    rra                                           ; $4c01: $1f
    push af                                       ; $4c02: $f5
    rst $38                                       ; $4c03: $ff
    nop                                           ; $4c04: $00
    inc c                                         ; $4c05: $0c
    di                                            ; $4c06: $f3
    ld [bc], a                                    ; $4c07: $02
    db $fd                                        ; $4c08: $fd
    ld b, h                                       ; $4c09: $44
    cp e                                          ; $4c0a: $bb
    nop                                           ; $4c0b: $00
    rst $38                                       ; $4c0c: $ff
    inc b                                         ; $4c0d: $04
    add b                                         ; $4c0e: $80
    rst $38                                       ; $4c0f: $ff

Call_098_4c10:
    ld b, [hl]                                    ; $4c10: $46
    rst $38                                       ; $4c11: $ff
    cp e                                          ; $4c12: $bb
    cp l                                          ; $4c13: $bd
    inc bc                                        ; $4c14: $03
    nop                                           ; $4c15: $00
    rst $38                                       ; $4c16: $ff
    nop                                           ; $4c17: $00
    and a                                         ; $4c18: $a7
    ld e, b                                       ; $4c19: $58
    ld c, d                                       ; $4c1a: $4a
    or l                                          ; $4c1b: $b5
    inc b                                         ; $4c1c: $04
    ei                                            ; $4c1d: $fb
    ld d, b                                       ; $4c1e: $50
    rst $38                                       ; $4c1f: $ff
    db $10                                        ; $4c20: $10
    add hl, hl                                    ; $4c21: $29
    rst $38                                       ; $4c22: $ff
    cp [hl]                                       ; $4c23: $be
    db $10                                        ; $4c24: $10
    db $10                                        ; $4c25: $10
    ld c, c                                       ; $4c26: $49
    cp [hl]                                       ; $4c27: $be
    add b                                         ; $4c28: $80
    ld a, a                                       ; $4c29: $7f
    ld bc, $ff14                                  ; $4c2a: $01 $14 $ff
    jr c, @+$01                                   ; $4c2d: $38 $ff

    dec [hl]                                      ; $4c2f: $35
    rst $38                                       ; $4c30: $ff

jr_098_4c31:
    cp $dd                                        ; $4c31: $fe $dd
    inc bc                                        ; $4c33: $03
    jr jr_098_4c31                                ; $4c34: $18 $fb

    rst $38                                       ; $4c36: $ff
    dec d                                         ; $4c37: $15
    jr c, jr_098_4c3a                             ; $4c38: $38 $00

jr_098_4c3a:
    ld [bc], a                                    ; $4c3a: $02

jr_098_4c3b:
    jr z, @+$01                                   ; $4c3b: $28 $ff

    rst $38                                       ; $4c3d: $ff
    ld d, a                                       ; $4c3e: $57
    nop                                           ; $4c3f: $00
    xor b                                         ; $4c40: $a8
    xor d                                         ; $4c41: $aa
    ld b, b                                       ; $4c42: $40
    db $fd                                        ; $4c43: $fd
    ld [bc], a                                    ; $4c44: $02
    xor d                                         ; $4c45: $aa
    nop                                           ; $4c46: $00
    ld [de], a                                    ; $4c47: $12
    nop                                           ; $4c48: $00
    rst $38                                       ; $4c49: $ff
    cp a                                          ; $4c4a: $bf
    ld b, b                                       ; $4c4b: $40
    push af                                       ; $4c4c: $f5
    ld a, [bc]                                    ; $4c4d: $0a
    xor d                                         ; $4c4e: $aa
    ld d, l                                       ; $4c4f: $55
    db $fd                                        ; $4c50: $fd
    add b                                         ; $4c51: $80
    add $03                                       ; $4c52: $c6 $03
    ld d, l                                       ; $4c54: $55
    xor d                                         ; $4c55: $aa
    cp [hl]                                       ; $4c56: $be
    ld bc, $ff4a                                  ; $4c57: $01 $4a $ff
    ld a, [$0543]                                 ; $4c5a: $fa $43 $05
    adc d                                         ; $4c5d: $8a
    ld bc, $5755                                  ; $4c5e: $01 $55 $57
    nop                                           ; $4c61: $00
    cp d                                          ; $4c62: $ba
    ld a, h                                       ; $4c63: $7c
    nop                                           ; $4c64: $00
    ld a, b                                       ; $4c65: $78
    ld bc, $2080                                  ; $4c66: $01 $80 $20
    nop                                           ; $4c69: $00
    ld d, l                                       ; $4c6a: $55
    xor b                                         ; $4c6b: $a8
    xor e                                         ; $4c6c: $ab
    ld d, h                                       ; $4c6d: $54
    ld l, a                                       ; $4c6e: $6f
    sub b                                         ; $4c6f: $90
    or l                                          ; $4c70: $b5
    adc c                                         ; $4c71: $89
    ld [hl], h                                    ; $4c72: $74
    inc bc                                        ; $4c73: $03
    add [hl]                                      ; $4c74: $86
    rst $38                                       ; $4c75: $ff
    push af                                       ; $4c76: $f5
    ld [bc], a                                    ; $4c77: $02
    inc c                                         ; $4c78: $0c
    xor d                                         ; $4c79: $aa
    xor d                                         ; $4c7a: $aa
    ld l, $08                                     ; $4c7b: $2e $08
    inc b                                         ; $4c7d: $04
    nop                                           ; $4c7e: $00
    xor a                                         ; $4c7f: $af
    ld d, b                                       ; $4c80: $50
    and b                                         ; $4c81: $a0
    rst $38                                       ; $4c82: $ff
    xor b                                         ; $4c83: $a8
    add hl, bc                                    ; $4c84: $09
    ld d, l                                       ; $4c85: $55
    xor d                                         ; $4c86: $aa
    ld h, h                                       ; $4c87: $64
    xor e                                         ; $4c88: $ab
    ld b, $08                                     ; $4c89: $06 $08
    sbc h                                         ; $4c8b: $9c
    inc bc                                        ; $4c8c: $03
    xor c                                         ; $4c8d: $a9
    rst $38                                       ; $4c8e: $ff
    ld c, $0c                                     ; $4c8f: $0e $0c
    ld d, l                                       ; $4c91: $55
    xor d                                         ; $4c92: $aa
    ld b, b                                       ; $4c93: $40
    cp $10                                        ; $4c94: $fe $10
    db $10                                        ; $4c96: $10
    xor d                                         ; $4c97: $aa
    dec b                                         ; $4c98: $05
    jr z, @+$01                                   ; $4c99: $28 $ff

    push hl                                       ; $4c9b: $e5
    ld a, [de]                                    ; $4c9c: $1a
    ld bc, $10bb                                  ; $4c9d: $01 $bb $10
    ld a, a                                       ; $4ca0: $7f
    sub b                                         ; $4ca1: $90
    cp d                                          ; $4ca2: $ba
    db $10                                        ; $4ca3: $10
    sub h                                         ; $4ca4: $94
    ldh [rP1], a                                  ; $4ca5: $e0 $00
    ld [hl+], a                                   ; $4ca7: $22
    ld [hl], l                                    ; $4ca8: $75
    ld a, [bc]                                    ; $4ca9: $0a
    adc h                                         ; $4caa: $8c
    ld a, [bc]                                    ; $4cab: $0a
    xor d                                         ; $4cac: $aa
    ld d, l                                       ; $4cad: $55
    ld a, a                                       ; $4cae: $7f
    ld [$9303], sp                                ; $4caf: $08 $03 $93
    ld b, $ff                                     ; $4cb2: $06 $ff
    cp d                                          ; $4cb4: $ba
    ld b, l                                       ; $4cb5: $45
    ld e, a                                       ; $4cb6: $5f
    and b                                         ; $4cb7: $a0
    ldh [$03], a                                  ; $4cb8: $e0 $03
    add h                                         ; $4cba: $84
    nop                                           ; $4cbb: $00
    ld d, l                                       ; $4cbc: $55
    ld [$faaa], sp                                ; $4cbd: $08 $aa $fa
    dec b                                         ; $4cc0: $05
    ld h, h                                       ; $4cc1: $64
    adc b                                         ; $4cc2: $88
    nop                                           ; $4cc3: $00
    sub l                                         ; $4cc4: $95
    ld b, b                                       ; $4cc5: $40
    ld [$5500], a                                 ; $4cc6: $ea $00 $55
    ld a, l                                       ; $4cc9: $7d
    ret nz                                        ; $4cca: $c0

    ld [$5f40], a                                 ; $4ccb: $ea $40 $5f
    ldh [$ea], a                                  ; $4cce: $e0 $ea

jr_098_4cd0:
    ld [bc], a                                    ; $4cd0: $02
    ld d, l                                       ; $4cd1: $55
    ld l, $ff                                     ; $4cd2: $2e $ff
    xor d                                         ; $4cd4: $aa
    ld d, l                                       ; $4cd5: $55
    rst $38                                       ; $4cd6: $ff
    ld h, d                                       ; $4cd7: $62
    nop                                           ; $4cd8: $00
    ld d, l                                       ; $4cd9: $55
    ret nz                                        ; $4cda: $c0

    and h                                         ; $4cdb: $a4
    nop                                           ; $4cdc: $00
    ld [hl], $0b                                  ; $4cdd: $36 $0b
    xor c                                         ; $4cdf: $a9
    ld d, [hl]                                    ; $4ce0: $56
    ld d, b                                       ; $4ce1: $50

jr_098_4ce2:
    xor a                                         ; $4ce2: $af
    and l                                         ; $4ce3: $a5

jr_098_4ce4:
    ld e, e                                       ; $4ce4: $5b
    ld b, [hl]                                    ; $4ce5: $46
    nop                                           ; $4ce6: $00
    ld h, e                                       ; $4ce7: $63
    ld bc, $ff2b                                  ; $4ce8: $01 $2b $ff
    rst $18                                       ; $4ceb: $df
    ldh a, [rNR10]                                ; $4cec: $f0 $10
    nop                                           ; $4cee: $00
    ld e, c                                       ; $4cef: $59
    rst $38                                       ; $4cf0: $ff
    nop                                           ; $4cf1: $00
    jr nz, @-$54                                  ; $4cf2: $20 $aa

    jr nz, @+$77                                  ; $4cf4: $20 $75

    jr nz, jr_098_4ce2                            ; $4cf6: $20 $ea

    dec [hl]                                      ; $4cf8: $35
    ld a, d                                       ; $4cf9: $7a
    ldh a, [$0b]                                  ; $4cfa: $f0 $0b
    ld bc, $0c16                                  ; $4cfc: $01 $16 $0c
    add h                                         ; $4cff: $84
    nop                                           ; $4d00: $00
    ld d, b                                       ; $4d01: $50
    ld bc, $51ae                                  ; $4d02: $01 $ae $51
    xor b                                         ; $4d05: $a8
    rst $38                                       ; $4d06: $ff
    inc h                                         ; $4d07: $24
    db $fd                                        ; $4d08: $fd
    ld [bc], a                                    ; $4d09: $02
    ld c, h                                       ; $4d0a: $4c
    ld a, [bc]                                    ; $4d0b: $0a
    ld e, a                                       ; $4d0c: $5f
    and b                                         ; $4d0d: $a0
    ld a, b                                       ; $4d0e: $78
    ld [$40ba], sp                                ; $4d0f: $08 $ba $40
    ld bc, $ffa8                                  ; $4d12: $01 $a8 $ff
    ld h, d                                       ; $4d15: $62
    sbc l                                         ; $4d16: $9d
    cp a                                          ; $4d17: $bf
    ld [$ccfe], sp                                ; $4d18: $08 $fe $cc
    inc b                                         ; $4d1b: $04
    sub d                                         ; $4d1c: $92
    db $f4                                        ; $4d1d: $f4
    nop                                           ; $4d1e: $00
    ld [bc], a                                    ; $4d1f: $02
    ld d, l                                       ; $4d20: $55
    ld h, [hl]                                    ; $4d21: $66
    inc b                                         ; $4d22: $04
    ld a, [$0000]                                 ; $4d23: $fa $00 $00
    add hl, bc                                    ; $4d26: $09
    push de                                       ; $4d27: $d5
    ld [bc], a                                    ; $4d28: $02
    ld a, [hl+]                                   ; $4d29: $2a
    xor e                                         ; $4d2a: $ab
    ld d, h                                       ; $4d2b: $54
    ld d, a                                       ; $4d2c: $57
    xor b                                         ; $4d2d: $a8
    ld d, d                                       ; $4d2e: $52
    sub b                                         ; $4d2f: $90
    ld sp, $026f                                  ; $4d30: $31 $6f $02
    sbc b                                         ; $4d33: $98
    cp l                                          ; $4d34: $bd
    ld [$ad5a], sp                                ; $4d35: $08 $5a $ad
    ld c, $f0                                     ; $4d38: $0e $f0
    jr nc, jr_098_4cd0                            ; $4d3a: $30 $94

    nop                                           ; $4d3c: $00
    rst $38                                       ; $4d3d: $ff
    cp [hl]                                       ; $4d3e: $be
    ld b, c                                       ; $4d3f: $41
    dec [hl]                                      ; $4d40: $35
    ld c, d                                       ; $4d41: $4a
    xor d                                         ; $4d42: $aa
    ld b, b                                       ; $4d43: $40
    rst $38                                       ; $4d44: $ff
    add e                                         ; $4d45: $83
    and h                                         ; $4d46: $a4
    nop                                           ; $4d47: $00
    ld a, a                                       ; $4d48: $7f
    ld b, b                                       ; $4d49: $40
    rst $18                                       ; $4d4a: $df
    ld h, b                                       ; $4d4b: $60
    sub c                                         ; $4d4c: $91
    inc h                                         ; $4d4d: $24
    ld [bc], a                                    ; $4d4e: $02
    inc b                                         ; $4d4f: $04
    ld c, b                                       ; $4d50: $48
    dec b                                         ; $4d51: $05
    pop af                                        ; $4d52: $f1
    adc c                                         ; $4d53: $89
    pop af                                        ; $4d54: $f1
    adc b                                         ; $4d55: $88
    rst $30                                       ; $4d56: $f7
    ld [bc], a                                    ; $4d57: $02
    nop                                           ; $4d58: $00
    pop af                                        ; $4d59: $f1
    ld [bc], a                                    ; $4d5a: $02
    jr nz, jr_098_4ce4                            ; $4d5b: $20 $87

    ld c, d                                       ; $4d5d: $4a
    ld a, [hl+]                                   ; $4d5e: $2a
    sbc a                                         ; $4d5f: $9f
    pop af                                        ; $4d60: $f1
    sbc a                                         ; $4d61: $9f
    pop af                                        ; $4d62: $f1
    inc l                                         ; $4d63: $2c
    ld [$424a], sp                                ; $4d64: $08 $4a $42
    ld [bc], a                                    ; $4d67: $02
    db $10                                        ; $4d68: $10
    add c                                         ; $4d69: $81
    jr nc, jr_098_4d95                            ; $4d6a: $30 $29

    ld d, [hl]                                    ; $4d6c: $56
    ld bc, $01ab                                  ; $4d6d: $01 $ab $01
    ld d, l                                       ; $4d70: $55
    xor e                                         ; $4d71: $ab
    ld e, $02                                     ; $4d72: $1e $02
    adc c                                         ; $4d74: $89
    jr nc, jr_098_4d98                            ; $4d75: $30 $21

    push af                                       ; $4d77: $f5
    ld a, [bc]                                    ; $4d78: $0a
    xor e                                         ; $4d79: $ab
    ld a, [c]                                     ; $4d7a: $f2
    inc b                                         ; $4d7b: $04
    xor d                                         ; $4d7c: $aa
    nop                                           ; $4d7d: $00
    jr c, jr_098_4d88                             ; $4d7e: $38 $08

    ld a, [$2004]                                 ; $4d80: $fa $04 $20
    sub h                                         ; $4d83: $94
    ld [de], a                                    ; $4d84: $12
    ld [hl], $18                                  ; $4d85: $36 $18
    ld a, [hl-]                                   ; $4d87: $3a

jr_098_4d88:
    db $10                                        ; $4d88: $10
    sub h                                         ; $4d89: $94
    ld [de], a                                    ; $4d8a: $12
    ld h, a                                       ; $4d8b: $67
    di                                            ; $4d8c: $f3
    ld bc, $08d5                                  ; $4d8d: $01 $d5 $08
    nop                                           ; $4d90: $00
    ld [$7d15], a                                 ; $4d91: $ea $15 $7d
    ld b, b                                       ; $4d94: $40

jr_098_4d95:
    ld [de], a                                    ; $4d95: $12
    xor d                                         ; $4d96: $aa
    ld d, l                                       ; $4d97: $55

jr_098_4d98:
    ld l, l                                       ; $4d98: $6d
    add b                                         ; $4d99: $80
    jr nc, jr_098_4d9e                            ; $4d9a: $30 $02

    ld [hl], l                                    ; $4d9c: $75
    add b                                         ; $4d9d: $80

jr_098_4d9e:
    cp [hl]                                       ; $4d9e: $be
    ld b, c                                       ; $4d9f: $41
    push de                                       ; $4da0: $d5
    nop                                           ; $4da1: $00
    dec h                                         ; $4da2: $25
    inc bc                                        ; $4da3: $03
    rst $38                                       ; $4da4: $ff
    ld d, l                                       ; $4da5: $55
    and b                                         ; $4da6: $a0
    ld a, [$6905]                                 ; $4da7: $fa $05 $69
    ret z                                         ; $4daa: $c8

    ld bc, $059a                                  ; $4dab: $01 $9a $05
    add hl, bc                                    ; $4dae: $09
    ld d, l                                       ; $4daf: $55
    ld a, l                                       ; $4db0: $7d
    ld [bc], a                                    ; $4db1: $02
    call nc, Call_000_01a4                        ; $4db2: $d4 $a4 $01
    xor e                                         ; $4db5: $ab
    ld d, h                                       ; $4db6: $54
    ld [$510c], sp                                ; $4db7: $08 $0c $51
    ld d, l                                       ; $4dba: $55
    jr nc, jr_098_4dbd                            ; $4dbb: $30 $00

jr_098_4dbd:
    ld a, [bc]                                    ; $4dbd: $0a
    jr nz, @+$73                                  ; $4dbe: $20 $71

    db $fc                                        ; $4dc0: $fc
    inc bc                                        ; $4dc1: $03
    ld d, l                                       ; $4dc2: $55
    sub e                                         ; $4dc3: $93
    ld [bc], a                                    ; $4dc4: $02
    ld [bc], a                                    ; $4dc5: $02
    inc a                                         ; $4dc6: $3c
    jp $81fe                                      ; $4dc7: $c3 $fe $81


    ld a, $c1                                     ; $4dca: $3e $c1
    inc b                                         ; $4dcc: $04
    jr jr_098_4e4d                                ; $4dcd: $18 $7e

    ld [bc], a                                    ; $4dcf: $02
    add c                                         ; $4dd0: $81
    cp $81                                        ; $4dd1: $fe $81
    ld l, $c1                                     ; $4dd3: $2e $c1
    sbc $04                                       ; $4dd5: $de $04
    db $10                                        ; $4dd7: $10
    ld a, [hl+]                                   ; $4dd8: $2a
    ld a, [bc]                                    ; $4dd9: $0a
    pop bc                                        ; $4dda: $c1
    sub $81                                       ; $4ddb: $d6 $81
    ld [hl+], a                                   ; $4ddd: $22
    jr jr_098_4de0                                ; $4dde: $18 $00

jr_098_4de0:
    sub d                                         ; $4de0: $92
    sub b                                         ; $4de1: $90
    ld bc, $02fd                                  ; $4de2: $01 $fd $02
    db $10                                        ; $4de5: $10
    ld a, [$7d10]                                 ; $4de6: $fa $10 $7d
    sub b                                         ; $4de9: $90
    ld a, [hl-]                                   ; $4dea: $3a
    db $f4                                        ; $4deb: $f4
    ld bc, $e0ea                                  ; $4dec: $01 $ea $e0
    db $10                                        ; $4def: $10
    ld bc, $0218                                  ; $4df0: $01 $18 $02
    xor b                                         ; $4df3: $a8
    ld [bc], a                                    ; $4df4: $02
    ld d, a                                       ; $4df5: $57
    nop                                           ; $4df6: $00
    cpl                                           ; $4df7: $2f
    rst $38                                       ; $4df8: $ff
    ld a, a                                       ; $4df9: $7f
    sub b                                         ; $4dfa: $90
    ld [bc], a                                    ; $4dfb: $02
    ld b, $e0                                     ; $4dfc: $06 $e0
    rst $38                                       ; $4dfe: $ff
    xor h                                         ; $4dff: $ac
    ld [bc], a                                    ; $4e00: $02
    nop                                           ; $4e01: $00
    xor [hl]                                      ; $4e02: $ae
    ld d, b                                       ; $4e03: $50
    db $fd                                        ; $4e04: $fd
    jr nz, jr_098_4e09                            ; $4e05: $20 $02

    ld h, $ba                                     ; $4e07: $26 $ba

jr_098_4e09:
    dec b                                         ; $4e09: $05
    xor a                                         ; $4e0a: $af
    nop                                           ; $4e0b: $00
    and l                                         ; $4e0c: $a5
    rst $38                                       ; $4e0d: $ff
    xor a                                         ; $4e0e: $af
    call nc, $04b4                                ; $4e0f: $d4 $b4 $04
    inc l                                         ; $4e12: $2c
    ld a, [bc]                                    ; $4e13: $0a
    ld d, l                                       ; $4e14: $55
    ld l, h                                       ; $4e15: $6c
    ld [bc], a                                    ; $4e16: $02
    ld [$4180], a                                 ; $4e17: $ea $80 $41
    ld l, d                                       ; $4e1a: $6a
    sub l                                         ; $4e1b: $95
    ld b, b                                       ; $4e1c: $40
    or a                                          ; $4e1d: $b7
    ldh [rSC], a                                  ; $4e1e: $e0 $02
    nop                                           ; $4e20: $00
    rst $38                                       ; $4e21: $ff

jr_098_4e22:
    cp a                                          ; $4e22: $bf
    ret nz                                        ; $4e23: $c0

    ccf                                           ; $4e24: $3f
    ret nz                                        ; $4e25: $c0

    sub b                                         ; $4e26: $90
    inc b                                         ; $4e27: $04
    ld [$c1be], sp                                ; $4e28: $08 $be $c1
    ld [$0208], sp                                ; $4e2b: $08 $08 $02
    rst $38                                       ; $4e2e: $ff
    ei                                            ; $4e2f: $fb
    ld b, $00                                     ; $4e30: $06 $00
    or $0f                                        ; $4e32: $f6 $0f
    db $eb                                        ; $4e34: $eb
    ld e, $b2                                     ; $4e35: $1e $b2
    ld a, a                                       ; $4e37: $7f
    rst $38                                       ; $4e38: $ff
    cp $0f                                        ; $4e39: $fe $0f
    add d                                         ; $4e3b: $82
    ld a, a                                       ; $4e3c: $7f
    ld b, e                                       ; $4e3d: $43
    cp [hl]                                       ; $4e3e: $be
    inc e                                         ; $4e3f: $1c
    jr @+$06                                      ; $4e40: $18 $04

    jr c, jr_098_4e58                             ; $4e42: $38 $14

    ld [$2004], sp                                ; $4e44: $08 $04 $20
    ld [bc], a                                    ; $4e47: $02
    cp a                                          ; $4e48: $bf
    add l                                         ; $4e49: $85
    ld a, a                                       ; $4e4a: $7f
    ld c, d                                       ; $4e4b: $4a
    cp a                                          ; $4e4c: $bf

jr_098_4e4d:
    nop                                           ; $4e4d: $00
    jr nc, @+$05                                  ; $4e4e: $30 $03

    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    ld bc, $01ea                                  ; $4e52: $01 $ea $01
    cp $01                                        ; $4e55: $fe $01
    xor b                                         ; $4e57: $a8

jr_098_4e58:
    rst $38                                       ; $4e58: $ff
    ld a, h                                       ; $4e59: $7c
    ld de, $de83                                  ; $4e5a: $11 $83 $de
    ld bc, $2848                                  ; $4e5d: $01 $48 $28
    jr nz, jr_098_4e22                            ; $4e60: $20 $c0

    and b                                         ; $4e62: $a0
    inc b                                         ; $4e63: $04
    db $10                                        ; $4e64: $10
    db $10                                        ; $4e65: $10
    or b                                          ; $4e66: $b0
    ld a, a                                       ; $4e67: $7f
    ret nz                                        ; $4e68: $c0

    ld d, d                                       ; $4e69: $52
    inc bc                                        ; $4e6a: $03
    db $fd                                        ; $4e6b: $fd
    ld [bc], a                                    ; $4e6c: $02
    inc e                                         ; $4e6d: $1c
    inc b                                         ; $4e6e: $04
    ld [bc], a                                    ; $4e6f: $02
    dec e                                         ; $4e70: $1d
    ld [$0d1a], sp                                ; $4e71: $08 $1a $0d
    add hl, de                                    ; $4e74: $19
    rrca                                          ; $4e75: $0f
    jr nz, jr_098_4ed9                            ; $4e76: $20 $61

    dec h                                         ; $4e78: $25
    ld h, d                                       ; $4e79: $62
    jp nc, Jump_000_08d0                          ; $4e7a: $d2 $d0 $08

    ret z                                         ; $4e7d: $c8

    nop                                           ; $4e7e: $00
    ld a, l                                       ; $4e7f: $7d
    add b                                         ; $4e80: $80
    ld a, [hl+]                                   ; $4e81: $2a
    ret nc                                        ; $4e82: $d0

    jr nz, @-$40                                  ; $4e83: $20 $be

    ld c, a                                       ; $4e85: $4f
    ld b, c                                       ; $4e86: $41
    ld [$5709], sp                                ; $4e87: $08 $09 $57
    ld bc, $18d0                                  ; $4e8a: $01 $d0 $18
    xor a                                         ; $4e8d: $af
    inc bc                                        ; $4e8e: $03
    xor c                                         ; $4e8f: $a9
    dec bc                                        ; $4e90: $0b

jr_098_4e91:
    inc b                                         ; $4e91: $04
    ld [hl], b                                    ; $4e92: $70
    add b                                         ; $4e93: $80
    cp h                                          ; $4e94: $bc
    dec bc                                        ; $4e95: $0b

jr_098_4e96:
    ld d, l                                       ; $4e96: $55
    rst $38                                       ; $4e97: $ff
    xor d                                         ; $4e98: $aa
    rst $38                                       ; $4e99: $ff
    cp e                                          ; $4e9a: $bb
    inc b                                         ; $4e9b: $04
    ldh a, [rP1]                                  ; $4e9c: $f0 $00
    ld [$10e0], sp                                ; $4e9e: $08 $e0 $10
    ret nz                                        ; $4ea1: $c0

    jr nz, @-$1e                                  ; $4ea2: $20 $e0

    jr nz, jr_098_4e96                            ; $4ea4: $20 $f0

    inc b                                         ; $4ea6: $04
    jr nz, jr_098_4e91                            ; $4ea7: $20 $e8

jr_098_4ea9:
    jr nc, @-$0a                                  ; $4ea9: $30 $f4

    jr jr_098_4f1e                                ; $4eab: $18 $71

    dec b                                         ; $4ead: $05
    rst $38                                       ; $4eae: $ff
    rra                                           ; $4eaf: $1f
    nop                                           ; $4eb0: $00
    pop hl                                        ; $4eb1: $e1
    ld l, $11                                     ; $4eb2: $2e $11
    rlca                                          ; $4eb4: $07
    add hl, bc                                    ; $4eb5: $09
    ld [$1305], a                                 ; $4eb6: $ea $05 $13
    nop                                           ; $4eb9: $00
    db $ed                                        ; $4eba: $ed
    ld [$b8f5], a                                 ; $4ebb: $ea $f5 $b8
    rra                                           ; $4ebe: $1f
    rst $20                                       ; $4ebf: $e7
    ccf                                           ; $4ec0: $3f
    halt                                          ; $4ec1: $76
    nop                                           ; $4ec2: $00
    cpl                                           ; $4ec3: $2f
    rst $20                                       ; $4ec4: $e7
    dec l                                         ; $4ec5: $2d
    ld h, d                                       ; $4ec6: $62
    ld c, h                                       ; $4ec7: $4c
    rst $18                                       ; $4ec8: $df
    ld c, a                                       ; $4ec9: $4f
    jr z, @+$0c                                   ; $4eca: $28 $0a

    ld e, a                                       ; $4ecc: $5f
    ldh a, [$3f]                                  ; $4ecd: $f0 $3f
    jr nz, jr_098_4ef1                            ; $4ecf: $20 $20

    ld sp, $20a6                                  ; $4ed1: $31 $a6 $20
    ld de, $00dd                                  ; $4ed4: $11 $dd $00
    jr nz, jr_098_4ee8                            ; $4ed7: $20 $0f

jr_098_4ed9:
    db $10                                        ; $4ed9: $10
    rlca                                          ; $4eda: $07
    ld [$0403], sp                                ; $4edb: $08 $03 $04
    rlca                                          ; $4ede: $07
    nop                                           ; $4edf: $00
    inc b                                         ; $4ee0: $04
    ld c, $04                                     ; $4ee1: $0e $04
    rla                                           ; $4ee3: $17
    inc c                                         ; $4ee4: $0c
    dec hl                                        ; $4ee5: $2b
    inc e                                         ; $4ee6: $1c
    dec e                                         ; $4ee7: $1d

jr_098_4ee8:
    nop                                           ; $4ee8: $00
    ld hl, sp-$1a                                 ; $4ee9: $f8 $e6
    db $fc                                        ; $4eeb: $fc
    ld l, a                                       ; $4eec: $6f
    db $f4                                        ; $4eed: $f4
    ld [c], a                                     ; $4eee: $e2
    or [hl]                                       ; $4eef: $b6
    ld b, a                                       ; $4ef0: $47

jr_098_4ef1:
    nop                                           ; $4ef1: $00
    ld [hl-], a                                   ; $4ef2: $32

jr_098_4ef3:
    ld a, [$15f2]                                 ; $4ef3: $fa $f2 $15
    ld a, [$fc0e]                                 ; $4ef6: $fa $0e $fc
    ld l, d                                       ; $4ef9: $6a
    nop                                           ; $4efa: $00
    rst $10                                       ; $4efb: $d7
    sub l                                         ; $4efc: $95
    db $eb                                        ; $4efd: $eb
    ret                                           ; $4efe: $c9


    rst $30                                       ; $4eff: $f7
    add c                                         ; $4f00: $81
    rst $38                                       ; $4f01: $ff
    pop bc                                        ; $4f02: $c1
    ld b, b                                       ; $4f03: $40
    rst $38                                       ; $4f04: $ff
    inc b                                         ; $4f05: $04
    jr z, jr_098_4ea9                             ; $4f06: $28 $a1

    rst $38                                       ; $4f08: $ff
    ret nz                                        ; $4f09: $c0

    rst $38                                       ; $4f0a: $ff
    and b                                         ; $4f0b: $a0
    rst $38                                       ; $4f0c: $ff
    ld b, b                                       ; $4f0d: $40
    ret nc                                        ; $4f0e: $d0

    ld a, h                                       ; $4f0f: $7c
    nop                                           ; $4f10: $00
    push de                                       ; $4f11: $d5
    rst $38                                       ; $4f12: $ff
    ld a, [$8eff]                                 ; $4f13: $fa $ff $8e
    ld bc, $de07                                  ; $4f16: $01 $07 $de
    ld bc, $01fa                                  ; $4f19: $01 $fa $01
    ldh a, [rOBP0]                                ; $4f1c: $f0 $48

jr_098_4f1e:
    ld bc, $1908                                  ; $4f1e: $01 $08 $19
    ld hl, sp+$10                                 ; $4f21: $f8 $10
    nop                                           ; $4f23: $00
    rst $18                                       ; $4f24: $df
    cp a                                          ; $4f25: $bf
    ret nz                                        ; $4f26: $c0

    dec a                                         ; $4f27: $3d
    jp $cfb6                                      ; $4f28: $c3 $b6 $cf


    dec de                                        ; $4f2b: $1b
    nop                                           ; $4f2c: $00
    db $fc                                        ; $4f2d: $fc
    xor a                                         ; $4f2e: $af
    ret nc                                        ; $4f2f: $d0

    jr jr_098_4f41                                ; $4f30: $18 $0f

    add hl, de                                    ; $4f32: $19
    ld c, $1d                                     ; $4f33: $0e $1d
    nop                                           ; $4f35: $00
    and $7d                                       ; $4f36: $e6 $7d
    add [hl]                                      ; $4f38: $86
    cp l                                          ; $4f39: $bd
    add $fd                                       ; $4f3a: $c6 $fd
    ld b, $e4                                     ; $4f3c: $06 $e4
    jr jr_098_4f5f                                ; $4f3e: $18 $1f

    add d                                         ; $4f40: $82

jr_098_4f41:
    ld a, a                                       ; $4f41: $7f
    cp d                                          ; $4f42: $ba
    ld [$0a67], sp                                ; $4f43: $08 $67 $0a
    ld bc, $03ff                                  ; $4f46: $01 $ff $03
    add d                                         ; $4f49: $82
    ret nz                                        ; $4f4a: $c0

    nop                                           ; $4f4b: $00
    xor e                                         ; $4f4c: $ab
    rst $38                                       ; $4f4d: $ff
    ld a, $c1                                     ; $4f4e: $3e $c1
    add b                                         ; $4f50: $80
    di                                            ; $4f51: $f3
    rla                                           ; $4f52: $17
    sbc $0e                                       ; $4f53: $de $0e
    pop hl                                        ; $4f55: $e1
    ret nz                                        ; $4f56: $c0

    rst $38                                       ; $4f57: $ff
    sbc $02                                       ; $4f58: $de $02
    nop                                           ; $4f5a: $00
    ret nz                                        ; $4f5b: $c0

    ld [$0fff], sp                                ; $4f5c: $08 $ff $0f

jr_098_4f5f:
    cp l                                          ; $4f5f: $bd
    ld c, $c3                                     ; $4f60: $0e $c3
    add c                                         ; $4f62: $81
    rst $38                                       ; $4f63: $ff
    cp l                                          ; $4f64: $bd
    ld [bc], a                                    ; $4f65: $02
    nop                                           ; $4f66: $00
    inc d                                         ; $4f67: $14
    ld [$1804], sp                                ; $4f68: $08 $04 $18
    ret nz                                        ; $4f6b: $c0

    ret nc                                        ; $4f6c: $d0

    jr @+$1a                                      ; $4f6d: $18 $18

    ld [bc], a                                    ; $4f6f: $02
    jr nc, jr_098_4ef3                            ; $4f70: $30 $81

    ld e, d                                       ; $4f72: $5a
    dec d                                         ; $4f73: $15
    dec de                                        ; $4f74: $1b
    push hl                                       ; $4f75: $e5
    ld a, [bc]                                    ; $4f76: $0a
    dec b                                         ; $4f77: $05
    ld bc, $0907                                  ; $4f78: $01 $07 $09
    ld b, $09                                     ; $4f7b: $06 $09
    rla                                           ; $4f7d: $17
    add hl, bc                                    ; $4f7e: $09
    ld d, $04                                     ; $4f7f: $16 $04
    nop                                           ; $4f81: $00
    ld [$119e], sp                                ; $4f82: $08 $9e $11
    rst $38                                       ; $4f85: $ff
    ld hl, $1d72                                  ; $4f86: $21 $72 $1d
    ld a, e                                       ; $4f89: $7b
    add a                                         ; $4f8a: $87
    inc bc                                        ; $4f8b: $03
    add hl, hl                                    ; $4f8c: $29
    rst $38                                       ; $4f8d: $ff
    ld a, e                                       ; $4f8e: $7b
    ld [bc], a                                    ; $4f8f: $02
    nop                                           ; $4f90: $00
    call nc, Call_098_6350                        ; $4f91: $d4 $50 $63
    ld a, e                                       ; $4f94: $7b
    add h                                         ; $4f95: $84
    add d                                         ; $4f96: $82
    ld [de], a                                    ; $4f97: $12
    sub c                                         ; $4f98: $91
    adc $04                                       ; $4f99: $ce $04
    sub d                                         ; $4f9b: $92
    ld l, l                                       ; $4f9c: $6d
    sub h                                         ; $4f9d: $94
    ld c, $95                                     ; $4f9e: $0e $95
    ld a, a                                       ; $4fa0: $7f
    cp $fa                                        ; $4fa1: $fe $fa
    ld [bc], a                                    ; $4fa3: $02
    ld b, b                                       ; $4fa4: $40
    inc d                                         ; $4fa5: $14
    dec c                                         ; $4fa6: $0d
    dec b                                         ; $4fa7: $05
    ld d, b                                       ; $4fa8: $50
    xor a                                         ; $4fa9: $af
    rst $38                                       ; $4faa: $ff
    ld bc, $01aa                                  ; $4fab: $01 $aa $01
    ld b, b                                       ; $4fae: $40
    ld d, l                                       ; $4faf: $55
    adc $07                                       ; $4fb0: $ce $07
    ld e, e                                       ; $4fb2: $5b
    and h                                         ; $4fb3: $a4
    rst $38                                       ; $4fb4: $ff
    nop                                           ; $4fb5: $00
    inc hl                                        ; $4fb6: $23
    ld e, h                                       ; $4fb7: $5c
    ld b, d                                       ; $4fb8: $42
    ld [$1424], a                                 ; $4fb9: $ea $24 $14
    ld d, a                                       ; $4fbc: $57
    adc c                                         ; $4fbd: $89
    cp $01                                        ; $4fbe: $fe $01
    inc h                                         ; $4fc0: $24
    ld [$f457], sp                                ; $4fc1: $08 $57 $f4
    inc e                                         ; $4fc4: $1c
    nop                                           ; $4fc5: $00
    jr nz, jr_098_4fc8                            ; $4fc6: $20 $00

jr_098_4fc8:
    rrca                                          ; $4fc8: $0f
    ld b, $d1                                     ; $4fc9: $06 $d1
    dec c                                         ; $4fcb: $0d
    ld a, a                                       ; $4fcc: $7f
    ld [bc], a                                    ; $4fcd: $02
    ld [$7dfc], sp                                ; $4fce: $08 $fc $7d
    add hl, hl                                    ; $4fd1: $29
    rst $38                                       ; $4fd2: $ff
    ld a, l                                       ; $4fd3: $7d
    ld c, a                                       ; $4fd4: $4f
    dec b                                         ; $4fd5: $05
    ld sp, hl                                     ; $4fd6: $f9
    ld [bc], a                                    ; $4fd7: $02
    nop                                           ; $4fd8: $00
    cp c                                          ; $4fd9: $b9
    rst $08                                       ; $4fda: $cf
    ld [bc], a                                    ; $4fdb: $02
    nop                                           ; $4fdc: $00
    ld b, c                                       ; $4fdd: $41
    ld c, a                                       ; $4fde: $4f
    ld b, $08                                     ; $4fdf: $06 $08
    add c                                         ; $4fe1: $81
    rst $38                                       ; $4fe2: $ff
    ret nz                                        ; $4fe3: $c0

    cp a                                          ; $4fe4: $bf
    add b                                         ; $4fe5: $80
    inc b                                         ; $4fe6: $04
    jr nz, @+$60                                  ; $4fe7: $20 $5e

    xor d                                         ; $4fe9: $aa
    db $fc                                        ; $4fea: $fc
    dec d                                         ; $4feb: $15
    nop                                           ; $4fec: $00
    ld b, d                                       ; $4fed: $42
    inc b                                         ; $4fee: $04
    ld [hl], c                                    ; $4fef: $71
    rla                                           ; $4ff0: $17
    xor [hl]                                      ; $4ff1: $ae
    ld bc, $003a                                  ; $4ff2: $01 $3a $00
    db $fc                                        ; $4ff5: $fc
    call z, $0802                                 ; $4ff6: $cc $02 $08
    ret nc                                        ; $4ff9: $d0

    dec l                                         ; $4ffa: $2d
    rst $00                                       ; $4ffb: $c7
    rst $38                                       ; $4ffc: $ff
    ld [hl], $00                                  ; $4ffd: $36 $00
    ld [bc], a                                    ; $4fff: $02
    nop                                           ; $5000: $00
    ld sp, hl                                     ; $5001: $f9
    rst $38                                       ; $5002: $ff
    jr nz, jr_098_5056                            ; $5003: $20 $51

    xor a                                         ; $5005: $af
    ld c, d                                       ; $5006: $4a
    jr jr_098_5074                                ; $5007: $18 $6b

    sub h                                         ; $5009: $94
    ld d, [hl]                                    ; $500a: $56
    adc c                                         ; $500b: $89
    ld a, a                                       ; $500c: $7f
    nop                                           ; $500d: $00
    add b                                         ; $500e: $80
    sub $00                                       ; $500f: $d6 $00
    dec hl                                        ; $5011: $2b
    add b                                         ; $5012: $80
    push de                                       ; $5013: $d5
    nop                                           ; $5014: $00
    ld [hl+], a                                   ; $5015: $22
    ld hl, $c980                                  ; $5016: $21 $80 $c9
    ccf                                           ; $5019: $3f
    ld b, $01                                     ; $501a: $06 $01
    rst $38                                       ; $501c: $ff
    add e                                         ; $501d: $83
    ld a, a                                       ; $501e: $7f
    ld l, $09                                     ; $501f: $2e $09
    add c                                         ; $5021: $81
    ld [hl-], a                                   ; $5022: $32
    add hl, bc                                    ; $5023: $09
    pop bc                                        ; $5024: $c1
    cp a                                          ; $5025: $bf
    rst $00                                       ; $5026: $c7
    rst $38                                       ; $5027: $ff
    rst $00                                       ; $5028: $c7
    ld a, a                                       ; $5029: $7f
    ld [bc], a                                    ; $502a: $02
    ld c, b                                       ; $502b: $48
    xor l                                         ; $502c: $ad
    ld a, [hl]                                    ; $502d: $7e
    nop                                           ; $502e: $00
    adc a                                         ; $502f: $8f
    ld [bc], a                                    ; $5030: $02
    ld c, b                                       ; $5031: $48
    inc b                                         ; $5032: $04
    ld d, d                                       ; $5033: $52
    ld b, a                                       ; $5034: $47
    ld e, h                                       ; $5035: $5c
    rrca                                          ; $5036: $0f
    and b                                         ; $5037: $a0
    sub b                                         ; $5038: $90
    rlca                                          ; $5039: $07
    nop                                           ; $503a: $00
    add b                                         ; $503b: $80
    ccf                                           ; $503c: $3f
    rra                                           ; $503d: $1f
    ccf                                           ; $503e: $3f
    ld e, $3c                                     ; $503f: $1e $3c
    inc e                                         ; $5041: $1c
    inc a                                         ; $5042: $3c
    ld [$381d], sp                                ; $5043: $08 $1d $38
    jr jr_098_5080                                ; $5046: $18 $38

    ld c, d                                       ; $5048: $4a
    ld [hl], $1f                                  ; $5049: $36 $1f
    ldh [rNR10], a                                ; $504b: $e0 $10
    add hl, bc                                    ; $504d: $09
    ldh [rNR10], a                                ; $504e: $e0 $10
    rst $28                                       ; $5050: $ef
    rra                                           ; $5051: $1f
    ld a, d                                       ; $5052: $7a
    jr z, jr_098_505e                             ; $5053: $28 $09

    adc a                                         ; $5055: $8f

jr_098_5056:
    ld [bc], a                                    ; $5056: $02
    nop                                           ; $5057: $00
    db $10                                        ; $5058: $10
    rst $38                                       ; $5059: $ff
    add hl, bc                                    ; $505a: $09
    rst $38                                       ; $505b: $ff
    sub b                                         ; $505c: $90
    ccf                                           ; $505d: $3f

jr_098_505e:
    push bc                                       ; $505e: $c5
    nop                                           ; $505f: $00
    ld hl, $0080                                  ; $5060: $21 $80 $00
    adc e                                         ; $5063: $8b
    nop                                           ; $5064: $00
    ld e, $3e                                     ; $5065: $1e $3e
    rra                                           ; $5067: $1f
    ld a, $1e                                     ; $5068: $3e $1e
    inc a                                         ; $506a: $3c
    ld bc, $3818                                  ; $506b: $01 $18 $38
    jr jr_098_50a0                                ; $506e: $18 $30

    add b                                         ; $5070: $80
    ccf                                           ; $5071: $3f
    nop                                           ; $5072: $00
    ld a, [c]                                     ; $5073: $f2

jr_098_5074:
    rlca                                          ; $5074: $07
    ld a, a                                       ; $5075: $7f
    rst $28                                       ; $5076: $ef
    jr c, jr_098_5089                             ; $5077: $38 $10

    inc a                                         ; $5079: $3c
    ld [$1e94], sp                                ; $507a: $08 $94 $1e
    inc [hl]                                      ; $507d: $34
    nop                                           ; $507e: $00
    ld a, [hl-]                                   ; $507f: $3a

jr_098_5080:
    ld [$003e], sp                                ; $5080: $08 $3e $00
    call nz, $1018                                ; $5083: $c4 $18 $10
    ld d, l                                       ; $5086: $55
    add b                                         ; $5087: $80
    xor e                                         ; $5088: $ab

jr_098_5089:
    call z, $f702                                 ; $5089: $cc $02 $f7
    nop                                           ; $508c: $00
    dec a                                         ; $508d: $3d
    add b                                         ; $508e: $80
    nop                                           ; $508f: $00
    ld l, l                                       ; $5090: $6d
    sub d                                         ; $5091: $92
    ld e, e                                       ; $5092: $5b
    and h                                         ; $5093: $a4
    xor a                                         ; $5094: $af
    ret nc                                        ; $5095: $d0

    ld c, [hl]                                    ; $5096: $4e
    or c                                          ; $5097: $b1
    nop                                           ; $5098: $00
    and a                                         ; $5099: $a7
    ret c                                         ; $509a: $d8

    ld c, d                                       ; $509b: $4a
    or l                                          ; $509c: $b5
    add h                                         ; $509d: $84
    ei                                            ; $509e: $fb
    ret nc                                        ; $509f: $d0

jr_098_50a0:
    rst $38                                       ; $50a0: $ff
    ld c, d                                       ; $50a1: $4a
    xor c                                         ; $50a2: $a9
    db $10                                        ; $50a3: $10
    ld d, $a2                                     ; $50a4: $16 $a2
    ld e, l                                       ; $50a6: $5d
    db $10                                        ; $50a7: $10
    ld e, [hl]                                    ; $50a8: $5e
    dec b                                         ; $50a9: $05
    or [hl]                                       ; $50aa: $b6
    rlca                                          ; $50ab: $07
    ld bc, $fc02                                  ; $50ac: $01 $02 $fc
    ld hl, sp-$04                                 ; $50af: $f8 $fc
    ld a, b                                       ; $50b1: $78
    inc a                                         ; $50b2: $3c
    jr c, jr_098_50b7                             ; $50b3: $38 $02

    db $10                                        ; $50b5: $10
    rst $00                                       ; $50b6: $c7

jr_098_50b7:
    db $10                                        ; $50b7: $10
    rst $38                                       ; $50b8: $ff
    db $e3                                        ; $50b9: $e3
    rst $18                                       ; $50ba: $df
    inc b                                         ; $50bb: $04
    ld c, b                                       ; $50bc: $48
    ld a, b                                       ; $50bd: $78
    inc a                                         ; $50be: $3c
    ld a, b                                       ; $50bf: $78
    ld a, h                                       ; $50c0: $7c
    add b                                         ; $50c1: $80
    inc e                                         ; $50c2: $1c
    nop                                           ; $50c3: $00
    inc e                                         ; $50c4: $1c
    jr jr_098_50e3                                ; $50c5: $18 $1c

    ld bc, $00fc                                  ; $50c7: $01 $fc $00
    nop                                           ; $50ca: $00
    ld d, l                                       ; $50cb: $55
    dec b                                         ; $50cc: $05
    cp [hl]                                       ; $50cd: $be
    rla                                           ; $50ce: $17
    ret nz                                        ; $50cf: $c0

    call nz, $a407                                ; $50d0: $c4 $07 $a4
    ret z                                         ; $50d3: $c8

    rlca                                          ; $50d4: $07
    pop de                                        ; $50d5: $d1
    ld [hl], b                                    ; $50d6: $70
    rlca                                          ; $50d7: $07
    ldh [$e5], a                                  ; $50d8: $e0 $e5
    rlca                                          ; $50da: $07
    ld a, h                                       ; $50db: $7c
    ld b, $74                                     ; $50dc: $06 $74
    add hl, hl                                    ; $50de: $29
    pop bc                                        ; $50df: $c1
    cp a                                          ; $50e0: $bf
    rst $38                                       ; $50e1: $ff
    xor a                                         ; $50e2: $af

jr_098_50e3:
    rst $38                                       ; $50e3: $ff
    ld b, d                                       ; $50e4: $42
    dec d                                         ; $50e5: $15
    inc b                                         ; $50e6: $04
    ld c, b                                       ; $50e7: $48
    add e                                         ; $50e8: $83
    rst $38                                       ; $50e9: $ff
    ld b, c                                       ; $50ea: $41
    cp a                                          ; $50eb: $bf
    ld b, b                                       ; $50ec: $40
    add hl, hl                                    ; $50ed: $29
    xor e                                         ; $50ee: $ab
    add b                                         ; $50ef: $80
    adc h                                         ; $50f0: $8c
    rlca                                          ; $50f1: $07
    ld l, a                                       ; $50f2: $6f
    sbc b                                         ; $50f3: $98
    rst $30                                       ; $50f4: $f7
    ld [$8877], sp                                ; $50f5: $08 $77 $88
    ld [$1d00], a                                 ; $50f8: $ea $00 $1d
    ld d, h                                       ; $50fb: $54
    cp e                                          ; $50fc: $bb
    ld c, d                                       ; $50fd: $4a
    cp l                                          ; $50fe: $bd
    ld hl, sp+$1f                                 ; $50ff: $f8 $1f
    ld a, [hl]                                    ; $5101: $7e
    nop                                           ; $5102: $00
    sbc l                                         ; $5103: $9d
    cp c                                          ; $5104: $b9
    rst $00                                       ; $5105: $c7
    ld a, h                                       ; $5106: $7c
    add e                                         ; $5107: $83
    add hl, sp                                    ; $5108: $39
    rst $00                                       ; $5109: $c7
    or l                                          ; $510a: $b5
    nop                                           ; $510b: $00
    jp z, $e4db                                   ; $510c: $ca $db $e4

    call $def6                                    ; $510f: $cd $f6 $de
    push hl                                       ; $5112: $e5
    ret                                           ; $5113: $c9


    nop                                           ; $5114: $00
    or $da                                        ; $5115: $f6 $da
    push hl                                       ; $5117: $e5
    sbc l                                         ; $5118: $9d
    ld [c], a                                     ; $5119: $e2
    xor a                                         ; $511a: $af
    ld d, b                                       ; $511b: $50
    ld d, a                                       ; $511c: $57
    nop                                           ; $511d: $00
    xor b                                         ; $511e: $a8
    xor [hl]                                      ; $511f: $ae
    ld d, c                                       ; $5120: $51
    push hl                                       ; $5121: $e5
    dec de                                        ; $5122: $1b
    call nc, $af3b                                ; $5123: $d4 $3b $af
    nop                                           ; $5126: $00
    ld e, c                                       ; $5127: $59
    ld [hl], $cf                                  ; $5128: $36 $cf
    ld a, d                                       ; $512a: $7a
    add a                                         ; $512b: $87
    cp l                                          ; $512c: $bd
    ld b, d                                       ; $512d: $42
    sbc b                                         ; $512e: $98

Jump_098_512f:
    nop                                           ; $512f: $00
    ld h, a                                       ; $5130: $67
    xor d                                         ; $5131: $aa
    rst $10                                       ; $5132: $d7
    ld d, a                                       ; $5133: $57
    rst $28                                       ; $5134: $ef
    jp nc, $f7ef                                  ; $5135: $d2 $ef $f7

    nop                                           ; $5138: $00
    rst $28                                       ; $5139: $ef
    or e                                          ; $513a: $b3
    rst $08                                       ; $513b: $cf
    ld a, $c1                                     ; $513c: $3e $c1
    ld e, h                                       ; $513e: $5c
    db $e3                                        ; $513f: $e3
    xor l                                         ; $5140: $ad
    nop                                           ; $5141: $00
    db $d3                                        ; $5142: $d3
    pop de                                        ; $5143: $d1
    rst $28                                       ; $5144: $ef
    set 6, a                                      ; $5145: $cb $f7
    db $db                                        ; $5147: $db
    rst $20                                       ; $5148: $e7
    bit 0, b                                      ; $5149: $cb $40
    rst $30                                       ; $514b: $f7
    ld b, h                                       ; $514c: $44
    ld [$1ff8], sp                                ; $514d: $08 $f8 $1f
    ld l, [hl]                                    ; $5150: $6e
    sbc l                                         ; $5151: $9d
    ld a, [$241d]                                 ; $5152: $fa $1d $24
    ld c, [hl]                                    ; $5155: $4e
    cp c                                          ; $5156: $b9
    inc b                                         ; $5157: $04
    ld [$e7dc], sp                                ; $5158: $08 $dc $e7
    ld b, h                                       ; $515b: $44
    nop                                           ; $515c: $00
    rst $20                                       ; $515d: $e7
    adc c                                         ; $515e: $89
    nop                                           ; $515f: $00
    or $9e                                        ; $5160: $f6 $9e
    db $e3                                        ; $5162: $e3
    xor d                                         ; $5163: $aa
    rst $10                                       ; $5164: $d7
    sbc [hl]                                      ; $5165: $9e
    db $e3                                        ; $5166: $e3
    xor e                                         ; $5167: $ab
    nop                                           ; $5168: $00
    rst $10                                       ; $5169: $d7
    ld a, [$461d]                                 ; $516a: $fa $1d $46
    cp c                                          ; $516d: $b9

jr_098_516e:
    ld [de], a                                    ; $516e: $12
    dec e                                         ; $516f: $1d
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    add hl, sp                                    ; $5172: $39
    or b                                          ; $5173: $b0
    ld e, l                                       ; $5174: $5d
    add $39                                       ; $5175: $c6 $39
    adc e                                         ; $5177: $8b
    ld [hl], h                                    ; $5178: $74
    and $02                                       ; $5179: $e6 $02
    add hl, sp                                    ; $517b: $39
    ld l, [hl]                                    ; $517c: $6e
    sbc a                                         ; $517d: $9f
    ld c, $91                                     ; $517e: $0e $91
    nop                                           ; $5180: $00
    ld [bc], a                                    ; $5181: $02
    nop                                           ; $5182: $00
    pop af                                        ; $5183: $f1
    add h                                         ; $5184: $84
    ld d, b                                       ; $5185: $50
    dec b                                         ; $5186: $05
    sbc a                                         ; $5187: $9f
    pop af                                        ; $5188: $f1
    cp a                                          ; $5189: $bf
    pop af                                        ; $518a: $f1
    inc d                                         ; $518b: $14
    ld [$700f], sp                                ; $518c: $08 $0f $70
    nop                                           ; $518f: $00
    ld h, [hl]                                    ; $5190: $66
    add hl, sp                                    ; $5191: $39
    add b                                         ; $5192: $80
    ld [hl], b                                    ; $5193: $70
    nop                                           ; $5194: $00
    pop af                                        ; $5195: $f1
    rst $18                                       ; $5196: $df
    ld h, b                                       ; $5197: $60
    rla                                           ; $5198: $17
    ld c, $f1                                     ; $5199: $0e $f1
    pop de                                        ; $519b: $d1
    or b                                          ; $519c: $b0
    rlca                                          ; $519d: $07
    pop de                                        ; $519e: $d1
    xor [hl]                                      ; $519f: $ae
    dec d                                         ; $51a0: $15
    ld a, d                                       ; $51a1: $7a
    dec e                                         ; $51a2: $1d
    ldh [$1f], a                                  ; $51a3: $e0 $1f
    rlca                                          ; $51a5: $07
    jr nz, @+$13                                  ; $51a6: $20 $11

    cp $ff                                        ; $51a8: $fe $ff
    ld e, $e0                                     ; $51aa: $1e $e0
    rla                                           ; $51ac: $17
    sub b                                         ; $51ad: $90
    dec e                                         ; $51ae: $1d
    ld l, b                                       ; $51af: $68
    rrca                                          ; $51b0: $0f
    ld b, b                                       ; $51b1: $40
    rst $38                                       ; $51b2: $ff
    or h                                          ; $51b3: $b4
    ld b, $fb                                     ; $51b4: $06 $fb
    inc b                                         ; $51b6: $04
    call nc, $be3b                                ; $51b7: $d4 $3b $be
    ld e, c                                       ; $51ba: $59
    nop                                           ; $51bb: $00
    call nc, $b63b                                ; $51bc: $d4 $3b $b6
    ld e, c                                       ; $51bf: $59
    call $b632                                    ; $51c0: $cd $32 $b6
    ld e, c                                       ; $51c3: $59
    nop                                           ; $51c4: $00
    rst $08                                       ; $51c5: $cf
    jr nc, jr_098_516e                            ; $51c6: $30 $a6

    ld e, c                                       ; $51c8: $59
    db $db                                        ; $51c9: $db
    rst $20                                       ; $51ca: $e7
    di                                            ; $51cb: $f3
    rst $28                                       ; $51cc: $ef
    nop                                           ; $51cd: $00
    db $db                                        ; $51ce: $db
    rst $20                                       ; $51cf: $e7
    pop af                                        ; $51d0: $f1
    rst $28                                       ; $51d1: $ef
    ld e, e                                       ; $51d2: $5b
    rst $20                                       ; $51d3: $e7
    push af                                       ; $51d4: $f5
    db $eb                                        ; $51d5: $eb
    add b                                         ; $51d6: $80
    inc b                                         ; $51d7: $04
    jr jr_098_5237                                ; $51d8: $18 $5d

    db $e3                                        ; $51da: $e3
    ld e, e                                       ; $51db: $5b
    rst $20                                       ; $51dc: $e7
    ld d, c                                       ; $51dd: $51
    db $e3                                        ; $51de: $e3
    ld b, c                                       ; $51df: $41
    add b                                         ; $51e0: $80
    ld [$3900], sp                                ; $51e1: $08 $00 $39
    rst $00                                       ; $51e4: $c7
    ld e, l                                       ; $51e5: $5d
    db $e3                                        ; $51e6: $e3
    sbc [hl]                                      ; $51e7: $9e
    db $e3                                        ; $51e8: $e3
    dec hl                                        ; $51e9: $2b
    add b                                         ; $51ea: $80
    sbc b                                         ; $51eb: $98
    nop                                           ; $51ec: $00
    add hl, sp                                    ; $51ed: $39
    rst $00                                       ; $51ee: $c7
    add c                                         ; $51ef: $81
    db $e3                                        ; $51f0: $e3
    inc bc                                        ; $51f1: $03
    push bc                                       ; $51f2: $c5
    sbc l                                         ; $51f3: $9d
    db $10                                        ; $51f4: $10
    db $e3                                        ; $51f5: $e3
    ccf                                           ; $51f6: $3f
    pop bc                                        ; $51f7: $c1
    inc d                                         ; $51f8: $14
    ld [$c718], sp                                ; $51f9: $08 $18 $c7
    ld b, c                                       ; $51fc: $41
    db $e3                                        ; $51fd: $e3
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    jp $c37d                                      ; $5200: $c3 $7d $c3


    inc a                                         ; $5203: $3c
    jp $c13f                                      ; $5204: $c3 $3f $c1


    add b                                         ; $5207: $80
    inc d                                         ; $5208: $14
    ld [$e39c], sp                                ; $5209: $08 $9c $e3
    nop                                           ; $520c: $00
    pop bc                                        ; $520d: $c1
    nop                                           ; $520e: $00
    jp $0822                                      ; $520f: $c3 $22 $08


    pop bc                                        ; $5212: $c1
    cp h                                          ; $5213: $bc
    jp Jump_000_0c3e                              ; $5214: $c3 $3e $0c


Call_098_5217:
    nop                                           ; $5217: $00
    inc e                                         ; $5218: $1c
    pop bc                                        ; $5219: $c1
    add b                                         ; $521a: $80
    nop                                           ; $521b: $00
    pop hl                                        ; $521c: $e1
    inc hl                                        ; $521d: $23
    pop bc                                        ; $521e: $c1
    sbc [hl]                                      ; $521f: $9e
    pop hl                                        ; $5220: $e1
    rst $28                                       ; $5221: $ef
    pop de                                        ; $5222: $d1
    sub h                                         ; $5223: $94
    db $10                                        ; $5224: $10
    db $eb                                        ; $5225: $eb
    pop de                                        ; $5226: $d1
    rst $38                                       ; $5227: $ff
    db $f4                                        ; $5228: $f4
    ld [$e7db], sp                                ; $5229: $08 $db $e7
    adc c                                         ; $522c: $89
    rst $30                                       ; $522d: $f7
    inc b                                         ; $522e: $04
    sbc [hl]                                      ; $522f: $9e
    db $e3                                        ; $5230: $e3
    xor c                                         ; $5231: $a9
    rst $10                                       ; $5232: $d7
    sbc h                                         ; $5233: $9c
    inc b                                         ; $5234: $04
    nop                                           ; $5235: $00
    rst $08                                       ; $5236: $cf

jr_098_5237:
    jr nc, jr_098_5239                            ; $5237: $30 $00

jr_098_5239:
    add $39                                       ; $5239: $c6 $39
    xor a                                         ; $523b: $af
    ld [hl], b                                    ; $523c: $70
    ld b, $39                                     ; $523d: $06 $39
    jr nz, jr_098_52b1                            ; $523f: $20 $70

    nop                                           ; $5241: $00
    ret nc                                        ; $5242: $d0

    add hl, hl                                    ; $5243: $29
    xor a                                         ; $5244: $af
    ld [hl], b                                    ; $5245: $70
    sbc [hl]                                      ; $5246: $9e
    ld h, c                                       ; $5247: $61
    sbc h                                         ; $5248: $9c
    db $e3                                        ; $5249: $e3
    ld b, h                                       ; $524a: $44

jr_098_524b:
    add hl, hl                                    ; $524b: $29
    jr jr_098_524e                                ; $524c: $18 $00

jr_098_524e:
    ld bc, $80c3                                  ; $524e: $01 $c3 $80
    ld c, b                                       ; $5251: $48
    db $10                                        ; $5252: $10
    ccf                                           ; $5253: $3f
    pop bc                                        ; $5254: $c1
    add b                                         ; $5255: $80
    inc d                                         ; $5256: $14
    ld [$f006], sp                                ; $5257: $08 $06 $f0
    ld b, b                                       ; $525a: $40
    ldh [$60], a                                  ; $525b: $e0 $60
    ldh a, [rHDMA1]                               ; $525d: $f0 $51
    ld bc, $dfe0                                  ; $525f: $01 $e0 $df
    ldh [$6f], a                                  ; $5262: $e0 $6f
    ldh a, [$9c]                                  ; $5264: $f0 $9c
    db $e3                                        ; $5266: $e3
    ld d, h                                       ; $5267: $54
    ld [$6080], sp                                ; $5268: $08 $80 $60
    nop                                           ; $526b: $00
    db $e3                                        ; $526c: $e3
    ld l, $d1                                     ; $526d: $2e $d1
    sbc [hl]                                      ; $526f: $9e
    pop hl                                        ; $5270: $e1
    ld l, $d1                                     ; $5271: $2e $d1
    nop                                           ; $5273: $00
    rst $18                                       ; $5274: $df
    ldh [$ee], a                                  ; $5275: $e0 $ee
    ldh a, [$c0]                                  ; $5277: $f0 $c0
    ldh [$e1], a                                  ; $5279: $e0 $e1
    ldh a, [rP1]                                  ; $527b: $f0 $00
    rst $10                                       ; $527d: $d7
    add sp, -$12                                  ; $527e: $e8 $ee
    pop af                                        ; $5280: $f1
    push de                                       ; $5281: $d5
    ld [$f5aa], a                                 ; $5282: $ea $aa $f5
    nop                                           ; $5285: $00
    jr jr_098_524b                                ; $5286: $18 $c3

    ld bc, $0081                                  ; $5288: $01 $81 $00
    jp $817f                                      ; $528b: $c3 $7f $81


    ld b, b                                       ; $528e: $40
    inc a                                         ; $528f: $3c
    inc b                                         ; $5290: $04
    db $10                                        ; $5291: $10
    add hl, sp                                    ; $5292: $39
    rst $00                                       ; $5293: $c7
    rst $18                                       ; $5294: $df
    ld h, b                                       ; $5295: $60
    inc c                                         ; $5296: $0c
    ldh a, [rP1]                                  ; $5297: $f0 $00
    ret nz                                        ; $5299: $c0

    ld h, b                                       ; $529a: $60
    ld [hl+], a                                   ; $529b: $22
    pop de                                        ; $529c: $d1
    sbc a                                         ; $529d: $9f
    ldh [$ae], a                                  ; $529e: $e0 $ae
    pop de                                        ; $52a0: $d1
    nop                                           ; $52a1: $00
    sub l                                         ; $52a2: $95
    ld [$f5ca], a                                 ; $52a3: $ea $ca $f5
    adc b                                         ; $52a6: $88
    pop hl                                        ; $52a7: $e1
    nop                                           ; $52a8: $00
    pop de                                        ; $52a9: $d1
    ld bc, $e380                                  ; $52aa: $01 $80 $e3
    cpl                                           ; $52ad: $2f
    pop de                                        ; $52ae: $d1
    sbc h                                         ; $52af: $9c
    db $e3                                        ; $52b0: $e3

jr_098_52b1:
    rst $28                                       ; $52b1: $ef
    inc b                                         ; $52b2: $04
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    db $d3                                        ; $52b5: $d3
    rst $38                                       ; $52b6: $ff
    rst $28                                       ; $52b7: $ef
    pop af                                        ; $52b8: $f1
    pop hl                                        ; $52b9: $e1
    pop af                                        ; $52ba: $f1
    ld h, c                                       ; $52bb: $61
    sub c                                         ; $52bc: $91
    dec b                                         ; $52bd: $05
    add hl, bc                                    ; $52be: $09
    sub c                                         ; $52bf: $91
    rra                                           ; $52c0: $1f
    sbc a                                         ; $52c1: $9f
    ld de, $0117                                  ; $52c2: $11 $17 $01
    sub l                                         ; $52c5: $95
    ld h, [hl]                                    ; $52c6: $66
    rlca                                          ; $52c7: $07
    ret nz                                        ; $52c8: $c0

    ld l, e                                       ; $52c9: $6b
    inc de                                        ; $52ca: $13
    dec b                                         ; $52cb: $05
    jr @+$01                                      ; $52cc: $18 $ff

    rst $38                                       ; $52ce: $ff
    ld b, b                                       ; $52cf: $40
    add e                                         ; $52d0: $83
    rst $38                                       ; $52d1: $ff
    dec a                                         ; $52d2: $3d
    db $10                                        ; $52d3: $10
    jp $a15f                                      ; $52d4: $c3 $5f $a1


    inc b                                         ; $52d7: $04
    jr c, @+$01                                   ; $52d8: $38 $ff

    rst $38                                       ; $52da: $ff
    add [hl]                                      ; $52db: $86
    ld sp, hl                                     ; $52dc: $f9
    ld sp, $f50b                                  ; $52dd: $31 $0b $f5
    inc b                                         ; $52e0: $04
    jr c, @+$1e                                   ; $52e1: $38 $1c

    jr jr_098_52e6                                ; $52e3: $18 $01

    rst $38                                       ; $52e5: $ff

jr_098_52e6:
    dec e                                         ; $52e6: $1d
    inc c                                         ; $52e7: $0c
    ld bc, $5d08                                  ; $52e8: $01 $08 $5d
    and e                                         ; $52eb: $a3
    ccf                                           ; $52ec: $3f
    pop bc                                        ; $52ed: $c1
    inc e                                         ; $52ee: $1c
    ld [$fd83], sp                                ; $52ef: $08 $83 $fd
    add d                                         ; $52f2: $82
    rlca                                          ; $52f3: $07
    db $fd                                        ; $52f4: $fd
    add a                                         ; $52f5: $87
    ld sp, hl                                     ; $52f6: $f9
    adc d                                         ; $52f7: $8a
    push af                                       ; $52f8: $f5
    inc b                                         ; $52f9: $04
    ld [$0814], sp                                ; $52fa: $08 $14 $08
    inc b                                         ; $52fd: $04
    jr jr_098_5310                                ; $52fe: $18 $10

    ld a, e                                       ; $5300: $7b
    db $fd                                        ; $5301: $fd
    db $fd                                        ; $5302: $fd
    ldh a, [rTAC]                                 ; $5303: $f0 $07
    adc e                                         ; $5305: $8b
    push af                                       ; $5306: $f5
    ld b, $f9                                     ; $5307: $06 $f9
    ret nz                                        ; $5309: $c0

    inc b                                         ; $530a: $04
    jr jr_098_5335                                ; $530b: $18 $28

    ld [$ffc0], sp                                ; $530d: $08 $c0 $ff

jr_098_5310:
    ld b, b                                       ; $5310: $40
    rst $38                                       ; $5311: $ff
    ld [bc], a                                    ; $5312: $02
    db $fd                                        ; $5313: $fd
    ld a, [hl+]                                   ; $5314: $2a
    ld e, a                                       ; $5315: $5f
    and b                                         ; $5316: $a0
    ldh [$0b], a                                  ; $5317: $e0 $0b
    ld d, a                                       ; $5319: $57
    db $ec                                        ; $531a: $ec
    inc de                                        ; $531b: $13
    db $f4                                        ; $531c: $f4
    add b                                         ; $531d: $80
    dec b                                         ; $531e: $05
    ld bc, $ff28                                  ; $531f: $01 $28 $ff
    ld e, [hl]                                    ; $5322: $5e
    ld l, b                                       ; $5323: $68
    rlca                                          ; $5324: $07
    ld b, c                                       ; $5325: $41
    adc d                                         ; $5326: $8a
    dec b                                         ; $5327: $05
    db $fd                                        ; $5328: $fd
    ld [bc], a                                    ; $5329: $02
    dec bc                                        ; $532a: $0b
    call nz, $0753                                ; $532b: $c4 $53 $07
    xor b                                         ; $532e: $a8
    dec c                                         ; $532f: $0d
    push de                                       ; $5330: $d5
    rst $38                                       ; $5331: $ff
    ld a, [hl]                                    ; $5332: $7e
    sbc d                                         ; $5333: $9a
    dec b                                         ; $5334: $05

jr_098_5335:
    ld b, b                                       ; $5335: $40
    cp a                                          ; $5336: $bf
    nop                                           ; $5337: $00
    dec b                                         ; $5338: $05
    ld a, [$40bf]                                 ; $5339: $fa $bf $40
    ld a, [bc]                                    ; $533c: $0a
    push af                                       ; $533d: $f5
    nop                                           ; $533e: $00
    rst $38                                       ; $533f: $ff
    db $10                                        ; $5340: $10
    ld [bc], a                                    ; $5341: $02
    rst $38                                       ; $5342: $ff
    ld e, a                                       ; $5343: $5f
    nop                                           ; $5344: $00
    inc bc                                        ; $5345: $03
    and c                                         ; $5346: $a1
    cp $82                                        ; $5347: $fe $82
    ld a, l                                       ; $5349: $7d
    adc b                                         ; $534a: $88
    inc e                                         ; $534b: $1c
    inc c                                         ; $534c: $0c
    dec b                                         ; $534d: $05
    rst $38                                       ; $534e: $ff
    cp a                                          ; $534f: $bf
    sbc d                                         ; $5350: $9a
    rlca                                          ; $5351: $07
    ld bc, $affe                                  ; $5352: $01 $fe $af
    ld [bc], a                                    ; $5355: $02
    ld d, b                                       ; $5356: $50
    ld sp, hl                                     ; $5357: $f9
    rlca                                          ; $5358: $07
    ld bc, $0bff                                  ; $5359: $01 $ff $0b
    jp c, $ff05                                   ; $535c: $da $05 $ff

    nop                                           ; $535f: $00
    rst $38                                       ; $5360: $ff
    jp hl                                         ; $5361: $e9


    rst $38                                       ; $5362: $ff
    ld [hl], l                                    ; $5363: $75
    adc e                                         ; $5364: $8b
    and c                                         ; $5365: $a1
    ld e, a                                       ; $5366: $5f
    push af                                       ; $5367: $f5
    ld b, b                                       ; $5368: $40
    rst $38                                       ; $5369: $ff
    xor e                                         ; $536a: $ab
    inc b                                         ; $536b: $04
    rst $38                                       ; $536c: $ff
    dec b                                         ; $536d: $05
    cp $18                                        ; $536e: $fe $18
    rst $38                                       ; $5370: $ff
    ld h, [hl]                                    ; $5371: $66
    jr nz, @+$01                                  ; $5372: $20 $ff

    ld hl, sp-$7a                                 ; $5374: $f8 $86
    dec b                                         ; $5376: $05
    and b                                         ; $5377: $a0
    ld e, a                                       ; $5378: $5f
    ld a, [bc]                                    ; $5379: $0a
    push af                                       ; $537a: $f5
    db $fd                                        ; $537b: $fd
    inc b                                         ; $537c: $04
    ld [bc], a                                    ; $537d: $02
    ld d, b                                       ; $537e: $50
    xor a                                         ; $537f: $af
    add b                                         ; $5380: $80
    ld a, a                                       ; $5381: $7f
    ld d, h                                       ; $5382: $54
    inc c                                         ; $5383: $0c
    and b                                         ; $5384: $a0
    rst $38                                       ; $5385: $ff
    nop                                           ; $5386: $00
    dec d                                         ; $5387: $15
    db $eb                                        ; $5388: $eb
    xor b                                         ; $5389: $a8
    ld d, a                                       ; $538a: $57
    ld hl, $10ff                                  ; $538b: $21 $ff $10
    rst $38                                       ; $538e: $ff
    ld e, h                                       ; $538f: $5c
    ld l, l                                       ; $5390: $6d
    ret nc                                        ; $5391: $d0

    rlca                                          ; $5392: $07
    rlca                                          ; $5393: $07
    ld d, h                                       ; $5394: $54
    dec b                                         ; $5395: $05
    ld c, [hl]                                    ; $5396: $4e
    dec b                                         ; $5397: $05
    cp b                                          ; $5398: $b8
    inc b                                         ; $5399: $04
    di                                            ; $539a: $f3
    rrca                                          ; $539b: $0f
    nop                                           ; $539c: $00
    add sp, $1f                                   ; $539d: $e8 $1f
    push de                                       ; $539f: $d5
    ld a, [hl+]                                   ; $53a0: $2a
    adc d                                         ; $53a1: $8a
    ld a, l                                       ; $53a2: $7d
    ld [hl], a                                    ; $53a3: $77
    adc h                                         ; $53a4: $8c
    nop                                           ; $53a5: $00
    ld b, $fe                                     ; $53a6: $06 $fe
    db $fd                                        ; $53a8: $fd
    inc bc                                        ; $53a9: $03
    db $fc                                        ; $53aa: $fc
    ld [bc], a                                    ; $53ab: $02
    sbc l                                         ; $53ac: $9d
    db $e3                                        ; $53ad: $e3
    nop                                           ; $53ae: $00
    inc l                                         ; $53af: $2c
    ld a, [c]                                     ; $53b0: $f2
    ld d, l                                       ; $53b1: $55
    cp e                                          ; $53b2: $bb
    and h                                         ; $53b3: $a4
    ld e, d                                       ; $53b4: $5a
    db $dd                                        ; $53b5: $dd
    dec hl                                        ; $53b6: $2b

jr_098_53b7:
    nop                                           ; $53b7: $00
    or a                                          ; $53b8: $b7
    ld a, h                                       ; $53b9: $7c
    add e                                         ; $53ba: $83
    ld b, b                                       ; $53bb: $40

jr_098_53bc:
    cpl                                           ; $53bc: $2f
    ldh a, [$e5]                                  ; $53bd: $f0 $e5
    ei                                            ; $53bf: $fb
    nop                                           ; $53c0: $00
    rst $20                                       ; $53c1: $e7

jr_098_53c2:
    dec sp                                        ; $53c2: $3b
    push af                                       ; $53c3: $f5
    dec hl                                        ; $53c4: $2b
    rst $18                                       ; $53c5: $df
    jr nz, jr_098_53b7                            ; $53c6: $20 $ef

    stop                                          ; $53c8: $10 $00
    db $ec                                        ; $53ca: $ec
    ld a, [de]                                    ; $53cb: $1a
    db $fd                                        ; $53cc: $fd
    dec bc                                        ; $53cd: $0b
    db $fc                                        ; $53ce: $fc
    ld a, [bc]                                    ; $53cf: $0a
    ld a, l                                       ; $53d0: $7d
    adc e                                         ; $53d1: $8b
    nop                                           ; $53d2: $00
    db $fc                                        ; $53d3: $fc
    adc d                                         ; $53d4: $8a
    ld a, l                                       ; $53d5: $7d
    adc e                                         ; $53d6: $8b
    db $f4                                        ; $53d7: $f4
    ld a, [bc]                                    ; $53d8: $0a
    db $ed                                        ; $53d9: $ed
    inc de                                        ; $53da: $13
    ld b, h                                       ; $53db: $44
    ld [$158e], a                                 ; $53dc: $ea $8e $15
    rst $38                                       ; $53df: $ff
    rst $38                                       ; $53e0: $ff
    rst $30                                       ; $53e1: $f7
    inc b                                         ; $53e2: $04
    jr nz, jr_098_53c2                            ; $53e3: $20 $dd

    rst $38                                       ; $53e5: $ff
    ld b, [hl]                                    ; $53e6: $46
    rst $28                                       ; $53e7: $ef
    sbc b                                         ; $53e8: $98
    dec b                                         ; $53e9: $05
    xor $ff                                       ; $53ea: $ee $ff
    rst $18                                       ; $53ec: $df
    xor [hl]                                      ; $53ed: $ae
    inc bc                                        ; $53ee: $03
    inc b                                         ; $53ef: $04
    ld [$2e55], sp                                ; $53f0: $08 $55 $2e
    rst $38                                       ; $53f3: $ff
    db $eb                                        ; $53f4: $eb
    ld a, [$ef07]                                 ; $53f5: $fa $07 $ef
    inc b                                         ; $53f8: $04
    db $10                                        ; $53f9: $10
    ld b, $08                                     ; $53fa: $06 $08
    ld e, b                                       ; $53fc: $58

jr_098_53fd:
    dec b                                         ; $53fd: $05
    add b                                         ; $53fe: $80
    nop                                           ; $53ff: $00
    ld d, l                                       ; $5400: $55
    add b                                         ; $5401: $80
    xor b                                         ; $5402: $a8
    add d                                         ; $5403: $82
    nop                                           ; $5404: $00
    add b                                         ; $5405: $80
    push de                                       ; $5406: $d5
    add b                                         ; $5407: $80
    ld [$802a], sp                                ; $5408: $08 $2a $80
    add b                                         ; $540b: $80
    add l                                         ; $540c: $85
    ldh [rIF], a                                  ; $540d: $e0 $0f
    ld b, b                                       ; $540f: $40
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    jr nz, jr_098_53bc                            ; $5412: $20 $a8

    ld [bc], a                                    ; $5414: $02
    and $07                                       ; $5415: $e6 $07
    and b                                         ; $5417: $a0
    nop                                           ; $5418: $00
    ld [bc], a                                    ; $5419: $02
    ld d, c                                       ; $541a: $51
    rst $38                                       ; $541b: $ff
    ld b, b                                       ; $541c: $40
    nop                                           ; $541d: $00
    db $e3                                        ; $541e: $e3
    rlca                                          ; $541f: $07
    nop                                           ; $5420: $00
    ld bc, $8000                                  ; $5421: $01 $00 $80
    ld a, [bc]                                    ; $5424: $0a
    ld d, l                                       ; $5425: $55
    adc h                                         ; $5426: $8c
    adc d                                         ; $5427: $8a
    inc b                                         ; $5428: $04
    nop                                           ; $5429: $00
    jp Jump_000_0cff                              ; $542a: $c3 $ff $0c


    nop                                           ; $542d: $00
    ld [hl+], a                                   ; $542e: $22
    nop                                           ; $542f: $00
    dec d                                         ; $5430: $15
    nop                                           ; $5431: $00
    ld bc, $55a0                                  ; $5432: $01 $a0 $55
    nop                                           ; $5435: $00
    ld a, [hl+]                                   ; $5436: $2a
    nop                                           ; $5437: $00
    ld b, b                                       ; $5438: $40
    add l                                         ; $5439: $85
    cp $07                                        ; $543a: $fe $07
    or b                                          ; $543c: $b0
    halt                                          ; $543d: $76
    dec b                                         ; $543e: $05
    dec d                                         ; $543f: $15
    ld b, h                                       ; $5440: $44
    rlca                                          ; $5441: $07
    ld [$0108], sp                                ; $5442: $08 $08 $01
    ld d, c                                       ; $5445: $51
    inc b                                         ; $5446: $04
    add b                                         ; $5447: $80
    ret nc                                        ; $5448: $d0

    ld [c], a                                     ; $5449: $e2
    dec bc                                        ; $544a: $0b
    inc b                                         ; $544b: $04
    jr c, @+$52                                   ; $544c: $38 $50

    ld h, b                                       ; $544e: $60
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    push de                                       ; $5451: $d5
    xor b                                         ; $5452: $a8
    add b                                         ; $5453: $80
    ld [$8106], sp                                ; $5454: $08 $06 $81
    ldh a, [$8f]                                  ; $5457: $f0 $8f
    rst $20                                       ; $5459: $e7
    rlca                                          ; $545a: $07
    ldh a, [$08]                                  ; $545b: $f0 $08
    rlca                                          ; $545d: $07

jr_098_545e:
    nop                                           ; $545e: $00
    and b                                         ; $545f: $a0
    ld e, $01                                     ; $5460: $1e $01
    jr c, @-$77                                   ; $5462: $38 $87

    ld h, b                                       ; $5464: $60
    rra                                           ; $5465: $1f
    ret nz                                        ; $5466: $c0

    ld b, b                                       ; $5467: $40
    ccf                                           ; $5468: $3f
    inc bc                                        ; $5469: $03
    ld de, $c328                                  ; $546a: $11 $28 $c3
    ld d, [hl]                                    ; $546d: $56
    ld b, d                                       ; $546e: $42
    ld b, d                                       ; $546f: $42
    jp $8100                                      ; $5470: $c3 $00 $81


    add c                                         ; $5473: $81
    jp Jump_000_2481                              ; $5474: $c3 $81 $24


    jp Jump_098_7e00                              ; $5477: $c3 $00 $7e


    jr nz, jr_098_53fd                            ; $547a: $20 $81

    inc a                                         ; $547c: $3c
    ld a, $38                                     ; $547d: $3e $38
    call nz, Call_000_2000                        ; $547f: $c4 $00 $20
    add b                                         ; $5482: $80
    adc d                                         ; $5483: $8a
    ld [$cf00], sp                                ; $5484: $08 $00 $cf
    add b                                         ; $5487: $80
    cp a                                          ; $5488: $bf
    sbc $07                                       ; $5489: $de $07
    or b                                          ; $548b: $b0
    ret nz                                        ; $548c: $c0

    cp b                                          ; $548d: $b8
    rrca                                          ; $548e: $0f
    ret nc                                        ; $548f: $d0

    xor a                                         ; $5490: $af
    ret nc                                        ; $5491: $d0

    cp e                                          ; $5492: $bb
    inc b                                         ; $5493: $04
    nop                                           ; $5494: $00
    adc c                                         ; $5495: $89
    dec d                                         ; $5496: $15
    adc d                                         ; $5497: $8a
    ld [$1d93], sp                                ; $5498: $08 $93 $1d
    jr nz, jr_098_549d                            ; $549b: $20 $00

jr_098_549d:
    jp Jump_000_159b                              ; $549d: $c3 $9b $15


    inc a                                         ; $54a0: $3c
    nop                                           ; $54a1: $00
    ld e, [hl]                                    ; $54a2: $5e
    inc h                                         ; $54a3: $24
    db $db                                        ; $54a4: $db
    ld e, a                                       ; $54a5: $5f

jr_098_54a6:
    inc h                                         ; $54a6: $24
    inc b                                         ; $54a7: $04
    ld [$2855], sp                                ; $54a8: $08 $55 $28
    ld b, $c0                                     ; $54ab: $06 $c0
    ld c, h                                       ; $54ad: $4c
    inc [hl]                                      ; $54ae: $34
    ld [$4804], sp                                ; $54af: $08 $04 $48
    ld b, b                                       ; $54b2: $40
    jr jr_098_54a6                                ; $54b3: $18 $f1

    ld b, $38                                     ; $54b5: $06 $38
    jr c, jr_098_54e1                             ; $54b7: $38 $28

    ld b, b                                       ; $54b9: $40
    jr z, @+$32                                   ; $54ba: $28 $30

    jr c, jr_098_545e                             ; $54bc: $38 $a0

    rst $18                                       ; $54be: $df
    cp a                                          ; $54bf: $bf
    ld [$0007], sp                                ; $54c0: $08 $07 $00
    ei                                            ; $54c3: $fb

jr_098_54c4:
    rlca                                          ; $54c4: $07
    db $fc                                        ; $54c5: $fc
    ld b, $fe                                     ; $54c6: $06 $fe

jr_098_54c8:
    rlca                                          ; $54c8: $07
    ei                                            ; $54c9: $fb
    rlca                                          ; $54ca: $07
    ret nz                                        ; $54cb: $c0

    ld [$0d01], sp                                ; $54cc: $08 $01 $0d
    ld d, $5e                                     ; $54cf: $16 $5e
    and l                                         ; $54d1: $a5
    db $db                                        ; $54d2: $db
    and l                                         ; $54d3: $a5
    rst $18                                       ; $54d4: $df
    and l                                         ; $54d5: $a5
    nop                                           ; $54d6: $00
    ld e, d                                       ; $54d7: $5a
    and l                                         ; $54d8: $a5
    ld e, [hl]                                    ; $54d9: $5e
    inc h                                         ; $54da: $24
    jr jr_098_54c4                                ; $54db: $18 $e7

    rst $38                                       ; $54dd: $ff
    rst $20                                       ; $54de: $e7
    nop                                           ; $54df: $00
    rst $38                                       ; $54e0: $ff

jr_098_54e1:
    nop                                           ; $54e1: $00
    ld [de], a                                    ; $54e2: $12
    ldh [rP1], a                                  ; $54e3: $e0 $00
    ld a, b                                       ; $54e5: $78
    add d                                         ; $54e6: $82
    inc e                                         ; $54e7: $1c
    ld bc, $06e1                                  ; $54e8: $01 $e1 $06
    ld hl, sp+$03                                 ; $54eb: $f8 $03
    db $fc                                        ; $54ed: $fc
    ld bc, $72fe                                  ; $54ee: $01 $fe $72
    ld b, $40                                     ; $54f1: $06 $40
    and b                                         ; $54f3: $a0
    db $10                                        ; $54f4: $10
    ld de, $0155                                  ; $54f5: $11 $55 $01
    ld l, d                                       ; $54f8: $6a
    add c                                         ; $54f9: $81
    rrca                                          ; $54fa: $0f
    pop af                                        ; $54fb: $f1
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    ld a, a                                       ; $54fe: $7f
    add b                                         ; $54ff: $80

Call_098_5500:
    rrca                                          ; $5500: $0f
    di                                            ; $5501: $f3
    ld bc, $03fd                                  ; $5502: $01 $fd $03
    nop                                           ; $5505: $00
    db $fd                                        ; $5506: $fd
    inc bc                                        ; $5507: $03
    dec c                                         ; $5508: $0d
    inc bc                                        ; $5509: $03
    dec d                                         ; $550a: $15
    dec bc                                        ; $550b: $0b
    push af                                       ; $550c: $f5
    dec bc                                        ; $550d: $0b
    ld b, c                                       ; $550e: $41
    push de                                       ; $550f: $d5
    inc b                                         ; $5510: $04
    add b                                         ; $5511: $80
    rst $18                                       ; $5512: $df
    ldh [$3f], a                                  ; $5513: $e0 $3f
    and b                                         ; $5515: $a0
    cp a                                          ; $5516: $bf
    ld e, d                                       ; $5517: $5a
    inc bc                                        ; $5518: $03
    ret nz                                        ; $5519: $c0

    ld h, b                                       ; $551a: $60
    jr z, jr_098_5541                             ; $551b: $28 $24

    jr c, jr_098_5524                             ; $551d: $38 $05

    ei                                            ; $551f: $fb
    db $fd                                        ; $5520: $fd
    ei                                            ; $5521: $fb
    db $fd                                        ; $5522: $fd
    inc bc                                        ; $5523: $03

jr_098_5524:
    cp $fc                                        ; $5524: $fe $fc
    ld c, b                                       ; $5526: $48
    nop                                           ; $5527: $00
    add hl, de                                    ; $5528: $19
    db $fc                                        ; $5529: $fc
    jr c, jr_098_54c8                             ; $552a: $38 $9c

    ld [$48fc], sp                                ; $552c: $08 $fc $48
    sbc h                                         ; $552f: $9c
    ld [$48bc], sp                                ; $5530: $08 $bc $48
    cp a                                          ; $5533: $bf
    rra                                           ; $5534: $1f
    ret nz                                        ; $5535: $c0

    add b                                         ; $5536: $80
    rst $38                                       ; $5537: $ff
    cp h                                          ; $5538: $bc
    ld c, b                                       ; $5539: $48
    call nz, $bc08                                ; $553a: $c4 $08 $bc
    ld c, b                                       ; $553d: $48
    call nc, Call_098_4c10                        ; $553e: $d4 $10 $4c

jr_098_5541:
    ld b, c                                       ; $5541: $41
    ld hl, sp-$74                                 ; $5542: $f8 $8c
    ld [$68ac], sp                                ; $5544: $08 $ac $68
    sbc h                                         ; $5547: $9c
    ld c, b                                       ; $5548: $48
    inc b                                         ; $5549: $04
    add hl, bc                                    ; $554a: $09
    sbc h                                         ; $554b: $9c
    ld c, b                                       ; $554c: $48
    db $fd                                        ; $554d: $fd
    inc bc                                        ; $554e: $03
    ld bc, $ff00                                  ; $554f: $01 $00 $ff
    jr nz, jr_098_5565                            ; $5552: $20 $11

    dec sp                                        ; $5554: $3b
    dec bc                                        ; $5555: $0b
    ld b, d                                       ; $5556: $42
    rst $38                                       ; $5557: $ff
    ld bc, $8360                                  ; $5558: $01 $60 $83
    rst $38                                       ; $555b: $ff
    pop bc                                        ; $555c: $c1
    cp a                                          ; $555d: $bf
    inc b                                         ; $555e: $04
    ld c, b                                       ; $555f: $48
    adc d                                         ; $5560: $8a
    nop                                           ; $5561: $00
    ld [hl], l                                    ; $5562: $75
    ld d, l                                       ; $5563: $55
    xor d                                         ; $5564: $aa

jr_098_5565:
    rst $38                                       ; $5565: $ff
    nop                                           ; $5566: $00
    rst $10                                       ; $5567: $d7
    nop                                           ; $5568: $00
    ld l, d                                       ; $5569: $6a
    nop                                           ; $556a: $00
    nop                                           ; $556b: $00
    push de                                       ; $556c: $d5
    nop                                           ; $556d: $00
    jr z, jr_098_5570                             ; $556e: $28 $00

jr_098_5570:
    ld b, d                                       ; $5570: $42
    nop                                           ; $5571: $00
    add d                                         ; $5572: $82
    nop                                           ; $5573: $00
    ld a, l                                       ; $5574: $7d
    ld d, l                                       ; $5575: $55
    xor d                                         ; $5576: $aa
    ld a, a                                       ; $5577: $7f
    nop                                           ; $5578: $00
    db $db                                        ; $5579: $db
    nop                                           ; $557a: $00
    xor a                                         ; $557b: $af
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    dec d                                         ; $557e: $15
    nop                                           ; $557f: $00
    ld b, b                                       ; $5580: $40
    nop                                           ; $5581: $00
    ld [bc], a                                    ; $5582: $02
    nop                                           ; $5583: $00

jr_098_5584:
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    ldh a, [rNR10]                                ; $5586: $f0 $10
    ld [$0408], sp                                ; $5588: $08 $08 $04
    ld [bc], a                                    ; $558b: $02
    inc b                                         ; $558c: $04
    dec b                                         ; $558d: $05
    nop                                           ; $558e: $00
    ld [bc], a                                    ; $558f: $02
    sbc b                                         ; $5590: $98
    rlca                                          ; $5591: $07
    pop af                                        ; $5592: $f1
    ld c, $87                                     ; $5593: $0e $87
    ld a, h                                       ; $5595: $7c
    ld [$0040], sp                                ; $5596: $08 $40 $00
    ld bc, $4408                                  ; $5599: $01 $08 $44
    jr c, jr_098_55d7                             ; $559c: $38 $39

    add $82                                       ; $559e: $c6 $82
    ld bc, $0100                                  ; $55a0: $01 $00 $01
    nop                                           ; $55a3: $00
    add c                                         ; $55a4: $81
    nop                                           ; $55a5: $00
    dec a                                         ; $55a6: $3d
    or $e4                                        ; $55a7: $f6 $e4
    rst $00                                       ; $55a9: $c7
    ld [$0306], sp                                ; $55aa: $08 $06 $03
    inc bc                                        ; $55ad: $03
    ld bc, $1017                                  ; $55ae: $01 $17 $10
    nop                                           ; $55b1: $00
    inc b                                         ; $55b2: $04
    inc bc                                        ; $55b3: $03
    nop                                           ; $55b4: $00
    jp Jump_098_7e00                              ; $55b5: $c3 $00 $7e


    add c                                         ; $55b8: $81
    ld bc, $ffff                                  ; $55b9: $01 $ff $ff
    cp $00                                        ; $55bc: $fe $00
    ld d, l                                       ; $55be: $55
    ld [hl+], a                                   ; $55bf: $22
    inc sp                                        ; $55c0: $33
    ld b, c                                       ; $55c1: $41
    rst $18                                       ; $55c2: $df
    ld h, c                                       ; $55c3: $61
    inc hl                                        ; $55c4: $23
    db $fd                                        ; $55c5: $fd
    nop                                           ; $55c6: $00
    ld a, [bc]                                    ; $55c7: $0a
    inc b                                         ; $55c8: $04
    inc b                                         ; $55c9: $04
    ld [$0814], sp                                ; $55ca: $08 $14 $08
    xor [hl]                                      ; $55cd: $ae
    stop                                          ; $55ce: $10 $00
    ld d, a                                       ; $55d0: $57
    jr jr_098_5584                                ; $55d1: $18 $b1

    ld e, $ec                                     ; $55d3: $1e $ec
    rra                                           ; $55d5: $1f
    db $eb                                        ; $55d6: $eb

jr_098_55d7:
    rla                                           ; $55d7: $17
    nop                                           ; $55d8: $00
    cpl                                           ; $55d9: $2f
    ld e, $08                                     ; $55da: $1e $08
    ld b, $05                                     ; $55dc: $06 $05
    ld [bc], a                                    ; $55de: $02
    ld b, $01                                     ; $55df: $06 $01
    nop                                           ; $55e1: $00
    call Call_098_7903                            ; $55e2: $cd $03 $79
    add a                                         ; $55e5: $87
    inc bc                                        ; $55e6: $03
    cp $fc                                        ; $55e7: $fe $fc
    rst $38                                       ; $55e9: $ff
    nop                                           ; $55ea: $00
    and b                                         ; $55eb: $a0
    ld e, a                                       ; $55ec: $5f
    ld d, l                                       ; $55ed: $55
    xor d                                         ; $55ee: $aa
    rst $30                                       ; $55ef: $f7
    nop                                           ; $55f0: $00
    rst $18                                       ; $55f1: $df
    nop                                           ; $55f2: $00
    nop                                           ; $55f3: $00
    ei                                            ; $55f4: $fb
    nop                                           ; $55f5: $00
    ld [hl], l                                    ; $55f6: $75
    nop                                           ; $55f7: $00
    xor c                                         ; $55f8: $a9
    nop                                           ; $55f9: $00
    ld b, c                                       ; $55fa: $41
    nop                                           ; $55fb: $00
    ld [hl+], a                                   ; $55fc: $22
    add b                                         ; $55fd: $80
    ret nz                                        ; $55fe: $c0

    ld [bc], a                                    ; $55ff: $02
    ld [$c281], sp                                ; $5600: $08 $81 $c2
    add d                                         ; $5603: $82
    ld [$c018], sp                                ; $5604: $08 $18 $c0
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    ld bc, $1110                                  ; $560a: $01 $10 $11
    nop                                           ; $560d: $00
    sub c                                         ; $560e: $91
    ld b, b                                       ; $560f: $40
    nop                                           ; $5610: $00
    ld e, a                                       ; $5611: $5f
    nop                                           ; $5612: $00
    ld b, b                                       ; $5613: $40
    add b                                         ; $5614: $80
    add b                                         ; $5615: $80
    ld b, b                                       ; $5616: $40
    nop                                           ; $5617: $00
    add b                                         ; $5618: $80
    add c                                         ; $5619: $81
    stop                                          ; $561a: $10 $00
    nop                                           ; $561c: $00
    inc bc                                        ; $561d: $03
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    add b                                         ; $5620: $80
    add b                                         ; $5621: $80
    dec bc                                        ; $5622: $0b
    nop                                           ; $5623: $00
    sbc b                                         ; $5624: $98
    dec c                                         ; $5625: $0d
    nop                                           ; $5626: $00
    add b                                         ; $5627: $80
    ld de, $0010                                  ; $5628: $11 $10 $00
    ld [bc], a                                    ; $562b: $02
    jr @-$7d                                      ; $562c: $18 $81

    nop                                           ; $562e: $00
    ld bc, $8004                                  ; $562f: $01 $04 $80

jr_098_5632:
    ld b, c                                       ; $5632: $41
    add b                                         ; $5633: $80
    add c                                         ; $5634: $81
    jp nz, Jump_000_1842                          ; $5635: $c2 $42 $18

    add b                                         ; $5638: $80
    ret nz                                        ; $5639: $c0

    nop                                           ; $563a: $00
    add e                                         ; $563b: $83
    ret nz                                        ; $563c: $c0

    add b                                         ; $563d: $80
    pop bc                                        ; $563e: $c1
    add c                                         ; $563f: $81
    ret nz                                        ; $5640: $c0

    ldh [rNR10], a                                ; $5641: $e0 $10
    add b                                         ; $5643: $80
    ld b, d                                       ; $5644: $42
    nop                                           ; $5645: $00
    ld [bc], a                                    ; $5646: $02
    ld [bc], a                                    ; $5647: $02
    nop                                           ; $5648: $00
    ld b, b                                       ; $5649: $40
    ld bc, $8040                                  ; $564a: $01 $40 $80
    ld a, [de]                                    ; $564d: $1a
    ret nz                                        ; $564e: $c0

    ld hl, $0e21                                  ; $564f: $21 $21 $0e
    nop                                           ; $5652: $00
    dec a                                         ; $5653: $3d
    nop                                           ; $5654: $00
    ld b, b                                       ; $5655: $40
    inc c                                         ; $5656: $0c
    nop                                           ; $5657: $00
    jr nz, jr_098_565a                            ; $5658: $20 $00

jr_098_565a:
    jr nz, jr_098_565c                            ; $565a: $20 $00

jr_098_565c:
    ld b, b                                       ; $565c: $40
    and b                                         ; $565d: $a0
    add [hl]                                      ; $565e: $86
    add hl, bc                                    ; $565f: $09
    pop hl                                        ; $5660: $e1
    add b                                         ; $5661: $80
    nop                                           ; $5662: $00
    adc c                                         ; $5663: $89
    ldh a, [$94]                                  ; $5664: $f0 $94
    add hl, bc                                    ; $5666: $09
    dec bc                                        ; $5667: $0b
    inc b                                         ; $5668: $04
    jp z, $0105                                   ; $5669: $ca $05 $01

    ld [hl], l                                    ; $566c: $75
    adc h                                         ; $566d: $8c
    inc e                                         ; $566e: $1c
    ld sp, hl                                     ; $566f: $f9
    pop de                                        ; $5670: $d1
    ldh [$81], a                                  ; $5671: $e0 $81
    add b                                         ; $5673: $80
    jr nz, @+$22                                  ; $5674: $20 $20

    add [hl]                                      ; $5676: $86
    ret                                           ; $5677: $c9


    adc d                                         ; $5678: $8a
    jr jr_098_567b                                ; $5679: $18 $00

jr_098_567b:
    nop                                           ; $567b: $00
    rlca                                          ; $567c: $07
    ld [$0138], sp                                ; $567d: $08 $38 $01
    ld b, h                                       ; $5680: $44
    ret nz                                        ; $5681: $c0

    jr nz, jr_098_5688                            ; $5682: $20 $04

    dec bc                                        ; $5684: $0b
    jr jr_098_56ac                                ; $5685: $18 $25

    push hl                                       ; $5687: $e5

jr_098_5688:
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    ld bc, $8478                                  ; $568a: $01 $78 $84
    add b                                         ; $568d: $80
    ld b, b                                       ; $568e: $40
    jr nc, jr_098_5691                            ; $568f: $30 $00

jr_098_5691:
    ld c, b                                       ; $5691: $48
    nop                                           ; $5692: $00
    jr nc, jr_098_5695                            ; $5693: $30 $00

jr_098_5695:
    ld [$0008], sp                                ; $5695: $08 $08 $00
    ld [$1010], sp                                ; $5698: $08 $10 $10
    nop                                           ; $569b: $00
    jr nz, @+$42                                  ; $569c: $20 $40

    ld bc, $0091                                  ; $569e: $01 $91 $00
    ld c, b                                       ; $56a1: $48
    ld bc, $00a3                                  ; $56a2: $01 $a3 $00
    nop                                           ; $56a5: $00
    call nc, Call_098_7f01                        ; $56a6: $d4 $01 $7f
    nop                                           ; $56a9: $00
    cp $01                                        ; $56aa: $fe $01

jr_098_56ac:
    ld l, e                                       ; $56ac: $6b
    ld h, c                                       ; $56ad: $61
    sub h                                         ; $56ae: $94
    ld a, [hl]                                    ; $56af: $7e
    jr z, jr_098_5632                             ; $56b0: $28 $80

    ld [$fcff], sp                                ; $56b2: $08 $ff $fc
    nop                                           ; $56b5: $00
    rst $38                                       ; $56b6: $ff
    sbc [hl]                                      ; $56b7: $9e
    ld [$0380], sp                                ; $56b8: $08 $80 $03
    ld [$0000], sp                                ; $56bb: $08 $00 $00
    ldh [rP1], a                                  ; $56be: $e0 $00
    rst $38                                       ; $56c0: $ff
    rra                                           ; $56c1: $1f
    nop                                           ; $56c2: $00
    inc b                                         ; $56c3: $04
    rst $38                                       ; $56c4: $ff
    inc h                                         ; $56c5: $24
    ld a, [bc]                                    ; $56c6: $0a
    jr c, jr_098_56cd                             ; $56c7: $38 $04

    inc l                                         ; $56c9: $2c
    add hl, de                                    ; $56ca: $19
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00

jr_098_56cd:
    nop                                           ; $56cd: $00
    rst $38                                       ; $56ce: $ff
    rst $38                                       ; $56cf: $ff
    nop                                           ; $56d0: $00
    rst $38                                       ; $56d1: $ff
    and b                                         ; $56d2: $a0
    nop                                           ; $56d3: $00
    and $00                                       ; $56d4: $e6 $00
    ld a, [de]                                    ; $56d6: $1a
    jr jr_098_56d9                                ; $56d7: $18 $00

jr_098_56d9:
    ld [$016c], sp                                ; $56d9: $08 $6c $01
    ld [bc], a                                    ; $56dc: $02
    ld [$1b20], sp                                ; $56dd: $08 $20 $1b
    jr z, jr_098_56ea                             ; $56e0: $28 $08

    nop                                           ; $56e2: $00
    ld [$1810], sp                                ; $56e3: $08 $10 $18
    nop                                           ; $56e6: $00
    db $10                                        ; $56e7: $10
    jr z, jr_098_570a                             ; $56e8: $28 $20

jr_098_56ea:
    jr @+$36                                      ; $56ea: $18 $34

    ld bc, $0203                                  ; $56ec: $01 $03 $02
    ld e, b                                       ; $56ef: $58
    and b                                         ; $56f0: $a0
    add hl, bc                                    ; $56f1: $09
    rst $38                                       ; $56f2: $ff
    and b                                         ; $56f3: $a0
    ld de, $0095                                  ; $56f4: $11 $95 $00
    nop                                           ; $56f7: $00
    pop bc                                        ; $56f8: $c1
    nop                                           ; $56f9: $00
    add e                                         ; $56fa: $83
    nop                                           ; $56fb: $00
    inc [hl]                                      ; $56fc: $34

jr_098_56fd:
    nop                                           ; $56fd: $00
    inc d                                         ; $56fe: $14
    nop                                           ; $56ff: $00

Jump_098_5700:
    jr jr_098_571e                                ; $5700: $18 $1c

    nop                                           ; $5702: $00
    ld a, h                                       ; $5703: $7c
    daa                                           ; $5704: $27
    ld bc, $0108                                  ; $5705: $01 $08 $01
    ld [bc], a                                    ; $5708: $02
    ld [bc], a                                    ; $5709: $02

jr_098_570a:
    dec b                                         ; $570a: $05
    nop                                           ; $570b: $00
    jr nz, jr_098_5756                            ; $570c: $20 $48

    ld c, b                                       ; $570e: $48
    jr nz, jr_098_5759                            ; $570f: $20 $48

    add b                                         ; $5711: $80
    add b                                         ; $5712: $80
    ld c, b                                       ; $5713: $48
    add hl, bc                                    ; $5714: $09
    adc b                                         ; $5715: $88
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    adc b                                         ; $5718: $88
    xor h                                         ; $5719: $ac
    ld bc, $8908                                  ; $571a: $01 $08 $89
    and h                                         ; $571d: $a4

jr_098_571e:
    ld bc, $0280                                  ; $571e: $01 $80 $02
    ld c, b                                       ; $5721: $48
    ld c, $10                                     ; $5722: $0e $10
    inc [hl]                                      ; $5724: $34
    ld c, d                                       ; $5725: $4a
    ld b, d                                       ; $5726: $42
    dec b                                         ; $5727: $05
    ld bc, $6200                                  ; $5728: $01 $00 $62
    nop                                           ; $572b: $00
    jr nc, jr_098_5736                            ; $572c: $30 $08

    inc d                                         ; $572e: $14
    ld [bc], a                                    ; $572f: $02
    dec b                                         ; $5730: $05
    nop                                           ; $5731: $00
    ld b, b                                       ; $5732: $40
    ld bc, $00c6                                  ; $5733: $01 $c6 $00

jr_098_5736:
    nop                                           ; $5736: $00
    ld [$8c04], sp                                ; $5737: $08 $04 $8c
    ld b, d                                       ; $573a: $42
    ld [hl], d                                    ; $573b: $72
    ld c, c                                       ; $573c: $49
    adc c                                         ; $573d: $89
    sbc $08                                       ; $573e: $de $08
    or h                                          ; $5740: $b4
    ld c, d                                       ; $5741: $4a
    ld l, $08                                     ; $5742: $2e $08
    ld bc, $0480                                  ; $5744: $01 $80 $04
    jr z, jr_098_57b9                             ; $5747: $28 $70

    pop bc                                        ; $5749: $c1
    xor e                                         ; $574a: $ab
    jr z, jr_098_56fd                             ; $574b: $28 $b0

    jr nc, jr_098_5760                            ; $574d: $30 $11

    jr c, jr_098_5758                             ; $574f: $38 $07

    nop                                           ; $5751: $00
    rst $38                                       ; $5752: $ff
    ld hl, sp+$00                                 ; $5753: $f8 $00
    nop                                           ; $5755: $00

jr_098_5756:
    rst $38                                       ; $5756: $ff
    add hl, bc                                    ; $5757: $09

jr_098_5758:
    add b                                         ; $5758: $80

jr_098_5759:
    sub c                                         ; $5759: $91
    nop                                           ; $575a: $00
    ld b, c                                       ; $575b: $41
    add b                                         ; $575c: $80
    nop                                           ; $575d: $00
    xor c                                         ; $575e: $a9
    nop                                           ; $575f: $00

jr_098_5760:
    ld [hl], l                                    ; $5760: $75
    add b                                         ; $5761: $80
    rst $18                                       ; $5762: $df
    nop                                           ; $5763: $00
    ccf                                           ; $5764: $3f
    add b                                         ; $5765: $80
    nop                                           ; $5766: $00
    db $ed                                        ; $5767: $ed
    ld [de], a                                    ; $5768: $12
    dec e                                         ; $5769: $1d
    ld [c], a                                     ; $576a: $e2
    ld h, $d9                                     ; $576b: $26 $d9
    sbc h                                         ; $576d: $9c
    db $e3                                        ; $576e: $e3
    nop                                           ; $576f: $00
    ld a, [hl+]                                   ; $5770: $2a
    ret nz                                        ; $5771: $c0

    ld [$20ff], a                                 ; $5772: $ea $ff $20
    rst $18                                       ; $5775: $df
    add l                                         ; $5776: $85
    ld a, [$2a00]                                 ; $5777: $fa $00 $2a
    push de                                       ; $577a: $d5
    ld a, [hl+]                                   ; $577b: $2a
    rst $10                                       ; $577c: $d7
    sub $2b                                       ; $577d: $d6 $2b
    ld a, [hl+]                                   ; $577f: $2a
    rst $10                                       ; $5780: $d7
    nop                                           ; $5781: $00
    xor d                                         ; $5782: $aa
    nop                                           ; $5783: $00
    ld [$caff], a                                 ; $5784: $ea $ff $ca
    ld [hl], l                                    ; $5787: $75
    push de                                       ; $5788: $d5
    ld l, d                                       ; $5789: $6a
    nop                                           ; $578a: $00
    ld c, d                                       ; $578b: $4a
    push af                                       ; $578c: $f5
    ld d, l                                       ; $578d: $55
    xor d                                         ; $578e: $aa

jr_098_578f:
    and d                                         ; $578f: $a2
    ld e, l                                       ; $5790: $5d
    inc d                                         ; $5791: $14
    db $eb                                        ; $5792: $eb
    nop                                           ; $5793: $00
    xor d                                         ; $5794: $aa
    nop                                           ; $5795: $00
    add d                                         ; $5796: $82
    rst $38                                       ; $5797: $ff
    ld d, e                                       ; $5798: $53
    xor h                                         ; $5799: $ac
    cpl                                           ; $579a: $2f
    ret nc                                        ; $579b: $d0

    nop                                           ; $579c: $00
    ret nc                                        ; $579d: $d0

    cpl                                           ; $579e: $2f
    xor d                                         ; $579f: $aa
    ld d, l                                       ; $57a0: $55
    ld b, l                                       ; $57a1: $45
    cp d                                          ; $57a2: $ba
    and b                                         ; $57a3: $a0
    ld e, a                                       ; $57a4: $5f
    nop                                           ; $57a5: $00
    xor d                                         ; $57a6: $aa
    nop                                           ; $57a7: $00
    cp d                                          ; $57a8: $ba
    rst $38                                       ; $57a9: $ff
    or b                                          ; $57aa: $b0
    ld e, a                                       ; $57ab: $5f
    ld d, l                                       ; $57ac: $55
    cp d                                          ; $57ad: $ba
    nop                                           ; $57ae: $00
    or d                                          ; $57af: $b2
    ld e, l                                       ; $57b0: $5d
    sub l                                         ; $57b1: $95
    ld [$c02a], a                                 ; $57b2: $ea $2a $c0
    ld a, [$00ff]                                 ; $57b5: $fa $ff $00
    and d                                         ; $57b8: $a2

jr_098_57b9:
    db $dd                                        ; $57b9: $dd
    dec e                                         ; $57ba: $1d
    ld [c], a                                     ; $57bb: $e2
    and [hl]                                      ; $57bc: $a6
    reti                                          ; $57bd: $d9


    inc e                                         ; $57be: $1c
    db $e3                                        ; $57bf: $e3
    nop                                           ; $57c0: $00
    xor d                                         ; $57c1: $aa
    ret nz                                        ; $57c2: $c0

    rst $00                                       ; $57c3: $c7
    ld a, b                                       ; $57c4: $78
    xor d                                         ; $57c5: $aa
    nop                                           ; $57c6: $00
    and d                                         ; $57c7: $a2
    rst $38                                       ; $57c8: $ff
    ld bc, $2dd2                                  ; $57c9: $01 $d2 $2d
    add hl, hl                                    ; $57cc: $29
    sub $d6                                       ; $57cd: $d6 $d6
    add hl, hl                                    ; $57cf: $29
    jr z, @+$4a                                   ; $57d0: $28 $48

jr_098_57d2:
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    or l                                          ; $57d4: $b5
    ld c, d                                       ; $57d5: $4a
    xor d                                         ; $57d6: $aa
    nop                                           ; $57d7: $00
    cp $ff                                        ; $57d8: $fe $ff
    ret z                                         ; $57da: $c8

    ld [hl], a                                    ; $57db: $77

jr_098_57dc:
    inc b                                         ; $57dc: $04
    ld d, l                                       ; $57dd: $55
    ld [$7dc2], a                                 ; $57de: $ea $c2 $7d
    ld d, h                                       ; $57e1: $54
    ld c, b                                       ; $57e2: $48
    nop                                           ; $57e3: $00
    ld d, l                                       ; $57e4: $55
    cp d                                          ; $57e5: $ba
    inc bc                                        ; $57e6: $03
    xor d                                         ; $57e7: $aa
    nop                                           ; $57e8: $00
    xor b                                         ; $57e9: $a8
    rst $38                                       ; $57ea: $ff
    ld d, l                                       ; $57eb: $55
    xor d                                         ; $57ec: $aa
    ld c, b                                       ; $57ed: $48
    jr z, jr_098_578f                             ; $57ee: $28 $9f

    ld a, [bc]                                    ; $57f0: $0a
    ld d, c                                       ; $57f1: $51
    ccf                                           ; $57f2: $3f
    ld bc, $0708                                  ; $57f3: $01 $08 $07
    ld [bc], a                                    ; $57f6: $02
    nop                                           ; $57f7: $00
    inc [hl]                                      ; $57f8: $34
    dec sp                                        ; $57f9: $3b
    inc [hl]                                      ; $57fa: $34
    ld l, b                                       ; $57fb: $68
    add hl, de                                    ; $57fc: $19
    add b                                         ; $57fd: $80
    ld b, $03                                     ; $57fe: $06 $03
    di                                            ; $5800: $f3
    rst $38                                       ; $5801: $ff

Jump_098_5802:
    di                                            ; $5802: $f3
    db $fc                                        ; $5803: $fc
    ld [hl], e                                    ; $5804: $73
    rst $38                                       ; $5805: $ff
    ld [hl], e                                    ; $5806: $73
    add b                                         ; $5807: $80
    db $10                                        ; $5808: $10
    jr z, jr_098_57d2                             ; $5809: $28 $c7

    rst $38                                       ; $580b: $ff
    rst $00                                       ; $580c: $c7
    add a                                         ; $580d: $87
    ld b, a                                       ; $580e: $47
    cp b                                          ; $580f: $b8
    ld b, a                                       ; $5810: $47
    ret c                                         ; $5811: $d8

    ld d, b                                       ; $5812: $50
    ld [bc], a                                    ; $5813: $02
    adc b                                         ; $5814: $88
    add hl, bc                                    ; $5815: $09
    rra                                           ; $5816: $1f
    ld [bc], a                                    ; $5817: $02
    ld [$0001], sp                                ; $5818: $08 $01 $00
    jr @+$01                                      ; $581b: $18 $ff

    dec sp                                        ; $581d: $3b
    ld h, e                                       ; $581e: $63
    inc b                                         ; $581f: $04
    ld [bc], a                                    ; $5820: $02
    jr z, jr_098_586d                             ; $5821: $28 $4a

    jr @-$6f                                      ; $5823: $18 $8f

    ld [hl], e                                    ; $5825: $73
    adc h                                         ; $5826: $8c
    ld [bc], a                                    ; $5827: $02
    jr nz, jr_098_57dc                            ; $5828: $20 $b2

    add hl, de                                    ; $582a: $19
    dec sp                                        ; $582b: $3b
    ld b, b                                       ; $582c: $40
    cp b                                          ; $582d: $b8
    ld [hl], $00                                  ; $582e: $36 $00
    inc b                                         ; $5830: $04
    db $10                                        ; $5831: $10
    jp nz, Jump_000_1819                          ; $5832: $c2 $19 $18

    ld [bc], a                                    ; $5835: $02
    jr nc, @-$2c                                  ; $5836: $30 $d2

    add hl, de                                    ; $5838: $19
    nop                                           ; $5839: $00
    ld [hl], l                                    ; $583a: $75
    adc d                                         ; $583b: $8a
    jp c, Jump_098_7425                           ; $583c: $da $25 $74

jr_098_583f:
    adc e                                         ; $583f: $8b
    xor c                                         ; $5840: $a9
    ld d, a                                       ; $5841: $57
    nop                                           ; $5842: $00
    ld bc, $23ff                                  ; $5843: $01 $ff $23
    rst $18                                       ; $5846: $df
    ld d, l                                       ; $5847: $55
    rst $38                                       ; $5848: $ff
    cp a                                          ; $5849: $bf
    rst $38                                       ; $584a: $ff
    ld b, b                                       ; $584b: $40
    and b                                         ; $584c: $a0
    ld l, h                                       ; $584d: $6c
    ld a, [bc]                                    ; $584e: $0a
    nop                                           ; $584f: $00
    ret nz                                        ; $5850: $c0

    nop                                           ; $5851: $00
    ld h, b                                       ; $5852: $60
    add b                                         ; $5853: $80
    cp b                                          ; $5854: $b8
    nop                                           ; $5855: $00
    ld b, b                                       ; $5856: $40
    ld e, a                                       ; $5857: $5f
    and b                                         ; $5858: $a0
    add b                                         ; $5859: $80
    rst $38                                       ; $585a: $ff
    jp c, $9da7                                   ; $585b: $da $a7 $9d

    nop                                           ; $585e: $00
    ld h, e                                       ; $585f: $63
    db $eb                                        ; $5860: $eb
    ld d, $f6                                     ; $5861: $16 $f6
    dec c                                         ; $5863: $0d
    xor l                                         ; $5864: $ad

jr_098_5865:
    ld e, b                                       ; $5865: $58
    db $db                                        ; $5866: $db
    nop                                           ; $5867: $00
    inc [hl]                                      ; $5868: $34
    and l                                         ; $5869: $a5
    ld a, d                                       ; $586a: $7a
    ld a, d                                       ; $586b: $7a
    db $dd                                        ; $586c: $dd

jr_098_586d:
    ld a, [c]                                     ; $586d: $f2
    cp l                                          ; $586e: $bd
    xor l                                         ; $586f: $ad
    nop                                           ; $5870: $00
    ld e, a                                       ; $5871: $5f
    ld d, e                                       ; $5872: $53
    adc [hl]                                      ; $5873: $8e
    and a                                         ; $5874: $a7
    ld e, h                                       ; $5875: $5c
    ld c, l                                       ; $5876: $4d
    cp b                                          ; $5877: $b8
    sub l                                         ; $5878: $95
    nop                                           ; $5879: $00
    ld [hl], d                                    ; $587a: $72
    ld a, $e1                                     ; $587b: $3e $e1
    ld d, l                                       ; $587d: $55
    add sp, -$22                                  ; $587e: $e8 $de
    add a                                         ; $5880: $87
    xor l                                         ; $5881: $ad
    nop                                           ; $5882: $00
    inc bc                                        ; $5883: $03
    ld sp, hl                                     ; $5884: $f9
    ld b, $76                                     ; $5885: $06 $76
    adc h                                         ; $5887: $8c
    and l                                         ; $5888: $a5
    jr jr_098_5865                                ; $5889: $18 $da

    nop                                           ; $588b: $00
    jr nc, jr_098_583f                            ; $588c: $30 $b1

    ld h, h                                       ; $588e: $64
    ld l, b                                       ; $588f: $68
    jp nz, $b1ee                                  ; $5890: $c2 $ee $b1

    and l                                         ; $5893: $a5
    nop                                           ; $5894: $00
    rrca                                          ; $5895: $0f
    ld d, d                                       ; $5896: $52
    ld b, $81                                     ; $5897: $06 $81
    inc l                                         ; $5899: $2c
    ld b, d                                       ; $589a: $42
    sbc c                                         ; $589b: $99
    sub h                                         ; $589c: $94
    nop                                           ; $589d: $00
    jr nc, jr_098_58c2                            ; $589e: $30 $22

    ld h, b                                       ; $58a0: $60
    ld d, b                                       ; $58a1: $50
    call nz, $aa55                                ; $58a2: $c4 $55 $aa
    ld d, l                                       ; $58a5: $55
    add hl, bc                                    ; $58a6: $09
    add b                                         ; $58a7: $80
    ld a, [hl+]                                   ; $58a8: $2a
    add b                                         ; $58a9: $80
    ld b, b                                       ; $58aa: $40
    rst $38                                       ; $58ab: $ff
    ld [bc], a                                    ; $58ac: $02
    ld a, [bc]                                    ; $58ad: $0a
    add b                                         ; $58ae: $80
    ld a, [bc]                                    ; $58af: $0a
    ld [$5510], sp                                ; $58b0: $08 $10 $55
    xor d                                         ; $58b3: $aa
    ld d, d                                       ; $58b4: $52
    sub d                                         ; $58b5: $92
    inc bc                                        ; $58b6: $03
    ld d, b                                       ; $58b7: $50
    nop                                           ; $58b8: $00
    ld a, [bc]                                    ; $58b9: $0a

jr_098_58ba:
    nop                                           ; $58ba: $00
    ld b, b                                       ; $58bb: $40
    and b                                         ; $58bc: $a0
    sbc d                                         ; $58bd: $9a
    inc bc                                        ; $58be: $03
    xor d                                         ; $58bf: $aa
    nop                                           ; $58c0: $00
    sbc [hl]                                      ; $58c1: $9e

jr_098_58c2:
    ld h, c                                       ; $58c2: $61
    ld a, [hl+]                                   ; $58c3: $2a
    dec d                                         ; $58c4: $15
    nop                                           ; $58c5: $00
    dec d                                         ; $58c6: $15
    ld a, [bc]                                    ; $58c7: $0a
    jr jr_098_58d9                                ; $58c8: $18 $0f

    dec a                                         ; $58ca: $3d
    ld c, $e8                                     ; $58cb: $0e $e8
    rra                                           ; $58cd: $1f
    db $10                                        ; $58ce: $10
    sub l                                         ; $58cf: $95
    ld a, a                                       ; $58d0: $7f
    ld a, $62                                     ; $58d1: $3e $62
    ld [bc], a                                    ; $58d3: $02
    cp d                                          ; $58d4: $ba
    ld b, l                                       ; $58d5: $45
    ld d, l                                       ; $58d6: $55
    xor d                                         ; $58d7: $aa
    nop                                           ; $58d8: $00

jr_098_58d9:
    jr nz, jr_098_58ba                            ; $58d9: $20 $df

    dec b                                         ; $58db: $05
    cp $28                                        ; $58dc: $fe $28
    rst $18                                       ; $58de: $df
    ld d, h                                       ; $58df: $54
    rst $38                                       ; $58e0: $ff
    ld b, b                                       ; $58e1: $40
    ld a, [$0272]                                 ; $58e2: $fa $72 $02
    jp c, Jump_098_7525                           ; $58e5: $da $25 $75

    adc d                                         ; $58e8: $8a
    xor b                                         ; $58e9: $a8
    ld d, a                                       ; $58ea: $57
    inc d                                         ; $58eb: $14
    nop                                           ; $58ec: $00
    rst $38                                       ; $58ed: $ff
    ld [hl+], a                                   ; $58ee: $22
    stop                                          ; $58ef: $10 $00
    cp a                                          ; $58f1: $bf
    add d                                         ; $58f2: $82
    ld [bc], a                                    ; $58f3: $02
    ld a, [$0005]                                 ; $58f4: $fa $05 $00
    ld d, l                                       ; $58f7: $55
    xor d                                         ; $58f8: $aa
    and b                                         ; $58f9: $a0
    ld e, a                                       ; $58fa: $5f
    dec b                                         ; $58fb: $05
    cp $88                                        ; $58fc: $fe $88
    ld a, a                                       ; $58fe: $7f
    nop                                           ; $58ff: $00
    ld d, l                                       ; $5900: $55
    rst $38                                       ; $5901: $ff
    cp [hl]                                       ; $5902: $be
    rst $38                                       ; $5903: $ff
    call nc, $ed83                                ; $5904: $d4 $83 $ed
    inc bc                                        ; $5907: $03
    nop                                           ; $5908: $00
    ld a, d                                       ; $5909: $7a
    add a                                         ; $590a: $87
    or h                                          ; $590b: $b4
    rrca                                          ; $590c: $0f
    jp hl                                         ; $590d: $e9


    rra                                           ; $590e: $1f
    ret nz                                        ; $590f: $c0

    ccf                                           ; $5910: $3f
    nop                                           ; $5911: $00
    and h                                         ; $5912: $a4
    ld a, a                                       ; $5913: $7f
    ld e, b                                       ; $5914: $58
    rst $18                                       ; $5915: $df
    add [hl]                                      ; $5916: $86
    rst $38                                       ; $5917: $ff
    ld de, $00ff                                  ; $5918: $11 $ff $00
    add e                                         ; $591b: $83
    cp $15                                        ; $591c: $fe $15
    cp $4d                                        ; $591e: $fe $4d
    ei                                            ; $5920: $fb
    rra                                           ; $5921: $1f
    ldh a, [rP1]                                  ; $5922: $f0 $00
    cp d                                          ; $5924: $ba
    ldh [$6d], a                                  ; $5925: $e0 $6d
    ret nz                                        ; $5927: $c0

    ld l, d                                       ; $5928: $6a
    add c                                         ; $5929: $81
    cp c                                          ; $592a: $b9
    rlca                                          ; $592b: $07
    nop                                           ; $592c: $00
    ld [c], a                                     ; $592d: $e2
    ld e, $54                                     ; $592e: $1e $54
    dec c                                         ; $5930: $0d
    ld h, d                                       ; $5931: $62
    sbc b                                         ; $5932: $98
    pop de                                        ; $5933: $d1
    ldh a, [rP1]                                  ; $5934: $f0 $00
    xor b                                         ; $5936: $a8
    ld h, d                                       ; $5937: $62
    ld b, h                                       ; $5938: $44
    ret                                           ; $5939: $c9


    adc d                                         ; $593a: $8a
    pop bc                                        ; $593b: $c1
    dec d                                         ; $593c: $15
    inc bc                                        ; $593d: $03
    nop                                           ; $593e: $00
    inc hl                                        ; $593f: $23
    add [hl]                                      ; $5940: $86
    jp nz, Jump_098_6d8d                          ; $5941: $c2 $8d $6d

    ld a, b                                       ; $5944: $78
    ld e, $31                                     ; $5945: $1e $31
    nop                                           ; $5947: $00
    dec d                                         ; $5948: $15
    ld h, b                                       ; $5949: $60
    ld e, e                                       ; $594a: $5b
    ldh [$a6], a                                  ; $594b: $e0 $a6
    add a                                         ; $594d: $87
    ld b, c                                       ; $594e: $41
    inc de                                        ; $594f: $13
    nop                                           ; $5950: $00
    inc hl                                        ; $5951: $23
    ld b, $45                                     ; $5952: $06 $45
    ld c, $2f                                     ; $5954: $0e $2f
    dec de                                        ; $5956: $1b
    sbc d                                         ; $5957: $9a
    dec [hl]                                      ; $5958: $35
    nop                                           ; $5959: $00
    inc [hl]                                      ; $595a: $34

jr_098_595b:
    ld h, e                                       ; $595b: $63
    ld l, d                                       ; $595c: $6a
    push de                                       ; $595d: $d5
    cp $81                                        ; $595e: $fe $81
    xor c                                         ; $5960: $a9
    rla                                           ; $5961: $17
    nop                                           ; $5962: $00
    ld a, d                                       ; $5963: $7a
    ld b, $b5                                     ; $5964: $06 $b5
    rrca                                          ; $5966: $0f
    ld c, a                                       ; $5967: $4f
    cp b                                          ; $5968: $b8
    db $dd                                        ; $5969: $dd
    ld a, [c]                                     ; $596a: $f2
    nop                                           ; $596b: $00
    dec sp                                        ; $596c: $3b
    ldh [$39], a                                  ; $596d: $e0 $39

jr_098_596f:
    add $a0                                       ; $596f: $c6 $a0
    add c                                         ; $5971: $81
    ld b, l                                       ; $5972: $45
    inc de                                        ; $5973: $13
    nop                                           ; $5974: $00
    add hl, hl                                    ; $5975: $29
    add [hl]                                      ; $5976: $86
    inc b                                         ; $5977: $04
    adc [hl]                                      ; $5978: $8e
    db $ec                                        ; $5979: $ec
    ld a, c                                       ; $597a: $79
    ld c, d                                       ; $597b: $4a
    jr nc, jr_098_597e                            ; $597c: $30 $00

jr_098_597e:
    or l                                          ; $597e: $b5
    ld h, b                                       ; $597f: $60
    ld l, d                                       ; $5980: $6a
    ret nz                                        ; $5981: $c0

    ld [hl], $f9                                  ; $5982: $36 $f9
    and h                                         ; $5984: $a4
    rrca                                          ; $5985: $0f
    nop                                           ; $5986: $00
    ld b, e                                       ; $5987: $43
    ld d, $a6                                     ; $5988: $16 $a6
    inc c                                         ; $598a: $0c
    rrca                                          ; $598b: $0f
    ld e, b                                       ; $598c: $58
    adc c                                         ; $598d: $89
    ld [hl-], a                                   ; $598e: $32
    inc c                                         ; $598f: $0c
    rrca                                          ; $5990: $0f
    ld [hl], b                                    ; $5991: $70
    ld a, d                                       ; $5992: $7a
    call c, $01ca                                 ; $5993: $dc $ca $01
    ld a, d                                       ; $5996: $7a
    inc b                                         ; $5997: $04
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    ld d, b                                       ; $599a: $50
    sub b                                         ; $599b: $90
    ld l, b                                       ; $599c: $68
    inc b                                         ; $599d: $04
    ld d, l                                       ; $599e: $55
    ret nc                                        ; $599f: $d0

    nop                                           ; $59a0: $00
    ld d, h                                       ; $59a1: $54
    xor e                                         ; $59a2: $ab
    ld a, [hl+]                                   ; $59a3: $2a
    ld bc, $5401                                  ; $59a4: $01 $01 $54
    ld bc, $010a                                  ; $59a7: $01 $0a $01
    inc b                                         ; $59aa: $04
    ld bc, $08aa                                  ; $59ab: $01 $aa $08
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    xor d                                         ; $59b0: $aa
    ld bc, $85d0                                  ; $59b1: $01 $d0 $85
    ld [$d3a3], sp                                ; $59b4: $08 $a3 $d3
    add $00                                       ; $59b7: $c6 $00
    or $3d                                        ; $59b9: $f6 $3d
    ld l, a                                       ; $59bb: $6f
    jr jr_098_595b                                ; $59bc: $18 $9d

    ld [hl], b                                    ; $59be: $70
    dec sp                                        ; $59bf: $3b
    ldh [rP1], a                                  ; $59c0: $e0 $00
    ld e, a                                       ; $59c2: $5f
    ldh [$de], a                                  ; $59c3: $e0 $de
    and a                                         ; $59c5: $a7
    push hl                                       ; $59c6: $e5
    inc de                                        ; $59c7: $13
    ld e, e                                       ; $59c8: $5b
    ld h, $00                                     ; $59c9: $26 $00
    sub $0c                                       ; $59cb: $d6 $0c
    ld l, e                                       ; $59cd: $6b
    inc e                                         ; $59ce: $1c
    db $dd                                        ; $59cf: $dd
    ld [hl-], a                                   ; $59d0: $32
    cp d                                          ; $59d1: $ba
    ld h, b                                       ; $59d2: $60
    ld [bc], a                                    ; $59d3: $02
    ld a, e                                       ; $59d4: $7b
    call c, $ff00                                 ; $59d5: $dc $00 $ff
    xor d                                         ; $59d8: $aa
    ld d, l                                       ; $59d9: $55
    ldh a, [$08]                                  ; $59da: $f0 $08
    ld b, l                                       ; $59dc: $45
    add hl, bc                                    ; $59dd: $09
    cp [hl]                                       ; $59de: $be
    ld [$15ff], sp                                ; $59df: $08 $ff $15
    ret nc                                        ; $59e2: $d0

    nop                                           ; $59e3: $00
    ccf                                           ; $59e4: $3f
    ret nz                                        ; $59e5: $c0

    ldh [$60], a                                  ; $59e6: $e0 $60
    nop                                           ; $59e8: $00
    add c                                         ; $59e9: $81
    jr z, jr_098_596f                             ; $59ea: $28 $83

    sub d                                         ; $59ec: $92
    rst $20                                       ; $59ed: $e7
    rst $20                                       ; $59ee: $e7
    dec a                                         ; $59ef: $3d
    xor d                                         ; $59f0: $aa
    nop                                           ; $59f1: $00
    ld e, h                                       ; $59f2: $5c
    ld e, l                                       ; $59f3: $5d
    or b                                          ; $59f4: $b0
    or [hl]                                       ; $59f5: $b6
    ld l, c                                       ; $59f6: $69
    ld a, e                                       ; $59f7: $7b
    call nz, $0088                                ; $59f8: $c4 $88 $00
    add c                                         ; $59fb: $81
    ld de, $a34b                                  ; $59fc: $11 $4b $a3
    ld b, $82                                     ; $59ff: $06 $82
    call Call_000_00ed                            ; $5a01: $cd $ed $00
    ld a, d                                       ; $5a04: $7a
    jp z, $b534                                   ; $5a05: $ca $34 $b5

    ld l, d                                       ; $5a08: $6a
    ld l, d                                       ; $5a09: $6a
    push bc                                       ; $5a0a: $c5
    call nc, $ab00                                ; $5a0b: $d4 $00 $ab
    xor c                                         ; $5a0e: $a9
    ld d, a                                       ; $5a0f: $57
    ld d, e                                       ; $5a10: $53
    xor [hl]                                      ; $5a11: $ae
    and a                                         ; $5a12: $a7
    inc e                                         ; $5a13: $1c
    ld c, l                                       ; $5a14: $4d
    nop                                           ; $5a15: $00
    cp b                                          ; $5a16: $b8
    sbc a                                         ; $5a17: $9f
    ld [hl], b                                    ; $5a18: $70
    cpl                                           ; $5a19: $2f
    db $fc                                        ; $5a1a: $fc
    ld b, e                                       ; $5a1b: $43
    rst $38                                       ; $5a1c: $ff
    and [hl]                                      ; $5a1d: $a6
    nop                                           ; $5a1e: $00
    ret                                           ; $5a1f: $c9


    ld sp, hl                                     ; $5a20: $f9
    rlca                                          ; $5a21: $07
    or e                                          ; $5a22: $b3
    ld c, $75                                     ; $5a23: $0e $75
    adc [hl]                                      ; $5a25: $8e
    xor l                                         ; $5a26: $ad
    nop                                           ; $5a27: $00
    ld e, d                                       ; $5a28: $5a
    rlca                                          ; $5a29: $07
    ld hl, sp-$4b                                 ; $5a2a: $f8 $b5
    ld h, b                                       ; $5a2c: $60
    ld a, a                                       ; $5a2d: $7f
    ret nz                                        ; $5a2e: $c0

    ccf                                           ; $5a2f: $3f
    ld b, $0e                                     ; $5a30: $06 $0e
    ld sp, $310e                                  ; $5a32: $31 $0e $31
    nop                                           ; $5a35: $00
    inc b                                         ; $5a36: $04
    jr nz, @+$0e                                  ; $5a37: $20 $0c

    nop                                           ; $5a39: $00
    rst $38                                       ; $5a3a: $ff
    nop                                           ; $5a3b: $00
    rra                                           ; $5a3c: $1f
    ccf                                           ; $5a3d: $3f
    rst $18                                       ; $5a3e: $df
    ccf                                           ; $5a3f: $3f
    db $d3                                        ; $5a40: $d3
    ccf                                           ; $5a41: $3f
    db $d3                                        ; $5a42: $d3
    rst $38                                       ; $5a43: $ff
    ld [hl], $13                                  ; $5a44: $36 $13
    db $fc                                        ; $5a46: $fc
    ld [bc], a                                    ; $5a47: $02
    db $10                                        ; $5a48: $10
    ld [hl], b                                    ; $5a49: $70
    dec a                                         ; $5a4a: $3d
    ld a, a                                       ; $5a4b: $7f
    ld [bc], a                                    ; $5a4c: $02
    db $10                                        ; $5a4d: $10
    add b                                         ; $5a4e: $80
    dec l                                         ; $5a4f: $2d
    cp $f1                                        ; $5a50: $fe $f1
    ld [bc], a                                    ; $5a52: $02
    jr nz, @+$38                                  ; $5a53: $20 $36

    ld [$1aa4], sp                                ; $5a55: $08 $a4 $1a
    and c                                         ; $5a58: $a1
    ld [bc], a                                    ; $5a59: $02
    add hl, sp                                    ; $5a5a: $39
    ccf                                           ; $5a5b: $3f
    add hl, sp                                    ; $5a5c: $39
    ld [hl], $08                                  ; $5a5d: $36 $08
    add [hl]                                      ; $5a5f: $86
    and h                                         ; $5a60: $a4
    ld [hl+], a                                   ; $5a61: $22
    rst $00                                       ; $5a62: $c7
    rst $00                                       ; $5a63: $c7
    rst $38                                       ; $5a64: $ff
    pop bc                                        ; $5a65: $c1
    ld [hl], $10                                  ; $5a66: $36 $10
    inc e                                         ; $5a68: $1c
    inc e                                         ; $5a69: $1c
    pop af                                        ; $5a6a: $f1
    or b                                          ; $5a6b: $b0
    ld [bc], a                                    ; $5a6c: $02
    ld [$38f1], sp                                ; $5a6d: $08 $f1 $38
    ld [$32b4], sp                                ; $5a70: $08 $b4 $32
    cp $c7                                        ; $5a73: $fe $c7
    ei                                            ; $5a75: $fb
    ld b, $08                                     ; $5a76: $06 $08
    add hl, sp                                    ; $5a78: $39
    ld a, $39                                     ; $5a79: $3e $39
    ld b, $02                                     ; $5a7b: $06 $02
    jr nc, jr_098_5a7f                            ; $5a7d: $30 $00

jr_098_5a7f:
    nop                                           ; $5a7f: $00
    add hl, sp                                    ; $5a80: $39
    ld b, b                                       ; $5a81: $40
    rst $00                                       ; $5a82: $c7
    ld [bc], a                                    ; $5a83: $02
    ld c, b                                       ; $5a84: $48
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    pop af                                        ; $5a87: $f1
    cp $11                                        ; $5a88: $fe $11
    ldh a, [$30]                                  ; $5a8a: $f0 $30
    ld de, $02fe                                  ; $5a8c: $11 $fe $02
    jr z, jr_098_5af5                             ; $5a8f: $28 $64

    inc b                                         ; $5a91: $04
    dec sp                                        ; $5a92: $3b
    rst $38                                       ; $5a93: $ff
    ld a, [hl-]                                   ; $5a94: $3a
    rst $00                                       ; $5a95: $c7
    add b                                         ; $5a96: $80
    ld [bc], a                                    ; $5a97: $02
    jr nc, jr_098_5a9a                            ; $5a98: $30 $00

jr_098_5a9a:
    nop                                           ; $5a9a: $00
    push de                                       ; $5a9b: $d5
    xor d                                         ; $5a9c: $aa
    ld a, a                                       ; $5a9d: $7f

jr_098_5a9e:
    add b                                         ; $5a9e: $80
    rst $38                                       ; $5a9f: $ff
    ld b, $80                                     ; $5aa0: $06 $80
    ld a, b                                       ; $5aa2: $78
    add b                                         ; $5aa3: $80
    ld hl, sp-$7d                                 ; $5aa4: $f8 $83
    inc b                                         ; $5aa6: $04

jr_098_5aa7:
    jr jr_098_5aa7                                ; $5aa7: $18 $fe

    dec c                                         ; $5aa9: $0d
    rst $38                                       ; $5aaa: $ff
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    rrca                                          ; $5aad: $0f
    nop                                           ; $5aae: $00
    xor a                                         ; $5aaf: $af
    ld b, b                                       ; $5ab0: $40
    rrca                                          ; $5ab1: $0f
    nop                                           ; $5ab2: $00
    ld c, a                                       ; $5ab3: $4f
    ld b, $80                                     ; $5ab4: $06 $80
    rrca                                          ; $5ab6: $0f
    nop                                           ; $5ab7: $00
    ld sp, hl                                     ; $5ab8: $f9
    add d                                         ; $5ab9: $82
    inc e                                         ; $5aba: $1c
    nop                                           ; $5abb: $00
    jr nz, jr_098_5ac6                            ; $5abc: $20 $08

    add a                                         ; $5abe: $87
    ld b, [hl]                                    ; $5abf: $46
    ld a, a                                       ; $5ac0: $7f
    adc e                                         ; $5ac1: $8b
    dec b                                         ; $5ac2: $05
    add b                                         ; $5ac3: $80
    rst $38                                       ; $5ac4: $ff
    ld c, a                                       ; $5ac5: $4f

jr_098_5ac6:
    inc e                                         ; $5ac6: $1c
    nop                                           ; $5ac7: $00
    ld [bc], a                                    ; $5ac8: $02
    db $10                                        ; $5ac9: $10
    ldh a, [$80]                                  ; $5aca: $f0 $80
    pop hl                                        ; $5acc: $e1
    ld a, [de]                                    ; $5acd: $1a
    adc d                                         ; $5ace: $8a
    rst $38                                       ; $5acf: $ff
    ld l, b                                       ; $5ad0: $68
    sbc a                                         ; $5ad1: $9f
    jp c, Jump_098_7d8f                           ; $5ad2: $da $8f $7d

    nop                                           ; $5ad5: $00
    adc a                                         ; $5ad6: $8f
    rst $18                                       ; $5ad7: $df
    adc a                                         ; $5ad8: $8f
    add hl, hl                                    ; $5ad9: $29
    sbc $9f                                       ; $5ada: $de $9f
    rst $08                                       ; $5adc: $cf
    ld l, a                                       ; $5add: $6f
    ld b, h                                       ; $5ade: $44
    sbc b                                         ; $5adf: $98
    ccf                                           ; $5ae0: $3f
    ld [$ffaa], sp                                ; $5ae1: $08 $aa $ff
    ld d, l                                       ; $5ae4: $55
    ld h, a                                       ; $5ae5: $67
    ld b, $2d                                     ; $5ae6: $06 $2d
    rra                                           ; $5ae8: $1f
    nop                                           ; $5ae9: $00
    rst $38                                       ; $5aea: $ff
    rst $28                                       ; $5aeb: $ef
    rst $38                                       ; $5aec: $ff
    jr z, jr_098_5a9e                             ; $5aed: $28 $af

    rst $18                                       ; $5aef: $df
    ret z                                         ; $5af0: $c8

    cp a                                          ; $5af1: $bf
    nop                                           ; $5af2: $00

jr_098_5af3:
    rst $38                                       ; $5af3: $ff
    rst $38                                       ; $5af4: $ff

jr_098_5af5:
    sbc d                                         ; $5af5: $9a
    rst $38                                       ; $5af6: $ff
    xor l                                         ; $5af7: $ad
    cp $db                                        ; $5af8: $fe $db
    db $fc                                        ; $5afa: $fc
    nop                                           ; $5afb: $00
    adc [hl]                                      ; $5afc: $8e
    ld hl, sp-$55                                 ; $5afd: $f8 $ab
    db $fc                                        ; $5aff: $fc
    rst $38                                       ; $5b00: $ff
    rst $28                                       ; $5b01: $ef

Call_098_5b02:
    jr c, jr_098_5af3                             ; $5b02: $38 $ef

    ld b, b                                       ; $5b04: $40
    rst $28                                       ; $5b05: $ef
    jr nz, jr_098_5b08                            ; $5b06: $20 $00

jr_098_5b08:
    ei                                            ; $5b08: $fb
    rlca                                          ; $5b09: $07
    ld d, l                                       ; $5b0a: $55
    inc bc                                        ; $5b0b: $03
    xor a                                         ; $5b0c: $af
    ld bc, $5d30                                  ; $5b0d: $01 $30 $5d
    inc bc                                        ; $5b10: $03
    ld [hl], b                                    ; $5b11: $70
    jr @+$06                                      ; $5b12: $18 $04

    jr c, jr_098_5b6b                             ; $5b14: $38 $55

    xor e                                         ; $5b16: $ab
    cp $01                                        ; $5b17: $fe $01
    jr nz, @+$01                                  ; $5b19: $20 $ff

    ld bc, $3804                                  ; $5b1b: $01 $04 $38
    ld l, d                                       ; $5b1e: $6a
    sub c                                         ; $5b1f: $91
    or l                                          ; $5b20: $b5
    ld b, e                                       ; $5b21: $43
    jp c, $0700                                   ; $5b22: $da $00 $07

jr_098_5b25:
    or [hl]                                       ; $5b25: $b6
    ld c, l                                       ; $5b26: $4d
    dec l                                         ; $5b27: $2d
    jp c, $f75a                                   ; $5b28: $da $5a $f7

    or l                                          ; $5b2b: $b5
    ld bc, $6b6a                                  ; $5b2c: $01 $6a $6b
    push de                                       ; $5b2f: $d5
    call nc, $a9af                                ; $5b30: $d4 $af $a9
    ld [hl], a                                    ; $5b33: $77
    sub b                                         ; $5b34: $90
    ld bc, $7c00                                  ; $5b35: $01 $00 $7c
    ld b, e                                       ; $5b38: $43
    cp h                                          ; $5b39: $bc
    ld d, a                                       ; $5b3a: $57
    cp $21                                        ; $5b3b: $fe $21
    rst $38                                       ; $5b3d: $ff
    ld c, b                                       ; $5b3e: $48
    ld [hl], d                                    ; $5b3f: $72
    rst $30                                       ; $5b40: $f7
    ld a, $48                                     ; $5b41: $3e $48
    ld b, e                                       ; $5b43: $43
    dec d                                         ; $5b44: $15
    inc a                                         ; $5b45: $3c
    ld b, b                                       ; $5b46: $40
    inc bc                                        ; $5b47: $03
    ld bc, $067a                                  ; $5b48: $01 $7a $06
    rst $38                                       ; $5b4b: $ff
    nop                                           ; $5b4c: $00
    ld de, $41ef                                  ; $5b4d: $11 $ef $41
    cp a                                          ; $5b50: $bf
    dec d                                         ; $5b51: $15
    db $eb                                        ; $5b52: $eb
    dec b                                         ; $5b53: $05
    ei                                            ; $5b54: $fb
    nop                                           ; $5b55: $00
    ld b, l                                       ; $5b56: $45
    cp e                                          ; $5b57: $bb
    ld de, $15ef                                  ; $5b58: $11 $ef $15
    db $eb                                        ; $5b5b: $eb
    ld [hl+], a                                   ; $5b5c: $22
    db $dd                                        ; $5b5d: $dd
    nop                                           ; $5b5e: $00
    dec b                                         ; $5b5f: $05
    ei                                            ; $5b60: $fb
    dec bc                                        ; $5b61: $0b
    cp $b7                                        ; $5b62: $fe $b7
    ld e, h                                       ; $5b64: $5c
    rrca                                          ; $5b65: $0f
    ld hl, sp+$03                                 ; $5b66: $f8 $03
    rst $18                                       ; $5b68: $df
    ld [hl], b                                    ; $5b69: $70
    dec sp                                        ; $5b6a: $3b

jr_098_5b6b:
    db $e4                                        ; $5b6b: $e4
    ld e, a                                       ; $5b6c: $5f
    ldh [$b0], a                                  ; $5b6d: $e0 $b0
    jr c, jr_098_5b25                             ; $5b6f: $38 $b4

    ld [$ff01], sp                                ; $5b71: $08 $01 $ff
    nop                                           ; $5b74: $00
    xor e                                         ; $5b75: $ab
    rst $38                                       ; $5b76: $ff
    ld bc, $abff                                  ; $5b77: $01 $ff $ab
    db $10                                        ; $5b7a: $10
    jr nc, jr_098_5b7d                            ; $5b7b: $30 $00

jr_098_5b7d:
    cp $01                                        ; $5b7d: $fe $01
    ld b, c                                       ; $5b7f: $41
    cp a                                          ; $5b80: $bf
    ld bc, $51ff                                  ; $5b81: $01 $ff $51
    xor a                                         ; $5b84: $af
    ld [bc], a                                    ; $5b85: $02
    ld b, l                                       ; $5b86: $45
    cp e                                          ; $5b87: $bb
    ld d, c                                       ; $5b88: $51
    xor a                                         ; $5b89: $af
    dec b                                         ; $5b8a: $05
    ei                                            ; $5b8b: $fb
    ld [$f608], sp                                ; $5b8c: $08 $08 $f6
    nop                                           ; $5b8f: $00
    cp c                                          ; $5b90: $b9
    xor l                                         ; $5b91: $ad
    ld e, a                                       ; $5b92: $5f
    ld d, d                                       ; $5b93: $52
    xor [hl]                                      ; $5b94: $ae
    and l                                         ; $5b95: $a5
    ld e, h                                       ; $5b96: $5c
    ld c, d                                       ; $5b97: $4a
    nop                                           ; $5b98: $00
    cp b                                          ; $5b99: $b8
    push de                                       ; $5b9a: $d5
    ldh a, [$a0]                                  ; $5b9b: $f0 $a0
    ld h, b                                       ; $5b9d: $60
    ld d, d                                       ; $5b9e: $52
    call nz, $b050                                ; $5b9f: $c4 $50 $b0
    inc d                                         ; $5ba2: $14
    rlca                                          ; $5ba3: $07
    inc d                                         ; $5ba4: $14
    rlca                                          ; $5ba5: $07
    dec c                                         ; $5ba6: $0d
    cp h                                          ; $5ba7: $bc
    dec b                                         ; $5ba8: $05
    rst $38                                       ; $5ba9: $ff
    rst $38                                       ; $5baa: $ff
    cp [hl]                                       ; $5bab: $be
    db $eb                                        ; $5bac: $eb
    ld b, $0b                                     ; $5bad: $06 $0b
    ld bc, $0184                                  ; $5baf: $01 $84 $01
    ld bc, $00c0                                  ; $5bb2: $01 $c0 $00
    push bc                                       ; $5bb5: $c5
    nop                                           ; $5bb6: $00
    rst $38                                       ; $5bb7: $ff
    inc b                                         ; $5bb8: $04
    rst $08                                       ; $5bb9: $cf
    rst $38                                       ; $5bba: $ff
    adc a                                         ; $5bbb: $8f
    ei                                            ; $5bbc: $fb
    ld bc, $0080                                  ; $5bbd: $01 $80 $00
    ld d, l                                       ; $5bc0: $55
    xor e                                         ; $5bc1: $ab
    jr nc, jr_098_5c09                            ; $5bc2: $30 $45

    cp e                                          ; $5bc4: $bb
    ld a, $08                                     ; $5bc5: $3e $08
    add b                                         ; $5bc7: $80
    ld [$83ec], sp                                ; $5bc8: $08 $ec $83
    ld e, l                                       ; $5bcb: $5d
    and e                                         ; $5bcc: $a3
    nop                                           ; $5bcd: $00
    db $eb                                        ; $5bce: $eb
    ld b, $76                                     ; $5bcf: $06 $76
    adc l                                         ; $5bd1: $8d
    and c                                         ; $5bd2: $a1
    ld e, $ca                                     ; $5bd3: $1e $ca
    scf                                           ; $5bd5: $37
    ld [$e137], sp                                ; $5bd6: $08 $37 $e1
    ld a, l                                       ; $5bd9: $7d
    ret nz                                        ; $5bda: $c0

    ld h, b                                       ; $5bdb: $60
    ld a, [bc]                                    ; $5bdc: $0a
    ld d, d                                       ; $5bdd: $52
    xor a                                         ; $5bde: $af
    and h                                         ; $5bdf: $a4
    nop                                           ; $5be0: $00
    rra                                           ; $5be1: $1f
    ld c, c                                       ; $5be2: $49
    cp [hl]                                       ; $5be3: $be
    sub b                                         ; $5be4: $90
    ld a, a                                       ; $5be5: $7f
    adc d                                         ; $5be6: $8a
    push af                                       ; $5be7: $f5
    ld b, b                                       ; $5be8: $40
    nop                                           ; $5be9: $00
    rst $38                                       ; $5bea: $ff
    sub d                                         ; $5beb: $92
    rst $28                                       ; $5bec: $ef
    ld hl, $0bdf                                  ; $5bed: $21 $df $0b
    cp $55                                        ; $5bf0: $fe $55
    ld bc, $2dbe                                  ; $5bf2: $01 $be $2d
    ld a, [$f01e]                                 ; $5bf5: $fa $1e $f0
    and l                                         ; $5bf8: $a5
    ld a, d                                       ; $5bf9: $7a
    and b                                         ; $5bfa: $a0
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00
    pop bc                                        ; $5bfd: $c1
    sub l                                         ; $5bfe: $95
    ld l, e                                       ; $5bff: $6b
    dec sp                                        ; $5c00: $3b
    add $d4                                       ; $5c01: $c6 $d4
    rrca                                          ; $5c03: $0f
    ld l, d                                       ; $5c04: $6a
    nop                                           ; $5c05: $00
    rra                                           ; $5c06: $1f
    swap h                                        ; $5c07: $cb $34

jr_098_5c09:
    sbc l                                         ; $5c09: $9d
    ld h, d                                       ; $5c0a: $62
    ld l, [hl]                                    ; $5c0b: $6e
    pop de                                        ; $5c0c: $d1
    xor $00                                       ; $5c0d: $ee $00
    add c                                         ; $5c0f: $81
    db $ed                                        ; $5c10: $ed
    inc de                                        ; $5c11: $13
    cp d                                          ; $5c12: $ba
    rlca                                          ; $5c13: $07
    ld d, h                                       ; $5c14: $54
    rrca                                          ; $5c15: $0f
    jp hl                                         ; $5c16: $e9


    nop                                           ; $5c17: $00
    ld e, $14                                     ; $5c18: $1e $14
    ei                                            ; $5c1a: $fb
    and h                                         ; $5c1b: $a4
    ld a, a                                       ; $5c1c: $7f
    ld e, d                                       ; $5c1d: $5a
    rst $18                                       ; $5c1e: $df
    add d                                         ; $5c1f: $82
    nop                                           ; $5c20: $00
    rst $38                                       ; $5c21: $ff
    add hl, hl                                    ; $5c22: $29
    rst $30                                       ; $5c23: $f7
    jp nc, Jump_000_3eff                          ; $5c24: $d2 $ff $3e

    db $fc                                        ; $5c27: $fc
    dec l                                         ; $5c28: $2d
    nop                                           ; $5c29: $00
    ret c                                         ; $5c2a: $d8

    add d                                         ; $5c2b: $82
    ld a, b                                       ; $5c2c: $78
    sub l                                         ; $5c2d: $95
    add sp, $6a                                   ; $5c2e: $e8 $6a
    ret nz                                        ; $5c30: $c0

    db $f4                                        ; $5c31: $f4
    nop                                           ; $5c32: $00
    add e                                         ; $5c33: $83
    db $dd                                        ; $5c34: $dd
    inc bc                                        ; $5c35: $03
    db $eb                                        ; $5c36: $eb
    add $b5                                       ; $5c37: $c6 $b5
    dec a                                         ; $5c39: $3d
    ld c, c                                       ; $5c3a: $49
    nop                                           ; $5c3b: $00
    sbc b                                         ; $5c3c: $98
    sub h                                         ; $5c3d: $94
    jr nc, jr_098_5c72                            ; $5c3e: $30 $32

    ld h, b                                       ; $5c40: $60
    ld h, h                                       ; $5c41: $64
    ret nz                                        ; $5c42: $c0

    ld [c], a                                     ; $5c43: $e2
    ld [bc], a                                    ; $5c44: $02
    sbc l                                         ; $5c45: $9d
    adc h                                         ; $5c46: $8c
    ld [hl], e                                    ; $5c47: $73
    ld e, d                                       ; $5c48: $5a
    and a                                         ; $5c49: $a7
    rst $30                                       ; $5c4a: $f7

jr_098_5c4b:
    sub b                                         ; $5c4b: $90
    inc bc                                        ; $5c4c: $03
    sbc d                                         ; $5c4d: $9a
    jr nz, jr_098_5c80                            ; $5c4e: $20 $30

    dec [hl]                                      ; $5c50: $35
    ld h, b                                       ; $5c51: $60
    inc bc                                        ; $5c52: $03
    and a                                         ; $5c53: $a7
    add a                                         ; $5c54: $87
    ld de, $ab43                                  ; $5c55: $11 $43 $ab
    nop                                           ; $5c58: $00
    ld b, $06                                     ; $5c59: $06 $06
    inc c                                         ; $5c5b: $0c
    xor l                                         ; $5c5c: $ad
    jr jr_098_5c79                                ; $5c5d: $18 $1a

    jr nc, jr_098_5c95                            ; $5c5f: $30 $34

    nop                                           ; $5c61: $00
    ld h, c                                       ; $5c62: $61
    ld a, d                                       ; $5c63: $7a
    ret c                                         ; $5c64: $d8

    ret nc                                        ; $5c65: $d0

    add l                                         ; $5c66: $85
    add hl, hl                                    ; $5c67: $29
    jp Jump_000_0012                              ; $5c68: $c3 $12 $00


    ld h, [hl]                                    ; $5c6b: $66
    and h                                         ; $5c6c: $a4
    ld c, $4f                                     ; $5c6d: $0e $4f
    dec de                                        ; $5c6f: $1b
    dec de                                        ; $5c70: $1b
    or h                                          ; $5c71: $b4

jr_098_5c72:
    dec b                                         ; $5c72: $05
    nop                                           ; $5c73: $00
    ld a, d                                       ; $5c74: $7a
    ld [hl], l                                    ; $5c75: $75

jr_098_5c76:
    ret nz                                        ; $5c76: $c0

    sub b                                         ; $5c77: $90
    add c                                         ; $5c78: $81

jr_098_5c79:
    ld hl, $1303                                  ; $5c79: $21 $03 $13
    nop                                           ; $5c7c: $00
    add [hl]                                      ; $5c7d: $86
    ld b, [hl]                                    ; $5c7e: $46
    inc c                                         ; $5c7f: $0c

jr_098_5c80:
    dec b                                         ; $5c80: $05
    sbc b                                         ; $5c81: $98
    rst $18                                       ; $5c82: $df
    ldh a, [$ba]                                  ; $5c83: $f0 $ba
    nop                                           ; $5c85: $00
    ld h, h                                       ; $5c86: $64
    ld l, a                                       ; $5c87: $6f
    ret nz                                        ; $5c88: $c0

    call nc, Call_000_2181                        ; $5c89: $d4 $81 $21
    adc e                                         ; $5c8c: $8b
    db $d3                                        ; $5c8d: $d3
    nop                                           ; $5c8e: $00
    and $b6                                       ; $5c8f: $e6 $b6
    ld a, h                                       ; $5c91: $7c
    xor a                                         ; $5c92: $af
    ld e, b                                       ; $5c93: $58
    db $dd                                        ; $5c94: $dd

jr_098_5c95:
    jr nc, jr_098_5c4b                            ; $5c95: $30 $b4

    inc b                                         ; $5c97: $04
    ld l, d                                       ; $5c98: $6a
    ld e, a                                       ; $5c99: $5f
    ld hl, sp-$2c                                 ; $5c9a: $f8 $d4
    cp e                                          ; $5c9c: $bb
    or b                                          ; $5c9d: $b0
    ld [$ff94], sp                                ; $5c9e: $08 $94 $ff
    nop                                           ; $5ca1: $00
    ld l, b                                       ; $5ca2: $68
    ld a, a                                       ; $5ca3: $7f
    sub d                                         ; $5ca4: $92
    dec a                                         ; $5ca5: $3d
    dec h                                         ; $5ca6: $25
    ld a, d                                       ; $5ca7: $7a
    ld a, b                                       ; $5ca8: $78
    rst $18                                       ; $5ca9: $df
    nop                                           ; $5caa: $00
    jp c, $eda7                                   ; $5cab: $da $a7 $ed

    inc bc                                        ; $5cae: $03
    ld a, e                                       ; $5caf: $7b
    ld b, $d4                                     ; $5cb0: $06 $d4
    rrca                                          ; $5cb2: $0f
    nop                                           ; $5cb3: $00
    ld l, a                                       ; $5cb4: $6f
    sbc e                                         ; $5cb5: $9b
    rst $18                                       ; $5cb6: $df
    jr nc, jr_098_5c76                            ; $5cb7: $30 $bd

    ld h, d                                       ; $5cb9: $62
    ld a, a                                       ; $5cba: $7f
    ret nz                                        ; $5cbb: $c0

    nop                                           ; $5cbc: $00
    rst $18                                       ; $5cbd: $df
    rst $38                                       ; $5cbe: $ff
    cp d                                          ; $5cbf: $ba
    db $fc                                        ; $5cc0: $fc
    rst $08                                       ; $5cc1: $cf
    rst $38                                       ; $5cc2: $ff
    sbc e                                         ; $5cc3: $9b
    db $fc                                        ; $5cc4: $fc
    db $10                                        ; $5cc5: $10
    sbc d                                         ; $5cc6: $9a
    db $fd                                        ; $5cc7: $fd
    ret c                                         ; $5cc8: $d8

    ld h, a                                       ; $5cc9: $67
    dec b                                         ; $5cca: $05
    add b                                         ; $5ccb: $80
    rst $38                                       ; $5ccc: $ff
    ei                                            ; $5ccd: $fb
    push af                                       ; $5cce: $f5
    nop                                           ; $5ccf: $00
    dec l                                         ; $5cd0: $2d
    dec de                                        ; $5cd1: $1b
    ei                                            ; $5cd2: $fb
    db $ed                                        ; $5cd3: $ed
    db $fd                                        ; $5cd4: $fd
    dec hl                                        ; $5cd5: $2b
    xor c                                         ; $5cd6: $a9
    ld a, a                                       ; $5cd7: $7f
    ld b, b                                       ; $5cd8: $40
    dec hl                                        ; $5cd9: $2b
    ld [hl], a                                    ; $5cda: $77
    dec b                                         ; $5cdb: $05
    inc bc                                        ; $5cdc: $03
    rst $38                                       ; $5cdd: $ff
    rst $18                                       ; $5cde: $df
    cp a                                          ; $5cdf: $bf
    or l                                          ; $5ce0: $b5
    rst $38                                       ; $5ce1: $ff
    ld b, b                                       ; $5ce2: $40
    jp c, Jump_000_3004                           ; $5ce3: $da $04 $30

    ldh a, [rIE]                                  ; $5ce6: $f0 $ff
    ld sp, hl                                     ; $5ce8: $f9
    rst $38                                       ; $5ce9: $ff
    ld e, e                                       ; $5cea: $5b
    rst $38                                       ; $5ceb: $ff
    jr nz, @-$51                                  ; $5cec: $20 $ad

    ei                                            ; $5cee: $fb
    inc b                                         ; $5cef: $04
    jr z, jr_098_5d01                             ; $5cf0: $28 $0f

    rst $38                                       ; $5cf2: $ff
    sub l                                         ; $5cf3: $95
    ld [$d0d5], a                                 ; $5cf4: $ea $d5 $d0
    ld b, b                                       ; $5cf7: $40
    ld [bc], a                                    ; $5cf8: $02
    jr nc, @+$1d                                  ; $5cf9: $30 $1b

    ld l, d                                       ; $5cfb: $6a
    inc [hl]                                      ; $5cfc: $34
    inc bc                                        ; $5cfd: $03
    rst $08                                       ; $5cfe: $cf
    ldh a, [$9a]                                  ; $5cff: $f0 $9a

jr_098_5d01:
    pop hl                                        ; $5d01: $e1
    nop                                           ; $5d02: $00
    pop af                                        ; $5d03: $f1
    ret nz                                        ; $5d04: $c0

    xor d                                         ; $5d05: $aa
    pop bc                                        ; $5d06: $c1
    push af                                       ; $5d07: $f5
    ret nz                                        ; $5d08: $c0

    xor [hl]                                      ; $5d09: $ae
    pop bc                                        ; $5d0a: $c1
    ld d, [hl]                                    ; $5d0b: $56
    rst $30                                       ; $5d0c: $f7
    inc b                                         ; $5d0d: $04
    nop                                           ; $5d0e: $00
    add b                                         ; $5d0f: $80
    ld [de], a                                    ; $5d10: $12
    db $10                                        ; $5d11: $10
    di                                            ; $5d12: $f3
    ld [de], a                                    ; $5d13: $12
    nop                                           ; $5d14: $00
    ld c, $08                                     ; $5d15: $0e $08
    rst $30                                       ; $5d17: $f7
    ld [bc], a                                    ; $5d18: $02
    ret nz                                        ; $5d19: $c0

    rst $18                                       ; $5d1a: $df
    ldh [$ee], a                                  ; $5d1b: $e0 $ee
    pop af                                        ; $5d1d: $f1
    call nc, Call_000_05d1                        ; $5d1e: $d4 $d1 $05
    xor b                                         ; $5d21: $a8
    nop                                           ; $5d22: $00
    rst $38                                       ; $5d23: $ff
    xor e                                         ; $5d24: $ab
    ret nc                                        ; $5d25: $d0

    ret nc                                        ; $5d26: $d0

    and c                                         ; $5d27: $a1
    and e                                         ; $5d28: $a3
    ret nz                                        ; $5d29: $c0

    cp a                                          ; $5d2a: $bf
    nop                                           ; $5d2b: $00
    ld d, b                                       ; $5d2c: $50
    or [hl]                                       ; $5d2d: $b6
    ld e, c                                       ; $5d2e: $59
    db $fd                                        ; $5d2f: $fd
    ld [de], a                                    ; $5d30: $12
    or a                                          ; $5d31: $b7
    ld c, b                                       ; $5d32: $48
    rst $38                                       ; $5d33: $ff
    db $10                                        ; $5d34: $10
    db $10                                        ; $5d35: $10
    or h                                          ; $5d36: $b4
    ld c, e                                       ; $5d37: $4b
    inc l                                         ; $5d38: $2c

jr_098_5d39:
    ld [$cdb7], sp                                ; $5d39: $08 $b7 $cd
    xor a                                         ; $5d3c: $af
    ld d, c                                       ; $5d3d: $51
    nop                                           ; $5d3e: $00
    ei                                            ; $5d3f: $fb
    add l                                         ; $5d40: $85
    db $eb                                        ; $5d41: $eb
    dec d                                         ; $5d42: $15
    rst $38                                       ; $5d43: $ff
    add c                                         ; $5d44: $81
    cp a                                          ; $5d45: $bf
    pop bc                                        ; $5d46: $c1
    nop                                           ; $5d47: $00
    ld bc, $d3ff                                  ; $5d48: $01 $ff $d3
    cpl                                           ; $5d4b: $2f
    ld c, c                                       ; $5d4c: $49
    or a                                          ; $5d4d: $b7
    ld d, c                                       ; $5d4e: $51
    xor a                                         ; $5d4f: $af
    add b                                         ; $5d50: $80
    inc b                                         ; $5d51: $04
    ld [$f709], sp                                ; $5d52: $08 $09 $f7
    ld bc, $49ff                                  ; $5d55: $01 $ff $49
    or a                                          ; $5d58: $b7
    ld de, $ef00                                  ; $5d59: $11 $00 $ef
    sbc d                                         ; $5d5c: $9a
    ldh [$f0], a                                  ; $5d5d: $e0 $f0
    ret nz                                        ; $5d5f: $c0

    xor d                                         ; $5d60: $aa
    ret nz                                        ; $5d61: $c0

    push af                                       ; $5d62: $f5
    ld [$afc0], sp                                ; $5d63: $08 $c0 $af
    ret nz                                        ; $5d66: $c0

    rst $30                                       ; $5d67: $f7
    inc b                                         ; $5d68: $04
    nop                                           ; $5d69: $00
    rst $18                                       ; $5d6a: $df
    ldh [$b9], a                                  ; $5d6b: $e0 $b9
    nop                                           ; $5d6d: $00
    rlca                                          ; $5d6e: $07
    rra                                           ; $5d6f: $1f
    inc bc                                        ; $5d70: $03
    xor c                                         ; $5d71: $a9
    rlca                                          ; $5d72: $07
    rst $38                                       ; $5d73: $ff
    inc bc                                        ; $5d74: $03
    db $fd                                        ; $5d75: $fd
    ld bc, $fb03                                  ; $5d76: $01 $03 $fb
    rlca                                          ; $5d79: $07
    push af                                       ; $5d7a: $f5
    dec bc                                        ; $5d7b: $0b
    db $eb                                        ; $5d7c: $eb
    rla                                           ; $5d7d: $17
    inc h                                         ; $5d7e: $24
    ld [$4100], sp                                ; $5d7f: $08 $00 $41
    cp a                                          ; $5d82: $bf
    ld b, l                                       ; $5d83: $45
    cp e                                          ; $5d84: $bb
    dec d                                         ; $5d85: $15
    db $eb                                        ; $5d86: $eb
    ld d, l                                       ; $5d87: $55
    xor e                                         ; $5d88: $ab
    ret nz                                        ; $5d89: $c0

    call nc, Call_098_6e09                        ; $5d8a: $d4 $09 $6e
    jr z, jr_098_5d39                             ; $5d8d: $28 $aa

    ret nc                                        ; $5d8f: $d0

    ret nc                                        ; $5d90: $d0

    and b                                         ; $5d91: $a0
    and d                                         ; $5d92: $a2
    ret nz                                        ; $5d93: $c0

    inc b                                         ; $5d94: $04
    push af                                       ; $5d95: $f5
    add b                                         ; $5d96: $80
    sub e                                         ; $5d97: $93
    ld l, a                                       ; $5d98: $6f
    rla                                           ; $5d99: $17
    inc a                                         ; $5d9a: $3c
    ld [de], a                                    ; $5d9b: $12
    xor e                                         ; $5d9c: $ab
    rlca                                          ; $5d9d: $07
    ld c, b                                       ; $5d9e: $48
    dec b                                         ; $5d9f: $05
    ret nc                                        ; $5da0: $d0

    ld [de], a                                    ; $5da1: $12
    ld d, e                                       ; $5da2: $53
    xor a                                         ; $5da3: $af
    ld b, d                                       ; $5da4: $42
    nop                                           ; $5da5: $00
    add e                                         ; $5da6: $83
    xor c                                         ; $5da7: $a9
    rlca                                          ; $5da8: $07
    nop                                           ; $5da9: $00
    ld a, a                                       ; $5daa: $7f
    add e                                         ; $5dab: $83
    db $fd                                        ; $5dac: $fd
    inc bc                                        ; $5dad: $03
    ld a, e                                       ; $5dae: $7b
    add a                                         ; $5daf: $87
    push af                                       ; $5db0: $f5
    dec bc                                        ; $5db1: $0b
    ld bc, $c0aa                                  ; $5db2: $01 $aa $c0
    rst $18                                       ; $5db5: $df
    and b                                         ; $5db6: $a0
    xor d                                         ; $5db7: $aa
    push de                                       ; $5db8: $d5
    ret nz                                        ; $5db9: $c0

    inc c                                         ; $5dba: $0c
    ld de, $df00                                  ; $5dbb: $11 $00 $df
    cp a                                          ; $5dbe: $bf
    or c                                          ; $5dbf: $b1

jr_098_5dc0:
    rst $38                                       ; $5dc0: $ff
    ei                                            ; $5dc1: $fb
    dec b                                         ; $5dc2: $05
    push de                                       ; $5dc3: $d5
    dec hl                                        ; $5dc4: $2b
    db $10                                        ; $5dc5: $10
    xor c                                         ; $5dc6: $a9
    ld d, a                                       ; $5dc7: $57
    inc bc                                        ; $5dc8: $03
    inc c                                         ; $5dc9: $0c
    ld de, $fff9                                  ; $5dca: $11 $f9 $ff
    adc e                                         ; $5dcd: $8b
    rst $38                                       ; $5dce: $ff
    jr nz, jr_098_5e3c                            ; $5dcf: $20 $6b

    sub a                                         ; $5dd1: $97
    ld b, d                                       ; $5dd2: $42
    jr z, jr_098_5dc0                             ; $5dd3: $28 $eb

    rlca                                          ; $5dd5: $07
    ld b, l                                       ; $5dd6: $45
    add e                                         ; $5dd7: $83
    xor a                                         ; $5dd8: $af
    ret nz                                        ; $5dd9: $c0

    or d                                          ; $5dda: $b2
    ld [bc], a                                    ; $5ddb: $02
    ld b, d                                       ; $5ddc: $42
    ld e, b                                       ; $5ddd: $58
    ld l, d                                       ; $5dde: $6a
    or l                                          ; $5ddf: $b5
    and l                                         ; $5de0: $a5
    ld a, d                                       ; $5de1: $7a
    ld [$0035], a                                 ; $5de2: $ea $35 $00
    xor d                                         ; $5de5: $aa
    nop                                           ; $5de6: $00
    and c                                         ; $5de7: $a1
    rst $38                                       ; $5de8: $ff
    ld d, b                                       ; $5de9: $50
    xor a                                         ; $5dea: $af
    xor l                                         ; $5deb: $ad
    ld d, d                                       ; $5dec: $52
    nop                                           ; $5ded: $00
    ld d, d                                       ; $5dee: $52
    xor l                                         ; $5def: $ad
    ret nc                                        ; $5df0: $d0

    cpl                                           ; $5df1: $2f
    inc l                                         ; $5df2: $2c
    db $d3                                        ; $5df3: $d3
    ld d, c                                       ; $5df4: $51
    xor a                                         ; $5df5: $af
    nop                                           ; $5df6: $00
    xor b                                         ; $5df7: $a8
    inc bc                                        ; $5df8: $03
    ld e, a                                       ; $5df9: $5f
    rst $38                                       ; $5dfa: $ff
    jr z, @-$27                                   ; $5dfb: $28 $d7

    ld b, c                                       ; $5dfd: $41
    cp a                                          ; $5dfe: $bf
    ld [$57a8], sp                                ; $5dff: $08 $a8 $57
    adc d                                         ; $5e02: $8a
    ld [hl], l                                    ; $5e03: $75
    or d                                          ; $5e04: $b2
    dec bc                                        ; $5e05: $0b
    rst $10                                       ; $5e06: $d7
    nop                                           ; $5e07: $00
    ld a, [bc]                                    ; $5e08: $0a
    nop                                           ; $5e09: $00
    ldh [$65], a                                  ; $5e0a: $e0 $65
    sbc b                                         ; $5e0c: $98
    adc b                                         ; $5e0d: $88
    inc b                                         ; $5e0e: $04
    add b                                         ; $5e0f: $80
    ld [bc], a                                    ; $5e10: $02
    add d                                         ; $5e11: $82
    nop                                           ; $5e12: $00
    ld a, l                                       ; $5e13: $7d
    ld d, l                                       ; $5e14: $55
    xor d                                         ; $5e15: $aa
    ld a, a                                       ; $5e16: $7f
    nop                                           ; $5e17: $00
    db $db                                        ; $5e18: $db
    nop                                           ; $5e19: $00
    xor a                                         ; $5e1a: $af
    add b                                         ; $5e1b: $80
    ld [hl], $05                                  ; $5e1c: $36 $05
    ld b, b                                       ; $5e1e: $40
    ld bc, $0201                                  ; $5e1f: $01 $01 $02
    and l                                         ; $5e22: $a5
    ld e, d                                       ; $5e23: $5a
    xor d                                         ; $5e24: $aa
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    dec e                                         ; $5e27: $1d
    rst $38                                       ; $5e28: $ff

jr_098_5e29:
    adc e                                         ; $5e29: $8b
    ld a, h                                       ; $5e2a: $7c
    ld c, d                                       ; $5e2b: $4a
    cp l                                          ; $5e2c: $bd

Jump_098_5e2d:
    cp c                                          ; $5e2d: $b9
    nop                                           ; $5e2e: $00
    ld c, [hl]                                    ; $5e2f: $4e
    jp z, $aa3d                                   ; $5e30: $ca $3d $aa

    nop                                           ; $5e33: $00
    ld de, $a8ef                                  ; $5e34: $11 $ef $a8
    nop                                           ; $5e37: $00
    inc bc                                        ; $5e38: $03
    ld a, a                                       ; $5e39: $7f
    rst $38                                       ; $5e3a: $ff
    or l                                          ; $5e3b: $b5

jr_098_5e3c:
    ld c, e                                       ; $5e3c: $4b
    ret nc                                        ; $5e3d: $d0

    cpl                                           ; $5e3e: $2f
    dec l                                         ; $5e3f: $2d
    nop                                           ; $5e40: $00
    db $d3                                        ; $5e41: $d3
    ld d, b                                       ; $5e42: $50
    xor a                                         ; $5e43: $af

jr_098_5e44:
    xor c                                         ; $5e44: $a9
    inc bc                                        ; $5e45: $03
    add b                                         ; $5e46: $80
    ld bc, $0083                                  ; $5e47: $01 $83 $00
    ld bc, $8147                                  ; $5e4a: $01 $47 $81
    ld l, h                                       ; $5e4d: $6c
    add d                                         ; $5e4e: $82
    ld [hl], $cc                                  ; $5e4f: $36 $cc
    add hl, de                                    ; $5e51: $19
    nop                                           ; $5e52: $00
    cp $d6                                        ; $5e53: $fe $d6
    db $e3                                        ; $5e55: $e3
    db $eb                                        ; $5e56: $eb
    ld bc, $040a                                  ; $5e57: $01 $0a $04
    add [hl]                                      ; $5e5a: $86
    nop                                           ; $5e5b: $00
    ld a, b                                       ; $5e5c: $78
    inc bc                                        ; $5e5d: $03
    adc h                                         ; $5e5e: $8c
    ld bc, $0806                                  ; $5e5f: $01 $06 $08
    rlca                                          ; $5e62: $07
    inc sp                                        ; $5e63: $33
    inc b                                         ; $5e64: $04
    rrca                                          ; $5e65: $0f
    ret z                                         ; $5e66: $c8

    jr nc, jr_098_5e29                            ; $5e67: $30 $c0

    ldh [$30], a                                  ; $5e69: $e0 $30
    daa                                           ; $5e6b: $27
    db $e3                                        ; $5e6c: $e3
    rst $38                                       ; $5e6d: $ff
    ld bc, $87e3                                  ; $5e6e: $01 $e3 $87
    ei                                            ; $5e71: $fb
    add h                                         ; $5e72: $84
    ei                                            ; $5e73: $fb
    sbc a                                         ; $5e74: $9f
    db $e3                                        ; $5e75: $e3
    rst $38                                       ; $5e76: $ff
    rrca                                          ; $5e77: $0f
    nop                                           ; $5e78: $00
    db $fc                                        ; $5e79: $fc
    db $fc                                        ; $5e7a: $fc
    ldh [$fc], a                                  ; $5e7b: $e0 $fc
    ldh [$9c], a                                  ; $5e7d: $e0 $9c
    ldh [$9c], a                                  ; $5e7f: $e0 $9c
    ld b, b                                       ; $5e81: $40
    ld h, b                                       ; $5e82: $60
    inc b                                         ; $5e83: $04
    nop                                           ; $5e84: $00
    push de                                       ; $5e85: $d5
    nop                                           ; $5e86: $00
    add d                                         ; $5e87: $82
    nop                                           ; $5e88: $00
    add c                                         ; $5e89: $81
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    add d                                         ; $5e8c: $82
    ld bc, $0284                                  ; $5e8d: $01 $84 $02
    add d                                         ; $5e90: $82
    inc b                                         ; $5e91: $04
    add e                                         ; $5e92: $83
    inc b                                         ; $5e93: $04
    nop                                           ; $5e94: $00
    add h                                         ; $5e95: $84
    inc bc                                        ; $5e96: $03
    jr nz, jr_098_5ed9                            ; $5e97: $20 $40

    and b                                         ; $5e99: $a0
    ld b, b                                       ; $5e9a: $40
    ret nc                                        ; $5e9b: $d0

    ld h, b                                       ; $5e9c: $60
    nop                                           ; $5e9d: $00
    ld l, h                                       ; $5e9e: $6c
    ldh a, [$39]                                  ; $5e9f: $f0 $39
    ld e, $0b                                     ; $5ea1: $1e $0b
    rlca                                          ; $5ea3: $07
    add a                                         ; $5ea4: $87
    ld [bc], a                                    ; $5ea5: $02
    ld b, $ee                                     ; $5ea6: $06 $ee
    ld [bc], a                                    ; $5ea8: $02
    sbc a                                         ; $5ea9: $9f
    db $e3                                        ; $5eaa: $e3
    sbc h                                         ; $5eab: $9c
    ld [bc], a                                    ; $5eac: $02
    jr nz, jr_098_5f29                            ; $5ead: $20 $7a

    rla                                           ; $5eaf: $17
    sbc a                                         ; $5eb0: $9f
    ldh [$36], a                                  ; $5eb1: $e0 $36
    ld [$1802], sp                                ; $5eb3: $08 $02 $18
    ld c, d                                       ; $5eb6: $4a
    jr jr_098_5e44                                ; $5eb7: $18 $8b

    ld bc, $0082                                  ; $5eb9: $01 $82 $00
    sub l                                         ; $5ebc: $95
    ld [bc], a                                    ; $5ebd: $02
    nop                                           ; $5ebe: $00
    xor e                                         ; $5ebf: $ab
    nop                                           ; $5ec0: $00
    db $dd                                        ; $5ec1: $dd
    nop                                           ; $5ec2: $00
    or a                                          ; $5ec3: $b7
    ld a, b                                       ; $5ec4: $78
    inc b                                         ; $5ec5: $04
    ei                                            ; $5ec6: $fb
    nop                                           ; $5ec7: $00
    inc b                                         ; $5ec8: $04
    sub [hl]                                      ; $5ec9: $96
    db $ec                                        ; $5eca: $ec
    db $fc                                        ; $5ecb: $fc
    ld a, b                                       ; $5ecc: $78
    ld b, c                                       ; $5ecd: $41
    nop                                           ; $5ece: $00
    xor b                                         ; $5ecf: $a8
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    ld [hl], l                                    ; $5ed2: $75
    nop                                           ; $5ed3: $00
    rst $18                                       ; $5ed4: $df
    nop                                           ; $5ed5: $00
    cp a                                          ; $5ed6: $bf
    nop                                           ; $5ed7: $00
    db $ed                                        ; $5ed8: $ed

jr_098_5ed9:
    ld [bc], a                                    ; $5ed9: $02
    ld [de], a                                    ; $5eda: $12
    and b                                         ; $5edb: $a0
    ld e, a                                       ; $5edc: $5f
    ld d, l                                       ; $5edd: $55
    xor d                                         ; $5ede: $aa
    rst $30                                       ; $5edf: $f7
    inc c                                         ; $5ee0: $0c
    nop                                           ; $5ee1: $00
    ld a, [$0000]                                 ; $5ee2: $fa $00 $00
    ld bc, $427e                                  ; $5ee5: $01 $7e $42
    add c                                         ; $5ee8: $81
    ld bc, $a800                                  ; $5ee9: $01 $00 $a8
    ld [$5557], sp                                ; $5eec: $08 $57 $55
    xor d                                         ; $5eef: $aa
    cp a                                          ; $5ef0: $bf
    and d                                         ; $5ef1: $a2
    inc b                                         ; $5ef2: $04
    xor e                                         ; $5ef3: $ab
    nop                                           ; $5ef4: $00
    ld e, a                                       ; $5ef5: $5f
    ld [$2a00], sp                                ; $5ef6: $08 $00 $2a
    add b                                         ; $5ef9: $80
    inc b                                         ; $5efa: $04
    or b                                          ; $5efb: $b0
    rlca                                          ; $5efc: $07
    ld bc, $4600                                  ; $5efd: $01 $00 $46
    nop                                           ; $5f00: $00
    ld bc, $03bc                                  ; $5f01: $01 $bc $03
    xor e                                         ; $5f04: $ab
    ld d, [hl]                                    ; $5f05: $56

Jump_098_5f06:
    ld e, $fc                                     ; $5f06: $1e $fc
    ld [hl], l                                    ; $5f08: $75
    ld bc, $5ae0                                  ; $5f09: $01 $e0 $5a
    jr nz, @+$4a                                  ; $5f0c: $20 $48

    add b                                         ; $5f0e: $80
    ld bc, $c580                                  ; $5f0f: $01 $80 $c5
    rla                                           ; $5f12: $17
    xor b                                         ; $5f13: $a8
    inc b                                         ; $5f14: $04
    jr nc, jr_098_5f37                            ; $5f15: $30 $20

    ld c, $50                                     ; $5f17: $0e $50
    ld [$501c], sp                                ; $5f19: $08 $1c $50
    nop                                           ; $5f1c: $00
    nop                                           ; $5f1d: $00
    inc l                                         ; $5f1e: $2c
    nop                                           ; $5f1f: $00
    db $10                                        ; $5f20: $10
    db $10                                        ; $5f21: $10
    ld [$0814], sp                                ; $5f22: $08 $14 $08
    jr nz, jr_098_5f3f                            ; $5f25: $20 $18

    ret z                                         ; $5f27: $c8

    inc c                                         ; $5f28: $0c

jr_098_5f29:
    jr nc, @-$0e                                  ; $5f29: $30 $f0

    ldh [$c0], a                                  ; $5f2b: $e0 $c0
    inc e                                         ; $5f2d: $1c
    ld h, b                                       ; $5f2e: $60
    inc a                                         ; $5f2f: $3c
    ld [$ffc0], sp                                ; $5f30: $08 $c0 $ff
    nop                                           ; $5f33: $00
    cp a                                          ; $5f34: $bf
    ret nz                                        ; $5f35: $c0

    ld a, a                                       ; $5f36: $7f

jr_098_5f37:
    add b                                         ; $5f37: $80
    ldh a, [$8f]                                  ; $5f38: $f0 $8f
    ld a, d                                       ; $5f3a: $7a
    adc a                                         ; $5f3b: $8f
    inc bc                                        ; $5f3c: $03
    ld hl, sp-$71                                 ; $5f3d: $f8 $8f

jr_098_5f3f:
    ld [hl], a                                    ; $5f3f: $77
    adc a                                         ; $5f40: $8f
    rst $38                                       ; $5f41: $ff
    add b                                         ; $5f42: $80
    di                                            ; $5f43: $f3
    rlca                                          ; $5f44: $07
    jr nz, @+$07                                  ; $5f45: $20 $05

    nop                                           ; $5f47: $00
    rlca                                          ; $5f48: $07
    ld hl, sp-$51                                 ; $5f49: $f8 $af
    ld hl, sp+$0f                                 ; $5f4b: $f8 $0f
    ld hl, sp-$09                                 ; $5f4d: $f8 $f7
    ld hl, sp+$10                                 ; $5f4f: $f8 $10
    rst $38                                       ; $5f51: $ff
    nop                                           ; $5f52: $00
    add b                                         ; $5f53: $80
    ld d, d                                       ; $5f54: $52
    ld b, $c0                                     ; $5f55: $06 $c0
    cp a                                          ; $5f57: $bf
    jr nz, @-$1f                                  ; $5f58: $20 $df

    add b                                         ; $5f5a: $80
    inc b                                         ; $5f5b: $04
    jr z, jr_098_5f5e                             ; $5f5c: $28 $00

jr_098_5f5e:
    rst $38                                       ; $5f5e: $ff
    db $fc                                        ; $5f5f: $fc
    inc bc                                        ; $5f60: $03
    ld [bc], a                                    ; $5f61: $02
    db $fd                                        ; $5f62: $fd
    inc b                                         ; $5f63: $04
    ld b, b                                       ; $5f64: $40
    ei                                            ; $5f65: $fb
    inc b                                         ; $5f66: $04
    jr z, jr_098_5fe8                             ; $5f67: $28 $7f

    add b                                         ; $5f69: $80

jr_098_5f6a:
    ld [c], a                                     ; $5f6a: $e2
    sbc l                                         ; $5f6b: $9d
    ld [hl], a                                    ; $5f6c: $77
    adc b                                         ; $5f6d: $88
    nop                                           ; $5f6e: $00
    rst $30                                       ; $5f6f: $f7
    adc b                                         ; $5f70: $88
    ld h, d                                       ; $5f71: $62
    sbc l                                         ; $5f72: $9d
    rst $38                                       ; $5f73: $ff
    add b                                         ; $5f74: $80
    ld a, a                                       ; $5f75: $7f
    add b                                         ; $5f76: $80
    nop                                           ; $5f77: $00
    cp a                                          ; $5f78: $bf
    ret nz                                        ; $5f79: $c0

    rst $38                                       ; $5f7a: $ff
    nop                                           ; $5f7b: $00
    inc hl                                        ; $5f7c: $23
    call c, $8877                                 ; $5f7d: $dc $77 $88
    ld [$8877], sp                                ; $5f80: $08 $77 $88
    inc hl                                        ; $5f83: $23
    call c, Call_000_24f8                         ; $5f84: $dc $f8 $24
    sbc a                                         ; $5f87: $9f
    ld hl, sp-$61                                 ; $5f88: $f8 $9f
    dec b                                         ; $5f8a: $05
    ld hl, sp-$69                                 ; $5f8b: $f8 $97
    rst $38                                       ; $5f8d: $ff
    sub a                                         ; $5f8e: $97
    ld a, a                                       ; $5f8f: $7f
    ld [bc], a                                    ; $5f90: $02
    nop                                           ; $5f91: $00
    ld a, b                                       ; $5f92: $78
    ld [bc], a                                    ; $5f93: $02
    nop                                           ; $5f94: $00
    jp nc, $015a                                  ; $5f95: $d2 $5a $01

    ld e, [hl]                                    ; $5f98: $5e
    add hl, bc                                    ; $5f99: $09
    inc e                                         ; $5f9a: $1c
    ld [bc], a                                    ; $5f9b: $02
    jr z, jr_098_6013                             ; $5f9c: $28 $75

    adc d                                         ; $5f9e: $8a
    and b                                         ; $5f9f: $a0
    ld e, a                                       ; $5fa0: $5f
    cp a                                          ; $5fa1: $bf
    ld [hl], b                                    ; $5fa2: $70
    ld b, b                                       ; $5fa3: $40
    and b                                         ; $5fa4: $a0
    ld e, a                                       ; $5fa5: $5f
    inc [hl]                                      ; $5fa6: $34
    ld [$2e10], sp                                ; $5fa7: $08 $10 $2e
    rst $38                                       ; $5faa: $ff
    ccf                                           ; $5fab: $3f
    rst $38                                       ; $5fac: $ff
    rst $38                                       ; $5fad: $ff
    ldh [$3a], a                                  ; $5fae: $e0 $3a
    ld [$19a4], sp                                ; $5fb0: $08 $a4 $19
    ld [bc], a                                    ; $5fb3: $02
    nop                                           ; $5fb4: $00
    sbc h                                         ; $5fb5: $9c
    db $fc                                        ; $5fb6: $fc
    sbc h                                         ; $5fb7: $9c
    rst $38                                       ; $5fb8: $ff
    db $e3                                        ; $5fb9: $e3
    inc de                                        ; $5fba: $13
    rst $18                                       ; $5fbb: $df
    inc hl                                        ; $5fbc: $23
    call c, $3002                                 ; $5fbd: $dc $02 $30
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    cp b                                          ; $5fc2: $b8
    add hl, de                                    ; $5fc3: $19
    add h                                         ; $5fc4: $84
    add hl, sp                                    ; $5fc5: $39
    add [hl]                                      ; $5fc6: $86
    and b                                         ; $5fc7: $a0
    ld e, $cf                                     ; $5fc8: $1e $cf
    ldh a, [$d0]                                  ; $5fca: $f0 $d0
    ldh [rSC], a                                  ; $5fcc: $e0 $02
    jr jr_098_5f6a                                ; $5fce: $18 $9a

    ld c, $ff                                     ; $5fd0: $0e $ff
    ld bc, $f2ff                                  ; $5fd2: $01 $ff $f2
    rrca                                          ; $5fd5: $0f
    dec bc                                        ; $5fd6: $0b
    rlca                                          ; $5fd7: $07
    ld a, [bc]                                    ; $5fd8: $0a
    rlca                                          ; $5fd9: $07
    inc b                                         ; $5fda: $04
    ld [$cf22], sp                                ; $5fdb: $08 $22 $cf
    ldh a, [$c2]                                  ; $5fde: $f0 $c2
    ld e, $c4                                     ; $5fe0: $1e $c4
    rst $38                                       ; $5fe2: $ff
    db $ec                                        ; $5fe3: $ec
    rlc [hl]                                      ; $5fe4: $cb $06
    ret nz                                        ; $5fe6: $c0

    db $10                                        ; $5fe7: $10

jr_098_5fe8:
    rst $38                                       ; $5fe8: $ff
    di                                            ; $5fe9: $f3
    rrca                                          ; $5fea: $0f
    jr nz, @+$0a                                  ; $5feb: $20 $08

    cp $ff                                        ; $5fed: $fe $ff
    rst $00                                       ; $5fef: $c7
    rst $38                                       ; $5ff0: $ff
    ld c, [hl]                                    ; $5ff1: $4e
    ld e, $db                                     ; $5ff2: $1e $db
    ld b, $46                                     ; $5ff4: $06 $46
    rst $38                                       ; $5ff6: $ff
    db $fc                                        ; $5ff7: $fc
    ld c, b                                       ; $5ff8: $48
    ld e, $09                                     ; $5ff9: $1e $09
    db $fc                                        ; $5ffb: $fc
    ld c, b                                       ; $5ffc: $48
    cp $31                                        ; $5ffd: $fe $31
    ld bc, $f600                                  ; $5fff: $01 $00 $f6
    ld b, $42                                     ; $6002: $06 $42
    add hl, bc                                    ; $6004: $09

Call_098_6005:
    ret nz                                        ; $6005: $c0

    add b                                         ; $6006: $80
    sub a                                         ; $6007: $97
    inc b                                         ; $6008: $04
    nop                                           ; $6009: $00
    ld a, c                                       ; $600a: $79
    adc [hl]                                      ; $600b: $8e
    ld [$3f00], sp                                ; $600c: $08 $00 $3f
    add hl, bc                                    ; $600f: $09
    pop de                                        ; $6010: $d1
    ld c, $04                                     ; $6011: $0e $04

jr_098_6013:
    jr nc, @+$01                                  ; $6013: $30 $ff

    jp nc, Jump_000_0723                          ; $6015: $d2 $23 $07

    ld a, d                                       ; $6018: $7a
    and b                                         ; $6019: $a0
    daa                                           ; $601a: $27
    rlca                                          ; $601b: $07
    add $0b                                       ; $601c: $c6 $0b
    ld l, $0f                                     ; $601e: $2e $0f
    or h                                          ; $6020: $b4
    dec c                                         ; $6021: $0d
    rlca                                          ; $6022: $07
    scf                                           ; $6023: $37
    rlca                                          ; $6024: $07
    ld b, e                                       ; $6025: $43
    rst $10                                       ; $6026: $d7
    dec sp                                        ; $6027: $3b
    rla                                           ; $6028: $17
    jr c, jr_098_6033                             ; $6029: $38 $08

    adc l                                         ; $602b: $8d
    ld b, b                                       ; $602c: $40
    nop                                           ; $602d: $00
    sub [hl]                                      ; $602e: $96
    inc a                                         ; $602f: $3c
    ld [$0b47], sp                                ; $6030: $08 $47 $0b

jr_098_6033:
    inc a                                         ; $6033: $3c
    ld c, b                                       ; $6034: $48
    ret nz                                        ; $6035: $c0

    ld h, $07                                     ; $6036: $26 $07
    ld e, d                                       ; $6038: $5a
    inc bc                                        ; $6039: $03
    ret nz                                        ; $603a: $c0

    ld a, [$37c5]                                 ; $603b: $fa $c5 $37
    rst $08                                       ; $603e: $cf
    ld a, d                                       ; $603f: $7a
    ld bc, $3dc8                                  ; $6040: $01 $c8 $3d
    ret z                                         ; $6043: $c8

    halt                                          ; $6044: $76
    rst $08                                       ; $6045: $cf
    ld [hl-], a                                   ; $6046: $32
    ret z                                         ; $6047: $c8

    and b                                         ; $6048: $a0
    add hl, bc                                    ; $6049: $09
    nop                                           ; $604a: $00
    xor e                                         ; $604b: $ab
    ld d, h                                       ; $604c: $54
    dec sp                                        ; $604d: $3b
    db $fc                                        ; $604e: $fc
    sub l                                         ; $604f: $95
    add $6f                                       ; $6050: $c6 $6f
    call nz, $b508                                ; $6052: $c4 $08 $b5
    and $bb                                       ; $6055: $e6 $bb
    inc e                                         ; $6057: $1c
    halt                                          ; $6058: $76
    rra                                           ; $6059: $1f
    ld h, c                                       ; $605a: $61
    rst $38                                       ; $605b: $ff
    ld e, [hl]                                    ; $605c: $5e
    inc c                                         ; $605d: $0c
    pop hl                                        ; $605e: $e1

jr_098_605f:
    ld l, e                                       ; $605f: $6b
    ret nz                                        ; $6060: $c0

    ld c, b                                       ; $6061: $48
    inc b                                         ; $6062: $04
    nop                                           ; $6063: $00
    sub b                                         ; $6064: $90
    rra                                           ; $6065: $1f
    db $fd                                        ; $6066: $fd
    rst $38                                       ; $6067: $ff
    nop                                           ; $6068: $00
    db $db                                        ; $6069: $db
    db $fd                                        ; $606a: $fd
    db $fd                                        ; $606b: $fd
    reti                                          ; $606c: $d9


    ret                                           ; $606d: $c9


    db $dd                                        ; $606e: $dd
    reti                                          ; $606f: $d9


    call $7508                                    ; $6070: $cd $08 $75
    adc $3d                                       ; $6073: $ce $3d
    ret                                           ; $6075: $c9


    inc a                                         ; $6076: $3c
    ld [$cf77], sp                                ; $6077: $08 $77 $cf
    ld a, [hl-]                                   ; $607a: $3a
    ld b, b                                       ; $607b: $40
    push bc                                       ; $607c: $c5
    adc $07                                       ; $607d: $ce $07
    ret nz                                        ; $607f: $c0

    ld e, c                                       ; $6080: $59
    ld b, $b7                                     ; $6081: $06 $b7
    inc e                                         ; $6083: $1c
    push af                                       ; $6084: $f5
    ld bc, $4fa6                                  ; $6085: $01 $a6 $4f
    db $e4                                        ; $6088: $e4
    add hl, sp                                    ; $6089: $39
    cp $ab                                        ; $608a: $fe $ab
    ld d, h                                       ; $608c: $54
    ld a, [bc]                                    ; $608d: $0a
    rrca                                          ; $608e: $0f
    call nz, $0834                                ; $608f: $c4 $34 $08
    jr c, @+$0a                                   ; $6092: $38 $08

    ld e, [hl]                                    ; $6094: $5e
    pop hl                                        ; $6095: $e1
    ld h, c                                       ; $6096: $61
    jp nz, $d917                                  ; $6097: $c2 $17 $d9

    call $cd00                                    ; $609a: $cd $00 $cd
    reti                                          ; $609d: $d9


    db $fd                                        ; $609e: $fd
    reti                                          ; $609f: $d9


    reti                                          ; $60a0: $d9


    db $fd                                        ; $60a1: $fd
    rst $38                                       ; $60a2: $ff
    db $fd                                        ; $60a3: $fd
    ld e, a                                       ; $60a4: $5f
    db $fd                                        ; $60a5: $fd
    db $db                                        ; $60a6: $db
    daa                                           ; $60a7: $27
    ld hl, sp-$1d                                 ; $60a8: $f8 $e3
    ccf                                           ; $60aa: $3f
    db $ed                                        ; $60ab: $ed
    rla                                           ; $60ac: $17
    jr jr_098_60b8                                ; $60ad: $18 $09

    inc h                                         ; $60af: $24
    add hl, de                                    ; $60b0: $19
    and $0f                                       ; $60b1: $e6 $0f
    jr nz, jr_098_605f                            ; $60b3: $20 $aa

    ld d, l                                       ; $60b5: $55
    db $ed                                        ; $60b6: $ed
    ld d, b                                       ; $60b7: $50

jr_098_60b8:
    rst $38                                       ; $60b8: $ff
    xor e                                         ; $60b9: $ab
    ld d, a                                       ; $60ba: $57
    dec b                                         ; $60bb: $05
    inc bc                                        ; $60bc: $03
    nop                                           ; $60bd: $00
    inc bc                                        ; $60be: $03
    and c                                         ; $60bf: $a1
    inc bc                                        ; $60c0: $03
    ld bc, $e903                                  ; $60c1: $01 $03 $e9
    inc bc                                        ; $60c4: $03
    ld bc, $0700                                  ; $60c5: $01 $00 $07
    ld d, e                                       ; $60c8: $53
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    ld b, b                                       ; $60cb: $40
    rst $38                                       ; $60cc: $ff
    ld d, l                                       ; $60cd: $55
    ldh [rHDMA4], a                               ; $60ce: $e0 $54
    ld c, d                                       ; $60d0: $4a
    ld hl, sp+$05                                 ; $60d1: $f8 $05
    rst $38                                       ; $60d3: $ff
    ld [hl], $07                                  ; $60d4: $36 $07
    rst $10                                       ; $60d6: $d7
    add c                                         ; $60d7: $81
    ld c, $ff                                     ; $60d8: $0e $ff
    ld d, l                                       ; $60da: $55
    ld [hl], b                                    ; $60db: $70
    nop                                           ; $60dc: $00
    inc [hl]                                      ; $60dd: $34
    nop                                           ; $60de: $00
    db $10                                        ; $60df: $10
    db $10                                        ; $60e0: $10
    ld h, d                                       ; $60e1: $62
    ld [$ff00], sp                                ; $60e2: $08 $00 $ff
    ld e, l                                       ; $60e5: $5d
    db $e3                                        ; $60e6: $e3
    db $10                                        ; $60e7: $10
    ld h, d                                       ; $60e8: $62
    db $e3                                        ; $60e9: $e3
    ld h, e                                       ; $60ea: $63
    ld c, d                                       ; $60eb: $4a
    dec b                                         ; $60ec: $05
    xor a                                         ; $60ed: $af
    ret nc                                        ; $60ee: $d0

    push de                                       ; $60ef: $d5
    xor d                                         ; $60f0: $aa
    ld [hl], c                                    ; $60f1: $71
    push de                                       ; $60f2: $d5
    jr nz, jr_098_60fd                            ; $60f3: $20 $08

    and b                                         ; $60f5: $a0
    ld b, $46                                     ; $60f6: $06 $46
    add hl, de                                    ; $60f8: $19
    ld a, a                                       ; $60f9: $7f
    add b                                         ; $60fa: $80
    ld d, l                                       ; $60fb: $55
    ld h, d                                       ; $60fc: $62

jr_098_60fd:
    dec b                                         ; $60fd: $05
    sub b                                         ; $60fe: $90
    add b                                         ; $60ff: $80
    ld e, c                                       ; $6100: $59
    nop                                           ; $6101: $00
    rst $38                                       ; $6102: $ff
    add b                                         ; $6103: $80
    ld e, c                                       ; $6104: $59
    add b                                         ; $6105: $80
    rst $38                                       ; $6106: $ff
    ld d, l                                       ; $6107: $55
    add b                                         ; $6108: $80
    dec b                                         ; $6109: $05
    xor d                                         ; $610a: $aa
    ret nz                                        ; $610b: $c0

    ld d, b                                       ; $610c: $50
    add b                                         ; $610d: $80
    and b                                         ; $610e: $a0
    inc b                                         ; $610f: $04
    db $10                                        ; $6110: $10
    ld d, l                                       ; $6111: $55
    ret nz                                        ; $6112: $c0

    ld [bc], a                                    ; $6113: $02
    ld b, a                                       ; $6114: $47
    ld d, l                                       ; $6115: $55
    ld l, [hl]                                    ; $6116: $6e
    inc bc                                        ; $6117: $03
    dec b                                         ; $6118: $05
    nop                                           ; $6119: $00
    inc bc                                        ; $611a: $03
    inc b                                         ; $611b: $04
    db $10                                        ; $611c: $10
    ld l, h                                       ; $611d: $6c

jr_098_611e:
    nop                                           ; $611e: $00
    sbc $02                                       ; $611f: $de $02
    or a                                          ; $6121: $b7
    ld [c], a                                     ; $6122: $e2
    ld a, [bc]                                    ; $6123: $0a
    cp a                                          ; $6124: $bf
    inc e                                         ; $6125: $1c
    nop                                           ; $6126: $00
    inc c                                         ; $6127: $0c
    ld [$8aab], sp                                ; $6128: $08 $ab $8a
    ccf                                           ; $612b: $3f
    sub [hl]                                      ; $612c: $96
    inc bc                                        ; $612d: $03
    push de                                       ; $612e: $d5
    ld c, $00                                     ; $612f: $0e $00
    xor d                                         ; $6131: $aa
    rst $38                                       ; $6132: $ff
    jp z, $80f5                                   ; $6133: $ca $f5 $80

    rst $38                                       ; $6136: $ff
    sub [hl]                                      ; $6137: $96
    jp hl                                         ; $6138: $e9


    ld b, b                                       ; $6139: $40
    ret nz                                        ; $613a: $c0

    sbc b                                         ; $613b: $98
    dec h                                         ; $613c: $25
    xor d                                         ; $613d: $aa
    rst $38                                       ; $613e: $ff
    ld a, a                                       ; $613f: $7f
    add b                                         ; $6140: $80
    ld b, $f9                                     ; $6141: $06 $f9
    inc hl                                        ; $6143: $23
    pop af                                        ; $6144: $f1
    ld c, $e8                                     ; $6145: $0e $e8
    rrca                                          ; $6147: $0f
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    add c                                         ; $614a: $81
    ld [bc], a                                    ; $614b: $02
    ld [bc], a                                    ; $614c: $02
    sbc c                                         ; $614d: $99
    ld bc, $04fc                                  ; $614e: $01 $fc $04
    db $10                                        ; $6151: $10
    cp b                                          ; $6152: $b8
    dec e                                         ; $6153: $1d
    ld d, b                                       ; $6154: $50

jr_098_6155:
    rlca                                          ; $6155: $07
    ret nz                                        ; $6156: $c0

    nop                                           ; $6157: $00
    push de                                       ; $6158: $d5
    rrca                                          ; $6159: $0f
    ret z                                         ; $615a: $c8

    dec e                                         ; $615b: $1d
    ld bc, $18ff                                  ; $615c: $01 $ff $18
    add e                                         ; $615f: $83
    ld a, a                                       ; $6160: $7f
    ld bc, $05fa                                  ; $6161: $01 $fa $05
    inc b                                         ; $6164: $04
    ld [$bfc1], sp                                ; $6165: $08 $c1 $bf
    ld [bc], a                                    ; $6168: $02
    ld b, c                                       ; $6169: $41
    db $fd                                        ; $616a: $fd
    ld a, [c]                                     ; $616b: $f2
    rrca                                          ; $616c: $0f
    ld e, e                                       ; $616d: $5b
    add b                                         ; $616e: $80
    xor a                                         ; $616f: $af
    nop                                           ; $6170: $00
    ld d, l                                       ; $6171: $55
    xor b                                         ; $6172: $a8
    inc bc                                        ; $6173: $03
    jr nz, jr_098_61b7                            ; $6174: $20 $41

    add b                                         ; $6176: $80
    ldh [$2b], a                                  ; $6177: $e0 $2b
    ldh a, [rIF]                                  ; $6179: $f0 $0f
    ld c, c                                       ; $617b: $49
    jr nc, jr_098_611e                            ; $617c: $30 $a0

    inc b                                         ; $617e: $04
    ld b, b                                       ; $617f: $40
    ld b, b                                       ; $6180: $40
    add b                                         ; $6181: $80
    xor [hl]                                      ; $6182: $ae
    pop bc                                        ; $6183: $c1
    jp nc, $aa3d                                  ; $6184: $d2 $3d $aa

    pop de                                        ; $6187: $d1
    ld [bc], a                                    ; $6188: $02
    db $d3                                        ; $6189: $d3
    and b                                         ; $618a: $a0
    push af                                       ; $618b: $f5
    add b                                         ; $618c: $80
    xor d                                         ; $618d: $aa
    pop bc                                        ; $618e: $c1
    ld b, d                                       ; $618f: $42
    ld c, l                                       ; $6190: $4d
    and d                                         ; $6191: $a2
    jr nz, jr_098_6155                            ; $6192: $20 $c1

    rst $30                                       ; $6194: $f7
    ld [de], a                                    ; $6195: $12
    ld d, b                                       ; $6196: $50
    or c                                          ; $6197: $b1
    rst $38                                       ; $6198: $ff
    push de                                       ; $6199: $d5
    cp e                                          ; $619a: $bb
    or e                                          ; $619b: $b3
    ld bc, $d5fd                                  ; $619c: $01 $fd $d5
    cp e                                          ; $619f: $bb
    cp c                                          ; $61a0: $b9
    rst $30                                       ; $61a1: $f7
    db $d3                                        ; $61a2: $d3
    cp a                                          ; $61a3: $bf
    ld h, b                                       ; $61a4: $60
    ld c, $00                                     ; $61a5: $0e $00
    adc b                                         ; $61a7: $88
    rst $38                                       ; $61a8: $ff
    ld l, l                                       ; $61a9: $6d
    sbc d                                         ; $61aa: $9a
    db $dd                                        ; $61ab: $dd
    adc d                                         ; $61ac: $8a
    ld a, [hl]                                    ; $61ad: $7e
    adc c                                         ; $61ae: $89
    nop                                           ; $61af: $00
    rst $18                                       ; $61b0: $df
    adc a                                         ; $61b1: $8f
    add hl, hl                                    ; $61b2: $29
    sbc $9f                                       ; $61b3: $de $9f
    rst $08                                       ; $61b5: $cf
    ld l, [hl]                                    ; $61b6: $6e

jr_098_61b7:
    sbc c                                         ; $61b7: $99
    nop                                           ; $61b8: $00
    nop                                           ; $61b9: $00
    rst $38                                       ; $61ba: $ff
    sub $2b                                       ; $61bb: $d6 $2b
    cp d                                          ; $61bd: $ba
    rst $00                                       ; $61be: $c7
    rst $10                                       ; $61bf: $d7
    xor d                                         ; $61c0: $aa
    nop                                           ; $61c1: $00
    ld a, [$2ef5]                                 ; $61c2: $fa $f5 $2e
    add hl, de                                    ; $61c5: $19
    ei                                            ; $61c6: $fb
    xor $be                                       ; $61c7: $ee $be
    jp hl                                         ; $61c9: $e9


    add b                                         ; $61ca: $80
    ld l, $58                                     ; $61cb: $2e $58
    ld sp, hl                                     ; $61cd: $f9
    rst $38                                       ; $61ce: $ff
    call $abbb                                    ; $61cf: $cd $bb $ab
    rst $18                                       ; $61d2: $df
    db $dd                                        ; $61d3: $dd
    inc b                                         ; $61d4: $04
    xor e                                         ; $61d5: $ab
    xor e                                         ; $61d6: $ab
    rst $18                                       ; $61d7: $df
    call $a2fb                                    ; $61d8: $cd $fb $a2
    dec e                                         ; $61db: $1d
    ld e, l                                       ; $61dc: $5d
    add e                                         ; $61dd: $83
    add hl, de                                    ; $61de: $19
    ei                                            ; $61df: $fb
    dec b                                         ; $61e0: $05
    ld d, l                                       ; $61e1: $55
    sub h                                         ; $61e2: $94
    rlca                                          ; $61e3: $07
    and d                                         ; $61e4: $a2
    dec l                                         ; $61e5: $2d
    push af                                       ; $61e6: $f5
    dec bc                                        ; $61e7: $0b
    and d                                         ; $61e8: $a2
    dec a                                         ; $61e9: $3d
    sbc h                                         ; $61ea: $9c
    db $e4                                        ; $61eb: $e4
    dec b                                         ; $61ec: $05
    add e                                         ; $61ed: $83
    adc e                                         ; $61ee: $8b
    ld [hl-], a                                   ; $61ef: $32
    ld h, b                                       ; $61f0: $60
    db $f4                                        ; $61f1: $f4
    dec b                                         ; $61f2: $05
    ld [hl-], a                                   ; $61f3: $32
    ld d, b                                       ; $61f4: $50
    nop                                           ; $61f5: $00
    rst $38                                       ; $61f6: $ff
    add b                                         ; $61f7: $80
    add b                                         ; $61f8: $80
    ld c, $d6                                     ; $61f9: $0e $d6
    add hl, sp                                    ; $61fb: $39
    or h                                          ; $61fc: $b4
    ld c, e                                       ; $61fd: $4b
    sub $39                                       ; $61fe: $d6 $39
    cp h                                          ; $6200: $bc
    nop                                           ; $6201: $00
    ld b, e                                       ; $6202: $43
    or $19                                        ; $6203: $f6 $19
    ld bc, $eaff                                  ; $6205: $01 $ff $ea
    sub l                                         ; $6208: $95
    xor a                                         ; $6209: $af
    nop                                           ; $620a: $00
    pop de                                        ; $620b: $d1
    ld [$bf15], a                                 ; $620c: $ea $15 $bf
    pop bc                                        ; $620f: $c1
    xor [hl]                                      ; $6210: $ae
    ld d, l                                       ; $6211: $55
    or a                                          ; $6212: $b7
    dec e                                         ; $6213: $1d
    ret                                           ; $6214: $c9


    xor [hl]                                      ; $6215: $ae
    push de                                       ; $6216: $d5
    and b                                         ; $6217: $a0
    ld c, [hl]                                    ; $6218: $4e
    ld [hl+], a                                   ; $6219: $22
    ld [$4ea0], sp                                ; $621a: $08 $a0 $4e
    xor a                                         ; $621d: $af
    ld [hl+], a                                   ; $621e: $22
    nop                                           ; $621f: $00
    ld e, h                                       ; $6220: $5c
    ld b, l                                       ; $6221: $45
    ld [hl], c                                    ; $6222: $71
    dec b                                         ; $6223: $05
    ld a, [hl+]                                   ; $6224: $2a
    ld e, $0b                                     ; $6225: $1e $0b
    jr z, jr_098_6234                             ; $6227: $28 $0b

    ld a, [bc]                                    ; $6229: $0a
    rlca                                          ; $622a: $07
    ld d, b                                       ; $622b: $50
    nop                                           ; $622c: $00
    db $10                                        ; $622d: $10
    ld [bc], a                                    ; $622e: $02
    nop                                           ; $622f: $00
    inc d                                         ; $6230: $14
    db $10                                        ; $6231: $10
    ld b, b                                       ; $6232: $40
    dec bc                                        ; $6233: $0b

jr_098_6234:
    ld bc, $0184                                  ; $6234: $01 $84 $01
    db $10                                        ; $6237: $10
    ld bc, $fe01                                  ; $6238: $01 $01 $fe
    jr z, jr_098_6243                             ; $623b: $28 $06

    ld bc, $cfff                                  ; $623d: $01 $ff $cf
    rst $38                                       ; $6240: $ff
    nop                                           ; $6241: $00
    adc d                                         ; $6242: $8a

jr_098_6243:
    rst $38                                       ; $6243: $ff
    adc a                                         ; $6244: $8f
    rst $38                                       ; $6245: $ff
    ld l, d                                       ; $6246: $6a
    sbc h                                         ; $6247: $9c
    rst $18                                       ; $6248: $df
    adc a                                         ; $6249: $8f
    inc h                                         ; $624a: $24
    ld a, e                                       ; $624b: $7b
    adc h                                         ; $624c: $8c
    ldh a, [rNR23]                                ; $624d: $f0 $18
    ld l, b                                       ; $624f: $68
    sbc a                                         ; $6250: $9f
    ld [hl], b                                    ; $6251: $70
    cpl                                           ; $6252: $2f
    ld sp, hl                                     ; $6253: $f9
    rst $38                                       ; $6254: $ff
    nop                                           ; $6255: $00
    dec hl                                        ; $6256: $2b
    rra                                           ; $6257: $1f
    rst $38                                       ; $6258: $ff
    rst $28                                       ; $6259: $ef
    dec sp                                        ; $625a: $3b
    rst $28                                       ; $625b: $ef
    adc a                                         ; $625c: $8f
    ld hl, sp+$02                                 ; $625d: $f8 $02
    ld l, [hl]                                    ; $625f: $6e
    sbc c                                         ; $6260: $99
    db $dd                                        ; $6261: $dd
    adc d                                         ; $6262: $8a
    ld a, a                                       ; $6263: $7f
    adc b                                         ; $6264: $88
    db $10                                        ; $6265: $10
    add hl, de                                    ; $6266: $19
    ld l, h                                       ; $6267: $6c
    ld b, b                                       ; $6268: $40
    sbc e                                         ; $6269: $9b
    db $10                                        ; $626a: $10
    scf                                           ; $626b: $37
    pop af                                        ; $626c: $f1
    cpl                                           ; $626d: $2f

jr_098_626e:
    add hl, de                                    ; $626e: $19
    rst $38                                       ; $626f: $ff
    db $ed                                        ; $6270: $ed
    cp a                                          ; $6271: $bf
    ld b, b                                       ; $6272: $40
    jp hl                                         ; $6273: $e9


    ldh [$5e], a                                  ; $6274: $e0 $5e
    ld b, c                                       ; $6276: $41
    cp a                                          ; $6277: $bf
    ld b, b                                       ; $6278: $40
    cp a                                          ; $6279: $bf
    ld [hl], l                                    ; $627a: $75
    rst $38                                       ; $627b: $ff
    ld h, d                                       ; $627c: $62
    ld a, [hl+]                                   ; $627d: $2a
    adc d                                         ; $627e: $8a
    inc hl                                        ; $627f: $23
    adc b                                         ; $6280: $88
    rrca                                          ; $6281: $0f
    ld c, c                                       ; $6282: $49
    or [hl]                                       ; $6283: $b6
    ld d, l                                       ; $6284: $55
    sub b                                         ; $6285: $90
    daa                                           ; $6286: $27
    rst $38                                       ; $6287: $ff
    jr nz, @+$01                                  ; $6288: $20 $ff

    xor a                                         ; $628a: $af
    jp nc, Jump_098_4107                          ; $628b: $d2 $07 $41

    cp a                                          ; $628e: $bf
    xor l                                         ; $628f: $ad
    rst $38                                       ; $6290: $ff
    push de                                       ; $6291: $d5
    ret nz                                        ; $6292: $c0

    ld hl, sp+$22                                 ; $6293: $f8 $22
    ld a, [$150a]                                 ; $6295: $fa $0a $15
    db $eb                                        ; $6298: $eb
    ld b, l                                       ; $6299: $45
    cp e                                          ; $629a: $bb
    ld d, c                                       ; $629b: $51
    xor a                                         ; $629c: $af
    ld [bc], a                                    ; $629d: $02
    ld de, $15ef                                  ; $629e: $11 $ef $15
    db $eb                                        ; $62a1: $eb
    ld b, c                                       ; $62a2: $41
    cp a                                          ; $62a3: $bf
    cp d                                          ; $62a4: $ba
    dec bc                                        ; $62a5: $0b
    adc d                                         ; $62a6: $8a
    nop                                           ; $62a7: $00
    ld bc, $8105                                  ; $62a8: $01 $05 $81
    adc e                                         ; $62ab: $8b
    ld bc, $0385                                  ; $62ac: $01 $85 $03
    adc e                                         ; $62af: $8b
    nop                                           ; $62b0: $00
    inc b                                         ; $62b1: $04
    add h                                         ; $62b2: $84
    ld [$0890], sp                                ; $62b3: $08 $90 $08
    adc b                                         ; $62b6: $88
    db $10                                        ; $62b7: $10
    add c                                         ; $62b8: $81
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00
    add e                                         ; $62bb: $83
    nop                                           ; $62bc: $00
    ld c, h                                       ; $62bd: $4c
    add e                                         ; $62be: $83
    ld bc, $faff                                  ; $62bf: $01 $ff $fa
    nop                                           ; $62c2: $00
    db $fc                                        ; $62c3: $fc
    jr z, jr_098_62d6                             ; $62c4: $28 $10

    ld b, $18                                     ; $62c6: $06 $18
    inc sp                                        ; $62c8: $33
    inc c                                         ; $62c9: $0c
    rst $00                                       ; $62ca: $c7
    ret nz                                        ; $62cb: $c0

    sub c                                         ; $62cc: $91
    inc b                                         ; $62cd: $04
    inc b                                         ; $62ce: $04
    ld c, b                                       ; $62cf: $48
    add h                                         ; $62d0: $84
    jr jr_098_626e                                ; $62d1: $18 $9b

    inc c                                         ; $62d3: $0c
    adc b                                         ; $62d4: $88
    rrca                                          ; $62d5: $0f

jr_098_62d6:
    nop                                           ; $62d6: $00
    add a                                         ; $62d7: $87
    rlca                                          ; $62d8: $07
    ld c, e                                       ; $62d9: $4b
    add b                                         ; $62da: $80
    add l                                         ; $62db: $85
    nop                                           ; $62dc: $00
    ld c, b                                       ; $62dd: $48
    add a                                         ; $62de: $87
    nop                                           ; $62df: $00
    sub h                                         ; $62e0: $94
    ld [$1fe7], sp                                ; $62e1: $08 $e7 $1f
    sbc l                                         ; $62e4: $9d
    ld [hl], b                                    ; $62e5: $70
    ld a, [hl+]                                   ; $62e6: $2a
    ldh a, [rP1]                                  ; $62e7: $f0 $00
    ld d, l                                       ; $62e9: $55
    adc b                                         ; $62ea: $88
    ld c, d                                       ; $62eb: $4a
    add h                                         ; $62ec: $84
    add b                                         ; $62ed: $80
    call nz, $ec94                                ; $62ee: $c4 $94 $ec
    nop                                           ; $62f1: $00
    call c, Call_098_483c                         ; $62f2: $dc $3c $48
    sub b                                         ; $62f5: $90
    adc b                                         ; $62f6: $88
    db $10                                        ; $62f7: $10
    ld d, h                                       ; $62f8: $54
    sbc b                                         ; $62f9: $98
    nop                                           ; $62fa: $00
    or e                                          ; $62fb: $b3
    inc e                                         ; $62fc: $1c
    ld a, b                                       ; $62fd: $78
    adc a                                         ; $62fe: $8f
    rst $18                                       ; $62ff: $df
    rlca                                          ; $6300: $07
    ld a, a                                       ; $6301: $7f
    add b                                         ; $6302: $80
    nop                                           ; $6303: $00
    xor l                                         ; $6304: $ad
    jp nc, Jump_000_040e                          ; $6305: $d2 $0e $04

    inc b                                         ; $6308: $04
    ld [bc], a                                    ; $6309: $02
    dec b                                         ; $630a: $05
    ld [bc], a                                    ; $630b: $02
    nop                                           ; $630c: $00
    ld c, h                                       ; $630d: $4c
    ld [bc], a                                    ; $630e: $02
    ld a, c                                       ; $630f: $79
    add [hl]                                      ; $6310: $86
    inc bc                                        ; $6311: $03
    db $fc                                        ; $6312: $fc
    cp $f9                                        ; $6313: $fe $f9
    ld [bc], a                                    ; $6315: $02
    db $eb                                        ; $6316: $eb
    inc d                                         ; $6317: $14
    ld a, a                                       ; $6318: $7f
    add b                                         ; $6319: $80
    cp d                                          ; $631a: $ba
    push bc                                       ; $631b: $c5
    db $10                                        ; $631c: $10
    dec b                                         ; $631d: $05
    rst $18                                       ; $631e: $df
    ret nc                                        ; $631f: $d0

    db $10                                        ; $6320: $10
    dec b                                         ; $6321: $05
    add [hl]                                      ; $6322: $86
    rlca                                          ; $6323: $07
    cp [hl]                                       ; $6324: $be
    sbc h                                         ; $6325: $9c
    ld [bc], a                                    ; $6326: $02
    xor d                                         ; $6327: $aa
    ld d, l                                       ; $6328: $55
    ld d, l                                       ; $6329: $55
    xor d                                         ; $632a: $aa
    ld bc, $df20                                  ; $632b: $01 $20 $df
    ld b, l                                       ; $632e: $45
    cp [hl]                                       ; $632f: $be
    ld [$15ff], sp                                ; $6330: $08 $ff $15
    jr nz, jr_098_633a                            ; $6333: $20 $05

    ld [bc], a                                    ; $6335: $02
    rst $38                                       ; $6336: $ff
    cpl                                           ; $6337: $2f
    rst $38                                       ; $6338: $ff
    ld e, e                                       ; $6339: $5b

jr_098_633a:
    rst $38                                       ; $633a: $ff
    ld l, $04                                     ; $633b: $2e $04
    nop                                           ; $633d: $00
    cpl                                           ; $633e: $2f
    ld a, [hl-]                                   ; $633f: $3a
    rst $38                                       ; $6340: $ff
    ld e, d                                       ; $6341: $5a
    inc c                                         ; $6342: $0c
    db $10                                        ; $6343: $10
    adc b                                         ; $6344: $88
    rlca                                          ; $6345: $07
    or b                                          ; $6346: $b0
    ld a, [hl+]                                   ; $6347: $2a
    add b                                         ; $6348: $80
    sub b                                         ; $6349: $90
    ld [bc], a                                    ; $634a: $02
    add e                                         ; $634b: $83
    ldh [$f4], a                                  ; $634c: $e0 $f4
    nop                                           ; $634e: $00
    and b                                         ; $634f: $a0

Call_098_6350:
    ld a, [hl+]                                   ; $6350: $2a
    ld e, b                                       ; $6351: $58
    dec bc                                        ; $6352: $0b
    ld d, b                                       ; $6353: $50
    inc c                                         ; $6354: $0c
    and d                                         ; $6355: $a2
    rlca                                          ; $6356: $07
    ld b, d                                       ; $6357: $42
    rst $38                                       ; $6358: $ff
    ld bc, $8360                                  ; $6359: $01 $60 $83
    rst $38                                       ; $635c: $ff
    pop bc                                        ; $635d: $c1
    cp a                                          ; $635e: $bf
    inc b                                         ; $635f: $04
    ld c, b                                       ; $6360: $48
    nop                                           ; $6361: $00
    add d                                         ; $6362: $82
    ld bc, $0360                                  ; $6363: $01 $60 $03
    nop                                           ; $6366: $00
    dec b                                         ; $6367: $05
    nop                                           ; $6368: $00
    inc de                                        ; $6369: $13
    inc b                                         ; $636a: $04
    nop                                           ; $636b: $00
    inc hl                                        ; $636c: $23
    ld [bc], a                                    ; $636d: $02
    nop                                           ; $636e: $00
    dec d                                         ; $636f: $15
    nop                                           ; $6370: $00
    dec bc                                        ; $6371: $0b
    nop                                           ; $6372: $00
    rla                                           ; $6373: $17
    inc b                                         ; $6374: $04
    nop                                           ; $6375: $00
    rlca                                          ; $6376: $07
    sbc $04                                       ; $6377: $de $04
    jr nz, @+$16                                  ; $6379: $20 $14

    ld e, b                                       ; $637b: $58
    inc bc                                        ; $637c: $03
    jr nz, jr_098_637f                            ; $637d: $20 $00

jr_098_637f:
    inc l                                         ; $637f: $2c
    ld [$0818], sp                                ; $6380: $08 $18 $08
    inc [hl]                                      ; $6383: $34
    ld [$8503], sp                                ; $6384: $08 $03 $85
    inc l                                         ; $6387: $2c
    jr nz, jr_098_63ca                            ; $6388: $20 $40

    rst $38                                       ; $638a: $ff
    ret nz                                        ; $638b: $c0

    rst $38                                       ; $638c: $ff
    inc b                                         ; $638d: $04
    ld [$797f], sp                                ; $638e: $08 $7f $79
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    ld d, l                                       ; $6393: $55
    ld [$d5ea], a                                 ; $6394: $ea $ea $d5
    pop bc                                        ; $6397: $c1
    rst $38                                       ; $6398: $ff
    ld b, c                                       ; $6399: $41
    rst $38                                       ; $639a: $ff
    ret nz                                        ; $639b: $c0

    inc b                                         ; $639c: $04
    ld [$0888], sp                                ; $639d: $08 $88 $08
    push de                                       ; $63a0: $d5
    db $eb                                        ; $63a1: $eb
    ld l, e                                       ; $63a2: $6b
    push de                                       ; $63a3: $d5
    add e                                         ; $63a4: $83
    rst $38                                       ; $63a5: $ff
    ld d, b                                       ; $63a6: $50
    add d                                         ; $63a7: $82
    add h                                         ; $63a8: $84
    nop                                           ; $63a9: $00
    add d                                         ; $63aa: $82
    sub a                                         ; $63ab: $97
    db $10                                        ; $63ac: $10
    rst $10                                       ; $63ad: $d7
    xor e                                         ; $63ae: $ab
    xor d                                         ; $63af: $aa
    rst $10                                       ; $63b0: $d7
    ld a, [bc]                                    ; $63b1: $0a
    ld [bc], a                                    ; $63b2: $02
    rst $38                                       ; $63b3: $ff
    inc bc                                        ; $63b4: $03
    rst $38                                       ; $63b5: $ff
    inc b                                         ; $63b6: $04
    ld [$a9fe], sp                                ; $63b7: $08 $fe $a9
    nop                                           ; $63ba: $00
    ld d, [hl]                                    ; $63bb: $56
    inc e                                         ; $63bc: $1c
    xor e                                         ; $63bd: $ab
    xor e                                         ; $63be: $ab
    ld d, a                                       ; $63bf: $57
    inc [hl]                                      ; $63c0: $34
    ld [$1804], sp                                ; $63c1: $08 $04 $18
    ld b, b                                       ; $63c4: $40
    nop                                           ; $63c5: $00
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    ld h, b                                       ; $63c8: $60
    ret nz                                        ; $63c9: $c0

jr_098_63ca:
    inc [hl]                                      ; $63ca: $34
    ld [$1804], sp                                ; $63cb: $08 $04 $18
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    ld [$7fff], a                                 ; $63d0: $ea $ff $7f
    ld h, b                                       ; $63d3: $60
    ret nz                                        ; $63d4: $c0

    inc [hl]                                      ; $63d5: $34
    ld [$1804], sp                                ; $63d6: $08 $04 $18
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    xor e                                         ; $63db: $ab
    rst $38                                       ; $63dc: $ff
    cp $60                                        ; $63dd: $fe $60
    inc bc                                        ; $63df: $03
    inc [hl]                                      ; $63e0: $34
    ld [$1804], sp                                ; $63e1: $08 $04 $18
    rst $38                                       ; $63e4: $ff
    rst $38                                       ; $63e5: $ff
    xor d                                         ; $63e6: $aa
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    nop                                           ; $63e9: $00
    inc bc                                        ; $63ea: $03
    ld a, a                                       ; $63eb: $7f
    ret nz                                        ; $63ec: $c0

    rst $38                                       ; $63ed: $ff
    ret nz                                        ; $63ee: $c0

    ld a, a                                       ; $63ef: $7f
    ret nz                                        ; $63f0: $c0

    rst $30                                       ; $63f1: $f7
    adc h                                         ; $63f2: $8c
    inc b                                         ; $63f3: $04
    nop                                           ; $63f4: $00
    push de                                       ; $63f5: $d5
    ret nz                                        ; $63f6: $c0

    ld a, a                                       ; $63f7: $7f
    adc b                                         ; $63f8: $88
    ld [$000e], sp                                ; $63f9: $08 $0e $00
    ld a, a                                       ; $63fc: $7f
    ret nz                                        ; $63fd: $c0

    ld d, b                                       ; $63fe: $50
    ld [hl], a                                    ; $63ff: $77
    inc d                                         ; $6400: $14
    nop                                           ; $6401: $00
    ld d, l                                       ; $6402: $55
    ld a, [de]                                    ; $6403: $1a
    nop                                           ; $6404: $00
    push de                                       ; $6405: $d5
    ret nz                                        ; $6406: $c0

    cp $03                                        ; $6407: $fe $03
    and b                                         ; $6409: $a0
    ld [bc], a                                    ; $640a: $02
    ld [$0676], sp                                ; $640b: $08 $76 $06
    nop                                           ; $640e: $00
    ld d, [hl]                                    ; $640f: $56
    inc bc                                        ; $6410: $03
    rst $38                                       ; $6411: $ff
    inc bc                                        ; $6412: $03
    ld d, a                                       ; $6413: $57
    xor [hl]                                      ; $6414: $ae
    ld c, $00                                     ; $6415: $0e $00
    rst $38                                       ; $6417: $ff
    ld [de], a                                    ; $6418: $12
    nop                                           ; $6419: $00
    ld [hl], a                                    ; $641a: $77
    ld d, $00                                     ; $641b: $16 $00
    inc c                                         ; $641d: $0c
    nop                                           ; $641e: $00
    adc h                                         ; $641f: $8c
    nop                                           ; $6420: $00
    ld l, d                                       ; $6421: $6a
    adc b                                         ; $6422: $88
    jr c, jr_098_6425                             ; $6423: $38 $00

jr_098_6425:
    ld l, d                                       ; $6425: $6a
    ret nz                                        ; $6426: $c0

    ret nz                                        ; $6427: $c0

    inc b                                         ; $6428: $04
    db $10                                        ; $6429: $10
    ld b, b                                       ; $642a: $40
    ret nz                                        ; $642b: $c0

    rst $38                                       ; $642c: $ff
    xor l                                         ; $642d: $ad
    stop                                          ; $642e: $10 $00
    ld d, l                                       ; $6430: $55
    stop                                          ; $6431: $10 $00
    ld b, b                                       ; $6433: $40
    inc b                                         ; $6434: $04
    db $10                                        ; $6435: $10
    db $10                                        ; $6436: $10
    ld [$38aa], sp                                ; $6437: $08 $aa $38
    nop                                           ; $643a: $00
    ld [de], a                                    ; $643b: $12
    xor d                                         ; $643c: $aa
    inc bc                                        ; $643d: $03
    ld [bc], a                                    ; $643e: $02
    inc b                                         ; $643f: $04
    db $10                                        ; $6440: $10
    ld [bc], a                                    ; $6441: $02
    inc bc                                        ; $6442: $03
    db $10                                        ; $6443: $10
    ld [$b057], sp                                ; $6444: $08 $57 $b0
    stop                                          ; $6447: $10 $00
    inc bc                                        ; $6449: $03
    inc b                                         ; $644a: $04
    db $10                                        ; $644b: $10
    db $10                                        ; $644c: $10
    ld [$0000], sp                                ; $644d: $08 $00 $00
    ld hl, sp-$10                                 ; $6450: $f8 $f0
    nop                                           ; $6452: $00
    adc l                                         ; $6453: $8d
    ld hl, sp-$19                                 ; $6454: $f8 $e7
    sbc l                                         ; $6456: $9d
    ei                                            ; $6457: $fb
    ld c, a                                       ; $6458: $4f
    ld a, a                                       ; $6459: $7f
    dec [hl]                                      ; $645a: $35
    nop                                           ; $645b: $00
    rra                                           ; $645c: $1f
    ld c, $ff                                     ; $645d: $0e $ff
    ld a, l                                       ; $645f: $7d
    ld a, $1e                                     ; $6460: $3e $1e
    and $7a                                       ; $6462: $e6 $7a
    nop                                           ; $6464: $00
    adc [hl]                                      ; $6465: $8e
    ld a, [c]                                     ; $6466: $f2
    ld a, [hl]                                    ; $6467: $7e
    call nz, $98fc                                ; $6468: $c4 $fc $98
    cp $7c                                        ; $646b: $fe $7c
    nop                                           ; $646d: $00
    db $e3                                        ; $646e: $e3
    cp $d7                                        ; $646f: $fe $d7
    ld a, c                                       ; $6471: $79
    db $e3                                        ; $6472: $e3
    sbc [hl]                                      ; $6473: $9e
    ld sp, hl                                     ; $6474: $f9
    ld c, a                                       ; $6475: $4f
    nop                                           ; $6476: $00
    ld a, h                                       ; $6477: $7c
    daa                                           ; $6478: $27
    ccf                                           ; $6479: $3f
    add hl, de                                    ; $647a: $19
    rra                                           ; $647b: $1f
    rrca                                          ; $647c: $0f
    ld a, e                                       ; $647d: $7b
    dec a                                         ; $647e: $3d
    nop                                           ; $647f: $00
    rst $10                                       ; $6480: $d7
    ld a, d                                       ; $6481: $7a
    sbc a                                         ; $6482: $9f
    push hl                                       ; $6483: $e5
    cp a                                          ; $6484: $bf
    ld [c], a                                     ; $6485: $e2
    cp $cc                                        ; $6486: $fe $cc
    nop                                           ; $6488: $00
    ld hl, sp-$10                                 ; $6489: $f8 $f0
    adc [hl]                                      ; $648b: $8e
    db $fc                                        ; $648c: $fc
    db $e3                                        ; $648d: $e3
    ld a, $f9                                     ; $648e: $3e $f9
    adc a                                         ; $6490: $8f
    jr nz, @+$01                                  ; $6491: $20 $ff

    pop hl                                        ; $6493: $e1
    xor [hl]                                      ; $6494: $ae
    ld bc, $39fe                                  ; $6495: $01 $fe $39
    rra                                           ; $6498: $1f
    ld h, l                                       ; $6499: $65
    ccf                                           ; $649a: $3f
    nop                                           ; $649b: $00
    ld c, e                                       ; $649c: $4b
    ld a, l                                       ; $649d: $7d
    rst $10                                       ; $649e: $d7
    ld a, c                                       ; $649f: $79
    adc a                                         ; $64a0: $8f
    di                                            ; $64a1: $f3
    rst $38                                       ; $64a2: $ff
    adc a                                         ; $64a3: $8f
    nop                                           ; $64a4: $00
    rst $38                                       ; $64a5: $ff
    db $fd                                        ; $64a6: $fd
    adc h                                         ; $64a7: $8c
    ld hl, sp-$3c                                 ; $64a8: $f8 $c4
    ld a, h                                       ; $64aa: $7c
    and $3c                                       ; $64ab: $e6 $3c
    inc bc                                        ; $64ad: $03
    ld a, [c]                                     ; $64ae: $f2
    adc [hl]                                      ; $64af: $8e
    cp $e2                                        ; $64b0: $fe $e2
    ld e, $fe                                     ; $64b2: $1e $fe
    inc c                                         ; $64b4: $0c
    ld [$0960], sp                                ; $64b5: $08 $60 $09
    jr nc, jr_098_64fe                            ; $64b8: $30 $44

    ei                                            ; $64ba: $fb
    ld h, b                                       ; $64bb: $60
    add hl, sp                                    ; $64bc: $39
    ld l, [hl]                                    ; $64bd: $6e
    add hl, bc                                    ; $64be: $09
    call nz, Call_098_40fb                        ; $64bf: $c4 $fb $40
    rst $38                                       ; $64c2: $ff
    ld [de], a                                    ; $64c3: $12
    push de                                       ; $64c4: $d5
    ld [$04c0], a                                 ; $64c5: $ea $c0 $04
    nop                                           ; $64c8: $00
    ld l, d                                       ; $64c9: $6a
    push de                                       ; $64ca: $d5
    ld c, [hl]                                    ; $64cb: $4e
    add hl, bc                                    ; $64cc: $09
    ld b, a                                       ; $64cd: $47
    ld [bc], a                                    ; $64ce: $02
    cp e                                          ; $64cf: $bb
    ld [bc], a                                    ; $64d0: $02
    rst $38                                       ; $64d1: $ff
    ld d, a                                       ; $64d2: $57
    xor e                                         ; $64d3: $ab
    inc bc                                        ; $64d4: $03
    inc b                                         ; $64d5: $04
    nop                                           ; $64d6: $00
    xor d                                         ; $64d7: $aa
    ld c, a                                       ; $64d8: $4f
    ld d, a                                       ; $64d9: $57
    ld h, b                                       ; $64da: $60
    add hl, bc                                    ; $64db: $09
    ld b, [hl]                                    ; $64dc: $46
    cp e                                          ; $64dd: $bb
    ld h, b                                       ; $64de: $60
    add hl, sp                                    ; $64df: $39
    inc h                                         ; $64e0: $24
    ld [$1804], sp                                ; $64e1: $08 $04 $18
    ld d, b                                       ; $64e4: $50
    add hl, de                                    ; $64e5: $19
    ld a, [$0824]                                 ; $64e6: $fa $24 $08
    inc b                                         ; $64e9: $04
    jr jr_098_653c                                ; $64ea: $18 $50

    add hl, de                                    ; $64ec: $19
    add sp, $09                                   ; $64ed: $e8 $09
    call nc, $0939                                ; $64ef: $d4 $39 $09
    rra                                           ; $64f2: $1f
    ld [hl+], a                                   ; $64f3: $22
    ld [de], a                                    ; $64f4: $12
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    dec h                                         ; $64f7: $25
    nop                                           ; $64f8: $00
    ld c, e                                       ; $64f9: $4b
    nop                                           ; $64fa: $00
    cp [hl]                                       ; $64fb: $be
    nop                                           ; $64fc: $00
    rst $38                                       ; $64fd: $ff

jr_098_64fe:
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    ld [bc], a                                    ; $6500: $02
    nop                                           ; $6501: $00
    ld bc, $8800                                  ; $6502: $01 $00 $88
    nop                                           ; $6505: $00
    ld de, $0002                                  ; $6506: $11 $02 $00
    and d                                         ; $6509: $a2
    nop                                           ; $650a: $00
    ld d, a                                       ; $650b: $57
    nop                                           ; $650c: $00
    xor [hl]                                      ; $650d: $ae

jr_098_650e:
    stop                                          ; $650e: $10 $00
    cp c                                          ; $6510: $b9
    nop                                           ; $6511: $00

jr_098_6512:
    nop                                           ; $6512: $00
    rst $18                                       ; $6513: $df
    nop                                           ; $6514: $00

jr_098_6515:
    push af                                       ; $6515: $f5
    nop                                           ; $6516: $00
    xor d                                         ; $6517: $aa
    ld d, l                                       ; $6518: $55
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    rst $38                                       ; $651b: $ff

jr_098_651c:
    ld e, d                                       ; $651c: $5a
    ld hl, $7f80                                  ; $651d: $21 $80 $7f
    or h                                          ; $6520: $b4

jr_098_6521:
    ld [$08ad], sp                                ; $6521: $08 $ad $08
    nop                                           ; $6524: $00
    sub $00                                       ; $6525: $d6 $00
    ld a, a                                       ; $6527: $7f
    db $10                                        ; $6528: $10
    db $10                                        ; $6529: $10
    ld c, c                                       ; $652a: $49
    add [hl]                                      ; $652b: $86
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    rst $38                                       ; $652e: $ff
    adc c                                         ; $652f: $89
    halt                                          ; $6530: $76
    jr nz, jr_098_6512                            ; $6531: $20 $df

    inc d                                         ; $6533: $14
    dec bc                                        ; $6534: $0b
    nop                                           ; $6535: $00
    add b                                         ; $6536: $80
    jp z, $d001                                   ; $6537: $ca $01 $d0

    jr nc, jr_098_6596                            ; $653a: $30 $5a

jr_098_653c:
    jr nc, jr_098_650e                            ; $653c: $30 $d0

    jr nc, jr_098_6515                            ; $653e: $30 $d5

    nop                                           ; $6540: $00
    jr nc, jr_098_6543                            ; $6541: $30 $00

jr_098_6543:
    rst $38                                       ; $6543: $ff
    sub d                                         ; $6544: $92
    dec c                                         ; $6545: $0d
    ld bc, $55fe                                  ; $6546: $01 $fe $55
    xor [hl]                                      ; $6549: $ae
    jr z, jr_098_654d                             ; $654a: $28 $01

    ld h, a                                       ; $654c: $67

jr_098_654d:
    ld c, h                                       ; $654d: $4c
    nop                                           ; $654e: $00
    cp l                                          ; $654f: $bd
    jr nc, jr_098_655c                            ; $6550: $30 $0a

    ld l, b                                       ; $6552: $68
    ld bc, $2804                                  ; $6553: $01 $04 $28
    cp a                                          ; $6556: $bf
    or b                                          ; $6557: $b0
    inc l                                         ; $6558: $2c
    ld a, [bc]                                    ; $6559: $0a
    pop bc                                        ; $655a: $c1
    ld [bc], a                                    ; $655b: $02

jr_098_655c:
    jr c, jr_098_651c                             ; $655c: $38 $be

    ld [bc], a                                    ; $655e: $02
    nop                                           ; $655f: $00
    ld e, l                                       ; $6560: $5d
    nop                                           ; $6561: $00
    dec hl                                        ; $6562: $2b
    ld a, [bc]                                    ; $6563: $0a
    nop                                           ; $6564: $00
    ld d, l                                       ; $6565: $55
    nop                                           ; $6566: $00
    cp e                                          ; $6567: $bb
    ld a, h                                       ; $6568: $7c
    nop                                           ; $6569: $00
    rst $30                                       ; $656a: $f7
    add b                                         ; $656b: $80
    nop                                           ; $656c: $00
    rst $38                                       ; $656d: $ff
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    push de                                       ; $6570: $d5
    nop                                           ; $6571: $00
    xor d                                         ; $6572: $aa
    nop                                           ; $6573: $00
    ld e, [hl]                                    ; $6574: $5e
    nop                                           ; $6575: $00
    or l                                          ; $6576: $b5
    ld [$ef00], sp                                ; $6577: $08 $00 $ef
    nop                                           ; $657a: $00
    cp a                                          ; $657b: $bf
    db $10                                        ; $657c: $10
    jr nz, jr_098_6521                            ; $657d: $20 $a2

    nop                                           ; $657f: $00
    ld c, c                                       ; $6580: $49
    ld [$3600], sp                                ; $6581: $08 $00 $36
    nop                                           ; $6584: $00
    ld l, l                                       ; $6585: $6d
    ld e, $10                                     ; $6586: $1e $10
    rst $38                                       ; $6588: $ff
    nop                                           ; $6589: $00
    ld [hl], l                                    ; $658a: $75
    inc l                                         ; $658b: $2c
    nop                                           ; $658c: $00
    db $eb                                        ; $658d: $eb
    jr nz, jr_098_6590                            ; $658e: $20 $00

jr_098_6590:
    cp e                                          ; $6590: $bb
    sub [hl]                                      ; $6591: $96
    nop                                           ; $6592: $00
    ld l, $08                                     ; $6593: $2e $08
    ld a, [c]                                     ; $6595: $f2

jr_098_6596:
    ld b, $00                                     ; $6596: $06 $00
    ld e, e                                       ; $6598: $5b
    ld b, $fa                                     ; $6599: $06 $fa
    ld b, $ab                                     ; $659b: $06 $ab
    ld d, [hl]                                    ; $659d: $56
    nop                                           ; $659e: $00
    rst $38                                       ; $659f: $ff
    nop                                           ; $65a0: $00
    inc d                                         ; $65a1: $14
    db $eb                                        ; $65a2: $eb
    inc bc                                        ; $65a3: $03
    db $fc                                        ; $65a4: $fc
    ld c, c                                       ; $65a5: $49
    ld b, $00                                     ; $65a6: $06 $00
    nop                                           ; $65a8: $00
    ld b, b                                       ; $65a9: $40
    ld e, d                                       ; $65aa: $5a
    di                                            ; $65ab: $f3
    ld [bc], a                                    ; $65ac: $02
    ld d, l                                       ; $65ad: $55
    xor d                                         ; $65ae: $aa
    nop                                           ; $65af: $00
    rst $38                                       ; $65b0: $ff
    sbc c                                         ; $65b1: $99
    ld b, $01                                     ; $65b2: $06 $01
    ld b, b                                       ; $65b4: $40
    cp a                                          ; $65b5: $bf
    xor d                                         ; $65b6: $aa
    inc d                                         ; $65b7: $14
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    halt                                          ; $65ba: $76
    db $10                                        ; $65bb: $10
    stop                                          ; $65bc: $10 $00
    db $10                                        ; $65be: $10
    ldh a, [rHDMA2]                               ; $65bf: $f0 $52
    jr nc, @+$1b                                  ; $65c1: $30 $19

    ldh a, [$96]                                  ; $65c3: $f0 $96
    ld [hl], b                                    ; $65c5: $70
    stop                                          ; $65c6: $10 $00
    nop                                           ; $65c8: $00
    sbc l                                         ; $65c9: $9d
    jr nz, jr_098_65e4                            ; $65ca: $20 $18

    nop                                           ; $65cc: $00
    ld d, h                                       ; $65cd: $54
    nop                                           ; $65ce: $00
    ld a, [hl+]                                   ; $65cf: $2a
    add c                                         ; $65d0: $81
    db $ec                                        ; $65d1: $ec
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    rst $38                                       ; $65d4: $ff
    and c                                         ; $65d5: $a1
    ld e, [hl]                                    ; $65d6: $5e
    ld d, h                                       ; $65d7: $54
    dec hl                                        ; $65d8: $2b
    or b                                          ; $65d9: $b0
    ld [$1704], sp                                ; $65da: $08 $04 $17
    nop                                           ; $65dd: $00
    xor h                                         ; $65de: $ac
    nop                                           ; $65df: $00
    ld e, e                                       ; $65e0: $5b
    stop                                          ; $65e1: $10 $00
    sub [hl]                                      ; $65e3: $96

jr_098_65e4:
    add hl, bc                                    ; $65e4: $09
    add b                                         ; $65e5: $80
    ret nc                                        ; $65e6: $d0

    ld [$180f], sp                                ; $65e7: $08 $0f $18
    ld c, [hl]                                    ; $65ea: $4e
    jr jr_098_65fc                                ; $65eb: $18 $0f

    jr @+$2f                                      ; $65ed: $18 $2d

    nop                                           ; $65ef: $00
    jr jr_098_6602                                ; $65f0: $18 $10

    ldh a, [$d5]                                  ; $65f2: $f0 $d5
    jr nc, jr_098_6606                            ; $65f4: $30 $10

    ldh a, [rHDMA5]                               ; $65f6: $f0 $55
    ld [$fffa], sp                                ; $65f8: $08 $fa $ff
    nop                                           ; $65fb: $00

jr_098_65fc:
    sbc h                                         ; $65fc: $9c
    ld e, $01                                     ; $65fd: $1e $01
    ld l, [hl]                                    ; $65ff: $6e
    nop                                           ; $6600: $00
    and h                                         ; $6601: $a4

jr_098_6602:
    jr nz, jr_098_6604                            ; $6602: $20 $00

jr_098_6604:
    ld a, b                                       ; $6604: $78
    ld h, b                                       ; $6605: $60

jr_098_6606:
    db $10                                        ; $6606: $10
    rst $38                                       ; $6607: $ff
    nop                                           ; $6608: $00
    ld a, h                                       ; $6609: $7c
    nop                                           ; $660a: $00
    rst $00                                       ; $660b: $c7
    add b                                         ; $660c: $80
    jr nc, jr_098_6610                            ; $660d: $30 $01

    ld l, a                                       ; $660f: $6f

jr_098_6610:
    add hl, sp                                    ; $6610: $39
    rst $18                                       ; $6611: $df
    ld [hl], e                                    ; $6612: $73
    sbc a                                         ; $6613: $9f
    rst $20                                       ; $6614: $e7
    db $fd                                        ; $6615: $fd
    nop                                           ; $6616: $00
    sbc c                                         ; $6617: $99
    di                                            ; $6618: $f3
    pop hl                                        ; $6619: $e1
    dec b                                         ; $661a: $05
    ld bc, $0103                                  ; $661b: $01 $03 $01
    ld bc, $0140                                  ; $661e: $01 $40 $01
    call z, $fa09                                 ; $6621: $cc $09 $fa
    and $fe                                       ; $6624: $e6 $fe
    sbc d                                         ; $6626: $9a
    xor [hl]                                      ; $6627: $ae
    add [hl]                                      ; $6628: $86
    nop                                           ; $6629: $00
    ret nz                                        ; $662a: $c0

    add b                                         ; $662b: $80
    add b                                         ; $662c: $80
    add b                                         ; $662d: $80
    ret nz                                        ; $662e: $c0

    add b                                         ; $662f: $80
    ld b, b                                       ; $6630: $40
    nop                                           ; $6631: $00
    dec b                                         ; $6632: $05
    add b                                         ; $6633: $80
    nop                                           ; $6634: $00
    ld b, d                                       ; $6635: $42
    nop                                           ; $6636: $00
    add h                                         ; $6637: $84
    call nc, $df00                                ; $6638: $d4 $00 $df
    sbc $10                                       ; $663b: $de $10
    nop                                           ; $663d: $00
    ld a, a                                       ; $663e: $7f
    add c                                         ; $663f: $81
    rst $38                                       ; $6640: $ff
    ld a, a                                       ; $6641: $7f
    adc c                                         ; $6642: $89
    add hl, bc                                    ; $6643: $09
    add c                                         ; $6644: $81
    ld bc, $a100                                  ; $6645: $01 $00 $a1
    ld hl, $0181                                  ; $6648: $21 $81 $01
    add b                                         ; $664b: $80
    nop                                           ; $664c: $00
    ld a, a                                       ; $664d: $7f
    add b                                         ; $664e: $80
    nop                                           ; $664f: $00
    cp $81                                        ; $6650: $fe $81
    rst $38                                       ; $6652: $ff
    cp $83                                        ; $6653: $fe $83
    add d                                         ; $6655: $82
    add c                                         ; $6656: $81
    add b                                         ; $6657: $80
    ld bc, $8889                                  ; $6658: $01 $89 $88
    add c                                         ; $665b: $81
    add b                                         ; $665c: $80
    ld hl, $fe20                                  ; $665d: $21 $20 $fe
    sub c                                         ; $6660: $91
    nop                                           ; $6661: $00
    ld b, c                                       ; $6662: $41
    rst $28                                       ; $6663: $ef
    ret nz                                        ; $6664: $c0

    db $10                                        ; $6665: $10
    dec d                                         ; $6666: $15
    nop                                           ; $6667: $00
    ret nz                                        ; $6668: $c0

    nop                                           ; $6669: $00
    dec l                                         ; $666a: $2d
    inc b                                         ; $666b: $04
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    add b                                         ; $666e: $80
    rst $38                                       ; $666f: $ff
    cp a                                          ; $6670: $bf
    ret nz                                        ; $6671: $c0

    sbc a                                         ; $6672: $9f
    ldh [$bf], a                                  ; $6673: $e0 $bf
    ret nz                                        ; $6675: $c0

    nop                                           ; $6676: $00
    rst $28                                       ; $6677: $ef
    ret nc                                        ; $6678: $d0

    sub a                                         ; $6679: $97
    add sp, -$36                                  ; $667a: $e8 $ca
    push af                                       ; $667c: $f5
    add sp, -$01                                  ; $667d: $e8 $ff
    nop                                           ; $667f: $00
    dec d                                         ; $6680: $15
    rst $38                                       ; $6681: $ff
    db $d3                                        ; $6682: $d3
    cpl                                           ; $6683: $2f
    ld sp, hl                                     ; $6684: $f9
    rlca                                          ; $6685: $07
    rst $30                                       ; $6686: $f7
    dec bc                                        ; $6687: $0b
    nop                                           ; $6688: $00
    ld sp, hl                                     ; $6689: $f9
    rlca                                          ; $668a: $07
    db $fd                                        ; $668b: $fd
    inc bc                                        ; $668c: $03
    push af                                       ; $668d: $f5
    dec bc                                        ; $668e: $0b
    inc bc                                        ; $668f: $03
    rst $38                                       ; $6690: $ff
    inc d                                         ; $6691: $14
    ld a, [de]                                    ; $6692: $1a
    nop                                           ; $6693: $00
    and l                                         ; $6694: $a5
    sub b                                         ; $6695: $90
    jr nz, jr_098_66ef                            ; $6696: $20 $57

    cp [hl]                                       ; $6698: $be
    ld bc, $00d3                                  ; $6699: $01 $d3 $00
    nop                                           ; $669c: $00
    db $10                                        ; $669d: $10
    ccf                                           ; $669e: $3f
    sub l                                         ; $669f: $95
    ld a, [hl-]                                   ; $66a0: $3a
    db $10                                        ; $66a1: $10
    ccf                                           ; $66a2: $3f
    ld d, l                                       ; $66a3: $55
    cp a                                          ; $66a4: $bf
    db $10                                        ; $66a5: $10
    rst $38                                       ; $66a6: $ff
    nop                                           ; $66a7: $00
    inc [hl]                                      ; $66a8: $34
    adc $01                                       ; $66a9: $ce $01
    ld a, l                                       ; $66ab: $7d
    nop                                           ; $66ac: $00
    db $10                                        ; $66ad: $10
    jr nc, jr_098_66b0                            ; $66ae: $30 $00

jr_098_66b0:
    jp c, $9030                                   ; $66b0: $da $30 $90

    jr nc, @+$5c                                  ; $66b3: $30 $5a

    or l                                          ; $66b5: $b5
    ld bc, $01ff                                  ; $66b6: $01 $ff $01
    dec sp                                        ; $66b9: $3b
    push bc                                       ; $66ba: $c5
    ld bc, $69ff                                  ; $66bb: $01 $ff $69
    sub a                                         ; $66be: $97
    nop                                           ; $66bf: $00
    inc h                                         ; $66c0: $24
    nop                                           ; $66c1: $00
    ld b, h                                       ; $66c2: $44
    nop                                           ; $66c3: $00
    ret nc                                        ; $66c4: $d0

    ld bc, $00ff                                  ; $66c5: $01 $ff $00
    call Call_000_01ee                            ; $66c8: $cd $ee $01
    ld h, c                                       ; $66cb: $61
    nop                                           ; $66cc: $00
    inc b                                         ; $66cd: $04
    ld bc, $ddff                                  ; $66ce: $01 $ff $dd
    inc hl                                        ; $66d1: $23
    ld bc, $0b8a                                  ; $66d2: $01 $8a $0b
    nop                                           ; $66d5: $00
    db $e3                                        ; $66d6: $e3
    ld [$fe00], sp                                ; $66d7: $08 $00 $fe
    nop                                           ; $66da: $00
    ld [hl], a                                    ; $66db: $77
    ld [bc], a                                    ; $66dc: $02
    ld [bc], a                                    ; $66dd: $02
    cp e                                          ; $66de: $bb
    nop                                           ; $66df: $00
    push hl                                       ; $66e0: $e5
    adc e                                         ; $66e1: $8b
    jr nz, jr_098_66f4                            ; $66e2: $20 $10

jr_098_66e4:
    ld [c], a                                     ; $66e4: $e2
    nop                                           ; $66e5: $00
    ccf                                           ; $66e6: $3f
    ld [de], a                                    ; $66e7: $12
    nop                                           ; $66e8: $00
    nop                                           ; $66e9: $00
    call nz, Call_000_3001                        ; $66ea: $c4 $01 $30
    jr jr_098_6730                                ; $66ed: $18 $41

jr_098_66ef:
    push de                                       ; $66ef: $d5
    jr nz, jr_098_66f2                            ; $66f0: $20 $00

jr_098_66f2:
    inc sp                                        ; $66f2: $33
    nop                                           ; $66f3: $00

jr_098_66f4:
    rrca                                          ; $66f4: $0f
    jr jr_098_66e4                                ; $66f5: $18 $ed

    jr jr_098_66fa                                ; $66f7: $18 $01

    inc b                                         ; $66f9: $04

jr_098_66fa:
    xor l                                         ; $66fa: $ad
    ld e, d                                       ; $66fb: $5a
    rst $38                                       ; $66fc: $ff
    nop                                           ; $66fd: $00
    ret c                                         ; $66fe: $d8

    ld [$d602], sp                                ; $66ff: $08 $02 $d6
    nop                                           ; $6702: $00
    ld d, h                                       ; $6703: $54
    or a                                          ; $6704: $b7
    inc [hl]                                      ; $6705: $34
    ld bc, $10fe                                  ; $6706: $01 $fe $10
    ld de, $3ec2                                  ; $6709: $11 $c2 $3e
    ld [bc], a                                    ; $670c: $02
    jp z, Jump_000_0400                           ; $670d: $ca $00 $04

    dec [hl]                                      ; $6710: $35
    nop                                           ; $6711: $00
    ld a, [$af00]                                 ; $6712: $fa $00 $af
    add b                                         ; $6715: $80
    ld bc, $7fa0                                  ; $6716: $01 $a0 $7f
    ld [bc], a                                    ; $6719: $02
    and [hl]                                      ; $671a: $a6
    ld a, b                                       ; $671b: $78

jr_098_671c:
    and b                                         ; $671c: $a0
    ld a, a                                       ; $671d: $7f
    dec l                                         ; $671e: $2d
    ld [hl], b                                    ; $671f: $70
    ld h, h                                       ; $6720: $64
    ld [$88bf], sp                                ; $6721: $08 $bf $88
    ld b, b                                       ; $6724: $40
    ld [bc], a                                    ; $6725: $02
    ld a, [$bb06]                                 ; $6726: $fa $06 $bb
    xor b                                         ; $6729: $a8
    ld bc, $069a                                  ; $672a: $01 $9a $06
    rst $38                                       ; $672d: $ff
    add hl, bc                                    ; $672e: $09
    nop                                           ; $672f: $00

jr_098_6730:
    xor l                                         ; $6730: $ad
    nop                                           ; $6731: $00
    rst $10                                       ; $6732: $d7
    ld d, b                                       ; $6733: $50
    ld a, [bc]                                    ; $6734: $0a
    nop                                           ; $6735: $00
    ld c, h                                       ; $6736: $4c
    sbc e                                         ; $6737: $9b
    inc b                                         ; $6738: $04
    ld e, b                                       ; $6739: $58
    or a                                          ; $673a: $b7
    ld [hl], d                                    ; $673b: $72
    ld [bc], a                                    ; $673c: $02
    adc e                                         ; $673d: $8b
    halt                                          ; $673e: $76
    ld [bc], a                                    ; $673f: $02
    db $10                                        ; $6740: $10
    ld [$00f3], sp                                ; $6741: $08 $f3 $00
    ld b, b                                       ; $6744: $40
    adc b                                         ; $6745: $88
    inc e                                         ; $6746: $1c
    nop                                           ; $6747: $00
    and b                                         ; $6748: $a0
    ld a, a                                       ; $6749: $7f
    inc h                                         ; $674a: $24
    jr c, jr_098_674d                             ; $674b: $38 $00

jr_098_674d:
    or l                                          ; $674d: $b5
    ld a, a                                       ; $674e: $7f
    nop                                           ; $674f: $00
    dec hl                                        ; $6750: $2b
    nop                                           ; $6751: $00
    jr c, @-$5c                                   ; $6752: $38 $a2

    inc b                                         ; $6754: $04
    ld [$0294], a                                 ; $6755: $ea $94 $02
    res 2, [hl]                                   ; $6758: $cb $96
    ld [bc], a                                    ; $675a: $02
    ret nc                                        ; $675b: $d0

    add hl, bc                                    ; $675c: $09
    nop                                           ; $675d: $00
    dec hl                                        ; $675e: $2b
    inc d                                         ; $675f: $14
    nop                                           ; $6760: $00
    rst $38                                       ; $6761: $ff
    ld h, $c1                                     ; $6762: $26 $c1
    xor e                                         ; $6764: $ab
    nop                                           ; $6765: $00
    ld b, b                                       ; $6766: $40
    ld b, e                                       ; $6767: $43
    ld [hl], b                                    ; $6768: $70
    stop                                          ; $6769: $10 $00
    rst $38                                       ; $676b: $ff
    ld c, l                                       ; $676c: $4d
    or b                                          ; $676d: $b0
    nop                                           ; $676e: $00
    rst $38                                       ; $676f: $ff
    jr z, jr_098_671c                             ; $6770: $28 $aa

    ld de, $01e8                                  ; $6772: $11 $e8 $01
    ld h, [hl]                                    ; $6775: $66
    add b                                         ; $6776: $80
    ld a, [bc]                                    ; $6777: $0a
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    cp d                                          ; $677a: $ba
    add hl, bc                                    ; $677b: $09
    nop                                           ; $677c: $00
    ld h, b                                       ; $677d: $60
    nop                                           ; $677e: $00
    reti                                          ; $677f: $d9


    ret nc                                        ; $6780: $d0

    ld bc, $2152                                  ; $6781: $01 $52 $21
    sub b                                         ; $6784: $90
    ld a, [bc]                                    ; $6785: $0a
    ld de, $c07f                                  ; $6786: $11 $7f $c0
    ld [hl], h                                    ; $6789: $74
    jr z, @+$06                                   ; $678a: $28 $04

    ld l, e                                       ; $678c: $6b
    ret nz                                        ; $678d: $c0

    ld a, l                                       ; $678e: $7d
    xor $03                                       ; $678f: $ee $03
    nop                                           ; $6791: $00
    ld a, a                                       ; $6792: $7f
    ret nz                                        ; $6793: $c0

    ld l, d                                       ; $6794: $6a
    push de                                       ; $6795: $d5
    db $10                                        ; $6796: $10
    ccf                                           ; $6797: $3f
    dec d                                         ; $6798: $15
    ld a, [hl-]                                   ; $6799: $3a
    nop                                           ; $679a: $00
    sub b                                         ; $679b: $90
    ccf                                           ; $679c: $3f
    ld [de], a                                    ; $679d: $12
    inc a                                         ; $679e: $3c
    add b                                         ; $679f: $80
    rst $38                                       ; $67a0: $ff
    ld d, a                                       ; $67a1: $57
    adc b                                         ; $67a2: $88
    ld bc, $80ee                                  ; $67a3: $01 $ee $80
    ld d, a                                       ; $67a6: $57
    adc b                                         ; $67a7: $88
    cp $80                                        ; $67a8: $fe $80
    ld d, l                                       ; $67aa: $55
    inc b                                         ; $67ab: $04
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    ld [hl], b                                    ; $67ae: $70
    sub b                                         ; $67af: $90
    ldh a, [$90]                                  ; $67b0: $f0 $90
    ld d, d                                       ; $67b2: $52
    sub b                                         ; $67b3: $90
    ld a, [$0090]                                 ; $67b4: $fa $90 $00
    ld e, b                                       ; $67b7: $58
    sub c                                         ; $67b8: $91
    ld hl, sp-$70                                 ; $67b9: $f8 $90
    ld e, b                                       ; $67bb: $58
    adc b                                         ; $67bc: $88
    ld sp, hl                                     ; $67bd: $f9
    adc b                                         ; $67be: $88
    jr nz, jr_098_683b                            ; $67bf: $20 $7a

    adc b                                         ; $67c1: $88
    or b                                          ; $67c2: $b0
    ld b, b                                       ; $67c3: $40
    inc b                                         ; $67c4: $04
    cp $00                                        ; $67c5: $fe $00
    ld a, [$0004]                                 ; $67c7: $fa $04 $00
    add b                                         ; $67ca: $80
    rst $38                                       ; $67cb: $ff
    ld a, a                                       ; $67cc: $7f
    add b                                         ; $67cd: $80
    rst $38                                       ; $67ce: $ff
    add b                                         ; $67cf: $80
    ld l, d                                       ; $67d0: $6a
    sub l                                         ; $67d1: $95
    nop                                           ; $67d2: $00
    push af                                       ; $67d3: $f5
    adc d                                         ; $67d4: $8a
    ld l, a                                       ; $67d5: $6f
    sub b                                         ; $67d6: $90
    rst $30                                       ; $67d7: $f7
    adc b                                         ; $67d8: $88
    ld l, a                                       ; $67d9: $6f
    sub b                                         ; $67da: $90
    nop                                           ; $67db: $00
    sub h                                         ; $67dc: $94
    ld h, b                                       ; $67dd: $60
    adc d                                         ; $67de: $8a
    sub b                                         ; $67df: $90
    adc h                                         ; $67e0: $8c
    sub b                                         ; $67e1: $90
    adc [hl]                                      ; $67e2: $8e
    sub b                                         ; $67e3: $90
    ld d, c                                       ; $67e4: $51
    adc l                                         ; $67e5: $8d
    inc b                                         ; $67e6: $04
    nop                                           ; $67e7: $00
    adc a                                         ; $67e8: $8f
    ld [$0000], sp                                ; $67e9: $08 $00 $00
    nop                                           ; $67ec: $00
    ld a, d                                       ; $67ed: $7a
    ld h, e                                       ; $67ee: $63
    dec b                                         ; $67ef: $05
    nop                                           ; $67f0: $00
    push de                                       ; $67f1: $d5
    ld a, [hl+]                                   ; $67f2: $2a
    and b                                         ; $67f3: $a0
    ld e, a                                       ; $67f4: $5f
    add hl, de                                    ; $67f5: $19
    ld b, $c0                                     ; $67f6: $06 $c0
    ccf                                           ; $67f8: $3f
    ld bc, $14aa                                  ; $67f9: $01 $aa $14
    rst $30                                       ; $67fc: $f7
    adc b                                         ; $67fd: $88
    ld h, b                                       ; $67fe: $60
    sub b                                         ; $67ff: $90
    ldh a, [$58]                                  ; $6800: $f0 $58
    nop                                           ; $6802: $00
    ld bc, $90e0                                  ; $6803: $01 $e0 $90
    ld [hl], b                                    ; $6806: $70
    sub b                                         ; $6807: $90
    push hl                                       ; $6808: $e5
    sub b                                         ; $6809: $90
    ld a, d                                       ; $680a: $7a
    inc h                                         ; $680b: $24
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    xor [hl]                                      ; $680e: $ae
    sub b                                         ; $680f: $90
    rst $18                                       ; $6810: $df
    sub b                                         ; $6811: $90
    xor [hl]                                      ; $6812: $ae
    ret nc                                        ; $6813: $d0

    rst $38                                       ; $6814: $ff
    sub b                                         ; $6815: $90
    nop                                           ; $6816: $00
    xor $90                                       ; $6817: $ee $90
    rst $18                                       ; $6819: $df
    or b                                          ; $681a: $b0
    xor a                                         ; $681b: $af
    ret nc                                        ; $681c: $d0

jr_098_681d:
    and b                                         ; $681d: $a0
    ld e, a                                       ; $681e: $5f
    nop                                           ; $681f: $00
    sub [hl]                                      ; $6820: $96
    add hl, bc                                    ; $6821: $09
    ld b, b                                       ; $6822: $40
    cp a                                          ; $6823: $bf
    push af                                       ; $6824: $f5
    rra                                           ; $6825: $1f
    ld c, a                                       ; $6826: $4f
    stop                                          ; $6827: $10 $00
    cp $08                                        ; $6829: $fe $08
    ld c, a                                       ; $682b: $4f
    db $10                                        ; $682c: $10
    cp l                                          ; $682d: $bd
    nop                                           ; $682e: $00
    rst $28                                       ; $682f: $ef
    sub b                                         ; $6830: $90
    nop                                           ; $6831: $00
    ld [hl], b                                    ; $6832: $70
    sbc a                                         ; $6833: $9f
    rst $28                                       ; $6834: $ef
    sbc a                                         ; $6835: $9f
    ld [hl], a                                    ; $6836: $77
    sbc b                                         ; $6837: $98
    ld [$5e90], a                                 ; $6838: $ea $90 $5e

jr_098_683b:
    ld [hl], l                                    ; $683b: $75
    inc [hl]                                      ; $683c: $34
    stop                                          ; $683d: $10 $00
    ld h, e                                       ; $683f: $63
    inc b                                         ; $6840: $04
    db $10                                        ; $6841: $10
    add hl, bc                                    ; $6842: $09
    ld h, d                                       ; $6843: $62
    ld a, [bc]                                    ; $6844: $0a
    ld c, $0b                                     ; $6845: $0e $0b
    ld bc, $ff00                                  ; $6847: $01 $00 $ff
    cp $01                                        ; $684a: $fe $01
    rst $38                                       ; $684c: $ff
    ld bc, $51ae                                  ; $684d: $01 $ae $51
    ld d, a                                       ; $6850: $57
    ld bc, $eea9                                  ; $6851: $01 $a9 $ee
    ld de, $09f7                                  ; $6854: $11 $f7 $09
    xor $11                                       ; $6857: $ee $11
    add c                                         ; $6859: $81
    inc b                                         ; $685a: $04
    xor h                                         ; $685b: $ac
    db $d3                                        ; $685c: $d3
    dec [hl]                                      ; $685d: $35
    ld d, l                                       ; $685e: $55
    ld a, [hl+]                                   ; $685f: $2a
    inc bc                                        ; $6860: $03
    rst $38                                       ; $6861: $ff
    and [hl]                                      ; $6862: $a6
    ld bc, $0002                                  ; $6863: $01 $02 $00
    jr nz, @+$21                                  ; $6866: $20 $1f

    nop                                           ; $6868: $00
    jr nz, jr_098_689a                            ; $6869: $20 $2f

    jr nc, jr_098_68bc                            ; $686b: $30 $4f

    jr nc, jr_098_681d                            ; $686d: $30 $ae

    ld sp, $00f7                                  ; $686f: $31 $f7 $00
    add hl, bc                                    ; $6872: $09
    jp hl                                         ; $6873: $e9


    rla                                           ; $6874: $17
    rst $20                                       ; $6875: $e7
    add hl, de                                    ; $6876: $19
    sub $23                                       ; $6877: $d6 $23
    and e                                         ; $6879: $a3
    ld bc, $464b                                  ; $687a: $01 $4b $46
    sub e                                         ; $687d: $93
    rlca                                          ; $687e: $07
    and e                                         ; $687f: $a3
    xor h                                         ; $6880: $ac
    rlca                                          ; $6881: $07
    or c                                          ; $6882: $b1
    inc b                                         ; $6883: $04
    ldh a, [rNR44]                                ; $6884: $f0 $23
    ld c, $54                                     ; $6886: $0e $54
    inc bc                                        ; $6888: $03
    ld [hl], e                                    ; $6889: $73
    ld bc, $060d                                  ; $688a: $01 $0d $06
    adc $31                                       ; $688d: $ce $31
    ld l, $f1                                     ; $688f: $2e $f1
    nop                                           ; $6891: $00
    adc $f1                                       ; $6892: $ce $f1
    xor [hl]                                      ; $6894: $ae
    ld [hl], c                                    ; $6895: $71
    adc a                                         ; $6896: $8f
    ld sp, $316f                                  ; $6897: $31 $6f $31

jr_098_689a:
    nop                                           ; $689a: $00
    rrca                                          ; $689b: $0f
    ld sp, $302f                                  ; $689c: $31 $2f $30
    adc a                                         ; $689f: $8f
    ld b, l                                       ; $68a0: $45
    sbc d                                         ; $68a1: $9a
    ld c, l                                       ; $68a2: $4d
    nop                                           ; $68a3: $00
    sbc a                                         ; $68a4: $9f
    add hl, bc                                    ; $68a5: $09
    or [hl]                                       ; $68a6: $b6
    add hl, de                                    ; $68a7: $19
    rst $30                                       ; $68a8: $f7
    add hl, de                                    ; $68a9: $19
    ld l, [hl]                                    ; $68aa: $6e
    or c                                          ; $68ab: $b1
    inc b                                         ; $68ac: $04
    ld d, a                                       ; $68ad: $57
    jp hl                                         ; $68ae: $e9


    xor $d1                                       ; $68af: $ee $d1
    jp hl                                         ; $68b1: $e9


    inc b                                         ; $68b2: $04
    ld bc, $88d8                                  ; $68b3: $01 $d8 $88
    nop                                           ; $68b6: $00
    ld [hl], a                                    ; $68b7: $77
    adc a                                         ; $68b8: $8f
    ret c                                         ; $68b9: $d8

    add a                                         ; $68ba: $87
    ld [hl], l                                    ; $68bb: $75

jr_098_68bc:
    adc b                                         ; $68bc: $88
    rst $28                                       ; $68bd: $ef
    add b                                         ; $68be: $80
    inc bc                                        ; $68bf: $03
    xor d                                         ; $68c0: $aa
    rst $38                                       ; $68c1: $ff
    xor e                                         ; $68c2: $ab
    call nc, $ead5                                ; $68c3: $d4 $d5 $ea
    ld a, b                                       ; $68c6: $78
    dec b                                         ; $68c7: $05
    ld h, a                                       ; $68c8: $67
    ld b, $16                                     ; $68c9: $06 $16
    ld a, a                                       ; $68cb: $7f
    rst $38                                       ; $68cc: $ff
    ld l, d                                       ; $68cd: $6a
    inc b                                         ; $68ce: $04
    db $10                                        ; $68cf: $10
    ld d, l                                       ; $68d0: $55
    nop                                           ; $68d1: $00
    ld b, $04                                     ; $68d2: $06 $04
    ld [$0892], sp                                ; $68d4: $08 $92 $08
    db $ed                                        ; $68d7: $ed
    adc b                                         ; $68d8: $88
    rst $30                                       ; $68d9: $f7
    ld a, a                                       ; $68da: $7f
    adc a                                         ; $68db: $8f
    jr z, @+$3e                                   ; $68dc: $28 $3c

    ld a, h                                       ; $68de: $7c
    ld a, $00                                     ; $68df: $3e $00
    ld [hl], d                                    ; $68e1: $72
    ld h, d                                       ; $68e2: $62
    ld c, [hl]                                    ; $68e3: $4e
    ld h, [hl]                                    ; $68e4: $66
    ld c, [hl]                                    ; $68e5: $4e
    ld l, h                                       ; $68e6: $6c
    ld bc, $0000                                  ; $68e7: $01 $00 $00
    inc bc                                        ; $68ea: $03
    ld bc, $0307                                  ; $68eb: $01 $07 $03
    dec c                                         ; $68ee: $0d
    rlca                                          ; $68ef: $07
    add hl, de                                    ; $68f0: $19
    rrca                                          ; $68f1: $0f
    nop                                           ; $68f2: $00
    inc sp                                        ; $68f3: $33
    dec e                                         ; $68f4: $1d
    ld [hl], c                                    ; $68f5: $71
    ccf                                           ; $68f6: $3f
    ld c, e                                       ; $68f7: $4b
    ld a, a                                       ; $68f8: $7f
    ld b, b                                       ; $68f9: $40
    ld h, b                                       ; $68fa: $60
    nop                                           ; $68fb: $00
    ld h, b                                       ; $68fc: $60
    ld [hl], b                                    ; $68fd: $70
    ld [hl], c                                    ; $68fe: $71
    inc a                                         ; $68ff: $3c
    dec e                                         ; $6900: $1d
    rrca                                          ; $6901: $0f
    rlca                                          ; $6902: $07
    inc bc                                        ; $6903: $03
    jr nz, jr_098_6909                            ; $6904: $20 $03

    ld bc, $0322                                  ; $6906: $01 $22 $03

jr_098_6909:
    add hl, sp                                    ; $6909: $39
    rst $20                                       ; $690a: $e7
    ld a, c                                       ; $690b: $79
    sub e                                         ; $690c: $93
    db $fd                                        ; $690d: $fd
    nop                                           ; $690e: $00
    add a                                         ; $690f: $87
    db $fd                                        ; $6910: $fd
    ld l, a                                       ; $6911: $6f
    ld a, [c]                                     ; $6912: $f2
    ld e, $e2                                     ; $6913: $1e $e2
    ld l, $dc                                     ; $6915: $2e $dc
    nop                                           ; $6917: $00
    call c, $bca4                                 ; $6918: $dc $a4 $bc
    ld l, b                                       ; $691b: $68
    dec a                                         ; $691c: $3d
    ld a, a                                       ; $691d: $7f
    ld l, a                                       ; $691e: $6f
    jp $df00                                      ; $691f: $c3 $00 $df


    ld e, e                                       ; $6922: $5b
    set 1, e                                      ; $6923: $cb $cb
    bit 7, c                                      ; $6925: $cb $79
    ld a, e                                       ; $6927: $7b
    ld sp, $3f80                                  ; $6928: $31 $80 $3f
    inc bc                                        ; $692b: $03
    dec a                                         ; $692c: $3d
    ld a, b                                       ; $692d: $78
    sub b                                         ; $692e: $90
    ldh a, [rNR41]                                ; $692f: $f0 $20
    ldh [$5c], a                                  ; $6931: $e0 $5c
    nop                                           ; $6933: $00
    call c, $febe                                 ; $6934: $dc $be $fe
    ld h, e                                       ; $6937: $63
    ld a, l                                       ; $6938: $7d
    call c, $a1f1                                 ; $6939: $dc $f1 $a1
    db $10                                        ; $693c: $10
    ld [hl], e                                    ; $693d: $73
    or d                                          ; $693e: $b2
    nop                                           ; $693f: $00
    ld d, $02                                     ; $6940: $16 $02
    ld a, b                                       ; $6942: $78
    ld [hl], b                                    ; $6943: $70
    ld c, [hl]                                    ; $6944: $4e
    ld a, h                                       ; $6945: $7c
    nop                                           ; $6946: $00
    ld b, e                                       ; $6947: $43
    ld a, [hl]                                    ; $6948: $7e
    ld d, c                                       ; $6949: $51
    ld l, a                                       ; $694a: $6f
    ld a, c                                       ; $694b: $79
    ld d, a                                       ; $694c: $57
    ld a, l                                       ; $694d: $7d
    ld [hl-], a                                   ; $694e: $32
    ld bc, $293e                                  ; $694f: $01 $3e $29
    ccf                                           ; $6952: $3f
    inc d                                         ; $6953: $14
    rra                                           ; $6954: $1f
    rrca                                          ; $6955: $0f
    rrca                                          ; $6956: $0f
    ld c, [hl]                                    ; $6957: $4e
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    pop bc                                        ; $695a: $c1
    ld bc, $f9fd                                  ; $695b: $01 $fd $f9
    adc [hl]                                      ; $695e: $8e
    rst $30                                       ; $695f: $f7
    rst $00                                       ; $6960: $c7
    cp d                                          ; $6961: $ba
    nop                                           ; $6962: $00
    db $d3                                        ; $6963: $d3
    ld a, [hl]                                    ; $6964: $7e
    ld l, e                                       ; $6965: $6b
    ld a, [hl]                                    ; $6966: $7e
    scf                                           ; $6967: $37
    dec a                                         ; $6968: $3d
    ccf                                           ; $6969: $3f
    dec de                                        ; $696a: $1b
    ld [bc], a                                    ; $696b: $02
    rra                                           ; $696c: $1f
    rrca                                          ; $696d: $0f
    add a                                         ; $696e: $87
    inc bc                                        ; $696f: $03
    ei                                            ; $6970: $fb
    pop hl                                        ; $6971: $e1
    ldh a, [$0e]                                  ; $6972: $f0 $0e
    ld bc, $0000                                  ; $6974: $01 $00 $00
    rrca                                          ; $6977: $0f
    rlca                                          ; $6978: $07
    dec a                                         ; $6979: $3d
    dec de                                        ; $697a: $1b
    ld [hl], e                                    ; $697b: $73
    dec l                                         ; $697c: $2d
    rst $00                                       ; $697d: $c7
    nop                                           ; $697e: $00
    ld a, c                                       ; $697f: $79
    res 6, [hl]                                   ; $6980: $cb $b6
    sbc [hl]                                      ; $6982: $9e
    ld [$d2be], a                                 ; $6983: $ea $be $d2
    cp $00                                        ; $6986: $fe $00
    sub h                                         ; $6988: $94
    db $fc                                        ; $6989: $fc
    add sp, -$48                                  ; $698a: $e8 $b8
    ret nc                                        ; $698c: $d0

    sub b                                         ; $698d: $90
    ld [hl], b                                    ; $698e: $70
    jr jr_098_6991                                ; $698f: $18 $00

jr_098_6991:
    ldh a, [$58]                                  ; $6991: $f0 $58
    xor b                                         ; $6993: $a8
    ld c, c                                       ; $6994: $49
    ld hl, sp-$31                                 ; $6995: $f8 $cf
    ld a, a                                       ; $6997: $7f
    db $dd                                        ; $6998: $dd
    nop                                           ; $6999: $00
    ld l, e                                       ; $699a: $6b
    pop af                                        ; $699b: $f1
    ld e, a                                       ; $699c: $5f
    db $e3                                        ; $699d: $e3
    db $fd                                        ; $699e: $fd
    rst $20                                       ; $699f: $e7
    db $dd                                        ; $69a0: $dd
    rst $08                                       ; $69a1: $cf
    nop                                           ; $69a2: $00
    cp d                                          ; $69a3: $ba
    sbc $b2                                       ; $69a4: $de $b2
    ccf                                           ; $69a6: $3f
    ld a, a                                       ; $69a7: $7f
    ld h, a                                       ; $69a8: $67
    jp $00c3                                      ; $69a9: $c3 $c3 $00


    ld e, c                                       ; $69ac: $59
    reti                                          ; $69ad: $d9


    db $dd                                        ; $69ae: $dd
    push bc                                       ; $69af: $c5
    push bc                                       ; $69b0: $c5
    db $ed                                        ; $69b1: $ed
    call Call_000_00fd                            ; $69b2: $cd $fd $00
    ld a, c                                       ; $69b5: $79
    ld [hl], e                                    ; $69b6: $73
    ld bc, $9cbe                                  ; $69b7: $01 $be $9c
    ld d, b                                       ; $69ba: $50
    add b                                         ; $69bb: $80
    and b                                         ; $69bc: $a0
    nop                                           ; $69bd: $00
    add b                                         ; $69be: $80
    ret nz                                        ; $69bf: $c0

    cp b                                          ; $69c0: $b8
    ld a, b                                       ; $69c1: $78
    db $fc                                        ; $69c2: $fc
    db $e4                                        ; $69c3: $e4
    call nz, $0054                                ; $69c4: $c4 $54 $00
    sub h                                         ; $69c7: $94
    adc b                                         ; $69c8: $88
    adc b                                         ; $69c9: $88
    cp a                                          ; $69ca: $bf
    db $dd                                        ; $69cb: $dd
    rst $00                                       ; $69cc: $c7
    cp e                                          ; $69cd: $bb
    db $e3                                        ; $69ce: $e3
    nop                                           ; $69cf: $00
    cp l                                          ; $69d0: $bd
    pop af                                        ; $69d1: $f1
    ld e, [hl]                                    ; $69d2: $5e
    ld a, b                                       ; $69d3: $78
    cpl                                           ; $69d4: $2f
    ld a, $15                                     ; $69d5: $3e $15
    rra                                           ; $69d7: $1f
    nop                                           ; $69d8: $00
    ld c, $0f                                     ; $69d9: $0e $0f
    inc bc                                        ; $69db: $03
    cp $a4                                        ; $69dc: $fe $a4
    db $fc                                        ; $69de: $fc
    db $fc                                        ; $69df: $fc
    ld [c], a                                     ; $69e0: $e2
    nop                                           ; $69e1: $00
    sbc $8f                                       ; $69e2: $de $8f
    db $fd                                        ; $69e4: $fd
    rst $38                                       ; $69e5: $ff
    or [hl]                                       ; $69e6: $b6
    db $fc                                        ; $69e7: $fc
    ld hl, sp-$20                                 ; $69e8: $f8 $e0
    add b                                         ; $69ea: $80
    ldh [$03], a                                  ; $69eb: $e0 $03
    ccf                                           ; $69ed: $3f
    ret nz                                        ; $69ee: $c0

    ret nz                                        ; $69ef: $c0

    ccf                                           ; $69f0: $3f
    cp a                                          ; $69f1: $bf
    ld b, b                                       ; $69f2: $40
    ld l, l                                       ; $69f3: $6d
    ld [bc], a                                    ; $69f4: $02
    ld [bc], a                                    ; $69f5: $02
    cp a                                          ; $69f6: $bf
    ld b, b                                       ; $69f7: $40
    db $ed                                        ; $69f8: $ed
    ld [bc], a                                    ; $69f9: $02
    add b                                         ; $69fa: $80
    ld e, [hl]                                    ; $69fb: $5e
    inc b                                         ; $69fc: $04
    push de                                       ; $69fd: $d5
    add b                                         ; $69fe: $80
    call nc, $8103                                ; $69ff: $d4 $03 $81
    ld a, a                                       ; $6a02: $7f
    cp $01                                        ; $6a03: $fe $01
    ld l, e                                       ; $6a05: $6b
    ld de, $00be                                  ; $6a06: $11 $be $00
    ld bc, $916b                                  ; $6a09: $01 $6b $91
    ld a, $81                                     ; $6a0c: $3e $81
    ld [$2400], sp                                ; $6a0e: $08 $00 $24
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    ld [$2800], sp                                ; $6a13: $08 $00 $28
    nop                                           ; $6a16: $00
    inc b                                         ; $6a17: $04
    and b                                         ; $6a18: $a0
    and b                                         ; $6a19: $a0
    jr z, jr_098_6a20                             ; $6a1a: $28 $04

    inc d                                         ; $6a1c: $14
    ld d, [hl]                                    ; $6a1d: $56
    dec b                                         ; $6a1e: $05
    ld l, a                                       ; $6a1f: $6f

jr_098_6a20:
    inc d                                         ; $6a20: $14
    nop                                           ; $6a21: $00
    ld l, e                                       ; $6a22: $6b
    sub c                                         ; $6a23: $91
    ld a, [hl]                                    ; $6a24: $7e
    ld [bc], a                                    ; $6a25: $02
    add c                                         ; $6a26: $81
    cpl                                           ; $6a27: $2f
    ld d, c                                       ; $6a28: $51
    ld a, $41                                     ; $6a29: $3e $41
    dec hl                                        ; $6a2b: $2b
    inc b                                         ; $6a2c: $04
    nop                                           ; $6a2d: $00
    ld bc, $ff00                                  ; $6a2e: $01 $00 $ff
    ld l, [hl]                                    ; $6a31: $6e
    sub c                                         ; $6a32: $91
    ld l, a                                       ; $6a33: $6f
    sub c                                         ; $6a34: $91
    ld l, [hl]                                    ; $6a35: $6e
    sub c                                         ; $6a36: $91
    ld l, e                                       ; $6a37: $6b
    jp nz, $2004                                  ; $6a38: $c2 $04 $20

    and b                                         ; $6a3b: $a0
    ld c, d                                       ; $6a3c: $4a
    db $fd                                        ; $6a3d: $fd
    add e                                         ; $6a3e: $83
    ld h, l                                       ; $6a3f: $65
    adc e                                         ; $6a40: $8b
    ld h, b                                       ; $6a41: $60
    jr z, @-$5f                                   ; $6a42: $28 $9f

    nop                                           ; $6a44: $00
    ld h, b                                       ; $6a45: $60
    ld hl, $428e                                  ; $6a46: $21 $8e $42
    add b                                         ; $6a49: $80
    nop                                           ; $6a4a: $00
    add b                                         ; $6a4b: $80
    db $fd                                        ; $6a4c: $fd
    ld de, $5583                                  ; $6a4d: $11 $83 $55
    adc e                                         ; $6a50: $8b
    inc b                                         ; $6a51: $04
    jr c, @+$78                                   ; $6a52: $38 $76

    adc c                                         ; $6a54: $89
    ld b, b                                       ; $6a55: $40
    inc d                                         ; $6a56: $14
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    ld b, b                                       ; $6a59: $40
    add b                                         ; $6a5a: $80
    jr nz, @-$7e                                  ; $6a5b: $20 $80

    ld d, h                                       ; $6a5d: $54
    and b                                         ; $6a5e: $a0
    xor d                                         ; $6a5f: $aa
    push af                                       ; $6a60: $f5
    ld h, b                                       ; $6a61: $60
    push de                                       ; $6a62: $d5
    sub [hl]                                      ; $6a63: $96
    rlca                                          ; $6a64: $07
    add b                                         ; $6a65: $80
    ld c, b                                       ; $6a66: $48
    adc e                                         ; $6a67: $8b
    ld [hl], c                                    ; $6a68: $71
    ld c, [hl]                                    ; $6a69: $4e
    ld de, $082f                                  ; $6a6a: $11 $2f $08
    ld de, $110e                                  ; $6a6d: $11 $0e $11
    dec hl                                        ; $6a70: $2b
    inc b                                         ; $6a71: $04
    nop                                           ; $6a72: $00
    cpl                                           ; $6a73: $2f
    ld de, $04ce                                  ; $6a74: $11 $ce $04
    ld de, $b14b                                  ; $6a77: $11 $4b $b1
    xor [hl]                                      ; $6a7a: $ae
    pop af                                        ; $6a7b: $f1
    nop                                           ; $6a7c: $00
    ld e, e                                       ; $6a7d: $5b
    ld h, a                                       ; $6a7e: $67
    adc b                                         ; $6a7f: $88
    cp d                                          ; $6a80: $ba
    ret nz                                        ; $6a81: $c0

    ld c, b                                       ; $6a82: $48
    or a                                          ; $6a83: $b7
    call nz, $c000                                ; $6a84: $c4 $00 $c0
    ld d, b                                       ; $6a87: $50
    call nz, $fe00                                ; $6a88: $c4 $00 $fe
    inc l                                         ; $6a8b: $2c
    inc bc                                        ; $6a8c: $03
    db $fd                                        ; $6a8d: $fd
    jr nc, @-$7e                                  ; $6a8e: $30 $80

    ld d, [hl]                                    ; $6a90: $56
    inc b                                         ; $6a91: $04
    nop                                           ; $6a92: $00
    ld [$7608], sp                                ; $6a93: $08 $08 $76
    adc b                                         ; $6a96: $88
    or a                                          ; $6a97: $b7
    ld b, b                                       ; $6a98: $40
    ld b, [hl]                                    ; $6a99: $46
    db $fd                                        ; $6a9a: $fd
    db $ec                                        ; $6a9b: $ec
    nop                                           ; $6a9c: $00
    push af                                       ; $6a9d: $f5
    ld [bc], a                                    ; $6a9e: $02
    xor a                                         ; $6a9f: $af
    ld [$3000], sp                                ; $6aa0: $08 $00 $30
    ld [$8def], sp                                ; $6aa3: $08 $ef $8d
    jr z, jr_098_6ab8                             ; $6aa6: $28 $10

    cp $01                                        ; $6aa8: $fe $01
    xor a                                         ; $6aaa: $af
    inc b                                         ; $6aab: $04
    nop                                           ; $6aac: $00
    db $f4                                        ; $6aad: $f4
    ld [$4010], sp                                ; $6aae: $08 $10 $40
    ld b, $02                                     ; $6ab1: $06 $02
    cp a                                          ; $6ab3: $bf
    rlca                                          ; $6ab4: $07
    ld hl, sp-$01                                 ; $6ab5: $f8 $ff
    rrca                                          ; $6ab7: $0f

jr_098_6ab8:
    ldh a, [rNR41]                                ; $6ab8: $f0 $20
    ld [$00ad], sp                                ; $6aba: $08 $ad $00
    jp nz, Jump_098_512f                          ; $6abd: $c2 $2f $51

    cp [hl]                                       ; $6ac0: $be
    ld b, c                                       ; $6ac1: $41
    db $eb                                        ; $6ac2: $eb
    pop de                                        ; $6ac3: $d1
    ld a, $0b                                     ; $6ac4: $3e $0b
    pop bc                                        ; $6ac6: $c1
    rst $28                                       ; $6ac7: $ef
    ld de, $247a                                  ; $6ac8: $11 $7a $24
    nop                                           ; $6acb: $00
    ld a, d                                       ; $6acc: $7a
    inc d                                         ; $6acd: $14
    ld bc, $18ec                                  ; $6ace: $01 $ec $18
    add e                                         ; $6ad1: $83
    db $f4                                        ; $6ad2: $f4
    jr z, @-$14                                   ; $6ad3: $28 $ea

    ccf                                           ; $6ad5: $3f
    ld a, a                                       ; $6ad6: $7f
    add b                                         ; $6ad7: $80
    dec d                                         ; $6ad8: $15
    xor h                                         ; $6ad9: $ac
    ld b, $a5                                     ; $6ada: $06 $a5
    ld a, [bc]                                    ; $6adc: $0a
    ld b, b                                       ; $6add: $40
    xor a                                         ; $6ade: $af
    rra                                           ; $6adf: $1f
    rlca                                          ; $6ae0: $07
    rst $28                                       ; $6ae1: $ef
    sub c                                         ; $6ae2: $91
    xor e                                         ; $6ae3: $ab
    ld a, a                                       ; $6ae4: $7f
    push de                                       ; $6ae5: $d5

jr_098_6ae6:
    dec hl                                        ; $6ae6: $2b
    and [hl]                                      ; $6ae7: $a6
    or e                                          ; $6ae8: $b3
    ld a, [bc]                                    ; $6ae9: $0a
    ld hl, sp+$02                                 ; $6aea: $f8 $02
    nop                                           ; $6aec: $00
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    inc e                                         ; $6aef: $1c
    add hl, hl                                    ; $6af0: $29
    inc h                                         ; $6af1: $24
    add hl, bc                                    ; $6af2: $09
    ld l, a                                       ; $6af3: $6f
    ld b, h                                       ; $6af4: $44
    sub c                                         ; $6af5: $91
    inc h                                         ; $6af6: $24
    ld [$ff5f], sp                                ; $6af7: $08 $5f $ff
    rrca                                          ; $6afa: $0f
    inc b                                         ; $6afb: $04
    db $10                                        ; $6afc: $10
    ld c, a                                       ; $6afd: $4f
    cp a                                          ; $6afe: $bf
    ld [hl+], a                                   ; $6aff: $22
    ld [de], a                                    ; $6b00: $12
    db $ed                                        ; $6b01: $ed
    ld h, $08                                     ; $6b02: $26 $08
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    db $fd                                        ; $6b06: $fd
    cp $06                                        ; $6b07: $fe $06
    db $fc                                        ; $6b09: $fc
    add d                                         ; $6b0a: $82
    ld [bc], a                                    ; $6b0b: $02
    nop                                           ; $6b0c: $00
    add c                                         ; $6b0d: $81
    ld a, [hl]                                    ; $6b0e: $7e
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    ld bc, $0f08                                  ; $6b11: $01 $08 $0f
    rst $38                                       ; $6b14: $ff
    nop                                           ; $6b15: $00
    xor d                                         ; $6b16: $aa
    rst $38                                       ; $6b17: $ff
    ld a, [bc]                                    ; $6b18: $0a
    rst $30                                       ; $6b19: $f7
    ld b, c                                       ; $6b1a: $41
    cp a                                          ; $6b1b: $bf
    ld de, $00ef                                  ; $6b1c: $11 $ef $00
    cp $ff                                        ; $6b1f: $fe $ff
    db $ed                                        ; $6b21: $ed
    add b                                         ; $6b22: $80
    ld [hl], a                                    ; $6b23: $77
    adc b                                         ; $6b24: $88
    db $db                                        ; $6b25: $db
    add b                                         ; $6b26: $80
    jr jr_098_6b9e                                ; $6b27: $18 $75

    adc b                                         ; $6b29: $88
    sbc $04                                       ; $6b2a: $de $04
    nop                                           ; $6b2c: $00
    ret nc                                        ; $6b2d: $d0

    ld a, [bc]                                    ; $6b2e: $0a
    add c                                         ; $6b2f: $81
    ld a, a                                       ; $6b30: $7f
    db $ec                                        ; $6b31: $ec
    ld h, b                                       ; $6b32: $60
    inc bc                                        ; $6b33: $03
    call nz, $c008                                ; $6b34: $c4 $08 $c0
    jr jr_098_6ae6                                ; $6b37: $18 $ad

    jp nz, $f1ff                                  ; $6b39: $c2 $ff $f1

    ld e, $7e                                     ; $6b3c: $1e $7e
    pop hl                                        ; $6b3e: $e1
    xor h                                         ; $6b3f: $ac
    add hl, bc                                    ; $6b40: $09
    and b                                         ; $6b41: $a0
    jr z, jr_098_6b4c                             ; $6b42: $28 $08

    add hl, de                                    ; $6b44: $19
    jr nz, @+$3a                                  ; $6b45: $20 $38

    ldh [rNR23], a                                ; $6b47: $e0 $18
    jr nz, jr_098_6b83                            ; $6b49: $20 $38

    add c                                         ; $6b4b: $81

jr_098_6b4c:
    rrca                                          ; $6b4c: $0f
    rst $38                                       ; $6b4d: $ff
    ret nz                                        ; $6b4e: $c0

    cp a                                          ; $6b4f: $bf
    add b                                         ; $6b50: $80
    inc b                                         ; $6b51: $04
    jr nz, @+$1a                                  ; $6b52: $20 $18

    dec de                                        ; $6b54: $1b
    add [hl]                                      ; $6b55: $86
    inc b                                         ; $6b56: $04
    ld e, $07                                     ; $6b57: $1e $07
    pop bc                                        ; $6b59: $c1
    cp e                                          ; $6b5a: $bb
    ld c, $28                                     ; $6b5b: $0e $28
    dec de                                        ; $6b5d: $1b
    ld bc, $83ff                                  ; $6b5e: $01 $ff $83
    ld a, a                                       ; $6b61: $7f
    ld bc, $0796                                  ; $6b62: $01 $96 $07
    add b                                         ; $6b65: $80
    inc b                                         ; $6b66: $04
    ld [$bfc1], sp                                ; $6b67: $08 $c1 $bf
    call nc, $90bf                                ; $6b6a: $d4 $bf $90
    ldh a, [$98]                                  ; $6b6d: $f0 $98
    nop                                           ; $6b6f: $00
    ldh a, [$d5]                                  ; $6b70: $f0 $d5
    ld hl, sp-$48                                 ; $6b72: $f8 $b8
    ldh a, [$d0]                                  ; $6b74: $f0 $d0
    ldh a, [$b8]                                  ; $6b76: $f0 $b8
    add b                                         ; $6b78: $80
    ld [$0b00], sp                                ; $6b79: $08 $00 $0b
    rst $38                                       ; $6b7c: $ff
    ld bc, $8803                                  ; $6b7d: $01 $03 $88
    ld bc, $3d55                                  ; $6b80: $01 $55 $3d

jr_098_6b83:
    adc c                                         ; $6b83: $89
    adc b                                         ; $6b84: $88
    inc l                                         ; $6b85: $2c
    ld b, $08                                     ; $6b86: $06 $08
    ld [$0c28], sp                                ; $6b88: $08 $28 $0c
    inc l                                         ; $6b8b: $2c
    inc c                                         ; $6b8c: $0c
    ld [$0408], a                                 ; $6b8d: $ea $08 $04
    ld bc, $9fff                                  ; $6b90: $01 $ff $9f
    ld h, b                                       ; $6b93: $60
    sbc a                                         ; $6b94: $9f
    cp b                                          ; $6b95: $b8
    ldh a, [$f0]                                  ; $6b96: $f0 $f0
    jr z, jr_098_6b9a                             ; $6b98: $28 $00

jr_098_6b9a:
    ld b, $f5                                     ; $6b9a: $06 $f5
    ld hl, sp-$08                                 ; $6b9c: $f8 $f8

jr_098_6b9e:
    ldh a, [$b0]                                  ; $6b9e: $f0 $b0
    halt                                          ; $6ba0: $76
    inc de                                        ; $6ba1: $13
    jr z, jr_098_6bcc                             ; $6ba2: $28 $28

    adc b                                         ; $6ba4: $88
    ld c, c                                       ; $6ba5: $49
    inc bc                                        ; $6ba6: $03
    jp c, $ff08                                   ; $6ba7: $da $08 $ff

jr_098_6baa:
    rst $38                                       ; $6baa: $ff
    add h                                         ; $6bab: $84
    inc c                                         ; $6bac: $0c
    rst $30                                       ; $6bad: $f7
    adc b                                         ; $6bae: $88
    sub b                                         ; $6baf: $90
    inc c                                         ; $6bb0: $0c
    ret z                                         ; $6bb1: $c8

    sbc b                                         ; $6bb2: $98
    inc c                                         ; $6bb3: $0c
    cp b                                          ; $6bb4: $b8
    dec b                                         ; $6bb5: $05
    rst $38                                       ; $6bb6: $ff
    ldh [rSC], a                                  ; $6bb7: $e0 $02
    nop                                           ; $6bb9: $00
    push af                                       ; $6bba: $f5
    ld [$50ea], a                                 ; $6bbb: $ea $ea $50
    push af                                       ; $6bbe: $f5
    inc b                                         ; $6bbf: $04
    jr @+$01                                      ; $6bc0: $18 $ff

    ld a, d                                       ; $6bc2: $7a
    nop                                           ; $6bc3: $00
    inc bc                                        ; $6bc4: $03
    rst $38                                       ; $6bc5: $ff
    ld d, a                                       ; $6bc6: $57
    xor e                                         ; $6bc7: $ab
    ld h, b                                       ; $6bc8: $60
    xor e                                         ; $6bc9: $ab
    or $07                                        ; $6bca: $f6 $07

jr_098_6bcc:
    inc b                                         ; $6bcc: $04
    ld [$c0bf], sp                                ; $6bcd: $08 $bf $c0
    add b                                         ; $6bd0: $80
    rst $38                                       ; $6bd1: $ff
    xor d                                         ; $6bd2: $aa
    jr z, jr_098_6baa                             ; $6bd3: $28 $d5

    add b                                         ; $6bd5: $80
    jp nz, $d513                                  ; $6bd6: $c2 $13 $d5

    jr jr_098_6bdc                                ; $6bd9: $18 $01

    push de                                       ; $6bdb: $d5

jr_098_6bdc:
    rst $38                                       ; $6bdc: $ff
    add b                                         ; $6bdd: $80
    add b                                         ; $6bde: $80
    inc b                                         ; $6bdf: $04
    db $10                                        ; $6be0: $10
    xor d                                         ; $6be1: $aa
    push de                                       ; $6be2: $d5
    push de                                       ; $6be3: $d5
    xor e                                         ; $6be4: $ab
    ld a, [$8587]                                 ; $6be5: $fa $87 $85
    pop hl                                        ; $6be8: $e1
    ld c, a                                       ; $6be9: $4f
    inc [hl]                                      ; $6bea: $34
    ld de, $cc07                                  ; $6beb: $11 $07 $cc
    db $10                                        ; $6bee: $10
    rrca                                          ; $6bef: $0f
    jr nc, @+$31                                  ; $6bf0: $30 $2f

    jr nc, jr_098_6c0c                            ; $6bf2: $30 $18

    inc b                                         ; $6bf4: $04
    jr nz, jr_098_6c28                            ; $6bf5: $20 $31

    adc a                                         ; $6bf7: $8f
    jr z, @+$06                                   ; $6bf8: $28 $04

    rst $28                                       ; $6bfa: $ef
    ldh a, [rIF]                                  ; $6bfb: $f0 $0f

jr_098_6bfd:
    ldh a, [$f7]                                  ; $6bfd: $f0 $f7
    nop                                           ; $6bff: $00
    ret                                           ; $6c00: $c9


    ld l, [hl]                                    ; $6c01: $6e
    pop af                                        ; $6c02: $f1
    ld l, a                                       ; $6c03: $6f
    ld sp, hl                                     ; $6c04: $f9
    ld l, [hl]                                    ; $6c05: $6e
    sbc c                                         ; $6c06: $99
    sbc e                                         ; $6c07: $9b
    ld bc, $f2fd                                  ; $6c08: $01 $fd $f2
    db $fd                                        ; $6c0b: $fd

jr_098_6c0c:
    inc bc                                        ; $6c0c: $03
    db $fd                                        ; $6c0d: $fd
    add $39                                       ; $6c0e: $c6 $39
    add h                                         ; $6c10: $84
    rra                                           ; $6c11: $1f
    sub e                                         ; $6c12: $93
    and b                                         ; $6c13: $a0
    inc l                                         ; $6c14: $2c
    ld d, l                                       ; $6c15: $55
    rst $38                                       ; $6c16: $ff
    sub h                                         ; $6c17: $94
    inc c                                         ; $6c18: $0c
    rst $30                                       ; $6c19: $f7
    add hl, bc                                    ; $6c1a: $09
    and b                                         ; $6c1b: $a0
    inc c                                         ; $6c1c: $0c
    xor b                                         ; $6c1d: $a8
    inc c                                         ; $6c1e: $0c
    ld [$0e48], a                                 ; $6c1f: $ea $48 $0e
    db $10                                        ; $6c22: $10
    add hl, de                                    ; $6c23: $19
    ld [hl], l                                    ; $6c24: $75
    inc c                                         ; $6c25: $0c
    ld d, l                                       ; $6c26: $55
    adc b                                         ; $6c27: $88

jr_098_6c28:
    ld bc, $b8fd                                  ; $6c28: $01 $fd $b8
    nop                                           ; $6c2b: $00
    xor c                                         ; $6c2c: $a9
    ld b, a                                       ; $6c2d: $47
    ld d, a                                       ; $6c2e: $57
    cp h                                          ; $6c2f: $bc
    jr jr_098_6c87                                ; $6c30: $18 $55

    rst $38                                       ; $6c32: $ff
    xor e                                         ; $6c33: $ab
    xor d                                         ; $6c34: $aa
    dec c                                         ; $6c35: $0d
    inc b                                         ; $6c36: $04
    db $10                                        ; $6c37: $10
    sub [hl]                                      ; $6c38: $96
    inc c                                         ; $6c39: $0c
    ld e, b                                       ; $6c3a: $58
    xor d                                         ; $6c3b: $aa
    ld l, b                                       ; $6c3c: $68
    rlca                                          ; $6c3d: $07
    ld d, l                                       ; $6c3e: $55
    or d                                          ; $6c3f: $b2
    ld bc, $1004                                  ; $6c40: $01 $04 $10
    xor e                                         ; $6c43: $ab
    xor e                                         ; $6c44: $ab
    push de                                       ; $6c45: $d5
    ld a, [de]                                    ; $6c46: $1a
    rst $18                                       ; $6c47: $df
    pop hl                                        ; $6c48: $e1
    ld h, c                                       ; $6c49: $61
    sbc [hl]                                      ; $6c4a: $9e
    nop                                           ; $6c4b: $00
    and b                                         ; $6c4c: $a0
    ld c, l                                       ; $6c4d: $4d
    ld l, a                                       ; $6c4e: $6f
    inc d                                         ; $6c4f: $14
    ld bc, $085f                                  ; $6c50: $01 $5f $08
    sbc h                                         ; $6c53: $9c
    db $fc                                        ; $6c54: $fc
    sbc h                                         ; $6c55: $9c
    ld e, h                                       ; $6c56: $5c
    inc b                                         ; $6c57: $04
    db $10                                        ; $6c58: $10
    cp $9f                                        ; $6c59: $fe $9f
    ld [hl], l                                    ; $6c5b: $75
    jr jr_098_6bfd                                ; $6c5c: $18 $9f

    ldh [$9f], a                                  ; $6c5e: $e0 $9f
    ret nc                                        ; $6c60: $d0

    ld e, c                                       ; $6c61: $59
    ret nz                                        ; $6c62: $c0

    ld e, d                                       ; $6c63: $5a
    dec l                                         ; $6c64: $2d
    jp nz, Jump_000_09fc                          ; $6c65: $c2 $fc $09

    rst $38                                       ; $6c68: $ff
    ccf                                           ; $6c69: $3f
    rst $38                                       ; $6c6a: $ff
    rra                                           ; $6c6b: $1f
    ld bc, $7f20                                  ; $6c6c: $01 $20 $7f
    sbc a                                         ; $6c6f: $9f
    ld b, b                                       ; $6c70: $40
    ld a, [bc]                                    ; $6c71: $0a
    ld bc, $c1be                                  ; $6c72: $01 $be $c1
    xor e                                         ; $6c75: $ab
    pop de                                        ; $6c76: $d1
    cp [hl]                                       ; $6c77: $be
    pop bc                                        ; $6c78: $c1
    xor a                                         ; $6c79: $af

jr_098_6c7a:
    inc b                                         ; $6c7a: $04
    nop                                           ; $6c7b: $00
    jp nz, Jump_000_0808                          ; $6c7c: $c2 $08 $08

    nop                                           ; $6c7f: $00
    ld c, [hl]                                    ; $6c80: $4e
    db $fc                                        ; $6c81: $fc
    add e                                         ; $6c82: $83
    ld h, d                                       ; $6c83: $62
    adc [hl]                                      ; $6c84: $8e
    ret nz                                        ; $6c85: $c0

    ld c, e                                       ; $6c86: $4b

jr_098_6c87:
    scf                                           ; $6c87: $37

jr_098_6c88:
    ld bc, $60c0                                  ; $6c88: $01 $c0 $60
    rra                                           ; $6c8b: $1f
    ld a, [$5286]                                 ; $6c8c: $fa $86 $52
    adc [hl]                                      ; $6c8f: $8e
    inc b                                         ; $6c90: $04
    ld [$fb00], sp                                ; $6c91: $08 $00 $fb
    add [hl]                                      ; $6c94: $86
    ld d, e                                       ; $6c95: $53
    adc a                                         ; $6c96: $8f
    ld hl, sp-$79                                 ; $6c97: $f8 $87
    halt                                          ; $6c99: $76
    adc b                                         ; $6c9a: $88
    inc b                                         ; $6c9b: $04
    pop bc                                        ; $6c9c: $c1
    nop                                           ; $6c9d: $00
    ld c, d                                       ; $6c9e: $4a
    nop                                           ; $6c9f: $00
    jp c, $0002                                   ; $6ca0: $da $02 $00

    ld [bc], a                                    ; $6ca3: $02
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    jr jr_098_6c88                                ; $6ca6: $18 $e0

    ld a, [hl]                                    ; $6ca8: $7e
    rst $38                                       ; $6ca9: $ff
    add b                                         ; $6caa: $80
    ld a, a                                       ; $6cab: $7f
    sbc a                                         ; $6cac: $9f
    ld [hl], c                                    ; $6cad: $71
    nop                                           ; $6cae: $00
    ld e, $11                                     ; $6caf: $1e $11
    sbc e                                         ; $6cb1: $9b
    ld de, $119e                                  ; $6cb2: $11 $9e $11
    sbc a                                         ; $6cb5: $9f
    ld de, $1e00                                  ; $6cb6: $11 $00 $1e
    ld de, $d13b                                  ; $6cb9: $11 $3b $d1
    cp $f1                                        ; $6cbc: $fe $f1
    xor a                                         ; $6cbe: $af
    rst $38                                       ; $6cbf: $ff
    inc c                                         ; $6cc0: $0c
    dec b                                         ; $6cc1: $05
    rst $38                                       ; $6cc2: $ff
    or h                                          ; $6cc3: $b4
    ld b, e                                       ; $6cc4: $43
    ld d, b                                       ; $6cc5: $50
    ld a, [hl-]                                   ; $6cc6: $3a
    ld l, b                                       ; $6cc7: $68
    ld [$d12b], sp                                ; $6cc8: $08 $2b $d1
    sub b                                         ; $6ccb: $90
    ld d, b                                       ; $6ccc: $50
    ld a, [hl-]                                   ; $6ccd: $3a
    rrca                                          ; $6cce: $0f
    pop af                                        ; $6ccf: $f1
    ld b, b                                       ; $6cd0: $40
    ld e, d                                       ; $6cd1: $5a
    ret nc                                        ; $6cd2: $d0

    nop                                           ; $6cd3: $00
    ldh [$80], a                                  ; $6cd4: $e0 $80
    add d                                         ; $6cd6: $82
    inc b                                         ; $6cd7: $04
    jr jr_098_6c7a                                ; $6cd8: $18 $a0

    add b                                         ; $6cda: $80
    call nz, $a800                                ; $6cdb: $c4 $00 $a8
    inc c                                         ; $6cde: $0c
    nop                                           ; $6cdf: $00
    add sp, -$58                                  ; $6ce0: $e8 $a8
    db $10                                        ; $6ce2: $10
    db $10                                        ; $6ce3: $10
    ret nz                                        ; $6ce4: $c0

    inc c                                         ; $6ce5: $0c
    nop                                           ; $6ce6: $00
    ret nz                                        ; $6ce7: $c0

    inc d                                         ; $6ce8: $14
    nop                                           ; $6ce9: $00
    rst $00                                       ; $6cea: $c7
    rst $38                                       ; $6ceb: $ff
    db $e3                                        ; $6cec: $e3
    ld [hl], a                                    ; $6ced: $77
    rst $18                                       ; $6cee: $df
    inc b                                         ; $6cef: $04
    ld c, b                                       ; $6cf0: $48
    jr z, jr_098_6cfb                             ; $6cf1: $28 $08

    jr jr_098_6cfd                                ; $6cf3: $18 $08

    ret nz                                        ; $6cf5: $c0

    jr z, jr_098_6d18                             ; $6cf6: $28 $20

    jr c, jr_098_6d02                             ; $6cf8: $38 $08

    inc d                                         ; $6cfa: $14

jr_098_6cfb:
    jr c, jr_098_6d3d                             ; $6cfb: $38 $40

jr_098_6cfd:
    sub b                                         ; $6cfd: $90
    jr c, jr_098_6d00                             ; $6cfe: $38 $00

jr_098_6d00:
    add b                                         ; $6d00: $80
    add b                                         ; $6d01: $80

jr_098_6d02:
    jp nz, $8400                                  ; $6d02: $c2 $00 $84

    add b                                         ; $6d05: $80
    inc c                                         ; $6d06: $0c
    xor d                                         ; $6d07: $aa
    nop                                           ; $6d08: $00
    rst $18                                       ; $6d09: $df
    add b                                         ; $6d0a: $80
    adc e                                         ; $6d0b: $8b
    ld a, [bc]                                    ; $6d0c: $0a
    rra                                           ; $6d0d: $1f
    ld e, $12                                     ; $6d0e: $1e $12
    nop                                           ; $6d10: $00
    jr @+$27                                      ; $6d11: $18 $25

    nop                                           ; $6d13: $00
    ld c, e                                       ; $6d14: $4b
    inc a                                         ; $6d15: $3c
    rlca                                          ; $6d16: $07
    add hl, bc                                    ; $6d17: $09

jr_098_6d18:
    inc bc                                        ; $6d18: $03
    cpl                                           ; $6d19: $2f
    rst $38                                       ; $6d1a: $ff
    ld e, e                                       ; $6d1b: $5b
    inc hl                                        ; $6d1c: $23
    rst $38                                       ; $6d1d: $ff
    ld l, $04                                     ; $6d1e: $2e $04
    nop                                           ; $6d20: $00
    cpl                                           ; $6d21: $2f
    rst $38                                       ; $6d22: $ff
    ld e, d                                       ; $6d23: $5a
    inc c                                         ; $6d24: $0c
    stop                                          ; $6d25: $10 $00
    ld [bc], a                                    ; $6d27: $02
    and c                                         ; $6d28: $a1
    ret nz                                        ; $6d29: $c0

    ld a, [hl+]                                   ; $6d2a: $2a
    add b                                         ; $6d2b: $80
    and b                                         ; $6d2c: $a0
    ld [bc], a                                    ; $6d2d: $02
    add e                                         ; $6d2e: $83
    rst $38                                       ; $6d2f: $ff
    ld b, c                                       ; $6d30: $41
    cp a                                          ; $6d31: $bf
    or b                                          ; $6d32: $b0
    ld a, [hl+]                                   ; $6d33: $2a
    ld b, b                                       ; $6d34: $40
    xor e                                         ; $6d35: $ab
    ld a, [hl+]                                   ; $6d36: $2a
    ld b, $f0                                     ; $6d37: $06 $f0
    inc de                                        ; $6d39: $13
    ld hl, $420e                                  ; $6d3a: $21 $0e $42

jr_098_6d3d:
    rst $38                                       ; $6d3d: $ff
    ld bc, $8360                                  ; $6d3e: $01 $60 $83
    rst $38                                       ; $6d41: $ff
    pop bc                                        ; $6d42: $c1
    cp a                                          ; $6d43: $bf
    inc b                                         ; $6d44: $04
    ld c, b                                       ; $6d45: $48
    rst $38                                       ; $6d46: $ff
    ld h, $ff                                     ; $6d47: $26 $ff
    add b                                         ; $6d49: $80
    ld [bc], a                                    ; $6d4a: $02
    nop                                           ; $6d4b: $00
    ret nz                                        ; $6d4c: $c0

    cp a                                          ; $6d4d: $bf
    inc b                                         ; $6d4e: $04
    jr jr_098_6d61                                ; $6d4f: $18 $10

    ld [$0e00], sp                                ; $6d51: $08 $00 $0e
    rst $38                                       ; $6d54: $ff
    xor d                                         ; $6d55: $aa
    ld d, l                                       ; $6d56: $55
    nop                                           ; $6d57: $00
    ld b, $00                                     ; $6d58: $06 $00
    ld [$3000], sp                                ; $6d5a: $08 $00 $30
    db $10                                        ; $6d5d: $10
    ld b, c                                       ; $6d5e: $41
    nop                                           ; $6d5f: $00
    cp a                                          ; $6d60: $bf

jr_098_6d61:
    add e                                         ; $6d61: $83
    ld a, a                                       ; $6d62: $7f
    ld bc, $03ff                                  ; $6d63: $01 $ff $03
    rst $38                                       ; $6d66: $ff
    ld bc, $ff20                                  ; $6d67: $01 $20 $ff
    xor e                                         ; $6d6a: $ab
    ld c, l                                       ; $6d6b: $4d
    db $10                                        ; $6d6c: $10
    rst $28                                       ; $6d6d: $ef
    rst $38                                       ; $6d6e: $ff
    rst $30                                       ; $6d6f: $f7
    rst $38                                       ; $6d70: $ff
    ld a, [$ff00]                                 ; $6d71: $fa $00 $ff
    jp hl                                         ; $6d74: $e9


    rst $38                                       ; $6d75: $ff
    ldh a, [rIE]                                  ; $6d76: $f0 $ff
    pop de                                        ; $6d78: $d1
    cp $e4                                        ; $6d79: $fe $e4
    nop                                           ; $6d7b: $00
    ei                                            ; $6d7c: $fb
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    xor a                                         ; $6d7f: $af
    rst $38                                       ; $6d80: $ff
    ld de, $81ff                                  ; $6d81: $11 $ff $81
    nop                                           ; $6d84: $00
    rst $38                                       ; $6d85: $ff
    add hl, bc                                    ; $6d86: $09
    rst $30                                       ; $6d87: $f7
    ld b, l                                       ; $6d88: $45
    ei                                            ; $6d89: $fb
    dec bc                                        ; $6d8a: $0b
    push af                                       ; $6d8b: $f5
    dec d                                         ; $6d8c: $15

Jump_098_6d8d:
    jr nz, @-$13                                  ; $6d8d: $20 $eb

    push af                                       ; $6d8f: $f5
    ld [hl], c                                    ; $6d90: $71
    nop                                           ; $6d91: $00
    push de                                       ; $6d92: $d5
    rst $38                                       ; $6d93: $ff
    ld [$d4ff], a                                 ; $6d94: $ea $ff $d4
    nop                                           ; $6d97: $00
    rst $38                                       ; $6d98: $ff
    and d                                         ; $6d99: $a2
    rst $38                                       ; $6d9a: $ff
    ld b, h                                       ; $6d9b: $44
    rst $38                                       ; $6d9c: $ff
    db $10                                        ; $6d9d: $10
    rst $38                                       ; $6d9e: $ff
    jp nc, $ff00                                  ; $6d9f: $d2 $00 $ff

    and b                                         ; $6da2: $a0
    rst $38                                       ; $6da3: $ff
    pop bc                                        ; $6da4: $c1
    cp $80                                        ; $6da5: $fe $80
    rst $38                                       ; $6da7: $ff
    inc b                                         ; $6da8: $04
    nop                                           ; $6da9: $00
    ei                                            ; $6daa: $fb
    ld de, $02ee                                  ; $6dab: $11 $ee $02
    db $fd                                        ; $6dae: $fd
    sub l                                         ; $6daf: $95
    ld l, d                                       ; $6db0: $6a
    ldh [rP1], a                                  ; $6db1: $e0 $00
    ret nz                                        ; $6db3: $c0

    ld h, [hl]                                    ; $6db4: $66
    ret nz                                        ; $6db5: $c0

    ld a, a                                       ; $6db6: $7f
    ret nz                                        ; $6db7: $c0

    rst $18                                       ; $6db8: $df
    ld h, b                                       ; $6db9: $60
    ld b, c                                       ; $6dba: $41
    nop                                           ; $6dbb: $00
    cp $3c                                        ; $6dbc: $fe $3c
    rst $38                                       ; $6dbe: $ff
    or h                                          ; $6dbf: $b4
    ld c, e                                       ; $6dc0: $4b
    ld a, a                                       ; $6dc1: $7f
    add d                                         ; $6dc2: $82
    push de                                       ; $6dc3: $d5
    nop                                           ; $6dc4: $00
    ld a, a                                       ; $6dc5: $7f
    ret nz                                        ; $6dc6: $c0

    ld a, a                                       ; $6dc7: $7f
    jp nz, $d57d                                  ; $6dc8: $c2 $7d $d5

    ld l, d                                       ; $6dcb: $6a
    ld a, [hl-]                                   ; $6dcc: $3a
    nop                                           ; $6dcd: $00
    rst $38                                       ; $6dce: $ff
    add b                                         ; $6dcf: $80
    nop                                           ; $6dd0: $00
    db $ec                                        ; $6dd1: $ec
    nop                                           ; $6dd2: $00
    ld a, a                                       ; $6dd3: $7f
    add b                                         ; $6dd4: $80
    xor b                                         ; $6dd5: $a8
    nop                                           ; $6dd6: $00
    rst $38                                       ; $6dd7: $ff
    ld b, d                                       ; $6dd8: $42
    db $fd                                        ; $6dd9: $fd
    add b                                         ; $6dda: $80
    rst $38                                       ; $6ddb: $ff
    ld hl, $4afe                                  ; $6ddc: $21 $fe $4a
    nop                                           ; $6ddf: $00
    push af                                       ; $6de0: $f5
    add c                                         ; $6de1: $81
    cp $52                                        ; $6de2: $fe $52
    db $ed                                        ; $6de4: $ed
    add l                                         ; $6de5: $85
    ld a, [$002a]                                 ; $6de6: $fa $2a $00
    push de                                       ; $6de9: $d5
    ld e, l                                       ; $6dea: $5d
    and d                                         ; $6deb: $a2
    cp e                                          ; $6dec: $bb
    ld b, h                                       ; $6ded: $44
    sbc $21                                       ; $6dee: $de $21
    xor a                                         ; $6df0: $af
    nop                                           ; $6df1: $00
    ld d, b                                       ; $6df2: $50
    ld a, a                                       ; $6df3: $7f
    add b                                         ; $6df4: $80
    rst $28                                       ; $6df5: $ef
    db $10                                        ; $6df6: $10
    rst $38                                       ; $6df7: $ff
    nop                                           ; $6df8: $00
    sbc $00                                       ; $6df9: $de $00
    inc hl                                        ; $6dfb: $23
    rst $38                                       ; $6dfc: $ff
    inc bc                                        ; $6dfd: $03
    rst $08                                       ; $6dfe: $cf
    ccf                                           ; $6dff: $3f
    xor c                                         ; $6e00: $a9
    ld b, b                                       ; $6e01: $40
    ccf                                           ; $6e02: $3f
    nop                                           ; $6e03: $00
    ret nz                                        ; $6e04: $c0

    nop                                           ; $6e05: $00
    rst $38                                       ; $6e06: $ff
    cp a                                          ; $6e07: $bf
    ld a, a                                       ; $6e08: $7f

Call_098_6e09:
    rst $38                                       ; $6e09: $ff
    ld [bc], a                                    ; $6e0a: $02
    cpl                                           ; $6e0b: $2f
    jr nz, @-$2e                                  ; $6e0c: $20 $d0

    nop                                           ; $6e0e: $00
    db $e3                                        ; $6e0f: $e3
    nop                                           ; $6e10: $00
    jp $ab82                                      ; $6e11: $c3 $82 $ab


    jp nz, Jump_000_009d                          ; $6e14: $c2 $9d $00

    ld [c], a                                     ; $6e17: $e2
    ld b, c                                       ; $6e18: $41
    cp $af                                        ; $6e19: $fe $af
    rra                                           ; $6e1b: $1f
    ld [bc], a                                    ; $6e1c: $02
    db $fd                                        ; $6e1d: $fd
    add hl, bc                                    ; $6e1e: $09
    nop                                           ; $6e1f: $00
    or $57                                        ; $6e20: $f6 $57
    xor b                                         ; $6e22: $a8
    dec bc                                        ; $6e23: $0b
    db $f4                                        ; $6e24: $f4
    rla                                           ; $6e25: $17
    add sp, $2f                                   ; $6e26: $e8 $2f
    nop                                           ; $6e28: $00
    ret nc                                        ; $6e29: $d0

    dec de                                        ; $6e2a: $1b
    db $e4                                        ; $6e2b: $e4
    cpl                                           ; $6e2c: $2f
    ret nc                                        ; $6e2d: $d0

jr_098_6e2e:
    rst $38                                       ; $6e2e: $ff
    nop                                           ; $6e2f: $00
    ld e, a                                       ; $6e30: $5f
    ld h, b                                       ; $6e31: $60
    and b                                         ; $6e32: $a0
    call Call_000_0410                            ; $6e33: $cd $10 $04

jr_098_6e36:
    jr nz, jr_098_6e36                            ; $6e36: $20 $fe

    inc bc                                        ; $6e38: $03
    db $fd                                        ; $6e39: $fd

jr_098_6e3a:
    inc bc                                        ; $6e3a: $03
    cp $41                                        ; $6e3b: $fe $41
    ld bc, $3812                                  ; $6e3d: $01 $12 $38
    pop de                                        ; $6e40: $d1
    nop                                           ; $6e41: $00
    ld a, [hl+]                                   ; $6e42: $2a
    push de                                       ; $6e43: $d5
    cp $f5                                        ; $6e44: $fe $f5
    ld [$2480], sp                                ; $6e46: $08 $80 $24
    jr nz, jr_098_6e69                            ; $6e49: $20 $1e

jr_098_6e4b:
    pop hl                                        ; $6e4b: $e1
    inc l                                         ; $6e4c: $2c
    jp nc, $ea15                                  ; $6e4d: $d2 $15 $ea

    ld a, [bc]                                    ; $6e50: $0a
    nop                                           ; $6e51: $00
    rst $30                                       ; $6e52: $f7
    ld h, $db                                     ; $6e53: $26 $db
    ld bc, $41ff                                  ; $6e55: $01 $ff $41
    add c                                         ; $6e58: $81
    ld [hl], c                                    ; $6e59: $71
    nop                                           ; $6e5a: $00
    add c                                         ; $6e5b: $81
    rlca                                          ; $6e5c: $07
    ld hl, sp+$0b                                 ; $6e5d: $f8 $0b
    inc b                                         ; $6e5f: $04
    ld c, e                                       ; $6e60: $4b
    inc b                                         ; $6e61: $04
    ei                                            ; $6e62: $fb

jr_098_6e63:
    ld bc, $3304                                  ; $6e63: $01 $04 $33
    call z, $f8ff                                 ; $6e66: $cc $ff $f8

jr_098_6e69:
    or a                                          ; $6e69: $b7
    ld c, b                                       ; $6e6a: $48
    add d                                         ; $6e6b: $82
    ld [$4e81], sp                                ; $6e6c: $08 $81 $4e
    jr z, jr_098_6e2e                             ; $6e6f: $28 $bd

    ld b, d                                       ; $6e71: $42
    rst $38                                       ; $6e72: $ff
    nop                                           ; $6e73: $00
    ld [hl], l                                    ; $6e74: $75
    adc d                                         ; $6e75: $8a
    ld e, h                                       ; $6e76: $5c
    jr c, jr_098_6e79                             ; $6e77: $38 $00

jr_098_6e79:
    rst $18                                       ; $6e79: $df
    jr nz, jr_098_6e3a                            ; $6e7a: $20 $be

    ld b, c                                       ; $6e7c: $41
    ld e, a                                       ; $6e7d: $5f
    and b                                         ; $6e7e: $a0
    ld a, [bc]                                    ; $6e7f: $0a
    rst $38                                       ; $6e80: $ff
    nop                                           ; $6e81: $00
    jr nz, jr_098_6e63                            ; $6e82: $20 $df

    sub h                                         ; $6e84: $94
    ld l, e                                       ; $6e85: $6b
    ld a, d                                       ; $6e86: $7a
    add l                                         ; $6e87: $85
    ld [hl], a                                    ; $6e88: $77
    adc b                                         ; $6e89: $88
    ld [bc], a                                    ; $6e8a: $02
    xor e                                         ; $6e8b: $ab
    ld d, h                                       ; $6e8c: $54
    rst $38                                       ; $6e8d: $ff
    ld b, b                                       ; $6e8e: $40
    rst $38                                       ; $6e8f: $ff
    ld b, b                                       ; $6e90: $40
    db $10                                        ; $6e91: $10
    jr z, jr_098_6e4b                             ; $6e92: $28 $b7

    inc d                                         ; $6e94: $14
    ld c, b                                       ; $6e95: $48
    db $eb                                        ; $6e96: $eb
    inc d                                         ; $6e97: $14
    ld d, l                                       ; $6e98: $55
    add hl, bc                                    ; $6e99: $09
    ld d, h                                       ; $6e9a: $54
    ld h, b                                       ; $6e9b: $60
    ld bc, $ae51                                  ; $6e9c: $01 $51 $ae
    ld [bc], a                                    ; $6e9f: $02
    cp d                                          ; $6ea0: $ba
    ld b, l                                       ; $6ea1: $45
    db $ed                                        ; $6ea2: $ed
    ld [de], a                                    ; $6ea3: $12
    cp $01                                        ; $6ea4: $fe $01
    ld b, d                                       ; $6ea6: $42
    ld [$0015], sp                                ; $6ea7: $08 $15 $00
    rst $38                                       ; $6eaa: $ff
    ld [$02ff], sp                                ; $6eab: $08 $ff $02
    db $fd                                        ; $6eae: $fd
    and c                                         ; $6eaf: $a1
    ld e, [hl]                                    ; $6eb0: $5e
    ld d, b                                       ; $6eb1: $50
    ld bc, $eaaf                                  ; $6eb2: $01 $af $ea
    dec d                                         ; $6eb5: $15
    push af                                       ; $6eb6: $f5
    ld a, [bc]                                    ; $6eb7: $0a
    rst $38                                       ; $6eb8: $ff
    nop                                           ; $6eb9: $00
    rrca                                          ; $6eba: $0f
    ld bc, $c018                                  ; $6ebb: $01 $18 $c0
    ld a, a                                       ; $6ebe: $7f
    add b                                         ; $6ebf: $80
    or d                                          ; $6ec0: $b2
    jr z, jr_098_6ecd                             ; $6ec1: $28 $0a

    jr z, @-$06                                   ; $6ec3: $28 $f8

    rlca                                          ; $6ec5: $07
    push af                                       ; $6ec6: $f5
    ld bc, $f708                                  ; $6ec7: $01 $08 $f7
    ld [$0cfb], sp                                ; $6eca: $08 $fb $0c

jr_098_6ecd:
    db $fd                                        ; $6ecd: $fd
    ld c, $cc                                     ; $6ece: $0e $cc
    jr @+$06                                      ; $6ed0: $18 $04

    ld bc, $02fe                                  ; $6ed2: $01 $fe $02
    ld bc, $a591                                  ; $6ed5: $01 $91 $a5
    ld bc, $817e                                  ; $6ed8: $01 $7e $81
    add b                                         ; $6edb: $80
    call c, $fc18                                 ; $6edc: $dc $18 $fc
    inc bc                                        ; $6edf: $03
    ld a, [$7e04]                                 ; $6ee0: $fa $04 $7e
    add h                                         ; $6ee3: $84
    add a                                         ; $6ee4: $87
    ld b, $fc                                     ; $6ee5: $06 $fc
    call z, Call_098_7f87                         ; $6ee7: $cc $87 $7f
    add b                                         ; $6eea: $80
    ld a, $38                                     ; $6eeb: $3e $38
    ldh a, [rNR10]                                ; $6eed: $f0 $10
    rrca                                          ; $6eef: $0f
    ld hl, $07fb                                  ; $6ef0: $21 $fb $07
    ld [hl+], a                                   ; $6ef3: $22
    jr z, @-$03                                   ; $6ef4: $28 $fb

    inc b                                         ; $6ef6: $04
    rst $38                                       ; $6ef7: $ff
    inc b                                         ; $6ef8: $04
    ld l, $09                                     ; $6ef9: $2e $09
    nop                                           ; $6efb: $00
    cp [hl]                                       ; $6efc: $be
    call nz, $f40f                                ; $6efd: $c4 $0f $f4
    push hl                                       ; $6f00: $e5
    cp $09                                        ; $6f01: $fe $09
    rlca                                          ; $6f03: $07
    nop                                           ; $6f04: $00
    ld d, d                                       ; $6f05: $52
    rlca                                          ; $6f06: $07
    db $fc                                        ; $6f07: $fc
    inc bc                                        ; $6f08: $03
    ld e, $e7                                     ; $6f09: $1e $e7
    ccf                                           ; $6f0b: $3f
    rst $38                                       ; $6f0c: $ff
    rla                                           ; $6f0d: $17

jr_098_6f0e:
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    and l                                         ; $6f10: $a5
    ld c, h                                       ; $6f11: $4c
    db $10                                        ; $6f12: $10
    add b                                         ; $6f13: $80
    dec l                                         ; $6f14: $2d
    ld a, [bc]                                    ; $6f15: $0a
    db $cc, $20, $01                              ; $6f16: $cc $20 $01
    ld a, [bc]                                    ; $6f19: $0a
    nop                                           ; $6f1a: $00
    rst $30                                       ; $6f1b: $f7
    ld [$14eb], sp                                ; $6f1c: $08 $eb $14
    db $fd                                        ; $6f1f: $fd
    ld b, $fa                                     ; $6f20: $06 $fa

jr_098_6f22:
    rlca                                          ; $6f22: $07
    jr nz, jr_098_6f22                            ; $6f23: $20 $fd

    inc bc                                        ; $6f25: $03
    db $10                                        ; $6f26: $10
    jr c, jr_098_6f87                             ; $6f27: $38 $5e

    and c                                         ; $6f29: $a1
    add c                                         ; $6f2a: $81
    rst $38                                       ; $6f2b: $ff
    cp $00                                        ; $6f2c: $fe $00
    rst $38                                       ; $6f2e: $ff
    rst $30                                       ; $6f2f: $f7
    ld [$01fe], sp                                ; $6f30: $08 $fe $01
    cp e                                          ; $6f33: $bb
    ld b, h                                       ; $6f34: $44
    rst $38                                       ; $6f35: $ff
    stop                                          ; $6f36: $10 $00
    xor $11                                       ; $6f38: $ee $11
    ld [hl], b                                    ; $6f3a: $70

jr_098_6f3b:
    jr jr_098_6f3b                                ; $6f3b: $18 $fe

    ld bc, $02fd                                  ; $6f3d: $01 $fd $02
    ld bc, $55aa                                  ; $6f40: $01 $aa $55
    ld d, l                                       ; $6f43: $55
    xor d                                         ; $6f44: $aa
    and e                                         ; $6f45: $a3
    ld e, h                                       ; $6f46: $5c
    ld [bc], a                                    ; $6f47: $02
    ld b, b                                       ; $6f48: $40
    ld [bc], a                                    ; $6f49: $02
    ld [bc], a                                    ; $6f4a: $02
    dec h                                         ; $6f4b: $25
    jp c, $f50a                                   ; $6f4c: $da $0a $f5

    ld e, a                                       ; $6f4f: $5f
    and b                                         ; $6f50: $a0
    jr nz, jr_098_6f5b                            ; $6f51: $20 $08

    rst $38                                       ; $6f53: $ff
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    sub b                                         ; $6f56: $90

jr_098_6f57:
    rst $28                                       ; $6f57: $ef
    ld c, b                                       ; $6f58: $48
    rst $30                                       ; $6f59: $f7
    dec b                                         ; $6f5a: $05

jr_098_6f5b:
    ld a, [$059a]                                 ; $6f5b: $fa $9a $05
    ld h, l                                       ; $6f5e: $65
    ld l, a                                       ; $6f5f: $6f
    sub b                                         ; $6f60: $90
    cp a                                          ; $6f61: $bf
    ld b, b                                       ; $6f62: $40
    ld d, l                                       ; $6f63: $55
    ld a, [bc]                                    ; $6f64: $0a
    sub l                                         ; $6f65: $95
    ld h, b                                       ; $6f66: $60
    ld [bc], a                                    ; $6f67: $02
    inc bc                                        ; $6f68: $03
    ld [hl+], a                                   ; $6f69: $22
    db $dd                                        ; $6f6a: $dd
    sub l                                         ; $6f6b: $95
    ld l, d                                       ; $6f6c: $6a
    ld l, e                                       ; $6f6d: $6b
    sub h                                         ; $6f6e: $94
    db $10                                        ; $6f6f: $10
    jr jr_098_6f0e                                ; $6f70: $18 $9c

    add hl, de                                    ; $6f72: $19
    nop                                           ; $6f73: $00
    rlca                                          ; $6f74: $07
    ld hl, sp+$1b                                 ; $6f75: $f8 $1b
    inc b                                         ; $6f77: $04
    rlc h                                         ; $6f78: $cb $04
    ld hl, sp+$07                                 ; $6f7a: $f8 $07
    inc a                                         ; $6f7c: $3c
    ld a, [c]                                     ; $6f7d: $f2
    inc c                                         ; $6f7e: $0c
    xor h                                         ; $6f7f: $ac
    ld c, c                                       ; $6f80: $49
    ld a, h                                       ; $6f81: $7c
    add hl, bc                                    ; $6f82: $09
    cp h                                          ; $6f83: $bc
    ld c, c                                       ; $6f84: $49
    ld a, [hl+]                                   ; $6f85: $2a
    db $10                                        ; $6f86: $10

jr_098_6f87:
    db $fc                                        ; $6f87: $fc
    rst $30                                       ; $6f88: $f7
    nop                                           ; $6f89: $00
    db $fc                                        ; $6f8a: $fc
    db $fd                                        ; $6f8b: $fd
    ld b, [hl]                                    ; $6f8c: $46
    db $fd                                        ; $6f8d: $fd
    ld b, a                                       ; $6f8e: $47
    ld a, [$3d47]                                 ; $6f8f: $fa $47 $3d
    jr nz, jr_098_6f57                            ; $6f92: $20 $c3

    cp a                                          ; $6f94: $bf
    ld a, [hl+]                                   ; $6f95: $2a
    ld bc, $022d                                  ; $6f96: $01 $2d $02
    db $fd                                        ; $6f99: $fd
    ld [bc], a                                    ; $6f9a: $02
    ld sp, hl                                     ; $6f9b: $f9
    ld bc, $0306                                  ; $6f9c: $01 $06 $03
    cp $bf                                        ; $6f9f: $fe $bf
    db $fc                                        ; $6fa1: $fc
    rst $38                                       ; $6fa2: $ff
    ret nz                                        ; $6fa3: $c0

    inc l                                         ; $6fa4: $2c
    ld l, b                                       ; $6fa5: $68
    nop                                           ; $6fa6: $00
    rst $30                                       ; $6fa7: $f7
    ld [$10ef], sp                                ; $6fa8: $08 $ef $10
    rst $00                                       ; $6fab: $c7
    rst $38                                       ; $6fac: $ff
    db $e3                                        ; $6fad: $e3
    rst $18                                       ; $6fae: $df
    add b                                         ; $6faf: $80
    inc b                                         ; $6fb0: $04
    ld c, b                                       ; $6fb1: $48
    jp nc, $a1fd                                  ; $6fb2: $d2 $fd $a1

    cp $c8                                        ; $6fb5: $fe $c8
    rst $38                                       ; $6fb7: $ff
    and h                                         ; $6fb8: $a4
    and b                                         ; $6fb9: $a0
    cp h                                          ; $6fba: $bc
    ld [bc], a                                    ; $6fbb: $02
    adc b                                         ; $6fbc: $88
    sbc a                                         ; $6fbd: $9f
    ld bc, $fea5                                  ; $6fbe: $01 $a5 $fe
    xor [hl]                                      ; $6fc1: $ae
    ld d, c                                       ; $6fc2: $51
    ld e, l                                       ; $6fc3: $5d
    nop                                           ; $6fc4: $00
    and e                                         ; $6fc5: $a3
    ld l, $d1                                     ; $6fc6: $2e $d1
    sbc l                                         ; $6fc8: $9d
    ld h, e                                       ; $6fc9: $63
    ld a, $c1                                     ; $6fca: $3e $c1
    ld a, l                                       ; $6fcc: $7d
    nop                                           ; $6fcd: $00
    add e                                         ; $6fce: $83
    cp [hl]                                       ; $6fcf: $be
    ld b, c                                       ; $6fd0: $41
    ld e, [hl]                                    ; $6fd1: $5e
    and c                                         ; $6fd2: $a1
    ld d, b                                       ; $6fd3: $50
    rst $38                                       ; $6fd4: $ff
    add d                                         ; $6fd5: $82
    nop                                           ; $6fd6: $00
    db $fd                                        ; $6fd7: $fd
    xor b                                         ; $6fd8: $a8
    rst $38                                       ; $6fd9: $ff
    push bc                                       ; $6fda: $c5
    cp $60                                        ; $6fdb: $fe $60
    rst $38                                       ; $6fdd: $ff
    sub c                                         ; $6fde: $91

jr_098_6fdf:
    jr nz, jr_098_6fdf                            ; $6fdf: $20 $fe

    jr z, @+$1e                                   ; $6fe1: $28 $1c

    inc bc                                        ; $6fe3: $03
    cp $01                                        ; $6fe4: $fe $01
    ld a, [hl]                                    ; $6fe6: $7e
    add c                                         ; $6fe7: $81
    cp $10                                        ; $6fe8: $fe $10
    ld bc, $a15e                                  ; $6fea: $01 $5e $a1
    inc b                                         ; $6fed: $04
    ld [$41be], sp                                ; $6fee: $08 $be $41
    ld a, [hl]                                    ; $6ff1: $7e
    add c                                         ; $6ff2: $81
    nop                                           ; $6ff3: $00
    ld d, d                                       ; $6ff4: $52
    rst $38                                       ; $6ff5: $ff
    and l                                         ; $6ff6: $a5
    rst $38                                       ; $6ff7: $ff
    jp nz, $a9ff                                  ; $6ff8: $c2 $ff $a9

    rst $38                                       ; $6ffb: $ff
    ld d, b                                       ; $6ffc: $50
    ret nc                                        ; $6ffd: $d0

    ld e, $03                                     ; $6ffe: $1e $03
    push hl                                       ; $7000: $e5
    sbc $02                                       ; $7001: $de $02
    inc a                                         ; $7003: $3c
    jp $a15f                                      ; $7004: $c3 $5f $a1


Jump_098_7007:
    inc b                                         ; $7007: $04
    inc e                                         ; $7008: $1c
    db $e3                                        ; $7009: $e3
    cpl                                           ; $700a: $2f
    pop de                                        ; $700b: $d1
    sbc h                                         ; $700c: $9c
    inc b                                         ; $700d: $04
    nop                                           ; $700e: $00
    dec de                                        ; $700f: $1b
    push hl                                       ; $7010: $e5
    nop                                           ; $7011: $00
    and l                                         ; $7012: $a5
    ei                                            ; $7013: $fb
    add sp, -$01                                  ; $7014: $e8 $ff
    push af                                       ; $7016: $f5
    rst $38                                       ; $7017: $ff
    add sp, -$01                                  ; $7018: $e8 $ff
    ld h, b                                       ; $701a: $60
    db $f4                                        ; $701b: $f4
    inc h                                         ; $701c: $24
    ld bc, $1b7a                                  ; $701d: $01 $7a $1b
    ld c, c                                       ; $7020: $49
    rst $30                                       ; $7021: $f7
    ld de, $8bff                                  ; $7022: $11 $ff $8b
    ld [hl+], a                                   ; $7025: $22
    rst $38                                       ; $7026: $ff
    ld b, c                                       ; $7027: $41
    inc a                                         ; $7028: $3c
    inc bc                                        ; $7029: $03
    ld d, l                                       ; $702a: $55
    rst $38                                       ; $702b: $ff
    db $eb                                        ; $702c: $eb
    adc l                                         ; $702d: $8d
    inc bc                                        ; $702e: $03
    ccf                                           ; $702f: $3f
    nop                                           ; $7030: $00
    pop bc                                        ; $7031: $c1
    adc h                                         ; $7032: $8c
    di                                            ; $7033: $f3
    cp $ff                                        ; $7034: $fe $ff
    jr nz, @-$3d                                  ; $7036: $20 $c1

    ld [hl], a                                    ; $7038: $77
    ld [$3d81], sp                                ; $7039: $08 $81 $3d
    jp $9d01                                      ; $703c: $c3 $01 $9d


    inc bc                                        ; $703f: $03
    ld e, l                                       ; $7040: $5d
    and d                                         ; $7041: $a2
    ld bc, $fe00                                  ; $7042: $01 $00 $fe
    add [hl]                                      ; $7045: $86
    ld bc, $00c1                                  ; $7046: $01 $c1 $00
    ld [hl], a                                    ; $7049: $77
    add b                                         ; $704a: $80
    ld e, [hl]                                    ; $704b: $5e
    ld b, b                                       ; $704c: $40
    and c                                         ; $704d: $a1
    jp z, $ea0a                                   ; $704e: $ca $0a $ea

    dec d                                         ; $7051: $15
    ret nc                                        ; $7052: $d0

    cpl                                           ; $7053: $2f
    and h                                         ; $7054: $a4
    ld e, e                                       ; $7055: $5b
    ld d, b                                       ; $7056: $50
    db $10                                        ; $7057: $10
    ld [hl], $03                                  ; $7058: $36 $03
    adc d                                         ; $705a: $8a
    ld c, d                                       ; $705b: $4a
    nop                                           ; $705c: $00
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rrca                                          ; $705f: $0f
    ldh a, [rSB]                                  ; $7060: $f0 $01
    sub l                                         ; $7062: $95
    ld l, d                                       ; $7063: $6a
    ld a, [bc]                                    ; $7064: $0a
    push af                                       ; $7065: $f5
    add h                                         ; $7066: $84
    ei                                            ; $7067: $fb
    ld hl, $0398                                  ; $7068: $21 $98 $03
    ld b, c                                       ; $706b: $41
    ld d, [hl]                                    ; $706c: $56
    call $e803                                    ; $706d: $cd $03 $e8
    rla                                           ; $7070: $17
    rst $38                                       ; $7071: $ff
    nop                                           ; $7072: $00
    cp a                                          ; $7073: $bf
    ld a, [de]                                    ; $7074: $1a
    ld a, [bc]                                    ; $7075: $0a
    add b                                         ; $7076: $80
    ld b, $00                                     ; $7077: $06 $00
    ld d, a                                       ; $7079: $57
    nop                                           ; $707a: $00
    db $eb                                        ; $707b: $eb
    nop                                           ; $707c: $00
    ld e, l                                       ; $707d: $5d
    rst $38                                       ; $707e: $ff
    ld d, d                                       ; $707f: $52
    nop                                           ; $7080: $00
    xor a                                         ; $7081: $af
    jp hl                                         ; $7082: $e9


Call_098_7083:
    rla                                           ; $7083: $17
    or h                                          ; $7084: $b4
    dec bc                                        ; $7085: $0b
    reti                                          ; $7086: $d9


    rlca                                          ; $7087: $07
    db $ec                                        ; $7088: $ec
    nop                                           ; $7089: $00
    inc bc                                        ; $708a: $03
    push de                                       ; $708b: $d5
    inc bc                                        ; $708c: $03
    db $ed                                        ; $708d: $ed
    inc bc                                        ; $708e: $03
    dec h                                         ; $708f: $25
    rst $38                                       ; $7090: $ff
    ld e, a                                       ; $7091: $5f
    nop                                           ; $7092: $00
    and b                                         ; $7093: $a0
    ccf                                           ; $7094: $3f
    ret nz                                        ; $7095: $c0

    ld l, e                                       ; $7096: $6b
    add b                                         ; $7097: $80
    ld [hl], l                                    ; $7098: $75
    add b                                         ; $7099: $80
    ld a, [hl]                                    ; $709a: $7e
    nop                                           ; $709b: $00
    add b                                         ; $709c: $80
    ld l, e                                       ; $709d: $6b
    sub h                                         ; $709e: $94
    ld [hl], l                                    ; $709f: $75

jr_098_70a0:
    adc d                                         ; $70a0: $8a
    nop                                           ; $70a1: $00
    rst $38                                       ; $70a2: $ff
    xor a                                         ; $70a3: $af
    add b                                         ; $70a4: $80
    jr z, jr_098_70a7                             ; $70a5: $28 $00

jr_098_70a7:
    rst $38                                       ; $70a7: $ff
    nop                                           ; $70a8: $00
    ld [hl], a                                    ; $70a9: $77
    nop                                           ; $70aa: $00
    ei                                            ; $70ab: $fb
    nop                                           ; $70ac: $00
    db $fd                                        ; $70ad: $fd
    ld [$5700], sp                                ; $70ae: $08 $00 $57
    xor b                                         ; $70b1: $a8
    sub $06                                       ; $70b2: $d6 $06
    nop                                           ; $70b4: $00
    rst $10                                       ; $70b5: $d7
    jr z, jr_098_70a0                             ; $70b6: $28 $e8

    nop                                           ; $70b8: $00
    rla                                           ; $70b9: $17
    cp l                                          ; $70ba: $bd
    ld [bc], a                                    ; $70bb: $02
    ld d, l                                       ; $70bc: $55
    nop                                           ; $70bd: $00
    rst $28                                       ; $70be: $ef
    nop                                           ; $70bf: $00
    cp d                                          ; $70c0: $ba
    nop                                           ; $70c1: $00
    ld b, l                                       ; $70c2: $45
    db $f4                                        ; $70c3: $f4
    inc bc                                        ; $70c4: $03
    ld a, l                                       ; $70c5: $7d
    inc bc                                        ; $70c6: $03
    db $ec                                        ; $70c7: $ec
    inc bc                                        ; $70c8: $03
    cp c                                          ; $70c9: $b9
    nop                                           ; $70ca: $00
    ld b, a                                       ; $70cb: $47

jr_098_70cc:
    inc d                                         ; $70cc: $14
    db $eb                                        ; $70cd: $eb
    xor c                                         ; $70ce: $a9
    rla                                           ; $70cf: $17
    ld d, e                                       ; $70d0: $53
    xor a                                         ; $70d1: $af
    and a                                         ; $70d2: $a7
    nop                                           ; $70d3: $00
    ld e, a                                       ; $70d4: $5f
    cp [hl]                                       ; $70d5: $be
    pop bc                                        ; $70d6: $c1
    ld a, a                                       ; $70d7: $7f
    add b                                         ; $70d8: $80
    cp e                                          ; $70d9: $bb
    ret nz                                        ; $70da: $c0

    dec a                                         ; $70db: $3d
    nop                                           ; $70dc: $00
    ret nz                                        ; $70dd: $c0

    sbc a                                         ; $70de: $9f
    ldh [$2a], a                                  ; $70df: $e0 $2a
    push de                                       ; $70e1: $d5
    sub l                                         ; $70e2: $95
    ld [$00c0], a                                 ; $70e3: $ea $c0 $00
    rst $38                                       ; $70e6: $ff
    adc a                                         ; $70e7: $8f
    ld [hl], b                                    ; $70e8: $70
    jp c, $fd20                                   ; $70e9: $da $20 $fd

    nop                                           ; $70ec: $00
    cp d                                          ; $70ed: $ba
    add b                                         ; $70ee: $80
    ld b, h                                       ; $70ef: $44
    db $10                                        ; $70f0: $10
    cp d                                          ; $70f1: $ba
    ld b, l                                       ; $70f2: $45
    or h                                          ; $70f3: $b4
    rst $38                                       ; $70f4: $ff
    ld d, b                                       ; $70f5: $50
    rst $38                                       ; $70f6: $ff
    dec l                                         ; $70f7: $2d
    add b                                         ; $70f8: $80
    ld [hl], d                                    ; $70f9: $72
    nop                                           ; $70fa: $00
    db $eb                                        ; $70fb: $eb
    rla                                           ; $70fc: $17
    ld a, [$f107]                                 ; $70fd: $fa $07 $f1
    rrca                                          ; $7100: $0f
    ld l, d                                       ; $7101: $6a
    ld [bc], a                                    ; $7102: $02
    rla                                           ; $7103: $17
    or b                                          ; $7104: $b0
    rrca                                          ; $7105: $0f
    ld c, $ff                                     ; $7106: $0e $ff
    ld d, h                                       ; $7108: $54
    ld [hl], d                                    ; $7109: $72
    nop                                           ; $710a: $00
    cp l                                          ; $710b: $bd
    jr nz, jr_098_714e                            ; $710c: $20 $40

    ei                                            ; $710e: $fb
    ld c, [hl]                                    ; $710f: $4e
    nop                                           ; $7110: $00
    add $00                                       ; $7111: $c6 $00
    db $ed                                        ; $7113: $ed
    nop                                           ; $7114: $00
    ld [$ff00], a                                 ; $7115: $ea $00 $ff
    inc bc                                        ; $7118: $03
    db $fc                                        ; $7119: $fc
    rst $10                                       ; $711a: $d7
    jr z, jr_098_70cc                             ; $711b: $28 $af

    ld d, b                                       ; $711d: $50
    ld a, l                                       ; $711e: $7d
    ld [$ea80], sp                                ; $711f: $08 $80 $ea
    nop                                           ; $7122: $00
    db $dd                                        ; $7123: $dd
    and [hl]                                      ; $7124: $a6
    nop                                           ; $7125: $00
    ld [$a5ff], sp                                ; $7126: $08 $ff $a5
    nop                                           ; $7129: $00
    ld e, [hl]                                    ; $712a: $5e
    ret nc                                        ; $712b: $d0

    cpl                                           ; $712c: $2f
    push hl                                       ; $712d: $e5
    ld e, $71                                     ; $712e: $1e $71

jr_098_7130:
    ld c, $f5                                     ; $7130: $0e $f5
    nop                                           ; $7132: $00
    ld c, $74                                     ; $7133: $0e $74
    rrca                                          ; $7135: $0f
    or l                                          ; $7136: $b5
    ld c, $a5                                     ; $7137: $0e $a5
    ld e, d                                       ; $7139: $5a
    ld b, d                                       ; $713a: $42
    ld [$00bd], sp                                ; $713b: $08 $bd $00
    rst $38                                       ; $713e: $ff
    ld c, d                                       ; $713f: $4a
    jp $9400                                      ; $7140: $c3 $00 $94


    rst $38                                       ; $7143: $ff
    ld a, [hl+]                                   ; $7144: $2a
    add h                                         ; $7145: $84
    sbc l                                         ; $7146: $9d
    inc b                                         ; $7147: $04
    db $dd                                        ; $7148: $dd
    ld [hl+], a                                   ; $7149: $22
    ld l, d                                       ; $714a: $6a
    sub l                                         ; $714b: $95
    ldh a, [rP1]                                  ; $714c: $f0 $00

jr_098_714e:
    rst $28                                       ; $714e: $ef
    ld [bc], a                                    ; $714f: $02
    jr nz, @+$01                                  ; $7150: $20 $ff

    ld b, l                                       ; $7152: $45
    jr z, jr_098_7156                             ; $7153: $28 $01

    rst $38                                       ; $7155: $ff

jr_098_7156:
    rst $38                                       ; $7156: $ff
    dec b                                         ; $7157: $05
    ld a, [$0a40]                                 ; $7158: $fa $40 $0a
    cp a                                          ; $715b: $bf
    db $10                                        ; $715c: $10
    rst $38                                       ; $715d: $ff
    ld b, d                                       ; $715e: $42
    ld [hl], $04                                  ; $715f: $36 $04
    call nz, Call_000_1130                        ; $7161: $c4 $30 $11
    ld a, [hl+]                                   ; $7164: $2a
    jr nc, @-$29                                  ; $7165: $30 $d5

    rst $38                                       ; $7167: $ff
    or b                                          ; $7168: $b0
    nop                                           ; $7169: $00
    inc e                                         ; $716a: $1c
    dec bc                                        ; $716b: $0b
    cp $01                                        ; $716c: $fe $01
    rst $10                                       ; $716e: $d7
    nop                                           ; $716f: $00
    nop                                           ; $7170: $00
    xor a                                         ; $7171: $af

jr_098_7172:
    nop                                           ; $7172: $00
    or l                                          ; $7173: $b5
    ld a, d                                       ; $7174: $7a
    inc de                                        ; $7175: $13
    db $fc                                        ; $7176: $fc
    and [hl]                                      ; $7177: $a6
    ld a, b                                       ; $7178: $78
    nop                                           ; $7179: $00
    xor l                                         ; $717a: $ad
    ld [hl], b                                    ; $717b: $70
    daa                                           ; $717c: $27
    ld hl, sp-$72                                 ; $717d: $f8 $8e
    ld [hl], b                                    ; $717f: $70
    cpl                                           ; $7180: $2f
    ldh a, [rSB]                                  ; $7181: $f0 $01
    add a                                         ; $7183: $87
    ld a, b                                       ; $7184: $78
    ld e, $00                                     ; $7185: $1e $00
    cp l                                          ; $7187: $bd
    nop                                           ; $7188: $00
    ld a, e                                       ; $7189: $7b
    xor a                                         ; $718a: $af
    inc b                                         ; $718b: $04
    nop                                           ; $718c: $00
    ld a, [$d505]                                 ; $718d: $fa $05 $d5
    ld a, [hl+]                                   ; $7190: $2a
    xor b                                         ; $7191: $a8
    ld d, a                                       ; $7192: $57
    dec [hl]                                      ; $7193: $35
    rst $38                                       ; $7194: $ff
    nop                                           ; $7195: $00
    rst $00                                       ; $7196: $c7
    jr c, jr_098_7130                             ; $7197: $38 $97

    ld a, b                                       ; $7199: $78
    add a                                         ; $719a: $87
    ld a, b                                       ; $719b: $78
    ld d, d                                       ; $719c: $52
    cp h                                          ; $719d: $bc
    nop                                           ; $719e: $00
    and a                                         ; $719f: $a7
    ld a, b                                       ; $71a0: $78
    inc sp                                        ; $71a1: $33
    db $fc                                        ; $71a2: $fc
    ld h, l                                       ; $71a3: $65
    ld a, [$fdf2]                                 ; $71a4: $fa $f2 $fd
    inc d                                         ; $71a7: $14
    nop                                           ; $71a8: $00
    rst $38                                       ; $71a9: $ff
    ld l, d                                       ; $71aa: $6a
    ld [hl], e                                    ; $71ab: $73
    ld [bc], a                                    ; $71ac: $02
    push de                                       ; $71ad: $d5
    ld a, [hl-]                                   ; $71ae: $3a
    nop                                           ; $71af: $00
    rst $18                                       ; $71b0: $df
    nop                                           ; $71b1: $00
    sub b                                         ; $71b2: $90
    and h                                         ; $71b3: $a4
    ld [bc], a                                    ; $71b4: $02
    dec d                                         ; $71b5: $15
    dec l                                         ; $71b6: $2d
    ldh [rDIV], a                                 ; $71b7: $e0 $04
    db $fd                                        ; $71b9: $fd
    ld [bc], a                                    ; $71ba: $02
    ld a, a                                       ; $71bb: $7f
    nop                                           ; $71bc: $00
    nop                                           ; $71bd: $00
    push af                                       ; $71be: $f5
    ld a, [bc]                                    ; $71bf: $0a
    ld l, e                                       ; $71c0: $6b
    sub h                                         ; $71c1: $94
    rst $10                                       ; $71c2: $d7
    jr z, jr_098_7172                             ; $71c3: $28 $ad

    ld d, d                                       ; $71c5: $52
    nop                                           ; $71c6: $00
    ld a, l                                       ; $71c7: $7d
    add d                                         ; $71c8: $82
    cp e                                          ; $71c9: $bb
    ld b, h                                       ; $71ca: $44
    ld d, l                                       ; $71cb: $55
    xor d                                         ; $71cc: $aa
    ld a, [bc]                                    ; $71cd: $0a
    push af                                       ; $71ce: $f5
    inc b                                         ; $71cf: $04
    db $10                                        ; $71d0: $10
    rst $38                                       ; $71d1: $ff
    add h                                         ; $71d2: $84
    rst $38                                       ; $71d3: $ff
    ld c, d                                       ; $71d4: $4a
    add b                                         ; $71d5: $80
    ld b, c                                       ; $71d6: $41
    jr nz, @+$01                                  ; $71d7: $20 $ff

    ld l, b                                       ; $71d9: $68
    ld a, [bc]                                    ; $71da: $0a
    add b                                         ; $71db: $80
    ld de, $01cf                                  ; $71dc: $11 $cf $01
    xor b                                         ; $71df: $a8
    inc b                                         ; $71e0: $04
    ld c, b                                       ; $71e1: $48
    db $dd                                        ; $71e2: $dd
    ld [bc], a                                    ; $71e3: $02
    ei                                            ; $71e4: $fb
    nop                                           ; $71e5: $00
    inc b                                         ; $71e6: $04
    or $09                                        ; $71e7: $f6 $09
    ld a, a                                       ; $71e9: $7f
    add b                                         ; $71ea: $80
    cp l                                          ; $71eb: $bd
    ld b, b                                       ; $71ec: $40
    rla                                           ; $71ed: $17
    ld a, [bc]                                    ; $71ee: $0a
    add sp, -$55                                  ; $71ef: $e8 $ab
    db $f4                                        ; $71f1: $f4
    ld e, [hl]                                    ; $71f2: $5e
    ld l, [hl]                                    ; $71f3: $6e
    ld bc, $d8ba                                  ; $71f4: $01 $ba $d8
    ld [bc], a                                    ; $71f7: $02
    db $eb                                        ; $71f8: $eb
    jr nz, jr_098_71fb                            ; $71f9: $20 $00

jr_098_71fb:
    ld d, [hl]                                    ; $71fb: $56
    sub [hl]                                      ; $71fc: $96
    ld bc, $817e                                  ; $71fd: $01 $7e $81
    dec a                                         ; $7200: $3d
    rst $38                                       ; $7201: $ff
    ld b, l                                       ; $7202: $45
    nop                                           ; $7203: $00
    cp a                                          ; $7204: $bf
    ld a, l                                       ; $7205: $7d
    ld [bc], a                                    ; $7206: $02
    xor [hl]                                      ; $7207: $ae
    ld bc, $00db                                  ; $7208: $01 $db $00
    ld e, l                                       ; $720b: $5d
    nop                                           ; $720c: $00
    and b                                         ; $720d: $a0
    xor e                                         ; $720e: $ab
    ld d, h                                       ; $720f: $54
    ld d, l                                       ; $7210: $55
    xor d                                         ; $7211: $aa
    xor $11                                       ; $7212: $ee $11
    ld e, d                                       ; $7214: $5a
    nop                                           ; $7215: $00
    rst $38                                       ; $7216: $ff
    ld [de], a                                    ; $7217: $12
    db $fd                                        ; $7218: $fd
    adc c                                         ; $7219: $89
    ld a, [hl]                                    ; $721a: $7e
    ld d, e                                       ; $721b: $53
    cp h                                          ; $721c: $bc
    sbc e                                         ; $721d: $9b
    nop                                           ; $721e: $00
    ld a, h                                       ; $721f: $7c
    sub c                                         ; $7220: $91
    ld a, [hl]                                    ; $7221: $7e
    ld c, d                                       ; $7222: $4a
    cp l                                          ; $7223: $bd
    sub b                                         ; $7224: $90
    ld a, a                                       ; $7225: $7f
    add c                                         ; $7226: $81
    sub [hl]                                      ; $7227: $96
    ld l, h                                       ; $7228: $6c
    dec [hl]                                      ; $7229: $35
    ret nz                                        ; $722a: $c0

    cp a                                          ; $722b: $bf
    ld h, b                                       ; $722c: $60
    dec c                                         ; $722d: $0d
    rst $38                                       ; $722e: $ff
    ld e, b                                       ; $722f: $58
    dec b                                         ; $7230: $05
    ld h, b                                       ; $7231: $60
    dec l                                         ; $7232: $2d
    inc bc                                        ; $7233: $03
    add d                                         ; $7234: $82
    sbc h                                         ; $7235: $9c
    dec b                                         ; $7236: $05
    ld l, d                                       ; $7237: $6a
    rla                                           ; $7238: $17
    pop de                                        ; $7239: $d1
    cpl                                           ; $723a: $2f
    ld a, d                                       ; $723b: $7a
    ld e, h                                       ; $723c: $5c
    ld bc, $80ea                                  ; $723d: $01 $ea $80
    adc [hl]                                      ; $7240: $8e
    ld bc, $5fa2                                  ; $7241: $01 $a2 $5f
    ld d, a                                       ; $7244: $57
    rst $38                                       ; $7245: $ff
    ld [hl], a                                    ; $7246: $77
    add b                                         ; $7247: $80
    rst $28                                       ; $7248: $ef
    add b                                         ; $7249: $80
    and $03                                       ; $724a: $e6 $03
    dec [hl]                                      ; $724c: $35
    jp z, $a15e                                   ; $724d: $ca $5e $a1

    cpl                                           ; $7250: $2f
    ret nc                                        ; $7251: $d0

    ld b, l                                       ; $7252: $45
    nop                                           ; $7253: $00
    cp a                                          ; $7254: $bf
    jp nc, $eeff                                  ; $7255: $d2 $ff $ee

    db $10                                        ; $7258: $10
    ld d, a                                       ; $7259: $57
    xor b                                         ; $725a: $a8
    or l                                          ; $725b: $b5
    ld a, [bc]                                    ; $725c: $0a
    ld b, b                                       ; $725d: $40
    ld l, e                                       ; $725e: $6b
    add b                                         ; $725f: $80
    rst $30                                       ; $7260: $f7
    ld a, [c]                                     ; $7261: $f2
    nop                                           ; $7262: $00
    sub $78                                       ; $7263: $d6 $78
    dec b                                         ; $7265: $05
    ret nc                                        ; $7266: $d0

    nop                                           ; $7267: $00
    cpl                                           ; $7268: $2f
    and l                                         ; $7269: $a5
    ld e, [hl]                                    ; $726a: $5e
    ld d, [hl]                                    ; $726b: $56
    xor a                                         ; $726c: $af
    xor h                                         ; $726d: $ac
    ld e, a                                       ; $726e: $5f
    ld d, [hl]                                    ; $726f: $56
    ld a, [bc]                                    ; $7270: $0a
    cp a                                          ; $7271: $bf
    xor l                                         ; $7272: $ad
    ld a, a                                       ; $7273: $7f
    ld a, [$019e]                                 ; $7274: $fa $9e $01
    add d                                         ; $7277: $82
    ld d, [hl]                                    ; $7278: $56
    dec b                                         ; $7279: $05
    cp $23                                        ; $727a: $fe $23
    ld bc, $24fb                                  ; $727c: $01 $fb $24
    ld [bc], a                                    ; $727f: $02
    db $dd                                        ; $7280: $dd
    nop                                           ; $7281: $00
    ld a, [$0086]                                 ; $7282: $fa $86 $00
    adc d                                         ; $7285: $8a
    dec bc                                        ; $7286: $0b
    nop                                           ; $7287: $00
    xor d                                         ; $7288: $aa
    ld d, h                                       ; $7289: $54
    ld d, a                                       ; $728a: $57
    xor b                                         ; $728b: $a8
    db $fd                                        ; $728c: $fd
    ld [bc], a                                    ; $728d: $02
    halt                                          ; $728e: $76
    ld bc, $df00                                  ; $728f: $01 $00 $df
    nop                                           ; $7292: $00
    cp e                                          ; $7293: $bb
    nop                                           ; $7294: $00
    db $f4                                        ; $7295: $f4
    dec bc                                        ; $7296: $0b
    ld e, e                                       ; $7297: $5b
    dec b                                         ; $7298: $05
    nop                                           ; $7299: $00
    xor h                                         ; $729a: $ac
    inc bc                                        ; $729b: $03
    rst $30                                       ; $729c: $f7
    ld bc, $837c                                  ; $729d: $01 $7c $83
    rst $18                                       ; $72a0: $df
    ld hl, $b600                                  ; $72a1: $21 $00 $b6
    ld c, c                                       ; $72a4: $49
    cp $01                                        ; $72a5: $fe $01
    xor l                                         ; $72a7: $ad
    jp nc, $e09f                                  ; $72a8: $d2 $9f $e0

    nop                                           ; $72ab: $00
    cp d                                          ; $72ac: $ba
    ret nz                                        ; $72ad: $c0

    xor l                                         ; $72ae: $ad
    ret nz                                        ; $72af: $c0

    or a                                          ; $72b0: $b7
    ret nz                                        ; $72b1: $c0

    ld e, $e1                                     ; $72b2: $1e $e1
    nop                                           ; $72b4: $00
    or h                                          ; $72b5: $b4
    sra d                                         ; $72b6: $cb $2a
    push de                                       ; $72b8: $d5
    xor a                                         ; $72b9: $af
    ld d, b                                       ; $72ba: $50
    sub $29                                       ; $72bb: $d6 $29
    inc b                                         ; $72bd: $04
    db $fd                                        ; $72be: $fd
    ld [bc], a                                    ; $72bf: $02
    ld a, [hl]                                    ; $72c0: $7e
    ld bc, $34af                                  ; $72c1: $01 $af $34
    add hl, bc                                    ; $72c4: $09
    ld d, b                                       ; $72c5: $50
    ld b, c                                       ; $72c6: $41
    nop                                           ; $72c7: $00
    cp $ee                                        ; $72c8: $fe $ee
    nop                                           ; $72ca: $00
    cp l                                          ; $72cb: $bd
    ld b, b                                       ; $72cc: $40
    ld l, [hl]                                    ; $72cd: $6e
    sub b                                         ; $72ce: $90
    db $db                                        ; $72cf: $db
    nop                                           ; $72d0: $00
    inc h                                         ; $72d1: $24
    push af                                       ; $72d2: $f5
    ld a, [bc]                                    ; $72d3: $0a
    cp d                                          ; $72d4: $ba
    dec b                                         ; $72d5: $05
    db $fc                                        ; $72d6: $fc
    inc bc                                        ; $72d7: $03
    ld e, d                                       ; $72d8: $5a
    nop                                           ; $72d9: $00
    and l                                         ; $72da: $a5
    or h                                          ; $72db: $b4
    inc bc                                        ; $72dc: $03
    ld e, a                                       ; $72dd: $5f
    ld bc, $03bc                                  ; $72de: $01 $bc $03
    ld a, [$0500]                                 ; $72e1: $fa $00 $05
    or h                                          ; $72e4: $b4
    ld c, e                                       ; $72e5: $4b
    jp hl                                         ; $72e6: $e9


    rla                                           ; $72e7: $17
    ld d, l                                       ; $72e8: $55
    xor a                                         ; $72e9: $af
    xor e                                         ; $72ea: $ab
    nop                                           ; $72eb: $00
    ld e, a                                       ; $72ec: $5f
    cp a                                          ; $72ed: $bf
    ret nz                                        ; $72ee: $c0

    sbc e                                         ; $72ef: $9b
    ldh [$bd], a                                  ; $72f0: $e0 $bd
    ret nz                                        ; $72f2: $c0

    ld a, $00                                     ; $72f3: $3e $00
    ret nz                                        ; $72f5: $c0

    sbc l                                         ; $72f6: $9d
    ld [c], a                                     ; $72f7: $e2
    ld l, $d1                                     ; $72f8: $2e $d1
    sub l                                         ; $72fa: $95
    ld [$80d0], a                                 ; $72fb: $ea $d0 $80
    ld a, [$7505]                                 ; $72fe: $fa $05 $75
    rst $38                                       ; $7301: $ff
    dec h                                         ; $7302: $25
    ld a, [$f44b]                                 ; $7303: $fa $4b $f4
    ld [hl], a                                    ; $7306: $77
    nop                                           ; $7307: $00
    add sp, $4d                                   ; $7308: $e8 $4d
    ldh a, [$3b]                                  ; $730a: $f0 $3b
    db $e4                                        ; $730c: $e4
    ld b, a                                       ; $730d: $47
    ld hl, sp-$18                                 ; $730e: $f8 $e8
    nop                                           ; $7310: $00
    rst $38                                       ; $7311: $ff
    ld e, l                                       ; $7312: $5d
    rst $38                                       ; $7313: $ff
    ld a, [hl]                                    ; $7314: $7e
    add c                                         ; $7315: $81
    db $ed                                        ; $7316: $ed
    nop                                           ; $7317: $00
    ld e, d                                       ; $7318: $5a
    nop                                           ; $7319: $00
    ld bc, $0ab5                                  ; $731a: $01 $b5 $0a
    ld e, [hl]                                    ; $731d: $5e
    ld bc, $028d                                  ; $731e: $01 $8d $02
    cp [hl]                                       ; $7321: $be
    add b                                         ; $7322: $80
    inc c                                         ; $7323: $0c
    inc bc                                        ; $7324: $03
    cp d                                          ; $7325: $ba
    ld b, l                                       ; $7326: $45
    ld l, a                                       ; $7327: $6f
    add b                                         ; $7328: $80
    rst $18                                       ; $7329: $df
    nop                                           ; $732a: $00
    ld l, l                                       ; $732b: $6d
    ld b, b                                       ; $732c: $40
    add b                                         ; $732d: $80
    ret nc                                        ; $732e: $d0

    add hl, bc                                    ; $732f: $09
    ld [$52ff], a                                 ; $7330: $ea $ff $52
    db $fd                                        ; $7333: $fd
    cp l                                          ; $7334: $bd
    ld a, d                                       ; $7335: $7a
    nop                                           ; $7336: $00
    ld d, e                                       ; $7337: $53
    cp h                                          ; $7338: $bc
    sub a                                         ; $7339: $97
    ld a, b                                       ; $733a: $78
    sub $38                                       ; $733b: $d6 $38
    push bc                                       ; $733d: $c5
    jr c, jr_098_7350                             ; $733e: $38 $10

    ld d, d                                       ; $7340: $52
    cp h                                          ; $7341: $bc
    db $fd                                        ; $7342: $fd
    call nc, Call_098_4502                        ; $7343: $d4 $02 $45
    nop                                           ; $7346: $00
    xor e                                         ; $7347: $ab
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    ld e, a                                       ; $734a: $5f
    nop                                           ; $734b: $00
    cp l                                          ; $734c: $bd
    ld [bc], a                                    ; $734d: $02
    ld l, d                                       ; $734e: $6a
    sub l                                         ; $734f: $95

jr_098_7350:
    dec e                                         ; $7350: $1d
    rst $38                                       ; $7351: $ff
    nop                                           ; $7352: $00
    ld d, d                                       ; $7353: $52
    cp l                                          ; $7354: $bd
    add l                                         ; $7355: $85
    ld a, d                                       ; $7356: $7a
    ld b, e                                       ; $7357: $43
    cp h                                          ; $7358: $bc
    sub l                                         ; $7359: $95
    ld a, d                                       ; $735a: $7a
    inc b                                         ; $735b: $04
    sub e                                         ; $735c: $93
    ld a, h                                       ; $735d: $7c
    ld d, l                                       ; $735e: $55
    cp d                                          ; $735f: $ba
    jr c, jr_098_73a6                             ; $7360: $38 $44

    inc bc                                        ; $7362: $03
    xor d                                         ; $7363: $aa
    rst $38                                       ; $7364: $ff
    nop                                           ; $7365: $00
    cp a                                          ; $7366: $bf
    ld b, b                                       ; $7367: $40
    db $fd                                        ; $7368: $fd
    nop                                           ; $7369: $00
    or [hl]                                       ; $736a: $b6
    nop                                           ; $736b: $00
    db $db                                        ; $736c: $db
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    xor $00                                       ; $736f: $ee $00
    ld a, l                                       ; $7371: $7d
    ld [bc], a                                    ; $7372: $02
    ld a, [$e805]                                 ; $7373: $fa $05 $e8
    rst $38                                       ; $7376: $ff
    nop                                           ; $7377: $00
    call nc, $fa2b                                ; $7378: $d4 $2b $fa
    dec b                                         ; $737b: $05
    cp a                                          ; $737c: $bf
    nop                                           ; $737d: $00
    sub $01                                       ; $737e: $d6 $01
    nop                                           ; $7380: $00
    cp [hl]                                       ; $7381: $be
    ld bc, $aa55                                  ; $7382: $01 $55 $aa
    add d                                         ; $7385: $82
    ld a, l                                       ; $7386: $7d
    dec bc                                        ; $7387: $0b
    ldh a, [rP1]                                  ; $7388: $f0 $00
    ld d, [hl]                                    ; $738a: $56
    pop hl                                        ; $738b: $e1
    ld e, l                                       ; $738c: $5d
    ld [c], a                                     ; $738d: $e2
    ld a, [bc]                                    ; $738e: $0a
    db $f4                                        ; $738f: $f4
    ld e, l                                       ; $7390: $5d
    ldh [rP1], a                                  ; $7391: $e0 $00
    ld l, e                                       ; $7393: $6b
    ldh a, [$d5]                                  ; $7394: $f0 $d5
    ld a, [$fdba]                                 ; $7396: $fa $ba $fd
    db $db                                        ; $7399: $db
    inc b                                         ; $739a: $04
    ld [$00ae], sp                                ; $739b: $08 $ae $00
    db $db                                        ; $739e: $db
    inc b                                         ; $739f: $04
    ld c, h                                       ; $73a0: $4c
    nop                                           ; $73a1: $00
    dec b                                         ; $73a2: $05
    push af                                       ; $73a3: $f5
    ld a, [bc]                                    ; $73a4: $0a
    nop                                           ; $73a5: $00

jr_098_73a6:
    ld l, b                                       ; $73a6: $68
    sub a                                         ; $73a7: $97
    xor d                                         ; $73a8: $aa
    ld a, a                                       ; $73a9: $7f
    ei                                            ; $73aa: $fb
    nop                                           ; $73ab: $00
    rst $10                                       ; $73ac: $d7
    nop                                           ; $73ad: $00
    ld b, b                                       ; $73ae: $40
    cp [hl]                                       ; $73af: $be
    ld a, [bc]                                    ; $73b0: $0a
    ld bc, $05ea                                  ; $73b1: $01 $ea $05
    push de                                       ; $73b4: $d5
    ld a, [bc]                                    ; $73b5: $0a
    ld c, e                                       ; $73b6: $4b
    cp a                                          ; $73b7: $bf
    nop                                           ; $73b8: $00
    push de                                       ; $73b9: $d5
    rst $38                                       ; $73ba: $ff
    add l                                         ; $73bb: $85
    ld a, d                                       ; $73bc: $7a
    ld d, a                                       ; $73bd: $57
    cp b                                          ; $73be: $b8
    sub [hl]                                      ; $73bf: $96
    ld a, c                                       ; $73c0: $79
    nop                                           ; $73c1: $00
    ld d, e                                       ; $73c2: $53

jr_098_73c3:
    cp h                                          ; $73c3: $bc
    or l                                          ; $73c4: $b5
    ld a, d                                       ; $73c5: $7a
    ld a, [hl+]                                   ; $73c6: $2a
    db $fd                                        ; $73c7: $fd
    push de                                       ; $73c8: $d5
    cp $10                                        ; $73c9: $fe $10
    ld [bc], a                                    ; $73cb: $02
    rst $38                                       ; $73cc: $ff
    ld d, a                                       ; $73cd: $57
    ld a, [$bb01]                                 ; $73ce: $fa $01 $bb
    ld b, h                                       ; $73d1: $44
    or $08                                        ; $73d2: $f6 $08
    nop                                           ; $73d4: $00
    rst $18                                       ; $73d5: $df
    jr nz, jr_098_73c3                            ; $73d6: $20 $eb

    inc d                                         ; $73d8: $14
    or l                                          ; $73d9: $b5
    ld c, d                                       ; $73da: $4a
    ld a, [$4005]                                 ; $73db: $fa $05 $40
    ld [hl], l                                    ; $73de: $75
    add d                                         ; $73df: $82
    ld [bc], a                                    ; $73e0: $02
    rst $30                                       ; $73e1: $f7
    ld [$02fd], sp                                ; $73e2: $08 $fd $02
    xor e                                         ; $73e5: $ab
    nop                                           ; $73e6: $00
    ld b, b                                       ; $73e7: $40
    ld d, c                                       ; $73e8: $51
    ld l, [hl]                                    ; $73e9: $6e
    inc bc                                        ; $73ea: $03
    or [hl]                                       ; $73eb: $b6
    ld c, b                                       ; $73ec: $48
    ld a, [hl-]                                   ; $73ed: $3a
    db $fd                                        ; $73ee: $fd
    push af                                       ; $73ef: $f5
    ld a, d                                       ; $73f0: $7a
    nop                                           ; $73f1: $00
    dec hl                                        ; $73f2: $2b
    db $fc                                        ; $73f3: $fc
    sub [hl]                                      ; $73f4: $96
    ld a, b                                       ; $73f5: $78
    db $db                                        ; $73f6: $db
    inc a                                         ; $73f7: $3c
    sub l                                         ; $73f8: $95
    ld a, b                                       ; $73f9: $78
    nop                                           ; $73fa: $00
    rst $18                                       ; $73fb: $df
    jr c, @-$2c                                   ; $73fc: $38 $d2

    dec a                                         ; $73fe: $3d
    add sp, $17                                   ; $73ff: $e8 $17
    cp a                                          ; $7401: $bf
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    ld a, d                                       ; $7404: $7a
    nop                                           ; $7405: $00
    xor l                                         ; $7406: $ad
    nop                                           ; $7407: $00
    ld a, e                                       ; $7408: $7b
    inc b                                         ; $7409: $04
    rst $18                                       ; $740a: $df
    jr nz, jr_098_740d                            ; $740b: $20 $00

jr_098_740d:
    ld l, e                                       ; $740d: $6b
    inc d                                         ; $740e: $14
    push af                                       ; $740f: $f5
    ld a, [bc]                                    ; $7410: $0a
    pop de                                        ; $7411: $d1
    ld l, $ab                                     ; $7412: $2e $ab
    ld d, h                                       ; $7414: $54
    inc b                                         ; $7415: $04
    rst $30                                       ; $7416: $f7
    ld [$00ff], sp                                ; $7417: $08 $ff $00
    ld l, d                                       ; $741a: $6a
    ld l, b                                       ; $741b: $68
    nop                                           ; $741c: $00
    xor l                                         ; $741d: $ad
    ld b, d                                       ; $741e: $42
    ld c, d                                       ; $741f: $4a
    cp d                                          ; $7420: $ba
    adc [hl]                                      ; $7421: $8e
    inc bc                                        ; $7422: $03
    or $01                                        ; $7423: $f6 $01

Jump_098_7425:
    ld e, $02                                     ; $7425: $1e $02
    ld bc, $00ce                                  ; $7427: $01 $ce $00
    dec d                                         ; $742a: $15
    inc b                                         ; $742b: $04

jr_098_742c:
    ld d, h                                       ; $742c: $54
    xor e                                         ; $742d: $ab
    add c                                         ; $742e: $81
    ld a, a                                       ; $742f: $7f
    ld d, l                                       ; $7430: $55
    or b                                          ; $7431: $b0
    nop                                           ; $7432: $00
    cp $01                                        ; $7433: $fe $01
    nop                                           ; $7435: $00
    ld d, l                                       ; $7436: $55
    ld [bc], a                                    ; $7437: $02
    and d                                         ; $7438: $a2
    ld bc, $00f7                                  ; $7439: $01 $f7 $00
    cp [hl]                                       ; $743c: $be
    ld b, c                                       ; $743d: $41
    ld de, $956a                                  ; $743e: $11 $6a $95
    ld d, a                                       ; $7441: $57
    inc l                                         ; $7442: $2c
    rlca                                          ; $7443: $07
    ld c, d                                       ; $7444: $4a
    push af                                       ; $7445: $f5
    rla                                           ; $7446: $17
    ld l, $01                                     ; $7447: $2e $01
    inc bc                                        ; $7449: $03
    jr jr_098_742c                                ; $744a: $18 $e0

    ld d, l                                       ; $744c: $55
    ldh [rWY], a                                  ; $744d: $e0 $4a
    ldh a, [$ba]                                  ; $744f: $f0 $ba
    inc l                                         ; $7451: $2c
    ld h, b                                       ; $7452: $60
    dec l                                         ; $7453: $2d
    ldh [$b6], a                                  ; $7454: $e0 $b6
    ld h, $60                                     ; $7456: $26 $60
    dec [hl]                                      ; $7458: $35
    sbc c                                         ; $7459: $99
    rrca                                          ; $745a: $0f
    ldh a, [rIF]                                  ; $745b: $f0 $0f
    ld [$ef10], a                                 ; $745d: $ea $10 $ef
    ld bc, $e310                                  ; $7460: $01 $10 $e3
    inc e                                         ; $7463: $1c
    add sp, $1f                                   ; $7464: $e8 $1f
    rst $30                                       ; $7466: $f7
    rrca                                          ; $7467: $0f
    xor c                                         ; $7468: $a9
    rrca                                          ; $7469: $0f
    nop                                           ; $746a: $00
    rrca                                          ; $746b: $0f
    ldh a, [rNR22]                                ; $746c: $f0 $17
    ld [$044b], sp                                ; $746e: $08 $4b $04
    db $e3                                        ; $7471: $e3
    inc e                                         ; $7472: $1c
    db $10                                        ; $7473: $10
    rrca                                          ; $7474: $0f
    rst $38                                       ; $7475: $ff
    ld hl, sp+$40                                 ; $7476: $f8 $40
    jr nz, @+$01                                  ; $7478: $20 $ff

    nop                                           ; $747a: $00
    ldh [$1f], a                                  ; $747b: $e0 $1f
    ld [bc], a                                    ; $747d: $02
    ret nc                                        ; $747e: $d0

    jr nz, jr_098_749a                            ; $747f: $20 $19

jr_098_7481:
    ldh [$6f], a                                  ; $7481: $e0 $6f
    jr nc, jr_098_7481                            ; $7483: $30 $fc

    ld l, $1f                                     ; $7485: $2e $1f
    add hl, bc                                    ; $7487: $09
    ldh [$2f], a                                  ; $7488: $e0 $2f
    db $10                                        ; $748a: $10
    ld d, a                                       ; $748b: $57
    ld b, h                                       ; $748c: $44
    ld b, $fc                                     ; $748d: $06 $fc
    inc bc                                        ; $748f: $03
    db $db                                        ; $7490: $db
    rrca                                          ; $7491: $0f
    nop                                           ; $7492: $00
    ret nz                                        ; $7493: $c0

    ccf                                           ; $7494: $3f
    and b                                         ; $7495: $a0
    ld b, b                                       ; $7496: $40
    cp d                                          ; $7497: $ba
    ld b, b                                       ; $7498: $40
    rst $18                                       ; $7499: $df

jr_098_749a:
    ld h, b                                       ; $749a: $60
    inc b                                         ; $749b: $04
    ret nz                                        ; $749c: $c0

    ld a, a                                       ; $749d: $7f
    ld b, b                                       ; $749e: $40
    ldh [$f5], a                                  ; $749f: $e0 $f5
    ld [$4d00], sp                                ; $74a1: $08 $00 $4d
    ld a, [c]                                     ; $74a4: $f2
    nop                                           ; $74a5: $00
    and d                                         ; $74a6: $a2
    ld a, l                                       ; $74a7: $7d
    ld a, h                                       ; $74a8: $7c
    ccf                                           ; $74a9: $3f
    db $db                                        ; $74aa: $db
    daa                                           ; $74ab: $27
    ret nc                                        ; $74ac: $d0

    jr nz, jr_098_74af                            ; $74ad: $20 $00

jr_098_74af:
    ld e, b                                       ; $74af: $58
    ccf                                           ; $74b0: $3f
    ld a, a                                       ; $74b1: $7f
    ccf                                           ; $74b2: $3f
    ld [c], a                                     ; $74b3: $e2
    dec a                                         ; $74b4: $3d
    rst $28                                       ; $74b5: $ef
    jr nc, @+$06                                  ; $74b6: $30 $04

    sbc a                                         ; $74b8: $9f
    ld h, b                                       ; $74b9: $60
    ccf                                           ; $74ba: $3f
    ldh [$df], a                                  ; $74bb: $e0 $df
    inc [hl]                                      ; $74bd: $34
    nop                                           ; $74be: $00
    rst $20                                       ; $74bf: $e7
    jr jr_098_7525                                ; $74c0: $18 $63

    rst $08                                       ; $74c2: $cf
    ld d, h                                       ; $74c3: $54
    jr nc, jr_098_750e                            ; $74c4: $30 $48

    rrca                                          ; $74c6: $0f
    rst $08                                       ; $74c7: $cf
    ccf                                           ; $74c8: $3f
    ld sp, hl                                     ; $74c9: $f9
    db $10                                        ; $74ca: $10
    ld b, $b5                                     ; $74cb: $06 $b5
    ld [bc], a                                    ; $74cd: $02
    nop                                           ; $74ce: $00
    ld bc, $1fe7                                  ; $74cf: $01 $e7 $1f
    adc b                                         ; $74d2: $88
    ld [hl], b                                    ; $74d3: $70
    ld [hl], l                                    ; $74d4: $75
    xor b                                         ; $74d5: $a8
    cp d                                          ; $74d6: $ba
    adc b                                         ; $74d7: $88
    xor [hl]                                      ; $74d8: $ae
    ld b, $2f                                     ; $74d9: $06 $2f
    ret nc                                        ; $74db: $d0

    dec d                                         ; $74dc: $15
    ld a, [hl+]                                   ; $74dd: $2a
    inc b                                         ; $74de: $04
    ccf                                           ; $74df: $3f
    rst $38                                       ; $74e0: $ff
    inc b                                         ; $74e1: $04
    ld [$4103], sp                                ; $74e2: $08 $03 $41
    ld [bc], a                                    ; $74e5: $02
    adc a                                         ; $74e6: $8f
    sbc d                                         ; $74e7: $9a
    nop                                           ; $74e8: $00
    rst $28                                       ; $74e9: $ef
    db $10                                        ; $74ea: $10
    rst $10                                       ; $74eb: $d7
    inc b                                         ; $74ec: $04
    jr c, @+$30                                   ; $74ed: $38 $2e

    pop af                                        ; $74ef: $f1
    sbc e                                         ; $74f0: $9b
    db $e4                                        ; $74f1: $e4
    jr nz, jr_098_7502                            ; $74f2: $20 $0e

    add hl, bc                                    ; $74f4: $09
    rst $30                                       ; $74f5: $f7
    nop                                           ; $74f6: $00
    ld [de], a                                    ; $74f7: $12
    rst $28                                       ; $74f8: $ef
    and b                                         ; $74f9: $a0
    ld e, a                                       ; $74fa: $5f
    ld b, [hl]                                    ; $74fb: $46
    cp b                                          ; $74fc: $b8
    rst $30                                       ; $74fd: $f7
    ld [$d202], sp                                ; $74fe: $08 $02 $d2
    dec l                                         ; $7501: $2d

jr_098_7502:
    ldh [$1f], a                                  ; $7502: $e0 $1f
    ei                                            ; $7504: $fb
    rlca                                          ; $7505: $07
    add h                                         ; $7506: $84
    ld b, $00                                     ; $7507: $06 $00
    db $10                                        ; $7509: $10
    add b                                         ; $750a: $80
    ld a, a                                       ; $750b: $7f
    ld h, b                                       ; $750c: $60
    and b                                         ; $750d: $a0

jr_098_750e:
    inc b                                         ; $750e: $04
    ld a, a                                       ; $750f: $7f
    add b                                         ; $7510: $80
    ccf                                           ; $7511: $3f
    ret nz                                        ; $7512: $c0

    jr @+$05                                      ; $7513: $18 $03

    db $fc                                        ; $7515: $fc
    ld b, b                                       ; $7516: $40
    add $0f                                       ; $7517: $c6 $0f
    and b                                         ; $7519: $a0
    ld b, a                                       ; $751a: $47
    ld c, e                                       ; $751b: $4b
    cp $07                                        ; $751c: $fe $07
    add b                                         ; $751e: $80
    add [hl]                                      ; $751f: $86
    ld bc, $0207                                  ; $7520: $01 $07 $02
    xor d                                         ; $7523: $aa
    inc bc                                        ; $7524: $03

Jump_098_7525:
jr_098_7525:
    cp $03                                        ; $7525: $fe $03
    ld a, [hl+]                                   ; $7527: $2a

jr_098_7528:
    ld [bc], a                                    ; $7528: $02
    rst $10                                       ; $7529: $d7
    push af                                       ; $752a: $f5
    rst $38                                       ; $752b: $ff
    add c                                         ; $752c: $81
    nop                                           ; $752d: $00
    dec h                                         ; $752e: $25
    cp [hl]                                       ; $752f: $be
    rla                                           ; $7530: $17
    cp a                                          ; $7531: $bf
    dec d                                         ; $7532: $15
    ld b, b                                       ; $7533: $40
    ld d, [hl]                                    ; $7534: $56
    xor c                                         ; $7535: $a9
    ld [$410f], a                                 ; $7536: $ea $0f $41
    jp c, Jump_000_3f04                           ; $7539: $da $04 $3f

    sbc [hl]                                      ; $753c: $9e
    inc b                                         ; $753d: $04
    add b                                         ; $753e: $80
    sbc d                                         ; $753f: $9a
    dec b                                         ; $7540: $05
    rst $38                                       ; $7541: $ff
    and c                                         ; $7542: $a1
    ret nz                                        ; $7543: $c0

    ld b, b                                       ; $7544: $40
    add b                                         ; $7545: $80
    jr c, jr_098_7528                             ; $7546: $38 $e0

    nop                                           ; $7548: $00
    cp $20                                        ; $7549: $fe $20
    ccf                                           ; $754b: $3f
    ldh [$5f], a                                  ; $754c: $e0 $5f
    jr nz, jr_098_758e                            ; $754e: $20 $3e

    rra                                           ; $7550: $1f
    ld de, $10fd                                  ; $7551: $11 $fd $10
    ld hl, sp+$16                                 ; $7554: $f8 $16
    ld bc, $0c13                                  ; $7556: $01 $13 $0c
    xor a                                         ; $7559: $af
    jr z, @+$09                                   ; $755a: $28 $07

    nop                                           ; $755c: $00
    rrca                                          ; $755d: $0f
    ld hl, sp-$05                                 ; $755e: $f8 $fb
    inc c                                         ; $7560: $0c
    ld [$580f], sp                                ; $7561: $08 $0f $58
    rrca                                          ; $7564: $0f
    ld [de], a                                    ; $7565: $12
    rst $38                                       ; $7566: $ff
    rlca                                          ; $7567: $07
    xor d                                         ; $7568: $aa
    db $fc                                        ; $7569: $fc
    scf                                           ; $756a: $37
    xor e                                         ; $756b: $ab
    ld d, h                                       ; $756c: $54
    db $fc                                        ; $756d: $fc
    ld c, $17                                     ; $756e: $0e $17
    nop                                           ; $7570: $00
    ld hl, sp-$5b                                 ; $7571: $f8 $a5
    ld a, [$fd12]                                 ; $7573: $fa $12 $fd
    ldh a, [$1f]                                  ; $7576: $f0 $1f
    rst $28                                       ; $7578: $ef
    jr jr_098_759a                                ; $7579: $18 $1f

    cp $01                                        ; $757b: $fe $01
    jr nz, jr_098_7596                            ; $757d: $20 $17

    ld l, b                                       ; $757f: $68
    nop                                           ; $7580: $00
    xor b                                         ; $7581: $a8
    ld d, a                                       ; $7582: $57
    rlca                                          ; $7583: $07
    nop                                           ; $7584: $00
    rst $38                                       ; $7585: $ff
    sub $f8                                       ; $7586: $d6 $f8
    jr nz, @-$3e                                  ; $7588: $20 $c0

    sbc d                                         ; $758a: $9a
    ld h, b                                       ; $758b: $60
    xor a                                         ; $758c: $af
    nop                                           ; $758d: $00

jr_098_758e:
    ld d, b                                       ; $758e: $50
    add a                                         ; $758f: $87
    rst $38                                       ; $7590: $ff
    ld d, e                                       ; $7591: $53
    rst $38                                       ; $7592: $ff
    daa                                           ; $7593: $27
    rst $38                                       ; $7594: $ff
    db $db                                        ; $7595: $db

jr_098_7596:
    nop                                           ; $7596: $00
    rst $38                                       ; $7597: $ff
    ld h, a                                       ; $7598: $67
    rra                                           ; $7599: $1f

jr_098_759a:
    scf                                           ; $759a: $37
    rrca                                          ; $759b: $0f
    sub a                                         ; $759c: $97
    rrca                                          ; $759d: $0f
    di                                            ; $759e: $f3
    add b                                         ; $759f: $80
    ld h, b                                       ; $75a0: $60
    ld bc, $7f80                                  ; $75a1: $01 $80 $7f
    ld [hl], b                                    ; $75a4: $70
    add b                                         ; $75a5: $80
    ld b, b                                       ; $75a6: $40
    add b                                         ; $75a7: $80
    ld a, [$8000]                                 ; $75a8: $fa $00 $80
    cp a                                          ; $75ab: $bf
    ret nz                                        ; $75ac: $c0

    sub l                                         ; $75ad: $95
    ld [$ff00], a                                 ; $75ae: $ea $00 $ff
    rst $10                                       ; $75b1: $d7
    nop                                           ; $75b2: $00
    ld l, b                                       ; $75b3: $68
    ld c, d                                       ; $75b4: $4a
    push af                                       ; $75b5: $f5
    jp Jump_098_7c7f                              ; $75b6: $c3 $7f $7c


    ccf                                           ; $75b9: $3f
    db $e4                                        ; $75ba: $e4
    nop                                           ; $75bb: $00
    dec sp                                        ; $75bc: $3b
    ldh [$3f], a                                  ; $75bd: $e0 $3f
    xor d                                         ; $75bf: $aa
    ld [hl], l                                    ; $75c0: $75
    dec h                                         ; $75c1: $25
    ld a, [$00ef]                                 ; $75c2: $fa $ef $00
    rra                                           ; $75c5: $1f
    dec bc                                        ; $75c6: $0b
    rst $38                                       ; $75c7: $ff
    rst $30                                       ; $75c8: $f7
    rst $38                                       ; $75c9: $ff
    cpl                                           ; $75ca: $2f
    rst $38                                       ; $75cb: $ff
    sub a                                         ; $75cc: $97
    ld [$4fff], sp                                ; $75cd: $08 $ff $4f
    rst $38                                       ; $75d0: $ff
    rla                                           ; $75d1: $17
    ld [$ec00], sp                                ; $75d2: $08 $00 $ec
    inc de                                        ; $75d5: $13
    jp c, Jump_000_2400                           ; $75d6: $da $00 $24

    and l                                         ; $75d9: $a5
    ld e, b                                       ; $75da: $58
    dec de                                        ; $75db: $1b
    db $fc                                        ; $75dc: $fc
    dec l                                         ; $75dd: $2d
    ld a, [$210a]                                 ; $75de: $fa $0a $21
    db $fd                                        ; $75e1: $fd
    ld hl, sp+$6c                                 ; $75e2: $f8 $6c
    rlca                                          ; $75e4: $07
    ld d, h                                       ; $75e5: $54
    rst $38                                       ; $75e6: $ff
    ld d, l                                       ; $75e7: $55
    xor d                                         ; $75e8: $aa
    ld c, d                                       ; $75e9: $4a
    ld [bc], a                                    ; $75ea: $02
    inc bc                                        ; $75eb: $03
    ld a, [bc]                                    ; $75ec: $0a
    db $db                                        ; $75ed: $db
    inc b                                         ; $75ee: $04
    db $fd                                        ; $75ef: $fd
    ld [bc], a                                    ; $75f0: $02
    rst $10                                       ; $75f1: $d7
    sub $07                                       ; $75f2: $d6 $07
    ld bc, $2058                                  ; $75f4: $01 $58 $20
    ld bc, $1101                                  ; $75f7: $01 $01 $11
    jr z, @+$05                                   ; $75fa: $28 $03

Jump_098_75fc:
    inc bc                                        ; $75fc: $03
    dec e                                         ; $75fd: $1d
    ld e, $ff                                     ; $75fe: $1e $ff
    db $10                                        ; $7600: $10
    ldh [$71], a                                  ; $7601: $e0 $71
    adc [hl]                                      ; $7603: $8e
    jp c, $ef0d                                   ; $7604: $da $0d $ef

    nop                                           ; $7607: $00
    cp e                                          ; $7608: $bb
    ld b, h                                       ; $7609: $44
    nop                                           ; $760a: $00
    ld e, a                                       ; $760b: $5f
    and b                                         ; $760c: $a0
    xor a                                         ; $760d: $af
    db $10                                        ; $760e: $10
    ld e, a                                       ; $760f: $5f
    and b                                         ; $7610: $a0
    rst $38                                       ; $7611: $ff
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    inc bc                                        ; $7614: $03
    ld [bc], a                                    ; $7615: $02
    inc bc                                        ; $7616: $03
    inc bc                                        ; $7617: $03
    rra                                           ; $7618: $1f
    ld e, $ff                                     ; $7619: $1e $ff
    ldh a, [rP1]                                  ; $761b: $f0 $00
    rst $28                                       ; $761d: $ef
    ldh a, [rIE]                                  ; $761e: $f0 $ff
    ldh [$7f], a                                  ; $7620: $e0 $7f
    ld b, b                                       ; $7622: $40
    ld e, a                                       ; $7623: $5f
    ld h, b                                       ; $7624: $60
    nop                                           ; $7625: $00
    cp a                                          ; $7626: $bf
    sbc $fb                                       ; $7627: $de $fb
    db $fc                                        ; $7629: $fc
    ld h, d                                       ; $762a: $62
    db $fd                                        ; $762b: $fd
    db $fd                                        ; $762c: $fd
    ld e, $08                                     ; $762d: $1e $08
    db $fc                                        ; $762f: $fc
    inc bc                                        ; $7630: $03
    adc $39                                       ; $7631: $ce $39
    sbc [hl]                                      ; $7633: $9e
    nop                                           ; $7634: $00
    rlca                                          ; $7635: $07
    ld d, e                                       ; $7636: $53
    db $fc                                        ; $7637: $fc
    nop                                           ; $7638: $00
    dec l                                         ; $7639: $2d
    cp $5b                                        ; $763a: $fe $5b
    and h                                         ; $763c: $a4
    rst $28                                       ; $763d: $ef
    ld [de], a                                    ; $763e: $12
    ei                                            ; $763f: $fb
    inc b                                         ; $7640: $04
    dec b                                         ; $7641: $05
    push af                                       ; $7642: $f5
    ld a, [bc]                                    ; $7643: $0a
    ld l, [hl]                                    ; $7644: $6e
    ld de, $58bf                                  ; $7645: $11 $bf $58
    jr nc, jr_098_764d                            ; $7648: $30 $03

    ld bc, $4000                                  ; $764a: $01 $00 $40

jr_098_764d:
    ld bc, $0001                                  ; $764d: $01 $01 $00
    scf                                           ; $7650: $37
    jr c, jr_098_768c                             ; $7651: $38 $39

    ld a, $3e                                     ; $7653: $3e $3e
    ccf                                           ; $7655: $3f
    nop                                           ; $7656: $00
    ld [c], a                                     ; $7657: $e2
    rst $38                                       ; $7658: $ff
    or a                                          ; $7659: $b7
    rst $08                                       ; $765a: $cf
    cp d                                          ; $765b: $ba
    rst $08                                       ; $765c: $cf
    ld a, a                                       ; $765d: $7f
    adc b                                         ; $765e: $88
    nop                                           ; $765f: $00
    db $fd                                        ; $7660: $fd
    adc [hl]                                      ; $7661: $8e
    rst $38                                       ; $7662: $ff
    ld b, a                                       ; $7663: $47
    push hl                                       ; $7664: $e5
    rst $38                                       ; $7665: $ff
    ei                                            ; $7666: $fb
    cp $00                                        ; $7667: $fe $00
    xor $ff                                       ; $7669: $ee $ff
    pop af                                        ; $766b: $f1
    rst $28                                       ; $766c: $ef
    inc a                                         ; $766d: $3c
    jp Jump_000_0ff7                              ; $766e: $c3 $f7 $0f


    nop                                           ; $7671: $00

jr_098_7672:
    rst $08                                       ; $7672: $cf
    ccf                                           ; $7673: $3f
    rrca                                          ; $7674: $0f
    ldh a, [$67]                                  ; $7675: $f0 $67
    jr c, @+$64                                   ; $7677: $38 $62

    dec a                                         ; $7679: $3d
    nop                                           ; $767a: $00
    pop bc                                        ; $767b: $c1
    ld a, $ef                                     ; $767c: $3e $ef
    rra                                           ; $767e: $1f
    ld sp, hl                                     ; $767f: $f9

jr_098_7680:
    nop                                           ; $7680: $00
    ld l, $d1                                     ; $7681: $2e $d1
    nop                                           ; $7683: $00
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    xor l                                         ; $7686: $ad
    ld [bc], a                                    ; $7687: $02
    db $fc                                        ; $7688: $fc
    inc bc                                        ; $7689: $03
    xor l                                         ; $768a: $ad
    ld d, d                                       ; $768b: $52

jr_098_768c:
    nop                                           ; $768c: $00
    ld d, c                                       ; $768d: $51
    xor [hl]                                      ; $768e: $ae
    db $fc                                        ; $768f: $fc
    rst $38                                       ; $7690: $ff
    ld d, c                                       ; $7691: $51
    ld c, $80                                     ; $7692: $0e $80
    ld a, a                                       ; $7694: $7f
    add [hl]                                      ; $7695: $86
    and b                                         ; $7696: $a0
    dec c                                         ; $7697: $0d
    inc e                                         ; $7698: $1c
    rst $38                                       ; $7699: $ff
    ld bc, $f900                                  ; $769a: $01 $00 $f9
    nop                                           ; $769d: $00
    inc a                                         ; $769e: $3c
    ld b, $0a                                     ; $769f: $06 $0a
    ret nz                                        ; $76a1: $c0

    sub c                                         ; $76a2: $91
    ld b, $a0                                     ; $76a3: $06 $a0
    dec c                                         ; $76a5: $0d
    sub b                                         ; $76a6: $90
    ld a, a                                       ; $76a7: $7f
    jp nz, $e07f                                  ; $76a8: $c2 $7f $e0

    ld a, a                                       ; $76ab: $7f
    jr jr_098_7672                                ; $76ac: $18 $c4

    ld a, a                                       ; $76ae: $7f
    ld l, e                                       ; $76af: $6b
    db $e4                                        ; $76b0: $e4
    ld b, $d1                                     ; $76b1: $06 $d1
    jr z, @-$17                                   ; $76b3: $28 $e7

    rst $20                                       ; $76b5: $e7
    cp a                                          ; $76b6: $bf
    inc b                                         ; $76b7: $04
    ld a, b                                       ; $76b8: $78
    rst $18                                       ; $76b9: $df
    scf                                           ; $76ba: $37
    or $0f                                        ; $76bb: $f6 $0f
    pop hl                                        ; $76bd: $e1
    jr z, jr_098_7680                             ; $76be: $28 $c0

    ret nz                                        ; $76c0: $c0

    ld b, $30                                     ; $76c1: $06 $30

jr_098_76c3:
    ldh a, [$fc]                                  ; $76c3: $f0 $fc
    db $fc                                        ; $76c5: $fc
    di                                            ; $76c6: $f3
    db $10                                        ; $76c7: $10
    jr nc, jr_098_76c3                            ; $76c8: $30 $f9

    jr @-$0e                                      ; $76ca: $18 $f0

    ld b, b                                       ; $76cc: $40
    ldh a, [$b0]                                  ; $76cd: $f0 $b0
    ld e, $b6                                     ; $76cf: $1e $b6
    add hl, bc                                    ; $76d1: $09
    db $db                                        ; $76d2: $db
    inc b                                         ; $76d3: $04
    db $ed                                        ; $76d4: $ed
    ld [bc], a                                    ; $76d5: $02
    ld b, b                                       ; $76d6: $40
    sub $82                                       ; $76d7: $d6 $82
    ld bc, $78bf                                  ; $76d9: $01 $bf $78
    ld a, e                                       ; $76dc: $7b
    call nz, $d6ad                                ; $76dd: $c4 $ad $d6
    ld b, c                                       ; $76e0: $41
    ld d, [hl]                                    ; $76e1: $56
    inc e                                         ; $76e2: $1c
    rrca                                          ; $76e3: $0f
    ret nz                                        ; $76e4: $c0

    cp $01                                        ; $76e5: $fe $01
    rst $18                                       ; $76e7: $df
    ldh [$5c], a                                  ; $76e8: $e0 $5c
    ld [bc], a                                    ; $76ea: $02
    ld [bc], a                                    ; $76eb: $02
    nop                                           ; $76ec: $00
    sbc a                                         ; $76ed: $9f
    ld a, b                                       ; $76ee: $78
    ld l, a                                       ; $76ef: $6f
    ldh a, [rIE]                                  ; $76f0: $f0 $ff
    ld a, [bc]                                    ; $76f2: $0a
    dec bc                                        ; $76f3: $0b
    ldh [rP1], a                                  ; $76f4: $e0 $00
    rst $00                                       ; $76f6: $c7
    jr c, @-$06                                   ; $76f7: $38 $f8

    adc b                                         ; $76f9: $88
    db $fc                                        ; $76fa: $fc
    inc [hl]                                      ; $76fb: $34
    xor $32                                       ; $76fc: $ee $32
    nop                                           ; $76fe: $00
    bit 7, l                                      ; $76ff: $cb $7d
    rst $38                                       ; $7701: $ff
    rrca                                          ; $7702: $0f
    ei                                            ; $7703: $fb
    ld a, $e7                                     ; $7704: $3e $e7
    dec de                                        ; $7706: $1b
    inc h                                         ; $7707: $24
    db $fd                                        ; $7708: $fd
    inc bc                                        ; $7709: $03
    ld b, c                                       ; $770a: $41
    add hl, sp                                    ; $770b: $39
    add b                                         ; $770c: $80
    add b                                         ; $770d: $80
    inc b                                         ; $770e: $04
    ld [$e0df], sp                                ; $770f: $08 $df $e0
    nop                                           ; $7712: $00
    cp a                                          ; $7713: $bf
    ret nz                                        ; $7714: $c0

    ccf                                           ; $7715: $3f
    ret nz                                        ; $7716: $c0

    rst $38                                       ; $7717: $ff
    ld b, b                                       ; $7718: $40
    cp l                                          ; $7719: $bd
    db $e3                                        ; $771a: $e3
    ld [hl], b                                    ; $771b: $70
    sbc $42                                       ; $771c: $de $42
    nop                                           ; $771e: $00
    ld h, $01                                     ; $771f: $26 $01
    ldh [rSC], a                                  ; $7721: $e0 $02
    db $db                                        ; $7723: $db
    dec a                                         ; $7724: $3d
    ld a, a                                       ; $7725: $7f
    cp $00                                        ; $7726: $fe $00
    cp e                                          ; $7728: $bb
    db $ec                                        ; $7729: $ec
    rst $38                                       ; $772a: $ff
    add b                                         ; $772b: $80
    rst $00                                       ; $772c: $c7
    jr c, jr_098_7730                             ; $772d: $38 $01

    rst $38                                       ; $772f: $ff

jr_098_7730:
    nop                                           ; $7730: $00
    ld a, l                                       ; $7731: $7d
    add e                                         ; $7732: $83
    cp l                                          ; $7733: $bd
    set 7, l                                      ; $7734: $cb $fd
    ld c, e                                       ; $7736: $4b
    db $fd                                        ; $7737: $fd
    adc e                                         ; $7738: $8b
    nop                                           ; $7739: $00
    db $eb                                        ; $773a: $eb
    sub a                                         ; $773b: $97
    ei                                            ; $773c: $fb
    rlca                                          ; $773d: $07
    ld d, [hl]                                    ; $773e: $56
    xor [hl]                                      ; $773f: $ae
    cpl                                           ; $7740: $2f
    rst $18                                       ; $7741: $df
    nop                                           ; $7742: $00
    ldh [$e0], a                                  ; $7743: $e0 $e0
    ld a, $be                                     ; $7745: $3e $be
    pop af                                        ; $7747: $f1
    rst $08                                       ; $7748: $cf
    cp h                                          ; $7749: $bc
    jp $bf58                                      ; $774a: $c3 $58 $bf


    cp b                                          ; $774d: $b8
    ld [bc], a                                    ; $774e: $02
    rst $38                                       ; $774f: $ff
    add h                                         ; $7750: $84
    ld [bc], a                                    ; $7751: $02
    jr nc, jr_098_7783                            ; $7752: $30 $2f

    push af                                       ; $7754: $f5
    nop                                           ; $7755: $00
    ld a, [hl]                                    ; $7756: $7e
    inc d                                         ; $7757: $14

jr_098_7758:
    add b                                         ; $7758: $80
    db $eb                                        ; $7759: $eb
    inc d                                         ; $775a: $14
    and b                                         ; $775b: $a0
    ld l, c                                       ; $775c: $69
    nop                                           ; $775d: $00
    inc b                                         ; $775e: $04
    dec b                                         ; $775f: $05

jr_098_7760:
    ld a, [$1900]                                 ; $7760: $fa $00 $19
    db $dd                                        ; $7763: $dd
    jr nz, jr_098_7760                            ; $7764: $20 $fa

    ld [hl], $04                                  ; $7766: $36 $04
    nop                                           ; $7768: $00
    rrca                                          ; $7769: $0f
    push af                                       ; $776a: $f5
    ld a, [bc]                                    ; $776b: $0a
    pop bc                                        ; $776c: $c1
    add hl, bc                                    ; $776d: $09
    nop                                           ; $776e: $00
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    ld h, b                                       ; $7771: $60
    rst $38                                       ; $7772: $ff
    rlca                                          ; $7773: $07
    ld hl, sp-$21                                 ; $7774: $f8 $df
    jr nz, jr_098_7758                            ; $7776: $20 $e0

    add [hl]                                      ; $7778: $86
    rlca                                          ; $7779: $07
    add h                                         ; $777a: $84

jr_098_777b:
    nop                                           ; $777b: $00
    xor $18                                       ; $777c: $ee $18
    and b                                         ; $777e: $a0
    ld h, b                                       ; $777f: $60
    ret nc                                        ; $7780: $d0

    jr nc, jr_098_777b                            ; $7781: $30 $f8

jr_098_7783:
    dec c                                         ; $7783: $0d
    ld [$04fc], sp                                ; $7784: $08 $fc $04
    nop                                           ; $7787: $00
    jp nz, Jump_098_7007                          ; $7788: $c2 $07 $70

    ld c, $ef                                     ; $778b: $0e $ef
    and h                                         ; $778d: $a4

jr_098_778e:
    rlca                                          ; $778e: $07
    jr nz, jr_098_778e                            ; $778f: $20 $fd

    ld [bc], a                                    ; $7791: $02
    ld h, h                                       ; $7792: $64
    ld [bc], a                                    ; $7793: $02
    ld a, a                                       ; $7794: $7f
    push de                                       ; $7795: $d5
    ld a, [hl+]                                   ; $7796: $2a
    xor d                                         ; $7797: $aa
    ld d, l                                       ; $7798: $55
    ld bc, $af50                                  ; $7799: $01 $50 $af
    ld [$21ff], sp                                ; $779c: $08 $ff $21
    rst $38                                       ; $779f: $ff
    ld d, d                                       ; $77a0: $52
    ldh a, [rTAC]                                 ; $77a1: $f0 $07
    inc b                                         ; $77a3: $04
    ldh [$df], a                                  ; $77a4: $e0 $df
    ld [bc], a                                    ; $77a6: $02
    db $fd                                        ; $77a7: $fd
    ld [$06e0], sp                                ; $77a8: $08 $e0 $06
    dec b                                         ; $77ab: $05
    rst $38                                       ; $77ac: $ff
    ld de, $ff23                                  ; $77ad: $11 $23 $ff
    rst $10                                       ; $77b0: $d7

jr_098_77b1:
    ldh a, [rTAC]                                 ; $77b1: $f0 $07
    sbc a                                         ; $77b3: $9f
    ld a, a                                       ; $77b4: $7f
    cpl                                           ; $77b5: $2f
    ld a, [hl-]                                   ; $77b6: $3a
    inc bc                                        ; $77b7: $03
    ld bc, $ff5f                                  ; $77b8: $01 $5f $ff
    ld a, a                                       ; $77bb: $7f
    rst $38                                       ; $77bc: $ff
    cp a                                          ; $77bd: $bf
    rst $38                                       ; $77be: $ff
    rst $18                                       ; $77bf: $df
    ldh a, [rTAC]                                 ; $77c0: $f0 $07
    ld h, b                                       ; $77c2: $60
    ld a, a                                       ; $77c3: $7f
    call c, Call_098_5217                         ; $77c4: $dc $17 $52
    ld b, $14                                     ; $77c7: $06 $14
    ld d, a                                       ; $77c9: $57
    xor d                                         ; $77ca: $aa
    and d                                         ; $77cb: $a2
    ld e, l                                       ; $77cc: $5d
    nop                                           ; $77cd: $00
    ld d, a                                       ; $77ce: $57
    cp $b7                                        ; $77cf: $fe $b7
    ld c, a                                       ; $77d1: $4f
    and e                                         ; $77d2: $a3
    rst $38                                       ; $77d3: $ff
    ld a, [hl]                                    ; $77d4: $7e
    ld a, a                                       ; $77d5: $7f
    db $10                                        ; $77d6: $10
    rla                                           ; $77d7: $17
    jr jr_098_77e9                                ; $77d8: $18 $0f

    ld e, d                                       ; $77da: $5a
    ld hl, $ff7b                                  ; $77db: $21 $7b $ff
    sub l                                         ; $77de: $95
    rst $38                                       ; $77df: $ff
    ld [bc], a                                    ; $77e0: $02
    ld c, a                                       ; $77e1: $4f
    cp a                                          ; $77e2: $bf
    ld [hl], d                                    ; $77e3: $72
    ld a, [c]                                     ; $77e4: $f2
    add c                                         ; $77e5: $81
    add c                                         ; $77e6: $81
    ld c, e                                       ; $77e7: $4b
    ld a, [de]                                    ; $77e8: $1a

jr_098_77e9:
    xor [hl]                                      ; $77e9: $ae
    ld h, b                                       ; $77ea: $60
    ld d, c                                       ; $77eb: $51
    ldh [$5d], a                                  ; $77ec: $e0 $5d
    ld b, b                                       ; $77ee: $40
    ld a, [bc]                                    ; $77ef: $0a
    xor a                                         ; $77f0: $af
    nop                                           ; $77f1: $00
    rst $30                                       ; $77f2: $f7
    nop                                           ; $77f3: $00
    ld a, l                                       ; $77f4: $7d
    nop                                           ; $77f5: $00
    add d                                         ; $77f6: $82
    rst $18                                       ; $77f7: $df
    jr nz, jr_098_77b1                            ; $77f8: $20 $b7

    ld c, b                                       ; $77fa: $48
    cp $01                                        ; $77fb: $fe $01
    or l                                          ; $77fd: $b5
    ld [de], a                                    ; $77fe: $12
    ld [bc], a                                    ; $77ff: $02
    ld e, a                                       ; $7800: $5f
    nop                                           ; $7801: $00
    or b                                          ; $7802: $b0
    ld d, l                                       ; $7803: $55
    ld b, b                                       ; $7804: $40
    ld e, e                                       ; $7805: $5b
    xor [hl]                                      ; $7806: $ae
    rlca                                          ; $7807: $07
    ld a, a                                       ; $7808: $7f
    ld b, b                                       ; $7809: $40
    add b                                         ; $780a: $80
    or b                                          ; $780b: $b0
    dec e                                         ; $780c: $1d
    db $db                                        ; $780d: $db
    db $e4                                        ; $780e: $e4
    rst $28                                       ; $780f: $ef
    ldh a, [$5b]                                  ; $7810: $f0 $5b
    db $f4                                        ; $7812: $f4
    adc b                                         ; $7813: $88
    add b                                         ; $7814: $80
    ld c, l                                       ; $7815: $4d
    cp a                                          ; $7816: $bf
    rst $38                                       ; $7817: $ff
    ld e, [hl]                                    ; $7818: $5e
    sub [hl]                                      ; $7819: $96
    rlca                                          ; $781a: $07
    db $f4                                        ; $781b: $f4
    rst $30                                       ; $781c: $f7
    cp e                                          ; $781d: $bb
    nop                                           ; $781e: $00
    cp h                                          ; $781f: $bc
    ld l, l                                       ; $7820: $6d
    ld a, [hl]                                    ; $7821: $7e
    dec d                                         ; $7822: $15
    ld a, [de]                                    ; $7823: $1a
    rla                                           ; $7824: $17

jr_098_7825:
    jr jr_098_7825                                ; $7825: $18 $fe

    add b                                         ; $7827: $80
    sbc d                                         ; $7828: $9a
    nop                                           ; $7829: $00
    ld d, a                                       ; $782a: $57
    or a                                          ; $782b: $b7
    cp d                                          ; $782c: $ba
    adc $55                                       ; $782d: $ce $55
    rst $28                                       ; $782f: $ef
    xor l                                         ; $7830: $ad
    nop                                           ; $7831: $00
    halt                                          ; $7832: $76
    rst $18                                       ; $7833: $df
    ld h, h                                       ; $7834: $64

jr_098_7835:
    ei                                            ; $7835: $fb
    inc h                                         ; $7836: $24
    ld a, $ff                                     ; $7837: $3e $ff
    db $fd                                        ; $7839: $fd
    ld bc, $ebfe                                  ; $783a: $01 $fe $eb
    db $ec                                        ; $783d: $ec
    rst $30                                       ; $783e: $f7
    ld hl, sp+$1f                                 ; $783f: $f8 $1f
    ldh [rNR21], a                                ; $7841: $e0 $16
    inc a                                         ; $7843: $3c

jr_098_7844:
    jr nz, jr_098_7844                            ; $7844: $20 $fe

    ld bc, $0802                                  ; $7846: $01 $02 $08
    db $f4                                        ; $7849: $f4
    dec bc                                        ; $784a: $0b
    ld sp, hl                                     ; $784b: $f9
    ld b, $fb                                     ; $784c: $06 $fb
    nop                                           ; $784e: $00
    inc b                                         ; $784f: $04
    dec bc                                        ; $7850: $0b
    inc c                                         ; $7851: $0c
    add hl, bc                                    ; $7852: $09
    ld c, $06                                     ; $7853: $0e $06
    rlca                                          ; $7855: $07

jr_098_7856:
    dec b                                         ; $7856: $05
    jr nc, jr_098_7860                            ; $7857: $30 $07

    ld [bc], a                                    ; $7859: $02
    cp c                                          ; $785a: $b9
    ld [bc], a                                    ; $785b: $02
    add b                                         ; $785c: $80
    ld a, [bc]                                    ; $785d: $0a
    xor a                                         ; $785e: $af
    ld d, b                                       ; $785f: $50

jr_098_7860:
    rst $18                                       ; $7860: $df
    jr nz, @+$06                                  ; $7861: $20 $04

    rrca                                          ; $7863: $0f
    ldh a, [$b1]                                  ; $7864: $f0 $b1
    cp $fc                                        ; $7866: $fe $fc
    jr nz, jr_098_786e                            ; $7868: $20 $04

    xor a                                         ; $786a: $af
    ld a, a                                       ; $786b: $7f
    jr nz, jr_098_7835                            ; $786c: $20 $c7

jr_098_786e:
    ccf                                           ; $786e: $3f
    call z, $1f1b                                 ; $786f: $cc $1b $1f
    ldh [$3f], a                                  ; $7872: $e0 $3f
    ldh [rIE], a                                  ; $7874: $e0 $ff
    ld b, b                                       ; $7876: $40
    ldh [$d4], a                                  ; $7877: $e0 $d4
    ld [bc], a                                    ; $7879: $02
    ldh a, [$b4]                                  ; $787a: $f0 $b4
    ld c, e                                       ; $787c: $4b
    jr z, jr_098_7856                             ; $787d: $28 $d7

    ld d, e                                       ; $787f: $53
    nop                                           ; $7880: $00
    rst $38                                       ; $7881: $ff
    rst $28                                       ; $7882: $ef
    ld a, a                                       ; $7883: $7f
    cp a                                          ; $7884: $bf
    ld a, a                                       ; $7885: $7f
    cp $3e                                        ; $7886: $fe $3e
    cp b                                          ; $7888: $b8
    db $10                                        ; $7889: $10
    ld a, b                                       ; $788a: $78
    and b                                         ; $788b: $a0
    ld h, b                                       ; $788c: $60
    ld [de], a                                    ; $788d: $12
    dec hl                                        ; $788e: $2b
    ld bc, $0601                                  ; $788f: $01 $01 $06
    rlca                                          ; $7892: $07
    nop                                           ; $7893: $00
    dec c                                         ; $7894: $0d
    ld a, [bc]                                    ; $7895: $0a
    dec bc                                        ; $7896: $0b
    ld c, $74                                     ; $7897: $0e $74
    adc h                                         ; $7899: $8c
    db $f4                                        ; $789a: $f4
    adc h                                         ; $789b: $8c
    nop                                           ; $789c: $00
    add sp, -$68                                  ; $789d: $e8 $98
    ret c                                         ; $789f: $d8

    cp b                                          ; $78a0: $b8
    ld e, b                                       ; $78a1: $58
    cp b                                          ; $78a2: $b8
    ld l, b                                       ; $78a3: $68
    sbc b                                         ; $78a4: $98
    ld [$5ca4], sp                                ; $78a5: $08 $a4 $5c
    call z, Call_000_0a7c                         ; $78a8: $cc $7c $0a
    ld bc, $0b08                                  ; $78ab: $01 $08 $0b
    inc c                                         ; $78ae: $0c
    jr nc, jr_098_78b6                            ; $78af: $30 $05

    ld b, $18                                     ; $78b1: $06 $18
    inc bc                                        ; $78b3: $03
    ld [bc], a                                    ; $78b4: $02
    db $10                                        ; $78b5: $10

jr_098_78b6:
    ld h, b                                       ; $78b6: $60
    ldh [$60], a                                  ; $78b7: $e0 $60
    ldh [rP1], a                                  ; $78b9: $e0 $00
    ld h, c                                       ; $78bb: $61
    pop hl                                        ; $78bc: $e1
    and [hl]                                      ; $78bd: $a6
    ld h, a                                       ; $78be: $67
    db $ed                                        ; $78bf: $ed
    ld a, [hl+]                                   ; $78c0: $2a
    db $eb                                        ; $78c1: $eb
    ld l, $03                                     ; $78c2: $2e $03
    and $27                                       ; $78c4: $e6 $27
    and c                                         ; $78c6: $a1
    ld h, c                                       ; $78c7: $61

jr_098_78c8:
    ld b, $07                                     ; $78c8: $06 $07
    ld d, h                                       ; $78ca: $54
    dec sp                                        ; $78cb: $3b
    ld l, l                                       ; $78cc: $6d
    dec bc                                        ; $78cd: $0b
    jr nz, jr_098_78c8                            ; $78ce: $20 $f8

    ld hl, sp+$73                                 ; $78d0: $f8 $73
    ld e, e                                       ; $78d2: $5b
    dec b                                         ; $78d3: $05
    ld b, $08                                     ; $78d4: $06 $08
    rrca                                          ; $78d6: $0f
    ld [hl], $00                                  ; $78d7: $36 $00
    add hl, sp                                    ; $78d9: $39
    ld a, [hl]                                    ; $78da: $7e
    ld c, c                                       ; $78db: $49
    ld l, [hl]                                    ; $78dc: $6e
    ld e, e                                       ; $78dd: $5b
    ld e, e                                       ; $78de: $5b

jr_098_78df:
    ld a, a                                       ; $78df: $7f
    ld h, $00                                     ; $78e0: $26 $00
    ld h, $00                                     ; $78e2: $26 $00
    nop                                           ; $78e4: $00
    ld h, b                                       ; $78e5: $60
    ldh [$a0], a                                  ; $78e6: $e0 $a0
    ldh [$30], a                                  ; $78e8: $e0 $30
    nop                                           ; $78ea: $00
    ldh a, [$d0]                                  ; $78eb: $f0 $d0
    jr nc, jr_098_78df                            ; $78ed: $30 $f0

    ld d, b                                       ; $78ef: $50
    and b                                         ; $78f0: $a0
    ldh [$c0], a                                  ; $78f1: $e0 $c0
    ld h, b                                       ; $78f3: $60
    ret nz                                        ; $78f4: $c0

    call c, $d401                                 ; $78f5: $dc $01 $d4
    ld bc, $a05f                                  ; $78f8: $01 $5f $a0
    ld e, a                                       ; $78fb: $5f
    and b                                         ; $78fc: $a0
    ld c, a                                       ; $78fd: $4f
    nop                                           ; $78fe: $00
    or b                                          ; $78ff: $b0

Jump_098_7900:
    pop de                                        ; $7900: $d1
    ld l, $fa                                     ; $7901: $2e $fa

Call_098_7903:
    rlca                                          ; $7903: $07
    dec b                                         ; $7904: $05
    ei                                            ; $7905: $fb
    ld a, [$0606]                                 ; $7906: $fa $06 $06
    cp $02                                        ; $7909: $fe $02
    db $fd                                        ; $790b: $fd
    inc bc                                        ; $790c: $03
    ld [bc], a                                    ; $790d: $02
    ld [$07a3], sp                                ; $790e: $08 $a3 $07
    inc bc                                        ; $7911: $03
    jr nz, jr_098_798f                            ; $7912: $20 $7b

    add a                                         ; $7914: $87
    ldh a, [rVBK]                                 ; $7915: $f0 $4f
    cp $01                                        ; $7917: $fe $01
    push af                                       ; $7919: $f5
    rrca                                          ; $791a: $0f
    ld a, h                                       ; $791b: $7c
    add b                                         ; $791c: $80
    adc b                                         ; $791d: $88
    inc b                                         ; $791e: $04
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    ei                                            ; $7921: $fb
    ei                                            ; $7922: $fb
    sbc b                                         ; $7923: $98
    ld hl, sp-$78                                 ; $7924: $f8 $88
    ld bc, $a8f8                                  ; $7926: $01 $f8 $a8
    ret c                                         ; $7929: $d8

    ld l, b                                       ; $792a: $68
    ld e, b                                       ; $792b: $58
    ld a, c                                       ; $792c: $79
    add a                                         ; $792d: $87
    ld l, $08                                     ; $792e: $2e $08
    db $10                                        ; $7930: $10
    ld a, [hl]                                    ; $7931: $7e
    add c                                         ; $7932: $81
    rst $38                                       ; $7933: $ff
    jr nc, jr_098_793a                            ; $7934: $30 $04

    ld l, a                                       ; $7936: $6f
    ld [hl], b                                    ; $7937: $70
    inc sp                                        ; $7938: $33
    inc a                                         ; $7939: $3c

jr_098_793a:
    add h                                         ; $793a: $84
    xor h                                         ; $793b: $ac
    ld a, [hl+]                                   ; $793c: $2a
    add b                                         ; $793d: $80
    add b                                         ; $793e: $80
    ret nz                                        ; $793f: $c0

    ld b, b                                       ; $7940: $40
    ld [bc], a                                    ; $7941: $02
    ld [$1fea], sp                                ; $7942: $08 $ea $1f
    nop                                           ; $7945: $00
    ld a, [c]                                     ; $7946: $f2
    dec e                                         ; $7947: $1d
    ret                                           ; $7948: $c9


    ld a, $f3                                     ; $7949: $3e $f3
    inc e                                         ; $794b: $1c
    srl h                                         ; $794c: $cb $3c
    nop                                           ; $794e: $00
    pop af                                        ; $794f: $f1
    ld e, $ca                                     ; $7950: $1e $ca
    dec a                                         ; $7952: $3d
    ldh a, [$1f]                                  ; $7953: $f0 $1f
    ld l, b                                       ; $7955: $68
    ld e, b                                       ; $7956: $58
    nop                                           ; $7957: $00
    add sp, -$28                                  ; $7958: $e8 $d8
    ld b, h                                       ; $795a: $44
    cp h                                          ; $795b: $bc
    ld h, h                                       ; $795c: $64
    sbc h                                         ; $795d: $9c
    xor h                                         ; $795e: $ac
    ld e, h                                       ; $795f: $5c
    nop                                           ; $7960: $00
    ret nc                                        ; $7961: $d0

    ld [hl], b                                    ; $7962: $70
    ldh [$e0], a                                  ; $7963: $e0 $e0
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    add hl, bc                                    ; $7967: $09
    ld c, $09                                     ; $7968: $0e $09
    ld [$050f], sp                                ; $796a: $08 $0f $05

jr_098_796d:
    ld b, $02                                     ; $796d: $06 $02
    jr z, jr_098_7975                             ; $796f: $28 $04

    rlca                                          ; $7971: $07
    ld [hl], $18                                  ; $7972: $36 $18
    add b                                         ; $7974: $80

jr_098_7975:
    inc a                                         ; $7975: $3c
    jr @-$5e                                      ; $7976: $18 $a0

jr_098_7978:
    ld h, b                                       ; $7978: $60
    and b                                         ; $7979: $a0
    ld h, b                                       ; $797a: $60
    ld [c], a                                     ; $797b: $e2
    dec e                                         ; $797c: $1d
    push af                                       ; $797d: $f5
    db $10                                        ; $797e: $10
    ld a, [bc]                                    ; $797f: $0a
    db $e3                                        ; $7980: $e3
    inc e                                         ; $7981: $1c
    inc b                                         ; $7982: $04
    jr jr_098_796d                                ; $7983: $18 $e8

    rra                                           ; $7985: $1f
    push af                                       ; $7986: $f5
    rra                                           ; $7987: $1f
    nop                                           ; $7988: $00
    dec de                                        ; $7989: $1b
    inc e                                         ; $798a: $1c
    ccf                                           ; $798b: $3f
    inc h                                         ; $798c: $24
    scf                                           ; $798d: $37
    dec l                                         ; $798e: $2d

jr_098_798f:
    dec l                                         ; $798f: $2d
    ccf                                           ; $7990: $3f
    jr nz, jr_098_79a6                            ; $7991: $20 $13

    inc de                                        ; $7993: $13
    ld e, e                                       ; $7994: $5b
    inc e                                         ; $7995: $1c
    jr nz, jr_098_7978                            ; $7996: $20 $e0

    ld [hl], b                                    ; $7998: $70
    sub b                                         ; $7999: $90
    ld [hl], b                                    ; $799a: $70
    inc b                                         ; $799b: $04
    or b                                          ; $799c: $b0
    ret nc                                        ; $799d: $d0

    ldh a, [$60]                                  ; $799e: $f0 $60
    ld h, b                                       ; $79a0: $60
    ld l, e                                       ; $79a1: $6b
    inc e                                         ; $79a2: $1c

jr_098_79a3:
    ret z                                         ; $79a3: $c8

    ccf                                           ; $79a4: $3f
    and h                                         ; $79a5: $a4

jr_098_79a6:
    jr nz, jr_098_79b7                            ; $79a6: $20 $0f

    rst $38                                       ; $79a8: $ff
    jr nz, jr_098_79e2                            ; $79a9: $20 $37

    db $dd                                        ; $79ab: $dd
    ld [hl+], a                                   ; $79ac: $22
    and b                                         ; $79ad: $a0
    ld e, [hl]                                    ; $79ae: $5e
    rst $38                                       ; $79af: $ff
    nop                                           ; $79b0: $00
    add c                                         ; $79b1: $81
    and b                                         ; $79b2: $a0
    ld e, [hl]                                    ; $79b3: $5e
    rst $38                                       ; $79b4: $ff
    nop                                           ; $79b5: $00
    or [hl]                                       ; $79b6: $b6

jr_098_79b7:
    ld b, c                                       ; $79b7: $41
    ld e, l                                       ; $79b8: $5d
    and d                                         ; $79b9: $a2
    ld b, b                                       ; $79ba: $40
    ccf                                           ; $79bb: $3f
    inc c                                         ; $79bc: $0c
    db $fd                                        ; $79bd: $fd
    ld [bc], a                                    ; $79be: $02
    ld d, a                                       ; $79bf: $57
    xor b                                         ; $79c0: $a8
    jr nz, jr_098_7a12                            ; $79c1: $20 $4f

    or b                                          ; $79c3: $b0
    ld c, h                                       ; $79c4: $4c
    ld a, a                                       ; $79c5: $7f
    ld h, b                                       ; $79c6: $60
    inc h                                         ; $79c7: $24
    di                                            ; $79c8: $f3
    adc h                                         ; $79c9: $8c
    and b                                         ; $79ca: $a0
    inc c                                         ; $79cb: $0c
    ld c, $0f                                     ; $79cc: $0e $0f
    and b                                         ; $79ce: $a0
    inc c                                         ; $79cf: $0c
    rst $28                                       ; $79d0: $ef
    ldh a, [$90]                                  ; $79d1: $f0 $90
    and b                                         ; $79d3: $a0
    inc c                                         ; $79d4: $0c
    db $fd                                        ; $79d5: $fd
    sbc [hl]                                      ; $79d6: $9e
    and b                                         ; $79d7: $a0
    inc c                                         ; $79d8: $0c
    ei                                            ; $79d9: $fb
    inc e                                         ; $79da: $1c
    db $fc                                        ; $79db: $fc
    inc bc                                        ; $79dc: $03
    nop                                           ; $79dd: $00
    rst $28                                       ; $79de: $ef
    add hl, de                                    ; $79df: $19
    ld a, [c]                                     ; $79e0: $f2
    rrca                                          ; $79e1: $0f

jr_098_79e2:
    rst $30                                       ; $79e2: $f7
    rrca                                          ; $79e3: $0f
    ld h, a                                       ; $79e4: $67
    ld a, b                                       ; $79e5: $78
    nop                                           ; $79e6: $00
    inc sp                                        ; $79e7: $33
    dec a                                         ; $79e8: $3d
    dec a                                         ; $79e9: $3d
    ccf                                           ; $79ea: $3f
    ld [$bff7], a                                 ; $79eb: $ea $f7 $bf
    rst $08                                       ; $79ee: $cf
    nop                                           ; $79ef: $00
    db $fc                                        ; $79f0: $fc
    adc e                                         ; $79f1: $8b
    ld a, e                                       ; $79f2: $7b
    adc h                                         ; $79f3: $8c
    dec [hl]                                      ; $79f4: $35
    adc $9f                                       ; $79f5: $ce $9f
    ld h, a                                       ; $79f7: $67
    ld b, b                                       ; $79f8: $40
    ld [hl], h                                    ; $79f9: $74
    add b                                         ; $79fa: $80
    inc d                                         ; $79fb: $14
    push de                                       ; $79fc: $d5
    db $eb                                        ; $79fd: $eb
    db $fc                                        ; $79fe: $fc
    inc bc                                        ; $79ff: $03
    pop hl                                        ; $7a00: $e1
    rra                                           ; $7a01: $1f
    jr nz, jr_098_79a3                            ; $7a02: $20 $9f

    ld a, a                                       ; $7a04: $7f
    ld b, b                                       ; $7a05: $40
    inc a                                         ; $7a06: $3c
    cp [hl]                                       ; $7a07: $be
    ld a, c                                       ; $7a08: $79
    rst $28                                       ; $7a09: $ef
    rla                                           ; $7a0a: $17
    rst $38                                       ; $7a0b: $ff
    adc c                                         ; $7a0c: $89
    ld b, b                                       ; $7a0d: $40
    inc [hl]                                      ; $7a0e: $34
    add b                                         ; $7a0f: $80
    add b                                         ; $7a10: $80
    ld [hl], b                                    ; $7a11: $70

jr_098_7a12:
    ld b, b                                       ; $7a12: $40
    inc b                                         ; $7a13: $04
    ld [hl], e                                    ; $7a14: $73
    adc a                                         ; $7a15: $8f
    jr nz, jr_098_7a24                            ; $7a16: $20 $0c

    add hl, hl                                    ; $7a18: $29
    and l                                         ; $7a19: $a5
    sbc $20                                       ; $7a1a: $de $20
    inc c                                         ; $7a1c: $0c
    cp a                                          ; $7a1d: $bf
    jr nz, @+$36                                  ; $7a1e: $20 $34

    rst $18                                       ; $7a20: $df
    jr c, jr_098_7a43                             ; $7a21: $38 $20

    inc e                                         ; $7a23: $1c

jr_098_7a24:
    ld [$f0ef], sp                                ; $7a24: $08 $ef $f0
    add d                                         ; $7a27: $82
    ld a, l                                       ; $7a28: $7d
    jr nz, jr_098_7a37                            ; $7a29: $20 $0c

    xor [hl]                                      ; $7a2b: $ae
    ld [hl], d                                    ; $7a2c: $72
    rst $08                                       ; $7a2d: $cf
    ld b, b                                       ; $7a2e: $40
    ld a, c                                       ; $7a2f: $79
    jr nz, jr_098_7a56                            ; $7a30: $20 $24

    add e                                         ; $7a32: $83
    rst $38                                       ; $7a33: $ff
    ret nz                                        ; $7a34: $c0

    cp a                                          ; $7a35: $bf
    ret nz                                        ; $7a36: $c0

jr_098_7a37:
    cp a                                          ; $7a37: $bf
    nop                                           ; $7a38: $00
    ld b, b                                       ; $7a39: $40
    cp $41                                        ; $7a3a: $fe $41
    ld l, l                                       ; $7a3c: $6d
    di                                            ; $7a3d: $f3
    rst $18                                       ; $7a3e: $df
    cp $ff                                        ; $7a3f: $fe $ff
    jr nz, @-$3e                                  ; $7a41: $20 $c0

jr_098_7a43:
    rst $38                                       ; $7a43: $ff
    and [hl]                                      ; $7a44: $a6
    ld [bc], a                                    ; $7a45: $02
    di                                            ; $7a46: $f3
    dec c                                         ; $7a47: $0d
    adc $3f                                       ; $7a48: $ce $3f
    ld a, a                                       ; $7a4a: $7f
    nop                                           ; $7a4b: $00
    cp $bd                                        ; $7a4c: $fe $bd
    ld [$80ff], a                                 ; $7a4e: $ea $ff $80
    adc a                                         ; $7a51: $8f
    ld [hl], b                                    ; $7a52: $70
    ld bc, $ff08                                  ; $7a53: $01 $08 $ff

jr_098_7a56:
    ld [hl], l                                    ; $7a56: $75
    res 7, l                                      ; $7a57: $cb $bd
    ld c, $04                                     ; $7a59: $0e $04
    db $fd                                        ; $7a5b: $fd
    adc e                                         ; $7a5c: $8b
    rst $20                                       ; $7a5d: $e7
    ld [$eb1b], sp                                ; $7a5e: $08 $1b $eb
    rla                                           ; $7a61: $17
    sub $10                                       ; $7a62: $d6 $10
    inc b                                         ; $7a64: $04
    ldh a, [$f0]                                  ; $7a65: $f0 $f0
    ld a, $07                                     ; $7a67: $3e $07
    cp [hl]                                       ; $7a69: $be
    ld sp, hl                                     ; $7a6a: $f9
    rst $00                                       ; $7a6b: $c7
    cp [hl]                                       ; $7a6c: $be
    pop bc                                        ; $7a6d: $c1
    db $10                                        ; $7a6e: $10
    inc l                                         ; $7a6f: $2c
    ldh [$3b], a                                  ; $7a70: $e0 $3b
    sbc $0b                                       ; $7a72: $de $0b
    ld b, b                                       ; $7a74: $40
    ld a, a                                       ; $7a75: $7f
    inc [hl]                                      ; $7a76: $34
    nop                                           ; $7a77: $00
    jp c, $fd20                                   ; $7a78: $da $20 $fd

    nop                                           ; $7a7b: $00
    cp d                                          ; $7a7c: $ba
    nop                                           ; $7a7d: $00
    ld b, b                                       ; $7a7e: $40
    ld d, a                                       ; $7a7f: $57
    nop                                           ; $7a80: $00
    inc d                                         ; $7a81: $14
    cp a                                          ; $7a82: $bf
    ld b, b                                       ; $7a83: $40
    ld [$03ff], a                                 ; $7a84: $ea $ff $03
    db $fc                                        ; $7a87: $fc
    nop                                           ; $7a88: $00
    rst $10                                       ; $7a89: $d7
    jr z, @-$4f                                   ; $7a8a: $28 $af

    ld d, b                                       ; $7a8c: $50
    ld a, l                                       ; $7a8d: $7d
    add b                                         ; $7a8e: $80
    db $eb                                        ; $7a8f: $eb
    nop                                           ; $7a90: $00
    ld b, c                                       ; $7a91: $41
    rst $18                                       ; $7a92: $df
    xor h                                         ; $7a93: $ac
    dec b                                         ; $7a94: $05
    ld e, $00                                     ; $7a95: $1e $00
    cp l                                          ; $7a97: $bd
    nop                                           ; $7a98: $00
    ld a, e                                       ; $7a99: $7b
    or h                                          ; $7a9a: $b4
    rlca                                          ; $7a9b: $07
    nop                                           ; $7a9c: $00
    ld a, [$d505]                                 ; $7a9d: $fa $05 $d5
    ld a, [hl+]                                   ; $7aa0: $2a
    cp $01                                        ; $7aa1: $fe $01
    rst $30                                       ; $7aa3: $f7
    ld [$c700], sp                                ; $7aa4: $08 $00 $c7
    jr c, @-$67                                   ; $7aa7: $38 $97

    ld a, b                                       ; $7aa9: $78
    add a                                         ; $7aaa: $87
    ld a, b                                       ; $7aab: $78
    ld e, d                                       ; $7aac: $5a
    or h                                          ; $7aad: $b4
    ld [bc], a                                    ; $7aae: $02
    and a                                         ; $7aaf: $a7
    ld a, b                                       ; $7ab0: $78
    dec hl                                        ; $7ab1: $2b
    call nc, $aa55                                ; $7ab2: $d4 $55 $aa
    ld a, b                                       ; $7ab5: $78
    ld bc, $0000                                  ; $7ab6: $01 $00 $00
    db $fd                                        ; $7ab9: $fd
    nop                                           ; $7aba: $00
    rst $10                                       ; $7abb: $d7
    jr z, @-$16                                   ; $7abc: $28 $e8

    rla                                           ; $7abe: $17
    cp l                                          ; $7abf: $bd
    ld [bc], a                                    ; $7ac0: $02
    ld b, b                                       ; $7ac1: $40
    ld e, l                                       ; $7ac2: $5d
    inc d                                         ; $7ac3: $14
    inc d                                         ; $7ac4: $14
    db $f4                                        ; $7ac5: $f4
    inc bc                                        ; $7ac6: $03
    ld a, l                                       ; $7ac7: $7d
    inc bc                                        ; $7ac8: $03
    db $ec                                        ; $7ac9: $ec
    inc bc                                        ; $7aca: $03
    nop                                           ; $7acb: $00
    cp d                                          ; $7acc: $ba
    ld b, l                                       ; $7acd: $45
    dec d                                         ; $7ace: $15
    ld [$04bb], a                                 ; $7acf: $ea $bb $04
    ld [hl], l                                    ; $7ad2: $75
    adc d                                         ; $7ad3: $8a
    ld b, b                                       ; $7ad4: $40
    cp $00                                        ; $7ad5: $fe $00
    ld h, $07                                     ; $7ad7: $26 $07
    rlca                                          ; $7ad9: $07
    ld a, [bc]                                    ; $7ada: $0a
    dec c                                         ; $7adb: $0d
    ld a, [de]                                    ; $7adc: $1a
    dec d                                         ; $7add: $15
    nop                                           ; $7ade: $00
    add hl, de                                    ; $7adf: $19
    rra                                           ; $7ae0: $1f
    ei                                            ; $7ae1: $fb
    rst $30                                       ; $7ae2: $f7
    nop                                           ; $7ae3: $00
    nop                                           ; $7ae4: $00
    rra                                           ; $7ae5: $1f
    rra                                           ; $7ae6: $1f
    jr nz, @-$11                                  ; $7ae7: $20 $ed

    di                                            ; $7ae9: $f3
    sbc h                                         ; $7aea: $9c
    ld b, $03                                     ; $7aeb: $06 $03
    ld a, l                                       ; $7aed: $7d
    add [hl]                                      ; $7aee: $86
    ld a, [de]                                    ; $7aef: $1a
    rst $20                                       ; $7af0: $e7
    ld b, b                                       ; $7af1: $40
    rst $00                                       ; $7af2: $c7
    ld sp, $3f06                                  ; $7af3: $31 $06 $3f
    ccf                                           ; $7af6: $3f
    rst $30                                       ; $7af7: $f7
    ld hl, sp-$01                                 ; $7af8: $f8 $ff
    ret nz                                        ; $7afa: $c0

    ld bc, $20df                                  ; $7afb: $01 $df $20
    ld c, a                                       ; $7afe: $4f
    or b                                          ; $7aff: $b0
    add c                                         ; $7b00: $81
    cp $5f                                        ; $7b01: $fe $5f
    ld b, c                                       ; $7b03: $41
    ld b, $04                                     ; $7b04: $06 $04
    ldh [$e0], a                                  ; $7b06: $e0 $e0
    sbc a                                         ; $7b08: $9f
    ld a, a                                       ; $7b09: $7f
    rst $28                                       ; $7b0a: $ef
    sub l                                         ; $7b0b: $95
    dec b                                         ; $7b0c: $05
    rst $38                                       ; $7b0d: $ff
    ld bc, $fe00                                  ; $7b0e: $01 $00 $fe
    inc bc                                        ; $7b11: $03
    ld a, a                                       ; $7b12: $7f
    add b                                         ; $7b13: $80
    cp [hl]                                       ; $7b14: $be
    pop bc                                        ; $7b15: $c1
    ld a, a                                       ; $7b16: $7f
    add b                                         ; $7b17: $80
    nop                                           ; $7b18: $00
    cp e                                          ; $7b19: $bb
    ret nz                                        ; $7b1a: $c0

    dec a                                         ; $7b1b: $3d
    ret nz                                        ; $7b1c: $c0

    rra                                           ; $7b1d: $1f
    ldh [$aa], a                                  ; $7b1e: $e0 $aa
    ld d, l                                       ; $7b20: $55
    ret z                                         ; $7b21: $c8

    add d                                         ; $7b22: $82
    ld [$58b0], sp                                ; $7b23: $08 $b0 $58
    push af                                       ; $7b26: $f5
    ld a, [bc]                                    ; $7b27: $0a
    and b                                         ; $7b28: $a0
    ld c, b                                       ; $7b29: $48
    xor b                                         ; $7b2a: $a8
    ld d, a                                       ; $7b2b: $57
    push de                                       ; $7b2c: $d5
    ld b, b                                       ; $7b2d: $40
    ccf                                           ; $7b2e: $3f
    ld a, [hl-]                                   ; $7b2f: $3a
    dec e                                         ; $7b30: $1d
    ret nz                                        ; $7b31: $c0

    ld b, b                                       ; $7b32: $40
    ldh [$a0], a                                  ; $7b33: $e0 $a0
    ld [hl], b                                    ; $7b35: $70
    sub b                                         ; $7b36: $90
    nop                                           ; $7b37: $00
    ld e, b                                       ; $7b38: $58
    add sp, -$08                                  ; $7b39: $e8 $f8
    ld a, b                                       ; $7b3b: $78
    ret nc                                        ; $7b3c: $d0

    cpl                                           ; $7b3d: $2f
    ld l, d                                       ; $7b3e: $6a
    sub l                                         ; $7b3f: $95
    adc b                                         ; $7b40: $88

jr_098_7b41:
    or b                                          ; $7b41: $b0
    inc a                                         ; $7b42: $3c
    rst $38                                       ; $7b43: $ff
    nop                                           ; $7b44: $00
    dec l                                         ; $7b45: $2d
    db $ed                                        ; $7b46: $ed
    rlca                                          ; $7b47: $07
    db $fd                                        ; $7b48: $fd
    ld [bc], a                                    ; $7b49: $02
    ld a, a                                       ; $7b4a: $7f
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00
    push af                                       ; $7b4d: $f5
    ld a, [bc]                                    ; $7b4e: $0a
    ld a, e                                       ; $7b4f: $7b
    add h                                         ; $7b50: $84
    rst $18                                       ; $7b51: $df
    jr nz, jr_098_7b41                            ; $7b52: $20 $ed

    nop                                           ; $7b54: $00
    ld [de], a                                    ; $7b55: $12
    rst $28                                       ; $7b56: $ef
    db $10                                        ; $7b57: $10
    ld d, a                                       ; $7b58: $57
    xor b                                         ; $7b59: $a8
    or l                                          ; $7b5a: $b5
    ld b, b                                       ; $7b5b: $40

jr_098_7b5c:
    ld l, e                                       ; $7b5c: $6b
    nop                                           ; $7b5d: $00
    add b                                         ; $7b5e: $80
    rst $30                                       ; $7b5f: $f7
    nop                                           ; $7b60: $00
    ei                                            ; $7b61: $fb
    inc b                                         ; $7b62: $04
    rst $10                                       ; $7b63: $d7
    add sp, -$75                                  ; $7b64: $e8 $8b
    jr c, jr_098_7b5c                             ; $7b66: $38 $f4

    rlca                                          ; $7b68: $07
    ld bc, $9510                                  ; $7b69: $01 $10 $95
    ld b, $5e                                     ; $7b6c: $06 $5e
    ld b, $0f                                     ; $7b6e: $06 $0f
    rrca                                          ; $7b70: $0f
    dec e                                         ; $7b71: $1d
    ld bc, $f51e                                  ; $7b72: $01 $1e $f5
    ld a, [bc]                                    ; $7b75: $0a
    ld e, e                                       ; $7b76: $5b
    inc b                                         ; $7b77: $04
    xor l                                         ; $7b78: $ad
    ld [bc], a                                    ; $7b79: $02
    ld [hl], b                                    ; $7b7a: $70
    inc l                                         ; $7b7b: $2c
    nop                                           ; $7b7c: $00
    rst $38                                       ; $7b7d: $ff
    nop                                           ; $7b7e: $00
    dec e                                         ; $7b7f: $1d
    ld e, $0b                                     ; $7b80: $1e $0b
    inc c                                         ; $7b82: $0c
    rrca                                          ; $7b83: $0f
    inc c                                         ; $7b84: $0c
    inc b                                         ; $7b85: $04
    dec c                                         ; $7b86: $0d
    ld a, [bc]                                    ; $7b87: $0a
    dec b                                         ; $7b88: $05
    rlca                                          ; $7b89: $07
    inc bc                                        ; $7b8a: $03
    xor h                                         ; $7b8b: $ac
    dec d                                         ; $7b8c: $15
    or l                                          ; $7b8d: $b5
    ld [bc], a                                    ; $7b8e: $02
    ld [hl], d                                    ; $7b8f: $72
    ld e, [hl]                                    ; $7b90: $5e
    ld e, h                                       ; $7b91: $5c
    ld [bc], a                                    ; $7b92: $02
    add b                                         ; $7b93: $80
    inc a                                         ; $7b94: $3c
    sbc [hl]                                      ; $7b95: $9e
    dec b                                         ; $7b96: $05
    jr nz, @+$7f                                  ; $7b97: $20 $7d

    ld a, [$9d07]                                 ; $7b99: $fa $07 $9d
    nop                                           ; $7b9c: $00
    ld [c], a                                     ; $7b9d: $e2
    cpl                                           ; $7b9e: $2f
    ret nc                                        ; $7b9f: $d0

    sub l                                         ; $7ba0: $95
    ld [$fcd3], a                                 ; $7ba1: $ea $d3 $fc
    rst $28                                       ; $7ba4: $ef
    inc de                                        ; $7ba5: $13
    ld hl, sp+$52                                 ; $7ba6: $f8 $52
    db $fd                                        ; $7ba8: $fd
    add b                                         ; $7ba9: $80
    inc e                                         ; $7baa: $1c
    jp nc, $803c                                  ; $7bab: $d2 $3c $80

    inc c                                         ; $7bae: $0c
    jr c, jr_098_7bbc                             ; $7baf: $38 $0b

    ret nz                                        ; $7bb1: $c0

    sbc d                                         ; $7bb2: $9a
    dec b                                         ; $7bb3: $05
    ld e, d                                       ; $7bb4: $5a
    dec b                                         ; $7bb5: $05
    cp a                                          ; $7bb6: $bf
    ld b, b                                       ; $7bb7: $40
    ld c, a                                       ; $7bb8: $4f
    ldh a, [$d0]                                  ; $7bb9: $f0 $d0
    rst $38                                       ; $7bbb: $ff

jr_098_7bbc:
    nop                                           ; $7bbc: $00
    rst $28                                       ; $7bbd: $ef
    ld [hl], $3f                                  ; $7bbe: $36 $3f
    ret c                                         ; $7bc0: $d8

    cp $7f                                        ; $7bc1: $fe $7f
    cp [hl]                                       ; $7bc3: $be
    ld a, a                                       ; $7bc4: $7f
    nop                                           ; $7bc5: $00
    db $ed                                        ; $7bc6: $ed
    ld a, $d9                                     ; $7bc7: $3e $d9
    ld [hl], $17                                  ; $7bc9: $36 $17
    ld a, [$1fed]                                 ; $7bcb: $fa $ed $1f
    pop hl                                        ; $7bce: $e1
    ld d, [hl]                                    ; $7bcf: $56
    dec b                                         ; $7bd0: $05
    ld [hl+], a                                   ; $7bd1: $22
    ld b, $78                                     ; $7bd2: $06 $78
    inc l                                         ; $7bd4: $2c
    db $fc                                        ; $7bd5: $fc
    inc bc                                        ; $7bd6: $03
    rst $18                                       ; $7bd7: $df
    ld hl, $002a                                  ; $7bd8: $21 $2a $00
    ld b, b                                       ; $7bdb: $40
    ret nz                                        ; $7bdc: $c0

    inc c                                         ; $7bdd: $0c
    ld [bc], a                                    ; $7bde: $02
    db $10                                        ; $7bdf: $10
    sbc e                                         ; $7be0: $9b
    ld l, h                                       ; $7be1: $6c
    ld [hl], c                                    ; $7be2: $71
    cp $9d                                        ; $7be3: $fe $9d
    nop                                           ; $7be5: $00
    ld h, d                                       ; $7be6: $62
    rst $08                                       ; $7be7: $cf
    ld [hl], b                                    ; $7be8: $70
    and $79                                       ; $7be9: $e6 $79
    ei                                            ; $7beb: $fb
    ccf                                           ; $7bec: $3f
    rst $38                                       ; $7bed: $ff
    nop                                           ; $7bee: $00
    rlca                                          ; $7bef: $07
    inc e                                         ; $7bf0: $1c
    rst $38                                       ; $7bf1: $ff
    ld a, [c]                                     ; $7bf2: $f2
    db $fd                                        ; $7bf3: $fd
    cp e                                          ; $7bf4: $bb
    rst $00                                       ; $7bf5: $c7
    ld a, h                                       ; $7bf6: $7c
    nop                                           ; $7bf7: $00
    ld a, h                                       ; $7bf8: $7c
    cp [hl]                                       ; $7bf9: $be
    ld a, a                                       ; $7bfa: $7f
    ld a, a                                       ; $7bfb: $7f
    rst $38                                       ; $7bfc: $ff
    push bc                                       ; $7bfd: $c5
    rst $38                                       ; $7bfe: $ff
    db $fd                                        ; $7bff: $fd
    jr nz, @+$01                                  ; $7c00: $20 $ff

    xor d                                         ; $7c02: $aa
    ld h, d                                       ; $7c03: $62
    dec b                                         ; $7c04: $05
    sub a                                         ; $7c05: $97
    sub a                                         ; $7c06: $97
    dec c                                         ; $7c07: $0d
    dec c                                         ; $7c08: $0d
    jp $fc00                                      ; $7c09: $c3 $00 $fc


    cp $01                                        ; $7c0c: $fe $01
    cp b                                          ; $7c0e: $b8
    rst $00                                       ; $7c0f: $c7
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    di                                            ; $7c12: $f3
    nop                                           ; $7c13: $00
    rst $38                                       ; $7c14: $ff
    ld hl, sp-$01                                 ; $7c15: $f8 $ff
    and l                                         ; $7c17: $a5
    cp [hl]                                       ; $7c18: $be
    jp c, $ffe7                                   ; $7c19: $da $e7 $ff

    ld [bc], a                                    ; $7c1c: $02
    nop                                           ; $7c1d: $00
    ld a, [hl-]                                   ; $7c1e: $3a
    push bc                                       ; $7c1f: $c5
    add hl, bc                                    ; $7c20: $09
    cp $f1                                        ; $7c21: $fe $f1
    xor d                                         ; $7c23: $aa
    rlca                                          ; $7c24: $07
    cp a                                          ; $7c25: $bf
    ld c, $bf                                     ; $7c26: $0e $bf
    rst $10                                       ; $7c28: $d7
    ld [hl], a                                    ; $7c29: $77
    xor b                                         ; $7c2a: $a8
    sub b                                         ; $7c2b: $90
    ld [hl-], a                                   ; $7c2c: $32
    add d                                         ; $7c2d: $82
    inc l                                         ; $7c2e: $2c
    add $18                                       ; $7c2f: $c6 $18
    ld bc, $0100                                  ; $7c31: $01 $00 $01
    rlca                                          ; $7c34: $07
    rlca                                          ; $7c35: $07
    ei                                            ; $7c36: $fb
    db $fc                                        ; $7c37: $fc
    or $09                                        ; $7c38: $f6 $09
    xor b                                         ; $7c3a: $a8
    nop                                           ; $7c3b: $00
    ld e, a                                       ; $7c3c: $5f
    ld l, l                                       ; $7c3d: $6d
    di                                            ; $7c3e: $f3
    sbc a                                         ; $7c3f: $9f
    pop hl                                        ; $7c40: $e1
    call $c2f2                                    ; $7c41: $cd $f2 $c2
    ld [bc], a                                    ; $7c44: $02
    db $fd                                        ; $7c45: $fd
    ld [hl], b                                    ; $7c46: $70
    rst $38                                       ; $7c47: $ff
    xor l                                         ; $7c48: $ad
    ld a, a                                       ; $7c49: $7f
    scf                                           ; $7c4a: $37
    ldh [rTAC], a                                 ; $7c4b: $e0 $07
    ld l, a                                       ; $7c4d: $6f
    nop                                           ; $7c4e: $00
    or b                                          ; $7c4f: $b0
    reti                                          ; $7c50: $d9


    ld h, $77                                     ; $7c51: $26 $77
    adc h                                         ; $7c53: $8c
    cpl                                           ; $7c54: $2f
    call c, $001b                                 ; $7c55: $dc $1b $00
    db $fc                                        ; $7c58: $fc
    sbc e                                         ; $7c59: $9b
    db $fc                                        ; $7c5a: $fc
    cp $ff                                        ; $7c5b: $fe $ff
    and $f9                                       ; $7c5d: $e6 $f9
    dec bc                                        ; $7c5f: $0b
    ret nc                                        ; $7c60: $d0

    cp $04                                        ; $7c61: $fe $04
    add d                                         ; $7c63: $82
    ld c, h                                       ; $7c64: $4c
    ret c                                         ; $7c65: $d8

    ld b, h                                       ; $7c66: $44
    rlca                                          ; $7c67: $07
    ld b, $07                                     ; $7c68: $06 $07
    rlca                                          ; $7c6a: $07
    inc b                                         ; $7c6b: $04
    jr nz, jr_098_7c74                            ; $7c6c: $20 $06

    dec b                                         ; $7c6e: $05
    inc d                                         ; $7c6f: $14
    dec b                                         ; $7c70: $05
    ld [bc], a                                    ; $7c71: $02
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00

jr_098_7c74:
    cp $ff                                        ; $7c74: $fe $ff
    nop                                           ; $7c76: $00
    sbc b                                         ; $7c77: $98
    rst $20                                       ; $7c78: $e7
    ld l, [hl]                                    ; $7c79: $6e
    sub c                                         ; $7c7a: $91
    xor $91                                       ; $7c7b: $ee $91
    rst $28                                       ; $7c7d: $ef
    or l                                          ; $7c7e: $b5

Jump_098_7c7f:
    ld bc, $feba                                  ; $7c7f: $01 $ba $fe
    ld l, h                                       ; $7c82: $6c
    ld l, h                                       ; $7c83: $6c
    nop                                           ; $7c84: $00
    nop                                           ; $7c85: $00
    rrca                                          ; $7c86: $0f
    add sp, $06                                   ; $7c87: $e8 $06
    or b                                          ; $7c89: $b0
    ld d, c                                       ; $7c8a: $51
    ld b, $ff                                     ; $7c8b: $06 $ff
    ld a, h                                       ; $7c8d: $7c
    inc c                                         ; $7c8e: $0c
    cp l                                          ; $7c8f: $bd
    rrca                                          ; $7c90: $0f
    call c, Call_000_38f4                         ; $7c91: $dc $f4 $38
    ret c                                         ; $7c94: $d8

    nop                                           ; $7c95: $00
    rst $28                                       ; $7c96: $ef
    rra                                           ; $7c97: $1f
    rst $28                                       ; $7c98: $ef
    ld e, $a9                                     ; $7c99: $1e $a9
    ld e, h                                       ; $7c9b: $5c
    rst $28                                       ; $7c9c: $ef
    ld e, [hl]                                    ; $7c9d: $5e
    ld [$5eed], sp                                ; $7c9e: $08 $ed $5e
    sbc l                                         ; $7ca1: $9d
    cp $38                                        ; $7ca2: $fe $38
    cpl                                           ; $7ca4: $2f
    rst $08                                       ; $7ca5: $cf
    ccf                                           ; $7ca6: $3f
    di                                            ; $7ca7: $f3
    jr nc, jr_098_7cb9                            ; $7ca8: $30 $0f

    db $fc                                        ; $7caa: $fc
    inc e                                         ; $7cab: $1c
    rlca                                          ; $7cac: $07
    ret c                                         ; $7cad: $d8

    inc a                                         ; $7cae: $3c
    add $fe                                       ; $7caf: $c6 $fe
    dec e                                         ; $7cb1: $1d
    db $e3                                        ; $7cb2: $e3
    ret nz                                        ; $7cb3: $c0

    add b                                         ; $7cb4: $80
    ld l, $12                                     ; $7cb5: $2e $12
    cpl                                           ; $7cb7: $2f
    ld b, b                                       ; $7cb8: $40

jr_098_7cb9:
    ret nz                                        ; $7cb9: $c0

    ld e, e                                       ; $7cba: $5b
    cp h                                          ; $7cbb: $bc
    or a                                          ; $7cbc: $b7
    ld [hl], h                                    ; $7cbd: $74
    nop                                           ; $7cbe: $00
    ld a, e                                       ; $7cbf: $7b
    db $fc                                        ; $7cc0: $fc
    rst $30                                       ; $7cc1: $f7
    ld hl, sp-$11                                 ; $7cc2: $f8 $ef
    ldh a, [$5f]                                  ; $7cc4: $f0 $5f
    ld h, b                                       ; $7cc6: $60
    add b                                         ; $7cc7: $80
    jr jr_098_7cd3                                ; $7cc8: $18 $09

    ei                                            ; $7cca: $fb
    inc b                                         ; $7ccb: $04
    ei                                            ; $7ccc: $fb
    inc b                                         ; $7ccd: $04
    ld a, [$fa05]                                 ; $7cce: $fa $05 $fa
    nop                                           ; $7cd1: $00
    dec b                                         ; $7cd2: $05

jr_098_7cd3:
    di                                            ; $7cd3: $f3

jr_098_7cd4:
    rrca                                          ; $7cd4: $0f
    rst $30                                       ; $7cd5: $f7
    inc c                                         ; $7cd6: $0c
    xor a                                         ; $7cd7: $af
    ld e, b                                       ; $7cd8: $58
    or a                                          ; $7cd9: $b7
    ld b, b                                       ; $7cda: $40
    ld e, b                                       ; $7cdb: $58
    or [hl]                                       ; $7cdc: $b6
    dec c                                         ; $7cdd: $0d
    ld a, a                                       ; $7cde: $7f
    add b                                         ; $7cdf: $80
    db $ed                                        ; $7ce0: $ed
    cp $78                                        ; $7ce1: $fe $78
    add a                                         ; $7ce3: $87
    ret nz                                        ; $7ce4: $c0

    ret nz                                        ; $7ce5: $c0

    dec e                                         ; $7ce6: $1d
    cp b                                          ; $7ce7: $b8
    ld c, $d0                                     ; $7ce8: $0e $d0
    jr nc, jr_098_7cd4                            ; $7cea: $30 $e8

    jr @+$6a                                      ; $7cec: $18 $68

    sbc b                                         ; $7cee: $98
    ld [bc], a                                    ; $7cef: $02
    inc [hl]                                      ; $7cf0: $34
    call z, Call_000_0cf4                         ; $7cf1: $cc $f4 $0c
    db $f4                                        ; $7cf4: $f4
    inc c                                         ; $7cf5: $0c
    sub $2d                                       ; $7cf6: $d6 $2d
    ld sp, hl                                     ; $7cf8: $f9
    nop                                           ; $7cf9: $00
    ld b, $fc                                     ; $7cfa: $06 $fc
    rlca                                          ; $7cfc: $07
    rst $30                                       ; $7cfd: $f7
    rrca                                          ; $7cfe: $0f
    ld [hl], l                                    ; $7cff: $75
    adc a                                         ; $7d00: $8f
    cp a                                          ; $7d01: $bf
    ld [$5f50], sp                                ; $7d02: $08 $50 $5f
    or b                                          ; $7d05: $b0
    rst $10                                       ; $7d06: $d7
    call nc, Call_098_5b02                        ; $7d07: $d4 $02 $5b
    cp h                                          ; $7d0a: $bc
    sbc h                                         ; $7d0b: $9c
    add b                                         ; $7d0c: $80
    and h                                         ; $7d0d: $a4
    ld b, $ff                                     ; $7d0e: $06 $ff
    rst $38                                       ; $7d10: $ff
    ld hl, sp+$07                                 ; $7d11: $f8 $07
    di                                            ; $7d13: $f3
    inc c                                         ; $7d14: $0c
    db $fc                                        ; $7d15: $fc
    nop                                           ; $7d16: $00
    inc bc                                        ; $7d17: $03
    ei                                            ; $7d18: $fb
    rlca                                          ; $7d19: $07
    add a                                         ; $7d1a: $87
    ld a, a                                       ; $7d1b: $7f
    ld [hl], b                                    ; $7d1c: $70
    adc a                                         ; $7d1d: $8f
    jp $ff00                                      ; $7d1e: $c3 $00 $ff


jr_098_7d21:
    rst $38                                       ; $7d21: $ff
    db $fc                                        ; $7d22: $fc
    db $f4                                        ; $7d23: $f4
    inc c                                         ; $7d24: $0c
    ld [$f8f8], sp                                ; $7d25: $08 $f8 $f8
    nop                                           ; $7d28: $00
    ld hl, sp-$04                                 ; $7d29: $f8 $fc
    db $fc                                        ; $7d2b: $fc
    inc b                                         ; $7d2c: $04
    db $fc                                        ; $7d2d: $fc
    ld h, [hl]                                    ; $7d2e: $66
    cp $aa                                        ; $7d2f: $fe $aa
    nop                                           ; $7d31: $00
    sub $fa                                       ; $7d32: $d6 $fa
    ld b, $ef                                     ; $7d34: $06 $ef
    rra                                           ; $7d36: $1f
    rst $18                                       ; $7d37: $df

jr_098_7d38:
    ccf                                           ; $7d38: $3f
    rla                                           ; $7d39: $17
    db $10                                        ; $7d3a: $10
    rst $38                                       ; $7d3b: $ff
    add sp, -$18                                  ; $7d3c: $e8 $e8
    ld hl, sp+$2f                                 ; $7d3e: $f8 $2f
    ei                                            ; $7d40: $fb
    db $fc                                        ; $7d41: $fc
    rst $38                                       ; $7d42: $ff
    db $e4                                        ; $7d43: $e4
    jr nz, @-$07                                  ; $7d44: $20 $f7

    db $ed                                        ; $7d46: $ed
    and b                                         ; $7d47: $a0
    inc a                                         ; $7d48: $3c
    cpl                                           ; $7d49: $2f
    ret nc                                        ; $7d4a: $d0

    ld h, [hl]                                    ; $7d4b: $66
    sbc c                                         ; $7d4c: $99
    ld e, a                                       ; $7d4d: $5f
    ld b, e                                       ; $7d4e: $43
    cp a                                          ; $7d4f: $bf
    and b                                         ; $7d50: $a0
    inc a                                         ; $7d51: $3c
    adc h                                         ; $7d52: $8c
    ld a, h                                       ; $7d53: $7c
    ld [hl], b                                    ; $7d54: $70
    ldh a, [$ca]                                  ; $7d55: $f0 $ca
    rrca                                          ; $7d57: $0f
    ret c                                         ; $7d58: $d8

    cpl                                           ; $7d59: $2f
    nop                                           ; $7d5a: $00
    ld [$d117], a                                 ; $7d5b: $ea $17 $d1
    cpl                                           ; $7d5e: $2f
    ld a, [$f107]                                 ; $7d5f: $fa $07 $f1
    rrca                                          ; $7d62: $0f
    nop                                           ; $7d63: $00
    ld [$d317], a                                 ; $7d64: $ea $17 $d3
    cpl                                           ; $7d67: $2f
    ld [c], a                                     ; $7d68: $e2
    rra                                           ; $7d69: $1f
    ld [hl], a                                    ; $7d6a: $77
    adc a                                         ; $7d6b: $8f
    ld bc, $27da                                  ; $7d6c: $01 $da $27
    or h                                          ; $7d6f: $b4
    ld c, e                                       ; $7d70: $4b
    cp $01                                        ; $7d71: $fe $01
    ei                                            ; $7d73: $fb
    ld l, [hl]                                    ; $7d74: $6e
    dec b                                         ; $7d75: $05
    ld hl, $00dd                                  ; $7d76: $21 $dd $00
    adc d                                         ; $7d79: $8a
    rrca                                          ; $7d7a: $0f
    xor a                                         ; $7d7b: $af
    ld d, b                                       ; $7d7c: $50
    sub $29                                       ; $7d7d: $d6 $29
    ld e, b                                       ; $7d7f: $58
    rrca                                          ; $7d80: $0f
    ld b, b                                       ; $7d81: $40
    xor a                                         ; $7d82: $af
    ld h, h                                       ; $7d83: $64
    rrca                                          ; $7d84: $0f
    db $10                                        ; $7d85: $10
    push hl                                       ; $7d86: $e5
    ld a, [de]                                    ; $7d87: $1a
    ld a, [c]                                     ; $7d88: $f2
    rrca                                          ; $7d89: $0f
    push hl                                       ; $7d8a: $e5
    nop                                           ; $7d8b: $00
    rra                                           ; $7d8c: $1f
    push af                                       ; $7d8d: $f5
    ld a, [bc]                                    ; $7d8e: $0a

Jump_098_7d8f:
    db $eb                                        ; $7d8f: $eb
    inc d                                         ; $7d90: $14
    rst $10                                       ; $7d91: $d7
    jr z, jr_098_7d21                             ; $7d92: $28 $8d

    nop                                           ; $7d94: $00
    ld [hl], b                                    ; $7d95: $70
    ld e, e                                       ; $7d96: $5b
    and h                                         ; $7d97: $a4
    add a                                         ; $7d98: $87
    ld a, b                                       ; $7d99: $78
    and l                                         ; $7d9a: $a5
    ld e, d                                       ; $7d9b: $5a
    rst $10                                       ; $7d9c: $d7
    ld b, b                                       ; $7d9d: $40
    jr c, jr_098_7d38                             ; $7d9e: $38 $98

    rlca                                          ; $7da0: $07
    db $10                                        ; $7da1: $10
    and a                                         ; $7da2: $a7
    ld [$10d5], sp                                ; $7da3: $08 $d5 $10
    xor a                                         ; $7da6: $af
    nop                                           ; $7da7: $00
    ld e, d                                       ; $7da8: $5a
    ld d, l                                       ; $7da9: $55
    rst $38                                       ; $7daa: $ff
    ld b, h                                       ; $7dab: $44
    xor d                                         ; $7dac: $aa
    db $fd                                        ; $7dad: $fd
    nop                                           ; $7dae: $00
    xor $60                                       ; $7daf: $ee $60
    db $10                                        ; $7db1: $10
    xor h                                         ; $7db2: $ac
    rrca                                          ; $7db3: $0f
    xor b                                         ; $7db4: $a8
    ld b, $81                                     ; $7db5: $06 $81
    rrca                                          ; $7db7: $0f
    push af                                       ; $7db8: $f5
    rla                                           ; $7db9: $17
    xor d                                         ; $7dba: $aa
    ld b, d                                       ; $7dbb: $42
    ld e, a                                       ; $7dbc: $5f
    cp d                                          ; $7dbd: $ba
    dec b                                         ; $7dbe: $05
    rst $38                                       ; $7dbf: $ff
    nop                                           ; $7dc0: $00
    sbc [hl]                                      ; $7dc1: $9e
    ld h, e                                       ; $7dc2: $63
    xor $02                                       ; $7dc3: $ee $02
    dec b                                         ; $7dc5: $05
    nop                                           ; $7dc6: $00
    ei                                            ; $7dc7: $fb
    ld e, a                                       ; $7dc8: $5f
    rst $38                                       ; $7dc9: $ff
    xor b                                         ; $7dca: $a8

jr_098_7dcb:
    db $db                                        ; $7dcb: $db
    jr nz, jr_098_7dcb                            ; $7dcc: $20 $fd

    ld [$1080], sp                                ; $7dce: $08 $80 $10
    rlca                                          ; $7dd1: $07
    ld [$807f], a                                 ; $7dd2: $ea $7f $80
    cp l                                          ; $7dd5: $bd
    ld c, d                                       ; $7dd6: $4a
    db $d3                                        ; $7dd7: $d3
    db $fc                                        ; $7dd8: $fc
    nop                                           ; $7dd9: $00
    add sp, -$01                                  ; $7dda: $e8 $ff
    ld [hl], l                                    ; $7ddc: $75
    ld a, [$fa2d]                                 ; $7ddd: $fa $2d $fa
    ld c, a                                       ; $7de0: $4f
    ldh a, [rP1]                                  ; $7de1: $f0 $00
    ld a, a                                       ; $7de3: $7f
    add sp, $4d                                   ; $7de4: $e8 $4d
    ldh a, [$3b]                                  ; $7de6: $f0 $3b
    xor $42                                       ; $7de8: $ee $42
    db $fd                                        ; $7dea: $fd
    nop                                           ; $7deb: $00
    ld b, b                                       ; $7dec: $40
    rst $38                                       ; $7ded: $ff
    ld e, l                                       ; $7dee: $5d
    xor d                                         ; $7def: $aa
    cp $a1                                        ; $7df0: $fe $a1
    db $fd                                        ; $7df2: $fd
    nop                                           ; $7df3: $00
    nop                                           ; $7df4: $00
    ld a, [$f501]                                 ; $7df5: $fa $01 $f5
    ld a, [bc]                                    ; $7df8: $0a
    cp $ab                                        ; $7df9: $fe $ab
    adc b                                         ; $7dfb: $88
    ld d, a                                       ; $7dfc: $57
    ld [bc], a                                    ; $7dfd: $02
    or h                                          ; $7dfe: $b4
    ld e, a                                       ; $7dff: $5f

Jump_098_7e00:
jr_098_7e00:
    ld d, l                                       ; $7e00: $55
    xor d                                         ; $7e01: $aa
    cp d                                          ; $7e02: $ba
    ld b, l                                       ; $7e03: $45
    and d                                         ; $7e04: $a2
    ld a, [bc]                                    ; $7e05: $0a
    ld a, l                                       ; $7e06: $7d
    nop                                           ; $7e07: $00
    add b                                         ; $7e08: $80
    rst $38                                       ; $7e09: $ff
    xor d                                         ; $7e0a: $aa
    xor d                                         ; $7e0b: $aa
    ld d, l                                       ; $7e0c: $55
    ld b, a                                       ; $7e0d: $47
    ld hl, sp+$56                                 ; $7e0e: $f8 $56
    nop                                           ; $7e10: $00
    xor l                                         ; $7e11: $ad
    cp l                                          ; $7e12: $bd
    ld d, d                                       ; $7e13: $52
    ld b, a                                       ; $7e14: $47
    cp h                                          ; $7e15: $bc
    cp a                                          ; $7e16: $bf
    ld d, b                                       ; $7e17: $50
    sub $00                                       ; $7e18: $d6 $00
    inc l                                         ; $7e1a: $2c
    db $ed                                        ; $7e1b: $ed
    cp b                                          ; $7e1c: $b8
    ld [de], a                                    ; $7e1d: $12
    db $fc                                        ; $7e1e: $fc

jr_098_7e1f:
    or l                                          ; $7e1f: $b5
    ld e, a                                       ; $7e20: $5f
    rst $18                                       ; $7e21: $df
    nop                                           ; $7e22: $00
    jr nc, jr_098_7e1f                            ; $7e23: $30 $fa

    db $10                                        ; $7e25: $10
    ld [hl], l                                    ; $7e26: $75
    ld a, [de]                                    ; $7e27: $1a
    or a                                          ; $7e28: $b7
    jr jr_098_7e00                                ; $7e29: $18 $d5

    jr jr_098_7e47                                ; $7e2b: $18 $1a

    cp d                                          ; $7e2d: $ba
    ld e, a                                       ; $7e2e: $5f
    or b                                          ; $7e2f: $b0
    inc bc                                        ; $7e30: $03
    ld c, [hl]                                    ; $7e31: $4e
    inc bc                                        ; $7e32: $03
    xor d                                         ; $7e33: $aa
    nop                                           ; $7e34: $00
    ld [hl], l                                    ; $7e35: $75
    db $10                                        ; $7e36: $10
    add b                                         ; $7e37: $80
    cp $01                                        ; $7e38: $fe $01
    xor b                                         ; $7e3a: $a8
    rlca                                          ; $7e3b: $07
    push de                                       ; $7e3c: $d5
    dec l                                         ; $7e3d: $2d
    rst $38                                       ; $7e3e: $ff
    ld [bc], a                                    ; $7e3f: $02
    nop                                           ; $7e40: $00
    rst $38                                       ; $7e41: $ff
    ld d, l                                       ; $7e42: $55
    xor d                                         ; $7e43: $aa
    xor e                                         ; $7e44: $ab
    nop                                           ; $7e45: $00
    ld d, l                                       ; $7e46: $55

jr_098_7e47:
    nop                                           ; $7e47: $00
    adc d                                         ; $7e48: $8a
    ld b, b                                       ; $7e49: $40
    ld [hl], a                                    ; $7e4a: $77
    inc [hl]                                      ; $7e4b: $34
    inc c                                         ; $7e4c: $0c
    ld d, c                                       ; $7e4d: $51
    rst $38                                       ; $7e4e: $ff
    xor a                                         ; $7e4f: $af
    ld hl, sp+$7b                                 ; $7e50: $f8 $7b
    adc b                                         ; $7e52: $88
    nop                                           ; $7e53: $00
    db $fd                                        ; $7e54: $fd
    ld [$085f], sp                                ; $7e55: $08 $5f $08
    sbc l                                         ; $7e58: $9d
    ld a, [$08ff]                                 ; $7e59: $fa $ff $08
    nop                                           ; $7e5c: $00
    xor l                                         ; $7e5d: $ad
    ld e, d                                       ; $7e5e: $5a
    ld e, e                                       ; $7e5f: $5b
    db $fc                                        ; $7e60: $fc
    db $fd                                        ; $7e61: $fd
    ld a, [$f87f]                                 ; $7e62: $fa $7f $f8
    ld [$ff2c], sp                                ; $7e65: $08 $2c $ff
    ld c, a                                       ; $7e68: $4f
    ld hl, sp-$80                                 ; $7e69: $f8 $80
    nop                                           ; $7e6b: $00
    ld a, [$ef3f]                                 ; $7e6c: $fa $3f $ef
    ld b, c                                       ; $7e6f: $41
    ld b, b                                       ; $7e70: $40
    ld l, $00                                     ; $7e71: $2e $00
    rst $38                                       ; $7e73: $ff
    nop                                           ; $7e74: $00
    xor d                                         ; $7e75: $aa
    push af                                       ; $7e76: $f5
    ld d, l                                       ; $7e77: $55
    ret c                                         ; $7e78: $d8

    rlca                                          ; $7e79: $07
    adc $4e                                       ; $7e7a: $ce $4e
    inc b                                         ; $7e7c: $04
    ld [hl], e                                    ; $7e7d: $73
    rlca                                          ; $7e7e: $07
    push af                                       ; $7e7f: $f5
    ld a, [bc]                                    ; $7e80: $0a
    stop                                          ; $7e81: $10 $00
    ld b, b                                       ; $7e83: $40
    nop                                           ; $7e84: $00
    or h                                          ; $7e85: $b4
    inc bc                                        ; $7e86: $03
    ld a, [hl+]                                   ; $7e87: $2a
    add b                                         ; $7e88: $80
    db $10                                        ; $7e89: $10
    ld [$ac57], sp                                ; $7e8a: $08 $57 $ac
    or $0d                                        ; $7e8d: $f6 $0d
    xor l                                         ; $7e8f: $ad
    ld b, $47                                     ; $7e90: $06 $47
    nop                                           ; $7e92: $00
    cp h                                          ; $7e93: $bc
    rst $38                                       ; $7e94: $ff
    inc b                                         ; $7e95: $04
    ld d, [hl]                                    ; $7e96: $56
    xor h                                         ; $7e97: $ac
    db $fd                                        ; $7e98: $fd
    db $fc                                        ; $7e99: $fc
    ld [de], a                                    ; $7e9a: $12
    nop                                           ; $7e9b: $00
    db $fc                                        ; $7e9c: $fc
    ld bc, $ff00                                  ; $7e9d: $01 $00 $ff
    ld a, a                                       ; $7ea0: $7f
    ld l, [hl]                                    ; $7ea1: $6e
    ld sp, $0c64                                  ; $7ea2: $31 $64 $0c
    ld e, h                                       ; $7ea5: $5c
    ccf                                           ; $7ea6: $3f
    sub [hl]                                      ; $7ea7: $96
    ld sp, $08cf                                  ; $7ea8: $31 $cf $08
    daa                                           ; $7eab: $27
    nop                                           ; $7eac: $00
    sbc e                                         ; $7ead: $9b
    ld [hl], a                                    ; $7eae: $77
    ld d, d                                       ; $7eaf: $52
    ld d, d                                       ; $7eb0: $52
    ld [$0025], sp                                ; $7eb1: $08 $25 $00
    inc d                                         ; $7eb4: $14
    ld d, d                                       ; $7eb5: $52
    ld d, d                                       ; $7eb6: $52
    ret nz                                        ; $7eb7: $c0

    dec c                                         ; $7eb8: $0d
    pop hl                                        ; $7eb9: $e1
    halt                                          ; $7eba: $76
    add d                                         ; $7ebb: $82
    inc h                                         ; $7ebc: $24
    ret nc                                        ; $7ebd: $d0

    ld [$77bd], sp                                ; $7ebe: $08 $bd $77
    add sp, $51                                   ; $7ec1: $e8 $51
    ld hl, $d00c                                  ; $7ec3: $21 $0c $d0
    ld [$5777], sp                                ; $7ec6: $08 $77 $57
    add hl, de                                    ; $7ec9: $19
    ld bc, $0024                                  ; $7eca: $01 $24 $00
    sbc l                                         ; $7ecd: $9d
    ld h, e                                       ; $7ece: $63
    sub b                                         ; $7ecf: $90
    ld c, [hl]                                    ; $7ed0: $4e
    jr nz, jr_098_7f04                            ; $7ed1: $20 $31

    ld b, b                                       ; $7ed3: $40
    inc e                                         ; $7ed4: $1c
    sub l                                         ; $7ed5: $95
    ld b, d                                       ; $7ed6: $42
    adc b                                         ; $7ed7: $88
    dec l                                         ; $7ed8: $2d
    jr nz, jr_098_7eeb                            ; $7ed9: $20 $10

    nop                                           ; $7edb: $00
    nop                                           ; $7edc: $00
    nop                                           ; $7edd: $00
    nop                                           ; $7ede: $00
    rst $38                                       ; $7edf: $ff
    ld a, a                                       ; $7ee0: $7f
    ld d, c                                       ; $7ee1: $51
    nop                                           ; $7ee2: $00
    inc b                                         ; $7ee3: $04
    nop                                           ; $7ee4: $00
    sub e                                         ; $7ee5: $93
    dec h                                         ; $7ee6: $25
    rst $38                                       ; $7ee7: $ff
    ld h, a                                       ; $7ee8: $67
    dec a                                         ; $7ee9: $3d
    ld a, [bc]                                    ; $7eea: $0a

jr_098_7eeb:
    add a                                         ; $7eeb: $87
    ld [$5bff], sp                                ; $7eec: $08 $ff $5b
    call nc, $ef66                                ; $7eef: $d4 $66 $ef
    ld a, c                                       ; $7ef2: $79
    add [hl]                                      ; $7ef3: $86
    jr z, @+$01                                   ; $7ef4: $28 $ff

    dec [hl]                                      ; $7ef6: $35
    ld d, l                                       ; $7ef7: $55

jr_098_7ef8:
    ld sp, $28ed                                  ; $7ef8: $31 $ed $28
    add [hl]                                      ; $7efb: $86
    jr z, jr_098_7f5e                             ; $7efc: $28 $60

    ld a, e                                       ; $7efe: $7b
    ld h, b                                       ; $7eff: $60
    ld c, [hl]                                    ; $7f00: $4e

Call_098_7f01:
    ld b, b                                       ; $7f01: $40
    dec d                                         ; $7f02: $15
    add c                                         ; $7f03: $81

jr_098_7f04:
    db $10                                        ; $7f04: $10
    cp c                                          ; $7f05: $b9
    ld h, [hl]                                    ; $7f06: $66
    sub d                                         ; $7f07: $92
    add hl, sp                                    ; $7f08: $39
    jp z, $0130                                   ; $7f09: $ca $30 $01

    inc e                                         ; $7f0c: $1c
    ld e, c                                       ; $7f0d: $59
    ld h, a                                       ; $7f0e: $67
    ld [hl-], a                                   ; $7f0f: $32
    ld a, [hl-]                                   ; $7f10: $3a
    ld l, d                                       ; $7f11: $6a
    ld sp, $1c61                                  ; $7f12: $31 $61 $1c
    jr nc, @+$54                                  ; $7f15: $30 $52

    ld c, e                                       ; $7f17: $4b
    dec l                                         ; $7f18: $2d
    add e                                         ; $7f19: $83
    inc h                                         ; $7f1a: $24
    nop                                           ; $7f1b: $00
    inc d                                         ; $7f1c: $14
    ld bc, $ff00                                  ; $7f1d: $01 $00 $ff
    ld a, a                                       ; $7f20: $7f
    ld c, h                                       ; $7f21: $4c
    dec [hl]                                      ; $7f22: $35
    ld b, e                                       ; $7f23: $43
    jr @+$39                                      ; $7f24: $18 $37

    add hl, sp                                    ; $7f26: $39
    pop de                                        ; $7f27: $d1
    ld c, b                                       ; $7f28: $48
    adc d                                         ; $7f29: $8a
    ld b, h                                       ; $7f2a: $44
    add d                                         ; $7f2b: $82
    inc e                                         ; $7f2c: $1c
    ld e, e                                       ; $7f2d: $5b
    ld d, e                                       ; $7f2e: $53
    db $f4                                        ; $7f2f: $f4
    dec h                                         ; $7f30: $25
    rrca                                          ; $7f31: $0f
    add hl, bc                                    ; $7f32: $09
    ld h, l                                       ; $7f33: $65
    ld [$48d4], sp                                ; $7f34: $08 $d4 $48
    or a                                          ; $7f37: $b7
    ld c, [hl]                                    ; $7f38: $4e
    ld c, e                                       ; $7f39: $4b
    dec h                                         ; $7f3a: $25
    ld b, d                                       ; $7f3b: $42
    jr jr_098_7ef8                                ; $7f3c: $18 $ba

    rla                                           ; $7f3e: $17
    ld [hl], b                                    ; $7f3f: $70
    ld [hl+], a                                   ; $7f40: $22
    ld l, b                                       ; $7f41: $68
    dec h                                         ; $7f42: $25
    add c                                         ; $7f43: $81
    inc h                                         ; $7f44: $24
    or c                                          ; $7f45: $b1
    jr jr_098_7f52                                ; $7f46: $18 $0a

    jr z, jr_098_7f4e                             ; $7f48: $28 $04

    inc d                                         ; $7f4a: $14
    nop                                           ; $7f4b: $00
    nop                                           ; $7f4c: $00
    cp l                                          ; $7f4d: $bd

jr_098_7f4e:
    ld h, a                                       ; $7f4e: $67
    push af                                       ; $7f4f: $f5
    add hl, sp                                    ; $7f50: $39
    ld a, [bc]                                    ; $7f51: $0a

jr_098_7f52:
    ld de, $0045                                  ; $7f52: $11 $45 $00
    inc sp                                        ; $7f55: $33
    ld e, l                                       ; $7f56: $5d
    call $8658                                    ; $7f57: $cd $58 $86
    ld d, h                                       ; $7f5a: $54
    ld b, b                                       ; $7f5b: $40
    jr nz, jr_098_7f5f                            ; $7f5c: $20 $01

jr_098_7f5e:
    nop                                           ; $7f5e: $00

jr_098_7f5f:
    rst $38                                       ; $7f5f: $ff
    ld a, a                                       ; $7f60: $7f
    rrca                                          ; $7f61: $0f
    ld e, b                                       ; $7f62: $58
    inc b                                         ; $7f63: $04
    db $10                                        ; $7f64: $10
    rst $38                                       ; $7f65: $ff
    inc bc                                        ; $7f66: $03
    ld sp, hl                                     ; $7f67: $f9
    ld de, $00ef                                  ; $7f68: $11 $ef $00
    rlca                                          ; $7f6b: $07
    inc b                                         ; $7f6c: $04
    db $dd                                        ; $7f6d: $dd
    ld a, a                                       ; $7f6e: $7f
    inc [hl]                                      ; $7f6f: $34
    ld c, d                                       ; $7f70: $4a
    add sp, $28                                   ; $7f71: $e8 $28
    nop                                           ; $7f73: $00
    db $10                                        ; $7f74: $10
    cp a                                          ; $7f75: $bf
    ld l, a                                       ; $7f76: $6f
    sbc d                                         ; $7f77: $9a
    ld c, [hl]                                    ; $7f78: $4e
    pop de                                        ; $7f79: $d1
    add hl, sp                                    ; $7f7a: $39
    add hl, bc                                    ; $7f7b: $09
    dec h                                         ; $7f7c: $25
    db $ed                                        ; $7f7d: $ed
    ld c, c                                       ; $7f7e: $49
    ei                                            ; $7f7f: $fb
    ld c, c                                       ; $7f80: $49
    sub c                                         ; $7f81: $91
    jr z, jr_098_7f87                             ; $7f82: $28 $03

    ld [$539f], sp                                ; $7f84: $08 $9f $53

Call_098_7f87:
jr_098_7f87:
    db $d3                                        ; $7f87: $d3
    ld a, [hl+]                                   ; $7f88: $2a
    xor b                                         ; $7f89: $a8
    add hl, de                                    ; $7f8a: $19
    ld h, d                                       ; $7f8b: $62
    inc b                                         ; $7f8c: $04
    cp l                                          ; $7f8d: $bd
    ld a, a                                       ; $7f8e: $7f
    sub [hl]                                      ; $7f8f: $96
    ld e, [hl]                                    ; $7f90: $5e
    call Call_000_0549                            ; $7f91: $cd $49 $05
    dec [hl]                                      ; $7f94: $35
    ld [hl], h                                    ; $7f95: $74
    ld e, d                                       ; $7f96: $5a
    ld l, l                                       ; $7f97: $6d
    add hl, sp                                    ; $7f98: $39
    and h                                         ; $7f99: $a4
    inc h                                         ; $7f9a: $24
    jr nz, jr_098_7fb1                            ; $7f9b: $20 $14

    ld bc, $ff00                                  ; $7f9d: $01 $00 $ff
    ld a, a                                       ; $7fa0: $7f
    ld c, h                                       ; $7fa1: $4c
    dec [hl]                                      ; $7fa2: $35
    ld b, h                                       ; $7fa3: $44
    ld [$073e], sp                                ; $7fa4: $08 $3e $07
    db $fd                                        ; $7fa7: $fd
    add hl, bc                                    ; $7fa8: $09
    ld [de], a                                    ; $7fa9: $12
    add hl, bc                                    ; $7faa: $09
    ld b, h                                       ; $7fab: $44
    nop                                           ; $7fac: $00
    ld h, c                                       ; $7fad: $61
    inc c                                         ; $7fae: $0c
    push hl                                       ; $7faf: $e5
    ld d, e                                       ; $7fb0: $53

jr_098_7fb1:
    ld bc, $e036                                  ; $7fb1: $01 $36 $e0
    inc d                                         ; $7fb4: $14
    rla                                           ; $7fb5: $17
    ld l, a                                       ; $7fb6: $6f
    rst $28                                       ; $7fb7: $ef
    ld d, l                                       ; $7fb8: $55
    rlca                                          ; $7fb9: $07
    dec h                                         ; $7fba: $25
    ld h, d                                       ; $7fbb: $62
    inc d                                         ; $7fbc: $14
    ld a, a                                       ; $7fbd: $7f
    ld bc, $30f3                                  ; $7fbe: $01 $f3 $30

jr_098_7fc1:
    ld l, e                                       ; $7fc1: $6b
    jr nc, jr_098_7fc7                            ; $7fc2: $30 $03

    jr nz, @+$79                                  ; $7fc4: $20 $77

    nop                                           ; $7fc6: $00

jr_098_7fc7:
    dec bc                                        ; $7fc7: $0b
    db $10                                        ; $7fc8: $10
    inc bc                                        ; $7fc9: $03
    db $10                                        ; $7fca: $10
    inc bc                                        ; $7fcb: $03
    jr nz, jr_098_7fc1                            ; $7fcc: $20 $f3

    jr nc, @+$3b                                  ; $7fce: $30 $39

    ccf                                           ; $7fd0: $3f
    ld l, [hl]                                    ; $7fd1: $6e
    ld hl, $0c20                                  ; $7fd2: $21 $20 $0c
    rst $28                                       ; $7fd5: $ef
    dec a                                         ; $7fd6: $3d
    rra                                           ; $7fd7: $1f
    nop                                           ; $7fd8: $00
    rrca                                          ; $7fd9: $0f
    inc a                                         ; $7fda: $3c
    ld h, c                                       ; $7fdb: $61
    jr nz, jr_098_7fe7                            ; $7fdc: $20 $09

    nop                                           ; $7fde: $00
    nop                                           ; $7fdf: $00
    dec d                                         ; $7fe0: $15
    nop                                           ; $7fe1: $00
    ld [bc], a                                    ; $7fe2: $02
    dec d                                         ; $7fe3: $15
    nop                                           ; $7fe4: $00
    ld [bc], a                                    ; $7fe5: $02
    rlca                                          ; $7fe6: $07

jr_098_7fe7:
    ld [bc], a                                    ; $7fe7: $02
    ld e, $00                                     ; $7fe8: $1e $00
    dec hl                                        ; $7fea: $2b
    nop                                           ; $7feb: $00
    rlca                                          ; $7fec: $07
    nop                                           ; $7fed: $00
    inc [hl]                                      ; $7fee: $34
    nop                                           ; $7fef: $00
    call nc, Call_000_0200                        ; $7ff0: $d4 $00 $02
    nop                                           ; $7ff3: $00
    and d                                         ; $7ff4: $a2
    nop                                           ; $7ff5: $00
    ccf                                           ; $7ff6: $3f
    nop                                           ; $7ff7: $00
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
